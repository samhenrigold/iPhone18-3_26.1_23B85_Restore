unint64_t sub_24B717360()
{
  result = qword_27F035698;
  if (!qword_27F035698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035698);
  }

  return result;
}

unint64_t sub_24B7173B4()
{
  result = qword_27F0356A0;
  if (!qword_27F0356A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0356A0);
  }

  return result;
}

unint64_t sub_24B717408()
{
  result = qword_27F0356A8;
  if (!qword_27F0356A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0356A8);
  }

  return result;
}

unint64_t sub_24B71745C()
{
  result = qword_27F0356B0;
  if (!qword_27F0356B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0356B0);
  }

  return result;
}

unint64_t sub_24B7174B0()
{
  result = qword_27F0356B8;
  if (!qword_27F0356B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0356B8);
  }

  return result;
}

uint64_t EditorialDetailAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0356C0, &qword_24B763F40);
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v77 = &v59 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0356C8, &qword_24B763F48);
  v5 = *(v4 - 8);
  v71 = v4;
  v72 = v5;
  MEMORY[0x28223BE20](v4);
  v76 = &v59 - v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0356D0, &qword_24B763F50);
  v73 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v81 = &v59 - v7;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0356D8, &qword_24B763F58);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v75 = &v59 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0356E0, &qword_24B763F60);
  v67 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v59 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0356E8, &qword_24B763F68);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v74 = &v59 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0356F0, &unk_24B763F70);
  v83 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v12 = &v59 - v11;
  v13 = type metadata accessor for EditorialDetailAction(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v59 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v59 - v23;
  v25 = a1[3];
  v85 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_24B717254();
  v26 = v84;
  sub_24B75C728();
  if (!v26)
  {
    v61 = v21;
    v60 = v15;
    v59 = v18;
    v28 = v79;
    v27 = v80;
    v29 = v81;
    v62 = v13;
    v84 = v24;
    v30 = v82;
    v31 = v78;
    v32 = sub_24B75C628();
    v33 = (2 * *(v32 + 16)) | 1;
    v86 = v32;
    v87 = v32 + 32;
    v88 = 0;
    v89 = v33;
    v34 = sub_24B6B9E14();
    if (v34 != 6 && v88 == v89 >> 1)
    {
      if (v34 > 2u)
      {
        if (v34 == 3)
        {
          v90 = 3;
          sub_24B7173B4();
          v50 = v29;
          sub_24B75C598();
          v90 = 0;
          v51 = v69;
          v55 = sub_24B75C5B8();
          v57 = v56;
          v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035508, &qword_24B767B70) + 48);
          v58 = v59;
          *v59 = v55;
          v58[1] = v57;
          v79 = v57;
          sub_24B75B108();
          v90 = 1;
          sub_24B6A7260(&qword_27F0341F8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
          sub_24B75C618();
          (*(v73 + 8))(v50, v51);
          (*(v83 + 8))(v12, v31);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v38 = v58;
          goto LABEL_18;
        }

        if (v34 == 4)
        {
          v90 = 4;
          sub_24B717360();
          v43 = v76;
          sub_24B75C598();
          v44 = v83;
          sub_24B75B108();
          sub_24B6A7260(&qword_27F0341F8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
          v45 = v60;
          v46 = v71;
          sub_24B75C618();
          (*(v72 + 8))(v43, v46);
          (*(v44 + 8))(v12, v31);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v38 = v45;
          goto LABEL_18;
        }

        v90 = 5;
        sub_24B71730C();
        v53 = v77;
        sub_24B75C598();
        v54 = v83;
        (*(v68 + 8))(v53, v70);
        (*(v54 + 8))(v12, v31);
        swift_unknownObjectRelease();
        v49 = v84;
      }

      else if (v34)
      {
        v35 = v12;
        v36 = v83;
        if (v34 == 1)
        {
          v90 = 1;
          sub_24B71745C();
          sub_24B75C598();
          type metadata accessor for EditorialDetailContent(0);
          sub_24B6A7260(&qword_27F0352F0, type metadata accessor for EditorialDetailContent, &protocol conformance descriptor for EditorialDetailContent);
          sub_24B75C618();
          (*(v67 + 8))(v28, v27);
          (*(v36 + 8))(v35, v31);
          swift_unknownObjectRelease();
          v37 = v61;
          swift_storeEnumTagMultiPayload();
          v38 = v37;
LABEL_18:
          v49 = v84;
          sub_24B718234(v38, v84, type metadata accessor for EditorialDetailAction);
          goto LABEL_19;
        }

        v90 = 2;
        sub_24B717408();
        v52 = v75;
        sub_24B75C598();
        (*(v65 + 8))(v52, v66);
        (*(v36 + 8))(v35, v31);
        swift_unknownObjectRelease();
        v49 = v84;
      }

      else
      {
        v90 = 0;
        sub_24B7174B0();
        v47 = v74;
        sub_24B75C598();
        v48 = v83;
        (*(v63 + 8))(v47, v64);
        (*(v48 + 8))(v12, v31);
        swift_unknownObjectRelease();
        v49 = v84;
      }

      swift_storeEnumTagMultiPayload();
LABEL_19:
      sub_24B718234(v49, v30, type metadata accessor for EditorialDetailAction);
      return __swift_destroy_boxed_opaque_existential_1(v85);
    }

    v39 = sub_24B75C568();
    swift_allocError();
    v41 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0);
    *v41 = v62;
    sub_24B75C5A8();
    sub_24B75C558();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    (*(v83 + 8))(v12, v31);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v85);
}

uint64_t sub_24B718234(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t EditorialDetailAction.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_24B75B108();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for EditorialDetailContent(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EditorialDetailAction(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B7172A8(v2, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v20 = 0;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v20 = 2;
    }

    else
    {
      v20 = 5;
    }

    return MEMORY[0x24C2489B0](v20);
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *(v16 + 1);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035508, &qword_24B767B70);
      (*(v5 + 32))(v10, &v16[*(v19 + 48)], v4);
      MEMORY[0x24C2489B0](3);
      sub_24B75C6F8();
      if (v18)
      {
        sub_24B75C358();
      }

      sub_24B6A7260(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      sub_24B75C2C8();
      return (*(v5 + 8))(v10, v4);
    }

    else
    {
      (*(v5 + 32))(v7, v16, v4);
      MEMORY[0x24C2489B0](4);
      sub_24B6A7260(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      sub_24B75C2C8();
      return (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    sub_24B718234(v16, v13, type metadata accessor for EditorialDetailContent);
    MEMORY[0x24C2489B0](1);
    EditorialDetailContent.hash(into:)(a1);
    return sub_24B719738(v13, type metadata accessor for EditorialDetailContent);
  }
}

uint64_t EditorialDetailAction.hashValue.getter()
{
  sub_24B75C6D8();
  EditorialDetailAction.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t sub_24B718670()
{
  sub_24B75C6D8();
  EditorialDetailAction.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t sub_24B7186B4(uint64_t a1)
{
  sub_24B75C6D8();
  EditorialDetailAction.hash(into:)(v2);
  return sub_24B75C718();
}

uint64_t _s20FitnessProductDetail09EditorialC6ActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B75B108();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v51 = &v51 - v8;
  MEMORY[0x28223BE20](v9);
  v52 = &v51 - v10;
  v11 = type metadata accessor for EditorialDetailContent(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EditorialDetailAction(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v51 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0357B0, &qword_24B764728);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v51 - v24;
  v27 = (&v51 + *(v26 + 56) - v24);
  sub_24B7172A8(a1, &v51 - v24);
  sub_24B7172A8(a2, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_24B7172A8(v25, v19);
        v30 = *v19;
        v29 = *(v19 + 1);
        v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035508, &qword_24B767B70) + 48);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v33 = *v27;
          v32 = v27[1];
          v34 = *(v53 + 32);
          v35 = &v19[v31];
          v36 = v54;
          v34(v52, v35, v54);
          v37 = v27 + v31;
          v38 = v51;
          v34(v51, v37, v36);
          if (v29)
          {
            if (v32)
            {
              if (v30 != v33 || v29 != v32)
              {
                v40 = sub_24B75C6B8();

                if (v40)
                {
                  goto LABEL_34;
                }

                goto LABEL_32;
              }

LABEL_34:
              v47 = v52;
              v43 = sub_24B75B0F8();
              v48 = v54;
              v49 = *(v53 + 8);
              v49(v38, v54);
              v49(v47, v48);
              goto LABEL_35;
            }
          }

          else if (!v32)
          {
            goto LABEL_34;
          }

LABEL_32:
          v45 = v54;
          v46 = *(v53 + 8);
          v46(v38, v54);
          v46(v52, v45);
          sub_24B719738(v25, type metadata accessor for EditorialDetailAction);
          goto LABEL_28;
        }

        (*(v53 + 8))(&v19[v31], v54);

LABEL_27:
        sub_24B7196D0(v25);
LABEL_28:
        v43 = 0;
        return v43 & 1;
      }

      sub_24B7172A8(v25, v16);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v53 + 8))(v16, v54);
        goto LABEL_27;
      }

      v42 = v53;
      v41 = v54;
      (*(v53 + 32))(v6, v27, v54);
      v43 = sub_24B75B0F8();
      v44 = *(v42 + 8);
      v44(v6, v41);
      v44(v16, v41);
    }

    else
    {
      sub_24B7172A8(v25, v22);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_24B719738(v22, type metadata accessor for EditorialDetailContent);
        goto LABEL_27;
      }

      sub_24B718234(v27, v13, type metadata accessor for EditorialDetailContent);
      v43 = _s20FitnessProductDetail09EditorialC7ContentV2eeoiySbAC_ACtFZ_0(v22, v13);
      sub_24B719738(v13, type metadata accessor for EditorialDetailContent);
      sub_24B719738(v22, type metadata accessor for EditorialDetailContent);
    }

LABEL_35:
    sub_24B719738(v25, type metadata accessor for EditorialDetailAction);
    return v43 & 1;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_27;
    }
  }

  else if (EnumCaseMultiPayload == 4)
  {
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_27;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 5)
  {
    goto LABEL_27;
  }

  sub_24B719738(v25, type metadata accessor for EditorialDetailAction);
  v43 = 1;
  return v43 & 1;
}

void sub_24B718D0C(uint64_t a1)
{
  type metadata accessor for EditorialDetailContent(319);
  if (v1 <= 0x3F)
  {
    sub_24B718D94(319);
    if (v2 <= 0x3F)
    {
      sub_24B75B108();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24B718D94(uint64_t a1)
{
  if (!qword_27F035710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035718, &qword_24B764058);
    sub_24B75B108();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F035710);
    }
  }
}

unint64_t sub_24B718E88()
{
  result = qword_27F035720;
  if (!qword_27F035720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035720);
  }

  return result;
}

unint64_t sub_24B718EE0()
{
  result = qword_27F035728;
  if (!qword_27F035728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035728);
  }

  return result;
}

unint64_t sub_24B718F38()
{
  result = qword_27F035730;
  if (!qword_27F035730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035730);
  }

  return result;
}

unint64_t sub_24B718F90()
{
  result = qword_27F035738;
  if (!qword_27F035738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035738);
  }

  return result;
}

unint64_t sub_24B718FE8()
{
  result = qword_27F035740;
  if (!qword_27F035740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035740);
  }

  return result;
}

unint64_t sub_24B719040()
{
  result = qword_27F035748;
  if (!qword_27F035748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035748);
  }

  return result;
}

unint64_t sub_24B719098()
{
  result = qword_27F035750;
  if (!qword_27F035750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035750);
  }

  return result;
}

unint64_t sub_24B7190F0()
{
  result = qword_27F035758;
  if (!qword_27F035758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035758);
  }

  return result;
}

unint64_t sub_24B719148()
{
  result = qword_27F035760;
  if (!qword_27F035760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035760);
  }

  return result;
}

unint64_t sub_24B7191A0()
{
  result = qword_27F035768;
  if (!qword_27F035768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035768);
  }

  return result;
}

unint64_t sub_24B7191F8()
{
  result = qword_27F035770;
  if (!qword_27F035770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035770);
  }

  return result;
}

unint64_t sub_24B719250()
{
  result = qword_27F035778;
  if (!qword_27F035778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035778);
  }

  return result;
}

unint64_t sub_24B7192A8()
{
  result = qword_27F035780;
  if (!qword_27F035780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035780);
  }

  return result;
}

unint64_t sub_24B719300()
{
  result = qword_27F035788;
  if (!qword_27F035788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035788);
  }

  return result;
}

unint64_t sub_24B719358()
{
  result = qword_27F035790;
  if (!qword_27F035790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035790);
  }

  return result;
}

unint64_t sub_24B7193B0()
{
  result = qword_27F035798;
  if (!qword_27F035798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035798);
  }

  return result;
}

unint64_t sub_24B719408()
{
  result = qword_27F0357A0;
  if (!qword_27F0357A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0357A0);
  }

  return result;
}

unint64_t sub_24B719460()
{
  result = qword_27F0357A8;
  if (!qword_27F0357A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0357A8);
  }

  return result;
}

uint64_t sub_24B7194B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000024B76BF70 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43646564616F6CLL && a2 == 0xED0000746E65746ELL || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7070615465726F6DLL && a2 == 0xEA00000000006465 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B76BF90 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024B76BFB0 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261)
  {

    return 5;
  }

  else
  {
    v5 = sub_24B75C6B8();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24B7196D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0357B0, &qword_24B764728);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B719738(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t WorkoutDetailSectionDensityFactor.init(count:span:spacing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a2;
  return result;
}

uint64_t sub_24B719808()
{
  v1 = 0x676E6963617073;
  if (*v0 != 1)
  {
    v1 = 1851879539;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E756F63;
  }
}

uint64_t sub_24B719858@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B71A0B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B719880(uint64_t a1)
{
  v2 = sub_24B719AB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7198BC(uint64_t a1)
{
  v2 = sub_24B719AB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutDetailSectionDensityFactor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0357B8, &qword_24B764730);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *(v1 + 8);
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B719AB8();
  sub_24B75C738();
  v14 = 0;
  sub_24B75C698();
  if (!v2)
  {
    v13 = v8;
    v12 = 1;
    sub_24B6F1D10();
    sub_24B75C6A8();
    v11 = 2;
    sub_24B75C698();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24B719AB8()
{
  result = qword_27F0357C0;
  if (!qword_27F0357C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0357C0);
  }

  return result;
}

uint64_t WorkoutDetailSectionDensityFactor.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0357C8, &qword_24B764738);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B719AB8();
  sub_24B75C728();
  if (!v2)
  {
    v15 = 0;
    v9 = sub_24B75C608();
    v13[15] = 1;
    sub_24B6F1FC4();
    sub_24B75C618();
    v11 = v14;
    v13[14] = 2;
    v12 = sub_24B75C608();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
    a2[2] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t WorkoutDetailSectionDensityFactor.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x24C2489B0](*v0);
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x24C2489D0](*&v3);
  return MEMORY[0x24C2489B0](v2);
}

uint64_t WorkoutDetailSectionDensityFactor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 2);
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](*&v1);
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  MEMORY[0x24C2489D0](*&v4);
  MEMORY[0x24C2489B0](v3);
  return sub_24B75C718();
}

uint64_t sub_24B719E18()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x24C2489B0](*v0);
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x24C2489D0](*&v3);
  return MEMORY[0x24C2489B0](v2);
}

uint64_t sub_24B719E78(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 2);
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](*&v2);
  v5 = 0.0;
  if (v3 != 0.0)
  {
    v5 = v3;
  }

  MEMORY[0x24C2489D0](*&v5);
  MEMORY[0x24C2489B0](v4);
  return sub_24B75C718();
}

unint64_t sub_24B719EFC()
{
  result = qword_27F0357D0;
  if (!qword_27F0357D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0357D0);
  }

  return result;
}

unint64_t sub_24B719FAC()
{
  result = qword_27F0357D8;
  if (!qword_27F0357D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0357D8);
  }

  return result;
}

unint64_t sub_24B71A004()
{
  result = qword_27F0357E0;
  if (!qword_27F0357E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0357E0);
  }

  return result;
}

unint64_t sub_24B71A05C()
{
  result = qword_27F0357E8;
  if (!qword_27F0357E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0357E8);
  }

  return result;
}

uint64_t sub_24B71A0B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6963617073 && a2 == 0xE700000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1851879539 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B75C6B8();

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

uint64_t ArtworkBannerView.init(store:textViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *a5 = sub_24B6C4E74;
  *(a5 + 8) = v10;
  *(a5 + 16) = 0;
  type metadata accessor for ArtworkBannerView(0);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344D8, qword_24B75FA30);
  return sub_24B75B268();
}

uint64_t type metadata accessor for ArtworkBannerView(uint64_t a1)
{
  result = qword_27F0357F8;
  if (!qword_27F0357F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArtworkBannerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ArtworkBannerView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_24B71A418(v1, a1);
  sub_24B71C3A0(v1, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_24B71CF84(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ArtworkBannerView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0357F0, &qword_24B764960);
  v9 = (a1 + *(result + 36));
  *v9 = sub_24B71C404;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  return result;
}

uint64_t sub_24B71A418@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a2;
  v101 = sub_24B75BEE8();
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v100 = v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24B75BAE8();
  v97 = *(v4 - 8);
  v98 = v4;
  MEMORY[0x28223BE20](v4);
  v96 = v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B75B1F8();
  MEMORY[0x28223BE20](v6 - 8);
  v95[2] = v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24B75C2F8();
  MEMORY[0x28223BE20](v8 - 8);
  v95[1] = v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033FA8, &qword_24B75D810);
  MEMORY[0x28223BE20](v125);
  v126 = v95 - v10;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035910, &qword_24B764A60);
  MEMORY[0x28223BE20](v128);
  v129 = v95 - v11;
  v106 = sub_24B75B248();
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v102 = v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035898, &qword_24B764A10);
  v107 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v105 = v95 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035918, &qword_24B764A68);
  v109 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v108 = v95 - v14;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035920, &qword_24B764A70);
  MEMORY[0x28223BE20](v115);
  v116 = v95 - v15;
  v16 = type metadata accessor for WorkoutSchedule(0);
  v112 = *(v16 - 8);
  v113 = v16;
  MEMORY[0x28223BE20](v16);
  v103 = v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035890, &qword_24B764A08);
  MEMORY[0x28223BE20](v122);
  v118 = v95 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F50, &unk_24B764A50);
  v120 = *(v19 - 8);
  v121 = v19;
  MEMORY[0x28223BE20](v19);
  v111 = v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v124 = v95 - v22;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035928, &qword_24B764A78);
  MEMORY[0x28223BE20](v123);
  v24 = v95 - v23;
  State = type metadata accessor for WorkoutScheduleLoadState(0);
  MEMORY[0x28223BE20](State - 8);
  v119 = v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035850, &qword_24B7649F0);
  MEMORY[0x28223BE20](v127);
  v28 = v95 - v27;
  v110 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035810, &qword_24B7649D8);
  sub_24B6C743C(&qword_27F035818, &qword_27F035810, &qword_24B7649D8, MEMORY[0x277D04410]);
  sub_24B75B408();
  swift_getKeyPath();
  sub_24B75C218();

  if (v195)
  {

    v124 = v29;
    sub_24B75B408();
    swift_getKeyPath();
    v30 = v126;
    sub_24B75C218();

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2 && EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        if (*v30)
        {
          sub_24B71D060(&v192);
        }

        else
        {
          sub_24B75C2E8();
          type metadata accessor for LocalizationBundle();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v66 = [objc_opt_self() bundleForClass_];
          sub_24B75B408();
          swift_getKeyPath();
          sub_24B75C218();

          v67 = sub_24B75BB58();
          v69 = v68;
          v71 = v70;
          LODWORD(v192) = sub_24B75B838();
          v72 = sub_24B75BBE8();
          v74 = v73;
          v76 = v75;
          sub_24B6E89A0(v67, v69, v71 & 1);

          sub_24B75BA28();
          v78 = v96;
          v77 = v97;
          v79 = v98;
          (*(v97 + 104))(v96, *MEMORY[0x277CE0A10], v98);
          sub_24B75BB28();

          (*(v77 + 8))(v78, v79);
          v80 = sub_24B75BC18();
          v82 = v81;
          LOBYTE(v77) = v83;

          sub_24B6E89A0(v72, v74, v76 & 1);

          sub_24B75BA88();
          v84 = sub_24B75BB68();
          v86 = v85;
          LOBYTE(v69) = v87;
          v89 = v88;
          sub_24B6E89A0(v80, v82, v77 & 1);

          v90 = sub_24B75B9A8();
          LOBYTE(v69) = v69 & 1;
          LOBYTE(v168) = v69;
          LOBYTE(v144) = 0;
          sub_24B75C168();
          sub_24B75B5C8();
          *&v131[55] = v199;
          *&v131[71] = v200;
          *&v131[87] = v201;
          *&v131[103] = v202;
          *&v131[7] = v196;
          *&v131[23] = v197;
          *&v131[39] = v198;
          (*(v99 + 104))(v100, *MEMORY[0x277CE0EE0], v101);
          v91 = sub_24B75BF48();
          v92 = sub_24B75B9A8();
          *(v194 + 8) = xmmword_24B762590;
          *(&v194[1] + 8) = xmmword_24B762590;
          *(&v194[6] + 9) = *&v131[64];
          *(&v194[7] + 9) = *&v131[80];
          *(&v194[8] + 9) = *&v131[96];
          *(&v194[2] + 9) = *v131;
          *(&v194[3] + 9) = *&v131[16];
          *(&v194[4] + 9) = *&v131[32];
          *&v192 = v84;
          *(&v192 + 1) = v86;
          LOBYTE(v193) = v69;
          *(&v193 + 1) = v89;
          LOBYTE(v194[0]) = v90;
          BYTE8(v194[2]) = 0;
          *(&v194[5] + 9) = *&v131[48];
          *(&v194[9] + 1) = *&v131[111];
          *&v194[10] = v91;
          BYTE8(v194[10]) = v92;
          sub_24B71D080(&v192);
        }

        v190 = v194[8];
        v191[0] = v194[9];
        *(v191 + 10) = *(&v194[9] + 10);
        v186 = v194[4];
        v187 = v194[5];
        v189 = v194[7];
        v188 = v194[6];
        v182 = v194[0];
        v183 = v194[1];
        v185 = v194[3];
        v184 = v194[2];
        v181 = v193;
        v180 = v192;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0358E8, &qword_24B764A30);
        sub_24B71CC64();
        sub_24B75B7A8();
        v46 = v129;
        v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035930, &qword_24B764B00) + 48);
        v154 = v166;
        v155[0] = v167[0];
        *(v155 + 10) = *(v167 + 10);
        v150 = v162;
        v151 = v163;
        v152 = v164;
        v153 = v165;
        v148 = v160;
        v149 = v161;
        v146 = v158;
        v147 = v159;
        v144 = v156;
        v145 = v157;
        sub_24B71D06C(&v144);
        v194[8] = v154;
        v194[9] = v155[0];
        *(&v194[9] + 11) = *(v155 + 11);
        v194[4] = v150;
        v194[5] = v151;
        v194[7] = v153;
        v194[6] = v152;
        v194[0] = v146;
        v194[1] = v147;
        v194[3] = v149;
        v194[2] = v148;
        v193 = v145;
        v192 = v144;
        sub_24B6B9D34(&v156, &v180, &qword_27F0358D8, &qword_24B764A28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035860, &qword_24B7649F8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0358D8, &qword_24B764A28);
        sub_24B71C79C();
        sub_24B71CBD8();
        sub_24B75B7A8();
        v178 = v142;
        v179[0] = v143[0];
        *(v179 + 11) = *(v143 + 11);
        v174 = v138;
        v175 = v139;
        v177 = v141;
        v176 = v140;
        v170 = v134;
        v171 = v135;
        v173 = v137;
        v172 = v136;
        v169 = v133;
        v168 = v132;
        sub_24B71D078(&v168);
        v190 = v178;
        v191[0] = v179[0];
        *(v191 + 12) = *(v179 + 12);
        v186 = v174;
        v187 = v175;
        v189 = v177;
        v188 = v176;
        v182 = v170;
        v183 = v171;
        v185 = v173;
        v184 = v172;
        v181 = v169;
        v180 = v168;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0358C8, &qword_24B764A20);
        sub_24B71CB4C();
        sub_24B75B7A8();
        sub_24B6B9CD4(&v156, &qword_27F0358D8, &qword_24B764A28);
        v190 = v194[8];
        v191[0] = v194[9];
        *(v191 + 12) = *(&v194[9] + 12);
        v186 = v194[4];
        v187 = v194[5];
        v189 = v194[7];
        v188 = v194[6];
        v182 = v194[0];
        v183 = v194[1];
        v185 = v194[3];
        v184 = v194[2];
        v181 = v193;
        v180 = v192;
        v94 = sub_24B75B1D8();
        (*(*(v94 - 8) + 8))(&v126[v93], v94);
        v194[8] = v190;
        v194[9] = v191[0];
        *(&v194[9] + 12) = *(v191 + 12);
        v194[4] = v186;
        v194[5] = v187;
        v194[7] = v189;
        v194[6] = v188;
        v194[0] = v182;
        v194[1] = v183;
        v194[3] = v185;
        v194[2] = v184;
        v193 = v181;
        v192 = v180;
        goto LABEL_14;
      }

      sub_24B6B9CD4(v30, &qword_27F033FA8, &qword_24B75D810);
      sub_24B71D054(&v180);
      v178 = v190;
      v179[0] = v191[0];
      v32 = *(v191 + 12);
    }

    else
    {
      sub_24B75C158();
      sub_24B75B458();
      *&v144 = v156;
      BYTE8(v144) = BYTE8(v156);
      *&v145 = v157;
      BYTE8(v145) = BYTE8(v157);
      v146 = v158;
      sub_24B71D088(&v144);
      v194[8] = v154;
      v194[9] = v155[0];
      *(&v194[9] + 11) = *(v155 + 11);
      v194[4] = v150;
      v194[5] = v151;
      v194[7] = v153;
      v194[6] = v152;
      v194[0] = v146;
      v194[1] = v147;
      v194[3] = v149;
      v194[2] = v148;
      v193 = v145;
      v192 = v144;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035860, &qword_24B7649F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0358D8, &qword_24B764A28);
      sub_24B71C79C();
      sub_24B71CBD8();
      sub_24B75B7A8();
      v190 = v142;
      v191[0] = v143[0];
      *(v191 + 11) = *(v143 + 11);
      v186 = v138;
      v187 = v139;
      v189 = v141;
      v188 = v140;
      v182 = v134;
      v183 = v135;
      v185 = v137;
      v184 = v136;
      v181 = v133;
      v180 = v132;
      sub_24B71D078(&v180);
      v178 = v190;
      v179[0] = v191[0];
      v32 = *(v191 + 12);
    }

    *(v179 + 12) = v32;
    v174 = v186;
    v175 = v187;
    v177 = v189;
    v176 = v188;
    v170 = v182;
    v171 = v183;
    v173 = v185;
    v172 = v184;
    v169 = v181;
    v168 = v180;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0358C8, &qword_24B764A20);
    sub_24B71CB4C();
    sub_24B75B7A8();
    v46 = v129;
LABEL_14:
    v47 = v194[9];
    v46[10] = v194[8];
    v46[11] = v47;
    *(v46 + 188) = *(&v194[9] + 12);
    v48 = v194[5];
    v46[6] = v194[4];
    v46[7] = v48;
    v49 = v194[7];
    v46[8] = v194[6];
    v46[9] = v49;
    v50 = v194[1];
    v46[2] = v194[0];
    v46[3] = v50;
    v51 = v194[3];
    v46[4] = v194[2];
    v46[5] = v51;
    v52 = v193;
    *v46 = v192;
    v46[1] = v52;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0358B8, &qword_24B764A18);
    sub_24B71C710();
    sub_24B71CAC0();
    return sub_24B75B7A8();
  }

  v125 = v24;
  v126 = v28;
  sub_24B75B408();
  swift_getKeyPath();
  v33 = v119;
  sub_24B75C218();

  if ((*(v120 + 48))(v33, 1, v121) == 1)
  {
    sub_24B75C158();
    sub_24B75B458();
    v34 = BYTE8(v192);
    v35 = v193;
    v36 = BYTE8(v193);
    v37 = v125;
    *v125 = v192;
    *(v37 + 8) = v34;
    v37[2] = v35;
    *(v37 + 24) = v36;
    *(v37 + 2) = v194[0];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035860, &qword_24B7649F8);
    sub_24B71C79C();
    sub_24B71C95C();
    v38 = v126;
    sub_24B75B7A8();
    v39 = v129;
  }

  else
  {
    v40 = v124;
    sub_24B6F2D2C(v33, v124);
    v41 = v40;
    v42 = v111;
    sub_24B6B9D34(v41, v111, &qword_27F033F50, &unk_24B764A50);
    if ((*(v112 + 48))(v42, 1, v113) == 1)
    {
      sub_24B6B9CD4(v42, &qword_27F033F50, &unk_24B764A50);
      swift_storeEnumTagMultiPayload();
      v43 = sub_24B6C743C(&qword_27F0358A0, &qword_27F035898, &qword_24B764A10, MEMORY[0x277CDEFF0]);
      v44 = sub_24B71CA6C();
      *&v192 = v117;
      *(&v192 + 1) = &type metadata for WorkoutScheduleBannerLabelStyle;
      *&v193 = v43;
      *(&v193 + 1) = v44;
      swift_getOpaqueTypeConformance2();
      v45 = v118;
      sub_24B75B7A8();
    }

    else
    {
      v54 = v103;
      v55 = sub_24B71CF84(v42, v103, type metadata accessor for WorkoutSchedule);
      MEMORY[0x28223BE20](v55);
      v56 = v105;
      sub_24B75BFB8();
      sub_24B75B408();
      swift_getKeyPath();
      v57 = v102;
      sub_24B75C218();

      v58 = sub_24B75B208();
      (*(v104 + 8))(v57, v106);
      LOBYTE(v192) = v58 & 1;
      v59 = sub_24B6C743C(&qword_27F0358A0, &qword_27F035898, &qword_24B764A10, MEMORY[0x277CDEFF0]);
      v60 = sub_24B71CA6C();
      v61 = v108;
      v62 = v117;
      sub_24B75BCC8();
      (*(v107 + 8))(v56, v62);
      v63 = v109;
      v64 = v114;
      (*(v109 + 16))(v116, v61, v114);
      swift_storeEnumTagMultiPayload();
      *&v192 = v62;
      *(&v192 + 1) = &type metadata for WorkoutScheduleBannerLabelStyle;
      *&v193 = v59;
      *(&v193 + 1) = v60;
      swift_getOpaqueTypeConformance2();
      v45 = v118;
      sub_24B75B7A8();
      (*(v63 + 8))(v61, v64);
      sub_24B71CFF4(v54, type metadata accessor for WorkoutSchedule);
    }

    v39 = v129;
    v38 = v126;
    sub_24B6B9D34(v45, v125, &qword_27F035890, &qword_24B764A08);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035860, &qword_24B7649F8);
    sub_24B71C79C();
    sub_24B71C95C();
    sub_24B75B7A8();
    sub_24B6B9CD4(v45, &qword_27F035890, &qword_24B764A08);
    sub_24B6B9CD4(v124, &qword_27F033F50, &unk_24B764A50);
  }

  sub_24B6B9D34(v38, v39, &qword_27F035850, &qword_24B7649F0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0358B8, &qword_24B764A18);
  sub_24B71C710();
  sub_24B71CAC0();
  sub_24B75B7A8();
  return sub_24B6B9CD4(v38, &qword_27F035850, &qword_24B7649F0);
}

double sub_24B71BCFC@<D0>(uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v22 = a2;
  v23 = a3;
  v3 = sub_24B75B1F8();
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24B75B248();
  v17 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24B75AFE8();
  v16 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArtworkBannerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  sub_24B75B278();
  v14 = *(&v24 + 1);
  v15 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035810, &qword_24B7649D8);
  sub_24B6C743C(&qword_27F035818, &qword_27F035810, &qword_24B7649D8, MEMORY[0x277D04410]);
  sub_24B75B408();
  swift_getKeyPath();
  sub_24B75C218();

  sub_24B75B408();
  swift_getKeyPath();
  sub_24B75C218();

  sub_24B6EE604(v5, v9);
  (*(v20 + 8))(v5, v21);
  (*(v17 + 8))(v7, v19);
  v15(&v24, v9);

  (*(v16 + 8))(v9, v18);
  v10 = v25;
  v11 = v26;
  result = *&v24;
  v13 = v23;
  *v23 = v24;
  *(v13 + 16) = v10;
  *(v13 + 3) = v11;
  return result;
}

uint64_t sub_24B71C058@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B75BF98();
  *a1 = result;
  return result;
}

uint64_t sub_24B71C098(uint64_t *a1)
{
  v1 = type metadata accessor for ArtworkBannerAction(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035810, &qword_24B7649D8);
  sub_24B6C743C(&qword_27F035818, &qword_27F035810, &qword_24B7649D8, MEMORY[0x277D04410]);
  sub_24B75B408();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033F50, &unk_24B764A50);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_24B75C228();

  return sub_24B71CFF4(v3, type metadata accessor for ArtworkBannerAction);
}

uint64_t sub_24B71C1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_24B71A418(v2, a2);
  sub_24B71C3A0(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_24B71CF84(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ArtworkBannerView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0357F0, &qword_24B764960);
  v9 = (a2 + *(result + 36));
  *v9 = sub_24B71D090;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  return result;
}

uint64_t sub_24B71C328@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_24B71C364@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_24B71C3A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkBannerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_24B71C44C(uint64_t a1)
{
  sub_24B71C4D0(319);
  if (v1 <= 0x3F)
  {
    sub_24B6C71E0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B71C4D0(uint64_t a1)
{
  if (!qword_27F035808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035810, &qword_24B7649D8);
    sub_24B6C743C(&qword_27F035818, &qword_27F035810, &qword_24B7649D8, MEMORY[0x277D04410]);
    v1 = sub_24B75B418();
    if (!v2)
    {
      atomic_store(v1, &qword_27F035808);
    }
  }
}

unint64_t sub_24B71C574()
{
  result = qword_27F035820;
  if (!qword_27F035820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0357F0, &qword_24B764960);
    sub_24B71C600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035820);
  }

  return result;
}

unint64_t sub_24B71C600()
{
  result = qword_27F035828;
  if (!qword_27F035828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035830, &qword_24B7649E0);
    sub_24B71C684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035828);
  }

  return result;
}

unint64_t sub_24B71C684()
{
  result = qword_27F035838;
  if (!qword_27F035838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035840, &qword_24B7649E8);
    sub_24B71C710();
    sub_24B71CAC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035838);
  }

  return result;
}

unint64_t sub_24B71C710()
{
  result = qword_27F035848;
  if (!qword_27F035848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035850, &qword_24B7649F0);
    sub_24B71C79C();
    sub_24B71C95C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035848);
  }

  return result;
}

unint64_t sub_24B71C79C()
{
  result = qword_27F035858;
  if (!qword_27F035858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035860, &qword_24B7649F8);
    sub_24B71C828();
    sub_24B71C908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035858);
  }

  return result;
}

unint64_t sub_24B71C828()
{
  result = qword_27F035868;
  if (!qword_27F035868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035870, &qword_24B764A00);
    sub_24B71C8B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035868);
  }

  return result;
}

unint64_t sub_24B71C8B4()
{
  result = qword_27F035878;
  if (!qword_27F035878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035878);
  }

  return result;
}

unint64_t sub_24B71C908()
{
  result = qword_27F035880;
  if (!qword_27F035880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035880);
  }

  return result;
}

unint64_t sub_24B71C95C()
{
  result = qword_27F035888;
  if (!qword_27F035888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035890, &qword_24B764A08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035898, &qword_24B764A10);
    sub_24B6C743C(&qword_27F0358A0, &qword_27F035898, &qword_24B764A10, MEMORY[0x277CDEFF0]);
    sub_24B71CA6C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035888);
  }

  return result;
}

unint64_t sub_24B71CA6C()
{
  result = qword_27F0358A8;
  if (!qword_27F0358A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0358A8);
  }

  return result;
}

unint64_t sub_24B71CAC0()
{
  result = qword_27F0358B0;
  if (!qword_27F0358B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0358B8, &qword_24B764A18);
    sub_24B71CB4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0358B0);
  }

  return result;
}

unint64_t sub_24B71CB4C()
{
  result = qword_27F0358C0;
  if (!qword_27F0358C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0358C8, &qword_24B764A20);
    sub_24B71C79C();
    sub_24B71CBD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0358C0);
  }

  return result;
}

unint64_t sub_24B71CBD8()
{
  result = qword_27F0358D0;
  if (!qword_27F0358D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0358D8, &qword_24B764A28);
    sub_24B71CC64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0358D0);
  }

  return result;
}

unint64_t sub_24B71CC64()
{
  result = qword_27F0358E0;
  if (!qword_27F0358E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0358E8, &qword_24B764A30);
    sub_24B71CD1C();
    sub_24B6C743C(&qword_27F0346C8, &qword_27F034590, &qword_24B75F930, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0358E0);
  }

  return result;
}

unint64_t sub_24B71CD1C()
{
  result = qword_27F0358F0;
  if (!qword_27F0358F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0358F8, &qword_24B764A38);
    sub_24B71CDA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0358F0);
  }

  return result;
}

unint64_t sub_24B71CDA8()
{
  result = qword_27F035900;
  if (!qword_27F035900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035908, &unk_24B764A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035900);
  }

  return result;
}

uint64_t objectdestroy_5Tm()
{
  v1 = (type metadata accessor for ArtworkBannerView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  sub_24B6C7004(*(v0 + v2), *(v0 + v2 + 8));
  v3 = v1[7];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24B71CF24()
{
  v1 = *(type metadata accessor for ArtworkBannerView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_24B71C098(v2);
}

uint64_t sub_24B71CF84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B71CFF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24B71D094()
{
  v1 = *v0;
  v2 = 0x4164694477656976;
  v3 = 0xD000000000000017;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x5472656E69617274;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7070615465726F6DLL;
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

uint64_t sub_24B71D158@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B71F4D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B71D180(uint64_t a1)
{
  v2 = sub_24B71DF58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B71D1BC(uint64_t a1)
{
  v2 = sub_24B71DF58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B71D1F8(uint64_t a1)
{
  v2 = sub_24B71E10C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B71D234(uint64_t a1)
{
  v2 = sub_24B71E10C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B71D290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7473696C79616C70 && a2 == 0xEB000000004C5255)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B75C6B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B71D31C(uint64_t a1)
{
  v2 = sub_24B71E0B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B71D358(uint64_t a1)
{
  v2 = sub_24B71E0B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B71D394()
{
  if (*v0)
  {
    return 0x7473696C79616C70;
  }

  else
  {
    return 0x6564496B63617274;
  }
}

uint64_t sub_24B71D3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6564496B63617274 && a2 == 0xEF7265696669746ELL;
  if (v6 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7473696C79616C70 && a2 == 0xEB000000004C5255)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B75C6B8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24B71D4CC(uint64_t a1)
{
  v2 = sub_24B71E064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B71D508(uint64_t a1)
{
  v2 = sub_24B71E064();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B71D560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000024B76C0C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24B75C6B8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24B71D5F4(uint64_t a1)
{
  v2 = sub_24B71E010();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B71D630(uint64_t a1)
{
  v2 = sub_24B71E010();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B71D66C(uint64_t a1)
{
  v2 = sub_24B71E160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B71D6A8(uint64_t a1)
{
  v2 = sub_24B71E160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutDetailAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035938, &qword_24B764B30);
  v54 = *(v2 - 8);
  v55 = v2;
  MEMORY[0x28223BE20](v2);
  v53 = &v46 - v3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035940, &qword_24B764B38);
  v56 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v61 = &v46 - v4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035948, &qword_24B764B40);
  v52 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v46 - v5;
  v6 = sub_24B75B108();
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035950, &qword_24B764B48);
  v49 = *(v12 - 8);
  v50 = v12;
  MEMORY[0x28223BE20](v12);
  v48 = &v46 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035958, &qword_24B764B50);
  v46 = *(v14 - 8);
  v47 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  v17 = type metadata accessor for WorkoutDetailAction(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035960, &unk_24B764B58);
  v21 = *(v20 - 8);
  v64 = v20;
  v65 = v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v46 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B71DF58();
  v63 = v23;
  sub_24B75C738();
  sub_24B71DFAC(v62, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v28 = v59;
    v27 = v60;
    v29 = v61;
    v31 = v57;
    v30 = v58;
    if (EnumCaseMultiPayload)
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0347A8, &qword_24B75FB50);
      v41 = v8;
      (*(v31 + 32))(v8, &v19[*(v40 + 48)], v30);
      v72 = 3;
      sub_24B71E064();
      v42 = v63;
      v43 = v64;
      sub_24B75C638();
      v71 = 0;
      v44 = v51;
      v45 = v66;
      sub_24B75C678();

      if (!v45)
      {
        v70 = 1;
        sub_24B6A72A8(&qword_27F0341E0, MEMORY[0x277CC9268]);
        sub_24B75C6A8();
      }

      (*(v56 + 8))(v29, v44);
      (*(v31 + 8))(v41, v30);
      return (*(v65 + 8))(v42, v43);
    }

    else
    {
      (*(v57 + 32))(v11, v19, v58);
      v69 = 2;
      sub_24B71E0B8();
      v33 = v63;
      v32 = v64;
      sub_24B75C638();
      sub_24B6A72A8(&qword_27F0341E0, MEMORY[0x277CC9268]);
      sub_24B75C6A8();
      (*(v52 + 8))(v28, v27);
      (*(v31 + 8))(v11, v30);
      return (*(v65 + 8))(v33, v32);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v73 = 4;
    sub_24B71E010();
    v35 = v53;
    v37 = v63;
    v36 = v64;
    sub_24B75C638();
    v38 = v55;
    sub_24B75C678();

    (*(v54 + 8))(v35, v38);
    return (*(v65 + 8))(v37, v36);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v67 = 0;
      sub_24B71E160();
      v26 = v63;
      v25 = v64;
      sub_24B75C638();
      (*(v46 + 8))(v16, v47);
    }

    else
    {
      v68 = 1;
      sub_24B71E10C();
      v39 = v48;
      v26 = v63;
      v25 = v64;
      sub_24B75C638();
      (*(v49 + 8))(v39, v50);
    }

    return (*(v65 + 8))(v26, v25);
  }
}

uint64_t type metadata accessor for WorkoutDetailAction(uint64_t a1)
{
  result = qword_27F0359C8;
  if (!qword_27F0359C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24B71DF58()
{
  result = qword_27F035968;
  if (!qword_27F035968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035968);
  }

  return result;
}

uint64_t sub_24B71DFAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutDetailAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B71E010()
{
  result = qword_27F035970;
  if (!qword_27F035970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035970);
  }

  return result;
}

unint64_t sub_24B71E064()
{
  result = qword_27F035978;
  if (!qword_27F035978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035978);
  }

  return result;
}

unint64_t sub_24B71E0B8()
{
  result = qword_27F035980;
  if (!qword_27F035980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035980);
  }

  return result;
}

unint64_t sub_24B71E10C()
{
  result = qword_27F035988;
  if (!qword_27F035988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035988);
  }

  return result;
}

unint64_t sub_24B71E160()
{
  result = qword_27F035990;
  if (!qword_27F035990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035990);
  }

  return result;
}

uint64_t WorkoutDetailAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035998, &qword_24B764B68);
  v4 = *(v3 - 8);
  v78 = v3;
  v79 = v4;
  MEMORY[0x28223BE20](v3);
  v87 = &v67 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0359A0, &qword_24B764B70);
  v80 = *(v6 - 8);
  v81 = v6;
  MEMORY[0x28223BE20](v6);
  v83 = &v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0359A8, &qword_24B764B78);
  v76 = *(v8 - 8);
  v77 = v8;
  MEMORY[0x28223BE20](v8);
  v86 = &v67 - v9;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0359B0, &qword_24B764B80);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v85 = &v67 - v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0359B8, &qword_24B764B88);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v82 = &v67 - v11;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0359C0, &unk_24B764B90);
  v84 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v13 = &v67 - v12;
  v14 = type metadata accessor for WorkoutDetailAction(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v19 = &v67 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v67 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v67 - v24;
  v26 = a1[3];
  v90 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_24B71DF58();
  v27 = v91;
  sub_24B75C728();
  if (!v27)
  {
    v70 = v22;
    v68 = v16;
    v28 = v85;
    v69 = v19;
    v29 = v86;
    v30 = v87;
    v71 = v25;
    v91 = v14;
    v31 = v88;
    v32 = v89;
    v33 = sub_24B75C628();
    v34 = (2 * *(v33 + 16)) | 1;
    v92 = v33;
    v93 = v33 + 32;
    v94 = 0;
    v95 = v34;
    v35 = sub_24B6B9E10();
    if (v35 != 5 && v94 == v95 >> 1)
    {
      if (v35 > 1u)
      {
        if (v35 == 2)
        {
          v96 = 2;
          sub_24B71E0B8();
          v49 = v29;
          sub_24B75C598();
          sub_24B75B108();
          sub_24B6A72A8(&qword_27F0341F8, MEMORY[0x277CC9280]);
          v50 = v70;
          v51 = v77;
          sub_24B75C618();
          v52 = v84;
          (*(v76 + 8))(v49, v51);
          (*(v52 + 8))(v13, v32);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v56 = v50;
        }

        else
        {
          if (v35 == 3)
          {
            v96 = 3;
            sub_24B71E064();
            v36 = v83;
            sub_24B75C598();
            v37 = v31;
            v96 = 0;
            v38 = v36;
            v39 = sub_24B75C5E8();
            v40 = v84;
            v58 = v57;
            v59 = v39;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0347A8, &qword_24B75FB50);
            v60 = v69;
            *v69 = v59;
            *(v60 + 8) = v58;
            sub_24B75B108();
            v96 = 1;
            sub_24B6A72A8(&qword_27F0341F8, MEMORY[0x277CC9280]);
            v61 = v81;
            sub_24B75C618();
            (*(v80 + 8))(v38, v61);
            (*(v40 + 8))(v13, v89);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v66 = v71;
            sub_24B71ED28(v60, v71);
LABEL_17:
            v55 = v90;
LABEL_19:
            sub_24B71ED28(v66, v37);
            v44 = v55;
            return __swift_destroy_boxed_opaque_existential_1(v44);
          }

          v96 = 4;
          sub_24B71E010();
          sub_24B75C598();
          v53 = v78;
          v62 = sub_24B75C5E8();
          v64 = v63;
          (*(v79 + 8))(v30, v53);
          (*(v84 + 8))(v13, v32);
          swift_unknownObjectRelease();
          v65 = v68;
          *v68 = v62;
          v65[1] = v64;
          swift_storeEnumTagMultiPayload();
          v56 = v65;
        }

        v66 = v71;
        sub_24B71ED28(v56, v71);
        v55 = v90;
        v37 = v31;
        goto LABEL_19;
      }

      v46 = v13;
      if (v35)
      {
        v96 = 1;
        sub_24B71E10C();
        sub_24B75C598();
        v54 = v84;
        v37 = v31;
        (*(v74 + 8))(v28, v75);
        (*(v54 + 8))(v13, v32);
      }

      else
      {
        v96 = 0;
        sub_24B71E160();
        v47 = v82;
        sub_24B75C598();
        v48 = v84;
        v37 = v31;
        (*(v72 + 8))(v47, v73);
        (*(v48 + 8))(v46, v32);
      }

      swift_unknownObjectRelease();
      v66 = v71;
      swift_storeEnumTagMultiPayload();
      goto LABEL_17;
    }

    v41 = sub_24B75C568();
    swift_allocError();
    v43 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0);
    *v43 = v91;
    sub_24B75C5A8();
    sub_24B75C558();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
    swift_willThrow();
    (*(v84 + 8))(v13, v32);
    swift_unknownObjectRelease();
  }

  v44 = v90;
  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t sub_24B71ED28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutDetailAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24B71EDBC(uint64_t a1)
{
  sub_24B71EE44();
  if (v1 <= 0x3F)
  {
    sub_24B71EE8C(319);
    if (v2 <= 0x3F)
    {
      sub_24B713A5C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24B71EE44()
{
  if (!qword_27F0359D8)
  {
    v0 = sub_24B75B108();
    if (!v1)
    {
      atomic_store(v0, &qword_27F0359D8);
    }
  }
}

void sub_24B71EE8C(uint64_t a1)
{
  if (!qword_27F0359E0)
  {
    sub_24B75B108();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F0359E0);
    }
  }
}

unint64_t sub_24B71EF5C()
{
  result = qword_27F0359E8;
  if (!qword_27F0359E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0359E8);
  }

  return result;
}

unint64_t sub_24B71EFB4()
{
  result = qword_27F0359F0;
  if (!qword_27F0359F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0359F0);
  }

  return result;
}

unint64_t sub_24B71F00C()
{
  result = qword_27F0359F8;
  if (!qword_27F0359F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0359F8);
  }

  return result;
}

unint64_t sub_24B71F064()
{
  result = qword_27F035A00;
  if (!qword_27F035A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A00);
  }

  return result;
}

unint64_t sub_24B71F0BC()
{
  result = qword_27F035A08;
  if (!qword_27F035A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A08);
  }

  return result;
}

unint64_t sub_24B71F114()
{
  result = qword_27F035A10;
  if (!qword_27F035A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A10);
  }

  return result;
}

unint64_t sub_24B71F16C()
{
  result = qword_27F035A18;
  if (!qword_27F035A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A18);
  }

  return result;
}

unint64_t sub_24B71F1C4()
{
  result = qword_27F035A20;
  if (!qword_27F035A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A20);
  }

  return result;
}

unint64_t sub_24B71F21C()
{
  result = qword_27F035A28;
  if (!qword_27F035A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A28);
  }

  return result;
}

unint64_t sub_24B71F274()
{
  result = qword_27F035A30;
  if (!qword_27F035A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A30);
  }

  return result;
}

unint64_t sub_24B71F2CC()
{
  result = qword_27F035A38;
  if (!qword_27F035A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A38);
  }

  return result;
}

unint64_t sub_24B71F324()
{
  result = qword_27F035A40;
  if (!qword_27F035A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A40);
  }

  return result;
}

unint64_t sub_24B71F37C()
{
  result = qword_27F035A48;
  if (!qword_27F035A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A48);
  }

  return result;
}

unint64_t sub_24B71F3D4()
{
  result = qword_27F035A50;
  if (!qword_27F035A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A50);
  }

  return result;
}

unint64_t sub_24B71F42C()
{
  result = qword_27F035A58;
  if (!qword_27F035A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A58);
  }

  return result;
}

unint64_t sub_24B71F484()
{
  result = qword_27F035A60;
  if (!qword_27F035A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A60);
  }

  return result;
}

uint64_t sub_24B71F4D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4164694477656976 && a2 == 0xED00007261657070;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7070615465726F6DLL && a2 == 0xEA00000000006465 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024B76C080 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B76C0A0 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5472656E69617274 && a2 == 0xED00006465707061)
  {

    return 4;
  }

  else
  {
    v6 = sub_24B75C6B8();

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

uint64_t sub_24B71F6B0()
{
  v1 = 0x6157646564697567;
  v2 = 0x697461746964656DLL;
  if (*v0 != 2)
  {
    v2 = 0x6F65646976;
  }

  if (*v0)
  {
    v1 = 0x7552646564697567;
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

uint64_t sub_24B71F730@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B720070(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B71F758(uint64_t a1)
{
  v2 = sub_24B71FE5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B71F794(uint64_t a1)
{
  v2 = sub_24B71FE5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B71F7D0(uint64_t a1)
{
  v2 = sub_24B71FF58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B71F80C(uint64_t a1)
{
  v2 = sub_24B71FF58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B71F848(uint64_t a1)
{
  v2 = sub_24B71FFAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B71F884(uint64_t a1)
{
  v2 = sub_24B71FFAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B71F8C0(uint64_t a1)
{
  v2 = sub_24B71FF04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B71F8FC(uint64_t a1)
{
  v2 = sub_24B71FF04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B71F938(uint64_t a1)
{
  v2 = sub_24B71FEB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B71F974(uint64_t a1)
{
  v2 = sub_24B71FEB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutDetailContentMediaType.hashValue.getter(unsigned __int8 a1)
{
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](a1);
  return sub_24B75C718();
}

uint64_t WorkoutDetailContentMediaType.encode(to:)(void *a1, int a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035A68, &qword_24B765240);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v20 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035A70, &qword_24B765248);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v23 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035A78, &qword_24B765250);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035A80, &qword_24B765258);
  v20 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035A88, &qword_24B765260);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B71FE5C();
  sub_24B75C738();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      sub_24B71FF04();
      v9 = v23;
      sub_24B75C638();
      v18 = v24;
      v17 = v25;
    }

    else
    {
      v33 = 3;
      sub_24B71FEB0();
      v9 = v26;
      sub_24B75C638();
      v18 = v27;
      v17 = v28;
    }

    goto LABEL_8;
  }

  if (v29)
  {
    v31 = 1;
    sub_24B71FF58();
    sub_24B75C638();
    v18 = v21;
    v17 = v22;
LABEL_8:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  sub_24B71FFAC();
  sub_24B75C638();
  (*(v20 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

unint64_t sub_24B71FE5C()
{
  result = qword_27F035A90;
  if (!qword_27F035A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A90);
  }

  return result;
}

unint64_t sub_24B71FEB0()
{
  result = qword_27F035A98;
  if (!qword_27F035A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035A98);
  }

  return result;
}

unint64_t sub_24B71FF04()
{
  result = qword_27F035AA0;
  if (!qword_27F035AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035AA0);
  }

  return result;
}

unint64_t sub_24B71FF58()
{
  result = qword_27F035AA8;
  if (!qword_27F035AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035AA8);
  }

  return result;
}

unint64_t sub_24B71FFAC()
{
  result = qword_27F035AB0;
  if (!qword_27F035AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035AB0);
  }

  return result;
}

void *sub_24B720018@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B7201E4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24B720070(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6157646564697567 && a2 == 0xEA00000000006B6CLL;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7552646564697567 && a2 == 0xE90000000000006ELL || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697461746964656DLL && a2 == 0xEA00000000006E6FLL || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F65646976 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B75C6B8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_24B7201E4(void *a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B18, &qword_24B765750);
  v34 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = &v31 - v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B20, &qword_24B765758);
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B28, &qword_24B765760);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B30, &qword_24B765768);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B38, &unk_24B765770);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_24B71FE5C();
  v15 = v43;
  sub_24B75C728();
  if (v15)
  {
    goto LABEL_11;
  }

  v16 = v9;
  v32 = v7;
  v33 = 0;
  v17 = v41;
  v18 = v42;
  v43 = v11;
  v19 = v13;
  v20 = sub_24B75C628();
  v21 = (2 * *(v20 + 16)) | 1;
  v45 = v20;
  v46 = v20 + 32;
  v47 = 0;
  v48 = v21;
  v22 = sub_24B6B668C();
  if (v22 != 4 && v47 == v48 >> 1)
  {
    v11 = v22;
    if (v22 <= 1u)
    {
      if (v22)
      {
        v49 = 1;
        sub_24B71FF58();
        v29 = v33;
        sub_24B75C598();
        if (!v29)
        {
          (*(v37 + 8))(v6, v38);
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 0;
        sub_24B71FFAC();
        v23 = v33;
        sub_24B75C598();
        if (!v23)
        {
          (*(v35 + 8))(v16, v32);
LABEL_18:
          (v43[1])(v13, v10);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v44);
          return v11;
        }
      }

      goto LABEL_9;
    }

    v27 = v43;
    if (v22 == 2)
    {
      v49 = 2;
      sub_24B71FF04();
      v28 = v33;
      sub_24B75C598();
      if (!v28)
      {
        (*(v36 + 8))(v17, v40);
LABEL_22:
        (v27[1])(v19, v10);
        goto LABEL_23;
      }
    }

    else
    {
      v49 = 3;
      sub_24B71FEB0();
      v30 = v33;
      sub_24B75C598();
      if (!v30)
      {
        (*(v34 + 8))(v18, v39);
        goto LABEL_22;
      }
    }

    (v27[1])(v19, v10);
    goto LABEL_10;
  }

  v24 = sub_24B75C568();
  swift_allocError();
  v11 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0);
  *v11 = &type metadata for WorkoutDetailContentMediaType;
  sub_24B75C5A8();
  sub_24B75C558();
  (*(*(v24 - 8) + 104))(v11, *MEMORY[0x277D84160], v24);
  swift_willThrow();
LABEL_9:
  (v43[1])(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v11;
}

unint64_t sub_24B720828()
{
  result = qword_27F035AB8;
  if (!qword_27F035AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035AB8);
  }

  return result;
}

unint64_t sub_24B7208E0()
{
  result = qword_27F035AC0;
  if (!qword_27F035AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035AC0);
  }

  return result;
}

unint64_t sub_24B720938()
{
  result = qword_27F035AC8;
  if (!qword_27F035AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035AC8);
  }

  return result;
}

unint64_t sub_24B720990()
{
  result = qword_27F035AD0;
  if (!qword_27F035AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035AD0);
  }

  return result;
}

unint64_t sub_24B7209E8()
{
  result = qword_27F035AD8;
  if (!qword_27F035AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035AD8);
  }

  return result;
}

unint64_t sub_24B720A40()
{
  result = qword_27F035AE0;
  if (!qword_27F035AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035AE0);
  }

  return result;
}

unint64_t sub_24B720A98()
{
  result = qword_27F035AE8;
  if (!qword_27F035AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035AE8);
  }

  return result;
}

unint64_t sub_24B720AF0()
{
  result = qword_27F035AF0;
  if (!qword_27F035AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035AF0);
  }

  return result;
}

unint64_t sub_24B720B48()
{
  result = qword_27F035AF8;
  if (!qword_27F035AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035AF8);
  }

  return result;
}

unint64_t sub_24B720BA0()
{
  result = qword_27F035B00;
  if (!qword_27F035B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035B00);
  }

  return result;
}

unint64_t sub_24B720BF8()
{
  result = qword_27F035B08;
  if (!qword_27F035B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035B08);
  }

  return result;
}

unint64_t sub_24B720C50()
{
  result = qword_27F035B10;
  if (!qword_27F035B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035B10);
  }

  return result;
}

unint64_t sub_24B720CBC(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000014;
    if (a1 != 6)
    {
      v6 = 0x6269737365636361;
    }

    if (a1 <= 8u)
    {
      return v6;
    }

    else
    {
      return 0x6269737365636361;
    }
  }

  else
  {
    v1 = 0x616D536172747865;
    v2 = 0x656772616CLL;
    v3 = 0x72614C6172747865;
    if (a1 != 4)
    {
      v3 = 0x7478456172747865;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6C6C616D73;
    if (a1 != 1)
    {
      v4 = 0x6D756964656DLL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24B720E68(uint64_t a1)
{
  v2 = sub_24B7221A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B720EA4(uint64_t a1)
{
  v2 = sub_24B7221A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B720EE0(uint64_t a1)
{
  v2 = sub_24B72214C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B720F1C(uint64_t a1)
{
  v2 = sub_24B72214C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B720F58(uint64_t a1)
{
  v2 = sub_24B7220F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B720F94(uint64_t a1)
{
  v2 = sub_24B7220F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B720FD0(uint64_t a1)
{
  v2 = sub_24B7220A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B72100C(uint64_t a1)
{
  v2 = sub_24B7220A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B721048(uint64_t a1)
{
  v2 = sub_24B722050();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B721084(uint64_t a1)
{
  v2 = sub_24B722050();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7210C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B722520(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B7210FC(uint64_t a1)
{
  v2 = sub_24B721FFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B721138(uint64_t a1)
{
  v2 = sub_24B721FFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B721174(uint64_t a1)
{
  v2 = sub_24B7221F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7211B0(uint64_t a1)
{
  v2 = sub_24B7221F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7211EC(uint64_t a1)
{
  v2 = sub_24B722248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B721228(uint64_t a1)
{
  v2 = sub_24B722248();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B721264(uint64_t a1)
{
  v2 = sub_24B72229C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7212A0(uint64_t a1)
{
  v2 = sub_24B72229C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7212DC(uint64_t a1)
{
  v2 = sub_24B7223EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B721318(uint64_t a1)
{
  v2 = sub_24B7223EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B721354(uint64_t a1)
{
  v2 = sub_24B7222F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B721390(uint64_t a1)
{
  v2 = sub_24B7222F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7213CC(uint64_t a1)
{
  v2 = sub_24B722344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B721408(uint64_t a1)
{
  v2 = sub_24B722344();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B721444(uint64_t a1)
{
  v2 = sub_24B722398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B721480(uint64_t a1)
{
  v2 = sub_24B722398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProgramDetailDynamicTypeSize.encode(to:)(void *a1, int a2)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B40, &qword_24B765780);
  v71 = *(v3 - 8);
  v72 = v3;
  MEMORY[0x28223BE20](v3);
  v70 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B48, &qword_24B765788);
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x28223BE20](v5);
  v67 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B50, &qword_24B765790);
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x28223BE20](v7);
  v64 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B58, &qword_24B765798);
  v62 = *(v9 - 8);
  v63 = v9;
  MEMORY[0x28223BE20](v9);
  v61 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B60, &qword_24B7657A0);
  v59 = *(v11 - 8);
  v60 = v11;
  MEMORY[0x28223BE20](v11);
  v58 = &v41 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B68, &qword_24B7657A8);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v41 - v13;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B70, &qword_24B7657B0);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v41 - v14;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B78, &qword_24B7657B8);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v41 - v15;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B80, &qword_24B7657C0);
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = &v41 - v16;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B88, &qword_24B7657C8);
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = &v41 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B90, &qword_24B7657D0);
  v42 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035B98, &qword_24B7657D8);
  v41 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v41 - v22;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035BA0, &qword_24B7657E0);
  v24 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v26 = &v41 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B721FFC();
  v74 = v26;
  sub_24B75C738();
  v27 = (v24 + 8);
  if (v73 > 5u)
  {
    if (v73 > 8u)
    {
      if (v73 == 9)
      {
        v85 = 9;
        sub_24B7220F8();
        v30 = v64;
        v29 = v74;
        v28 = v75;
        sub_24B75C638();
        v32 = v65;
        v31 = v66;
      }

      else if (v73 == 10)
      {
        v86 = 10;
        sub_24B7220A4();
        v30 = v67;
        v29 = v74;
        v28 = v75;
        sub_24B75C638();
        v32 = v68;
        v31 = v69;
      }

      else
      {
        v87 = 11;
        sub_24B722050();
        v30 = v70;
        v29 = v74;
        v28 = v75;
        sub_24B75C638();
        v32 = v71;
        v31 = v72;
      }
    }

    else
    {
      if (v73 == 6)
      {
        v82 = 6;
        sub_24B7221F4();
        v37 = v55;
        v29 = v74;
        v28 = v75;
        sub_24B75C638();
        (*(v56 + 8))(v37, v57);
        return (*v27)(v29, v28);
      }

      if (v73 == 7)
      {
        v83 = 7;
        sub_24B7221A0();
        v30 = v58;
        v29 = v74;
        v28 = v75;
        sub_24B75C638();
        v32 = v59;
        v31 = v60;
      }

      else
      {
        v84 = 8;
        sub_24B72214C();
        v30 = v61;
        v29 = v74;
        v28 = v75;
        sub_24B75C638();
        v32 = v62;
        v31 = v63;
      }
    }

    (*(v32 + 8))(v30, v31);
    return (*v27)(v29, v28);
  }

  if (v73 > 2u)
  {
    if (v73 == 3)
    {
      v79 = 3;
      sub_24B7222F0();
      v38 = v46;
      v29 = v74;
      v28 = v75;
      sub_24B75C638();
      (*(v47 + 8))(v38, v48);
    }

    else if (v73 == 4)
    {
      v80 = 4;
      sub_24B72229C();
      v33 = v49;
      v29 = v74;
      v28 = v75;
      sub_24B75C638();
      (*(v50 + 8))(v33, v51);
    }

    else
    {
      v81 = 5;
      sub_24B722248();
      v40 = v52;
      v29 = v74;
      v28 = v75;
      sub_24B75C638();
      (*(v53 + 8))(v40, v54);
    }
  }

  else
  {
    if (!v73)
    {
      v76 = 0;
      sub_24B7223EC();
      v34 = v74;
      v35 = v75;
      sub_24B75C638();
      (*(v41 + 8))(v23, v21);
      return (*v27)(v34, v35);
    }

    if (v73 == 1)
    {
      v77 = 1;
      sub_24B722398();
      v29 = v74;
      v28 = v75;
      sub_24B75C638();
      (*(v42 + 8))(v20, v18);
    }

    else
    {
      v78 = 2;
      sub_24B722344();
      v39 = v43;
      v29 = v74;
      v28 = v75;
      sub_24B75C638();
      (*(v44 + 8))(v39, v45);
    }
  }

  return (*v27)(v29, v28);
}

unint64_t sub_24B721FFC()
{
  result = qword_27F035BA8;
  if (!qword_27F035BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035BA8);
  }

  return result;
}

unint64_t sub_24B722050()
{
  result = qword_27F035BB0;
  if (!qword_27F035BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035BB0);
  }

  return result;
}

unint64_t sub_24B7220A4()
{
  result = qword_27F035BB8;
  if (!qword_27F035BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035BB8);
  }

  return result;
}

unint64_t sub_24B7220F8()
{
  result = qword_27F035BC0;
  if (!qword_27F035BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035BC0);
  }

  return result;
}

unint64_t sub_24B72214C()
{
  result = qword_27F035BC8;
  if (!qword_27F035BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035BC8);
  }

  return result;
}

unint64_t sub_24B7221A0()
{
  result = qword_27F035BD0;
  if (!qword_27F035BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035BD0);
  }

  return result;
}

unint64_t sub_24B7221F4()
{
  result = qword_27F035BD8;
  if (!qword_27F035BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035BD8);
  }

  return result;
}

unint64_t sub_24B722248()
{
  result = qword_27F035BE0;
  if (!qword_27F035BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035BE0);
  }

  return result;
}

unint64_t sub_24B72229C()
{
  result = qword_27F035BE8;
  if (!qword_27F035BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035BE8);
  }

  return result;
}

unint64_t sub_24B7222F0()
{
  result = qword_27F035BF0;
  if (!qword_27F035BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035BF0);
  }

  return result;
}

unint64_t sub_24B722344()
{
  result = qword_27F035BF8;
  if (!qword_27F035BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035BF8);
  }

  return result;
}

unint64_t sub_24B722398()
{
  result = qword_27F035C00;
  if (!qword_27F035C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C00);
  }

  return result;
}

unint64_t sub_24B7223EC()
{
  result = qword_27F035C08;
  if (!qword_27F035C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C08);
  }

  return result;
}

uint64_t sub_24B722458@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B7228F4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t ProgramDetailDynamicTypeSize.hashValue.getter(unsigned __int8 a1)
{
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](a1);
  return sub_24B75C718();
}

uint64_t sub_24B722520(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616D536172747865 && a2 == 0xEA00000000006C6CLL || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6C616D73 && a2 == 0xE500000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656772616CLL && a2 == 0xE500000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x72614C6172747865 && a2 == 0xEA00000000006567 || (sub_24B75C6B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7478456172747865 && a2 == 0xEF656772614C6172 || (sub_24B75C6B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B76C0E0 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xEE00317974696C69 || (sub_24B75C6B8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xEE00327974696C69 || (sub_24B75C6B8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xEE00337974696C69 || (sub_24B75C6B8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xEE00347974696C69 || (sub_24B75C6B8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xEE00357974696C69)
  {

    return 11;
  }

  else
  {
    v5 = sub_24B75C6B8();

    if (v5)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_24B7228F4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035CF0, &qword_24B766308);
  v80 = *(v2 - 8);
  v81 = v2;
  MEMORY[0x28223BE20](v2);
  v86 = &v55 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035CF8, &qword_24B766310);
  v78 = *(v4 - 8);
  v79 = v4;
  MEMORY[0x28223BE20](v4);
  v91 = &v55 - v5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035D00, &qword_24B766318);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v90 = &v55 - v6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035D08, &qword_24B766320);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v85 = &v55 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035D10, &qword_24B766328);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v84 = &v55 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035D18, &qword_24B766330);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v83 = &v55 - v9;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035D20, &qword_24B766338);
  v69 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v89 = &v55 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035D28, &qword_24B766340);
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v88 = &v55 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035D30, &qword_24B766348);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v87 = &v55 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035D38, &qword_24B766350);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v82 = &v55 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035D40, &qword_24B766358);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035D48, &qword_24B766360);
  v59 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035D50, &qword_24B766368);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v55 - v21;
  v23 = a1[3];
  v93 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24B721FFC();
  v24 = v92;
  sub_24B75C728();
  if (v24)
  {
    goto LABEL_12;
  }

  v56 = v18;
  v55 = v16;
  v57 = v15;
  v25 = v87;
  v26 = v88;
  v27 = v89;
  v28 = v90;
  v58 = 0;
  v29 = v91;
  v92 = v20;
  v30 = sub_24B75C628();
  v31 = (2 * *(v30 + 16)) | 1;
  v94 = v30;
  v95 = v30 + 32;
  v96 = 0;
  v97 = v31;
  v32 = sub_24B6B9E0C();
  v33 = v22;
  if (v32 != 12 && v96 == v97 >> 1)
  {
    v20 = v32;
    if (v32 <= 5u)
    {
      if (v32 <= 2u)
      {
        v34 = v58;
        if (v32)
        {
          if (v32 == 1)
          {
            v98 = 1;
            sub_24B722398();
            v35 = v57;
            sub_24B75C598();
            if (!v34)
            {
              (*(v60 + 8))(v35, v61);
LABEL_45:
              v41 = v92;
              goto LABEL_47;
            }
          }

          else
          {
            v98 = 2;
            sub_24B722344();
            v51 = v82;
            sub_24B75C598();
            if (!v34)
            {
              (*(v62 + 8))(v51, v63);
              goto LABEL_45;
            }
          }
        }

        else
        {
          v98 = 0;
          sub_24B7223EC();
          v47 = v56;
          sub_24B75C598();
          if (!v34)
          {
            (*(v59 + 8))(v47, v55);
            goto LABEL_45;
          }
        }

        v41 = v92;
        goto LABEL_41;
      }

      v41 = v92;
      v44 = v58;
      if (v32 == 3)
      {
        v98 = 3;
        sub_24B7222F0();
        sub_24B75C598();
        if (!v44)
        {
          (*(v64 + 8))(v25, v65);
          goto LABEL_47;
        }
      }

      else if (v32 == 4)
      {
        v98 = 4;
        sub_24B72229C();
        sub_24B75C598();
        if (!v44)
        {
          (*(v67 + 8))(v26, v66);
          goto LABEL_47;
        }
      }

      else
      {
        v98 = 5;
        sub_24B722248();
        sub_24B75C598();
        if (!v44)
        {
          (*(v69 + 8))(v27, v68);
          goto LABEL_47;
        }
      }

      goto LABEL_41;
    }

    if (v32 <= 8u)
    {
      v41 = v92;
      if (v32 == 6)
      {
        v98 = 6;
        sub_24B7221F4();
        v48 = v83;
        v49 = v58;
        sub_24B75C598();
        if (!v49)
        {
          (*(v70 + 8))(v48, v71);
          goto LABEL_47;
        }
      }

      else
      {
        v42 = v58;
        if (v32 == 7)
        {
          v98 = 7;
          sub_24B7221A0();
          v43 = v84;
          sub_24B75C598();
          if (!v42)
          {
            (*(v72 + 8))(v43, v73);
LABEL_47:
            (*(v41 + 8))(v33, v19);
LABEL_50:
            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_1(v93);
            return v20;
          }
        }

        else
        {
          v98 = 8;
          sub_24B72214C();
          v52 = v85;
          sub_24B75C598();
          if (!v42)
          {
            (*(v74 + 8))(v52, v75);
            goto LABEL_47;
          }
        }
      }

LABEL_41:
      (*(v41 + 8))(v33, v19);
      goto LABEL_11;
    }

    v45 = v92;
    if (v32 == 9)
    {
      v98 = 9;
      sub_24B7220F8();
      v50 = v58;
      sub_24B75C598();
      if (!v50)
      {
        (*(v76 + 8))(v28, v77);
        goto LABEL_49;
      }
    }

    else if (v32 == 10)
    {
      v98 = 10;
      sub_24B7220A4();
      v46 = v58;
      sub_24B75C598();
      if (!v46)
      {
        (*(v78 + 8))(v29, v79);
LABEL_49:
        (*(v45 + 8))(v33, v19);
        goto LABEL_50;
      }
    }

    else
    {
      v98 = 11;
      sub_24B722050();
      v53 = v86;
      v54 = v58;
      sub_24B75C598();
      if (!v54)
      {
        (*(v80 + 8))(v53, v81);
        goto LABEL_49;
      }
    }

    (*(v45 + 8))(v33, v19);
    goto LABEL_11;
  }

  v36 = v19;
  v37 = sub_24B75C568();
  swift_allocError();
  v39 = v38;
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0) + 48);
  *v39 = &type metadata for ProgramDetailDynamicTypeSize;
  sub_24B75C5A8();
  sub_24B75C558();
  (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
  swift_willThrow();
  (*(v92 + 8))(v33, v36);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v93);
  return v20;
}

unint64_t sub_24B7236D4()
{
  result = qword_27F035C10;
  if (!qword_27F035C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C10);
  }

  return result;
}

uint64_t sub_24B723738(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24B7237C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B72394C()
{
  result = qword_27F035C18;
  if (!qword_27F035C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C18);
  }

  return result;
}

unint64_t sub_24B7239A4()
{
  result = qword_27F035C20;
  if (!qword_27F035C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C20);
  }

  return result;
}

unint64_t sub_24B7239FC()
{
  result = qword_27F035C28;
  if (!qword_27F035C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C28);
  }

  return result;
}

unint64_t sub_24B723A54()
{
  result = qword_27F035C30;
  if (!qword_27F035C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C30);
  }

  return result;
}

unint64_t sub_24B723AAC()
{
  result = qword_27F035C38;
  if (!qword_27F035C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C38);
  }

  return result;
}

unint64_t sub_24B723B04()
{
  result = qword_27F035C40;
  if (!qword_27F035C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C40);
  }

  return result;
}

unint64_t sub_24B723B5C()
{
  result = qword_27F035C48;
  if (!qword_27F035C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C48);
  }

  return result;
}

unint64_t sub_24B723BB4()
{
  result = qword_27F035C50;
  if (!qword_27F035C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C50);
  }

  return result;
}

unint64_t sub_24B723C0C()
{
  result = qword_27F035C58;
  if (!qword_27F035C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C58);
  }

  return result;
}

unint64_t sub_24B723C64()
{
  result = qword_27F035C60;
  if (!qword_27F035C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C60);
  }

  return result;
}

unint64_t sub_24B723CBC()
{
  result = qword_27F035C68;
  if (!qword_27F035C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C68);
  }

  return result;
}

unint64_t sub_24B723D14()
{
  result = qword_27F035C70;
  if (!qword_27F035C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C70);
  }

  return result;
}

unint64_t sub_24B723D6C()
{
  result = qword_27F035C78;
  if (!qword_27F035C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C78);
  }

  return result;
}

unint64_t sub_24B723DC4()
{
  result = qword_27F035C80;
  if (!qword_27F035C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C80);
  }

  return result;
}

unint64_t sub_24B723E1C()
{
  result = qword_27F035C88;
  if (!qword_27F035C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C88);
  }

  return result;
}

unint64_t sub_24B723E74()
{
  result = qword_27F035C90;
  if (!qword_27F035C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C90);
  }

  return result;
}

unint64_t sub_24B723ECC()
{
  result = qword_27F035C98;
  if (!qword_27F035C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035C98);
  }

  return result;
}

unint64_t sub_24B723F24()
{
  result = qword_27F035CA0;
  if (!qword_27F035CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035CA0);
  }

  return result;
}

unint64_t sub_24B723F7C()
{
  result = qword_27F035CA8;
  if (!qword_27F035CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035CA8);
  }

  return result;
}

unint64_t sub_24B723FD4()
{
  result = qword_27F035CB0;
  if (!qword_27F035CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035CB0);
  }

  return result;
}

unint64_t sub_24B72402C()
{
  result = qword_27F035CB8;
  if (!qword_27F035CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035CB8);
  }

  return result;
}

unint64_t sub_24B724084()
{
  result = qword_27F035CC0;
  if (!qword_27F035CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035CC0);
  }

  return result;
}

unint64_t sub_24B7240DC()
{
  result = qword_27F035CC8;
  if (!qword_27F035CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035CC8);
  }

  return result;
}

unint64_t sub_24B724134()
{
  result = qword_27F035CD0;
  if (!qword_27F035CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035CD0);
  }

  return result;
}

unint64_t sub_24B72418C()
{
  result = qword_27F035CD8;
  if (!qword_27F035CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035CD8);
  }

  return result;
}

unint64_t sub_24B7241E4()
{
  result = qword_27F035CE0;
  if (!qword_27F035CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035CE0);
  }

  return result;
}

unint64_t sub_24B72423C()
{
  result = qword_27F035CE8;
  if (!qword_27F035CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035CE8);
  }

  return result;
}

uint64_t sub_24B7242E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73616C43657A6973 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B75C6B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B724374(uint64_t a1)
{
  v2 = sub_24B724538();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7243B0(uint64_t a1)
{
  v2 = sub_24B724538();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutContextMenuPreviewLayout.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035D58, &qword_24B766370);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B724538();
  sub_24B75C738();
  v10 = v7;
  sub_24B72458C();
  sub_24B75C6A8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24B724538()
{
  result = qword_27F035D60;
  if (!qword_27F035D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035D60);
  }

  return result;
}

unint64_t sub_24B72458C()
{
  result = qword_27F035D68;
  if (!qword_27F035D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035D68);
  }

  return result;
}

uint64_t WorkoutContextMenuPreviewLayout.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035D70, &qword_24B766378);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B724538();
  sub_24B75C728();
  if (!v2)
  {
    sub_24B72474C();
    sub_24B75C618();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24B72474C()
{
  result = qword_27F035D78;
  if (!qword_27F035D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035D78);
  }

  return result;
}

uint64_t WorkoutContextMenuPreviewLayout.hashValue.getter()
{
  v1 = *v0;
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](v1);
  return sub_24B75C718();
}

unint64_t sub_24B724848()
{
  result = qword_27F035D80;
  if (!qword_27F035D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035D80);
  }

  return result;
}

unint64_t sub_24B7248C0()
{
  result = qword_27F035D88;
  if (!qword_27F035D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035D88);
  }

  return result;
}

unint64_t sub_24B724918()
{
  result = qword_27F035D90;
  if (!qword_27F035D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035D90);
  }

  return result;
}

unint64_t sub_24B724970()
{
  result = qword_27F035D98;
  if (!qword_27F035D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035D98);
  }

  return result;
}

uint64_t ArtworkBannerEnvironment.init(fetchWorkoutSchedule:resolveSampleContentPlaybackRestriction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t RelatedWorkoutItemContext.identifier.getter()
{
  v1 = *v0;
  sub_24B724A20(*v0, v0[1]);
  return v1;
}

uint64_t sub_24B724A2C()
{
  if (*v0)
  {
    return 0x6C6F686563616C70;
  }

  else
  {
    return 1835365481;
  }
}

uint64_t sub_24B724A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1835365481 && a2 == 0xE400000000000000;
  if (v5 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B75C6B8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24B724B48(uint64_t a1)
{
  v2 = sub_24B72591C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B724B84(uint64_t a1)
{
  v2 = sub_24B72591C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B724BDC(uint64_t a1)
{
  v2 = sub_24B7259C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B724C18(uint64_t a1)
{
  v2 = sub_24B7259C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B724C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B75C6B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B724CE4(uint64_t a1)
{
  v2 = sub_24B725970();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B724D20(uint64_t a1)
{
  v2 = sub_24B725970();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RelatedWorkoutItemContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035DA0, &qword_24B7665F0);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v20 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035DA8, &qword_24B7665F8);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035DB0, &qword_24B766600);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = *v1;
  v23 = v1[1];
  v24 = v12;
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B72591C();
  sub_24B75C738();
  if (v13)
  {
    v26 = 1;
    sub_24B725970();
    v14 = v20;
    sub_24B75C638();
    v15 = v22;
    sub_24B75C678();
    (*(v21 + 8))(v14, v15);
  }

  else
  {
    v25 = 0;
    sub_24B7259C4();
    sub_24B75C638();
    v16 = v19;
    sub_24B75C678();
    (*(v18 + 8))(v7, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t RelatedWorkoutItemContext.hash(into:)(uint64_t a1)
{
  MEMORY[0x24C2489B0](*(v1 + 16));

  return sub_24B75C358();
}

uint64_t RelatedWorkoutItemContext.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](v1);
  sub_24B75C358();
  return sub_24B75C718();
}

uint64_t RelatedWorkoutItemContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035DD0, &qword_24B766608);
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035DD8, &qword_24B766610);
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035DE0, &unk_24B766618);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_24B72591C();
  v13 = v34;
  sub_24B75C728();
  if (!v13)
  {
    v34 = v9;
    v14 = sub_24B75C628();
    v15 = (2 * *(v14 + 16)) | 1;
    v36 = v14;
    v37 = v14 + 32;
    v38 = 0;
    v39 = v15;
    v16 = sub_24B6B9E04();
    v17 = v8;
    if (v16 == 2 || v38 != v39 >> 1)
    {
      v24 = sub_24B75C568();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0);
      *v26 = &type metadata for RelatedWorkoutItemContext;
      sub_24B75C5A8();
      sub_24B75C558();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v34 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = v16;
      if (v16)
      {
        v41 = 1;
        sub_24B725970();
        sub_24B75C598();
        v19 = v33;
        v18 = v34;
        v20 = v30;
        v21 = sub_24B75C5E8();
        v23 = v22;
        (*(v32 + 8))(v4, v20);
      }

      else
      {
        v41 = 0;
        sub_24B7259C4();
        v28 = v7;
        sub_24B75C598();
        v19 = v33;
        v18 = v34;
        v21 = sub_24B75C5E8();
        v23 = v29;
        (*(v31 + 8))(v28, v5);
      }

      (*(v18 + 8))(v11, v17);
      swift_unknownObjectRelease();
      *v19 = v21;
      *(v19 + 8) = v23;
      *(v19 + 16) = v40 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_24B725624()
{
  v1 = *(v0 + 16);
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](v1);
  sub_24B75C358();
  return sub_24B75C718();
}

uint64_t sub_24B725688(uint64_t a1)
{
  MEMORY[0x24C2489B0](*(v1 + 16));

  return sub_24B75C358();
}

uint64_t sub_24B7256DC(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](v2);
  sub_24B75C358();
  return sub_24B75C718();
}

uint64_t _s20FitnessProductDetail25RelatedWorkoutItemContextO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      v6 = *a1;
      v7 = v2;
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    sub_24B724A20(*a2, *(a2 + 8));
    sub_24B724A20(v3, v2);
    sub_24B725E70(v3, v2);
    sub_24B725E70(v5, v4);
    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *a1;
  v7 = v2;
  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v11 = sub_24B75C6B8();
    sub_24B724A20(v5, v4);
    sub_24B724A20(v3, v2);
    sub_24B725E70(v3, v2);
    sub_24B725E70(v5, v4);
    return v11 & 1;
  }

LABEL_15:
  sub_24B724A20(v6, v7);
  sub_24B724A20(v3, v2);
  sub_24B725E70(v3, v2);
  sub_24B725E70(v3, v2);
  return 1;
}

unint64_t sub_24B72591C()
{
  result = qword_27F035DB8;
  if (!qword_27F035DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035DB8);
  }

  return result;
}

unint64_t sub_24B725970()
{
  result = qword_27F035DC0;
  if (!qword_27F035DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035DC0);
  }

  return result;
}

unint64_t sub_24B7259C4()
{
  result = qword_27F035DC8;
  if (!qword_27F035DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035DC8);
  }

  return result;
}

unint64_t sub_24B725A1C()
{
  result = qword_27F035DE8;
  if (!qword_27F035DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035DE8);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24B725A90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24B725AD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_24B725B5C()
{
  result = qword_27F035DF0;
  if (!qword_27F035DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035DF0);
  }

  return result;
}

unint64_t sub_24B725BB4()
{
  result = qword_27F035DF8;
  if (!qword_27F035DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035DF8);
  }

  return result;
}

unint64_t sub_24B725C0C()
{
  result = qword_27F035E00;
  if (!qword_27F035E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035E00);
  }

  return result;
}

unint64_t sub_24B725C64()
{
  result = qword_27F035E08;
  if (!qword_27F035E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035E08);
  }

  return result;
}

unint64_t sub_24B725CBC()
{
  result = qword_27F035E10;
  if (!qword_27F035E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035E10);
  }

  return result;
}

unint64_t sub_24B725D14()
{
  result = qword_27F035E18;
  if (!qword_27F035E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035E18);
  }

  return result;
}

unint64_t sub_24B725D6C()
{
  result = qword_27F035E20;
  if (!qword_27F035E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035E20);
  }

  return result;
}

unint64_t sub_24B725DC4()
{
  result = qword_27F035E28;
  if (!qword_27F035E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035E28);
  }

  return result;
}

unint64_t sub_24B725E1C()
{
  result = qword_27F035E30;
  if (!qword_27F035E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035E30);
  }

  return result;
}

uint64_t WorkoutDetailArtwork.init(backgroundColor:templateURL:textColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_24B6B8DE8(a1, a5, &qword_27F034120, &unk_24B75E1E0);
  v9 = type metadata accessor for WorkoutDetailArtwork(0);
  result = sub_24B6B8DE8(a2, a5 + *(v9 + 20), &qword_27F034118, &qword_24B75E1D8);
  v11 = (a5 + *(v9 + 24));
  *v11 = a3;
  v11[1] = a4;
  return result;
}

uint64_t WorkoutDetailArtwork.textColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutDetailArtwork(0) + 24));

  return v1;
}

uint64_t sub_24B725FC4(uint64_t a1)
{
  v2 = sub_24B72720C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B726000(uint64_t a1)
{
  v2 = sub_24B72720C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutDetailArtwork.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035E38, &qword_24B766AD0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B72720C();
  sub_24B75C738();
  v8[15] = 0;
  sub_24B75B298();
  sub_24B6A6F54(&qword_27F0341D8, MEMORY[0x277D09D68], MEMORY[0x277D09D70]);
  sub_24B75C668();
  if (!v1)
  {
    type metadata accessor for WorkoutDetailArtwork(0);
    v8[14] = 1;
    sub_24B75B108();
    sub_24B6A6F54(&qword_27F0341E0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_24B75C668();
    v8[13] = 2;
    sub_24B75C678();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t WorkoutDetailArtwork.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035E48, &qword_24B766AD8);
  v24 = *(v10 - 8);
  v25 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for WorkoutDetailArtwork(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_24B72720C();
  sub_24B75C728();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v17 = v24;
  sub_24B75B298();
  v29 = 0;
  sub_24B6A6F54(&qword_27F0341F0, MEMORY[0x277D09D68], MEMORY[0x277D09D88]);
  sub_24B75C5D8();
  sub_24B6B8DE8(v9, v15, &qword_27F034120, &unk_24B75E1E0);
  sub_24B75B108();
  v28 = 1;
  sub_24B6A6F54(&qword_27F0341F8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_24B75C5D8();
  sub_24B6B8DE8(v6, &v15[*(v13 + 20)], &qword_27F034118, &qword_24B75E1D8);
  v27 = 2;
  v18 = sub_24B75C5E8();
  v20 = v19;
  (*(v17 + 8))(v12, v25);
  v21 = &v15[*(v13 + 24)];
  *v21 = v18;
  v21[1] = v20;
  sub_24B727260(v15, v23);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_24B7272C4(v15);
}

uint64_t WorkoutDetailArtwork.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_24B75B108();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v21 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_24B75B298();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v20 - v13;
  sub_24B6B9D34(v2, &v20 - v13, &qword_27F034120, &unk_24B75E1E0);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_24B75C6F8();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_24B75C6F8();
    sub_24B6A6F54(&qword_27F034128, MEMORY[0x277D09D68], MEMORY[0x277D09D78]);
    sub_24B75C2C8();
    (*(v9 + 8))(v11, v8);
  }

  v15 = type metadata accessor for WorkoutDetailArtwork(0);
  sub_24B6B9D34(v2 + *(v15 + 20), v7, &qword_27F034118, &qword_24B75E1D8);
  v17 = v22;
  v16 = v23;
  if ((*(v22 + 48))(v7, 1, v23) == 1)
  {
    sub_24B75C6F8();
  }

  else
  {
    v18 = v21;
    (*(v17 + 32))(v21, v7, v16);
    sub_24B75C6F8();
    sub_24B6A6F54(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_24B75C2C8();
    (*(v17 + 8))(v18, v16);
  }

  return sub_24B75C358();
}

uint64_t WorkoutDetailArtwork.hashValue.getter()
{
  sub_24B75C6D8();
  WorkoutDetailArtwork.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t sub_24B726AD0()
{
  sub_24B75C6D8();
  WorkoutDetailArtwork.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t sub_24B726B14(uint64_t a1)
{
  sub_24B75C6D8();
  WorkoutDetailArtwork.hash(into:)(v2);
  return sub_24B75C718();
}

uint64_t _s20FitnessProductDetail07WorkoutC7ArtworkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B75B108();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v48 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = &v48 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034218, &unk_24B761640);
  MEMORY[0x28223BE20](v50);
  v51 = &v48 - v8;
  v9 = sub_24B75B298();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034220, &unk_24B75E810);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v48 - v17;
  v20 = *(v19 + 56);
  v54 = a1;
  sub_24B6B9D34(a1, &v48 - v17, &qword_27F034120, &unk_24B75E1E0);
  v55 = a2;
  sub_24B6B9D34(a2, &v18[v20], &qword_27F034120, &unk_24B75E1E0);
  v21 = *(v10 + 48);
  if (v21(v18, 1, v9) == 1)
  {
    if (v21(&v18[v20], 1, v9) == 1)
    {
      sub_24B6B9CD4(v18, &qword_27F034120, &unk_24B75E1E0);
      goto LABEL_8;
    }

LABEL_6:
    v22 = &qword_27F034220;
    v23 = &unk_24B75E810;
    v24 = v18;
LABEL_14:
    sub_24B6B9CD4(v24, v22, v23);
    goto LABEL_15;
  }

  sub_24B6B9D34(v18, v15, &qword_27F034120, &unk_24B75E1E0);
  if (v21(&v18[v20], 1, v9) == 1)
  {
    (*(v10 + 8))(v15, v9);
    goto LABEL_6;
  }

  (*(v10 + 32))(v12, &v18[v20], v9);
  sub_24B6A6F54(&qword_27F034230, MEMORY[0x277D09D68], MEMORY[0x277D09D80]);
  v25 = sub_24B75C2D8();
  v26 = *(v10 + 8);
  v26(v12, v9);
  v26(v15, v9);
  sub_24B6B9CD4(v18, &qword_27F034120, &unk_24B75E1E0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v27 = type metadata accessor for WorkoutDetailArtwork(0);
  v28 = *(v27 + 20);
  v29 = v51;
  v30 = *(v50 + 48);
  v31 = v54;
  sub_24B6B9D34(v54 + v28, v51, &qword_27F034118, &qword_24B75E1D8);
  v32 = v55 + v28;
  v33 = v55;
  sub_24B6B9D34(v32, v29 + v30, &qword_27F034118, &qword_24B75E1D8);
  v35 = v52;
  v34 = v53;
  v36 = *(v52 + 48);
  if (v36(v29, 1, v53) != 1)
  {
    v37 = v49;
    sub_24B6B9D34(v29, v49, &qword_27F034118, &qword_24B75E1D8);
    if (v36(v29 + v30, 1, v34) == 1)
    {
      (*(v35 + 8))(v37, v34);
      goto LABEL_13;
    }

    v40 = v29 + v30;
    v41 = v48;
    (*(v35 + 32))(v48, v40, v34);
    sub_24B6A6F54(&qword_27F034228, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
    v42 = sub_24B75C2D8();
    v43 = *(v35 + 8);
    v43(v41, v34);
    v43(v37, v34);
    sub_24B6B9CD4(v29, &qword_27F034118, &qword_24B75E1D8);
    if (v42)
    {
      goto LABEL_18;
    }

LABEL_15:
    v38 = 0;
    return v38 & 1;
  }

  if (v36(v29 + v30, 1, v34) != 1)
  {
LABEL_13:
    v22 = &qword_27F034218;
    v23 = &unk_24B761640;
    v24 = v29;
    goto LABEL_14;
  }

  sub_24B6B9CD4(v29, &qword_27F034118, &qword_24B75E1D8);
LABEL_18:
  v44 = *(v27 + 24);
  v45 = *(v31 + v44);
  v46 = *(v31 + v44 + 8);
  v47 = (v33 + v44);
  if (v45 == *v47 && v46 == v47[1])
  {
    v38 = 1;
  }

  else
  {
    v38 = sub_24B75C6B8();
  }

  return v38 & 1;
}

uint64_t type metadata accessor for WorkoutDetailArtwork(uint64_t a1)
{
  result = qword_2810F77C8;
  if (!qword_2810F77C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24B72720C()
{
  result = qword_27F035E40;
  if (!qword_27F035E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035E40);
  }

  return result;
}

uint64_t sub_24B727260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutDetailArtwork(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B7272C4(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutDetailArtwork(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B7273A4()
{
  result = qword_27F035E58;
  if (!qword_27F035E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035E58);
  }

  return result;
}

unint64_t sub_24B7273FC()
{
  result = qword_27F035E60;
  if (!qword_27F035E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035E60);
  }

  return result;
}

unint64_t sub_24B727454()
{
  result = qword_27F035E68;
  if (!qword_27F035E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035E68);
  }

  return result;
}

uint64_t WorkoutContextMenuPreviewEnvironment.init(fetchContextMenuPreviewContent:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_24B7274C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_24B75B8E8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0uLL;
  v13 = 0uLL;
  if ((a3 & 1) == 0)
  {
    sub_24B75B3D8();
    *(&v12 + 1) = v14;
    *(&v13 + 1) = v15;
  }

  v17[0] = v12;
  v17[1] = v13;
  v18 = a3 & 1;
  sub_24B75B8D8();
  MEMORY[0x24C248140](v11, a4, v8, a5);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_24B7275FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035F58, qword_24B766E48);
  sub_24B6C743C(qword_27F035F60, &qword_27F035F58, qword_24B766E48, MEMORY[0x277D04410]);

  return sub_24B75B408();
}

uint64_t sub_24B72769C()
{
  v0 = sub_24B75BEE8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v7 = sub_24B75BF48();
  (v6)(v4, v5, v0);
  sub_24B75BF48();
  return v7;
}

uint64_t sub_24B7277D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035010, &unk_24B761E40);
  swift_getFunctionTypeMetadata1();
  return sub_24B75B268();
}

uint64_t sub_24B72783C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035010, &unk_24B761E40);
  swift_getFunctionTypeMetadata1();
  sub_24B75B288();
  sub_24B75B278();
  return v2;
}

uint64_t sub_24B7278B4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344D8, qword_24B75FA30);
  return sub_24B75B268();
}

uint64_t (*sub_24B72793C())()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  sub_24B75B278();
  *(swift_allocObject() + 16) = v1;
  return sub_24B735478;
}

uint64_t ProgramDetailView.init(store:workoutsCanvasViewBuilder:artworkViewBuilder:textViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v26[0] = a10;
  v26[1] = a11;
  v26[2] = a12;
  v26[3] = a13;
  v17 = (a9 + *(type metadata accessor for ProgramDetailView(0, v26) + 56));
  *v17 = sub_24B72769C();
  v17[1] = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *a9 = sub_24B6C4E74;
  *(a9 + 8) = v19;
  *(a9 + 16) = 0;

  a3(v20);

  sub_24B7277D4(a5, a6, a10);
  sub_24B7278B4(a7, a8);
}

uint64_t sub_24B727B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = a6;
  v46 = a5;
  v53 = a3;
  v54 = a4;
  v51 = a1;
  v52 = a2;
  v55 = a7;
  v9 = *(a6 + 16);
  sub_24B75B958();
  v50 = v9;
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E80, &qword_24B766D58);
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E88, &qword_24B766D60);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E90, &qword_24B766D68);
  swift_getTupleTypeMetadata2();
  v10 = sub_24B75C178();
  WitnessTable = swift_getWitnessTable();
  v43 = v10;
  v11 = sub_24B75C088();
  v45 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v44 = &v40 - v15;
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E70, &qword_24B766D48);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E78, &qword_24B766D50);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  v40 = swift_getWitnessTable();
  v16 = sub_24B75C088();
  v41 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - v20;
  v22 = sub_24B75B7B8();
  v48 = *(v22 - 8);
  v49 = v22;
  MEMORY[0x28223BE20](v22);
  v47 = &v40 - v23;
  v24 = v8;
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  LOBYTE(v8) = v58;
  v25 = sub_24B75B788();
  MEMORY[0x28223BE20](v25);
  *(&v40 - 10) = v50;
  *(&v40 - 9) = *(v24 + 24);
  *(&v40 - 7) = *(v24 + 40);
  *(&v40 - 6) = v7;
  v26 = v52;
  *(&v40 - 5) = v51;
  *(&v40 - 4) = v26;
  v27 = v54;
  *(&v40 - 3) = v53;
  *(&v40 - 2) = v27;
  if (v8)
  {
    *(&v40 - 1) = v46;
    sub_24B75C078();
    v28 = swift_getWitnessTable();
    v29 = v44;
    sub_24B6C7504();
    v30 = *(v45 + 8);
    v30(v13, v11);
    sub_24B6C7504();
    v31 = swift_getWitnessTable();
    v32 = v47;
    sub_24B738894(v13, v16, v11, v31, v28);
    v30(v13, v11);
    v30(v29, v11);
  }

  else
  {
    sub_24B75C078();
    v33 = swift_getWitnessTable();
    sub_24B6C7504();
    v34 = *(v41 + 8);
    v34(v18, v16);
    sub_24B6C7504();
    v35 = swift_getWitnessTable();
    v32 = v47;
    sub_24B73898C(v18, v16, v11, v33, v35);
    v34(v18, v16);
    v34(v21, v16);
  }

  v36 = swift_getWitnessTable();
  v37 = swift_getWitnessTable();
  v56 = v36;
  v57 = v37;
  v38 = v49;
  swift_getWitnessTable();
  sub_24B6C7504();
  return (*(v48 + 8))(v32, v38);
}

uint64_t sub_24B728240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v95 = a3;
  v96 = a8;
  v91 = a7;
  v93 = a5;
  v94 = a4;
  v69 = a2;
  v87 = a9;
  v90 = a10;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035E78, &qword_24B766D50);
  MEMORY[0x28223BE20](v85);
  v86 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v84 = &v65 - v15;
  v16 = *(a6 - 1);
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B75B958();
  v20 = sub_24B75B558();
  v68 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v65 - v21;
  v71 = sub_24B75B558();
  v73 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v67 = &v65 - v23;
  v74 = sub_24B75B558();
  v77 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v70 = &v65 - v24;
  v75 = sub_24B75B558();
  v80 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v72 = &v65 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E70, &qword_24B766D48);
  v79 = sub_24B75B558();
  v82 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v76 = &v65 - v26;
  v81 = sub_24B75B558();
  v83 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v92 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v78 = &v65 - v29;
  MEMORY[0x28223BE20](v30);
  v88 = a6;
  v89 = &v65 - v31;
  v108 = a6;
  v109 = a7;
  v32 = v96;
  v110 = v96;
  v111 = a10;
  v33 = type metadata accessor for ProgramDetailView(0, &v108);
  v34 = sub_24B72783C(v33);
  v34(v69);

  sub_24B75BDA8();
  (*(v16 + 8))(v19, a6);
  sub_24B75B568();
  sub_24B75B998();
  v35 = sub_24B73593C(&qword_27F034580, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v112 = v32;
  v113 = v35;
  v69 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v37 = v67;
  sub_24B75BD68();
  (*(v68 + 8))(v22, v20);
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v38 = a1;
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v107[10] = WitnessTable;
  v107[11] = MEMORY[0x277CE0880];
  v39 = v71;
  v40 = swift_getWitnessTable();
  v41 = v70;
  sub_24B75BCE8();
  (*(v73 + 8))(v37, v39);
  sub_24B75B9B8();
  v42 = v38;
  v66 = v38;
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v107[8] = v40;
  v107[9] = MEMORY[0x277CE01B0];
  v43 = v74;
  v44 = swift_getWitnessTable();
  v45 = v72;
  sub_24B75BE48();
  (v77[1])(v41, v43);
  sub_24B75C148();
  v77 = &v65;
  v97 = v88;
  v98 = v91;
  v99 = v96;
  v100 = v90;
  v101 = v42;
  v102 = v95;
  v103 = v94;
  v104 = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0361B8, &qword_24B7670D0);
  v107[6] = v44;
  v107[7] = MEMORY[0x277CDF918];
  v46 = v75;
  v47 = swift_getWitnessTable();
  sub_24B6C743C(&qword_27F0361C0, &qword_27F0361B8, &qword_24B7670D0, MEMORY[0x277CE11A8]);
  v48 = v76;
  sub_24B75BE38();
  (*(v80 + 8))(v45, v46);
  v49 = sub_24B6C743C(&qword_27F0361C8, &qword_27F035E70, &qword_24B766D48, MEMORY[0x277CDFC88]);
  v107[4] = v47;
  v107[5] = v49;
  v50 = v79;
  v51 = swift_getWitnessTable();
  v52 = v78;
  sub_24B75BEB8();
  (*(v82 + 8))(v48, v50);
  v107[2] = v51;
  v107[3] = MEMORY[0x277CDFC48];
  v53 = v81;
  v54 = swift_getWitnessTable();
  v55 = v89;
  v56 = v52;
  sub_24B6C7504();
  v57 = v83;
  v58 = *(v83 + 8);
  v58(v56, v53);
  v59 = v84;
  sub_24B729BC8(v66, v95, v94, v93, v88, v91, v96, v90, v84);
  v60 = v85;
  *(v59 + *(v85 + 36)) = 256;
  v61 = *(v57 + 16);
  v62 = v92;
  v61(v92, v55, v53);
  v108 = v62;
  v63 = v86;
  sub_24B6B9D34(v59, v86, &qword_27F035E78, &qword_24B766D50);
  v109 = v63;
  v107[0] = v53;
  v107[1] = v60;
  v105 = v54;
  v106 = sub_24B735998();
  sub_24B7386C4(&v108, 2uLL, v107);
  sub_24B6B9CD4(v59, &qword_27F035E78, &qword_24B766D50);
  v58(v89, v53);
  sub_24B6B9CD4(v63, &qword_27F035E78, &qword_24B766D50);
  return (v58)(v92, v53);
}

uint64_t sub_24B728CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  *a9 = sub_24B75C148();
  a9[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036238, &qword_24B767160);
  return sub_24B728D90(a1, a2, a3, a4, a5, a6, a7, a8, a9 + *(v19 + 44));
}

uint64_t sub_24B728D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v37 = a3;
  v38 = a4;
  v36 = a2;
  v43 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036240, &qword_24B767168);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036248, &qword_24B767170);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v35 - v22;
  v39 = a5;
  v40 = a6;
  v44 = a5;
  *&v45 = a6;
  v24 = a1;
  v41 = a7;
  v42 = a8;
  *(&v45 + 1) = a7;
  *&v46 = a8;
  type metadata accessor for ProgramDetailView(0, &v44);
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  if (BYTE8(v46) > 6u)
  {
    v33 = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036250, &qword_24B767178);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_24B760380;
    *(v25 + 32) = sub_24B75BF08();
    v26 = [objc_opt_self() systemBackgroundColor];
    *(v25 + 40) = sub_24B75BED8();
    MEMORY[0x24C2483D0](v25);
    sub_24B75C1B8();
    sub_24B75C1A8();
    sub_24B75B528();
    v35 = sub_24B75B568();
    v27 = sub_24B75B998();
    v28 = v44;
    *v23 = sub_24B75B788();
    *(v23 + 1) = 0;
    v23[16] = 0;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036258, &qword_24B767180);
    sub_24B72911C(v24, v36, v37, v38, v39, v40, v41, v42, &v23[*(v29 + 44)]);
    sub_24B6B9D34(v23, v20, &qword_27F036248, &qword_24B767170);
    *v17 = v28;
    v30 = v45;
    *(v17 + 24) = v46;
    *(v17 + 8) = v30;
    *(v17 + 5) = v35;
    v17[48] = v27;
    v31 = v43;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036260, &unk_24B767188);
    sub_24B6B9D34(v20, &v17[*(v32 + 48)], &qword_27F036248, &qword_24B767170);

    sub_24B6B9CD4(v23, &qword_27F036248, &qword_24B767170);
    sub_24B6B9CD4(v20, &qword_27F036248, &qword_24B767170);

    sub_24B6B8DE8(v17, v31, &qword_27F036240, &qword_24B767168);
    v33 = 0;
  }

  return (*(v15 + 56))(v43, v33, 1, v14);
}

uint64_t sub_24B72911C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v119 = a4;
  v120 = a9;
  v140 = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034508, &qword_24B761E50);
  MEMORY[0x28223BE20](v15 - 8);
  v139 = &v118 - v16;
  v17 = sub_24B75AFE8();
  v18 = *(v17 - 8);
  v130 = v17;
  v131 = v18;
  MEMORY[0x28223BE20](v17);
  v132 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24B75B768();
  v137 = *(v20 - 8);
  v138 = v20;
  MEMORY[0x28223BE20](v20);
  v136 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24B75BAE8();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0346C0, &qword_24B75FAC0);
  MEMORY[0x28223BE20](v26 - 8);
  v142 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v141 = &v118 - v29;
  v161 = a5;
  v162 = a6;
  v163 = a7;
  v164 = a8;
  v125 = type metadata accessor for ProgramDetailView(0, &v161);
  v128 = a1;
  v30 = sub_24B72793C();
  v31 = (v30)(a2);
  v33 = v32;
  LOBYTE(a1) = v34;
  v135 = v35;

  sub_24B75BA58();
  sub_24B75BA48();

  v36 = *(v23 + 104);
  v124 = *MEMORY[0x277CE0A10];
  v122 = v36;
  v123 = v23 + 104;
  v36(v25);
  sub_24B75BB28();

  v37 = *(v23 + 8);
  v118 = v25;
  v126 = v22;
  v127 = v23 + 8;
  v121 = v37;
  v37(v25, v22);
  v38 = sub_24B75BC18();
  v40 = v39;
  LOBYTE(v23) = v41;
  v43 = v42;

  sub_24B6E89A0(v31, v33, a1 & 1);

  KeyPath = swift_getKeyPath();
  v161 = v38;
  v162 = v40;
  LOBYTE(v163) = v23 & 1;
  v164 = v43;
  v165 = KeyPath;
  v166 = 3;
  LOBYTE(v167) = 0;
  v45 = v136;
  sub_24B75B758();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034700, &unk_24B75FAF0);
  sub_24B6E8D88();
  sub_24B75BDD8();
  v46 = v139;
  (*(v137 + 8))(v45, v138);
  sub_24B6E89A0(v38, v40, v23 & 1);

  v47 = v130;

  sub_24B6B9D34(v140, v46, &qword_27F034508, &qword_24B761E50);
  v48 = v131;
  if ((*(v131 + 48))(v46, 1, v47) == 1)
  {
    sub_24B6B9CD4(v46, &qword_27F034508, &qword_24B761E50);
    v139 = 0;
    v140 = 0;
    v137 = 0;
    v138 = 0;
    v129 = 0;
    v130 = 0;
    v131 = 0;
    v132 = 0;
    v135 = 0;
    v136 = 0;
    v133 = 0;
    v134 = 0;
    v49 = v126;
    v50 = v118;
  }

  else
  {
    v51 = v132;
    (*(v48 + 32))(v132, v46, v47);
    v52 = sub_24B72793C();
    v53 = (v52)(v51);
    v55 = v54;
    v57 = v56;
    v137 = v58;

    sub_24B75BA38();
    v59 = v118;
    v60 = v126;
    v122(v118, v124, v126);
    sub_24B75BB28();

    v121(v59, v60);
    v61 = sub_24B75BC18();
    v139 = v62;
    v140 = v61;
    v64 = v63;
    v138 = v65;

    sub_24B6E89A0(v53, v55, v57 & 1);

    v137 = swift_getKeyPath();
    LOBYTE(v60) = sub_24B75B9B8();
    sub_24B75B3D8();
    v135 = v67;
    v136 = v66;
    v133 = v69;
    v134 = v68;
    (*(v48 + 8))(v132, v47);
    LOBYTE(v161) = v64 & 1;
    LOBYTE(v154) = 0;
    LOBYTE(v179[0]) = 0;
    v130 = v64 & 1;
    v132 = 0;
    v131 = v60;
    v129 = 2;
    v49 = v126;
    v50 = v59;
  }

  v70 = sub_24B72793C();
  v71 = (v70)(v119);
  v73 = v72;
  v75 = v74;

  sub_24B75BB38();
  v122(v50, v124, v49);
  sub_24B75BB28();

  v121(v50, v49);
  v76 = sub_24B75BC18();
  v127 = v77;
  v128 = v76;
  v79 = v78;
  v81 = v80;

  sub_24B6E89A0(v71, v73, v75 & 1);

  LODWORD(v126) = sub_24B75B9B8();
  sub_24B75B3D8();
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v79 &= 1u;
  LOBYTE(v154) = v79;
  LOBYTE(v179[0]) = 0;
  LODWORD(v125) = sub_24B75B9C8();
  sub_24B75B3D8();
  v91 = v90;
  v93 = v92;
  v95 = v94;
  v97 = v96;
  LOBYTE(v161) = 0;
  v99 = v141;
  v98 = v142;
  sub_24B6B9D34(v141, v142, &qword_27F0346C0, &qword_24B75FAC0);
  v100 = v98;
  v101 = v120;
  sub_24B6B9D34(v100, v120, &qword_27F0346C0, &qword_24B75FAC0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036268, &qword_24B767198);
  v103 = v101 + *(v102 + 48);
  *&v147 = v140;
  *(&v147 + 1) = v139;
  *&v148 = v130;
  *(&v148 + 1) = v138;
  *&v149 = v137;
  *(&v149 + 1) = v129;
  *&v150 = v132;
  *(&v150 + 1) = v131;
  *&v151 = v136;
  *(&v151 + 1) = v135;
  *&v152 = v134;
  *(&v152 + 1) = v133;
  v153 = 0;
  *(v103 + 96) = 0;
  v104 = v148;
  *v103 = v147;
  *(v103 + 16) = v104;
  v105 = v150;
  *(v103 + 32) = v149;
  *(v103 + 48) = v105;
  v106 = v152;
  *(v103 + 64) = v151;
  *(v103 + 80) = v106;
  v107 = (v101 + *(v102 + 64));
  v109 = v127;
  v108 = v128;
  *&v154 = v128;
  *(&v154 + 1) = v127;
  LOBYTE(v155) = v79;
  DWORD1(v155) = *&v144[3];
  *(&v155 + 1) = *v144;
  v110 = v81;
  *(&v155 + 1) = v81;
  LOBYTE(v81) = v126;
  LOBYTE(v156) = v126;
  DWORD1(v156) = *&v143[3];
  *(&v156 + 1) = *v143;
  *(&v156 + 1) = v83;
  *&v157 = v85;
  *(&v157 + 1) = v87;
  *&v158 = v89;
  BYTE8(v158) = 0;
  HIDWORD(v158) = *&v146[3];
  *(&v158 + 9) = *v146;
  LOBYTE(v101) = v125;
  LOBYTE(v159) = v125;
  DWORD1(v159) = *&v145[3];
  *(&v159 + 1) = *v145;
  *(&v159 + 1) = v91;
  *&v160[0] = v93;
  *(&v160[0] + 1) = v95;
  *&v160[1] = v97;
  BYTE8(v160[1]) = 0;
  v111 = v154;
  v112 = v155;
  v113 = v157;
  v107[2] = v156;
  v107[3] = v113;
  *v107 = v111;
  v107[1] = v112;
  v114 = v158;
  v115 = v159;
  v116 = v160[0];
  *(v107 + 105) = *(v160 + 9);
  v107[5] = v115;
  v107[6] = v116;
  v107[4] = v114;
  sub_24B6B9D34(&v147, &v161, &qword_27F036228, &qword_24B767150);
  sub_24B6B9D34(&v154, &v161, &qword_27F036230, &qword_24B767158);
  sub_24B6B9CD4(v99, &qword_27F0346C0, &qword_24B75FAC0);
  v161 = v108;
  v162 = v109;
  LOBYTE(v163) = v79;
  *(&v163 + 1) = *v144;
  HIDWORD(v163) = *&v144[3];
  v164 = v110;
  LOBYTE(v165) = v81;
  *(&v165 + 1) = *v143;
  HIDWORD(v165) = *&v143[3];
  v166 = v83;
  v167 = v85;
  v168 = v87;
  v169 = v89;
  v170 = 0;
  *&v171[3] = *&v146[3];
  *v171 = *v146;
  v172 = v101;
  *&v173[3] = *&v145[3];
  *v173 = *v145;
  v174 = v91;
  v175 = v93;
  v176 = v95;
  v177 = v97;
  v178 = 0;
  sub_24B6B9CD4(&v161, &qword_27F036230, &qword_24B767158);
  v179[0] = v140;
  v179[1] = v139;
  v179[2] = v130;
  v179[3] = v138;
  v179[4] = v137;
  v179[5] = v129;
  v179[6] = v132;
  v179[7] = v131;
  v179[8] = v136;
  v179[9] = v135;
  v179[10] = v134;
  v179[11] = v133;
  v180 = 0;
  sub_24B6B9CD4(v179, &qword_27F036228, &qword_24B767150);
  return sub_24B6B9CD4(v142, &qword_27F0346C0, &qword_24B75FAC0);
}

uint64_t sub_24B729BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v146 = a4;
  v143 = a3;
  v138 = a2;
  v151 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036200, &unk_24B7670E8);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v127 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034508, &qword_24B761E50);
  MEMORY[0x28223BE20](v18 - 8);
  v142 = &v127 - v19;
  v145 = sub_24B75AFE8();
  v148 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v144 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24B75B768();
  v140 = *(v21 - 8);
  v141 = v21;
  MEMORY[0x28223BE20](v21);
  v139 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24B75BAE8();
  v24 = *(v23 - 8);
  v152 = v23;
  v153 = v24;
  MEMORY[0x28223BE20](v23);
  v149 = &v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036208, &qword_24B7670F8);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v127 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v150 = &v127 - v30;
  *&v172 = a5;
  *(&v172 + 1) = a6;
  *&v173 = a7;
  *(&v173 + 1) = a8;
  v31 = type metadata accessor for ProgramDetailView(0, &v172);
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  if (v174 < 7u)
  {
    return (*(v15 + 56))(v151, 1, 1, v14);
  }

  v147 = v28;
  v127 = v17;
  v128 = v15;
  v129 = v14;
  v33 = sub_24B72793C();
  v34 = (v33)(v138);
  v131 = v31;
  v132 = a1;
  v36 = v35;
  v38 = v37;

  sub_24B75BA18();
  sub_24B75BA48();

  v40 = v152;
  v39 = v153;
  v41 = *(v153 + 104);
  v42 = v149;
  v135 = *MEMORY[0x277CE0A10];
  v133 = v41;
  v134 = v153 + 104;
  v41(v149);
  sub_24B75BB28();

  v43 = *(v39 + 8);
  v153 = v39 + 8;
  v130 = v43;
  v43(v42, v40);
  v44 = sub_24B75BC18();
  v46 = v45;
  LOBYTE(v40) = v47;
  v49 = v48;

  sub_24B6E89A0(v34, v36, v38 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v34) = sub_24B75B9B8();
  sub_24B75B3D8();
  LOBYTE(v165) = v40 & 1;
  LOBYTE(v182[0]) = 0;
  LOBYTE(v158) = 0;
  *&v172 = v44;
  *(&v172 + 1) = v46;
  LOBYTE(v173) = v40 & 1;
  *(&v173 + 1) = v49;
  *&v174 = KeyPath;
  *(&v174 + 1) = 3;
  LOBYTE(v175) = 0;
  BYTE8(v175) = v34;
  *&v176 = v51;
  *(&v176 + 1) = v52;
  *&v177 = v53;
  *(&v177 + 1) = v54;
  LOBYTE(v178) = 0;
  v55 = v139;
  sub_24B75B758();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036210, &unk_24B767130);
  sub_24B735B00();
  sub_24B75BDD8();
  (*(v140 + 8))(v55, v141);
  v191[4] = v176;
  v191[5] = v177;
  v192 = v178;
  v191[0] = v172;
  v191[1] = v173;
  v191[2] = v174;
  v191[3] = v175;
  sub_24B6B9CD4(v191, &qword_27F036210, &unk_24B767130);
  v56 = v142;
  sub_24B6B9D34(v143, v142, &qword_27F034508, &qword_24B761E50);
  v57 = v145;
  if ((*(v148 + 48))(v56, 1, v145) == 1)
  {
    sub_24B6B9CD4(v56, &qword_27F034508, &qword_24B761E50);
    v142 = 0;
    v143 = 0;
    v141 = 0;
    v136 = 0uLL;
    v144 = 0;
    v145 = 0;
    v148 = 0;
    v139 = 0;
    v140 = 0;
    v137 = 0;
    v138 = 0;
    v58 = v152;
    v59 = v149;
  }

  else
  {
    v60 = v148;
    v61 = v144;
    (*(v148 + 32))(v144, v56, v57);
    v62 = sub_24B72793C();
    v63 = (v62)(v61);
    v65 = v64;
    v67 = v66;
    v140 = v68;

    sub_24B75BA38();
    v69 = v149;
    v70 = v152;
    v133(v149, v135, v152);
    sub_24B75BB28();

    v130(v69, v70);
    v71 = sub_24B75BC18();
    v142 = v72;
    v143 = v71;
    v74 = v73;
    v141 = v75;

    sub_24B6E89A0(v63, v65, v67 & 1);

    *&v136 = swift_getKeyPath();
    LOBYTE(v70) = sub_24B75B9B8();
    sub_24B75B3D8();
    v139 = v77;
    v140 = v76;
    v137 = v79;
    v138 = v78;
    (*(v60 + 8))(v144, v57);
    LOBYTE(v172) = v74 & 1;
    LOBYTE(v165) = 0;
    LOBYTE(v182[0]) = 0;
    v144 = (v74 & 1);
    v148 = 0;
    v145 = v70;
    *(&v136 + 1) = 2;
    v58 = v152;
    v59 = v69;
  }

  v80 = sub_24B72793C();
  v81 = (v80)(v146);
  v83 = v82;
  v85 = v84;

  sub_24B75BB38();
  v133(v59, v135, v58);
  sub_24B75BB28();

  v130(v59, v58);
  v86 = sub_24B75BC18();
  v152 = v87;
  v153 = v88;
  v90 = v89;

  sub_24B6E89A0(v81, v83, v85 & 1);

  LODWORD(v149) = sub_24B75B9B8();
  sub_24B75B3D8();
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v98 = v97;
  LOBYTE(v81) = v90 & 1;
  LOBYTE(v165) = v90 & 1;
  LOBYTE(v182[0]) = 0;
  LODWORD(v146) = sub_24B75B9C8();
  sub_24B75B3D8();
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v106 = v105;
  LOBYTE(v172) = 0;
  v107 = v150;
  v108 = v147;
  sub_24B6B9D34(v150, v147, &qword_27F036208, &qword_24B7670F8);
  v109 = v127;
  sub_24B6B9D34(v108, v127, &qword_27F036208, &qword_24B7670F8);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036220, &qword_24B767148);
  v111 = v109 + *(v110 + 48);
  *&v158 = v143;
  *(&v158 + 1) = v142;
  *&v159 = v144;
  *(&v159 + 1) = v141;
  v160 = v136;
  *&v161 = v148;
  *(&v161 + 1) = v145;
  *&v162 = v140;
  *(&v162 + 1) = v139;
  *&v163 = v138;
  *(&v163 + 1) = v137;
  v164 = 0;
  *(v111 + 96) = 0;
  v112 = v159;
  *v111 = v158;
  *(v111 + 16) = v112;
  v113 = v161;
  *(v111 + 32) = v160;
  *(v111 + 48) = v113;
  v114 = v163;
  *(v111 + 64) = v162;
  *(v111 + 80) = v114;
  v115 = (v109 + *(v110 + 64));
  v116 = v152;
  v117 = v153;
  *&v165 = v86;
  *(&v165 + 1) = v152;
  LOBYTE(v166) = v90 & 1;
  DWORD1(v166) = *&v155[3];
  *(&v166 + 1) = *v155;
  *(&v166 + 1) = v153;
  v118 = v149;
  LOBYTE(v167) = v149;
  DWORD1(v167) = *&v154[3];
  *(&v167 + 1) = *v154;
  *(&v167 + 1) = v92;
  *&v168 = v94;
  *(&v168 + 1) = v96;
  *&v169 = v98;
  BYTE8(v169) = 0;
  HIDWORD(v169) = *&v157[3];
  *(&v169 + 9) = *v157;
  v119 = v146;
  LOBYTE(v170) = v146;
  DWORD1(v170) = *&v156[3];
  *(&v170 + 1) = *v156;
  *(&v170 + 1) = v100;
  *&v171[0] = v102;
  *(&v171[0] + 1) = v104;
  *&v171[1] = v106;
  BYTE8(v171[1]) = 0;
  v120 = v165;
  v121 = v166;
  v122 = v168;
  v115[2] = v167;
  v115[3] = v122;
  *v115 = v120;
  v115[1] = v121;
  v123 = v169;
  v124 = v170;
  v125 = v171[0];
  *(v115 + 105) = *(v171 + 9);
  v115[5] = v124;
  v115[6] = v125;
  v115[4] = v123;
  sub_24B6B9D34(&v158, &v172, &qword_27F036228, &qword_24B767150);
  sub_24B6B9D34(&v165, &v172, &qword_27F036230, &qword_24B767158);
  sub_24B6B9CD4(v107, &qword_27F036208, &qword_24B7670F8);
  *&v172 = v86;
  *(&v172 + 1) = v116;
  LOBYTE(v173) = v81;
  *(&v173 + 1) = *v155;
  DWORD1(v173) = *&v155[3];
  *(&v173 + 1) = v117;
  LOBYTE(v174) = v118;
  *(&v174 + 1) = *v154;
  DWORD1(v174) = *&v154[3];
  *(&v174 + 1) = v92;
  *&v175 = v94;
  *(&v175 + 1) = v96;
  *&v176 = v98;
  BYTE8(v176) = 0;
  HIDWORD(v176) = *&v157[3];
  *(&v176 + 9) = *v157;
  LOBYTE(v177) = v119;
  DWORD1(v177) = *&v156[3];
  *(&v177 + 1) = *v156;
  *(&v177 + 1) = v100;
  v178 = v102;
  v179 = v104;
  v180 = v106;
  v181 = 0;
  sub_24B6B9CD4(&v172, &qword_27F036230, &qword_24B767158);
  v182[0] = v143;
  v182[1] = v142;
  v182[2] = v144;
  v182[3] = v141;
  v183 = v136;
  v184 = v148;
  v185 = v145;
  v186 = v140;
  v187 = v139;
  v188 = v138;
  v189 = v137;
  v190 = 0;
  sub_24B6B9CD4(v182, &qword_27F036228, &qword_24B767150);
  sub_24B6B9CD4(v147, &qword_27F036208, &qword_24B7670F8);
  v126 = v151;
  sub_24B6B8DE8(v109, v151, &qword_27F036200, &unk_24B7670E8);
  return (*(v128 + 56))(v126, 0, 1, v129);
}

uint64_t sub_24B72A804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *, uint64_t)@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v82 = a9;
  v83 = a8;
  v77 = a5;
  v78 = a6;
  v76 = a4;
  v86 = a3;
  v65 = a2;
  v88 = a1;
  v87 = a11;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035E90, &qword_24B766D68);
  MEMORY[0x28223BE20](v80);
  v81 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v79 = &v59 - v15;
  v16 = *(a7 - 1);
  MEMORY[0x28223BE20](v17);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B75B958();
  v20 = sub_24B75B558();
  v64 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v59 - v21;
  v23 = sub_24B75B558();
  v66 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v60 = &v59 - v24;
  v63 = sub_24B75B558();
  v69 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v59 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E80, &qword_24B766D58);
  v68 = sub_24B75B558();
  v73 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v62 = &v59 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E88, &qword_24B766D60);
  v71 = sub_24B75B558();
  v74 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v67 = &v59 - v27;
  v72 = sub_24B75B558();
  v75 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v84 = a7;
  v85 = &v59 - v30;
  v101 = a7;
  v102 = a8;
  v103 = a10;
  v104 = v87;
  v31 = type metadata accessor for ProgramDetailView(0, &v101);
  v32 = sub_24B72783C(v31);
  v32(v65);

  sub_24B75BDA8();
  (*(v16 + 8))(v19, a7);
  sub_24B75B568();
  sub_24B75B998();
  v33 = sub_24B73593C(&qword_27F034580, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v100[12] = a10;
  v100[13] = v33;
  v59 = a10;
  WitnessTable = swift_getWitnessTable();
  v35 = v60;
  sub_24B75BD68();
  (*(v64 + 8))(v22, v20);
  sub_24B75C158();
  v100[10] = WitnessTable;
  v100[11] = MEMORY[0x277CE0880];
  v36 = swift_getWitnessTable();
  v37 = v61;
  sub_24B75BE08();
  (*(v66 + 8))(v35, v23);
  sub_24B75C148();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036270, &qword_24B7671A0);
  v100[8] = v36;
  v100[9] = MEMORY[0x277CDF678];
  v38 = v63;
  v39 = swift_getWitnessTable();
  sub_24B735B8C();
  v40 = v62;
  sub_24B75BE38();
  (*(v69 + 8))(v37, v38);
  sub_24B75C148();
  v89 = v84;
  v90 = v83;
  v91 = a10;
  v92 = v87;
  v93 = v88;
  v94 = v86;
  v95 = v76;
  v96 = v77;
  v97 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036288, &qword_24B7671A8);
  v41 = MEMORY[0x277CDFC88];
  v42 = sub_24B6C743C(&qword_27F036290, &qword_27F035E80, &qword_24B766D58, MEMORY[0x277CDFC88]);
  v100[6] = v39;
  v100[7] = v42;
  v43 = v68;
  v44 = swift_getWitnessTable();
  sub_24B735CC4();
  v45 = v67;
  sub_24B75BE38();
  (*(v73 + 8))(v40, v43);
  v46 = sub_24B6C743C(&qword_27F0362B0, &qword_27F035E88, &qword_24B766D60, v41);
  v100[4] = v44;
  v100[5] = v46;
  v47 = v71;
  v48 = swift_getWitnessTable();
  v49 = v70;
  sub_24B75BEB8();
  (*(v74 + 8))(v45, v47);
  v100[2] = v48;
  v100[3] = MEMORY[0x277CDFC48];
  v50 = v72;
  v51 = swift_getWitnessTable();
  v52 = v85;
  sub_24B6C7504();
  v53 = v75;
  v78 = *(v75 + 8);
  v78(v49, v50);
  v54 = v79;
  sub_24B72C824(v86, v84, v83, v59, v87, v79);
  v55 = v80;
  *(v54 + *(v80 + 36)) = 256;
  (*(v53 + 16))(v49, v52, v50);
  v101 = v49;
  v56 = v81;
  sub_24B6B9D34(v54, v81, &qword_27F035E90, &qword_24B766D68);
  v102 = v56;
  v100[0] = v50;
  v100[1] = v55;
  v98 = v51;
  v99 = sub_24B735D7C();
  sub_24B7386C4(&v101, 2uLL, v100);
  sub_24B6B9CD4(v54, &qword_27F035E90, &qword_24B766D68);
  v57 = v78;
  v78(v85, v50);
  sub_24B6B9CD4(v56, &qword_27F035E90, &qword_24B766D68);
  return (v57)(v49, v50);
}

__n128 sub_24B72B1E0@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036250, &qword_24B767178);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24B760380;
  *(v2 + 32) = sub_24B75BF08();
  v3 = [objc_opt_self() systemBackgroundColor];
  *(v2 + 40) = sub_24B75BED8();
  MEMORY[0x24C2483D0](v2);
  sub_24B75C1B8();
  sub_24B75C1A8();
  sub_24B75B528();
  v4 = sub_24B75B568();
  v5 = sub_24B75B998();
  *a1 = v7;
  result = v9;
  *(a1 + 8) = v8;
  *(a1 + 24) = v9;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  return result;
}

uint64_t sub_24B72B2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10)
{
  v25 = a4;
  v26 = a5;
  v23 = a2;
  v24 = a3;
  v28 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0362D0, &qword_24B7671C8);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0362A8, &qword_24B7671B0);
  MEMORY[0x28223BE20](v17);
  v19 = &v22 - v18;
  v29[0] = a6;
  v29[1] = a7;
  v27 = a8;
  v29[2] = a8;
  v29[3] = a10;
  type metadata accessor for ProgramDetailView(0, v29);
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  if (v30 > 6u)
  {
    swift_storeEnumTagMultiPayload();
    sub_24B6C743C(&qword_27F0362A0, &qword_27F0362A8, &qword_24B7671B0, MEMORY[0x277CE1198]);
    return sub_24B75B7A8();
  }

  else
  {
    *v19 = sub_24B75B788();
    *(v19 + 1) = 0;
    v19[16] = 0;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0362D8, &qword_24B7671D0);
    sub_24B72B578(a1, v23, v24, v25, v26, a6, a7, v27, &v19[*(v20 + 44)], a10);
    sub_24B6B9D34(v19, v16, &qword_27F0362A8, &qword_24B7671B0);
    swift_storeEnumTagMultiPayload();
    sub_24B6C743C(&qword_27F0362A0, &qword_27F0362A8, &qword_24B7671B0, MEMORY[0x277CE1198]);
    sub_24B75B7A8();
    return sub_24B6B9CD4(v19, &qword_27F0362A8, &qword_24B7671B0);
  }
}

uint64_t sub_24B72B578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10)
{
  v141 = a4;
  v142 = a5;
  v162 = a3;
  v165 = a1;
  v148 = a9;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036108, &qword_24B767060);
  MEMORY[0x28223BE20](v144);
  v143 = &v131 - v14;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0362E0, &qword_24B7671D8);
  MEMORY[0x28223BE20](v145);
  v147 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v146 = &v131 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034508, &qword_24B761E50);
  MEMORY[0x28223BE20](v18 - 8);
  v160 = &v131 - v19;
  v158 = sub_24B75AFE8();
  v156 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v157 = &v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_24B75B768();
  v159 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v155 = &v131 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24B75BAE8();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0362E8, &qword_24B7671E0);
  v27 = *(v26 - 8);
  v137 = v26;
  v138 = v27;
  MEMORY[0x28223BE20](v26);
  v136 = &v131 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0362F0, &qword_24B7671E8);
  MEMORY[0x28223BE20](v29 - 8);
  v163 = &v131 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v164 = &v131 - v32;
  v190 = a6;
  v191 = a7;
  v192 = a8;
  v193 = a10;
  v33 = type metadata accessor for ProgramDetailView(0, &v190);
  v34 = sub_24B72793C();
  v35 = (v34)(a2);
  v37 = v36;
  v39 = v38;
  v150 = v40;

  sub_24B75BA18();
  sub_24B75BA48();

  v41 = *(v23 + 104);
  LODWORD(v153) = *MEMORY[0x277CE0A10];
  v151 = v41;
  v152 = v23 + 104;
  v41(v25);
  sub_24B75BB28();

  v42 = *(v23 + 8);
  v139 = v25;
  v140 = v22;
  v154 = v23 + 8;
  v149 = v42;
  v42(v25, v22);
  v43 = sub_24B75BC18();
  v132 = v44;
  v133 = v43;
  v45 = v44;
  v134 = v46;
  v48 = v47;
  v135 = v47;

  sub_24B6E89A0(v35, v37, v39 & 1);

  v150 = v33;
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v49 = v194 > 6u;
  if (v194 <= 6u)
  {
    v50 = 3;
  }

  else
  {
    v50 = 0;
  }

  KeyPath = swift_getKeyPath();
  v190 = v43;
  v191 = v45;
  v52 = v134 & 1;
  LOBYTE(v192) = v134 & 1;
  v193 = v48;
  v194 = KeyPath;
  v195 = v50;
  LOBYTE(v196) = v49;
  sub_24B75B968();
  sub_24B75C168();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034700, &unk_24B75FAF0);
  v54 = sub_24B6E8D88();
  v55 = 0;
  v56 = v136;
  v57 = v158;
  sub_24B75BDE8();
  v58 = v52;
  v59 = v160;
  sub_24B6E89A0(v133, v132, v58);

  v60 = v155;
  sub_24B75B758();
  v190 = v53;
  v191 = v54;
  swift_getOpaqueTypeConformance2();
  v61 = v137;
  sub_24B75BDD8();
  (*(v159 + 8))(v60, v161);
  (*(v138 + 8))(v56, v61);
  sub_24B6B9D34(v162, v59, &qword_27F034508, &qword_24B761E50);
  v62 = v156;
  if ((*(v156 + 48))(v59, 1, v57) == 1)
  {
    sub_24B6B9CD4(v59, &qword_27F034508, &qword_24B761E50);
    v161 = 0;
    v162 = 0;
    v159 = 0;
    v160 = 0;
    v155 = 0;
    v156 = 0;
    v157 = 0;
    v158 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v67 = v139;
    v66 = v140;
  }

  else
  {
    v68 = v157;
    (*(v62 + 32))(v157, v59, v57);
    v69 = sub_24B72793C();
    v70 = (v69)(v68);
    v72 = v71;
    v74 = v73;

    sub_24B75BA38();
    v67 = v139;
    v75 = v140;
    v151(v139, v153, v140);
    sub_24B75BB28();

    v149(v67, v75);
    v76 = sub_24B75BC18();
    v161 = v77;
    v162 = v76;
    v79 = v78;
    v160 = v80;

    sub_24B6E89A0(v70, v72, v74 & 1);

    v159 = swift_getKeyPath();
    v81 = sub_24B75B9B8();
    sub_24B75B3D8();
    v55 = v82;
    v63 = v83;
    v64 = v84;
    v65 = v85;
    (*(v62 + 8))(v157, v158);
    LOBYTE(v190) = v79 & 1;
    LOBYTE(v168) = 0;
    LOBYTE(v179[0]) = 0;
    v156 = v79 & 1;
    v158 = 0;
    v157 = v81;
    v155 = 2;
    v66 = v75;
  }

  v86 = v150;
  v87 = sub_24B72793C();
  v88 = (v87)(v141);
  v90 = v89;
  v92 = v91;

  sub_24B75BB38();
  v151(v67, v153, v66);
  sub_24B75BB28();

  v149(v67, v66);
  v93 = sub_24B75BC18();
  v153 = v94;
  v154 = v95;
  v97 = v96;

  sub_24B6E89A0(v88, v90, v92 & 1);

  LODWORD(v152) = sub_24B75BA08();
  sub_24B75B3D8();
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v105 = v104;
  LOBYTE(v190) = v97 & 1;
  v106 = v97 & 1;
  LODWORD(v151) = v97 & 1;
  LOBYTE(v168) = 0;
  v107 = v143;
  sub_24B72C2F8(v142, v86, v143);
  sub_24B75B968();
  sub_24B75C168();
  sub_24B734D70();
  v108 = v146;
  sub_24B75BDE8();
  sub_24B6B9CD4(v107, &qword_27F036108, &qword_24B767060);
  v109 = sub_24B75B9B8();
  sub_24B75B3D8();
  v110 = v108 + *(v145 + 36);
  *v110 = v109;
  *(v110 + 8) = v111;
  *(v110 + 16) = v112;
  *(v110 + 24) = v113;
  *(v110 + 32) = v114;
  *(v110 + 40) = 0;
  v115 = v163;
  sub_24B6B9D34(v164, v163, &qword_27F0362F0, &qword_24B7671E8);
  v116 = v147;
  sub_24B6B9D34(v108, v147, &qword_27F0362E0, &qword_24B7671D8);
  v117 = v115;
  v118 = v148;
  sub_24B6B9D34(v117, v148, &qword_27F0362F0, &qword_24B7671E8);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0362F8, &unk_24B7671F0);
  v120 = v118 + v119[12];
  *&v168 = v162;
  *(&v168 + 1) = v161;
  *&v169 = v156;
  *(&v169 + 1) = v160;
  *&v170 = v159;
  *(&v170 + 1) = v155;
  *&v171 = v158;
  *(&v171 + 1) = v157;
  *&v172 = v55;
  *(&v172 + 1) = v63;
  *&v173 = v64;
  *(&v173 + 1) = v65;
  v174 = 0;
  *(v120 + 96) = 0;
  v121 = v169;
  *v120 = v168;
  *(v120 + 16) = v121;
  v122 = v171;
  *(v120 + 32) = v170;
  *(v120 + 48) = v122;
  v123 = v173;
  *(v120 + 64) = v172;
  *(v120 + 80) = v123;
  v124 = (v118 + v119[16]);
  v125 = v153;
  *&v175 = v93;
  *(&v175 + 1) = v153;
  LOBYTE(v176) = v106;
  DWORD1(v176) = *&v167[3];
  *(&v176 + 1) = *v167;
  v126 = v154;
  *(&v176 + 1) = v154;
  LOBYTE(v107) = v152;
  LOBYTE(v177) = v152;
  DWORD1(v177) = *&v166[3];
  *(&v177 + 1) = *v166;
  *(&v177 + 1) = v99;
  *&v178[0] = v101;
  *(&v178[0] + 1) = v103;
  *&v178[1] = v105;
  BYTE8(v178[1]) = 0;
  v127 = v175;
  v128 = v176;
  *(v124 + 57) = *(v178 + 9);
  v129 = v178[0];
  v124[2] = v177;
  v124[3] = v129;
  *v124 = v127;
  v124[1] = v128;
  sub_24B6B9D34(v116, v118 + v119[20], &qword_27F0362E0, &qword_24B7671D8);
  sub_24B6B9D34(&v168, &v190, &qword_27F036228, &qword_24B767150);
  sub_24B6B9D34(&v175, &v190, &qword_27F035908, &unk_24B764A40);
  sub_24B6B9CD4(v108, &qword_27F0362E0, &qword_24B7671D8);
  sub_24B6B9CD4(v164, &qword_27F0362F0, &qword_24B7671E8);
  sub_24B6B9CD4(v116, &qword_27F0362E0, &qword_24B7671D8);
  v179[0] = v93;
  v179[1] = v125;
  v180 = v151;
  *v181 = *v167;
  *&v181[3] = *&v167[3];
  v182 = v126;
  v183 = v107;
  *v184 = *v166;
  *&v184[3] = *&v166[3];
  v185 = v99;
  v186 = v101;
  v187 = v103;
  v188 = v105;
  v189 = 0;
  sub_24B6B9CD4(v179, &qword_27F035908, &unk_24B764A40);
  v190 = v162;
  v191 = v161;
  v192 = v156;
  v193 = v160;
  v194 = v159;
  v195 = v155;
  v196 = v158;
  v197 = v157;
  v198 = v55;
  v199 = v63;
  v200 = v64;
  v201 = v65;
  v202 = 0;
  sub_24B6B9CD4(&v190, &qword_27F036228, &qword_24B767150);
  return sub_24B6B9CD4(v163, &qword_27F0362F0, &qword_24B7671E8);
}

uint64_t sub_24B72C2F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v5 = sub_24B75B258();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036128, &qword_24B767078);
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x28223BE20](v10);
  v40 = &v37 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0361A0, &qword_24B7670B8);
  v46 = *(v12 - 8);
  v47 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035018, &qword_24B7670C0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v37 - v16;
  v18 = type metadata accessor for WorkoutProgram(0);
  sub_24B6B9D34(a1 + *(v18 + 32), v17, &qword_27F035018, &qword_24B7670C0);
  v19 = type metadata accessor for WorkoutProgramPreview(0);
  v20 = 1;
  v21 = (*(*(v19 - 8) + 48))(v17, 1, v19);
  sub_24B6B9CD4(v17, &qword_27F035018, &qword_24B7670C0);
  if (v21 != 1)
  {
    v22 = *(v7 + 16);
    v38 = v14;
    v23 = v39;
    v22(&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v39, a2);
    v24 = (*(v7 + 80) + 48) & ~*(v7 + 80);
    v25 = swift_allocObject();
    v26 = a2[2];
    v27 = a2[3];
    *(v25 + 2) = v26;
    *(v25 + 3) = v27;
    v28 = a2[4];
    v29 = a2[5];
    *(v25 + 4) = v28;
    *(v25 + 5) = v29;
    v30 = (*(v7 + 32))(&v25[v24], &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
    MEMORY[0x28223BE20](v30);
    *(&v37 - 6) = v26;
    *(&v37 - 5) = v27;
    *(&v37 - 4) = v28;
    *(&v37 - 3) = v29;
    *(&v37 - 2) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0361A8, &qword_24B7670C8);
    sub_24B735764();
    v31 = v40;
    sub_24B75BFE8();
    v32 = v43;
    sub_24B75B7C8();
    sub_24B6C743C(&qword_27F036130, &qword_27F036128, &qword_24B767078, MEMORY[0x277CDF028]);
    sub_24B73593C(&qword_27F036138, MEMORY[0x277D09D38], MEMORY[0x277D09D30]);
    v33 = v38;
    v34 = v42;
    v35 = v45;
    sub_24B75BCF8();
    (*(v44 + 8))(v32, v35);
    (*(v41 + 8))(v31, v34);
    (*(v46 + 32))(v48, v33, v47);
    v20 = 0;
  }

  return (*(v46 + 56))(v48, v20, 1, v47);
}

uint64_t sub_24B72C824@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v40 = a1;
  v11 = sub_24B75B768();
  v43 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v42 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24B75BAE8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0346C0, &qword_24B75FAC0);
  v44 = *(v17 - 8);
  v45 = v17;
  MEMORY[0x28223BE20](v17);
  v41 = &v38 - v18;
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a5;
  type metadata accessor for ProgramDetailView(0, &v46);
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  if (v50 >= 7u)
  {
    v20 = sub_24B72793C();
    v21 = (v20)(v40);
    v23 = v22;
    v40 = a6;
    v25 = v24;

    sub_24B75BA18();
    sub_24B75BA48();

    (*(v14 + 104))(v16, *MEMORY[0x277CE0A10], v13);
    sub_24B75BB28();
    v39 = v11;

    (*(v14 + 8))(v16, v13);
    v26 = sub_24B75BC18();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    sub_24B6E89A0(v21, v23, v25 & 1);

    KeyPath = swift_getKeyPath();
    v46 = v26;
    v47 = v28;
    v34 = v30 & 1;
    LOBYTE(v48) = v30 & 1;
    v49 = v32;
    v50 = KeyPath;
    v51 = 3;
    v52 = 0;
    v35 = v42;
    sub_24B75B758();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034700, &unk_24B75FAF0);
    sub_24B6E8D88();
    v36 = v41;
    sub_24B75BDD8();
    (*(v43 + 8))(v35, v39);
    sub_24B6E89A0(v26, v28, v34);
    a6 = v40;

    sub_24B6B8DE8(v36, a6, &qword_27F0346C0, &qword_24B75FAC0);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v44 + 56))(a6, v19, 1, v45);
}

uint64_t sub_24B72CC40@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_24B75B788();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036158, &unk_24B767090);
  return sub_24B72CCB0(a1, v3, a2[2], a2[3], a2[4], a2[5], a3 + *(v7 + 44));
}

uint64_t sub_24B72CCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21[0] = a1;
  v21[1] = a7;
  v22[0] = a3;
  v22[1] = a4;
  v22[2] = a5;
  v22[3] = a6;
  v13 = type metadata accessor for ProgramDetailView(0, v22);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v21 - v16;
  v22[0] = a1;
  (*(v14 + 16))(v21 - v16, a2, v13, v15);
  v18 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a3;
  *(v19 + 3) = a4;
  *(v19 + 4) = a5;
  *(v19 + 5) = a6;
  (*(v14 + 32))(&v19[v18], v17, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035040, &qword_24B761E60);
  type metadata accessor for WorkoutProgramLinkAnnotation(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036160, &qword_24B7670A0);
  sub_24B6C743C(&qword_27F036168, &qword_27F035040, &qword_24B761E60, MEMORY[0x277D83980]);
  sub_24B6C743C(&qword_27F036170, &qword_27F036160, &qword_24B7670A0, MEMORY[0x277CDF028]);
  sub_24B73593C(&qword_27F036178, type metadata accessor for WorkoutProgramLinkAnnotation, &protocol conformance descriptor for WorkoutProgramLinkAnnotation);
  return sub_24B75C0E8();
}

uint64_t sub_24B72CF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, ValueMetadata *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v36 = a5;
  v37 = a6;
  v35 = a4;
  v38 = a7;
  v13 = type metadata accessor for WorkoutProgramLinkAnnotation(0);
  v34 = *(v13 - 8);
  v14 = *(v34 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v43 = a6;
  v16 = type metadata accessor for ProgramDetailView(0, &v40);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v33 - v20;
  (*(v17 + 16))(&v33 - v20, a2, v16, v19);
  v22 = a1;
  sub_24B735160(a1, v15, type metadata accessor for WorkoutProgramLinkAnnotation);
  v23 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v24 = (v18 + *(v34 + 80) + v23) & ~*(v34 + 80);
  v25 = swift_allocObject();
  v26 = v35;
  v27 = v36;
  *(v25 + 2) = a3;
  *(v25 + 3) = v26;
  v28 = v37;
  *(v25 + 4) = v27;
  *(v25 + 5) = v28;
  (*(v17 + 32))(&v25[v23], v21, v16);
  sub_24B7351C8(v15, &v25[v24], type metadata accessor for WorkoutProgramLinkAnnotation);
  v39 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036180, &qword_24B7670A8);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036188, &qword_24B7670B0);
  v30 = sub_24B735340();
  v31 = sub_24B735424();
  v40 = v29;
  v41 = &type metadata for ReversedTitleIconLabelStyle;
  v42 = v30;
  v43 = v31;
  swift_getOpaqueTypeConformance2();
  return sub_24B75BFE8();
}

uint64_t sub_24B72D1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for ProgramDetailAction(0);
  MEMORY[0x28223BE20](v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  type metadata accessor for ProgramDetailView(0, v17);
  sub_24B7275FC();
  v14 = *(type metadata accessor for WorkoutProgramLinkAnnotation(0) + 24);
  v15 = sub_24B75B108();
  (*(*(v15 - 8) + 16))(v13, a2 + v14, v15);
  swift_storeEnumTagMultiPayload();
  sub_24B75C228();

  return sub_24B734BFC(v13, type metadata accessor for ProgramDetailAction);
}

uint64_t sub_24B72D330(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036188, &qword_24B7670B0);
  MEMORY[0x28223BE20](v2);
  v4 = v11 - v3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v11[0] = v5;
  v11[1] = v6;
  sub_24B6E89B0();

  sub_24B75BFD8();
  sub_24B75BA38();
  sub_24B75BA98();
  v7 = sub_24B75BAD8();

  KeyPath = swift_getKeyPath();
  v9 = &v4[*(v2 + 36)];
  *v9 = KeyPath;
  v9[1] = v7;
  v11[0] = 0x4000000000000000;
  sub_24B735340();
  sub_24B735424();
  sub_24B75BCC8();
  return sub_24B6B9CD4(v4, &qword_27F036188, &qword_24B7670B0);
}

uint64_t sub_24B72D498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v78 = a5;
  v79 = a7;
  v87 = a2;
  v88 = a4;
  v80 = a3;
  v77 = sub_24B75B1F8();
  v74 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v76 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24B75C2F8();
  MEMORY[0x28223BE20](v12 - 8);
  v70 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24B75AFE8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a6 - 1);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  v75 = v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v72 = v64 - v22;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = v64 - v25;
  v84 = *(v18 + 16);
  v85 = v18 + 16;
  v84(v64 - v25, v8, a6, v24);
  (*(v15 + 16))(v17, a1, v14);
  v27 = *(v18 + 80);
  v28 = (v27 + 48) & ~v27;
  v29 = v27 | 7;
  v30 = *(v15 + 80);
  v83 = v28 + v19;
  v31 = (v28 + v19 + v30) & ~v30;
  v69 = v29;
  v32 = swift_allocObject();
  v33 = a6[3];
  v68 = a6[2];
  *(v32 + 2) = v68;
  *(v32 + 3) = v33;
  v67 = v33;
  v34 = a6[5];
  v66 = a6[4];
  *(v32 + 4) = v66;
  *(v32 + 5) = v34;
  v82 = v34;
  v35 = *(v18 + 32);
  v71 = v28;
  v86 = v18 + 32;
  v65 = v35;
  v35(&v32[v28], v26, a6);
  v36 = *(v15 + 32);
  v73 = v32;
  v36(&v32[v31], v17, v14);
  v81 = a6;
  v89 = v8;
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  if ((v91 & 1) != 0 || (sub_24B7275FC(), swift_getKeyPath(), sub_24B75C218(), , , v90 >= 7u))
  {
    v37 = 3;
  }

  else
  {
    v37 = 2;
  }

  v64[1] = v37;

  sub_24B75C2E8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = objc_opt_self();
  v40 = [v39 bundleForClass_];
  v41 = *(v74 + 16);
  v43 = v76;
  v42 = v77;
  v44 = v78;
  v41(v76, v78, v77);
  v74 = sub_24B75C348();
  v64[0] = v45;
  sub_24B75C2E8();
  v46 = [v39 bundleForClass_];
  v41(v43, v44, v42);
  v47 = sub_24B75C348();
  v77 = v48;
  v78 = v47;
  v49 = v72;
  v50 = v81;
  (v84)(v72, v89, v81);
  v51 = (v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v53 = v68;
  v54 = v67;
  *(v52 + 2) = v68;
  *(v52 + 3) = v54;
  v55 = v66;
  v56 = v82;
  *(v52 + 4) = v66;
  *(v52 + 5) = v56;
  v57 = v71;
  v58 = v49;
  v59 = v65;
  v65(&v52[v71], v58, v50);
  *&v52[v51] = v87;
  v60 = v75;
  (v84)(v75, v89, v50);
  v61 = swift_allocObject();
  *(v61 + 2) = v53;
  *(v61 + 3) = v54;
  v62 = v82;
  *(v61 + 4) = v55;
  *(v61 + 5) = v62;
  v59(&v61[v57], v60, v50);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036148, &qword_24B767088);
  sub_24B6C743C(&qword_27F036150, &qword_27F036148, &qword_24B767088, MEMORY[0x277CE1198]);
  return sub_24B75B318();
}

uint64_t sub_24B72DBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_24B75BAE8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = a3;
  v23[1] = a4;
  v23[2] = a5;
  v23[3] = a6;
  type metadata accessor for ProgramDetailView(0, v23);
  v15 = sub_24B72793C();
  v16 = (v15)(a2);
  v18 = v17;
  LOBYTE(a3) = v19;

  sub_24B75BA28();
  (*(v12 + 104))(v14, *MEMORY[0x277CE0A10], v11);
  sub_24B75BB28();

  (*(v12 + 8))(v14, v11);
  v20 = sub_24B75BC18();

  sub_24B6E89A0(v16, v18, a3 & 1);

  return v20;
}

uint64_t sub_24B72DD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for ProgramDetailAction(0);
  MEMORY[0x28223BE20](v10);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  type metadata accessor for ProgramDetailView(0, v14);
  sub_24B7275FC();
  swift_storeEnumTagMultiPayload();
  sub_24B75C228();

  return sub_24B734BFC(v12, type metadata accessor for ProgramDetailAction);
}

uint64_t sub_24B72DE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a4;
  v29 = a5;
  v30 = a1;
  v27 = a6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036068, &unk_24B767A80);
  MEMORY[0x28223BE20](v26);
  v9 = &v26 - v8;
  v10 = sub_24B75B1F8();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_24B75C2F8();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035898, &qword_24B764A10);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  sub_24B75C2E8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  v31 = a2;
  v32 = a3;
  v33 = v28;
  v34 = v29;
  type metadata accessor for ProgramDetailView(0, &v31);
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v31 = sub_24B75C348();
  v32 = v18;
  sub_24B6E89B0();
  sub_24B75BFD8();
  v19 = *MEMORY[0x277CDFA10];
  v20 = sub_24B75B538();
  (*(*(v20 - 8) + 104))(v9, v19, v20);
  sub_24B73593C(&qword_27F0360B8, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_24B75C2D8();
  if (result)
  {
    sub_24B6C743C(&qword_27F0358A0, &qword_27F035898, &qword_24B764A10, MEMORY[0x277CDEFF0]);
    sub_24B6C743C(&qword_27F036098, &qword_27F036068, &unk_24B767A80, MEMORY[0x277D84470]);
    v22 = v27;
    sub_24B75BD58();
    sub_24B6B9CD4(v9, &qword_27F036068, &unk_24B767A80);
    (*(v13 + 8))(v15, v12);
    sub_24B75BA38();
    sub_24B75BA98();
    v23 = sub_24B75BAD8();

    KeyPath = swift_getKeyPath();
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0361A8, &qword_24B7670C8);
    v25 = (v22 + *(result + 36));
    *v25 = KeyPath;
    v25[1] = v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B72E2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036048, &qword_24B766F28);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - v6;
  v8 = *(a1 + 32);
  v15 = *(a1 + 16);
  v16 = v8;
  v17 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036050, &qword_24B766F30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036058, &qword_24B766F38);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036060, &unk_24B766F40);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036068, &unk_24B767A80);
  v11 = sub_24B7348D8();
  v12 = sub_24B6C743C(&qword_27F036098, &qword_27F036068, &unk_24B767A80, MEMORY[0x277D84470]);
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  swift_getOpaqueTypeConformance2();
  sub_24B6C743C(&qword_27F0360A0, &qword_27F036058, &qword_24B766F38, MEMORY[0x277CE14C0]);
  sub_24B75BB48();
  sub_24B6C743C(&qword_27F0360A8, &qword_27F036048, &qword_24B766F28, MEMORY[0x277CDE5B0]);
  sub_24B734A48();
  sub_24B75BEC8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24B72E560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v71 = a5;
  v69 = a6;
  v82[0] = a2;
  v82[1] = a3;
  v82[2] = a4;
  v82[3] = a5;
  v10 = type metadata accessor for ProgramDetailView(0, v82);
  v11 = *(v10 - 8);
  v61 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v52 - v12;
  v70 = v52 - v12;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036020, &qword_24B766EE8);
  v68 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v65 = v52 - v16;
  MEMORY[0x28223BE20](v17);
  v64 = v52 - v18;
  v20 = MEMORY[0x28223BE20](v19);
  v59 = v52 - v21;
  v22 = *(v11 + 16);
  v62 = v11 + 16;
  v63 = v22;
  v53 = v10;
  (v22)(v13, a1, v10, v20);
  v60 = *(v11 + 80);
  v23 = (v60 + 48) & ~v60;
  v54 = v23;
  v24 = swift_allocObject();
  v25 = a2;
  v55 = a2;
  *(v24 + 2) = a2;
  *(v24 + 3) = a3;
  v26 = a4;
  v56 = a4;
  *(v24 + 4) = a4;
  v27 = v71;
  *(v24 + 5) = v71;
  v28 = *(v11 + 32);
  v57 = v11 + 32;
  v58 = v28;
  v28(&v24[v23], v70, v10);
  v77 = v25;
  v78 = a3;
  v29 = a3;
  v79 = v26;
  v80 = v27;
  v81 = a1;
  v30 = a1;
  v52[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035898, &qword_24B764A10);
  v52[1] = sub_24B6C743C(&qword_27F0358A0, &qword_27F035898, &qword_24B764A10, MEMORY[0x277CDEFF0]);
  v31 = v59;
  sub_24B75BFE8();
  v32 = v70;
  v33 = v53;
  v63(v70, a1, v53);
  v34 = v54;
  v35 = swift_allocObject();
  v36 = v55;
  *(v35 + 2) = v55;
  *(v35 + 3) = v29;
  v37 = v29;
  v38 = v56;
  v39 = v71;
  *(v35 + 4) = v56;
  *(v35 + 5) = v39;
  v58(&v35[v34], v32, v33);
  v72 = v36;
  v73 = v37;
  v74 = v38;
  v75 = v39;
  v76 = v30;
  v40 = v64;
  sub_24B75BFE8();
  v41 = v68;
  v42 = *(v68 + 16);
  v43 = v65;
  v44 = v31;
  v45 = v31;
  v46 = v67;
  v42(v65, v45, v67);
  v47 = v66;
  v42(v66, v40, v46);
  v48 = v69;
  v42(v69, v43, v46);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0360C0, &qword_24B766FC8);
  v42(&v48[*(v49 + 48)], v47, v46);
  v50 = *(v41 + 8);
  v50(v40, v46);
  v50(v44, v46);
  v50(v47, v46);
  return (v50)(v43, v46);
}

uint64_t sub_24B72EADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  type metadata accessor for ProgramDetailView(0, v6);
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  sub_24B75B728();
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  return sub_24B75BFC8();
}

uint64_t sub_24B72EC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24B75B1F8();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_24B75C2F8();
  MEMORY[0x28223BE20](v10 - 8);
  sub_24B75C2E8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  type metadata accessor for ProgramDetailView(0, &v15);
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v15 = sub_24B75C348();
  v16 = v13;
  sub_24B6E89B0();
  return sub_24B75BFD8();
}

uint64_t sub_24B72EE1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036068, &unk_24B767A80);
  MEMORY[0x28223BE20](v0);
  v2 = v15 - v1;
  v3 = sub_24B75BAE8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B75BF98();
  sub_24B75BA28();
  sub_24B75BA48();

  (*(v4 + 104))(v6, *MEMORY[0x277CE0A10], v3);
  v8 = sub_24B75BB28();

  (*(v4 + 8))(v6, v3);
  KeyPath = swift_getKeyPath();
  v10 = sub_24B75BF28();
  v11 = swift_getKeyPath();
  v15[2] = v7;
  v15[3] = v7;
  v15[4] = KeyPath;
  v15[5] = v8;
  v15[6] = v11;
  v15[7] = v10;
  v12 = *MEMORY[0x277CDF9D8];
  v13 = sub_24B75B538();
  (*(*(v13 - 8) + 104))(v2, v12, v13);
  sub_24B73593C(&qword_27F0360B8, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_24B75C2D8();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036060, &unk_24B766F40);
    sub_24B7348D8();
    v15[1] = KeyPath;
    sub_24B6C743C(&qword_27F036098, &qword_27F036068, &unk_24B767A80, MEMORY[0x277D84470]);
    sub_24B75BD58();
    sub_24B6B9CD4(v2, &qword_27F036068, &unk_24B767A80);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ProgramDetailView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v3 = sub_24B75B1F8();
  MEMORY[0x28223BE20](v3 - 8);
  v110 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B75C2F8();
  MEMORY[0x28223BE20](v5 - 8);
  v109 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = *(a1 - 8);
  v107 = *(v106 + 64);
  MEMORY[0x28223BE20](v7);
  v105 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345E8, &qword_24B766D40);
  sub_24B75B958();
  v9 = *(a1 + 16);
  v10 = a1;
  v103 = a1;
  v104 = v9;
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E70, &qword_24B766D48);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E78, &qword_24B766D50);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  v11 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E80, &qword_24B766D58);
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E88, &qword_24B766D60);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E90, &qword_24B766D68);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E98, &qword_24B766D70);
  v102 = *(v10 + 24);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  sub_24B75BF88();
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B8E8();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_24B73593C(&qword_27F0345C8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  v150 = WitnessTable;
  v151 = v13;
  v148 = swift_getWitnessTable();
  v149 = v13;
  v146 = swift_getWitnessTable();
  v147 = v13;
  v144 = swift_getWitnessTable();
  v145 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v14 = sub_24B75B3E8();
  v15 = swift_getWitnessTable();
  v131 = v14;
  v132 = v15;
  swift_getOpaqueTypeMetadata2();
  v131 = v14;
  v132 = v15;
  swift_getOpaqueTypeConformance2();
  sub_24B75B4F8();
  v83 = sub_24B75B7B8();
  v16 = sub_24B75BF88();
  v96 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v87 = &v75 - v17;
  v85 = v16;
  v18 = sub_24B75B558();
  v97 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v90 = &v75 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035EA0, &qword_24B766D78);
  v21 = sub_24B6C743C(&qword_27F0345E0, &qword_27F0345E8, &qword_24B766D40, MEMORY[0x277CDD7F8]);
  v22 = swift_getWitnessTable();
  v142 = v21;
  v143 = v22;
  v82 = swift_getWitnessTable();
  v141 = v82;
  v84 = swift_getWitnessTable();
  v139 = v84;
  v140 = MEMORY[0x277CE0790];
  v23 = swift_getWitnessTable();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035EA8, &qword_24B766D80);
  v25 = sub_24B6C743C(&qword_27F035EB0, &qword_27F035EA8, &qword_24B766D80, MEMORY[0x277CDDB60]);
  v131 = v24;
  v132 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v76 = v18;
  v77 = OpaqueTypeConformance2;
  v131 = v18;
  v132 = v20;
  v78 = v23;
  v79 = v20;
  v133 = v23;
  v134 = OpaqueTypeConformance2;
  v27 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v86 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v75 = &v75 - v29;
  v131 = v18;
  v132 = v20;
  v133 = v23;
  v134 = v27;
  v30 = swift_getOpaqueTypeConformance2();
  v131 = OpaqueTypeMetadata2;
  v132 = v30;
  v31 = OpaqueTypeMetadata2;
  v80 = OpaqueTypeMetadata2;
  v81 = v30;
  v32 = v30;
  v33 = swift_getOpaqueTypeMetadata2();
  v94 = v33;
  v101 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v112 = &v75 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035EB8, &qword_24B766D88);
  v93 = v35;
  v131 = v31;
  v132 = v32;
  v36 = swift_getOpaqueTypeConformance2();
  v92 = v36;
  v37 = sub_24B6E89B0();
  v91 = v37;
  v89 = sub_24B6C743C(&qword_27F035EC0, &qword_27F035EB8, &qword_24B766D88, v11);
  v131 = v33;
  v132 = MEMORY[0x277D837D0];
  v133 = v35;
  v134 = MEMORY[0x277CE0BD8];
  v135 = v36;
  v136 = v37;
  v137 = v89;
  v138 = MEMORY[0x277CE0BC8];
  v98 = MEMORY[0x277CDE9B8];
  v38 = swift_getOpaqueTypeMetadata2();
  v39 = *(v38 - 8);
  v99 = v38;
  v100 = v39;
  MEMORY[0x28223BE20](v38);
  v88 = &v75 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v95 = &v75 - v42;
  v43 = v103;
  v44 = v104;
  *&v45 = v104;
  v46 = v102;
  *(&v45 + 1) = v102;
  v47 = v108;
  v128 = v108;
  v113 = *(v103 + 32);
  v126 = v45;
  v127 = v113;
  v48 = v87;
  sub_24B75BF78();
  v50 = v105;
  v49 = v106;
  (*(v106 + 16))(v105, v47, v43);
  v51 = (*(v49 + 80) + 48) & ~*(v49 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = v44;
  *(v52 + 24) = v46;
  *(v52 + 32) = v113;
  (*(v49 + 32))(v52 + v51, v50, v43);
  v53 = v90;
  v54 = v85;
  sub_24B75BE88();

  (*(v96 + 8))(v48, v54);
  v122 = v44;
  v123 = v46;
  v124 = v113;
  v125 = v47;
  v56 = v75;
  v55 = v76;
  sub_24B75BE58();
  (*(v97 + 8))(v53, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F035EC8, &qword_24B766D90);
  sub_24B75B5B8();
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_24B760390;
  sub_24B75B5A8();
  v58 = v80;
  MEMORY[0x24C248130](1, v57, v80, v81);

  (*(v86 + 8))(v56, v58);
  sub_24B75C2E8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v60 = [objc_opt_self() bundleForClass_];
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v61 = sub_24B75C348();
  v110 = v62;
  v129 = v61;
  v130 = v62;
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C238();

  v118 = v44;
  v119 = v46;
  v120 = v113;
  v121 = v47;
  v114 = v44;
  v115 = v46;
  v116 = v113;
  v117 = v47;
  v63 = v89;
  v64 = v91;
  v65 = v92;
  v66 = v93;
  v67 = v94;
  v68 = v88;
  v69 = v112;
  sub_24B75BD98();

  (*(v101 + 8))(v69, v67);
  v131 = v67;
  v132 = MEMORY[0x277D837D0];
  v133 = v66;
  v134 = MEMORY[0x277CE0BD8];
  v135 = v65;
  v136 = v64;
  v137 = v63;
  v138 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  v70 = v95;
  v71 = v68;
  v72 = v99;
  sub_24B6C7504();
  v73 = *(v100 + 8);
  v73(v71, v72);
  sub_24B6C7504();
  return (v73)(v70, v72);
}

uint64_t sub_24B730138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v67 = a1;
  v69 = a6;
  v84 = a2;
  v85 = a3;
  v62 = a4;
  v86 = a4;
  v87 = a5;
  v63 = a5;
  v8 = type metadata accessor for ProgramDetailView(0, &v84);
  v59 = *(v8 - 8);
  v57 = *(v59 + 64);
  MEMORY[0x28223BE20](v8);
  v58 = &OpaqueTypeConformance2 - v9;
  v10 = type metadata accessor for WorkoutProgram(0);
  v54 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v56 = &OpaqueTypeConformance2 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v11;
  MEMORY[0x28223BE20](v12);
  v66 = &OpaqueTypeConformance2 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0345E8, &qword_24B766D40);
  v65 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v64 = &OpaqueTypeConformance2 - v15;
  State = type metadata accessor for ProgramDetailLoadState(0);
  MEMORY[0x28223BE20](State - 8);
  v18 = &OpaqueTypeConformance2 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B75B958();
  v60 = a2;
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E70, &qword_24B766D48);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E78, &qword_24B766D50);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E80, &qword_24B766D58);
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E88, &qword_24B766D60);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E90, &qword_24B766D68);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E98, &qword_24B766D70);
  v61 = a3;
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  sub_24B75BF88();
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B8E8();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  WitnessTable = swift_getWitnessTable();
  v20 = sub_24B73593C(&qword_27F0345C8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  v82 = WitnessTable;
  v83 = v20;
  v80 = swift_getWitnessTable();
  v81 = v20;
  v78 = swift_getWitnessTable();
  v79 = v20;
  v76 = swift_getWitnessTable();
  v77 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v21 = sub_24B75B3E8();
  v22 = swift_getWitnessTable();
  v84 = v21;
  v85 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v84 = v21;
  v85 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = sub_24B75B4F8();
  v68 = v14;
  v25 = sub_24B75B7B8();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &OpaqueTypeConformance2 - v27;
  v29 = v8;
  v30 = v67;
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0360C8, &qword_24B766FF0);
  if ((*(*(v31 - 8) + 48))(v18, 2, v31))
  {
    v32 = v64;
    sub_24B75B448();
    v33 = sub_24B6C743C(&qword_27F0345E0, &qword_27F0345E8, &qword_24B766D40, MEMORY[0x277CDD7F8]);
    v34 = swift_getWitnessTable();
    v35 = v68;
    sub_24B73898C(v32, v68, v24, v33, v34);
    (*(v65 + 8))(v32, v35);
  }

  else
  {
    v36 = v66;
    sub_24B7351C8(v18, v66, type metadata accessor for WorkoutProgram);
    v65 = v26;
    v37 = v59;
    v38 = *(v59 + 16);
    v64 = OpaqueTypeMetadata2;
    v39 = v58;
    v38(v58, v30, v29);
    v67 = v25;
    v40 = v56;
    sub_24B735160(v36, v56, type metadata accessor for WorkoutProgram);
    v41 = (*(v37 + 80) + 48) & ~*(v37 + 80);
    v42 = (v57 + *(v54 + 80) + v41) & ~*(v54 + 80);
    v43 = swift_allocObject();
    v44 = v61;
    *(v43 + 2) = v60;
    *(v43 + 3) = v44;
    v45 = v63;
    *(v43 + 4) = v62;
    *(v43 + 5) = v45;
    (*(v37 + 32))(&v43[v41], v39, v29);
    v26 = v65;
    v46 = v40;
    v25 = v67;
    sub_24B7351C8(v46, &v43[v42], type metadata accessor for WorkoutProgram);
    v74 = sub_24B75B4E8();
    v75 = v47;
    v48 = swift_getWitnessTable();
    sub_24B6C7504();

    v72 = v84;
    v73 = v85;
    sub_24B6C7504();
    v72 = v74;
    v73 = v75;
    v49 = sub_24B6C743C(&qword_27F0345E0, &qword_27F0345E8, &qword_24B766D40, MEMORY[0x277CDD7F8]);
    sub_24B738894(&v72, v68, v24, v49, v48);

    sub_24B734BFC(v66, type metadata accessor for WorkoutProgram);
  }

  v50 = sub_24B6C743C(&qword_27F0345E0, &qword_27F0345E8, &qword_24B766D40, MEMORY[0x277CDD7F8]);
  v51 = swift_getWitnessTable();
  v70 = v50;
  v71 = v51;
  swift_getWitnessTable();
  sub_24B6C7504();
  return (*(v26 + 8))(v28, v25);
}

uint64_t sub_24B730CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v39 = a7;
  v37 = a6;
  v38 = a3;
  v35 = a2;
  v36 = a1;
  v40 = a8;
  sub_24B75B958();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E70, &qword_24B766D48);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E78, &qword_24B766D50);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E80, &qword_24B766D58);
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E88, &qword_24B766D60);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E90, &qword_24B766D68);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E98, &qword_24B766D70);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  sub_24B75BF88();
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B8E8();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  v10 = sub_24B75B558();
  WitnessTable = swift_getWitnessTable();
  v60 = sub_24B73593C(&qword_27F0345C8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  v57 = swift_getWitnessTable();
  v58 = v60;
  v55 = swift_getWitnessTable();
  v56 = v60;
  v53 = swift_getWitnessTable();
  v54 = MEMORY[0x277CDF918];
  v29 = v10;
  v28 = swift_getWitnessTable();
  v11 = sub_24B75B3E8();
  v34 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v30 = swift_getWitnessTable();
  v49 = v11;
  v50 = v30;
  v32 = MEMORY[0x277CDE7E0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v33 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v31 = &v27 - v18;
  v19 = sub_24B75B988();
  v42 = a4;
  v43 = a5;
  v20 = a5;
  v21 = v37;
  v22 = v39;
  v44 = v37;
  v45 = v39;
  v46 = v35;
  v47 = v38;
  v48 = v36;
  sub_24B738A84(v19, sub_24B734C5C, v41, v29, v28);
  v49 = a4;
  v50 = v20;
  v51 = v21;
  v52 = v22;
  type metadata accessor for ProgramDetailView(0, &v49);
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C238();

  type metadata accessor for WorkoutProgram(0);
  v23 = v30;
  sub_24B75BD38();

  (*(v34 + 8))(v13, v11);
  v49 = v11;
  v50 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v31;
  sub_24B6C7504();
  v25 = *(v33 + 8);
  v25(v16, OpaqueTypeMetadata2);
  sub_24B6C7504();
  return (v25)(v24, OpaqueTypeMetadata2);
}

uint64_t sub_24B731478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v63 = a7;
  v62 = a6;
  v56 = a4;
  v47[1] = a3;
  v61 = a2;
  v59 = a1;
  v66 = a8;
  sub_24B75B958();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E70, &qword_24B766D48);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E78, &qword_24B766D50);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E80, &qword_24B766D58);
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E88, &qword_24B766D60);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E90, &qword_24B766D68);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E98, &qword_24B766D70);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  sub_24B75BF88();
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  v47[2] = swift_getWitnessTable();
  v9 = sub_24B75C088();
  v50 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v47 - v10;
  sub_24B75B8E8();
  v12 = sub_24B75B558();
  v52 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v48 = v47 - v13;
  v53 = sub_24B75B558();
  v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = v47 - v14;
  v15 = sub_24B75B558();
  v58 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v49 = v47 - v16;
  v60 = v17;
  v65 = sub_24B75B558();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v55 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v57 = v47 - v20;
  sub_24B75B788();
  v21 = v56;
  v67 = v56;
  v68 = a5;
  v22 = v62;
  v23 = v63;
  v69 = v62;
  v70 = v63;
  v71 = v59;
  v72 = v61;
  sub_24B75C078();
  v24 = sub_24B75B9D8();
  v81 = v21;
  v82 = a5;
  v83 = v22;
  v84 = v23;
  type metadata accessor for ProgramDetailView(0, &v81);
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v25 = v82;
  WitnessTable = swift_getWitnessTable();
  v27 = v48;
  sub_24B7274C0(v24, v25, 0, v9, WitnessTable);
  (*(v50 + 8))(v11, v9);
  v28 = sub_24B75B9F8();
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v29 = v84;
  v30 = sub_24B73593C(&qword_27F0345C8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  v79 = WitnessTable;
  v80 = v30;
  v31 = swift_getWitnessTable();
  v32 = v51;
  sub_24B7274C0(v28, v29, 0, v12, v31);
  v33 = v12;
  v34 = v49;
  (*(v52 + 8))(v27, v33);
  v35 = sub_24B75B9C8();
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v36 = v81;
  v77 = v31;
  v78 = v30;
  v37 = v30;
  v38 = v53;
  v39 = swift_getWitnessTable();
  sub_24B7274C0(v35, v36, 0, v38, v39);
  (*(v54 + 8))(v32, v38);
  sub_24B75B9B8();
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  if (v85 < 7u || (sub_24B7275FC(), swift_getKeyPath(), sub_24B75C218(), , , v86 == 1))
  {
    sub_24B75B478();
  }

  v75 = v39;
  v76 = v37;
  v40 = v60;
  v41 = swift_getWitnessTable();
  v42 = v55;
  sub_24B75BE48();
  (*(v58 + 8))(v34, v40);
  v73 = v41;
  v74 = MEMORY[0x277CDF918];
  v43 = v65;
  swift_getWitnessTable();
  v44 = v57;
  sub_24B6C7504();
  v45 = *(v64 + 8);
  v45(v42, v43);
  sub_24B6C7504();
  return (v45)(v44, v43);
}

uint64_t sub_24B731F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v67 = a6;
  v66 = a5;
  v64 = a4;
  v65 = a2;
  v51 = a1;
  v61 = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E98, &qword_24B766D70);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  v53 = sub_24B75C178();
  v55 = sub_24B75BF88();
  v58 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v46 - v8;
  v57 = sub_24B75B558();
  v59 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v60 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = &v46 - v11;
  MEMORY[0x28223BE20](v12);
  v56 = &v46 - v13;
  sub_24B75B958();
  v46 = a3;
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E70, &qword_24B766D48);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E78, &qword_24B766D50);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  v50 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  v49 = sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E80, &qword_24B766D58);
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E88, &qword_24B766D60);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E90, &qword_24B766D68);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  v14 = sub_24B75B7B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = sub_24B75B558();
  v63 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v62 = &v46 - v22;
  v23 = type metadata accessor for WorkoutProgram(0);
  v24 = v23[12];
  v25 = v23[10];
  v26 = v23[5];
  v77 = a3;
  v78 = v64;
  v79 = v66;
  v80 = v67;
  v47 = type metadata accessor for ProgramDetailView(0, &v77);
  v27 = v51;
  sub_24B727B08(v65, v65 + v24, v65 + v25, v65 + v26, v65, v47, v17);
  sub_24B75B9C8();
  WitnessTable = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  v83 = WitnessTable;
  v84 = v29;
  v30 = swift_getWitnessTable();
  sub_24B75BE48();
  (*(v15 + 8))(v17, v14);
  v81 = v30;
  v82 = MEMORY[0x277CDF918];
  v48 = swift_getWitnessTable();
  sub_24B6C7504();
  v49 = *(v63 + 8);
  v49(v20, v18);
  v68 = v46;
  v69 = v64;
  v70 = v66;
  v71 = v67;
  v72 = v27;
  v73 = v65;
  v31 = swift_getWitnessTable();
  v32 = v52;
  sub_24B75BF78();
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v76[4] = v31;
  v33 = v55;
  v34 = swift_getWitnessTable();
  v35 = v54;
  sub_24B75BE28();
  (*(v58 + 8))(v32, v33);
  v76[2] = v34;
  v76[3] = MEMORY[0x277CDF748];
  v36 = v57;
  v37 = swift_getWitnessTable();
  v38 = v56;
  sub_24B6C7504();
  v39 = v59;
  v40 = *(v59 + 8);
  v40(v35, v36);
  v41 = v62;
  (*(v63 + 16))(v20, v62, v18);
  v77 = v20;
  v42 = *(v39 + 16);
  v43 = v60;
  v42(v60, v38, v36);
  v78 = v43;
  v76[0] = v18;
  v76[1] = v36;
  v74 = v48;
  v75 = v37;
  sub_24B7386C4(&v77, 2uLL, v76);
  v40(v38, v36);
  v44 = v49;
  v49(v41, v18);
  v40(v43, v36);
  return v44(v20, v18);
}

uint64_t sub_24B7328B8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = a2;
  v39 = a7;
  v11 = sub_24B75B558();
  v38 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v37 = &v34 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035E98, &qword_24B766D70);
  v35 = v16;
  MEMORY[0x28223BE20](v16);
  v36 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - v19;
  *v20 = sub_24B75B788();
  *(v20 + 1) = 0x4034000000000000;
  v20[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0360E0, &qword_24B767048);
  sub_24B732C18(v34, a3, a4, a5, a6, &v20[*(v21 + 44)]);
  v22 = sub_24B75B9C8();
  sub_24B75B3D8();
  v23 = &v20[*(v16 + 36)];
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v46 = a6;
  type metadata accessor for ProgramDetailView(0, &v43);
  sub_24B75B568();
  sub_24B75B998();
  sub_24B75BD68();
  v42[2] = a6;
  v42[3] = MEMORY[0x277CE0880];
  WitnessTable = swift_getWitnessTable();
  v29 = v37;
  sub_24B6C7504();
  v30 = v38;
  v31 = *(v38 + 8);
  v31(v13, v11);
  v32 = v36;
  sub_24B6B9D34(v20, v36, &qword_27F035E98, &qword_24B766D70);
  v43 = v32;
  (*(v30 + 16))(v13, v29, v11);
  v44 = v13;
  v42[0] = v35;
  v42[1] = v11;
  v40 = sub_24B734CB8();
  v41 = WitnessTable;
  sub_24B7386C4(&v43, 2uLL, v42);
  v31(v29, v11);
  sub_24B6B9CD4(v20, &qword_27F035E98, &qword_24B766D70);
  v31(v13, v11);
  return sub_24B6B9CD4(v32, &qword_27F035E98, &qword_24B766D70);
}

uint64_t sub_24B732C18@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v54 = a1;
  v59 = a6;
  v57 = sub_24B75B1F8();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v51 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_24B75AF28();
  MEMORY[0x28223BE20](v49);
  v47 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036100, &qword_24B767058);
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v53 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v52 = &v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036108, &qword_24B767060);
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036110, &qword_24B767068);
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036118, &qword_24B767070);
  MEMORY[0x28223BE20](v21 - 8);
  v50 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v47 - v24;
  v60[0] = a2;
  v60[1] = a3;
  v60[2] = a4;
  v60[3] = a5;
  v26 = type metadata accessor for ProgramDetailView(0, v60);
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v48 = v25;
  if (v61 <= 6u && (sub_24B7275FC(), swift_getKeyPath(), sub_24B75C218(), , , v62 == 1))
  {
    swift_storeEnumTagMultiPayload();
    sub_24B734D70();
    sub_24B75B7A8();
    v27 = v54;
  }

  else
  {
    v27 = v54;
    sub_24B72C2F8(v54, v26, v17);
    sub_24B6B9D34(v17, v20, &qword_27F036108, &qword_24B767060);
    swift_storeEnumTagMultiPayload();
    sub_24B734D70();
    sub_24B75B7A8();
    sub_24B6B9CD4(v17, &qword_27F036108, &qword_24B767060);
  }

  v28 = type metadata accessor for WorkoutProgram(0);
  v29 = *(v27 + *(v28 + 28));
  v30 = *(v28 + 44);
  sub_24B75AF18();
  sub_24B73593C(&qword_27F034938, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
  v31 = sub_24B75C378();
  v33 = v32;
  sub_24B7275FC();
  swift_getKeyPath();
  v34 = v51;
  sub_24B75C218();

  v35 = v27 + v30;
  v36 = v52;
  sub_24B72D498(v35, v29, v31, v33, v34, v26, v52);

  (*(v55 + 8))(v34, v57);
  v37 = v48;
  v38 = v50;
  sub_24B6B9D34(v48, v50, &qword_27F036118, &qword_24B767070);
  v39 = v56;
  v40 = *(v56 + 16);
  v41 = v53;
  v42 = v58;
  v40(v53, v36, v58);
  v43 = v59;
  sub_24B6B9D34(v38, v59, &qword_27F036118, &qword_24B767070);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036140, &qword_24B767080);
  v40((v43 + *(v44 + 48)), v41, v42);
  v45 = *(v39 + 8);
  v45(v36, v42);
  sub_24B6B9CD4(v37, &qword_27F036118, &qword_24B767070);
  v45(v41, v42);
  return sub_24B6B9CD4(v38, &qword_27F036118, &qword_24B767070);
}

uint64_t sub_24B73326C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24B75B808();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035EA8, &qword_24B766D80);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17[-v13];
  sub_24B75B7F8();
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035FF8, &qword_24B766ED0);
  sub_24B7346D4();
  sub_24B75B598();
  v15 = sub_24B6C743C(&qword_27F035EB0, &qword_27F035EA8, &qword_24B766D80, MEMORY[0x277CDDB60]);
  MEMORY[0x24C247AE0](v14, v11, v15);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_24B73345C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v68 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036018, &qword_24B766EE0);
  v69 = *(v11 - 8);
  v70 = v11;
  MEMORY[0x28223BE20](v11);
  v67 = &v54[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v72 = &v54[-v14];
  v73[0] = a2;
  v59 = a2;
  v60 = a3;
  v73[1] = a3;
  v73[2] = a4;
  v61 = a4;
  v73[3] = a5;
  v15 = type metadata accessor for ProgramDetailView(0, v73);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v54[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036020, &qword_24B766EE8);
  v62 = *(v19 - 8);
  v63 = v19;
  MEMORY[0x28223BE20](v19);
  v58 = &v54[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036028, &qword_24B766EF0);
  v65 = *(v21 - 8);
  v66 = v21;
  MEMORY[0x28223BE20](v21);
  v64 = &v54[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v71 = &v54[-v24];
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v56 = sub_24B75B728();
  v26 = v25;
  v55 = v27;
  v29 = v28;
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  if (LOBYTE(v73[0]))
  {
    v30 = 1937075312;
  }

  else
  {
    v30 = 0x72616D6B63656863;
  }

  if (LOBYTE(v73[0]))
  {
    v31 = 0xE400000000000000;
  }

  else
  {
    v31 = 0xE90000000000006BLL;
  }

  (*(v16 + 16))(v18, a1, v15);
  v32 = *(v16 + 80);
  v57 = a1;
  v33 = (v32 + 48) & ~v32;
  v34 = swift_allocObject();
  v35 = v60;
  *(v34 + 2) = v59;
  *(v34 + 3) = v35;
  *(v34 + 4) = v61;
  *(v34 + 5) = a5;
  v36 = (*(v16 + 32))(&v34[v33], v18, v15);
  MEMORY[0x28223BE20](v36);
  *&v54[-48] = v56;
  *&v54[-40] = v26;
  v54[-32] = v55 & 1;
  *&v54[-24] = v29;
  *&v54[-16] = v30;
  *&v54[-8] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035898, &qword_24B764A10);
  sub_24B6C743C(&qword_27F0358A0, &qword_27F035898, &qword_24B764A10, MEMORY[0x277CDEFF0]);
  v37 = v58;
  sub_24B75BFE8();

  sub_24B6C743C(&qword_27F036030, &qword_27F036020, &qword_24B766EE8, MEMORY[0x277CDF028]);
  sub_24B73486C();
  v38 = v71;
  v39 = v63;
  sub_24B75BD08();
  (*(v62 + 8))(v37, v39);
  v40 = v72;
  sub_24B72E2DC(v15, v72);
  v41 = v64;
  v42 = v65;
  v43 = *(v65 + 16);
  v44 = v66;
  v43(v64, v38, v66);
  v45 = v69;
  v63 = *(v69 + 16);
  v46 = v67;
  v47 = v40;
  v48 = v70;
  v63(v67, v47, v70);
  v49 = v68;
  v43(v68, v41, v44);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036040, &qword_24B766F20);
  v63(&v49[*(v50 + 48)], v46, v48);
  v51 = *(v45 + 8);
  v51(v72, v48);
  v52 = *(v42 + 8);
  v52(v71, v44);
  v51(v46, v48);
  return (v52)(v41, v44);
}

uint64_t sub_24B733B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v79 = a4;
  v80 = a5;
  v77 = a2;
  v78 = a3;
  v73 = a6;
  v81 = a2;
  v82 = a3;
  v83 = a4;
  v84 = a5;
  v7 = type metadata accessor for ProgramDetailView(0, &v81);
  v68 = *(v7 - 8);
  v76 = *(v68 + 64);
  MEMORY[0x28223BE20](v7);
  v74 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035FE8, &unk_24B766EB8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v55 - v10;
  v12 = sub_24B75B1F8();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24B75C2F8();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034918, &unk_24B75FCE0);
  v72 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v71 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v70 = &v55 - v20;
  MEMORY[0x28223BE20](v21);
  v69 = &v55 - v22;
  MEMORY[0x28223BE20](v23);
  v75 = &v55 - v24;
  v58 = v17;
  sub_24B75C2E8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v67 = ObjCClassFromMetadata;
  v61 = objc_opt_self();
  v26 = [v61 bundleForClass_];
  v27 = a1;
  sub_24B7275FC();
  swift_getKeyPath();
  v60 = v14;
  sub_24B75C218();

  v81 = sub_24B75C348();
  v82 = v28;
  sub_24B75B3A8();
  v65 = sub_24B75B3C8();
  v29 = *(v65 - 8);
  v64 = *(v29 + 56);
  v66 = v29 + 56;
  v57 = v11;
  v64(v11, 0, 1, v65);
  v30 = v68;
  v62 = *(v68 + 16);
  v31 = v74;
  v62(v74, a1, v7);
  v32 = (*(v30 + 80) + 48) & ~*(v30 + 80);
  v33 = swift_allocObject();
  v34 = v78;
  v33[2] = v77;
  v33[3] = v34;
  v35 = v80;
  v33[4] = v79;
  v33[5] = v35;
  v68 = *(v30 + 32);
  v56 = v7;
  (v68)(v33 + v32, v31, v7);
  v59 = sub_24B6E89B0();
  sub_24B75BFF8();
  sub_24B75C2E8();
  v36 = [v61 bundleForClass_];
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v81 = sub_24B75C348();
  v82 = v37;
  v38 = v57;
  sub_24B75B3B8();
  v64(v38, 0, 1, v65);
  v39 = v74;
  v40 = v56;
  v62(v74, v27, v56);
  v41 = swift_allocObject();
  v42 = v78;
  v41[2] = v77;
  v41[3] = v42;
  v43 = v80;
  v41[4] = v79;
  v41[5] = v43;
  (v68)(v41 + v32, v39, v40);
  v44 = v69;
  sub_24B75BFF8();
  v45 = v72;
  v46 = *(v72 + 16);
  v47 = v70;
  v48 = v75;
  v49 = v63;
  v46(v70, v75, v63);
  v50 = v71;
  v46(v71, v44, v49);
  v51 = v73;
  v46(v73, v47, v49);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035FF0, &qword_24B766EC8);
  v46(&v51[*(v52 + 48)], v50, v49);
  v53 = *(v45 + 8);
  v53(v44, v49);
  v53(v48, v49);
  v53(v50, v49);
  return (v53)(v47, v49);
}

uint64_t sub_24B734258@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_24B75B1F8();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_24B75C2F8();
  MEMORY[0x28223BE20](v11 - 8);
  sub_24B75C2E8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = a3;
  v18[3] = a4;
  type metadata accessor for ProgramDetailView(0, v18);
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  result = sub_24B75BB58();
  *a5 = result;
  *(a5 + 8) = v15;
  *(a5 + 16) = v16 & 1;
  *(a5 + 24) = v17;
  return result;
}

void sub_24B73446C(uint64_t a1)
{
  sub_24B7345B4(319);
  if (v3 <= 0x3F)
  {
    v17 = 0;
    v22 = v2;
    v4 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035010, &unk_24B761E40);
    swift_getFunctionTypeMetadata1();
    v5 = sub_24B75B288();
    if (v6 <= 0x3F)
    {
      v18 = 0;
      v23 = v5;
      v7 = *(a1 + 40);
      v14 = v4;
      v15 = *(a1 + 24);
      v16 = v7;
      v8 = type metadata accessor for ProgramDetailView.Layout(319, &v14);
      if (v9 <= 0x3F)
      {
        v19 = 0;
        v24 = v8;
        sub_24B6C71E0(319);
        if (v11 <= 0x3F)
        {
          v20 = 0;
          v25 = v10;
          v12 = swift_checkMetadataState();
          if (v13 <= 0x3F)
          {
            v21 = 0;
            v26 = v12;
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24B7345B4(uint64_t a1)
{
  if (!qword_27F035F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035F58, qword_24B766E48);
    sub_24B6C743C(qword_27F035F60, &qword_27F035F58, qword_24B766E48, MEMORY[0x277D04410]);
    v1 = sub_24B75B418();
    if (!v2)
    {
      atomic_store(v1, &qword_27F035F50);
    }
  }
}

uint64_t sub_24B734670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_24B7346D4()
{
  result = qword_27F036000;
  if (!qword_27F036000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035FF8, &qword_24B766ED0);
    sub_24B6C743C(&qword_27F036008, &qword_27F036010, &qword_24B766ED8, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036000);
  }

  return result;
}

uint64_t sub_24B7347C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_24B75BFC8();
}