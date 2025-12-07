uint64_t sub_24ED49784(void (*a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  v83 = a8;
  v85 = a7;
  v79 = a5;
  LODWORD(v78) = a4;
  v76 = a2;
  v90 = a1;
  v84 = sub_24F928698();
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225030, &unk_24F98A430);
  v72 = *(v14 - 8);
  v73 = v14;
  MEMORY[0x28223BE20](v14);
  v71 = &v68 - v15;
  v16 = sub_24F929AB8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v68 - v21;
  MEMORY[0x28223BE20](v23);
  v80 = &v68 - v24;
  v25 = (a3 + qword_27F39B480);
  swift_beginAccess();
  v26 = v25[1];
  v69 = *v25;
  v27 = (a3 + qword_27F39B490);
  swift_beginAccess();
  v28 = v27[1];
  v70 = *v27;
  v29 = qword_27F210278;
  v89 = v26;

  v88 = v28;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = off_27F229AB8;
  swift_beginAccess();
  LODWORD(v77) = *(v30 + 88);
  sub_24E60169C(a6, &v95, &qword_27F224FA0, &qword_24F975FD0);
  if (v96)
  {
    sub_24E612C80(&v95, v97);
  }

  else
  {
    v31 = *(*a3 + 192);
    swift_beginAccess();
    sub_24E60169C(a3 + v31, v97, &qword_27F224FA0, &qword_24F975FD0);
    if (v96)
    {
      sub_24E601704(&v95, &qword_27F224FA0, &qword_24F975FD0);
    }
  }

  v32 = *(*a3 + 200);
  swift_beginAccess();
  sub_24E60169C(a3 + v32, &v95, qword_27F224FA8, &qword_24F974A80);
  swift_beginAccess();
  v33 = v30[18];
  v34 = (a3 + *(*a3 + 216));
  swift_beginAccess();
  v35 = *v34;
  v75 = v34[1];
  v36 = (a3 + *(*a3 + 208));
  swift_beginAccess();
  v37 = *v36;
  v74 = v36[1];
  v87 = v37;
  swift_unknownObjectRetain();

  v86 = v35;
  swift_unknownObjectRetain();
  sub_24F929AA8();
  v38 = qword_27F210660;
  v39 = v90;
  swift_unknownObjectRetain();
  if (v38 != -1)
  {
    swift_once();
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225038, &unk_24F974C10);
  __swift_project_value_buffer(v40, qword_27F22E3D0);
  v93 = v39;
  v94 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040, &qword_24F975FC0);
  sub_24F929A48();
  v41 = *(v17 + 8);
  v41(v22, v16);
  swift_unknownObjectRelease();
  v44 = *(v17 + 32);
  v43 = v17 + 32;
  v42 = v44;
  v44(v22, v19, v16);
  if (v89)
  {
    v93 = v69;
    v94 = v89;
    if (qword_27F210670 != -1)
    {
      swift_once();
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
    __swift_project_value_buffer(v45, qword_27F22E400);
    sub_24F929A48();
    v41(v22, v16);
    v42(v22, v19, v16);
  }

  if (v88)
  {
    v93 = v70;
    v94 = v88;
    if (qword_27F210678 != -1)
    {
      swift_once();
    }

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
    __swift_project_value_buffer(v46, qword_27F22E418);
    sub_24F929A48();
    v41(v22, v16);
    v42(v22, v19, v16);
  }

  v90 = v42;
  LOBYTE(v93) = v78 & 1;
  if (qword_27F210680 != -1)
  {
    swift_once();
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048, &unk_24F974C20);
  __swift_project_value_buffer(v47, qword_27F22E430);
  sub_24F929A48();
  v41(v22, v16);
  v48 = v90;
  v90(v22, v19, v16);
  if (v79)
  {
    v93 = v79;
    v79 = v47;
    v49 = v33;
    v50 = v71;
    sub_24F929A78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
    sub_24F929A48();
    v51 = v50;
    v33 = v49;
    v47 = v79;
    (*(v72 + 8))(v51, v73);
    v41(v22, v16);
    v48(v22, v19, v16);
  }

  if (v77 != 2)
  {
    LOBYTE(v93) = v77 & 1;
    if (qword_27F210688 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v47, qword_27F22E448);
    sub_24F929A48();
    v41(v22, v16);
    v90(v22, v19, v16);
  }

  sub_24E60169C(v97, &v91, &qword_27F224FA0, &qword_24F975FD0);
  if (v92)
  {
    sub_24E612C80(&v91, &v93);
    if (qword_27F210690 != -1)
    {
      swift_once();
    }

    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225078, &unk_24F976000);
    __swift_project_value_buffer(v52, qword_27F22E460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225080, &unk_24F974C50);
    sub_24F929A48();
    __swift_destroy_boxed_opaque_existential_1(&v93);
    v41(v22, v16);
    v90(v22, v19, v16);
  }

  else
  {
    sub_24E601704(&v91, &qword_27F224FA0, &qword_24F975FD0);
  }

  sub_24E60169C(&v95, &v91, qword_27F224FA8, &qword_24F974A80);
  if (!v92)
  {
    sub_24E601704(&v91, qword_27F224FA8, &qword_24F974A80);
    if (!v33)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  sub_24E612C80(&v91, &v93);
  if (qword_27F210698 != -1)
  {
    swift_once();
  }

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225068, &unk_24F975FF0);
  __swift_project_value_buffer(v53, qword_27F22E478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225070, &unk_24F974C40);
  sub_24F929A48();
  __swift_destroy_boxed_opaque_existential_1(&v93);
  v41(v22, v16);
  v90(v22, v19, v16);
  if (v33)
  {
LABEL_36:
    v93 = v33;
    v54 = qword_27F2106B0;

    if (v54 != -1)
    {
      swift_once();
    }

    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224460, &unk_24F971A10);
    __swift_project_value_buffer(v55, qword_27F22E4C0);
    type metadata accessor for Action(0);
    sub_24F929A48();
    v41(v22, v16);

    v90(v22, v19, v16);
  }

LABEL_39:
  v79 = a11;
  v78 = a10;
  v56 = v86;
  if (v87)
  {
    v77 = v33;
    v93 = v87;
    v94 = v74;
    v57 = qword_27F2106A8;
    swift_unknownObjectRetain();
    if (v57 != -1)
    {
      swift_once();
    }

    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225058, &unk_24F974C30);
    __swift_project_value_buffer(v58, qword_27F22E4A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225060, &unk_24F98A440);
    sub_24F929A48();
    v41(v22, v16);
    swift_unknownObjectRelease();
    v90(v22, v19, v16);
    v56 = v86;
  }

  if (v56)
  {
    v86 = v43;
    v93 = v56;
    v94 = v75;
    v59 = qword_27F2106A0;
    swift_unknownObjectRetain();
    if (v59 != -1)
    {
      swift_once();
    }

    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225050, &unk_24F975FE0);
    __swift_project_value_buffer(v60, qword_27F22E490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F90, &qword_24F989D00);
    sub_24F929A48();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v41(v22, v16);
    sub_24E601704(&v95, qword_27F224FA8, &qword_24F974A80);
    sub_24E601704(v97, &qword_27F224FA0, &qword_24F975FD0);
    swift_unknownObjectRelease();
    v61 = v90;
    v90(v22, v19, v16);
  }

  else
  {

    swift_unknownObjectRelease();
    sub_24E601704(&v95, qword_27F224FA8, &qword_24F974A80);
    sub_24E601704(v97, &qword_27F224FA0, &qword_24F975FD0);
    v61 = v90;
  }

  v62 = v80;
  v61(v80, v22, v16);
  v63 = v81;
  sub_24F928718();
  sub_24F929138();
  (*(v82 + 8))(v63, v84);
  *(swift_allocObject() + 16) = a9;
  v64 = sub_24E74EC40();
  v65 = a9;
  v66 = sub_24F92BEF8();
  v97[3] = v64;
  v97[4] = MEMORY[0x277D225C0];
  v97[0] = v66;
  sub_24F92A998();

  v41(v62, v16);
  return __swift_destroy_boxed_opaque_existential_1(v97);
}

uint64_t sub_24ED4A614(void (*a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  v83 = a8;
  v85 = a7;
  v79 = a5;
  LODWORD(v78) = a4;
  v76 = a2;
  v90 = a1;
  v84 = sub_24F928698();
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225030, &unk_24F98A430);
  v72 = *(v14 - 8);
  v73 = v14;
  MEMORY[0x28223BE20](v14);
  v71 = &v68 - v15;
  v16 = sub_24F929AB8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v68 - v21;
  MEMORY[0x28223BE20](v23);
  v80 = &v68 - v24;
  v25 = (a3 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_pageContext);
  swift_beginAccess();
  v26 = v25[1];
  v69 = *v25;
  v27 = (a3 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_referrer);
  swift_beginAccess();
  v28 = v27[1];
  v70 = *v27;
  v29 = qword_27F210278;
  v89 = v26;

  v88 = v28;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = off_27F229AB8;
  swift_beginAccess();
  LODWORD(v77) = *(v30 + 88);
  sub_24E60169C(a6, &v95, &qword_27F224FA0, &qword_24F975FD0);
  if (v96)
  {
    sub_24E612C80(&v95, v97);
    v31 = v90;
  }

  else
  {
    v32 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_advertRotationData;
    swift_beginAccess();
    sub_24E60169C(a3 + v32, v97, &qword_27F224FA0, &qword_24F975FD0);
    v31 = v90;
    if (v96)
    {
      sub_24E601704(&v95, &qword_27F224FA0, &qword_24F975FD0);
    }
  }

  v33 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_searchGhostHintData;
  swift_beginAccess();
  sub_24E60169C(a3 + v33, &v95, qword_27F224FA8, &qword_24F974A80);
  swift_beginAccess();
  v34 = v30[18];
  v35 = (a3 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_deviceWindowData);
  swift_beginAccess();
  v36 = *v35;
  v75 = v35[1];
  v37 = (a3 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_impressionsAppendixData);
  swift_beginAccess();
  v38 = *v37;
  v74 = v37[1];
  v87 = v38;
  swift_unknownObjectRetain();

  v86 = v36;
  swift_unknownObjectRetain();
  sub_24F929AA8();
  v39 = qword_27F210660;
  swift_unknownObjectRetain();
  if (v39 != -1)
  {
    swift_once();
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225038, &unk_24F974C10);
  __swift_project_value_buffer(v40, qword_27F22E3D0);
  v93 = v31;
  v94 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040, &qword_24F975FC0);
  sub_24F929A48();
  v41 = *(v17 + 8);
  v41(v22, v16);
  swift_unknownObjectRelease();
  v44 = *(v17 + 32);
  v43 = v17 + 32;
  v42 = v44;
  v44(v22, v19, v16);
  if (v89)
  {
    v93 = v69;
    v94 = v89;
    if (qword_27F210670 != -1)
    {
      swift_once();
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
    __swift_project_value_buffer(v45, qword_27F22E400);
    sub_24F929A48();
    v41(v22, v16);
    v42(v22, v19, v16);
  }

  if (v88)
  {
    v93 = v70;
    v94 = v88;
    if (qword_27F210678 != -1)
    {
      swift_once();
    }

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
    __swift_project_value_buffer(v46, qword_27F22E418);
    sub_24F929A48();
    v41(v22, v16);
    v42(v22, v19, v16);
  }

  v90 = v42;
  LOBYTE(v93) = v78 & 1;
  if (qword_27F210680 != -1)
  {
    swift_once();
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048, &unk_24F974C20);
  __swift_project_value_buffer(v47, qword_27F22E430);
  sub_24F929A48();
  v41(v22, v16);
  v48 = v90;
  v90(v22, v19, v16);
  if (v79)
  {
    v93 = v79;
    v79 = v47;
    v49 = v34;
    v50 = v71;
    sub_24F929A78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
    sub_24F929A48();
    v51 = v50;
    v34 = v49;
    v47 = v79;
    (*(v72 + 8))(v51, v73);
    v41(v22, v16);
    v48(v22, v19, v16);
  }

  if (v77 != 2)
  {
    LOBYTE(v93) = v77 & 1;
    if (qword_27F210688 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v47, qword_27F22E448);
    sub_24F929A48();
    v41(v22, v16);
    v90(v22, v19, v16);
  }

  sub_24E60169C(v97, &v91, &qword_27F224FA0, &qword_24F975FD0);
  if (v92)
  {
    sub_24E612C80(&v91, &v93);
    if (qword_27F210690 != -1)
    {
      swift_once();
    }

    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225078, &unk_24F976000);
    __swift_project_value_buffer(v52, qword_27F22E460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225080, &unk_24F974C50);
    sub_24F929A48();
    __swift_destroy_boxed_opaque_existential_1(&v93);
    v41(v22, v16);
    v90(v22, v19, v16);
  }

  else
  {
    sub_24E601704(&v91, &qword_27F224FA0, &qword_24F975FD0);
  }

  sub_24E60169C(&v95, &v91, qword_27F224FA8, &qword_24F974A80);
  if (!v92)
  {
    sub_24E601704(&v91, qword_27F224FA8, &qword_24F974A80);
    if (!v34)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  sub_24E612C80(&v91, &v93);
  if (qword_27F210698 != -1)
  {
    swift_once();
  }

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225068, &unk_24F975FF0);
  __swift_project_value_buffer(v53, qword_27F22E478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225070, &unk_24F974C40);
  sub_24F929A48();
  __swift_destroy_boxed_opaque_existential_1(&v93);
  v41(v22, v16);
  v90(v22, v19, v16);
  if (v34)
  {
LABEL_36:
    v93 = v34;
    v54 = qword_27F2106B0;

    if (v54 != -1)
    {
      swift_once();
    }

    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224460, &unk_24F971A10);
    __swift_project_value_buffer(v55, qword_27F22E4C0);
    type metadata accessor for Action(0);
    sub_24F929A48();
    v41(v22, v16);

    v90(v22, v19, v16);
  }

LABEL_39:
  v79 = a11;
  v78 = a10;
  v56 = v86;
  if (v87)
  {
    v77 = v34;
    v93 = v87;
    v94 = v74;
    v57 = qword_27F2106A8;
    swift_unknownObjectRetain();
    if (v57 != -1)
    {
      swift_once();
    }

    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225058, &unk_24F974C30);
    __swift_project_value_buffer(v58, qword_27F22E4A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225060, &unk_24F98A440);
    sub_24F929A48();
    v41(v22, v16);
    swift_unknownObjectRelease();
    v90(v22, v19, v16);
    v56 = v86;
  }

  if (v56)
  {
    v86 = v43;
    v93 = v56;
    v94 = v75;
    v59 = qword_27F2106A0;
    swift_unknownObjectRetain();
    if (v59 != -1)
    {
      swift_once();
    }

    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225050, &unk_24F975FE0);
    __swift_project_value_buffer(v60, qword_27F22E490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F90, &qword_24F989D00);
    sub_24F929A48();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v41(v22, v16);
    sub_24E601704(&v95, qword_27F224FA8, &qword_24F974A80);
    sub_24E601704(v97, &qword_27F224FA0, &qword_24F975FD0);
    swift_unknownObjectRelease();
    v61 = v90;
    v90(v22, v19, v16);
  }

  else
  {

    swift_unknownObjectRelease();
    sub_24E601704(&v95, qword_27F224FA8, &qword_24F974A80);
    sub_24E601704(v97, &qword_27F224FA0, &qword_24F975FD0);
    v61 = v90;
  }

  v62 = v80;
  v61(v80, v22, v16);
  v63 = v81;
  sub_24F928718();
  sub_24F929138();
  (*(v82 + 8))(v63, v84);
  *(swift_allocObject() + 16) = a9;
  v64 = sub_24E74EC40();
  v65 = a9;
  v66 = sub_24F92BEF8();
  v97[3] = v64;
  v97[4] = MEMORY[0x277D225C0];
  v97[0] = v66;
  sub_24F92A998();

  v41(v62, v16);
  return __swift_destroy_boxed_opaque_existential_1(v97);
}

unint64_t ProductNavigationBarMode.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_24ED4B4AC@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

unint64_t sub_24ED4B508@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24ED5C928(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_24ED4B53C()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39C670);
  __swift_project_value_buffer(v4, qword_27F39C670);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t sub_24ED4B6E0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24ED4B74C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EB09F58;
}

double sub_24ED4B850(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_pageRefreshPolicy) = a1;

  v2 = v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
    v6 = *(v5 + 8);

    v6(v7, ObjectType, v5);

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_24ED4B930(char a1)
{
  v2 = a1 & 1;
  v3 = sub_24F91F648();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 32) != v2)
  {
    if (*(v1 + 32))
    {
      swift_beginAccess();
      v7 = *(v1 + 16);
      if (v7)
      {
        v8 = *(v7 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v9 = *(v8 + 48);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return;
        }

        *(v8 + 48) = v11;
        v12 = v11 == 0;
        swift_beginAccess();
        *(v8 + 40) = v12;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {

          sub_24EA6BFA0();

LABEL_10:
        }
      }
    }

    else
    {
      swift_beginAccess();
      if (*(v1 + 16))
      {

        sub_24F91F638();
        sub_24F91F5E8();
        v14 = v13;
        (*(v4 + 8))(v6, v3);
        PendingPageRender.initialRequestEndTime.setter(v14, 0);

        if (*(v1 + 16))
        {

          sub_24ED6F318();
          goto LABEL_10;
        }
      }
    }
  }
}

void sub_24ED4BB30(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
  v4 = v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
  if (a1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(*(*(v5 + 16) + 24) + 8))(ObjectType);
LABEL_6:
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v4 + 8);
      v8 = swift_getObjectType();
      (*(*(*(v7 + 16) + 24) + 16))(v8);
      goto LABEL_6;
    }
  }

  sub_24ED4B930(v3);
}

void (*sub_24ED4BC3C(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 120) = v1;
  swift_beginAccess();
  *(v4 + 128) = *(v1 + 32);
  return sub_24ED4BCC8;
}

void sub_24ED4BCC8(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 15);
  v4 = (*a1)[128];
  v5 = *(v3 + 32);
  *(v3 + 32) = v4;
  v6 = v3 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
  if (a2)
  {
    if (v4)
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
LABEL_5:
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_10;
    }

    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v9 = (*(*(v7 + 16) + 24) + 8);
    goto LABEL_9;
  }

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_10;
  }

  v10 = *(v6 + 8);
  ObjectType = swift_getObjectType();
  v9 = (*(*(v10 + 16) + 24) + 16);
LABEL_9:
  (*v9)(ObjectType);
  swift_unknownObjectRelease();
LABEL_10:
  sub_24ED4B930(v5);

  free(v2);
}

uint64_t ProductPresenter.__allocating_init(objectGraph:productUrl:productPage:appStateController:purchaseHistory:restrictions:fullProductFetchedAction:referrerData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, __int128 *a9)
{
  v14 = swift_allocObject();
  v32 = *(a9 + 4);
  v31 = *(a9 + 40);
  *(v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_pageRefreshPolicy) = 0;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isFetchingShelves) = 0;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_numberOfActiveRequests) = 0;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct) = 0;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_hasBeenPurchasedForReviewsContainer) = 2;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isLocalApplicationForAppEvents) = 2;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_shouldDisplayBetaBanner) = 0;
  v15 = (v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentBetaBundleVersion);
  *v15 = 0;
  v15[1] = 0;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isPurchased) = 0;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isMediaExpanded) = 0;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_didAskToBuy) = 0;
  v16 = (v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentlyObservedAdamId);
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_productUrl;
  v35 = sub_24F91F4A8();
  v18 = *(v35 - 8);
  v28 = a9[1];
  v29 = *a9;
  (*(v18 + 16))(v14 + v17, a2, v35);
  *(v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct) = a3;
  v19 = (v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController);
  *v19 = a4;
  v19[1] = a5;
  sub_24E615E00(a6, v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_purchaseHistory);
  type metadata accessor for CompleteMyBundleController();
  v20 = swift_allocObject();
  v20[4] = 0;
  swift_unknownObjectWeakInit();
  v21 = MEMORY[0x277D84FA0];
  v20[5] = 0;
  v20[6] = v21;
  v20[2] = a1;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_completeMyBundleController) = v20;
  sub_24E615E00(a7, v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_restrictions);
  *(v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProductFetchedAction) = a8;
  v22 = v14 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData;
  *v22 = v29;
  *(v22 + 16) = v28;
  *(v22 + 32) = v32;
  *(v22 + 40) = v31;

  swift_unknownObjectRetain();
  v23 = sub_24EC8415C(a1, 0, 0, 0);
  *(*(v23 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_completeMyBundleController) + 32) = &off_2861F0BE0;
  swift_unknownObjectWeakAssign();
  v24 = objc_opt_self();
  swift_retain_n();
  v25 = [v24 defaultCenter];
  v26 = sub_24F92B098();
  __swift_project_boxed_opaque_existential_1(a7, a7[3]);
  [v25 addObserver:v23 selector:sel_restrictionsDidChange_ name:v26 object:sub_24F92CDE8()];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a6);
  (*(v18 + 8))(a2, v35);
  __swift_destroy_boxed_opaque_existential_1(a7);
  return v23;
}

uint64_t ProductPresenter.init(objectGraph:productUrl:productPage:appStateController:purchaseHistory:restrictions:fullProductFetchedAction:referrerData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, __int128 *a9)
{
  v33 = *(a9 + 4);
  v32 = *(a9 + 40);
  *(v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_pageRefreshPolicy) = 0;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isFetchingShelves) = 0;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_numberOfActiveRequests) = 0;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct) = 0;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_hasBeenPurchasedForReviewsContainer) = 2;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isLocalApplicationForAppEvents) = 2;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_shouldDisplayBetaBanner) = 0;
  v16 = (v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentBetaBundleVersion);
  *v16 = 0;
  v16[1] = 0;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isPurchased) = 0;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isMediaExpanded) = 0;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_didAskToBuy) = 0;
  v17 = (v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentlyObservedAdamId);
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_productUrl;
  v35 = sub_24F91F4A8();
  v19 = *(v35 - 8);
  v29 = a9[1];
  v30 = *a9;
  (*(v19 + 16))(v9 + v18, a2, v35);
  *(v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct) = a3;
  v20 = (v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController);
  *v20 = a4;
  v20[1] = a5;
  sub_24E615E00(a6, v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_purchaseHistory);
  type metadata accessor for CompleteMyBundleController();
  v21 = swift_allocObject();
  v21[4] = 0;
  swift_unknownObjectWeakInit();
  v22 = MEMORY[0x277D84FA0];
  v21[5] = 0;
  v21[6] = v22;
  v21[2] = a1;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_completeMyBundleController) = v21;
  sub_24E615E00(a7, v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_restrictions);
  *(v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProductFetchedAction) = a8;
  v23 = v9 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData;
  *v23 = v30;
  *(v23 + 16) = v29;
  *(v23 + 32) = v33;
  *(v23 + 40) = v32;

  swift_unknownObjectRetain();
  v24 = sub_24EC8415C(a1, 0, 0, 0);
  *(*(v24 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_completeMyBundleController) + 32) = &off_2861F0BE0;
  swift_unknownObjectWeakAssign();
  v25 = objc_opt_self();
  swift_retain_n();
  v26 = [v25 defaultCenter];
  v27 = sub_24F92B098();
  __swift_project_boxed_opaque_existential_1(a7, a7[3]);
  [v26 addObserver:v24 selector:sel_restrictionsDidChange_ name:v27 object:sub_24F92CDE8()];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a6);
  (*(v19 + 8))(a2, v35);
  __swift_destroy_boxed_opaque_existential_1(a7);
  return v24;
}

uint64_t sub_24ED4C540()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_purchaseHistory));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_restrictions));

  sub_24EA14B54(*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData), *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData + 40));
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view);

  v1 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_productUrl;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t ProductPresenter.deinit()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentlyObservedAdamId);
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentlyObservedAdamId + 8);
  if (v2)
  {
    v3 = *v1;
    v4 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController + 8);
    ObjectType = swift_getObjectType();
    v16[0] = v3;
    v16[1] = v2;
    v6 = *(v4 + 56);

    swift_unknownObjectRetain();
    v6(v16, ObjectType, v4);
    v8 = v7;

    swift_unknownObjectRelease();
    v9 = swift_getObjectType();
    (*(v8 + 80))(v0, v9, v8);
    swift_unknownObjectRelease();
    *v1 = 0;
    v1[1] = 0;
  }

  v10 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController + 8);

  v11 = swift_unknownObjectRetain();
  sub_24E8E5164(v11, v10);

  swift_unknownObjectRelease();
  v12 = BasePresenter.deinit();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v12 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_purchaseHistory));
  __swift_destroy_boxed_opaque_existential_1((v12 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_restrictions));

  sub_24EA14B54(*(v12 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData), *(v12 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData + 8), *(v12 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData + 16), *(v12 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData + 24), *(v12 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData + 32), *(v12 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData + 40));
  sub_24E883630(v12 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view);

  v13 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_productUrl;
  v14 = sub_24F91F4A8();
  (*(*(v14 - 8) + 8))(v12 + v13, v14);

  return v12;
}

uint64_t ProductPresenter.__deallocating_deinit()
{
  ProductPresenter.deinit();

  return swift_deallocClassInstance();
}

double sub_24ED4C938()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14[-v3];
  swift_beginAccess();
  v5 = *(v0 + 16);
  if (v5)
  {
    v6 = qword_27F210788;

    if (v6 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = qword_27F230F98;
    v8 = v5 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
    swift_beginAccess();
    *v8 = v7;
    *(v8 + 8) = 0;
    v9 = *(v5 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
    swift_beginAccess();
    *(v9 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  v10 = sub_24F92B858();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;

  sub_24EA998B8(0, 0, v4, &unk_24F99AA70, v11);

  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v12 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v12 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v12)
    {
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
      goto LABEL_12;
    }
  }

  *(&v16 + 1) = type metadata accessor for ProductPage(0);
  v17 = &off_2861DE828;
  *&v15 = v12;

LABEL_12:
  sub_24E8E49A8(&v15, *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController), *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController + 8));
  sub_24E601704(&v15, &qword_27F221020, &qword_24F9657B8);
  return sub_24ED4CC00(0);
}

double sub_24ED4CC00(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for ProductPageIntent(0);
  MEMORY[0x28223BE20](v4);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F92A088();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v2 + 32) & 1) == 0 && (!*(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct) || (a1))
  {
    v12 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (v12)
    {
      v37 = v8;
      v13 = swift_retain_n();
      sub_24ED4E9F0(v13);
      sub_24ED5BE3C(v12, *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController), *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController + 8), *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_completeMyBundleController));
      v14 = v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v14 + 8);
        v36[1] = swift_getObjectType();
        sub_24EA80068();
        (*(*(v15 + 16) + 32))();

        swift_unknownObjectRelease();
      }

      else
      {
      }

      if (*(v12 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_isComplete) == 1)
      {
        sub_24ED4D25C(v12, v2, v16);
        swift_beginAccess();
        if (*(v2 + 16))
        {
          v39 = type metadata accessor for ProductPage(0);
          v40 = &protocol witness table for ProductPage;
          v41 = sub_24ED5EA84(&qword_27F22ECD8, type metadata accessor for ProductPage, &protocol conformance descriptor for ProductPage);
          v38[0] = v12;

          PendingPageRender.use(pageRenderEventFrom:)(v38);

          sub_24E601704(v38, &qword_27F224F98, &unk_24F974A70);
        }

        else
        {
        }

        return result;
      }

      LOBYTE(v12) = *(v2 + 32);
      v8 = v37;
    }

    *(v2 + 32) = 1;
    v17 = v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v17 + 8);
      ObjectType = swift_getObjectType();
      (*(*(*(v18 + 16) + 24) + 8))(ObjectType);
      swift_unknownObjectRelease();
    }

    sub_24ED4B930(v12);
    swift_beginAccess();
    if (*(v2 + 24))
    {
      *v10 = 1;
      (*(v8 + 104))(v10, *MEMORY[0x277D222A0], v7);

      sub_24F92A0D8();

      (*(v8 + 8))(v10, v7);
    }

    v20 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_productUrl;
    v21 = v4[5];
    v22 = sub_24F91F4A8();
    (*(*(v22 - 8) + 16))(&v6[v21], v2 + v20, v22);
    v23 = v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData;
    v24 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData);
    v25 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData + 8);
    v26 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData + 16);
    v27 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData + 24);
    v28 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_referrerData + 32);
    *v6 = 0xD000000000000011;
    *(v6 + 1) = 0x800000024FA5BE80;
    v6[v4[6]] = 0;
    v29 = &v6[v4[7]];
    *v29 = v24;
    *(v29 + 1) = v25;
    *(v29 + 2) = v26;
    *(v29 + 3) = v27;
    *(v29 + 4) = v28;
    v30 = *(v23 + 40);
    v29[40] = v30;
    type metadata accessor for JSIntentDispatcher();
    sub_24EA145F0(v24, v25, v26, v27, v28, v30);
    sub_24F928FD8();
    sub_24F92A758();
    sub_24F929C28();

    sub_24F928FE8();

    sub_24F929BF8();

    v31 = sub_24F929C08();

    sub_24EB46D7C(v6, v31, "GameStoreKit/ProductPresenter.swift", 35, 2);
    v32 = swift_allocObject();
    swift_weakInit();
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    *(v33 + 24) = v2;
    v34 = sub_24E74EC40();
    swift_retain_n();
    v35 = sub_24F92BEF8();
    v39 = v34;
    v40 = MEMORY[0x277D225C0];
    v38[0] = v35;
    sub_24F92A958();

    sub_24ED5EACC(v6, type metadata accessor for ProductPageIntent);
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return result;
}

double sub_24ED4D25C(void *a1, uint64_t a2, __n128 a3)
{
  v5 = sub_24F91FA78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v100 = &v90 - v10;
  v11 = sub_24F91F968();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v101 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v90 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a1;
  v18 = *(a2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (!v18)
  {

LABEL_19:

    sub_24ED5E7D0(v29);

    sub_24ED4E9F0(a1);
    sub_24ED4F4C8();
    sub_24ED4EE5C(a1);
    v30 = a2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v31 = *(v30 + 8);
      swift_getObjectType();
      sub_24EA80068();
      (*(*(v31 + 16) + 32))();

      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v32 = *(v30 + 8);
      ObjectType = swift_getObjectType();
      (*(*(*(v32 + 16) + 16) + 8))(ObjectType);
      swift_unknownObjectRelease();
    }

    goto LABEL_62;
  }

  if ((sub_24ED5E544(v19, a1) & 1) == 0)
  {

    goto LABEL_19;
  }

  v94 = v8;
  v92 = v6;
  v93 = v5;
  v97 = v12;
  v99 = v18;
  sub_24ED571A0(v18, a1, v16);
  v20 = MEMORY[0x277D84F90];
  v102[0] = MEMORY[0x277D84F90];
  sub_24ED5EA84(&qword_27F22E100, MEMORY[0x277CC9A28], MEMORY[0x277CC9A58]);
  v21 = qword_24F99DB70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218050, qword_24F99DB70);
  sub_24E9723D4(&qword_27F22E108, &qword_27F218050, qword_24F99DB70);
  v98 = v11;
  sub_24F92C6A8();
  v22 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isPurchased;
  swift_beginAccess();
  if (*(a2 + v22))
  {
    v23 = &OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering;
  }

  else
  {
    v23 = &OBJC_IVAR____TtC12GameStoreKit11ProductPage_notPurchasedOrdering;
  }

  v24 = *v23;
  if (*(a1 + v24))
  {
    v25 = *(a1 + v24);
  }

  else
  {
    v25 = v20;
  }

  if (v25 >> 62)
  {
LABEL_72:
    v26 = sub_24F92C738();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = v101;
  if (v26 < 0)
  {
    __break(1u);
    goto LABEL_74;
  }

  if (v26)
  {
    for (i = 0; i != v26; ++i)
    {
      if ((sub_24F91F918() & 1) == 0)
      {
        sub_24F91F8F8();
      }
    }
  }

  v35 = sub_24ED57414(v34, a1);
  v37 = v36;

  v38 = sub_24F92CE08();
  v96 = v35;
  if ((v38 & 1) == 0)
  {
    v90 = v37;
    v41 = sub_24ED570C8();
    v21 = v41;
    v91 = v17;
    if (!(v41 >> 62))
    {
      v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v42)
      {
        goto LABEL_27;
      }

      goto LABEL_37;
    }

LABEL_74:
    v42 = sub_24F92C738();
    if (v42)
    {
LABEL_27:
      v43 = 0;
      v17 = v21 & 0xC000000000000001;
      v95 = v21 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v17)
        {
          v44 = MEMORY[0x253052270](v43, v21);
        }

        else
        {
          if (v43 >= *(v95 + 16))
          {
            goto LABEL_71;
          }

          v44 = *(v21 + 8 * v43 + 32);
        }

        if (*(v44 + 16) <= 1u && *(v44 + 16))
        {
          break;
        }

        v45 = sub_24F92CE08();

        if (v45)
        {
          goto LABEL_40;
        }

        v46 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          __break(1u);
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        ++v43;
        if (v46 == v42)
        {
          goto LABEL_37;
        }
      }

LABEL_40:

      v40 = v90;
      v47 = *(v90 + 16);
      v48 = (v90 + 32);
      v39 = MEMORY[0x277D84F90];
      v17 = v91;
      v27 = v101;
      while (v47)
      {
        v49 = *v48++;
        --v47;
        if (v49 == v43)
        {
          goto LABEL_47;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020, &qword_24F93B450);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_24F93A400;
      *(v50 + 32) = v43;
      *(v50 + 40) = 0;
      MEMORY[0x253045350]();
      v39 = sub_24E618B94(0, 1, 1, MEMORY[0x277D84F90]);
      v52 = *(v39 + 2);
      v51 = *(v39 + 3);
      if (v52 >= v51 >> 1)
      {
        v39 = sub_24E618B94((v51 > 1), v52 + 1, 1, v39);
      }

      *(v39 + 2) = v52 + 1;
      (*(v92 + 32))(&v39[((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v52], v100, v93);
      goto LABEL_47;
    }

LABEL_37:

    v39 = MEMORY[0x277D84F90];
    v17 = v91;
    v27 = v101;
    v40 = v90;
    goto LABEL_47;
  }

  v39 = MEMORY[0x277D84F90];
  v40 = v37;
LABEL_47:
  type metadata accessor for ProductPageSection();
  inited = swift_initStackObject();
  *(inited + 16) = 3;
  *(inited + 24) = 0xD000000000000011;
  *(inited + 32) = 0x800000024FA3F670;
  v54 = sub_24ED570C8();
  v55 = sub_24EB9B734(inited, v54);
  LOBYTE(inited) = v56;

  if ((inited & 1) == 0)
  {
    v57 = *(v40 + 16);
    v58 = (v40 + 32);
    while (v57)
    {
      v59 = *v58++;
      --v57;
      if (v59 == v55)
      {
        goto LABEL_57;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020, &qword_24F93B450);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_24F93A400;
    *(v60 + 32) = v55;
    *(v60 + 40) = 0;
    MEMORY[0x253045350]();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_24E618B94(0, *(v39 + 2) + 1, 1, v39);
    }

    v62 = *(v39 + 2);
    v61 = *(v39 + 3);
    if (v62 >= v61 >> 1)
    {
      v39 = sub_24E618B94((v61 > 1), v62 + 1, 1, v39);
    }

    *(v39 + 2) = v62 + 1;
    (*(v92 + 32))(&v39[((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v62], v94, v93);
  }

LABEL_57:
  v63 = a2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v64 = v17;
    v65 = *(v63 + 8);
    swift_getObjectType();
    v100 = v39;
    sub_24EA80068();
    v66 = *(v65 + 16);
    v17 = v64;
    v27 = v101;
    v39 = v100;
    (*(v66 + 32))();

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v67 = *(v63 + 8);
    v68 = swift_getObjectType();
    (*(v67 + 32))(v27, v39, v96, v40, sub_24ED5E53C, v17, v68, v67);
    v69 = v27;
    v18 = v99;

    swift_unknownObjectRelease();

    v70 = *(v97 + 8);
    v71 = v69;
    v72 = v98;
    v70(v71, v98);
    v70(v16, v72);
  }

  else
  {
    v73 = v27;
    v18 = v99;

    v74 = *(v97 + 8);
    v75 = v73;
    v76 = v98;
    v74(v75, v98);
    v74(v16, v76);
  }

LABEL_62:
  if (*(a2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProductFetchedAction))
  {
    v77 = a2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v78 = *(v77 + 8);
      v79 = swift_getObjectType();
      v103 = type metadata accessor for ProductPresenter(0);
      v102[0] = a2;
      v80 = *(*(v78 + 16) + 8);
      v81 = *(v80 + 8);

      v81(v82, v102, v79, v80);

      swift_unknownObjectRelease();
      sub_24E601704(v102, &qword_27F2129B0, &unk_24F945320);
    }
  }

  if (v18)
  {
    if (*(v18 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_fullProductFetchedAction))
    {
      v83 = a2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v84 = *(v83 + 8);
        v85 = swift_getObjectType();
        v103 = type metadata accessor for ProductPresenter(0);
        v102[0] = a2;
        v86 = *(*(v84 + 16) + 8);
        v87 = *(v86 + 8);

        v87(v88, v102, v85, v86);

        swift_unknownObjectRelease();
        sub_24E601704(v102, &qword_27F2129B0, &unk_24F945320);
      }
    }
  }

  return result;
}

double sub_24ED4DEF4(uint64_t a1, void *a2)
{

  sub_24ED5E7D0(a2);

  sub_24ED4E9F0(a2);
  sub_24ED4F4C8();
  return sub_24ED4EE5C(a2);
}

void sub_24ED4DF44(char **a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24F91F648();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F92A078();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_beginAccess();
    v15 = *(v14 + 16);

    if (v15)
    {
      v40[3] = type metadata accessor for ProductPage(0);
      v40[4] = &protocol witness table for ProductPage;
      v40[5] = sub_24ED5EA84(&qword_27F22ECD8, type metadata accessor for ProductPage, &protocol conformance descriptor for ProductPage);
      v40[0] = v12;

      PendingPageRender.use(pageRenderEventFrom:)(v40);

      sub_24E601704(v40, &qword_27F224F98, &unk_24F974A70);
    }
  }

  swift_beginAccess();
  v16 = swift_weakLoadStrong();
  if (v16)
  {
    v18 = v16;
    swift_beginAccess();
    v19 = *(v18 + 24);

    if (v19)
    {
      v20 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageMetrics;
      v21 = sub_24F928818();
      (*(*(v21 - 8) + 16))(v11, &v12[v20], v21);
      (*(v9 + 104))(v11, *MEMORY[0x277D22290], v8);
      sub_24F92A0C8();

      v17.n128_f64[0] = (*(v9 + 8))(v11, v8);
    }
  }

  sub_24ED4D25C(v12, a3, v17);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
    }

    v22 = sub_24ED5EB2C(v12);

    if (v22)
    {
      swift_beginAccess();
      v23 = swift_weakLoadStrong();
      if (v23)
      {
        sub_24ED5BE3C(v12, *(v23 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController), *(v23 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController + 8), *(v23 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_completeMyBundleController));
      }
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_24ED4B850(v24);
  }

  swift_beginAccess();
  v25 = swift_weakLoadStrong();
  if (v25)
  {
    v26 = v25;
    swift_beginAccess();
    v27 = *(v26 + 16);

    if (v27)
    {
      sub_24F91F638();
      sub_24F91F5E8();
      v29 = v28;
      (*(v38 + 8))(v7, v39);
      v30 = v27 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
      swift_beginAccess();
      *v30 = v29;
      *(v30 + 8) = 0;
      v31 = *(v27 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
      swift_beginAccess();
      *(v31 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }
  }

  swift_beginAccess();
  v32 = swift_weakLoadStrong();
  if (v32)
  {
    v33 = v32;
    swift_beginAccess();
    v34 = *(v33 + 32);
    *(v33 + 32) = 0;
    v35 = v33 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v36 = *(v35 + 8);
      ObjectType = swift_getObjectType();
      (*(*(*(v36 + 16) + 24) + 16))(ObjectType);
      swift_unknownObjectRelease();
    }

    sub_24ED4B930(v34);
  }
}

void sub_24ED4E530(void *a1, uint64_t a2)
{
  v4 = sub_24F92A078();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = (v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PresenterError(0);
  MEMORY[0x28223BE20](v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24ED5E7D0(0);
  swift_beginAccess();
  v10 = *(a2 + 32);
  *(a2 + 32) = 0;
  v11 = a2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(*(*(v12 + 16) + 24) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  sub_24ED4B930(v10);
  v14 = *(v7 + 20);
  v15 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_productUrl;
  v16 = sub_24F91F4A8();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v9[v14], a2 + v15, v16);
  (*(v17 + 56))(&v9[v14], 0, 1, v16);
  *v9 = a1;
  swift_beginAccess();
  v18 = *(a2 + 16);
  if (v18)
  {
    sub_24ED5EA84(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v34[1] = v7;
    v34[0] = swift_allocError();
    sub_24EBDEC38(v9, v19);
    v20 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v21 = *(v18 + v20);
    v22 = a1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v18 + v20) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_24E617130(0, v21[2] + 1, 1, v21);
      *(v18 + v20) = v21;
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      v21 = sub_24E617130((v24 > 1), v25 + 1, 1, v21);
    }

    v21[2] = v25 + 1;
    v21[v25 + 4] = v34[0];
    *(v18 + v20) = v21;
    swift_endAccess();
  }

  else
  {
    v26 = a1;
  }

  swift_beginAccess();
  if (*(a2 + 24))
  {
    *v6 = a1;
    v28 = v35;
    v27 = v36;
    (*(v35 + 104))(v6, *MEMORY[0x277D22280], v36);
    v29 = a1;

    sub_24F92A0C8();

    (*(v28 + 8))(v6, v27);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v30 = *(v11 + 8);
    v31 = swift_getObjectType();
    sub_24ED5EA84(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v32 = swift_allocError();
    sub_24EBDEC38(v9, v33);
    (*(*(*(v30 + 16) + 24) + 24))(v32, v31);
    swift_unknownObjectRelease();
    sub_24ED5EACC(v9, type metadata accessor for PresenterError);
  }

  else
  {
    sub_24ED5EACC(v9, type metadata accessor for PresenterError);
  }
}

double sub_24ED4E9F0(void *a1)
{
  v18[3] = type metadata accessor for ProductPage(0);
  v18[4] = &protocol witness table for ProductPage;
  v18[5] = sub_24ED5EA84(&qword_27F22ECD8, type metadata accessor for ProductPage, &protocol conformance descriptor for ProductPage);
  v18[0] = a1;
  swift_beginAccess();

  sub_24EA095A4(v18, v1 + 40);
  swift_endAccess();
  sub_24EC832DC();
  sub_24E601704(v18, &qword_27F224F98, &unk_24F974A70);
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  if (v3)
  {
    v4 = v3 == a1;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = a1[6];
  v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (v7)
  {
    v8 = *(v7 + 48);

    if (v6)
    {
      if (v8)
      {
        v5 = _s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v6, v8);

        goto LABEL_11;
      }

LABEL_5:
      v5 = 0;
      goto LABEL_11;
    }

    if (v8)
    {

      goto LABEL_5;
    }

    v5 = 1;
  }

  else
  {
    v5 = v6 == 0;
  }

LABEL_11:
  v9 = v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v9 + 8);
    v13 = a1[2];
    v12 = a1[3];
    if (v5)
    {
      v14 = 0;
    }

    else
    {
      v14 = a1[6];
    }

    ObjectType = swift_getObjectType();
    v16 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_isComplete);
    v17 = *(v11 + 48);

    v17(v13, v12, v14, v16, ObjectType, v11);

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_24ED4EC10(char a1)
{
  v2 = v1;
  v4 = sub_24F9287F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (a1)
  {
    sub_24F9287C8();
    sub_24ED46B90(v7, &OBJC_IVAR____TtC12GameStoreKit13BasePresenter_metricsPipeline, &OBJC_IVAR____TtC12GameStoreKit13BasePresenter_impressionsTracker, &unk_2861F1A40, &unk_2861F1A90, sub_24ED5E4C8, sub_24ED5F604, &block_descriptor_358, &block_descriptor_351, &OBJC_IVAR____TtC12GameStoreKit13BasePresenter_impressionsCalculator);
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    swift_getObjectType();
    sub_24F9296B8();
  }

  memset(v13, 0, sizeof(v13));
  swift_beginAccess();
  sub_24EA095A4(v13, v2 + 40);
  swift_endAccess();
  sub_24EC832DC();
  sub_24E601704(v13, &qword_27F224F98, &unk_24F974A70);
  swift_beginAccess();
  v8 = *(v2 + 32);
  *(v2 + 32) = 0;
  v9 = v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(*(*(v10 + 16) + 24) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  sub_24ED4B930(v8);
}

double sub_24ED4EE5C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  *&result = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v6 = &v23 - v5;
  if ((*(a1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_externalVersionIdentifier + 8) & 1) == 0)
  {
    v7 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_updateBuyParams + 8);
    if (v7)
    {
      v9 = a1[2];
      v8 = a1[3];
      v10 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_externalVersionIdentifier);
      v24 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_updateBuyParams);
      v26 = v1;
      v11 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController + 8);
      ObjectType = swift_getObjectType();
      v25 = v9;
      v27[0] = v9;
      v27[1] = v8;
      v13 = *(v11 + 56);

      v13(v27, ObjectType, v11);
      v15 = v14;
      v16 = swift_getObjectType();
      (*(v15 + 16))(v28, v16, v15);
      if (v28[6] >> 60 == 7)
      {
        v17 = [v28[1] integerValue];
        sub_24E88D2AC(v28);
        swift_unknownObjectRelease();
        if (v17 >= v10)
        {
        }

        else if (a1[5] && (v18 = sub_24F92B098(), v19 = [objc_opt_self() applicationProxyForSystemPlaceholder_], v18, v19))
        {
        }

        else
        {
          v20 = sub_24F92B858();
          (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
          v21 = swift_allocObject();
          v21[2] = 0;
          v21[3] = 0;
          v22 = v25;
          v21[4] = v26;
          v21[5] = v22;
          v21[6] = v8;
          v21[7] = v10;
          v21[8] = v24;
          v21[9] = v7;

          sub_24EA998B8(0, 0, v6, &unk_24F99AE90, v21);
        }
      }

      else
      {
        sub_24E88D2AC(v28);

        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_24ED4F120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v10;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  return MEMORY[0x2822009F8](sub_24ED4F150, 0, 0);
}

uint64_t sub_24ED4F150()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = *(v0[4] + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController + 8);
  ObjectType = swift_getObjectType();
  v0[2] = v2;
  v0[3] = v1;
  v10 = (*(v3 + 80) + **(v3 + 80));
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_24ED4F2AC;
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];

  return v10(v0 + 2, v8, v6, v7, ObjectType, v3);
}

uint64_t sub_24ED4F2AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_24ED4F3A0(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isFetchingShelves);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isFetchingShelves) = a1;
  if (v2 != (a1 & 1))
  {
    if ((a1 & 1) == 0)
    {
      swift_beginAccess();
      if (!*(v1 + 16))
      {
        return;
      }

      sub_24ED6F318();
      goto LABEL_9;
    }

    swift_beginAccess();
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
      swift_beginAccess();
      v5 = *(v4 + 48);
      v6 = __OFADD__(v5, 1);
      v7 = v5 + 1;
      if (v6)
      {
        __break(1u);
        return;
      }

      *(v4 + 48) = v7;
      v8 = v7 == 0;
      swift_beginAccess();
      *(v4 + 40) = v8;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {

        sub_24EA6BFA0();

LABEL_9:
      }
    }
  }
}

void sub_24ED4F4C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v74[-v2];
  v4 = sub_24F91F4A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v74[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v95 = &v74[-v9];
  v10 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  if (v10)
  {
    v11 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isPurchased;
    swift_beginAccess();
    v12 = *(v0 + v11) ? &OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering : &OBJC_IVAR____TtC12GameStoreKit11ProductPage_notPurchasedOrdering;
    v13 = *(v10 + *v12);
    if (v13)
    {
      v88 = v0;
      v100 = MEMORY[0x277D84F98];
      v96 = v13 & 0xFFFFFFFFFFFFFF8;
      if (v13 >> 62)
      {
        goto LABEL_70;
      }

      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
      v15 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_shelfMapping;

      v97 = v15;
      swift_beginAccess();
      v89 = v10;
      if (v14)
      {
        v80 = v11;
        v79 = v7;
        v92 = v3;
        v93 = v4;
        v11 = 0;
        v7 = (v13 & 0xC000000000000001);
        v91 = (v5 + 48);
        v87 = (v5 + 32);
        v85 = (v5 + 8);
        v84 = (v5 + 16);
        v78 = v5;
        v77 = v5 + 40;
        v83 = xmmword_24F93DE60;
        v3 = v96;
        v94 = v13 & 0xC000000000000001;
        v90 = v13;
        while (1)
        {
          if (v7)
          {
            v16 = MEMORY[0x253052270](v11, v13);
            v4 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              goto LABEL_67;
            }
          }

          else
          {
            if (v11 >= *(v3 + 2))
            {
              goto LABEL_68;
            }

            v16 = *(v13 + 8 * v11 + 32);

            v4 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              v14 = sub_24F92C738();
              goto LABEL_8;
            }
          }

          if (*(v16 + 16) > 2u)
          {

            v5 = *(v16 + 32);
            if (!v5)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v5 = sub_24F92CE08();

            if ((v5 & 1) == 0 || (v5 = *(v16 + 32)) == 0)
            {
LABEL_10:

              goto LABEL_11;
            }
          }

          v17 = *(v10 + v97);
          if (!*(v17 + 16))
          {
            goto LABEL_10;
          }

          v18 = *(v16 + 24);

          v19 = sub_24E76D644(v18, v5);
          v21 = v20;

          if ((v21 & 1) == 0)
          {

            goto LABEL_26;
          }

          v22 = v14;
          v23 = *(*(v17 + 56) + 8 * v19);

          v24 = v92;
          sub_24E60169C(v23 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, v92, &qword_27F228530, &unk_24F93C6E0);
          v5 = v93;
          if ((*v91)(v24, 1, v93) == 1)
          {

            sub_24E601704(v24, &qword_27F228530, &unk_24F93C6E0);
          }

          else
          {
            v25 = *v87;
            (*v87)(v95, v24, v5);
            v26 = v23;
            if (*(v23 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints) & 8) == 0 || (*(v88 + v80))
            {
              v99[0] = v11;
              v86 = sub_24F92CD88();
              v5 = v27;
              v28 = (v23 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
              v14 = v22;
              if (v100[2] && (sub_24E76D644(*v28, v28[1]), (v29 & 1) != 0))
              {
                v30 = sub_24F4D64CC(v99, *v28, v28[1]);
                v32 = v30;
                v13 = v90;
                if (*v31)
                {
                  v33 = v31;
                  v81 = v30;
                  (*v84)(v79, v95, v93);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v35 = v5;
                  v36 = isUniquelyReferenced_nonNull_native;
                  v98 = *v33;
                  v37 = v98;
                  v76 = v33;
                  *v33 = 0x8000000000000000;
                  v82 = v35;
                  v38 = sub_24E76D644(v86, v35);
                  v40 = v37[2];
                  v41 = (v39 & 1) == 0;
                  v42 = __OFADD__(v40, v41);
                  v43 = v40 + v41;
                  v10 = v89;
                  if (v42)
                  {
                    goto LABEL_72;
                  }

                  if (v37[3] >= v43)
                  {
                    if ((v36 & 1) == 0)
                    {
                      v61 = v38;
                      v62 = v39;
                      sub_24E8B2FC4();
                      LOBYTE(v39) = v62;
                      v38 = v61;
                      v10 = v89;
                    }

                    v5 = v82;
                    if (v39)
                    {
                      goto LABEL_37;
                    }
                  }

                  else
                  {
                    v75 = v39;
                    sub_24E8A27BC(v43, v36);
                    v5 = v82;
                    v38 = sub_24E76D644(v86, v82);
                    if ((v75 & 1) != (v44 & 1))
                    {
                      goto LABEL_74;
                    }

                    if (v75)
                    {
LABEL_37:
                      v45 = v38;

                      v46 = v98;
                      v47 = v98[7] + *(v78 + 72) * v45;
                      v48 = v93;
                      (*(v78 + 40))(v47, v79, v93);
                      goto LABEL_46;
                    }
                  }

                  v46 = v98;
                  v98[(v38 >> 6) + 8] |= 1 << v38;
                  v58 = (v46[6] + 16 * v38);
                  *v58 = v86;
                  v58[1] = v5;
                  v25(v46[7] + *(v78 + 72) * v38, v79, v93);
                  v59 = v46[2];
                  v42 = __OFADD__(v59, 1);
                  v60 = v59 + 1;
                  if (v42)
                  {
                    goto LABEL_73;
                  }

                  v46[2] = v60;
                  v48 = v93;
LABEL_46:
                  *v76 = v46;

                  v81(v99, 0);

                  (*v85)(v95, v48);
LABEL_26:
                }

                else
                {

                  (v32)(v99, 0);

                  (*v85)(v95, v93);

                  v10 = v89;
                }
              }

              else
              {
                v49 = v28[1];
                v81 = *v28;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ED38, &unk_24F9BEA80);
                v82 = v26;
                v50 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2131B8, &qword_24F99AE80) - 8);
                v51 = (*(*v50 + 80) + 32) & ~*(*v50 + 80);
                v52 = swift_allocObject();
                *(v52 + 16) = v83;
                v53 = (v52 + v51);
                v54 = v50[14];
                *v53 = v86;
                v53[1] = v5;
                v55 = v93;
                (*v84)(v53 + v54, v95, v93);

                v5 = sub_24E60E1EC(v52);
                swift_setDeallocating();
                sub_24E601704(v53, &qword_27F2131B8, &qword_24F99AE80);
                swift_deallocClassInstance();
                v56 = v100;
                v57 = swift_isUniquelyReferenced_nonNull_native();
                v99[0] = v56;
                sub_24E820134(v5, v81, v49, v57);

                v100 = v99[0];
                (*v85)(v95, v55);
                v10 = v89;
                v13 = v90;
              }

              v3 = v96;
              v7 = v94;
              goto LABEL_11;
            }

            (*v85)(v95, v93);
          }

          v3 = v96;
          v7 = v94;
          v14 = v22;
          v13 = v90;
LABEL_11:
          ++v11;
          if (v4 == v14)
          {
            v10 = v100;
            goto LABEL_52;
          }
        }
      }

      v10 = MEMORY[0x277D84F98];
LABEL_52:

      v63 = v10[2];
      if (v63)
      {
        v64 = *(v88 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_numberOfActiveRequests);
        v42 = __OFADD__(v64, v63);
        v65 = v64 + v63;
        if (!v42)
        {
          *(v88 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_numberOfActiveRequests) = v65;
          sub_24ED4F3A0(v65 > 0);
          v4 = (v10 + 8);
          v66 = 1 << *(v10 + 32);
          v67 = -1;
          if (v66 < 64)
          {
            v67 = ~(-1 << v66);
          }

          v68 = v67 & v10[8];
          v7 = ((v66 + 63) >> 6);

          v11 = 0;
          while (v68)
          {
            v69 = v11;
LABEL_62:
            v70 = __clz(__rbit64(v68));
            v68 &= v68 - 1;
            v3 = *(v10[7] + ((v69 << 9) | (8 * v70)));

            sub_24E9545A4(v71);
            v5 = v72;

            sub_24ED4FFE8(v5, v73);
          }

          while (1)
          {
            v69 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              goto LABEL_69;
            }

            if (v69 >= v7)
            {

              goto LABEL_65;
            }

            v68 = *(v4 + 8 * v69);
            ++v11;
            if (v68)
            {
              v11 = v69;
              goto LABEL_62;
            }
          }
        }

        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        sub_24F92CF88();
        __break(1u);
      }

      else
      {
LABEL_65:
      }
    }
  }
}

uint64_t sub_24ED4FFE8(uint64_t a1, __n128 a2)
{
  v4 = sub_24F92A088();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v2 + 24))
  {
    *v7 = 0;
    (*(v5 + 104))(v7, *MEMORY[0x277D22298], v4);

    sub_24F92A0D8();

    (*(v5 + 8))(v7, v4);
  }

  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  sub_24F929C28();

  sub_24F928FE8();

  sub_24F929BF8();

  v8 = sub_24F929C18();

  sub_24EB46264(a1, v8, "GameStoreKit/ProductPresenter.swift", 35, 2);
  v9 = sub_24E74EC40();
  swift_retain_n();
  v10 = sub_24F92BEF8();
  v12[3] = v9;
  v12[4] = MEMORY[0x277D225C0];
  v12[0] = v10;
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_24ED50260(uint64_t *a1, uint64_t a2)
{
  v155 = sub_24F91F648();
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v159 = v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  v138 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v156 = v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v158 = v130 - v8;
  MEMORY[0x28223BE20](v9);
  v136 = v130 - v10;
  v145 = sub_24F91F968();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v12 = v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F92A078();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = *a1;
  swift_beginAccess();
  if (*(a2 + 24))
  {
    *v16 = 0;
    (*(v14 + 104))(v16, *MEMORY[0x277D22288], v13);

    sub_24F92A0C8();

    (*(v14 + 8))(v16, v13);
  }

  v147 = v12;
  sub_24F91F958();
  v17 = MEMORY[0x277D84F90];
  v152 = sub_24E60EC14(MEMORY[0x277D84F90]);
  v18 = *(v148 + 16);
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v142 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct;
  v137 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct;
  v23 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isPurchased;
  v149 = v18;

  v150 = a2;
  v139 = v23;
  swift_beginAccess();
  v24 = 0;
  v143 = 0;
  v25 = (v20 + 63) >> 6;
  v141 = "BETA_APP_NO_BUNDLE_BANNER";
  v135 = "helfId for section";
  v134 = " product page at section";
  v133 = xmmword_24F979FB0;
  v151 = xmmword_24F93A400;
  v146 = v17;
  while (v22)
  {
LABEL_11:
    v27 = __clz(__rbit64(v22)) | (v24 << 6);
    v28 = v149;
    sub_24E65864C(*(v149 + 48) + 40 * v27, &v165);
    v29 = *(*(v28 + 56) + 8 * v27);
    v153 = v165;
    v30 = v167;
    v157 = v166;
    v31 = *(&v166 + 1);

    if (!v31)
    {
LABEL_53:

      v16 = v150;
      swift_beginAccess();
      v67 = v147;
      v68 = v156;
      if (*(v16 + 16))
      {
        swift_beginAccess();

        sub_24EA0A8D8(v69);
        swift_endAccess();

        if (*(v16 + 16))
        {
          swift_beginAccess();

          sub_24EA0A904(v70);
          swift_endAccess();
        }
      }

      v71 = &OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_isStoreRequest;
      if ((sub_24F91F908() & 1) == 0)
      {
        v72 = v16 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v73 = *(v72 + 8);
          ObjectType = swift_getObjectType();
          (*(*(v73 + 16) + 48))(v67, ObjectType);
          swift_unknownObjectRelease();
        }
      }

      *&v153 = *(v16 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_pageRefreshPolicy);
      if (v153)
      {
        v75 = v146[2];
        if (v75)
        {
          v76 = v146 + ((*(v138 + 80) + 32) & ~*(v138 + 80));
          *&v157 = *(v138 + 72);
          v77 = (v154 + 48);
          v78 = (v154 + 32);

          v79 = MEMORY[0x277D84F90];
          v80 = v155;
          do
          {
            v81 = v158;
            sub_24E60169C(v76, v158, &unk_27F22EC30, &qword_24F939880);
            sub_24E6009C8(v81, v68, &unk_27F22EC30, &qword_24F939880);
            if ((*v77)(v68, 1, v80) == 1)
            {
              sub_24E601704(v68, &unk_27F22EC30, &qword_24F939880);
            }

            else
            {
              v82 = *v78;
              (*v78)(v159, v68, v80);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v79 = sub_24E616878(0, *(v79 + 2) + 1, 1, v79);
              }

              v84 = *(v79 + 2);
              v83 = *(v79 + 3);
              if (v84 >= v83 >> 1)
              {
                v79 = sub_24E616878((v83 > 1), v84 + 1, 1, v79);
              }

              *(v79 + 2) = v84 + 1;
              v80 = v155;
              v82(&v79[((*(v154 + 80) + 32) & ~*(v154 + 80)) + *(v154 + 72) * v84], v159, v155);
              v68 = v156;
            }

            v76 += v157;
            --v75;
          }

          while (v75);

          v71 = &OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_isStoreRequest;
        }

        else
        {

          v79 = MEMORY[0x277D84F90];
        }

        v85 = sub_24ED6555C(v79);

        v86 = v150;
        if (v85)
        {

          sub_24ED4B850(v87);
        }

        v16 = v86;
      }

      else
      {
      }

      v88 = v152 + 64;
      v89 = 1 << *(v152 + 32);
      v90 = -1;
      if (v89 < 64)
      {
        v90 = ~(-1 << v89);
      }

      v91 = v90 & *(v152 + 64);
      v92 = (v16 + v71[209]);
      swift_beginAccess();
      v93 = 0;
      v159 = v92;
      while (v91)
      {
LABEL_84:
        v95 = __clz(__rbit64(v91));
        v91 &= v91 - 1;
        v96 = (v93 << 9) | (8 * v95);
        v16 = *(*(v152 + 48) + v96);
        v97 = *(*(v152 + 56) + v96);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v98 = *(v92 + 1);
          v99 = swift_getObjectType();
          v100 = objc_allocWithZone(MEMORY[0x277CCABB0]);
          v101 = v97;
          v16 = [v100 initWithInteger_];
          v102 = v99;
          v92 = v159;
          (*(*(v98 + 16) + 40))(v97, v16, v102);
          swift_unknownObjectRelease();
        }
      }

      while (1)
      {
        v94 = v93 + 1;
        if (__OFADD__(v93, 1))
        {
          __break(1u);
          goto LABEL_104;
        }

        if (v94 >= ((v89 + 63) >> 6))
        {
          break;
        }

        v91 = *(v88 + 8 * v94);
        ++v93;
        if (v91)
        {
          v93 = v94;
          goto LABEL_84;
        }
      }

      v103 = *(v148 + 24);
      v16 = (v103 + 64);
      v104 = 1 << v103[32];
      v105 = -1;
      if (v104 < 64)
      {
        v105 = ~(-1 << v104);
      }

      v106 = v105 & *(v103 + 8);

      swift_beginAccess();
      v107 = 0;
      v108 = (v104 + 63) >> 6;
      v156 = v103;
      while (v106)
      {
LABEL_94:
        v110 = __clz(__rbit64(v106));
        v106 &= v106 - 1;
        v111 = v110 | (v107 << 6);
        v112 = (*(v103 + 6) + 16 * v111);
        v114 = *v112;
        v113 = v112[1];
        v115 = *(*(v103 + 7) + 8 * v111);
        swift_bridgeObjectRetain_n();
        v116 = v115;
        v118 = sub_24E9EEBE0(v114, v113, v117);
        if (v119)
        {
          if (qword_27F2106C0 != -1)
          {
            swift_once();
          }

          v158 = sub_24F92AAE8();
          *&v157 = __swift_project_value_buffer(v158, qword_27F39C670);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
          sub_24F928468();
          *(swift_allocObject() + 16) = v151;
          sub_24F9283A8();
          *(&v166 + 1) = MEMORY[0x277D837D0];
          *&v165 = v114;
          *(&v165 + 1) = v113;
          sub_24F928458();
          sub_24E601704(&v165, &qword_27F2129B0, &unk_24F945320);
          sub_24F92A5A8();

          v103 = v156;
        }

        else
        {
          v120 = v118;

          v121 = v159;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v122 = *(v121 + 1);
            v123 = swift_getObjectType();
            v124 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            (*(*(v122 + 16) + 40))(v115, v124, v123);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }

      while (1)
      {
        v109 = v107 + 1;
        if (__OFADD__(v107, 1))
        {
          break;
        }

        if (v109 >= v108)
        {

          v125 = *(v150 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_numberOfActiveRequests);
          v126 = __OFSUB__(v125, 1);
          v127 = v125 - 1;
          if (v126)
          {
            goto LABEL_106;
          }

          *(v150 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_numberOfActiveRequests) = v127;
          sub_24ED4F3A0(v127 > 0);
          return (*(v144 + 8))(v147, v145);
        }

        v106 = *(v16 + 8 * v109);
        ++v107;
        if (v106)
        {
          v107 = v109;
          goto LABEL_94;
        }
      }

LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v22 &= v22 - 1;
    v165 = v153;
    v166 = v157;
    v167 = v30;
    sub_24F92C7D8();
    if (swift_dynamicCast() & 1) == 0 || (v33 = sub_24E9EEBE0(v163, v164, v32), (v34))
    {
      if (qword_27F2106C0 != -1)
      {
        swift_once();
      }

      v35 = sub_24F92AAE8();
      __swift_project_value_buffer(v35, qword_27F39C670);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      v36 = *(sub_24F928468() - 8);
      v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = v151;
      v16 = v38 + v37;
      sub_24F9283A8();
      v162 = MEMORY[0x277D84030];
      v160 = swift_allocObject();
      sub_24E65864C(&v165, v160 + 16);
      sub_24F928458();
      sub_24E601704(&v160, &qword_27F2129B0, &unk_24F945320);
      sub_24F92A5A8();

      goto LABEL_39;
    }

    v16 = v33;
    v39 = sub_24ED57704(v33);
    if (!v39)
    {
      goto LABEL_109;
    }

    v40 = v29[OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched];
    *&v157 = v39;
    if (v40)
    {
      v41 = v143;
      v42 = Shelf.mergingWith(_:)(v29);
      v143 = v41;
      if (!v41)
      {
        v43 = v42;
        goto LABEL_22;
      }

      v50 = v41;
      v51 = v152;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v160 = v51;
      sub_24E8209CC(v41, v16, isUniquelyReferenced_nonNull_native);
      v152 = v160;
      if (qword_27F2106C0 != -1)
      {
        swift_once();
      }

      *&v153 = sub_24F92AAE8();
      v132 = __swift_project_value_buffer(v153, qword_27F39C670);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      v130[1] = 8 * *(*(sub_24F928468() - 8) + 72);
      v131 = swift_allocObject();
      *(v131 + 16) = v133;
      sub_24F9283A8();
      v162 = MEMORY[0x277D83B88];
      v160 = v16;
      sub_24F928438();
      sub_24E601704(&v160, &qword_27F2129B0, &unk_24F945320);
      sub_24F9283A8();
      LOBYTE(v160) = *(v157 + 16);
      v53 = Shelf.ContentType.rawValue.getter();
      v162 = MEMORY[0x277D837D0];
      v160 = v53;
      v161 = v54;
      sub_24F928438();
      sub_24E601704(&v160, &qword_27F2129B0, &unk_24F945320);
      sub_24F9283A8();
      LOBYTE(v160) = v29[16];
      v55 = Shelf.ContentType.rawValue.getter();
      v162 = MEMORY[0x277D837D0];
      v160 = v55;
      v161 = v56;
      sub_24F928438();
      sub_24E601704(&v160, &qword_27F2129B0, &unk_24F945320);
      sub_24F9283A8();
      v16 = v143;
      swift_getErrorValue();
      v57 = sub_24F92CFE8();
      v162 = MEMORY[0x277D837D0];
      v160 = v57;
      v161 = v58;
      sub_24F928458();
      sub_24E601704(&v160, &qword_27F2129B0, &unk_24F945320);
      sub_24F92A5A8();

      sub_24E6585F8(&v165);
      v143 = 0;
    }

    else
    {

      v43 = v29;
LABEL_22:
      if (*(v150 + v142))
      {
        v44 = *(v150 + v142);
LABEL_26:
        v45 = &OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering;
        if (!*(v150 + v139))
        {
          v45 = &OBJC_IVAR____TtC12GameStoreKit11ProductPage_notPurchasedOrdering;
        }

        v46 = *(v44 + *v45);

        if (v46)
        {
        }

        else
        {
          v46 = MEMORY[0x277D84F90];
        }

        goto LABEL_32;
      }

      v44 = *(v150 + v137);
      if (v44)
      {

        goto LABEL_26;
      }

      v46 = MEMORY[0x277D84F90];
LABEL_32:
      v140 = v16;
      *&v153 = v43;
      if ((v46 & 0xC000000000000001) != 0)
      {
        v59 = MEMORY[0x253052270](v16, v46);

        v16 = *(v59 + 24);
        v48 = *(v59 + 32);

        swift_unknownObjectRelease();
        if (v48)
        {
          goto LABEL_45;
        }

LABEL_36:
        if (qword_27F2106C0 != -1)
        {
          swift_once();
        }

        v49 = sub_24F92AAE8();
        __swift_project_value_buffer(v49, qword_27F39C670);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        v16 = swift_allocObject();
        *(v16 + 16) = v151;
        sub_24F9283A8();
        v162 = MEMORY[0x277D83B88];
        v160 = v140;
        sub_24F928438();
        sub_24E601704(&v160, &qword_27F2129B0, &unk_24F945320);
        sub_24F92A5A8();

LABEL_39:

        sub_24E6585F8(&v165);
      }

      else
      {
        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_107;
        }

        if (v16 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_108;
        }

        v47 = *(v46 + 8 * v16 + 32);

        v16 = *(v47 + 24);
        v48 = *(v47 + 32);

        if (!v48)
        {
          goto LABEL_36;
        }

LABEL_45:
        v60 = *(v150 + v142);
        v61 = v153;
        if (v60)
        {
          v62 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_shelfMapping;
          swift_beginAccess();

          v63 = swift_isUniquelyReferenced_nonNull_native();
          v163 = *(v60 + v62);
          *(v60 + v62) = 0x8000000000000000;
          sub_24E81E6DC(v61, v16, v48, v63);

          *(v60 + v62) = v163;
          swift_endAccess();
        }

        else
        {
        }

        sub_24F91F8F8();
        sub_24E60169C(&v29[OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate], v136, &unk_27F22EC30, &qword_24F939880);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v146 = sub_24E61923C(0, v146[2] + 1, 1, v146);
        }

        v65 = v146[2];
        v64 = v146[3];
        if (v65 >= v64 >> 1)
        {
          v146 = sub_24E61923C((v64 > 1), v65 + 1, 1, v146);
        }

        sub_24E6585F8(&v165);
        v66 = v146;
        v146[2] = v65 + 1;
        sub_24E6009C8(v136, v66 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v65, &unk_27F22EC30, &qword_24F939880);
      }
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v25)
    {
      goto LABEL_53;
    }

    v22 = *(v19 + 8 * v26);
    ++v24;
    if (v22)
    {
      v24 = v26;
      goto LABEL_11;
    }
  }

LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  v160 = 0;
  v161 = 0xE000000000000000;
  sub_24F92C888();
  MEMORY[0x253050C20](0xD00000000000001ALL, 0x800000024FA5BED0);
  v163 = v150;
  type metadata accessor for ProductPresenter(0);
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD000000000000020, 0x800000024FA5BEF0);
  v163 = v16;
  v129 = sub_24F92CD88();
  MEMORY[0x253050C20](v129);

  result = sub_24F92CA88();
  __break(1u);
  return result;
}

uint64_t sub_24ED51B00(void *a1, uint64_t a2)
{
  v4 = sub_24F92A078();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(a2 + 24);
  if (v8)
  {
    *v7 = a1;
    v7[8] = 0;
    (*(v5 + 104))(v7, *MEMORY[0x277D22278], v4);

    v9 = a1;
    sub_24F92A0C8();

    v10 = *(v5 + 8);
    v5 += 8;
    v10(v7, v4);
  }

  v11 = *(a2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_numberOfActiveRequests);
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
    __break(1u);
LABEL_13:
    v4 = sub_24E617130(0, v4[2] + 1, 1, v4);
    *(v8 + v5) = v4;
    goto LABEL_6;
  }

  *(a2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_numberOfActiveRequests) = v13;
  sub_24ED4F3A0(v13 > 0);
  swift_beginAccess();
  v8 = *(a2 + 16);
  if (!v8)
  {
    goto LABEL_9;
  }

  v5 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
  swift_beginAccess();
  v4 = *(v8 + v5);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v8 + v5) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  v16 = v4[2];
  v15 = v4[3];
  if (v16 >= v15 >> 1)
  {
    v4 = sub_24E617130((v15 > 1), v16 + 1, 1, v4);
  }

  v4[2] = v16 + 1;
  v4[v16 + 4] = a1;
  *(v8 + v5) = v4;
  swift_endAccess();
  v17 = a1;

LABEL_9:
  v18 = a2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    (*(*(*(v20 + 16) + 24) + 24))(a1, ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

BOOL sub_24ED51DA0()
{
  v0 = sub_24ED570C8();
  if (v0 >> 62)
  {
    v1 = sub_24F92C738();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (sub_24F91FA18() >= v1)
  {
    return 0;
  }

  v2 = sub_24F91FA18();
  v3 = sub_24ED57704(v2);
  if (v3)
  {
    v4 = *(v3 + 24);

    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  return sub_24F91FA08() < v5;
}

BOOL sub_24ED51E70(unint64_t a1)
{
  v1 = sub_24ED57704(a1);
  if (v1)
  {
  }

  return v1 != 0;
}

uint64_t sub_24ED51EA8(unint64_t a1)
{
  result = sub_24ED57704(a1);
  if (!result)
  {
    sub_24F92C888();
    MEMORY[0x253050C20](0xD00000000000001ALL, 0x800000024FA5BED0);
    type metadata accessor for ProductPresenter(0);
    sub_24F92CA38();
    MEMORY[0x253050C20](0xD000000000000020, 0x800000024FA5BEF0);
    v2 = sub_24F92CD88();
    MEMORY[0x253050C20](v2);

    result = sub_24F92CA88();
    __break(1u);
  }

  return result;
}

void sub_24ED51FD8(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_24ED57704(a1);
  if (v3)
  {
    v4 = *(v3 + 16);

    *a2 = v4;
  }

  else
  {
    sub_24F92C888();
    MEMORY[0x253050C20](0xD00000000000001ALL, 0x800000024FA5BED0);
    type metadata accessor for ProductPresenter(0);
    sub_24F92CA38();
    MEMORY[0x253050C20](0xD000000000000020, 0x800000024FA5BEF0);
    v5 = sub_24F92CD88();
    MEMORY[0x253050C20](v5);

    sub_24F92CA88();
    __break(1u);
  }
}

uint64_t sub_24ED52118(unint64_t a1)
{
  v1 = sub_24ED57704(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 24);

  v3 = *(v2 + 16);

  return v3;
}

uint64_t sub_24ED5216C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_24F91FA18();
  v4 = sub_24ED57704(v3);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 24);

  v6 = sub_24F91FA08();
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 >= *(v5 + 16))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    sub_24F92C888();
    MEMORY[0x253050C20](0xD00000000000001ALL, 0x800000024FA5BED0);
    type metadata accessor for ProductPresenter(0);
    sub_24F92CA38();
    MEMORY[0x253050C20](0xD000000000000022, 0x800000024FA5BF20);
    sub_24F91FA78();
    sub_24ED5EA84(&qword_27F22ECE0, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
    v8 = sub_24F92CD88();
    MEMORY[0x253050C20](v8);

    result = sub_24F92CA88();
    __break(1u);
    return result;
  }

  sub_24E615E00(v5 + 40 * v6 + 32, a2);
}

uint64_t sub_24ED52348(unint64_t a1)
{
  v2 = sub_24ED57704(a1);
  if (v2)
  {
    v3 = v2;
    v4 = sub_24ED57704(a1);
    if (v4 && (v5 = *(v4 + 24), , , v6 = *(v5 + 16), , v6 == 1))
    {
      v7 = 1;
    }

    else
    {
      v7 = *(v3 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn);
    }

    return v7;
  }

  else
  {
    result = sub_24F92CA88();
    __break(1u);
  }

  return result;
}

uint64_t sub_24ED5241C(unint64_t a1)
{
  v1 = sub_24ED57704(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal);

  return v2;
}

uint64_t sub_24ED52460(unint64_t a1)
{
  v1 = sub_24ED57704(a1);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden);

    return v2;
  }

  else
  {
    result = sub_24F92CA88();
    __break(1u);
  }

  return result;
}

uint64_t sub_24ED524E0(unint64_t a1)
{
  result = sub_24ED570C8();
  if ((result & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v3 = *(result + 8 * a1 + 32);

      goto LABEL_5;
    }

    __break(1u);
    return result;
  }

  v3 = MEMORY[0x253052270](a1, result);
LABEL_5:

  if (*(v3 + 16) == 3 && (v4 = sub_24ED57704(a1)) != 0 && (v5 = *(v4 + 24), , , v6 = *(v5 + 16), , v6) && sub_24ED57704(a1))
  {
    v7 = Shelf.seeAllAction.getter();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_24ED525E0(unint64_t a1)
{
  result = sub_24ED570C8();
  if ((result & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v3 = *(result + 8 * a1 + 32);

      v4 = *(v3 + 16);

      if (v4 == 3)
      {
        goto LABEL_5;
      }

      return 0;
    }

    __break(1u);
    return result;
  }

  v9 = MEMORY[0x253052270](a1, result);

  v10 = *(v9 + 16);
  swift_unknownObjectRelease();
  if (v10 != 3)
  {
    return 0;
  }

LABEL_5:
  result = sub_24ED57704(a1);
  if (!result)
  {
    return result;
  }

  v5 = *(result + 24);

  v6 = *(v5 + 16);

  if (!v6)
  {
    return 0;
  }

  result = sub_24ED57704(a1);
  if (result)
  {
    v7 = *(result + 40);
    if (v7)
    {
      v8 = *(v7 + 112);
    }

    else
    {
      v8 = 0;
    }

    return v8;
  }

  return result;
}

double sub_24ED52714(unint64_t a1)
{
  v4 = sub_24ED570C8();
  if ((v4 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v5 = *(v4 + 8 * a1 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_24;
  }

  v5 = MEMORY[0x253052270](a1, v4);
LABEL_5:

  v2 = *(v5 + 16);
  if (v2 != 3)
  {
    if (qword_27F2106C0 == -1)
    {
LABEL_10:
      v12 = sub_24F92AAE8();
      __swift_project_value_buffer(v12, qword_27F39C670);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F9479A0;
      sub_24F9283A8();
      if (v2)
      {
        if (v2 == 1)
        {
          v13 = 0xE900000000000070;
          v14 = 0x756B636F4C706F74;
        }

        else
        {
          v13 = 0xEB0000000073746FLL;
          v14 = 0x68736E6565726373;
        }
      }

      else
      {
        v13 = 0xEF74736575716552;
        v14 = 0x7975426F546B7361;
      }

      *(&v16 + 1) = MEMORY[0x277D837D0];
      *&v15 = v14;
      *(&v15 + 1) = v13;
      sub_24F928438();
      sub_24E601704(&v15, &qword_27F2129B0, &unk_24F945320);
      sub_24F9283A8();
      sub_24F92A598();

LABEL_19:

      return result;
    }

LABEL_24:
    swift_once();
    goto LABEL_10;
  }

  v6 = sub_24ED524E0(a1);
  if (v6)
  {
    v7 = v6;
    v8 = v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      v15 = 0u;
      v16 = 0u;
      (*(*(*(v9 + 16) + 8) + 8))(v7, &v15, ObjectType);

      swift_unknownObjectRelease();
      sub_24E601704(&v15, &qword_27F2129B0, &unk_24F945320);
      return result;
    }

    goto LABEL_19;
  }

  return result;
}

uint64_t sub_24ED52A84(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_24F91FA78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24ED570C8();
  v10 = sub_24EB9B734(a2, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020, &qword_24F93B450);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_24F93A400;
    *(v14 + 32) = v10;
    *(v14 + 40) = a1;
    v15.n128_f64[0] = MEMORY[0x253045350]();
    sub_24ED52BBC(v8, v15);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

void sub_24ED52BBC(uint64_t a1, __n128 a2)
{
  v5 = sub_24ED570C8();
  v6 = sub_24F91FA18();
  if ((v5 & 0xC000000000000001) == 0)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v6 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v7 = *(v5 + 8 * v6 + 32);

      goto LABEL_5;
    }

    __break(1u);
LABEL_28:
    swift_once();
    goto LABEL_11;
  }

  v7 = MEMORY[0x253052270](v6, v5);
LABEL_5:

  v3 = *(v7 + 16);
  if (v3 == 3)
  {
    sub_24ED5216C(v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE38, &unk_24F992830);
    if ((swift_dynamicCast() & 1) == 0)
    {

      v27 = 0;
      memset(v26, 0, sizeof(v26));
      sub_24E601704(v26, &qword_27F22CE30, &qword_24F99AA80);
      return;
    }

    sub_24E612C80(v26, v29);
    v8 = v30;
    v9 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v10 = (*(v9 + 8))(v8, v9);
    if (v10)
    {
      v11 = v10;
      v12 = v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v13 = *(v12 + 8);
        ObjectType = swift_getObjectType();
        v15 = v30;
        v16 = v31;
        __swift_project_boxed_opaque_existential_1(v29, v30);
        (*(v16 + 16))(v28, v15, v16);
        (*(*(*(v13 + 16) + 8) + 8))(v11, v28, ObjectType);

        swift_unknownObjectRelease();
        sub_24E601704(v28, &qword_27F2129B0, &unk_24F945320);
LABEL_24:
        __swift_destroy_boxed_opaque_existential_1(v29);
        return;
      }
    }

    else
    {
      v21 = v30;
      v22 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      if ((*(v22 + 24))(v21, v22))
      {
        v23 = v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v24 = *(v23 + 8);
          v25 = swift_getObjectType();
          (*(*(v24 + 16) + 56))(a1, v25);

          swift_unknownObjectRelease();
          goto LABEL_24;
        }
      }
    }

    goto LABEL_24;
  }

  if (qword_27F2106C0 != -1)
  {
    goto LABEL_28;
  }

LABEL_11:
  v17 = sub_24F92AAE8();
  __swift_project_value_buffer(v17, qword_27F39C670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F942000;
  sub_24F9283A8();
  v18 = sub_24F91FA08();
  v30 = MEMORY[0x277D83B88];
  v29[0] = v18;
  sub_24F928438();
  sub_24E601704(v29, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  if (v3)
  {
    if (v3 == 1)
    {
      v19 = 0xE900000000000070;
      v20 = 0x756B636F4C706F74;
    }

    else
    {
      v19 = 0xEB0000000073746FLL;
      v20 = 0x68736E6565726373;
    }
  }

  else
  {
    v19 = 0xEF74736575716552;
    v20 = 0x7975426F546B7361;
  }

  v30 = MEMORY[0x277D837D0];
  v29[0] = v20;
  v29[1] = v19;
  sub_24F928438();
  sub_24E601704(v29, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  sub_24F92A598();
}

void sub_24ED530F8(__n128 a1)
{
  v3 = sub_24F91FA78();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24ED570C8();
  v8 = sub_24F91FA18();
  if ((v7 & 0xC000000000000001) == 0)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v8 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v7 + 8 * v8 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_28;
  }

  v9 = MEMORY[0x253052270](v8, v7);
LABEL_5:

  v2 = *(v9 + 16);
  if (v2 != 3)
  {
    if (qword_27F2106C0 == -1)
    {
LABEL_11:
      v18 = sub_24F92AAE8();
      __swift_project_value_buffer(v18, qword_27F39C670);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F942000;
      sub_24F9283A8();
      v19 = sub_24F91FA08();
      v38 = MEMORY[0x277D83B88];
      v37[0] = v19;
      sub_24F928438();
      sub_24E601704(v37, &qword_27F2129B0, &unk_24F945320);
      sub_24F9283A8();
      if (v2)
      {
        if (v2 == 1)
        {
          v20 = 0xE900000000000070;
          v21 = 0x756B636F4C706F74;
        }

        else
        {
          v20 = 0xEB0000000073746FLL;
          v21 = 0x68736E6565726373;
        }
      }

      else
      {
        v20 = 0xEF74736575716552;
        v21 = 0x7975426F546B7361;
      }

      v38 = MEMORY[0x277D837D0];
      v37[0] = v21;
      v37[1] = v20;
      sub_24F928438();
      sub_24E601704(v37, &qword_27F2129B0, &unk_24F945320);
      sub_24F9283A8();
      sub_24F92A598();

      return;
    }

LABEL_28:
    swift_once();
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020, &qword_24F93B450);
  v10 = swift_allocObject();
  v31 = xmmword_24F93A400;
  *(v10 + 16) = xmmword_24F93A400;
  *(v10 + 32) = sub_24F91FA18();
  *(v10 + 40) = 0;
  MEMORY[0x253045350](v10);
  sub_24ED5216C(v35);
  v11 = *(v4 + 8);
  v11(v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ECE8, &qword_24F99AA88);
  if (swift_dynamicCast())
  {
    v29 = v11;
    v30 = v3;
    sub_24E612C80(&v32, v37);
    v12 = v38;
    v13 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v14 = sub_24F91FA08();
    (*(v13 + 8))(&v32, v14, v12, v13);
    if (v32)
    {
      v35[0] = v32;
      v35[1] = v33;
      v36 = v34;
      v15 = v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v15 + 8);
        ObjectType = swift_getObjectType();
        (*(*(*(v16 + 16) + 8) + 8))(*&v35[0], v35 + 8, ObjectType);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      sub_24E601704(v35, &qword_27F22CE40, &qword_24F99AAA0);
    }

    else
    {
      sub_24E601704(&v32, &qword_27F22ECF8, &unk_24F9AA510);
      v22 = v38;
      v23 = v39;
      __swift_project_boxed_opaque_existential_1(v37, v38);
      v24 = sub_24F91FA08();
      if (((*(v23 + 16))(v24, v22, v23) & 1) != 0 && (v25 = v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view, swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
      {
        v26 = *(v25 + 8);
        v27 = swift_getObjectType();
        v28 = swift_allocObject();
        *(v28 + 16) = v31;
        *(v28 + 32) = sub_24F91FA18();
        *(v28 + 40) = 0;
        MEMORY[0x253045350](v28);
        (*(*(v26 + 16) + 56))(v6, v27);

        swift_unknownObjectRelease();
        v29(v6, v30);
      }

      else
      {
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {

    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    sub_24E601704(&v32, &qword_27F22ECF0, &unk_24F99AA90);
  }
}

void sub_24ED53768(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_24ED57704(a1);
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background);
    v5 = *(v3 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 8);
    v6 = *(v3 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 16);
    v7 = *(v3 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 24);
    v8 = *(v3 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 32);
    sub_24E951F10(v4, v5, v6, v7, v8);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0x8000;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
}

double sub_24ED5380C@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_24F91FA18();
  v4 = sub_24ED570C8();
  if (v4 >> 62)
  {
    v5 = sub_24F92C738();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < v5)
  {
    v6 = sub_24F91FA18();
    v7 = sub_24ED57704(v6);
    if (v7)
    {
      v8 = *(v7 + 24);

      v9 = *(v8 + 16);

      if (sub_24F91FA08() < v9)
      {
        sub_24ED5216C(v15);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ED00, &qword_24F99AAA8);
        if (swift_dynamicCast())
        {
          sub_24E612C80(v13, v16);
          v10 = v17;
          v11 = v18;
          __swift_project_boxed_opaque_existential_1(v16, v17);
          (*(v11 + 8))(v10, v11);
          __swift_destroy_boxed_opaque_existential_1(v16);
          return result;
        }

        v14 = 0;
        memset(v13, 0, sizeof(v13));
        sub_24E601704(v13, &qword_27F22ED08, &qword_24F99AAB0);
      }
    }

    else
    {
      sub_24F91FA08();
    }
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0x8000;
  return result;
}

uint64_t sub_24ED539CC()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_alwaysAllowReviews);

  return v2;
}

uint64_t sub_24ED53A44()
{
  v1 = v0;
  v2 = sub_24F91F4A8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct;
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v7 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v7)
    {
      return 0;
    }
  }

  sub_24ED58570(0);
  v9 = v8;
  v10 = sub_24ED546A4(v8);
  v11 = sub_24ED54C00();
  v12 = *(v0 + v6);
  v100 = v10;
  v99 = v11;
  v98 = v9;
  if (v12)
  {
    v96 = v2;
    v13 = v12;
    goto LABEL_9;
  }

  v13 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (!v13)
  {
    v19 = 0;
LABEL_60:
    v58 = *(v7 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_developerAction);
    if (v58)
    {
      v59 = *(v58 + 24);
      v97 = *(v58 + 16);
      v96 = v59;

      v60 = *(v1 + v6);
      if (v60)
      {
LABEL_62:
        v61 = v60;
        goto LABEL_66;
      }
    }

    else
    {
      v97 = 0;
      v96 = 0;
      v60 = *(v1 + v6);
      if (v60)
      {
        goto LABEL_62;
      }
    }

    v61 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v61)
    {
      v95 = MEMORY[0x277D84F90];
LABEL_67:
      LODWORD(v94) = *(v7 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_theme);
      v40 = sub_24ED584B4();
      if (*(v1 + v6))
      {
        v62 = *(v1 + v6);
      }

      else
      {
        v62 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
        if (!v62)
        {
          v20 = 0;
LABEL_72:
          v38 = *(v7 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_regularPriceFormatted + 8);
          v92 = *(v7 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_regularPriceFormatted);
          v39 = *(*(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_completeMyBundleController) + 40);
          v63 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController + 8);
          v91 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController);
          v90 = v63;
          LODWORD(v1) = *(v7 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_isComplete);
          v64 = *(v7 + 320);
          v102 = *(v7 + 312);
          type metadata accessor for ProductTopLockup(0);
          v18 = swift_allocObject();
          *(v18 + 216) = 0u;
          *(v18 + 232) = 0u;
          *(v18 + 248) = 0;
          v37 = v7;
          v65 = OBJC_IVAR____TtC12GameStoreKit16ProductTopLockup_impressionMetrics;
          v66 = sub_24F929608();
          (*(*(v66 - 8) + 56))(v18 + v65, 1, 1, v66);
          v67 = qword_27F2106B8;

          v103 = v64;

          if (v67 != -1)
          {
            goto LABEL_101;
          }

          goto LABEL_73;
        }
      }

      v20 = *(v62 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_expandedOfferDetails);

      goto LABEL_72;
    }

LABEL_66:

    v95 = sub_24ED5969C(v61);

    goto LABEL_67;
  }

  v96 = v2;

LABEL_9:
  v102 = *(v13 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberStyle);

  v14 = *(v1 + v6);
  v93 = v7;
  v103 = v6;
  v95 = v3;
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v15)
    {
      v16 = 0;
      goto LABEL_18;
    }
  }

  v16 = *(v15 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtwork);

  if (*(v1 + v6))
  {
    v17 = *(v1 + v6);
    goto LABEL_20;
  }

LABEL_18:
  v17 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (!v17)
  {
    v20 = 0;
    goto LABEL_23;
  }

LABEL_20:
  v20 = *(v17 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtworkForCompactDisplay);

  if (*(v1 + v103))
  {
    v21 = *(v1 + v103);
    goto LABEL_25;
  }

LABEL_23:
  v21 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (!v21)
  {
    v22 = 0;
    v23 = v16;
    goto LABEL_28;
  }

LABEL_25:
  v22 = *(v21 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberVideo);

  v23 = v16;
  if (*(v1 + v103))
  {
    v18 = *(v1 + v103);
LABEL_30:
    v24 = *(v18 + 48);

    goto LABEL_31;
  }

LABEL_28:
  v18 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (v18)
  {

    goto LABEL_30;
  }

  v24 = 0;
LABEL_31:
  v94 = type metadata accessor for Uber();
  v19 = swift_allocObject();
  if (!v23)
  {
    v109 = 0;
    v110 = 0;
    if (v20)
    {
      goto LABEL_33;
    }

LABEL_35:
    v27 = 0;
    v28 = 0;
    goto LABEL_36;
  }

  v25 = *(v23 + 16);

  v109 = v25;
  v110 = v26;
  if (!v20)
  {
    goto LABEL_35;
  }

LABEL_33:
  v27 = v20[2];

LABEL_36:
  v111 = v27;
  v112 = v28;
  v29 = *&aBackgrou_1[8 * v102 + 8];
  v113 = *&aAbove_5[8 * v102];
  v114 = v29;
  v101 = v24;
  if (v22)
  {
    v30 = v95;
    v18 = v5;
    v31 = v96;
    (*(v95 + 16))(v5, v22 + OBJC_IVAR____TtC12GameStoreKit5Video_videoUrl, v96);
    v32 = sub_24F91F398();
    v34 = v33;
    (*(v30 + 8))(v18, v31);
    v24 = v101;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  LODWORD(v102) = v102;
  v115 = v32;
  v116 = v34;
  v117 = 0;
  v118 = 0;
  v97 = v23;
  if (v24)
  {
    v35 = *(v24 + 16);
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  v37 = 0;
  v38 = v108;
  v119 = v35;
  v120 = v36;
  v121 = 0;
  v122 = 0;
  v39 = v108;
  v40 = MEMORY[0x277D84F90];
LABEL_43:
  if (v37 <= 7)
  {
    v41 = 7;
  }

  else
  {
    v41 = v37;
  }

  v42 = v41 + 1;
  v43 = 16 * v37 + 40;
  while (1)
  {
    if (v37 == 7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
      swift_arrayDestroy();
      v52 = sub_24F92B708();

      v104 = v52;
      sub_24F92C7F8();
      v53 = v106;
      *(v19 + 80) = v105;
      *(v19 + 96) = v53;
      *(v19 + 112) = v107;
      *(v19 + 16) = v102;
      v54 = v97;
      *(v19 + 24) = v97;
      v55 = v20;
      if (!v20)
      {

        v55 = v54;
      }

      v56 = v22 != 0;
      *(v19 + 32) = v55;
      *(v19 + 40) = v22;
      *(v19 + 48) = v22;
      *(v19 + 56) = v24;
      *(v19 + 64) = 0;
      *(v19 + 72) = 0;
      v57 = v103;
      if (v22 | v54)
      {
        goto LABEL_58;
      }

      if (v24)
      {

        v74 = ASKDeviceTypeGetCurrent();
        v75 = sub_24F92B0D8();
        v77 = v76;
        if (v75 == sub_24F92B0D8() && v77 == v78)
        {

          v56 = 2;
LABEL_58:
          *(v19 + 17) = v56;

LABEL_59:
          v7 = v93;
          v6 = v57;

          goto LABEL_60;
        }

        v84 = sub_24F92CE08();

        if (v84)
        {
          v56 = 2;
          goto LABEL_58;
        }
      }

      sub_24E6585F8(v19 + 80);
      swift_deallocPartialClassInstance();
      v19 = 0;
      goto LABEL_59;
    }

    if (v42 == ++v37)
    {
      break;
    }

    v44 = v43 + 16;
    v18 = *&v108[v43];
    v43 += 16;
    if (v18)
    {
      v96 = v1;
      v45 = v19;
      v46 = v22;
      v47 = v20;
      v48 = *(&v106 + v44);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_24E615CF4(0, *(v40 + 16) + 1, 1, v40);
      }

      v50 = *(v40 + 16);
      v49 = *(v40 + 24);
      if (v50 >= v49 >> 1)
      {
        v40 = sub_24E615CF4((v49 > 1), v50 + 1, 1, v40);
      }

      *(v40 + 16) = v50 + 1;
      v51 = v40 + 16 * v50;
      *(v51 + 32) = v48;
      *(v51 + 40) = v18;
      v20 = v47;
      v22 = v46;
      v19 = v45;
      v1 = v96;
      v24 = v101;
      v38 = v108;
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_101:
  swift_once();
LABEL_73:
  sub_24E65864C(qword_27F39C610, v18 + 176);
  *(v18 + 16) = v37;
  *(v18 + 24) = v19;
  v68 = v96;
  *(v18 + 32) = v97;
  *(v18 + 40) = v68;
  *(v18 + 48) = v95;
  *(v18 + 56) = v94;
  v69 = v98;
  *(v18 + 64) = v40;
  *(v18 + 72) = v69;
  *(v18 + 80) = 0;
  *(v18 + 120) = v20 != 0;
  LODWORD(v101) = v1 ^ 1;
  if (v20)
  {

    countAndFlagsBits = v20[2];
    object = v20[3];
    v73 = v20[4];
    v72 = v20[5];

    goto LABEL_75;
  }

  if (!v39)
  {
    goto LABEL_91;
  }

  if (v39[32] > 1u)
  {
    if (v39[32] == 2)
    {
      goto LABEL_89;
    }

LABEL_91:

LABEL_92:

    countAndFlagsBits = 0;
    v73 = 0;
    v72 = 0;
    object = 1;
    goto LABEL_93;
  }

  if (v39[32])
  {

    swift_bridgeObjectRelease_n();
  }

  else
  {
LABEL_89:
    v79 = sub_24F92CE08();

    if ((v79 & 1) == 0)
    {

      goto LABEL_92;
    }
  }

  v85._object = 0x800000024FA5BF90;
  v85._countAndFlagsBits = 0xD000000000000027;
  v86._countAndFlagsBits = 0;
  v86._object = 0xE000000000000000;
  v87 = localizedString(_:comment:)(v85, v86);
  countAndFlagsBits = v87._countAndFlagsBits;
  object = v87._object;
  v73 = sub_24ED1BFF4(v37, v92, v38, v91, v90);
  v72 = v88;

LABEL_75:

LABEL_93:
  *(v18 + 88) = countAndFlagsBits;
  *(v18 + 96) = object;
  *(v18 + 104) = v73;
  *(v18 + 112) = v72;
  *(v18 + 57) = v101 & 1;
  v80 = v99;
  *(v18 + 144) = 0;
  *(v18 + 152) = v80;
  v81 = v100;
  *(v18 + 128) = 0;
  *(v18 + 136) = v81;
  v82 = v103;
  *(v18 + 160) = v102;
  *(v18 + 168) = v82;
  return v18;
}

uint64_t sub_24ED546A4(uint64_t a1)
{
  v3 = sub_24F91F6B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
    goto LABEL_5;
  }

  v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (v7)
  {

LABEL_5:
    v8 = *(v7 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_banner);

    if (v8)
    {
      return v8;
    }
  }

  if (a1)
  {
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = *(a1 + 128);
    v12 = *(a1 + 136);
    if (*(a1 + 16) <= 1u || *(a1 + 16) == 2)
    {
      if (sub_24F92CE08())
      {
        v13 = 256;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 256;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v12 = 1;
  }

  v14 = sub_24F2D9238(v10, v9, v11, v13 | v12, *(v1 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_objectGraph));

  if (!v14)
  {
    return v14;
  }

  if (v14 == 1)
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    v15._object = 0x800000024FA5C340;
    v15._countAndFlagsBits = 0xD000000000000017;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v17 = localizedString(_:comment:)(v15, v16);
    type metadata accessor for Banner();
    v8 = swift_allocObject();
    sub_24E60169C(&v41, &v38, &qword_27F235830, &qword_24F93B8C0);
    if (*(&v39 + 1))
    {
      v18 = v39;
      *(v8 + 104) = v38;
      *(v8 + 120) = v18;
      *(v8 + 136) = v40;
    }

    else
    {
      sub_24F91F6A8();
      v27 = sub_24F91F668();
      v29 = v28;
      (*(v4 + 8))(v6, v3);
      v36 = v27;
      v37 = v29;
      sub_24F92C7F8();
      sub_24E601704(&v38, &qword_27F235830, &qword_24F93B8C0);
    }

    sub_24E601704(&v41, &qword_27F235830, &qword_24F93B8C0);
    v30 = MEMORY[0x277D84F90];
    *(v8 + 16) = v17;
  }

  else
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    v19 = sub_24F91FE58();
    *(&v39 + 1) = v19;
    v40 = sub_24ED5EA84(&qword_27F22ED40, MEMORY[0x277D08040], MEMORY[0x277D08038]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v38);
    (*(*(v19 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D08030], v19);
    LOBYTE(v19) = sub_24F91FE68();
    __swift_destroy_boxed_opaque_existential_1(&v38);
    v21 = "com.apple.TestFlight";
    if (v19)
    {
      v21 = "OFFER_MANAGED_ID_BANNER";
      v22 = 0xD00000000000001FLL;
    }

    else
    {
      v22 = 0xD000000000000017;
    }

    v23 = v21 | 0x8000000000000000;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v25 = localizedString(_:comment:)(*&v22, v24);
    type metadata accessor for Banner();
    v8 = swift_allocObject();
    sub_24E60169C(&v41, &v38, &qword_27F235830, &qword_24F93B8C0);
    if (*(&v39 + 1))
    {
      v26 = v39;
      *(v8 + 104) = v38;
      *(v8 + 120) = v26;
      *(v8 + 136) = v40;
    }

    else
    {
      sub_24F91F6A8();
      v31 = sub_24F91F668();
      v33 = v32;
      (*(v4 + 8))(v6, v3);
      v36 = v31;
      v37 = v33;
      sub_24F92C7F8();
      sub_24E601704(&v38, &qword_27F235830, &qword_24F93B8C0);
    }

    sub_24E601704(&v41, &qword_27F235830, &qword_24F93B8C0);
    v30 = MEMORY[0x277D84F90];
    *(v8 + 16) = v25;
  }

  *(v8 + 32) = 0;
  *(v8 + 40) = v30;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 48) = 0;
  *(v8 + 72) = 0;
  *(v8 + 80) = xmmword_24F9406F0;
  *(v8 + 96) = 2;
  return v8;
}

uint64_t sub_24ED54C00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v28[-v2];
  v4 = sub_24F91F4A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v28[-v9];
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v11 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v11 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v11)
    {
LABEL_6:
      v13 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentlyObservedAdamId + 8);
      if (!v13 || *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_shouldDisplayBetaBanner) != 1)
      {
        return 0;
      }

      v14 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentlyObservedAdamId);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0, &qword_24F9876F0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_24F93DE60;
      *(v15 + 56) = MEMORY[0x277D837D0];
      *(v15 + 64) = sub_24E90A06C();
      *(v15 + 32) = v14;
      *(v15 + 40) = v13;

      v16 = sub_24F92B118();
      v18 = v17;
      sub_24F91F488();
      if ((*(v5 + 48))(v3, 1, v4) == 1)
      {

        sub_24E601704(v3, &qword_27F228530, &unk_24F93C6E0);
        return sub_24ED55958();
      }

      (*(v5 + 32))(v10, v3, v4);
      (*(v5 + 16))(v7, v10, v4);
      v20 = objc_allocWithZone(MEMORY[0x277CC1E98]);
      v21 = sub_24ED5BB24(v7);
      v22 = [v21 bundleRecord];
      v23 = [v22 bundleIdentifier];

      if (v23)
      {
        v24 = sub_24F92B0D8();
        v26 = v25;

        if (v24 == 0xD000000000000014 && 0x800000024FA5C2E0 == v26)
        {

LABEL_18:
          v12 = sub_24ED55028(v16, v18);

          (*(v5 + 8))(v10, v4);
          return v12;
        }

        v27 = sub_24F92CE08();

        if (v27)
        {
          goto LABEL_18;
        }
      }

      (*(v5 + 8))(v10, v4);
      return sub_24ED55958();
    }
  }

  v12 = *(v11 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_secondaryBanner);

  if (!v12)
  {
    goto LABEL_6;
  }

  return v12;
}

uint64_t sub_24ED55028(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v61 = a1;
  v57 = sub_24F91F6B8();
  v58 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v60 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v56 - v7;
  v66 = sub_24F91F4A8();
  v9 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v59 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928AD8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v67 = &v56 - v16;
  v17._countAndFlagsBits = 0xD00000000000001ALL;
  v17._object = 0x800000024FA5C1E0;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = localizedString(_:comment:)(v17, v18);
  countAndFlagsBits = v19._countAndFlagsBits;
  v20 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentBetaBundleVersion + 8);
  object = v19._object;
  if (v20)
  {
    v65 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentBetaBundleVersion);

    v21._countAndFlagsBits = 0x5050415F41544542;
    v21._object = 0xEF52454E4E41425FLL;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v64 = localizedString(_:comment:)(v21, v22)._countAndFlagsBits;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0, &qword_24F9876F0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_24F93A400;
    v24 = MEMORY[0x277D837D0];
    *(v23 + 56) = MEMORY[0x277D837D0];
    v25 = sub_24E90A06C();
    *(v23 + 32) = v65;
    *(v23 + 40) = v20;
    *(v23 + 96) = v24;
    *(v23 + 104) = v25;
    v26 = countAndFlagsBits;
    *(v23 + 64) = v25;
    *(v23 + 72) = v26;
    *(v23 + 80) = v19._object;
  }

  else
  {
    v27._object = 0x800000024FA5C200;
    v27._countAndFlagsBits = 0xD000000000000019;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    localizedString(_:comment:)(v27, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0, &qword_24F9876F0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_24F93DE60;
    *(v29 + 56) = MEMORY[0x277D837D0];
    *(v29 + 64) = sub_24E90A06C();
    *(v29 + 32) = countAndFlagsBits;
    *(v29 + 40) = v19._object;
  }

  v65 = sub_24F92B0A8();
  v64 = v30;

  v31 = v67;
  sub_24F928A98();
  type metadata accessor for ExternalUrlAction(0);
  v32 = swift_allocObject();
  sub_24F91F488();
  v33 = v66;
  if ((*(v9 + 48))(v8, 1, v66) == 1)
  {
    (*(v12 + 8))(v31, v11);

    sub_24E601704(v8, &qword_27F228530, &unk_24F93C6E0);
    swift_deallocPartialClassInstance();
    v32 = 0;
  }

  else
  {
    v34 = v59;
    (*(v9 + 32))(v59, v8, v33);
    v62 = v9;
    (*(v9 + 16))(v32 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_url, v34, v33);
    *(v32 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_isSensitive) = 1;
    *(v32 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_allowFromLockscreen) = 0;
    v35 = v32 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_timeoutSeconds;
    *v35 = 0;
    v35[8] = 1;
    v79 = 0;
    v77 = 0u;
    v78 = 0u;
    (*(v12 + 16))(v14, v31, v11);
    v36 = sub_24F929608();
    (*(*(v36 - 8) + 56))(v60, 1, 1, v36);
    v37 = (v32 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
    *v37 = 0u;
    v37[1] = 0u;
    sub_24E60169C(&v77, &v71, &qword_27F235830, &qword_24F93B8C0);
    if (*(&v72 + 1))
    {
      v38 = v33;
      v74 = v71;
      v75 = v72;
      v76 = v73;
    }

    else
    {
      v39 = v56;
      sub_24F91F6A8();
      v40 = sub_24F91F668();
      v42 = v41;
      (*(v58 + 8))(v39, v57);
      v69 = v40;
      v70 = v42;
      v34 = v59;
      v38 = v66;
      sub_24F92C7F8();
      sub_24E601704(&v71, &qword_27F235830, &qword_24F93B8C0);
    }

    v43 = object;
    v44 = countAndFlagsBits;
    sub_24E601704(&v77, &qword_27F235830, &qword_24F93B8C0);
    (*(v62 + 8))(v34, v38);
    (*(v12 + 8))(v67, v11);
    v45 = v32 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
    v46 = v75;
    *v45 = v74;
    *(v45 + 1) = v46;
    *(v45 + 4) = v76;
    sub_24E6009C8(v60, v32 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
    v32[2] = v44;
    v32[3] = v43;
    v32[4] = 0;
    v32[5] = 0;
    (*(v12 + 32))(v32 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v14, v11);
  }

  type metadata accessor for Banner();
  v77 = 0u;
  v78 = 0u;
  v79 = 0;
  v47 = swift_allocObject();
  sub_24E60169C(&v77, &v74, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v75 + 1))
  {
    v48 = v75;
    *(v47 + 104) = v74;
    *(v47 + 120) = v48;
    *(v47 + 136) = v76;
  }

  else
  {
    v49 = v56;
    sub_24F91F6A8();
    v50 = sub_24F91F668();
    v52 = v51;
    (*(v58 + 8))(v49, v57);
    *&v71 = v50;
    *(&v71 + 1) = v52;
    sub_24F92C7F8();
    sub_24E601704(&v74, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(&v77, &qword_27F235830, &qword_24F93B8C0);
  v53 = v64;
  *(v47 + 16) = v65;
  *(v47 + 24) = v53;
  v54 = MEMORY[0x277D84F90];
  *(v47 + 32) = v32;
  *(v47 + 40) = v54;
  *(v47 + 56) = 0;
  *(v47 + 64) = 0;
  *(v47 + 48) = 0;
  *(v47 + 72) = 0;
  *(v47 + 80) = xmmword_24F9406F0;
  *(v47 + 96) = 2;
  return v47;
}

uint64_t sub_24ED55958()
{
  v1 = sub_24F91F6B8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentBetaBundleVersion + 8);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentBetaBundleVersion);

    v7._object = 0x800000024FA5C1C0;
    v7._countAndFlagsBits = 0xD000000000000017;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    localizedString(_:comment:)(v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0, &qword_24F9876F0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_24F93DE60;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_24E90A06C();
    *(v9 + 32) = v6;
    *(v9 + 40) = v5;
    countAndFlagsBits = sub_24F92B0A8();
    object = v11;
  }

  else
  {
    v13._countAndFlagsBits = 0xD000000000000021;
    v13._object = 0x800000024FA5C190;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v15 = localizedString(_:comment:)(v13, v14);
    countAndFlagsBits = v15._countAndFlagsBits;
    object = v15._object;
  }

  type metadata accessor for Banner();
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  v16 = swift_allocObject();
  sub_24E60169C(v27, &v24, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v25 + 1))
  {
    v17 = v25;
    *(v16 + 104) = v24;
    *(v16 + 120) = v17;
    *(v16 + 136) = v26;
  }

  else
  {
    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v20 = v19;
    (*(v2 + 8))(v4, v1);
    v23[1] = v18;
    v23[2] = v20;
    sub_24F92C7F8();
    sub_24E601704(&v24, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v27, &qword_27F235830, &qword_24F93B8C0);
  *(v16 + 16) = countAndFlagsBits;
  *(v16 + 24) = object;
  v21 = MEMORY[0x277D84F90];
  *(v16 + 32) = 0;
  *(v16 + 40) = v21;
  *(v16 + 56) = 0;
  *(v16 + 64) = 0;
  *(v16 + 48) = 0;
  *(v16 + 72) = 0;
  *(v16 + 80) = xmmword_24F9406F0;
  *(v16 + 96) = 2;
  return v16;
}

uint64_t sub_24ED55C14()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v1)
    {
      return v1;
    }
  }

  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_developerAction);

  if (!v2)
  {
    return 0;
  }

  v1 = *(v2 + 16);

  return v1;
}

void sub_24ED55CCC(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (v2 || (v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct)) != 0)
  {
    v3 = *(v2 + 24);
    *a1 = *(v2 + 16);
    a1[1] = v3;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }
}

uint64_t sub_24ED55D00()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct;
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v2)
    {
LABEL_8:
      v4 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
      if (!v4)
      {
        v3 = 0;
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  v3 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_titleOfferDisplayProperties);

  if (v3)
  {
    goto LABEL_13;
  }

  if (!*(v0 + v1))
  {
    goto LABEL_8;
  }

  v4 = *(v0 + v1);
LABEL_10:
  v3 = *(v4 + 240);

  if (v3)
  {
    v64 = *(v3 + 16);
    v5 = *(v3 + 32);
    v6 = *(v3 + 48);
    v60 = *(v3 + 40);
    v62 = *(v3 + 24);
    v58 = *(v3 + 56);
    v54 = *(v3 + 64);
    v48 = *(v3 + 80);
    v50 = *(v3 + 72);
    v44 = *(v3 + 88);
    v7 = *(v3 + 104);
    v8 = *(v3 + 112);
    v74 = *(v3 + 120);
    v70 = *(v3 + 122);
    v72 = *(v3 + 121);
    v66 = *(v3 + 124);
    v68 = *(v3 + 123);
    v80 = *(v3 + 126);
    v78 = *(v3 + 128);
    v76 = *(v3 + 136);
    sub_24E60169C(v3 + 144, &v82, &qword_27F2129B0, &unk_24F945320);

    v9 = v5;

    v10 = v6;

    v11 = v7;
    v12 = v8;
    sub_24E9534EC(v7, v8);
    v13 = *(v3 + 240);
    v56 = *(v3 + 232);
    v14 = *(v3 + 224);
    v52 = *(v3 + 216);
    v15 = *(v3 + 200);
    v46 = *(v3 + 192);
    v16 = *(v3 + 184);
    v42 = *(v3 + 176);

    type metadata accessor for OfferDisplayProperties();
    v3 = swift_allocObject();
    *(v3 + 16) = v64;
    *(v3 + 24) = v62;
    *(v3 + 32) = v9;
    *(v3 + 40) = v60;
    *(v3 + 48) = v10;
    *(v3 + 56) = v58;
    *(v3 + 64) = v54;
    *(v3 + 72) = v50;
    *(v3 + 80) = v48;
    *(v3 + 88) = v44;
    *(v3 + 96) = 770;
    *(v3 + 104) = v11;
    *(v3 + 112) = v12;
    *(v3 + 120) = v74;
    *(v3 + 121) = v72;
    *(v3 + 122) = v70;
    *(v3 + 123) = v68;
    *(v3 + 124) = v66;
    *(v3 + 125) = 0;
    *(v3 + 126) = v80;
    *(v3 + 128) = v78;
    *(v3 + 136) = v76;
    v17 = v83;
    *(v3 + 144) = v82;
    *(v3 + 160) = v17;
    *(v3 + 176) = v42;
    *(v3 + 184) = v16;
    *(v3 + 192) = v46;
    *(v3 + 200) = v15;
    *(v3 + 208) = 0;
    *(v3 + 216) = v52;
    *(v3 + 224) = v14;
    *(v3 + 232) = v56;
    *(v3 + 240) = v13;
  }

LABEL_13:
  v18 = *(*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_completeMyBundleController) + 40);
  if (!v18)
  {
    return v3;
  }

  v19 = *(v18 + 24);
  if (!v19)
  {
    return v3;
  }

  if (!v3)
  {
    v21 = 16;
    goto LABEL_17;
  }

  v20 = *(v3 + 96);
  v21 = *(v3 + 97);
  if (v20 == 7)
  {
LABEL_17:
    LOBYTE(v20) = *(v19 + 96);
  }

  v81 = v20;
  v79 = *(v19 + 16);
  v22 = *(v19 + 32);
  v23 = *(v19 + 48);
  v75 = *(v19 + 40);
  v77 = *(v19 + 24);
  v24 = *(v19 + 64);
  v73 = *(v19 + 56);
  v25 = *(v19 + 72);
  v26 = *(v19 + 80);
  v27 = *(v19 + 88);
  if (v21 == 16)
  {
    LOBYTE(v21) = *(v19 + 97);
  }

  v55 = v21;
  v28 = *(v19 + 104);
  v29 = *(v19 + 112);
  v43 = v29;
  v45 = v28;
  v63 = *(v19 + 121);
  v61 = *(v19 + 122);
  v57 = *(v19 + 124);
  v59 = *(v19 + 123);
  v71 = *(v19 + 126);
  v69 = *(v19 + 128);
  v65 = *(v19 + 120);
  v67 = *(v19 + 136);
  sub_24E60169C(v19 + 144, &v82, &qword_27F2129B0, &unk_24F945320);

  sub_24E9534EC(v28, v29);
  v40 = v27;
  v41 = v26;
  v30 = *(v19 + 240);
  v53 = *(v19 + 232);
  v31 = v23;
  v32 = *(v19 + 224);
  v33 = v24;
  v34 = *(v19 + 200);
  v49 = *(v19 + 192);
  v51 = *(v19 + 216);
  v35 = v25;
  v36 = *(v19 + 184);
  v47 = *(v19 + 176);

  type metadata accessor for OfferDisplayProperties();
  v37 = swift_allocObject();
  *(v37 + 16) = v79;
  *(v37 + 24) = v77;
  *(v37 + 32) = v22;
  *(v37 + 40) = v75;
  *(v37 + 48) = v31;
  *(v37 + 56) = v73;
  *(v37 + 64) = v33;
  *(v37 + 72) = v35;
  *(v37 + 80) = v41;
  *(v37 + 88) = v40;
  *(v37 + 96) = v81;
  *(v37 + 97) = v55;
  *(v37 + 104) = v45;
  *(v37 + 112) = v43;
  *(v37 + 120) = v65;
  *(v37 + 121) = v63;
  *(v37 + 122) = v61;
  *(v37 + 123) = v59;
  *(v37 + 124) = v57;
  *(v37 + 125) = 0;
  *(v37 + 126) = v71;
  *(v37 + 128) = v69;
  *(v37 + 136) = v67;
  v38 = v83;
  *(v37 + 144) = v82;
  *(v37 + 160) = v38;

  *(v37 + 176) = v47;
  *(v37 + 184) = v36;
  *(v37 + 192) = v49;
  *(v37 + 200) = v34;
  *(v37 + 208) = 0;
  *(v37 + 216) = v51;
  *(v37 + 224) = v32;
  *(v37 + 232) = v53;
  v3 = v37;
  *(v37 + 240) = v30;
  return v3;
}

uint64_t sub_24ED5622C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_didAskToBuy;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    return 0;
  }

  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v9 = 0;
    v8 = 0;
    v10 = 0;
LABEL_7:
    v11 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
    if (v11)
    {
      v12 = *(v11 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 8);
      v13 = *(v11 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 16);
      v14 = *(v11 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 24);
      v15 = *(v11 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 48);
      v18 = *(v11 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 32);
      v19 = *(v11 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy);
      v16 = v8;
      v17 = *(v11 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 40);
      sub_24E901B80(v19, v12, v13, v14, v18, v17, v15);
      sub_24E901BD0(v5, v6, v7, 0, v9, v16, v10);
      if (v14)
      {
        sub_24E901BD0(v19, v12, v13, v14, v18, v17, v15);
        return 1;
      }
    }

    else
    {
      sub_24E901BD0(v5, v6, v7, 0, v9, v8, v10);
    }

    return 0;
  }

  v4 = (v3 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy);
  if (!v4[3])
  {
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v9 = v4[4];
    v8 = v4[5];
    v10 = v4[6];
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_24ED563A8()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_didAskToBuy;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    return 2;
  }

  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (v3)
  {
    v4 = (v3 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy);
    if (v4[3])
    {
      return 1;
    }

    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v9 = v4[4];
    v8 = v4[5];
    v10 = v4[6];
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v9 = 0;
    v8 = 0;
    v10 = 0;
  }

  v11 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  if (v11)
  {
    v12 = *(v11 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 8);
    v13 = *(v11 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 16);
    v14 = *(v11 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 24);
    v15 = *(v11 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 48);
    v18 = *(v11 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 32);
    v19 = *(v11 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy);
    v16 = v8;
    v17 = *(v11 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 40);
    sub_24E901B80(v19, v12, v13, v14, v18, v17, v15);
    sub_24E901BD0(v5, v6, v7, 0, v9, v16, v10);
    if (v14)
    {
      sub_24E901BD0(v19, v12, v13, v14, v18, v17, v15);
      return 1;
    }
  }

  else
  {
    sub_24E901BD0(v5, v6, v7, 0, v9, v8, v10);
  }

  return 0;
}

void sub_24ED56528(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F968();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_hasBeenPurchasedForReviewsContainer;
  v10 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_hasBeenPurchasedForReviewsContainer);
  if (v10 == 2)
  {
    return;
  }

  v28 = v6;
  ObjectType = swift_getObjectType();
  v12 = *(a2 + 16);
  v12(v35, ObjectType, a2);
  if (v38 >> 60)
  {
    if (v38 >> 60 != 8 || ((v13 = v37 | v39, v14 = v35[3] | v35[2] | v35[1], v38 != 0x8000000000000000) || v13 | v35[0] | v36 | v14) && (v38 != 0x8000000000000000 || v35[0] != 4 || v13 | v36 | v14))
    {
      sub_24E88D2AC(v35);
      if (v10)
      {
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (LOBYTE(v35[0]) == 1)
  {
LABEL_12:
    if ((v10 & 1) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

  if (v10)
  {
    return;
  }

LABEL_15:
  v12(v30, ObjectType, a2);
  if (v33 >> 60)
  {
    if (v33 >> 60 != 8)
    {
LABEL_22:
      sub_24E88D2AC(v30);
LABEL_25:
      LOBYTE(v17) = 1;
      goto LABEL_26;
    }

    v15 = v32 | v34;
    v16 = v30[3] | v30[2] | v30[1];
    if (v33 != 0x8000000000000000 || v15 | v30[0] | v31 | v16)
    {
      if (v33 == 0x8000000000000000 && v30[0] == 4)
      {
        v17 = v15 | v31 | v16;
        if (!v17)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_22;
    }
  }

  else if (LOBYTE(v30[0]) != 1)
  {
    goto LABEL_25;
  }

  LOBYTE(v17) = 0;
LABEL_26:
  *(v2 + v9) = v17;
  sub_24F91F958();
  v18 = sub_24ED570C8();
  if (v18 >> 62)
  {
    v19 = sub_24F92C738();

    if (v19 < 0)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v19)
  {
    for (i = 0; v19 != i; ++i)
    {
      v21 = sub_24ED57704(i);
      if (!v21)
      {
        continue;
      }

      v29[0] = *(v21 + 16);
      if (Shelf.ContentType.rawValue.getter() == 0xD000000000000010 && 0x800000024FA3F2E0 == v22)
      {
      }

      else
      {
        v23 = sub_24F92CE08();

        if ((v23 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      sub_24F91F8F8();
LABEL_32:
    }
  }

  if (sub_24F91F8E8() >= 1)
  {
    v24 = v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = *(v24 + 8);
      v26 = swift_getObjectType();
      (*(*(v25 + 16) + 48))(v8, v26);
      swift_unknownObjectRelease();
    }
  }

  (*(v5 + 8))(v8, v28);
}

uint64_t sub_24ED568F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F968();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  ObjectType = swift_getObjectType();
  v9 = 1;
  (*(a2 + 40))(v26, 1, ObjectType, a2);
  v10 = v29 >> 60;
  if (v29 >> 60 != 2 && v10 != 7)
  {
    if (v10 != 8 || v30 || v29 != 0x8000000000000000 || v26[0] != 1 || (v12 = vorrq_s8(v27, v28), *&vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)) | v26[1]))
    {
      v9 = 0;
    }
  }

  result = sub_24E88D2AC(v26);
  v14 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isLocalApplicationForAppEvents);
  if (v14 != 2 && ((v9 ^ v14) & 1) != 0)
  {
    *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isLocalApplicationForAppEvents) = v9;
    sub_24F91F958();
    v15 = sub_24ED570C8();
    v24 = v4;
    if (v15 >> 62)
    {
      v16 = sub_24F92C738();

      if (v16 < 0)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v16)
    {
      for (i = 0; v16 != i; ++i)
      {
        v18 = sub_24ED57704(i);
        if (!v18)
        {
          continue;
        }

        v25[0] = *(v18 + 16);
        if (Shelf.ContentType.rawValue.getter() == 0x6F6D6F7250707061 && v19 == 0xEC0000006E6F6974)
        {
        }

        else
        {
          v20 = sub_24F92CE08();

          if ((v20 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        sub_24F91F8F8();
LABEL_19:
      }
    }

    if (sub_24F91F8E8() >= 1)
    {
      v21 = v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = *(v21 + 8);
        v23 = swift_getObjectType();
        (*(*(v22 + 16) + 48))(v7, v23);
        swift_unknownObjectRelease();
      }
    }

    return (*(v5 + 8))(v7, v24);
  }

  return result;
}

uint64_t sub_24ED56BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  return MEMORY[0x2822009F8](sub_24ED56C1C, 0, 0);
}

uint64_t sub_24ED56C1C()
{
  v1 = v0[8];
  v2 = *(v0[6] + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController + 8);
  ObjectType = swift_getObjectType();
  v0[9] = swift_getObjectType();
  (*(v1 + 8))();
  v4 = v0[3];
  v0[4] = v0[2];
  v0[5] = v4;
  v7 = (*(v2 + 104) + **(v2 + 104));
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_24ED56D98;

  return v7(v0 + 4, ObjectType, v2);
}

uint64_t sub_24ED56D98(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;

  return MEMORY[0x2822009F8](sub_24ED56EB8, 0, 0);
}

uint64_t sub_24ED56EB8()
{
  v1 = v0[6];
  v2 = (*(v0[8] + 24))(v0[9]) & 1;
  v3 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_shouldDisplayBetaBanner;
  v4 = v0[6];
  if (v2 != *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_shouldDisplayBetaBanner))
  {
    goto LABEL_2;
  }

  v8 = v0[12];
  v9 = *(v4 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentBetaBundleVersion + 8);
  if (v8)
  {
    if (v9)
    {
      v10 = v0[11] == *(v4 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentBetaBundleVersion) && v8 == v9;
      if (v10 || (sub_24F92CE08() & 1) != 0)
      {

        goto LABEL_3;
      }

      v4 = v0[6];
    }

LABEL_2:
    v5 = *(v0 + 11);
    *(v1 + v3) = v2;
    *(v4 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentBetaBundleVersion) = v5;

    ProductPresenter.reloadTopLockup()();
    goto LABEL_3;
  }

  if (v9)
  {
    goto LABEL_2;
  }

LABEL_3:
  v6 = v0[1];

  return v6();
}

uint64_t sub_24ED56FD4()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isPurchased;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24ED57018(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isPurchased;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24ED570C8()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v1)
    {
LABEL_11:

      return MEMORY[0x277D84F90];
    }
  }

  v2 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isPurchased;
  swift_beginAccess();
  if (*(v0 + v2))
  {
    v3 = &OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering;
  }

  else
  {
    v3 = &OBJC_IVAR____TtC12GameStoreKit11ProductPage_notPurchasedOrdering;
  }

  v4 = *(v1 + *v3);
  if (!v4)
  {

    goto LABEL_11;
  }

  return v4;
}

uint64_t sub_24ED571A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_24F91F968();
  v8 = MEMORY[0x277D84F90];
  v21[1] = MEMORY[0x277D84F90];
  sub_24ED5EA84(&qword_27F22E100, MEMORY[0x277CC9A28], MEMORY[0x277CC9A58]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218050, qword_24F99DB70);
  sub_24E9723D4(&qword_27F22E108, &qword_27F218050, qword_24F99DB70);
  v20[4] = a3;
  sub_24F92C6A8();
  v9 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isPurchased;
  swift_beginAccess();
  if (*(v4 + v9))
  {
    v10 = &OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering;
  }

  else
  {
    v10 = &OBJC_IVAR____TtC12GameStoreKit11ProductPage_notPurchasedOrdering;
  }

  v11 = *v10;
  if (*(a1 + v11))
  {
    v12 = *(a1 + v11);
  }

  else
  {
    v12 = v8;
  }

  if (*(a2 + v11))
  {
    v13 = *(a2 + v11);
  }

  else
  {
    v13 = v8;
  }

  if (v13 >> 62)
  {
LABEL_25:
    v14 = sub_24F92C738();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14)
  {
    v15 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x253052270](v15, v13);
        v16 = v17;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_22:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_25;
        }

        v16 = *(v13 + 8 * v15 + 32);

        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_22;
        }
      }

      v21[0] = v16;
      MEMORY[0x28223BE20](v17);
      v20[2] = v21;
      if (sub_24E615B10(sub_24ED5F4C4, v20, v12))
      {
        sub_24F91F8F8();
      }

      ++v15;
    }

    while (v18 != v14);
  }
}

char *sub_24ED57414(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = MEMORY[0x277D84F90];
  if (a2)
  {
    v5 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isPurchased;
    swift_beginAccess();
    if (*(v2 + v5))
    {
      v7 = &OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering;
    }

    else
    {
      v7 = &OBJC_IVAR____TtC12GameStoreKit11ProductPage_notPurchasedOrdering;
    }

    v8 = *v7;
    if (*(a1 + v8))
    {
      v9 = *(a1 + v8);
    }

    else
    {
      v9 = v4;
    }

    if (*(a2 + v8))
    {
      v10 = *(a2 + v8);
    }

    else
    {
      v10 = v4;
    }

    if (v10 >> 62)
    {
LABEL_43:
      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12 = sub_24F92C738();
    }

    else
    {
      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v12)
    {
      v13 = 0;
      v14 = MEMORY[0x277D84F90];
      v4 = MEMORY[0x277D84F90];
      do
      {
        v15 = v13;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x253052270](v15, v10);
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_41;
            }
          }

          else
          {
            if (v15 >= *(v11 + 16))
            {
              goto LABEL_42;
            }

            v16 = *&v10[8 * v15 + 32];

            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
              goto LABEL_43;
            }
          }

          v17 = sub_24EB9B734(v16, v9);
          if ((v18 & 1) == 0 && v15 != v17)
          {
            break;
          }

          ++v15;
          if (v13 == v12)
          {
            goto LABEL_39;
          }
        }

        v31 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v4 = sub_24E615EC4(0, *(v4 + 2) + 1, 1, v4);
        }

        v21 = *(v4 + 2);
        v20 = *(v4 + 3);
        v22 = v21 + 1;
        v23 = v31;
        if (v21 >= v20 >> 1)
        {
          v29 = sub_24E615EC4((v20 > 1), v21 + 1, 1, v4);
          v22 = v21 + 1;
          v23 = v31;
          v4 = v29;
        }

        *(v4 + 2) = v22;
        *&v4[8 * v21 + 32] = v23;
        v24 = v32;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_24E615EC4(0, *(v32 + 2) + 1, 1, v32);
        }

        v25 = v24;
        v26 = *(v24 + 2);
        v33 = v25;
        v27 = *(v25 + 3);
        if (v26 >= v27 >> 1)
        {
          v33 = sub_24E615EC4((v27 > 1), v26 + 1, 1, v33);
        }

        *(v33 + 2) = v26 + 1;
        v28 = &v33[8 * v26];
        v14 = v33;
        *(v28 + 4) = v15;
      }

      while (v13 != v12);
    }

LABEL_39:
  }

  return v4;
}

unint64_t sub_24ED57704(unint64_t a1)
{
  v3 = sub_24ED570C8();
  if (v3 >> 62)
  {
    v4 = sub_24F92C738();

    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_25:
      v6 = MEMORY[0x253052270](a1, v4);
LABEL_7:

      if (*(v6 + 16) > 2u)
      {

        v8 = *(v6 + 32);
        if (!v8)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v7 = sub_24F92CE08();

        if ((v7 & 1) == 0)
        {
          goto LABEL_20;
        }

        v8 = *(v6 + 32);
        if (!v8)
        {
          goto LABEL_20;
        }
      }

      v9 = *(v6 + 24);
      if (*(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
      {
        v10 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
LABEL_16:
        v11 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_shelfMapping;
        swift_beginAccess();
        v12 = *(v10 + v11);
        v13 = *(v12 + 16);

        if (v13)
        {

          v14 = sub_24E76D644(v9, v8);
          v16 = v15;

          if (v16)
          {
            v17 = *(*(v12 + 56) + 8 * v14);

            return v17;
          }

          return 0;
        }

        goto LABEL_20;
      }

      v10 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
      if (v10)
      {

        goto LABEL_16;
      }

LABEL_20:

      return 0;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 <= a1)
  {
    return 0;
  }

  result = sub_24ED570C8();
  v4 = result;
  if ((result & 0xC000000000000001) != 0)
  {
    goto LABEL_25;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v6 = *(result + 8 * a1 + 32);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

BOOL sub_24ED57998()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct;
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  v3 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberVideo);

  if (!v3)
  {
LABEL_8:
    v4 = 0;
    v5 = *(v0 + v1);
    if (v5)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  v4 = 1;
  v5 = *(v0 + v1);
  if (v5)
  {
LABEL_7:
    v6 = v5;
    goto LABEL_11;
  }

LABEL_9:
  v6 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (!v6)
  {
    return v4 != 0;
  }

LABEL_11:
  v7 = *(v6 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtwork);

  if (v7)
  {

    if (*(v0 + v1))
    {
      v8 = *(v0 + v1);
    }

    else
    {
      v8 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
      if (!v8)
      {
        return (v4 & 1) != 0;
      }
    }

    v9 = *(v8 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtworkForCompactDisplay);

    if (v9)
    {

      return 1;
    }

    return (v4 & 1) != 0;
  }

  return v4 != 0;
}

void sub_24ED57B3C(char *a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v3)
    {
      v4 = 3;
      goto LABEL_6;
    }
  }

  v4 = *(v3 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberStyle);

LABEL_6:
  *a1 = v4;
}

uint64_t sub_24ED57BC0()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v1)
    {
      return 2;
    }
  }

  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_hasDarkUserInterfaceStyle);

  return v2;
}

void *sub_24ED57C50(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v2)
    {
      return 0;
    }

    v3 = a1;

    a1 = v3;
  }

  v4 = *(v2 + *a1);
  v5 = v4;

  return v4;
}

uint64_t sub_24ED57CF0()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v1)
    {
      goto LABEL_13;
    }
  }

  v2 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isPurchased;
  swift_beginAccess();
  if (*(v0 + v2))
  {
    v3 = &OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering;
  }

  else
  {
    v3 = &OBJC_IVAR____TtC12GameStoreKit11ProductPage_notPurchasedOrdering;
  }

  v4 = *(v1 + *v3);
  if (!v4)
  {

LABEL_13:

    v4 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_10;
    }

LABEL_14:
    v5 = sub_24F92C738();
    goto LABEL_11;
  }

  if (v4 >> 62)
  {
    goto LABEL_14;
  }

LABEL_10:
  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:

  return v5;
}

uint64_t sub_24ED57DFC()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(v1 + 48);

  return v2;
}

uint64_t sub_24ED57E7C@<X0>(uint64_t a1@<X8>)
{
  if (sub_24F92CE08())
  {
    v2 = 1;
  }

  else
  {
    v3 = sub_24ED570C8();
    v4 = v3;
    if (v3 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x253052270](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        if (*(v7 + 16) <= 1u && *(v7 + 16))
        {

LABEL_18:

          MEMORY[0x253045380](0, v6);
          v2 = 0;
          goto LABEL_19;
        }

        v8 = sub_24F92CE08();

        if (v8)
        {
          goto LABEL_18;
        }

        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        ++v6;
        if (v9 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_15:

    v2 = 1;
  }

LABEL_19:
  v10 = sub_24F91FA78();
  v11 = *(*(v10 - 8) + 56);

  return v11(a1, v2, 1, v10);
}

unint64_t sub_24ED580CC()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
LABEL_5:

    v2 = sub_24ED5969C(v1);

    return v2;
  }

  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (v1)
  {

    goto LABEL_5;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_24ED58144()
{
  if ((sub_24F92CE08() & 1) == 0)
  {
    v0 = sub_24ED570C8();
    v1 = v0;
    if (v0 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
    {
      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x253052270](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        if (*(v4 + 16) > 1u && *(v4 + 16) != 3)
        {

LABEL_19:

          return v3;
        }

        v5 = sub_24F92CE08();

        if (v5)
        {
          goto LABEL_19;
        }

        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        ++v3;
        if (v6 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

LABEL_14:
  }

  return 0;
}

uint64_t sub_24ED58334(uint64_t a1)
{
  v2 = sub_24ED570C8();
  v3 = sub_24EB9B734(a1, v2);

  return v3;
}

uint64_t sub_24ED58388(unint64_t a1)
{
  result = sub_24ED570C8();
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x253052270](a1, result);

    v5 = *(v7 + 16);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v4 = *(result + 8 * a1 + 32);

  v5 = *(v4 + 16);

LABEL_5:
  if ((v5 - 2) < 2)
  {
    return 0;
  }

  if (v5)
  {
    if (!*(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
    {
      if (!*(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct))
      {
        return 0;
      }
    }

    return 1;
  }

  else
  {
    v6 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_didAskToBuy;
    swift_beginAccess();
    return *(v1 + v6);
  }
}

uint64_t sub_24ED584B4()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_completeMyBundleController) + 40);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      goto LABEL_10;
    }
  }

  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v3)
    {
      return 0;
    }
  }

  v2 = *(v3 + 232);

  if (!v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (v4)
    {
      v2 = *(v4 + 232);
LABEL_10:

      return v2;
    }

    return 0;
  }

  return v2;
}

double sub_24ED58570(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct;
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v5)
    {
      return result;
    }
  }

  v6 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_didAskToBuy;
  swift_beginAccess();
  if (*(v1 + v6))
  {

    goto LABEL_7;
  }

  v9 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (v9)
  {
    v10 = (v9 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy);
    if (v10[3])
    {

      goto LABEL_13;
    }

    v109 = v5;
    v111 = v3;
    v106 = a1;
    v20 = *v10;
    v21 = v10[1];
    v22 = v10[2];
    v23 = v10[4];
    v24 = v10[5];
    v25 = v10[6];
    if (!v4)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v109 = v5;
    v111 = v3;
    v106 = a1;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    if (!v4)
    {
LABEL_49:
      sub_24E901BD0(v20, v21, v22, 0, v23, v24, v25);
      a1 = v106;
      v5 = v109;
      v3 = v111;
LABEL_7:
      v7 = *(*(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_completeMyBundleController) + 40);
      if (v7)
      {
        v8 = *(v7 + 24);
        if (v8)
        {

LABEL_18:
          if (*(v7 + 32) <= 1u)
          {
            v12 = sub_24F92CE08();

            if ((v12 & 1) == 0)
            {

              v13 = 0;
              goto LABEL_31;
            }

LABEL_23:
            v14 = *(v8 + 121);

            if (v14 == 1)
            {
              v15 = *(v8 + 72);

              v16._object = 0x800000024FA5C360;
              v16._countAndFlagsBits = 0xD000000000000021;
              v17._countAndFlagsBits = 0;
              v17._object = 0xE000000000000000;
              v18 = localizedString(_:comment:)(v16, v17);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v115[0] = v15;
              sub_24E81F154(v18._countAndFlagsBits, v18._object, 0, isUniquelyReferenced_nonNull_native);
              v13 = 1;
              goto LABEL_32;
            }

            v13 = 1;
LABEL_31:
            v15 = *(v8 + 72);

LABEL_32:
            v112 = v15;
            if (*(v1 + v6))
            {

              if (((*(v8 + 16) & 0xFE) != 2) | a1 & 1)
              {
                v38 = 3;
              }

              else
              {
                v38 = 8;
              }

              v110 = v38;
LABEL_59:
              v57 = 5;
              goto LABEL_60;
            }

            v39 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
            if (v39)
            {
              v40 = (v39 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy);
              if (v40[3])
              {
LABEL_55:

                if (((*(v8 + 16) & 0xFE) != 2) | a1 & 1)
                {
                  v60 = 3;
                }

                else
                {
                  v60 = 8;
                }

                v110 = v60;
                if (v13)
                {
                  goto LABEL_59;
                }

LABEL_47:
                v57 = *(v8 + 96);
LABEL_60:
                v108 = v57;

                v102 = *(v8 + 16);
                v61 = *(v8 + 32);
                v62 = *(v8 + 48);
                v96 = *(v8 + 40);
                v99 = *(v8 + 24);
                v63 = *(v8 + 64);
                v90 = *(v8 + 56);
                v64 = *(v8 + 80);
                v65 = *(v8 + 88);
                v66 = *(v8 + 104);
                v67 = *(v8 + 112);
                v82 = *(v8 + 121);
                v83 = *(v8 + 120);
                v80 = *(v8 + 123);
                v81 = *(v8 + 122);
                v79 = *(v8 + 124);
                v88 = *(v8 + 126);
                v86 = *(v8 + 128);
                v84 = *(v8 + 136);
                v113 = 0u;
                v114 = 0u;
                sub_24E60169C(v8 + 144, v115, &qword_27F2129B0, &unk_24F945320);
                v93 = v63;

                v105 = v61;

                v68 = v62;

                sub_24E9534EC(v66, v67);
                v69 = *(v8 + 184);
                v70 = *(v8 + 200);
                v75 = *(v8 + 192);
                v76 = *(v8 + 176);
                v71 = *(v8 + 224);
                v78 = *(v8 + 216);
                v77 = *(v8 + 232);
                v72 = *(v8 + 240);

                type metadata accessor for OfferDisplayProperties();
                v73 = swift_allocObject();
                *(v73 + 16) = v102;
                *(v73 + 24) = v99;
                *(v73 + 32) = v105;
                *(v73 + 40) = v96;
                *(v73 + 48) = v68;
                *(v73 + 56) = v90;
                *(v73 + 64) = v93;
                *(v73 + 72) = v112;
                *(v73 + 80) = v64;
                *(v73 + 88) = v65;
                *(v73 + 96) = v108;
                *(v73 + 97) = v110;
                *(v73 + 104) = v66;
                *(v73 + 112) = v67;
                *(v73 + 120) = v83;
                *(v73 + 121) = v82;
                *(v73 + 122) = v81;
                *(v73 + 123) = v80;
                *(v73 + 124) = v79;
                *(v73 + 125) = 0;
                *(v73 + 126) = v88;
                *(v73 + 128) = v86;
                *(v73 + 136) = v84;
                result = *v115;
                v74 = v115[1];
                *(v73 + 144) = v115[0];
                *(v73 + 160) = v74;
                *(v73 + 176) = v76;
                *(v73 + 184) = v69;
                *(v73 + 192) = v75;
                *(v73 + 200) = v70;
                *(v73 + 208) = 0;
                *(v73 + 216) = v78;
                *(v73 + 224) = v71;
                *(v73 + 232) = v77;
                *(v73 + 240) = v72;
                return result;
              }

              v59 = v3;
              v42 = *v40;
              v43 = v40[1];
              v44 = v40[2];
              v45 = v40[4];
              v46 = v40[5];
              v47 = v40[6];
              v48 = *(v1 + v59);
              if (!v48)
              {
LABEL_54:
                sub_24E901BD0(v42, v43, v44, 0, v45, v46, v47);
                goto LABEL_55;
              }
            }

            else
            {
              v41 = v3;
              v42 = 0;
              v43 = 0;
              v44 = 0;
              v45 = 0;
              v46 = 0;
              v47 = 0;
              v48 = *(v1 + v41);
              if (!v48)
              {
                goto LABEL_54;
              }
            }

            v104 = v13;
            v107 = a1;
            v49 = (v48 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy);
            v50 = v49[3];
            v51 = v49[5];
            v52 = v49[6];
            v98 = v49[1];
            v101 = *v49;
            v53 = v44;
            v92 = v49[4];
            v95 = v49[2];
            v54 = v45;
            v55 = v46;
            sub_24E901B80(*v49, v98, v95, v50, v92, v51, v52);
            sub_24E901BD0(v42, v43, v53, 0, v54, v55, v47);

            if (v50)
            {
              sub_24E901BD0(v101, v98, v95, v50, v92, v51, v52);
            }

            if (((*(v8 + 16) & 0xFE) != 2) | v107 & 1)
            {
              v56 = 3;
            }

            else
            {
              v56 = 8;
            }

            v110 = v56;
            if (v104)
            {
              goto LABEL_59;
            }

            goto LABEL_47;
          }

          if (*(v7 + 32) == 2)
          {

            swift_bridgeObjectRelease_n();
            goto LABEL_23;
          }

LABEL_25:
          v13 = 0;
          goto LABEL_31;
        }
      }

      v8 = *(v5 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_titleOfferDisplayProperties);
      if (v8 && (a1 & 1) != 0 || (v8 = *(v5 + 240)) != 0 || (v58 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct)) != 0 && (v8 = *(v58 + 240)) != 0)
      {

        if (!v7)
        {
          goto LABEL_25;
        }

        goto LABEL_18;
      }

LABEL_13:

      return result;
    }
  }

  v26 = *(v4 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy);
  v27 = *(v4 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 8);
  v29 = *(v4 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 16);
  v28 = *(v4 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 24);
  v30 = *(v4 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 32);
  v31 = *(v4 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 40);
  v32 = *(v4 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 48);
  v91 = v20;
  v94 = v22;
  v33 = v21;
  v97 = v23;
  v100 = v24;
  v103 = v25;

  v87 = v29;
  v89 = v26;
  v34 = v26;
  v35 = v27;
  v85 = v30;
  v36 = v30;
  v37 = v31;
  sub_24E901B80(v34, v27, v29, v28, v36, v31, v32);
  sub_24E901BD0(v91, v33, v94, 0, v97, v100, v103);
  a1 = v106;
  v5 = v109;
  v3 = v111;
  if (!v28)
  {
    goto LABEL_7;
  }

  sub_24E901BD0(v89, v35, v87, v28, v85, v37, v32);
  return result;
}

void sub_24ED58CEC(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_24ED570C8();
  v6 = sub_24F91FA18();
  if ((v5 & 0xC000000000000001) == 0)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v6 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v7 = *(v5 + 8 * v6 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_27;
  }

  v7 = MEMORY[0x253052270](v6, v5);
LABEL_5:

  if (*(v7 + 16) > 1u)
  {
    if (*(v7 + 16) != 2)
    {
      v8 = sub_24F91FA18();
      v9 = sub_24ED57704(v8);
      if (v9)
      {
        v10 = v9;
        v11 = *(*(v9 + 24) + 16);
        if (!v11)
        {
          sub_24E60169C(v9 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, v4, &qword_27F228530, &unk_24F93C6E0);
          v12 = sub_24F91F4A8();
          if ((*(*(v12 - 8) + 48))(v4, 1, v12) != 1)
          {

            sub_24E601704(v4, &qword_27F228530, &unk_24F93C6E0);
            v17 = *(v10 + 16);

            *a1 = v17;
            *(a1 + 41) = 3;
            return;
          }

          sub_24E601704(v4, &qword_27F228530, &unk_24F93C6E0);
          v11 = *(*(v10 + 24) + 16);
        }

        if (sub_24F91FA08() < v11)
        {
          v13 = *(v10 + 24);

          v14 = sub_24F91FA08();
          if ((v14 & 0x8000000000000000) == 0)
          {
            if (v14 < *(v13 + 16))
            {
              sub_24E615E00(v13 + 40 * v14 + 32, a1);

              v15 = *(v10 + 16);

              *(a1 + 40) = v15;
              *(a1 + 41) = 2;
              return;
            }

            goto LABEL_28;
          }

LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          return;
        }
      }
    }

LABEL_18:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 40) = -256;
    return;
  }

  if (!*(v7 + 16))
  {

    *(a1 + 25) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 41) = 4;
    return;
  }

  v16 = sub_24ED53A44();

  if (!v16)
  {
    goto LABEL_18;
  }

  *a1 = v16;
  *(a1 + 41) = 0;
}

uint64_t sub_24ED58FC8(unint64_t a1)
{
  result = sub_24ED570C8();
  if ((result & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v3 = *(result + 8 * a1 + 32);

      v4 = *(v3 + 16);

      if (v4 == 3)
      {
        goto LABEL_5;
      }

      return 0;
    }

    __break(1u);
    return result;
  }

  v9 = MEMORY[0x253052270](a1, result);

  v10 = *(v9 + 16);
  swift_unknownObjectRelease();
  if (v10 != 3)
  {
    return 0;
  }

LABEL_5:
  result = sub_24ED57704(a1);
  if (!result)
  {
    return result;
  }

  v5 = *(result + 24);

  v6 = *(v5 + 16);

  if (!v6)
  {
    return 0;
  }

  result = sub_24ED57704(a1);
  if (result)
  {
    v7 = *(result + 40);
    if (v7)
    {
      v8 = *(v7 + 16);
    }

    else
    {
      v8 = 0;
    }

    return v8;
  }

  return result;
}

uint64_t sub_24ED590FC(unint64_t a1)
{
  result = sub_24ED570C8();
  if ((result & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v3 = *(result + 8 * a1 + 32);

      v4 = *(v3 + 16);

      if (v4 == 3)
      {
        goto LABEL_5;
      }

      return 0;
    }

    __break(1u);
    return result;
  }

  v9 = MEMORY[0x253052270](a1, result);

  v10 = *(v9 + 16);
  swift_unknownObjectRelease();
  if (v10 != 3)
  {
    return 0;
  }

LABEL_5:
  result = sub_24ED57704(a1);
  if (!result)
  {
    return result;
  }

  v5 = *(result + 24);

  v6 = *(v5 + 16);

  if (!v6)
  {
    return 0;
  }

  result = sub_24ED57704(a1);
  if (result)
  {
    v7 = *(result + 40);
    if (v7)
    {
      v8 = *(v7 + 32);
    }

    else
    {
      v8 = 0;
    }

    return v8;
  }

  return result;
}

uint64_t sub_24ED59224(unint64_t a1)
{
  v5 = sub_24ED570C8();
  if ((v5 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v6 = *(v5 + 8 * a1 + 32);

      v7 = *(v6 + 16);

      if (v7 != 2)
      {
        if (v7 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_14:
      if (ProductPresenter.numberOfNonShelfRows(for:)(a1) < 1)
      {
        return 0;
      }

      v3 = a1 - 1;
      if (a1 < 1)
      {
LABEL_20:
        if (*(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
        {
          v21 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
        }

        else
        {
          v21 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
          if (!v21)
          {
            return 0;
          }
        }

        v22 = *(v21 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_mediaSectionTitle);

        return v22;
      }

      result = sub_24ED570C8();
      v2 = result;
      if ((result & 0xC000000000000001) == 0)
      {
        if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) < a1)
        {
          __break(1u);
          return result;
        }

        v15 = *(result + 8 * v3 + 32);

LABEL_19:

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24F96E2B0;
        type metadata accessor for ProductPageSection();
        v17 = swift_allocObject();
        *(v17 + 16) = 1;
        *(v17 + 24) = 0;
        *(v17 + 32) = 0;
        *(inited + 32) = v17;
        v18 = swift_allocObject();
        *(v18 + 16) = 3;
        *(v18 + 24) = 0xD000000000000012;
        *(v18 + 32) = 0x800000024FA3F690;
        *(inited + 40) = v18;
        v19 = swift_allocObject();
        *(v19 + 16) = 3;
        *(v19 + 24) = 0xD000000000000011;
        *(v19 + 32) = 0x800000024FA3F670;
        *(inited + 48) = v19;
        v24 = v15;
        MEMORY[0x28223BE20](v19);
        v23[2] = &v24;
        v20 = sub_24E615B10(sub_24ED5CAAC, v23, inited);

        if (v20)
        {
          return 0;
        }

        goto LABEL_20;
      }

LABEL_29:
      v15 = MEMORY[0x253052270](v3, v2);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_29;
  }

  v13 = MEMORY[0x253052270](a1, v5);

  v14 = *(v13 + 16);
  swift_unknownObjectRelease();
  if (v14 != 3)
  {
    if (v14 != 2)
    {
      return 0;
    }

    goto LABEL_14;
  }

LABEL_6:
  result = sub_24ED57704(a1);
  if (!result)
  {
    return result;
  }

  v9 = *(result + 24);

  v10 = *(v9 + 16);

  if (v10)
  {
    result = sub_24ED57704(a1);
    if (!result)
    {
      return result;
    }

    v11 = *(result + 40);
    if (v11)
    {
      v12 = *(v11 + 72);

      return v12;
    }
  }

  return 0;
}

uint64_t sub_24ED59574(unint64_t a1)
{
  result = sub_24ED570C8();
  if ((result & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v3 = *(result + 8 * a1 + 32);

      v4 = *(v3 + 16);

      if (v4 == 3)
      {
        goto LABEL_5;
      }

      return 0;
    }

    __break(1u);
    return result;
  }

  v9 = MEMORY[0x253052270](a1, result);

  v10 = *(v9 + 16);
  swift_unknownObjectRelease();
  if (v10 != 3)
  {
    return 0;
  }

LABEL_5:
  result = sub_24ED57704(a1);
  if (!result)
  {
    return result;
  }

  v5 = *(result + 24);

  v6 = *(v5 + 16);

  if (!v6)
  {
    return 0;
  }

  result = sub_24ED57704(a1);
  if (result)
  {
    v7 = *(result + 40);
    if (v7)
    {
      v8 = *(v7 + 88);
    }

    else
    {
      v8 = 0;
    }

    return v8;
  }

  return result;
}

unint64_t sub_24ED5969C(uint64_t a1)
{
  v2 = &OBJC_IVAR____TtC12GameStoreKit11ProductPage_badges;
  v3 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_badges);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (!v4 || ((v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct)) != 0 ? (v6 = v5 == a1) : (v6 = 0), !v6))
  {

    return v3;
  }

  v8 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {

    v10 = -i;
    v11 = 4;
    v24 = v8;
LABEL_11:
    if (v10 + v11 == 4)
    {

      return v3;
    }

    v12 = v11 - 4;
    if ((v3 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (v12 < *(v8 + 16))
    {
      v13 = *(v3 + 8 * v11);

      goto LABEL_15;
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  v13 = MEMORY[0x253052270](v11 - 4, v3);
LABEL_15:
  switch(*(v13 + 16))
  {
    case 2:

      goto LABEL_23;
    default:
      v8 = sub_24F92CE08();

      if ((v8 & 1) == 0)
      {
        ++v11;
        v8 = v24;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_48;
        }

        goto LABEL_11;
      }

LABEL_23:
      v14 = *(v4 + *v2);
      v22 = *v2;
      v23 = v4;
      if (v14 >> 62)
      {
        v15 = sub_24F92C738();
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v4 = -v15;
      v16 = 4;
      while (v4 + v16 != 4)
      {
        v17 = v16 - 4;
        if ((v14 & 0xC000000000000001) != 0)
        {
          v2 = MEMORY[0x253052270](v16 - 4, v14);
        }

        else
        {
          if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_49;
          }

          v2 = *(v14 + 8 * v16);
        }

        switch(*(v2 + 16))
        {
          case 2:

            goto LABEL_37;
          default:
            v8 = sub_24F92CE08();

            if (v8)
            {
LABEL_37:

              v18 = *(v23 + v22);
              if ((v18 & 0xC000000000000001) != 0)
              {
                v19 = MEMORY[0x253052270](v16 - 4);
                goto LABEL_40;
              }

              if (v17 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v19 = *(v18 + 8 * v16);

LABEL_40:
                isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
                if (v3 >> 62 || !isUniquelyReferenced_nonNull_bridgeObject)
                {
                  v3 = sub_24ECDE964(v3);

                  v21 = v3 & 0xFFFFFFFFFFFFFF8;
                }

                else
                {

                  v21 = v24;
                }

                if (v12 < *(v21 + 16))
                {
                  *(v21 + 8 * v11) = v19;

                  return v3;
                }

                __break(1u);
              }

              __break(1u);
              JUMPOUT(0x24ED59D24);
            }

            ++v16;
            if (__OFADD__(v17, 1))
            {
              goto LABEL_50;
            }

            break;
        }
      }

      return v3;
  }
}

uint64_t sub_24ED59D9C(unint64_t a1)
{
  result = sub_24ED570C8();
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x253052270](a1, result);
    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v3 = *(result + 8 * a1 + 32);

LABEL_5:

    return v3;
  }

  __break(1u);
  return result;
}

double sub_24ED59E20(char *a1)
{
  v2 = *a1;
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v3)
    {
      return dbl_24F99AEF0[v2];
    }
  }

  v4 = *(v3 + 48);

  if (v4)
  {
  }

  return dbl_24F99AEF0[v2];
}

uint64_t sub_24ED59F04(uint64_t a1)
{
  v2 = sub_24ED570C8();
  if (v2 >> 62)
  {
    v3 = sub_24F92C738();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = __OFADD__(a1, 1);
  v6 = a1 + 1;
  if (v5)
  {
    __break(1u);
  }

  else if (v6 >= v3)
  {
    return 0;
  }

  else
  {
    result = sub_24ED57704(v6);
    if (result)
    {

      sub_24ED51FD8(v6, &v7);
      return v7 != 36;
    }
  }

  return result;
}

uint64_t sub_24ED59FB4(__n128 a1)
{
  v2 = sub_24F91FA78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 0xEB0000000073746FLL;
  result = sub_24F92CE08();
  if (result)
  {
    return result;
  }

  v27 = v2;
  v7 = sub_24ED570C8();
  v8 = v7;
  if (v7 >> 62)
  {
LABEL_44:
    v9 = sub_24F92C738();
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_19:
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_19;
  }

LABEL_5:
  v26 = v1;
  v10 = 0;
  v1 = v5;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x253052270](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    if (*(v11 + 16) > 1u)
    {
      break;
    }

    if (*(v11 + 16))
    {
      v5 = 0xE900000000000070;
    }

    else
    {
      v5 = 0xEF74736575716552;
    }

LABEL_16:
    v12 = sub_24F92CE08();

    if (v12)
    {
      goto LABEL_24;
    }

    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    ++v10;
    if (v13 == v9)
    {
      goto LABEL_19;
    }
  }

  if (*(v11 + 16) == 3)
  {
    v5 = 0xE500000000000000;
    goto LABEL_16;
  }

LABEL_24:

  v14 = v26;
  v15 = v27;
  if (*&v26[OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct])
  {
    v16 = *&v26[OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct];
  }

  else
  {
    v16 = *&v26[OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct];
    if (!v16)
    {
      return result;
    }
  }

  v17 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_media;
  swift_beginAccess();
  v18 = *(v16 + v17);

  if (v18 >> 62)
  {
    v8 = sub_24F92C738();
  }

  else
  {
    v8 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 >= 1)
  {
    v14[OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isMediaExpanded] = 1;
    v19 = MEMORY[0x277D84F90];
    if (v8 != 1)
    {
      v29[0] = MEMORY[0x277D84F90];
      sub_24F458948(0, v8 - 1, 0);
      v1 = v28;
      v19 = v29[0];
      v5 = 1;
      while (1)
      {
        MEMORY[0x253045380](v5, v10);
        v29[0] = v19;
        v21 = *(v19 + 16);
        v20 = *(v19 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_24F458948((v20 > 1), v21 + 1, 1);
          v1 = v28;
          v19 = v29[0];
        }

        *(v19 + 16) = v21 + 1;
        (*(v3 + 32))(v19 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v21, v1, v15);
        if (v8 == v5)
        {
          goto LABEL_42;
        }

        if (v8 == ++v5)
        {
          v14 = v26;
          break;
        }
      }
    }

    v22 = &v14[OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view];
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
    }

    v23 = *(v22 + 1);
    ObjectType = swift_getObjectType();
    (*(v23 + 40))(v19, ObjectType, v23);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24ED5A450()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  if (v1 && *(v1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_developerAction))
  {
    v2 = v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      memset(v8, 0, sizeof(v8));
      v5 = *(*(v3 + 16) + 8);
      v6 = *(v5 + 8);

      v6(v7, v8, ObjectType, v5);

      swift_unknownObjectRelease();
      sub_24E601704(v8, &qword_27F2129B0, &unk_24F945320);
    }
  }
}

double sub_24ED5A544@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (!v3)
  {
    v6 = 0;
    v5 = 0;
    v8 = 0;
    v10 = 0;
    v9 = 0;
    v11 = 0;
LABEL_7:
    v13 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy);
      v15 = *(v13 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 8);
      v17 = *(v13 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 16);
      v16 = *(v13 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 24);
      v20 = *(v13 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 40);
      v21 = *(v13 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 32);
      v18 = v9;
      v19 = *(v13 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 48);
      sub_24E901B80(v14, v15, v17, v16, v21, v20, v19);
      sub_24E901BD0(v6, v5, v8, 0, v10, v18, v11);
      *a1 = v14;
      a1[1] = v15;
      a1[2] = v17;
      a1[3] = v16;
      a1[4] = v21;
      a1[5] = v20;
      a1[6] = v19;
    }

    else
    {
      sub_24E901BD0(v6, v5, v8, 0, v10, v9, v11);
      a1[6] = 0;
      result = 0.0;
      *(a1 + 1) = 0u;
      *(a1 + 2) = 0u;
      *a1 = 0u;
    }

    return result;
  }

  v4 = (v3 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy);
  v6 = *(v3 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy);
  v5 = *(v3 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 8);
  v8 = *(v3 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 16);
  v7 = *(v3 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 24);
  v10 = v4[4];
  v9 = v4[5];
  v11 = v4[6];
  if (!v7)
  {
    goto LABEL_7;
  }

  *a1 = v6;
  a1[1] = v5;
  a1[2] = v8;
  a1[3] = v7;
  a1[4] = v10;
  a1[5] = v9;
  a1[6] = v11;

  return result;
}

uint64_t sub_24ED5A6DC()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_didAskToBuy;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_24ED5A720()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_didAskToBuy;
  swift_beginAccess();
  if ((*(v1 + v2) & 1) == 0)
  {
    *(v1 + v2) = 1;
    v4 = &OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_isStoreRequest;
    if (sub_24F92CE08())
    {
      goto LABEL_22;
    }

    v5 = sub_24ED570C8();
    v6 = v5;
    if (v5 >> 62)
    {
LABEL_20:
      v7 = sub_24F92C738();
      if (v7)
      {
LABEL_5:
        v8 = 0;
        v4 = (v6 & 0xC000000000000001);
        while (1)
        {
          if (v4)
          {
            v9 = MEMORY[0x253052270](v8, v6);
          }

          else
          {
            if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_19;
            }

            v9 = *(v6 + 8 * v8 + 32);
          }

          if (!*(v9 + 16))
          {
            break;
          }

          v10 = sub_24F92CE08();

          if (v10)
          {
            goto LABEL_16;
          }

          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

          ++v8;
          if (v11 == v7)
          {

            v4 = &OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_isStoreRequest;
            goto LABEL_22;
          }
        }

LABEL_16:

        v4 = &OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_isStoreRequest;
        v12 = v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v13 = *(v12 + 8);
          ObjectType = swift_getObjectType();
          (*(v13 + 24))(v8, ObjectType, v13);
          swift_unknownObjectRelease();
        }

LABEL_22:
        ProductPresenter.reloadTopLockup()();
        v15 = v1 + v4[209];
        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {
          return result;
        }

        v16 = *(v15 + 8);
        if (*(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
        {
          v17 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
        }

        else
        {
          v17 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
          if (!v17)
          {
            v18 = 0;
            goto LABEL_28;
          }
        }

        v18 = *(v17 + 232);

LABEL_28:
        v19 = swift_getObjectType();
        v20 = sub_24ED58570(1);
        (*(v16 + 56))(v18, v21, v19, v16, v20);
        swift_unknownObjectRelease();

        return result;
      }
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_22;
  }

  return result;
}

void sub_24ED5AA94()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_didAskToBuy;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    *(v0 + v1) = 0;
    if ((sub_24F92CE08() & 1) == 0)
    {
      v12 = v0;
      v2 = sub_24ED570C8();
      v3 = v2;
      if (v2 >> 62)
      {
LABEL_22:
        v4 = sub_24F92C738();
        v0 = v12;
        if (v4)
        {
LABEL_5:
          v5 = 0;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v6 = MEMORY[0x253052270](v5, v3);
            }

            else
            {
              if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_21;
              }

              v6 = *(v3 + 8 * v5 + 32);
            }

            if (!*(v6 + 16))
            {
              break;
            }

            v7 = sub_24F92CE08();

            if (v7)
            {
              goto LABEL_16;
            }

            v8 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
              __break(1u);
LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

            ++v5;
            if (v8 == v4)
            {
              goto LABEL_15;
            }
          }

LABEL_16:

          v9 = v0 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v10 = *(v9 + 8);
            ObjectType = swift_getObjectType();
            (*(v10 + 24))(v5, ObjectType, v10);
            swift_unknownObjectRelease();
          }

          goto LABEL_18;
        }
      }

      else
      {
        v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4)
        {
          goto LABEL_5;
        }
      }

LABEL_15:
    }

LABEL_18:
    ProductPresenter.reloadTopLockup()();
  }
}

uint64_t sub_24ED5AD74()
{
  v51 = v0;
  v1 = v0[10].i64[0];
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
  if (!v2)
  {
    v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
    if (!v2)
    {
      v3 = 0;
      v5 = (v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentlyObservedAdamId);
      v8 = (v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentlyObservedAdamId + 8);
      v7 = *v8;
      goto LABEL_13;
    }
  }

  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = (v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentlyObservedAdamId);
  v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentlyObservedAdamId);
  v8 = (v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentlyObservedAdamId + 8);
  v7 = *v8;

  if (!v4)
  {
LABEL_13:
    if (!v7)
    {
      goto LABEL_55;
    }

    v11 = 0;
    v10 = 1;
    goto LABEL_15;
  }

  if (!v7)
  {
    v10 = 0;
    v11 = v4;
LABEL_15:

    v12 = *v8;
    if (!*v8)
    {
      if (v10)
      {
        goto LABEL_54;
      }

      goto LABEL_35;
    }

    v13 = *v5;
    if (v10)
    {

      v14 = 1;
      goto LABEL_30;
    }

    v4 = v11;
LABEL_24:
    if (v13 == v3 && v12 == v11)
    {
    }

    else
    {
      v16 = sub_24F92CE08();

      if ((v16 & 1) == 0)
      {
        v14 = 0;
LABEL_30:
        v47 = v14;
        v17 = v0[10].i64[0];
        v18 = *(v17 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController + 8);
        ObjectType = swift_getObjectType();
        v49 = v13;
        v50 = v12;
        (*(v18 + 56))(&v49, ObjectType, v18);
        v21 = v20;

        v22 = swift_getObjectType();
        (*(v21 + 80))(v17, v22, v21);
        swift_unknownObjectRelease();
        if (v47)
        {
          goto LABEL_54;
        }

        goto LABEL_35;
      }
    }

    goto LABEL_36;
  }

  v9 = v3 == v6 && v7 == v4;
  if (v9 || (sub_24F92CE08() & 1) != 0)
  {
    goto LABEL_55;
  }

  v12 = *v8;
  if (*v8)
  {
    v13 = *v5;
    v11 = v4;
    goto LABEL_24;
  }

  v11 = v4;
LABEL_35:
  v4 = v11;
LABEL_36:
  v0[12].i64[0] = v8;
  v0[12].i64[1] = v4;
  v0[11].i64[0] = v11;
  v0[11].i64[1] = v5;
  v0[10].i64[1] = v3;
  if (*v8)
  {
    if (v3 == *v5 && v11 == *v8)
    {

LABEL_53:

LABEL_54:
      *v5 = v3;
      *v8 = v11;
LABEL_55:

      v38 = v0->i64[1];

      return v38();
    }

    v24 = sub_24F92CE08();

    if (v24)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v25 = *(v0[10].i64[0] + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_appStateController + 8);
  v26 = swift_getObjectType();
  v49 = v3;
  v50 = v4;
  v27 = (*(v25 + 56))(&v49, v26, v25);
  v29 = v28;
  v0[13].i64[0] = v27;
  v0[13].i64[1] = v28;
  v30 = swift_getObjectType();
  v0[14].i64[0] = v30;
  (*(v29 + 16))();
  v31 = v0[1].i64[0];
  v32 = v0[4].u64[0];
  v48 = v26;
  if (!(v32 >> 60))
  {
    if (v0[1].i64[0] != 1)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (v32 >> 60 == 8)
  {
    v34 = v0[2].i64[0];
    v33 = v0[2].i64[1];
    v35 = v0[1].i64[1];
    v36 = v0[3].i64[0] | v0[3].i64[1] | v0[4].i64[1];
    if (v32 != 0x8000000000000000 || v36 | v31 | v33 | v34 | v35)
    {
      if (v32 == 0x8000000000000000 && v31 == 4)
      {
        v37 = v36 | v33 | v34 | v35;
        if (!v37)
        {
          goto LABEL_61;
        }
      }

      goto LABEL_51;
    }

LABEL_59:
    LOBYTE(v37) = 0;
    goto LABEL_61;
  }

LABEL_51:
  sub_24E88D2AC(v0[1].i64);
LABEL_60:
  LOBYTE(v37) = 1;
LABEL_61:
  *(v0[10].i64[0] + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_hasBeenPurchasedForReviewsContainer) = v37;
  v40 = 1;
  (*(v29 + 40))(1, v30, v29);
  v41 = v0[8].u64[0];
  v42 = v41 >> 60;
  if (v41 >> 60 != 2 && v42 != 7)
  {
    if (v42 != 8 || v0[8].i64[1] || v41 != 0x8000000000000000 || v0[5].i64[0] != 1 || (v43 = vorrq_s8(v0[6], v0[7]), *&vorr_s8(*v43.i8, *&vextq_s8(v43, v43, 8uLL)) | v0[5].i64[1]))
    {
      v40 = 0;
    }
  }

  v44 = v0[10].i64[0];
  sub_24E88D2AC(v0[5].i64);
  *(v44 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isLocalApplicationForAppEvents) = v40;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_shouldDisplayBetaBanner) = (*(v29 + 24))(v30, v29) & 1;
  v0[9].i64[0] = v3;
  v0[9].i64[1] = v4;
  v46 = (*(v25 + 104) + **(v25 + 104));
  v45 = swift_task_alloc();
  v0[14].i64[1] = v45;
  *v45 = v0;
  v45[1] = sub_24ED5B35C;

  return v46(v0 + 9, v48, v25);
}

uint64_t sub_24ED5B35C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = a2;

  return MEMORY[0x2822009F8](sub_24ED5B45C, 0, 0);
}

uint64_t sub_24ED5B45C()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 200);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_currentBetaBundleVersion) = *(v0 + 240);

  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v5;
  v7[4] = v3;
  v8 = *(v2 + 72);

  v8(v4, sub_24ED5ED24, v7, v1, v2);

  swift_unknownObjectRelease();
  v9 = *(v0 + 192);
  v10 = *(v0 + 176);
  **(v0 + 184) = *(v0 + 168);
  *v9 = v10;

  v11 = *(v0 + 8);

  return v11();
}

double sub_24ED5B5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v26 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_didAskToBuy;
    swift_beginAccess();
    if (*(v13 + v14) == 1)
    {
      ObjectType = swift_getObjectType();
      (*(a2 + 16))(v26, ObjectType, a2);
      v16 = v29 >> 60;
      if ((v29 >> 60) - 5 < 2 || v16 == 2 || v16 == 7 || v16 == 8 && !v30 && v29 == 0x8000000000000000 && v26[0] == 1 && (v25 = vorrq_s8(v27, v28), !(*&vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)) | v26[1])))
      {
        sub_24ED5AA94();
      }

      sub_24E88D2AC(v26);
    }

    else
    {
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24ED56528(a1, a2);
  }

  swift_beginAccess();
  v17 = swift_weakLoadStrong();
  if (v17)
  {
    v18 = *(v17 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
    if (v18)
    {
    }

    else
    {
      v18 = *(v17 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    v19 = v18[2] == a4 && v18[3] == a5;
    if (v19 || (sub_24F92CE08() & 1) != 0)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24ED4EE5C(v18);
      }
    }
  }

LABEL_21:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24ED568F0(a1, a2);
  }

  swift_beginAccess();
  v20 = swift_weakLoadStrong();
  if (v20)
  {
    v22 = v20;
    v23 = sub_24F92B858();
    (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v22;
    v24[5] = a1;
    v24[6] = a2;
    swift_unknownObjectRetain();
    sub_24EA998B8(0, 0, v11, &unk_24F99AEB0, v24);
  }

  return result;
}

uint64_t sub_24ED5B9CC(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v2)
    {
      return 0;
    }

    v3 = a1;

    a1 = v3;
  }

  v4 = *(v2 + *a1);

  return v4;
}

uint64_t sub_24ED5BA90()
{
  v0 = sub_24ED570C8();
  if (v0 >> 62)
  {
    v1 = sub_24F92C738();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1;
}

id sub_24ED5BB24(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_24F91F3B8();
  v13[0] = 0;
  v5 = [v2 initWithURL:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_24F91F4A8();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_24F91F278();

    swift_willThrow();
    v11 = sub_24F91F4A8();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

BOOL sub_24ED5BC70(uint64_t a1, uint64_t a2)
{
  v3 = 0xEF74736575716552;
  v4 = 0x7975426F546B7361;
  v5 = *(a1 + 16);
  v6 = 0x68736E6565726373;
  v7 = 0xEB0000000073746FLL;
  if (v5 != 2)
  {
    v6 = 0x666C656873;
    v7 = 0xE500000000000000;
  }

  v8 = 0x756B636F4C706F74;
  v9 = 0xE900000000000070;
  if (!*(a1 + 16))
  {
    v8 = 0x7975426F546B7361;
    v9 = 0xEF74736575716552;
  }

  if (*(a1 + 16) <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v5 <= 1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v12 = 0x68736E6565726373;
  v13 = 0xEB0000000073746FLL;
  if (*(a2 + 16) != 2)
  {
    v12 = 0x666C656873;
    v13 = 0xE500000000000000;
  }

  if (*(a2 + 16))
  {
    v4 = 0x756B636F4C706F74;
    v3 = 0xE900000000000070;
  }

  if (*(a2 + 16) <= 1u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v12;
  }

  if (*(a2 + 16) <= 1u)
  {
    v15 = v3;
  }

  else
  {
    v15 = v13;
  }

  if (v10 == v14 && v11 == v15)
  {
  }

  else
  {
    v17 = sub_24F92CE08();

    result = 0;
    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  v19 = *(a1 + 32);
  v20 = *(a2 + 32);
  result = (v19 | v20) == 0;
  if (v19 && v20)
  {
    if (*(a1 + 24) == *(a2 + 24) && v19 == v20)
    {
      return 1;
    }

    else
    {
      return sub_24F92CE08() & 1;
    }
  }

  return result;
}

uint64_t sub_24ED5BE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 240);
  if (!v4)
  {
    v11 = 0u;
    v12 = 0u;
    return sub_24E601704(&v11, &qword_27F2129B0, &unk_24F945320);
  }

  sub_24E60169C(v4 + 144, &v11, &qword_27F2129B0, &unk_24F945320);
  if (!*(&v12 + 1))
  {
    return sub_24E601704(&v11, &qword_27F2129B0, &unk_24F945320);
  }

  sub_24E612B0C(&v11, v13);
  v9 = sub_24ED5BF5C(a1, a2, a3);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      sub_24ED5C240(a1, v13, a2, a3, a4);
    }

    else
    {
      sub_24ED5C668(0, a1, a2, a3, a4);
    }
  }

  else if (v9)
  {
    sub_24ED5C454(a1, v13, a2, a3, a4);
  }

  else
  {
    sub_24ED5C014(a1, v13, a2, a3, a4);
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_24ED5BF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 240);
  if (!v3)
  {
    return 0;
  }

  if (*(v3 + 121) != 1)
  {
    return 0;
  }

  v5 = Lockup.numberOfPurchasedChildren(using:)(a2, a3);
  if (v6)
  {
    return 3;
  }

  v7 = *(a1 + 304);
  if (!v7)
  {
    return 3;
  }

  if (v7 >> 62)
  {
    v11 = v5;
    v12 = sub_24F92C738();
    v5 = v11;
    v9 = v11 < v12;
    if (v11 == v12)
    {
      return 1;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = v5 < v8;
    if (v5 == v8)
    {
      return 1;
    }
  }

  if (!v9 || v5 <= 0)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_24ED5C014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[3] = type metadata accessor for ProductPage(0);
  v21[4] = &off_2861DE828;
  v21[0] = a1;
  type metadata accessor for JSIntentDispatcher();
  v10 = *(a5 + 16);
  sub_24F928FD8();

  sub_24F92A758();
  sub_24E643A9C(a2, &v20);
  v19[0] = 0xD00000000000001ELL;
  v19[1] = 0x800000024FA48C90;
  sub_24EB45E00(v19, v10, "GameStoreKit/CompleteMyBundleController.swift", 45, 2);
  v11 = swift_allocObject();
  swift_weakInit();
  sub_24E615E00(v21, &v16);
  v12 = swift_allocObject();
  v12[2] = v11;
  sub_24E612C80(&v16, (v12 + 3));
  v12[8] = a3;
  v12[9] = a4;
  swift_allocObject();
  swift_weakInit();
  v13 = sub_24E74EC40();
  swift_unknownObjectRetain();

  v14 = sub_24F92BEF8();
  v17 = v13;
  v18 = MEMORY[0x277D225C0];
  *&v16 = v14;
  sub_24F92A958();

  sub_24E8E6460(v19);
  __swift_destroy_boxed_opaque_existential_1(&v16);

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

double sub_24ED5C240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 232) && ((type metadata accessor for OfferConfirmationAction(0), (v9 = swift_dynamicCastClass()) != 0) || (type metadata accessor for OfferAction(0), (v9 = swift_dynamicCastClass()) != 0)))
  {
    v10 = v9;
    v11 = *(a1 + 240);
    type metadata accessor for PersonalizedOfferContext();
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    *(v12 + 32) = 1;

    swift_retain_n();
    sub_24ED5C668(v12, a1, a3, a4, a5);
  }

  else
  {
    if (qword_27F210578 != -1)
    {
      swift_once();
    }

    v13 = sub_24F92AAE8();
    __swift_project_value_buffer(v13, qword_27F39C3C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A598();

    *(a5 + 40) = 0;
  }

  return result;
}

double sub_24ED5C454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 232) && ((type metadata accessor for OfferConfirmationAction(0), (v9 = swift_dynamicCastClass()) != 0) || (type metadata accessor for OfferAction(0), (v9 = swift_dynamicCastClass()) != 0)))
  {
    v10 = v9;
    v11 = *(a1 + 240);
    type metadata accessor for PersonalizedOfferContext();
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    *(v12 + 32) = 2;

    swift_retain_n();
    sub_24ED5C668(v12, a1, a3, a4, a5);
  }

  else
  {
    if (qword_27F210578 != -1)
    {
      swift_once();
    }

    v13 = sub_24F92AAE8();
    __swift_project_value_buffer(v13, qword_27F39C3C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A598();

    *(a5 + 40) = 0;
  }

  return result;
}

uint64_t sub_24ED5C668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[3] = type metadata accessor for ProductPage(0);
  v26[4] = &off_2861DE828;
  v26[0] = a2;
  *(a5 + 40) = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_24E615E00(v26, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221018, &qword_24F9657B0);
    if (swift_dynamicCast())
    {
      v11 = v10 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = a4;
        v13 = *(v11 + 8);
        swift_getObjectType();
        sub_24EA80068();
        v14 = *(v13 + 16);
        a4 = v12;
        (*(v14 + 32))();

        swift_unknownObjectRelease();
      }

      ProductPresenter.reloadTopLockup()();
    }

    swift_unknownObjectRelease();
  }

  if (a1)
  {
    if (*(a1 + 32) <= 1u)
    {
      v15 = sub_24F92CE08();

      if ((v15 & 1) == 0)
      {
        return __swift_destroy_boxed_opaque_existential_1(v26);
      }

      v16 = *(a2 + 240);
      if (!v16)
      {
        return __swift_destroy_boxed_opaque_existential_1(v26);
      }

LABEL_14:
      v17 = *(v16 + 24);
      v18 = *(v16 + 32);
      ObjectType = swift_getObjectType();
      v25[0] = v17;
      v25[1] = v18;
      v20 = *(a4 + 56);

      v20(v25, ObjectType, a4);
      v22 = v21;

      v23 = swift_getObjectType();
      v25[0] = 0;
      v25[6] = 0x1000000000000000;
      (*(v22 + 64))(v25, v23, v22);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v26);
    }

    if (*(a1 + 32) == 2)
    {
      swift_bridgeObjectRelease_n();
      v16 = *(a2 + 240);
      if (v16)
      {
        goto LABEL_14;
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

unint64_t sub_24ED5C928(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_24ED5C964(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24ED5AD54(a1, v4, v5, v6);
}

uint64_t sub_24ED5CA18()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t type metadata accessor for ProductPresenter(uint64_t a1)
{
  result = qword_27F22ED28;
  if (!qword_27F22ED28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24ED5CAD8()
{
  result = qword_27F22ED10;
  if (!qword_27F22ED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22ED10);
  }

  return result;
}

unint64_t sub_24ED5CB30()
{
  result = qword_27F22ED18;
  if (!qword_27F22ED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22ED18);
  }

  return result;
}

uint64_t sub_24ED5CB84(uint64_t a1)
{
  result = sub_24ED5EA84(&qword_27F22ED20, type metadata accessor for ProductPresenter, &protocol conformance descriptor for BasePresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24ED5CBDC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24ED5CC38(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit11ProductDataO(uint64_t a1)
{
  if ((*(a1 + 41) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 41) & 7;
  }
}

uint64_t sub_24ED5CD08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 42))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 41);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24ED5CD44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_24ED5CD90(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 41) = a2;
  return result;
}

uint64_t sub_24ED5CE84(uint64_t a1)
{
  result = sub_24F91F4A8();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t block_copy_helper_72(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_76Tm_0()
{
  v1 = sub_24F929158();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_24F928738();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  swift_unknownObjectRelease();

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  v9 = (v3 + 96) & ~v3;
  v10 = (v9 + v4 + v7) & ~v7;
  (*(v2 + 8))(v0 + v9, v1);
  (*(v6 + 8))(v0 + v10, v5);

  return swift_deallocObject();
}