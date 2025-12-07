uint64_t sub_24B4C739C@<X0>(uint64_t a1@<X8>)
{
  sub_24B5171BC();
  result = sub_24B5174AC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double sub_24B4C7414@<D0>(uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v12 = sub_24B516C4C();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_24B517B1C();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_24B517AFC();
  MEMORY[0x28223BE20](v14 - 8);
  *&v19 = a3;
  *(&v19 + 1) = a4;
  *&v20 = a5;
  *(&v20 + 1) = a6;
  type metadata accessor for BrowseView(0, &v19);
  sub_24B4C618C();
  swift_getKeyPath();
  sub_24B5179CC();

  if (v19 == 1)
  {
    sub_24B517AEC();
    sub_24B517ADC();
    sub_24B517ACC();
    sub_24B517ADC();
    sub_24B517B0C();
    if (qword_27EFFBD40 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_24B517ABC();
  if (qword_27EFFBD40 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v15 = qword_27F017B80;
  sub_24B4C618C();
  swift_getKeyPath();
  sub_24B5179CC();

  sub_24B51746C();
  sub_24B51723C();
  result = *&v19;
  v17 = v20;
  v18 = v21;
  *a7 = v19;
  *(a7 + 16) = v17;
  *(a7 + 32) = v18;
  return result;
}

uint64_t sub_24B4C7798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BrowseAction(0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  type metadata accessor for BrowseView(0, v13);
  sub_24B4C618C();
  swift_storeEnumTagMultiPayload();
  sub_24B5179DC();

  return sub_24B4C7EC8(v11, type metadata accessor for BrowseAction);
}

uint64_t sub_24B4C78A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_24B5178FC();
  sub_24B516FFC();
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 40);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v7 = v9;
  v10 = v1;
  v2 = (type metadata accessor for BrowseView(0, &v8) - 8);
  v3 = (v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80)));
  sub_24B4956A8(*v3, v3[1]);
  v4 = v2[15];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCBE0, &qword_24B51CCA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCBD8, &qword_24B51CCA0);
  swift_getFunctionTypeMetadata2();
  v5 = sub_24B516C9C();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  (*(*(v7 - 8) + 8))(v3 + v2[16]);
  return swift_deallocObject();
}

uint64_t sub_24B4C7AE8(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v10[0] = v1[2];
  v2 = v10[0];
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v6 = *(type metadata accessor for BrowseView(0, v10) - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

void sub_24B4C7BE4(uint64_t a1)
{
  sub_24B4C7D00(319);
  if (v1 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCBE0, &qword_24B51CCA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCBD8, &qword_24B51CCA0);
    swift_getFunctionTypeMetadata2();
    sub_24B516C9C();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B4C7D00(uint64_t a1)
{
  if (!qword_2810ED7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCFE0, qword_24B51E338);
    sub_24B496A60(&qword_2810ED738, &qword_27EFFCFE0, qword_24B51E338, MEMORY[0x277D04410]);
    v1 = sub_24B516F8C();
    if (!v2)
    {
      atomic_store(v1, &qword_2810ED7A8);
    }
  }
}

uint64_t sub_24B4C7DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BrowseAction(0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  type metadata accessor for BrowseView(0, v13);
  sub_24B4C618C();
  swift_storeEnumTagMultiPayload();
  sub_24B5179DC();

  return sub_24B4C7EC8(v11, type metadata accessor for BrowseAction);
}

uint64_t sub_24B4C7EC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24B4C7F3C()
{
  result = qword_27EFFCFF8;
  if (!qword_27EFFCFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCFF0, &qword_24B51E370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCFF8);
  }

  return result;
}

__n128 CreatePlanBannerFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  return result;
}

uint64_t CreatePlanBannerFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD000, &unk_24B51E3C0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v75 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v75 - v17;
  result = MEMORY[0x28223BE20](v16);
  v21 = &v75 - v20;
  v22 = *a4;
  v23 = v4[1];
  v90 = *v4;
  v91 = v23;
  v92 = v4[2];
  switch(v22)
  {
    case 5:
      if (*(a2 + 56) == 1)
      {
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD008, &qword_24B51F200);
        v50 = v49[16];
        v83 = v49[20];
        v51 = &v15[v49[24]];
        v89[0] = 3;
        v88 = sub_24B4C894C();
        sub_24B517CBC();
        v52 = a3;
        v53 = *MEMORY[0x277D04400];
        v54 = sub_24B5179AC();
        v55 = *(v54 - 8);
        v56 = *(v55 + 104);
        v87 = v53;
        v85 = v56;
        v86 = v54;
        v84 = v55 + 104;
        (v56)(&v15[v50], v53);
        *v51 = &unk_24B51E3D0;
        *(v51 + 1) = 0;
        sub_24B517BDC();
        v57 = *MEMORY[0x277D043E8];
        v58 = sub_24B51799C();
        v59 = *(v58 - 8);
        v60 = *(v59 + 104);
        v79 = v58;
        v80 = v60;
        v78 = v59 + 104;
        (v60)(&v15[v83], v57);
        v61 = *(v9 + 104);
        LODWORD(v83) = *MEMORY[0x277D043B0];
        v82 = v61;
        v61(v15);
        v81 = v52;
        v62 = *v52;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_24B4CA2C4(0, *(v62 + 2) + 1, 1, v62, &qword_27EFFD070, &qword_24B51E568, &qword_27EFFD000, &unk_24B51E3C0);
        }

        v64 = *(v62 + 2);
        v63 = *(v62 + 3);
        if (v64 >= v63 >> 1)
        {
          v62 = sub_24B4CA2C4((v63 > 1), v64 + 1, 1, v62, &qword_27EFFD070, &qword_24B51E568, &qword_27EFFD000, &unk_24B51E3C0);
        }

        *(v62 + 2) = v64 + 1;
        v66 = *(v9 + 32);
        v65 = v9 + 32;
        v77 = (*(v65 + 48) + 32) & ~*(v65 + 48);
        v76 = *(v65 + 40);
        v67 = v66;
        v66(&v62[v77 + v76 * v64], v15, v8);
        v68 = v49[16];
        v69 = v49[20];
        v70 = &v12[v49[24]];
        v89[0] = 1;
        sub_24B517CBC();
        sub_24B517BDC();
        v85(&v12[v68], v87, v86);
        v80(&v12[v69], *MEMORY[0x277D043E0], v79);
        v71 = swift_allocObject();
        v72 = v91;
        v71[1] = v90;
        v71[2] = v72;
        v71[3] = v92;
        *v70 = &unk_24B51E3E0;
        *(v70 + 1) = v71;
        v82(v12, v83, v8);
        sub_24B4C9D14(&v90, v89);
        v74 = *(v62 + 2);
        v73 = *(v62 + 3);
        if (v74 >= v73 >> 1)
        {
          v62 = sub_24B4CA2C4((v73 > 1), v74 + 1, 1, v62, &qword_27EFFD070, &qword_24B51E568, &qword_27EFFD000, &unk_24B51E3C0);
        }

        *(v62 + 2) = v74 + 1;
        result = v67(&v62[v77 + v74 * v76], v12, v8);
        *v81 = v62;
      }

      break;
    case 4:
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD008, &qword_24B51F200);
      v38 = v37[16];
      v39 = v37[20];
      v40 = &v18[v37[24]];
      v89[0] = 0;
      sub_24B4C894C();
      sub_24B517CBC();
      v41 = *MEMORY[0x277D043F0];
      v42 = sub_24B5179AC();
      (*(*(v42 - 8) + 104))(&v18[v38], v41, v42);
      v43 = swift_allocObject();
      v44 = v91;
      v43[1] = v90;
      v43[2] = v44;
      v43[3] = v92;
      *v40 = &unk_24B51E3F0;
      *(v40 + 1) = v43;
      sub_24B4C9D14(&v90, v89);
      sub_24B517BDC();
      v45 = *MEMORY[0x277D043E8];
      v46 = sub_24B51799C();
      (*(*(v46 - 8) + 104))(&v18[v39], v45, v46);
      (*(v9 + 104))(v18, *MEMORY[0x277D043B0], v8);
      v34 = *a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_24B4CA2C4(0, v34[2] + 1, 1, v34, &qword_27EFFD070, &qword_24B51E568, &qword_27EFFD000, &unk_24B51E3C0);
      }

      v48 = v34[2];
      v47 = v34[3];
      if (v48 >= v47 >> 1)
      {
        v34 = sub_24B4CA2C4((v47 > 1), v48 + 1, 1, v34, &qword_27EFFD070, &qword_24B51E568, &qword_27EFFD000, &unk_24B51E3C0);
      }

      v34[2] = v48 + 1;
      result = (*(v9 + 32))(v34 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v48, v18, v8);
      goto LABEL_14;
    case 3:
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD008, &qword_24B51F200);
      v25 = v24[16];
      v26 = v24[20];
      v27 = &v21[v24[24]];
      v89[0] = 2;
      sub_24B4C894C();
      sub_24B517CBC();
      v28 = *MEMORY[0x277D04400];
      v29 = sub_24B5179AC();
      (*(*(v29 - 8) + 104))(&v21[v25], v28, v29);
      v30 = swift_allocObject();
      v31 = v91;
      v30[1] = v90;
      v30[2] = v31;
      v30[3] = v92;
      *v27 = &unk_24B51E400;
      *(v27 + 1) = v30;
      sub_24B4C9D14(&v90, v89);
      sub_24B517BDC();
      v32 = *MEMORY[0x277D043E8];
      v33 = sub_24B51799C();
      (*(*(v33 - 8) + 104))(&v21[v26], v32, v33);
      (*(v9 + 104))(v21, *MEMORY[0x277D043B0], v8);
      v34 = *a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_24B4CA2C4(0, v34[2] + 1, 1, v34, &qword_27EFFD070, &qword_24B51E568, &qword_27EFFD000, &unk_24B51E3C0);
      }

      v36 = v34[2];
      v35 = v34[3];
      if (v36 >= v35 >> 1)
      {
        v34 = sub_24B4CA2C4((v35 > 1), v36 + 1, 1, v34, &qword_27EFFD070, &qword_24B51E568, &qword_27EFFD000, &unk_24B51E3C0);
      }

      v34[2] = v36 + 1;
      result = (*(v9 + 32))(v34 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v36, v21, v8);
LABEL_14:
      *a3 = v34;
      return result;
    default:
      *(a2 + 56) = v22;
      break;
  }

  return result;
}

unint64_t sub_24B4C894C()
{
  result = qword_27EFFD010;
  if (!qword_27EFFD010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD010);
  }

  return result;
}

uint64_t sub_24B4C89A0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = sub_24B517BCC();
  v2[4] = sub_24B517BBC();
  v6 = (*(a2 + 32) + **(a2 + 32));
  v4 = swift_task_alloc();
  v2[5] = v4;
  *v4 = v2;
  v4[1] = sub_24B4C8AB4;

  return v6(v2 + 10);
}

uint64_t sub_24B4C8AB4()
{
  v2 = *v1;
  v2[6] = v0;

  v4 = sub_24B517B9C();
  v2[7] = v4;
  v2[8] = v3;
  if (v0)
  {
    v5 = sub_24B4C8E60;
  }

  else
  {
    v5 = sub_24B4C8C14;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B4C8C14()
{
  *(v0 + 81) = *(v0 + 80);
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD068, &qword_24B51E560);
  *v1 = v0;
  v1[1] = sub_24B4C8CDC;

  return MEMORY[0x282159B08](v0 + 81, v2);
}

uint64_t sub_24B4C8CDC()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_24B4C8DFC, v3, v2);
}

uint64_t sub_24B4C8DFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B4C8E60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B4C8EC4(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_24B517BCC();
  v2[3] = sub_24B517BBC();
  v6 = (*(a2 + 16) + **(a2 + 16));
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24B4C8FCC;

  return v6();
}

uint64_t sub_24B4C8FCC()
{
  *(*v1 + 40) = v0;

  v3 = sub_24B517B9C();
  if (v0)
  {
    v4 = sub_24B4C918C;
  }

  else
  {
    v4 = sub_24B4C9128;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_24B4C9128()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B4C918C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B4C91F0()
{
  *(v0 + 16) = sub_24B517BCC();
  *(v0 + 24) = sub_24B517BBC();
  *(v0 + 40) = 3;
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD068, &qword_24B51E560);
  *v1 = v0;
  v1[1] = sub_24B4C92D4;

  return MEMORY[0x282159B08](v0 + 40, v2);
}

uint64_t sub_24B4C92D4()
{

  v1 = sub_24B517B9C();

  return MEMORY[0x2822009F8](sub_24B4CA72C, v1, v0);
}

uint64_t sub_24B4C9410(uint64_t a1, int **a2)
{
  v2[12] = a1;
  v2[13] = sub_24B517BCC();
  v2[14] = sub_24B517BBC();
  v6 = (*a2 + **a2);
  v4 = swift_task_alloc();
  v2[15] = v4;
  *v4 = v2;
  v4[1] = sub_24B4C9524;

  return v6(v2 + 7);
}

uint64_t sub_24B4C9524()
{
  v1 = *v0;

  v3 = sub_24B517B9C();
  *(v1 + 128) = v3;
  *(v1 + 136) = v2;

  return MEMORY[0x2822009F8](sub_24B4C9668, v3, v2);
}

uint64_t sub_24B4C9668()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_24B517BBC();
  v0[18] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_24B4C9840;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 21, v5, v7);
}

uint64_t sub_24B4C9840()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 128);
    v5 = *(v2 + 136);

    return MEMORY[0x2822009F8](sub_24B4C9954, v4, v5);
  }

  return result;
}

uint64_t sub_24B4C9954()
{
  if (*(v0 + 168) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 169) = 3;
    v3 = swift_task_alloc();
    *(v0 + 160) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD068, &qword_24B51E560);
    *v3 = v0;
    v3[1] = sub_24B4C9A70;

    return MEMORY[0x282159B08](v0 + 169, v4);
  }
}

uint64_t sub_24B4C9A70()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_24B4C9B90, v3, v2);
}

uint64_t sub_24B4C9B90(uint64_t a1)
{
  v2 = sub_24B517BBC();
  v1[18] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[19] = v3;
  *v3 = v1;
  v3[1] = sub_24B4C9840;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 21, v2, v4);
}

uint64_t sub_24B4C9C7C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B4C9410(a1, (v1 + 16));
}

uint64_t sub_24B4C9D4C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4C9DE4;

  return sub_24B4C8EC4(a1, v1 + 16);
}

uint64_t sub_24B4C9DE4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroyTm()
{

  return swift_deallocObject();
}

uint64_t sub_24B4C9F20(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B4C89A0(a1, v1 + 16);
}

unint64_t sub_24B4C9FBC()
{
  result = qword_27EFFD018;
  if (!qword_27EFFD018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD018);
  }

  return result;
}

unint64_t sub_24B4CA014()
{
  result = qword_27EFFD020;
  if (!qword_27EFFD020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD020);
  }

  return result;
}

unint64_t sub_24B4CA06C()
{
  result = qword_27EFFD028;
  if (!qword_27EFFD028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD028);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CreatePlanBannerFeature.TaskIdentifier(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CreatePlanBannerFeature.TaskIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B4CA228()
{
  result = qword_27EFFD030;
  if (!qword_27EFFD030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD030);
  }

  return result;
}

void *sub_24B4CA2C4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_24B4CA4FC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_24B4CA740()
{
  if (*v0)
  {
    return 0x5472656E69617274;
  }

  else
  {
    return 0x6169726F74696465;
  }
}

uint64_t sub_24B4CA788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6169726F74696465 && a2 == 0xE90000000000006CLL;
  if (v6 || (sub_24B517EEC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5472656E69617274 && a2 == 0xEB00000000737069)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B517EEC();

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

uint64_t sub_24B4CA870(uint64_t a1)
{
  v2 = sub_24B4CAC94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4CA8AC(uint64_t a1)
{
  v2 = sub_24B4CAC94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4CA8E8(uint64_t a1)
{
  v2 = sub_24B4CAD3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4CA924(uint64_t a1)
{
  v2 = sub_24B4CAD3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4CA960(uint64_t a1)
{
  v2 = sub_24B4CACE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4CA99C(uint64_t a1)
{
  v2 = sub_24B4CACE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseGalleryDestination.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD078, &qword_24B51E570);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD080, &qword_24B51E578);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD088, &qword_24B51E580);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4CAC94();
  sub_24B517FDC();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_24B4CACE8();
    sub_24B517E3C();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_24B4CAD3C();
    sub_24B517E3C();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_24B4CAC94()
{
  result = qword_27EFFD090;
  if (!qword_27EFFD090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD090);
  }

  return result;
}

unint64_t sub_24B4CACE8()
{
  result = qword_27EFFD098;
  if (!qword_27EFFD098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD098);
  }

  return result;
}

unint64_t sub_24B4CAD3C()
{
  result = qword_27EFFD0A0;
  if (!qword_27EFFD0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD0A0);
  }

  return result;
}

uint64_t sub_24B4CADAC@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B4CAE68(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t BrowseGalleryDestination.hashValue.getter(char a1)
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](a1 & 1);
  return sub_24B517FBC();
}

uint64_t sub_24B4CAE68(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD0E8, &qword_24B51E900);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD0F0, &qword_24B51E908);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD0F8, &unk_24B51E910);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4CAC94();
  v11 = v26;
  sub_24B517FCC();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_24B517E1C();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_24B4A39B0();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_24B517D0C();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0);
    *v19 = &type metadata for BrowseGalleryDestination;
    sub_24B517D8C();
    sub_24B517CFC();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_24B4CACE8();
    sub_24B517D7C();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_24B4CAD3C();
    sub_24B517D7C();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v31 & 1;
}

unint64_t sub_24B4CB328()
{
  result = qword_27EFFD0A8;
  if (!qword_27EFFD0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD0A8);
  }

  return result;
}

unint64_t sub_24B4CB3C0()
{
  result = qword_27EFFD0B0;
  if (!qword_27EFFD0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD0B0);
  }

  return result;
}

unint64_t sub_24B4CB418()
{
  result = qword_27EFFD0B8;
  if (!qword_27EFFD0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD0B8);
  }

  return result;
}

unint64_t sub_24B4CB470()
{
  result = qword_27EFFD0C0;
  if (!qword_27EFFD0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD0C0);
  }

  return result;
}

unint64_t sub_24B4CB4C8()
{
  result = qword_27EFFD0C8;
  if (!qword_27EFFD0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD0C8);
  }

  return result;
}

unint64_t sub_24B4CB520()
{
  result = qword_27EFFD0D0;
  if (!qword_27EFFD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD0D0);
  }

  return result;
}

unint64_t sub_24B4CB578()
{
  result = qword_27EFFD0D8;
  if (!qword_27EFFD0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD0D8);
  }

  return result;
}

unint64_t sub_24B4CB5D0()
{
  result = qword_27EFFD0E0;
  if (!qword_27EFFD0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD0E0);
  }

  return result;
}

uint64_t NewAndFeaturedDataItemMetrics.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NewAndFeaturedDataItemMetrics.actionType.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NewAndFeaturedDataItemMetrics.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t NewAndFeaturedDataItemMetrics.targetIdentifierType.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t NewAndFeaturedDataItemMetrics.targetType.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t NewAndFeaturedDataItemMetrics.type.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t NewAndFeaturedDataItemMetrics.playbackEntitlement.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

void __swiftcall NewAndFeaturedDataItemMetrics.init(identifier:actionType:name:targetIdentifierType:targetType:type:playbackEntitlement:)(FitnessBrowsing::NewAndFeaturedDataItemMetrics *__return_ptr retstr, Swift::String identifier, Swift::String actionType, Swift::String_optional name, Swift::String targetIdentifierType, Swift::String targetType, Swift::String type, Swift::String playbackEntitlement)
{
  retstr->identifier = identifier;
  retstr->actionType = actionType;
  retstr->name = name;
  retstr->targetIdentifierType = targetIdentifierType;
  retstr->targetType = targetType;
  retstr->type = type;
  retstr->playbackEntitlement = playbackEntitlement;
}

unint64_t sub_24B4CB79C()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 1701869940;
  if (v1 != 5)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 == 3)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0x7954746567726174;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x79546E6F69746361;
  if (v1 != 1)
  {
    v5 = 1701667182;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B4CB868@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4CC924(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4CB890(uint64_t a1)
{
  v2 = sub_24B4CC620();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4CB8CC(uint64_t a1)
{
  v2 = sub_24B4CC620();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewAndFeaturedDataItemMetrics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD100, &qword_24B51E920);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - v5;
  v7 = v1[2];
  v19[9] = v1[3];
  v19[10] = v7;
  v8 = v1[4];
  v19[7] = v1[5];
  v19[8] = v8;
  v9 = v1[6];
  v19[5] = v1[7];
  v19[6] = v9;
  v10 = v1[9];
  v19[2] = v1[8];
  v19[3] = v10;
  v11 = v1[11];
  v19[0] = v1[10];
  v19[1] = v11;
  v12 = v1[13];
  v19[4] = v1[12];
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_24B4CC620();
  sub_24B517FDC();
  v27 = 0;
  v17 = v20;
  sub_24B517E7C();
  if (v17)
  {
    return (*(v4 + 8))(v6, v16);
  }

  v20 = v12;
  v26 = 1;
  sub_24B517E7C();
  v25 = 2;
  sub_24B517E4C();
  v24 = 3;
  sub_24B517E7C();
  v23 = 4;
  sub_24B517E7C();
  v22 = 5;
  sub_24B517E7C();
  v21 = 6;
  sub_24B517E7C();
  return (*(v4 + 8))(v6, v16);
}

uint64_t NewAndFeaturedDataItemMetrics.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517F9C();
  if (v2)
  {
    sub_24B517B3C();
  }

  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517B3C();

  return sub_24B517B3C();
}

uint64_t NewAndFeaturedDataItemMetrics.hashValue.getter()
{
  v1 = *(v0 + 40);
  sub_24B517F7C();
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517F9C();
  if (v1)
  {
    sub_24B517B3C();
  }

  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517B3C();
  return sub_24B517FBC();
}

uint64_t NewAndFeaturedDataItemMetrics.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD110, &qword_24B51E928);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4CC620();
  sub_24B517FCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v45[0]) = 0;
  v9 = sub_24B517DCC();
  v37 = v10;
  LOBYTE(v45[0]) = 1;
  *&v36 = sub_24B517DCC();
  *(&v36 + 1) = v11;
  LOBYTE(v45[0]) = 2;
  v34 = sub_24B517D9C();
  v13 = v12;
  LOBYTE(v45[0]) = 3;
  v14 = sub_24B517DCC();
  v35 = v15;
  v30 = v14;
  LOBYTE(v45[0]) = 4;
  v33 = 0;
  v29 = sub_24B517DCC();
  v32 = v16;
  LOBYTE(v45[0]) = 5;
  v28 = sub_24B517DCC();
  v31 = v17;
  v46 = 6;
  v18 = sub_24B517DCC();
  v19 = v8;
  v21 = v20;
  (*(v6 + 8))(v19, v5);
  *&v38 = v9;
  v22 = v37;
  *(&v38 + 1) = v37;
  v39 = v36;
  v23 = *(&v36 + 1);
  *&v40 = v34;
  *(&v40 + 1) = v13;
  *&v41 = v30;
  *(&v41 + 1) = v35;
  *&v42 = v29;
  *(&v42 + 1) = v32;
  *&v43 = v28;
  *(&v43 + 1) = v31;
  *&v44 = v18;
  *(&v44 + 1) = v21;
  v24 = v43;
  a2[4] = v42;
  a2[5] = v24;
  a2[6] = v44;
  v25 = v39;
  *a2 = v38;
  a2[1] = v25;
  v26 = v41;
  a2[2] = v40;
  a2[3] = v26;
  sub_24B4CC674(&v38, v45);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v45[0] = v9;
  v45[1] = v22;
  v45[2] = v36;
  v45[3] = v23;
  v45[4] = v34;
  v45[5] = v13;
  v45[6] = v30;
  v45[7] = v35;
  v45[8] = v29;
  v45[9] = v32;
  v45[10] = v28;
  v45[11] = v31;
  v45[12] = v18;
  v45[13] = v21;
  return sub_24B4CC6AC(v45);
}

uint64_t sub_24B4CC320(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_24B517F7C();
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517F9C();
  if (v2)
  {
    sub_24B517B3C();
  }

  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517B3C();
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing29NewAndFeaturedDataItemMetricsV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v26 = a1[6];
  v24 = a1[8];
  v25 = a1[7];
  v20 = a1[10];
  v19 = a1[11];
  v15 = a1[13];
  v16 = a1[12];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v10 = a2[7];
  v22 = a2[8];
  v23 = a1[9];
  v21 = a2[9];
  v17 = a2[11];
  v18 = a2[10];
  v13 = a2[13];
  v14 = a2[12];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_24B517EEC() & 1) == 0 || (v2 != v6 || v3 != v7) && (sub_24B517EEC() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v4 != v8 || v5 != v9) && (sub_24B517EEC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if ((v26 != v11 || v25 != v10) && (sub_24B517EEC() & 1) == 0 || (v24 != v22 || v23 != v21) && (sub_24B517EEC() & 1) == 0 || (v20 != v18 || v19 != v17) && (sub_24B517EEC() & 1) == 0)
  {
    return 0;
  }

  if (v16 == v14 && v15 == v13)
  {
    return 1;
  }

  return sub_24B517EEC();
}

unint64_t sub_24B4CC620()
{
  result = qword_27EFFD108;
  if (!qword_27EFFD108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD108);
  }

  return result;
}

unint64_t sub_24B4CC6E0()
{
  result = qword_27EFFD118;
  if (!qword_27EFFD118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD118);
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_24B4CC758(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_24B4CC7A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B4CC820()
{
  result = qword_27EFFD120;
  if (!qword_27EFFD120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD120);
  }

  return result;
}

unint64_t sub_24B4CC878()
{
  result = qword_27EFFD128;
  if (!qword_27EFFD128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD128);
  }

  return result;
}

unint64_t sub_24B4CC8D0()
{
  result = qword_27EFFD130;
  if (!qword_27EFFD130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD130);
  }

  return result;
}

uint64_t sub_24B4CC924(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79546E6F69746361 && a2 == 0xEA00000000006570 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B527860 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7954746567726174 && a2 == 0xEA00000000006570 || (sub_24B517EEC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B527880 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_24B517EEC();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t BrowseFontSymbolicTrait.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6C6F427469617274;
  }
}

uint64_t sub_24B4CCBF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x800000024B5273C0;
  if (v2 == 1)
  {
    v4 = 0x800000024B5273C0;
  }

  else
  {
    v4 = 0x800000024B5273E0;
  }

  if (*a1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x6C6F427469617274;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (*a2 != 1)
  {
    v3 = 0x800000024B5273E0;
  }

  if (*a2)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v7 = 0x6C6F427469617274;
  }

  if (*a2)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xE900000000000064;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24B517EEC();
  }

  return v9 & 1;
}

unint64_t sub_24B4CCCC8@<X0>(Swift::String *a1@<X0>, FitnessBrowsing::BrowseFontSymbolicTrait_optional *a2@<X8>)
{
  result = _s15FitnessBrowsing23BrowseFontSymbolicTraitO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_24B4CCCF8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0x800000024B5273C0;
  if (v2 != 1)
  {
    v4 = 0x800000024B5273E0;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0x6C6F427469617274;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_24B4CCE24()
{
  sub_24B517F7C();
  sub_24B517B3C();

  return sub_24B517FBC();
}

uint64_t sub_24B4CCED4(uint64_t a1)
{
  sub_24B517B3C();
}

uint64_t sub_24B4CCF70(uint64_t a1)
{
  sub_24B517F7C();
  sub_24B517B3C();

  return sub_24B517FBC();
}

unint64_t _s15FitnessBrowsing23BrowseFontSymbolicTraitO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_24B517D6C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24B4CD06C()
{
  result = qword_27EFFD138;
  if (!qword_27EFFD138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFD140, &qword_24B51EC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD138);
  }

  return result;
}

unint64_t sub_24B4CD0D4()
{
  result = qword_27EFFD148;
  if (!qword_27EFFD148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD148);
  }

  return result;
}

unint64_t sub_24B4CD138()
{
  result = qword_27EFFD150;
  if (!qword_27EFFD150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD150);
  }

  return result;
}

uint64_t NewAndFeaturedItemContext.identifier.getter()
{
  v1 = *v0;
  sub_24B4CD1CC(*v0, v0[1]);
  return v1;
}

uint64_t sub_24B4CD1D8()
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

uint64_t sub_24B4CD214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1835365481 && a2 == 0xE400000000000000;
  if (v5 || (sub_24B517EEC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B517EEC();

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

uint64_t sub_24B4CD2F4(uint64_t a1)
{
  v2 = sub_24B4CE0C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4CD330(uint64_t a1)
{
  v2 = sub_24B4CE0C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4CD388(uint64_t a1)
{
  v2 = sub_24B4CE170();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4CD3C4(uint64_t a1)
{
  v2 = sub_24B4CE170();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4CD400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B517EEC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B4CD490(uint64_t a1)
{
  v2 = sub_24B4CE11C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4CD4CC(uint64_t a1)
{
  v2 = sub_24B4CE11C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewAndFeaturedItemContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD158, &qword_24B51ED00);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v20 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD160, &qword_24B51ED08);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD168, &qword_24B51ED10);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = *v1;
  v23 = v1[1];
  v24 = v12;
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4CE0C8();
  sub_24B517FDC();
  if (v13)
  {
    v26 = 1;
    sub_24B4CE11C();
    v14 = v20;
    sub_24B517E3C();
    v15 = v22;
    sub_24B517E7C();
    (*(v21 + 8))(v14, v15);
  }

  else
  {
    v25 = 0;
    sub_24B4CE170();
    sub_24B517E3C();
    v16 = v19;
    sub_24B517E7C();
    (*(v18 + 8))(v7, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t NewAndFeaturedItemContext.hash(into:)(uint64_t a1)
{
  MEMORY[0x24C241D70](*(v1 + 16));

  return sub_24B517B3C();
}

uint64_t NewAndFeaturedItemContext.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_24B517F7C();
  MEMORY[0x24C241D70](v1);
  sub_24B517B3C();
  return sub_24B517FBC();
}

uint64_t NewAndFeaturedItemContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD188, &qword_24B51ED18);
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD190, &qword_24B51ED20);
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD198, &unk_24B51ED28);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_24B4CE0C8();
  v13 = v34;
  sub_24B517FCC();
  if (!v13)
  {
    v34 = v9;
    v14 = sub_24B517E1C();
    v15 = (2 * *(v14 + 16)) | 1;
    v36 = v14;
    v37 = v14 + 32;
    v38 = 0;
    v39 = v15;
    v16 = sub_24B4A39B0();
    v17 = v8;
    if (v16 == 2 || v38 != v39 >> 1)
    {
      v24 = sub_24B517D0C();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0);
      *v26 = &type metadata for NewAndFeaturedItemContext;
      sub_24B517D8C();
      sub_24B517CFC();
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
        sub_24B4CE11C();
        sub_24B517D7C();
        v19 = v33;
        v18 = v34;
        v20 = v30;
        v21 = sub_24B517DCC();
        v23 = v22;
        (*(v32 + 8))(v4, v20);
      }

      else
      {
        v41 = 0;
        sub_24B4CE170();
        v28 = v7;
        sub_24B517D7C();
        v19 = v33;
        v18 = v34;
        v21 = sub_24B517DCC();
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

uint64_t sub_24B4CDDD0()
{
  v1 = *(v0 + 16);
  sub_24B517F7C();
  MEMORY[0x24C241D70](v1);
  sub_24B517B3C();
  return sub_24B517FBC();
}

uint64_t sub_24B4CDE34(uint64_t a1)
{
  MEMORY[0x24C241D70](*(v1 + 16));

  return sub_24B517B3C();
}

uint64_t sub_24B4CDE88(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_24B517F7C();
  MEMORY[0x24C241D70](v2);
  sub_24B517B3C();
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing25NewAndFeaturedItemContextO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
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
    sub_24B4CD1CC(*a2, *(a2 + 8));
    sub_24B4CD1CC(v3, v2);
    sub_24B4CE5C4(v3, v2);
    sub_24B4CE5C4(v5, v4);
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
    v11 = sub_24B517EEC();
    sub_24B4CD1CC(v5, v4);
    sub_24B4CD1CC(v3, v2);
    sub_24B4CE5C4(v3, v2);
    sub_24B4CE5C4(v5, v4);
    return v11 & 1;
  }

LABEL_15:
  sub_24B4CD1CC(v6, v7);
  sub_24B4CD1CC(v3, v2);
  sub_24B4CE5C4(v3, v2);
  sub_24B4CE5C4(v3, v2);
  return 1;
}

unint64_t sub_24B4CE0C8()
{
  result = qword_27EFFD170;
  if (!qword_27EFFD170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD170);
  }

  return result;
}

unint64_t sub_24B4CE11C()
{
  result = qword_27EFFD178;
  if (!qword_27EFFD178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD178);
  }

  return result;
}

unint64_t sub_24B4CE170()
{
  result = qword_27EFFD180;
  if (!qword_27EFFD180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD180);
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

uint64_t sub_24B4CE1E4(uint64_t a1, unsigned int a2)
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

uint64_t sub_24B4CE22C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B4CE2B0()
{
  result = qword_27EFFD1A0;
  if (!qword_27EFFD1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD1A0);
  }

  return result;
}

unint64_t sub_24B4CE308()
{
  result = qword_27EFFD1A8;
  if (!qword_27EFFD1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD1A8);
  }

  return result;
}

unint64_t sub_24B4CE360()
{
  result = qword_27EFFD1B0;
  if (!qword_27EFFD1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD1B0);
  }

  return result;
}

unint64_t sub_24B4CE3B8()
{
  result = qword_27EFFD1B8;
  if (!qword_27EFFD1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD1B8);
  }

  return result;
}

unint64_t sub_24B4CE410()
{
  result = qword_27EFFD1C0;
  if (!qword_27EFFD1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD1C0);
  }

  return result;
}

unint64_t sub_24B4CE468()
{
  result = qword_27EFFD1C8;
  if (!qword_27EFFD1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD1C8);
  }

  return result;
}

unint64_t sub_24B4CE4C0()
{
  result = qword_27EFFD1D0;
  if (!qword_27EFFD1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD1D0);
  }

  return result;
}

unint64_t sub_24B4CE518()
{
  result = qword_27EFFD1D8;
  if (!qword_27EFFD1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD1D8);
  }

  return result;
}

unint64_t sub_24B4CE570()
{
  result = qword_27EFFD1E0;
  if (!qword_27EFFD1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD1E0);
  }

  return result;
}

uint64_t NewAndFeaturedFeature.environment.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
}

uint64_t sub_24B4CE620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v22[0] = a3;
  v22[1] = a4;
  v22[2] = a5;
  v22[3] = a6;
  v22[4] = a7;
  v22[5] = a8;
  v22[6] = a9;
  v22[7] = a10;
  v13 = type metadata accessor for NewAndFeaturedFeature.TaskIdentifier(255, v22);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = MEMORY[0x28223BE20](TupleTypeMetadata2 - 8);
  v17 = v22 - v16;
  v18 = *(v15 + 56);
  v19 = *(*(v13 - 8) + 16);
  v19(v22 - v16, a1, v13);
  v19(&v17[v18], a2, v13);
  LOBYTE(a2) = sub_24B517AAC();
  v20 = *(*(a4 - 8) + 8);
  v20(&v17[v18], a4);
  v20(v17, a4);
  return a2 & 1;
}

uint64_t sub_24B4CE794(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v2, a2);
  MEMORY[0x24C241D70](0);
  v7 = *(a2 + 24);
  sub_24B517A9C();
  return (*(*(v7 - 8) + 8))(v5, v7);
}

uint64_t sub_24B4CE8A8(uint64_t a1)
{
  sub_24B517F7C();
  sub_24B4CE794(v3, a1);
  return sub_24B517FBC();
}

uint64_t sub_24B4CE8F8(uint64_t a1, uint64_t a2)
{
  sub_24B517F7C();
  sub_24B4CE794(v4, a2);
  return sub_24B517FBC();
}

__n128 NewAndFeaturedFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t NewAndFeaturedFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v81 = a4;
  v79 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD1E8, &unk_24B51F1E0);
  MEMORY[0x28223BE20](v7 - 8);
  v77 = &v68 - v8;
  v9 = a5[2];
  v10 = a5[3];
  v11 = a5[4];
  v12 = a5[5];
  v13 = a5[6];
  v14 = a5[7];
  v16 = a5[8];
  v15 = a5[9];
  v86 = v9;
  v93 = v9;
  v94 = v10;
  v91 = v12;
  v92 = v11;
  v95 = v11;
  v96 = v12;
  v90 = v13;
  v97 = v13;
  v98 = v14;
  v99 = v16;
  v100 = v15;
  v74 = type metadata accessor for NewAndFeaturedFeature.TaskIdentifier(0, &v93);
  v76 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v18 = &v68 - v17;
  v93 = v10;
  v94 = v14;
  v88 = v16;
  v89 = v14;
  v95 = v16;
  v96 = v15;
  v87 = v15;
  v19 = type metadata accessor for NewAndFeaturedAction(255, &v93);
  v80 = sub_24B51794C();
  v78 = *(v80 - 8);
  v20 = MEMORY[0x28223BE20](v80);
  v22 = &v68 - v21;
  v23 = *(v10 - 8);
  v24 = v23[8];
  v25 = MEMORY[0x28223BE20](v20);
  v75 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v68 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v68 - v29;
  v31 = v5[1];
  v33 = v5[2];
  v32 = v5[3];
  v82 = *v5;
  v83 = v33;
  v84 = v31;
  v85 = v32;
  (*(v34 + 16))(v30, v81, v19);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCEA0, &unk_24B5203F0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  if ((*(*(TupleTypeMetadata3 - 8) + 48))(v30, 1, TupleTypeMetadata3) == 1)
  {
    v36 = sub_24B517C0C();
    v37 = v77;
    (*(*(v36 - 8) + 56))(v77, 1, 1, v36);
    sub_24B517BCC();
    v38 = v84;

    v39 = v85;

    v40 = sub_24B517BBC();
    v41 = swift_allocObject();
    v42 = MEMORY[0x277D85700];
    v41[2] = v40;
    v41[3] = v42;
    v41[4] = v86;
    v41[5] = v10;
    v43 = v91;
    v41[6] = v92;
    v41[7] = v43;
    v44 = v89;
    v41[8] = v90;
    v41[9] = v44;
    v45 = v87;
    v41[10] = v88;
    v41[11] = v45;
    v46 = v83;
    v41[12] = v82;
    v41[13] = v38;
    v41[14] = v46;
    v41[15] = v39;
    sub_24B4CF5E4(0, 0, v37, &unk_24B51F1F8, v41);
  }

  else
  {
    v48 = &v30[*(TupleTypeMetadata3 + 48)];
    sub_24B4CF850(*v48, v48[1], v48[2], v48[3], v48[4], v48[5], v48[6], v48[7], v48[8], v48[9], v48[10], v48[11], v48[12], v48[13]);
    v70 = v23;
    v73 = v23[4];
    v73(v28, v30, v10);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD008, &qword_24B51F200);
    v77 = v49[12];
    v69 = v49[16];
    v81 = v49[20];
    v71 = &v22[v49[24]];
    v50 = v23[2];
    v51 = v74;
    v52 = v22;
    v72 = v28;
    v50(v18, v28, v10);
    swift_getWitnessTable();
    sub_24B517D5C();
    (*(v76 + 8))(v18, v51);
    v53 = *MEMORY[0x277D043F0];
    v54 = sub_24B5179AC();
    (*(*(v54 - 8) + 104))(&v22[v69], v53, v54);
    v55 = v75;
    v50(v75, v28, v10);
    v56 = v70;
    v57 = (*(v70 + 80) + 112) & ~*(v70 + 80);
    v58 = swift_allocObject();
    *(v58 + 2) = v86;
    *(v58 + 3) = v10;
    v59 = v91;
    *(v58 + 4) = v92;
    *(v58 + 5) = v59;
    v60 = v89;
    *(v58 + 6) = v90;
    *(v58 + 7) = v60;
    v61 = v87;
    *(v58 + 8) = v88;
    *(v58 + 9) = v61;
    v62 = v83;
    v64 = v84;
    v63 = v85;
    *(v58 + 10) = v82;
    *(v58 + 11) = v64;
    *(v58 + 12) = v62;
    *(v58 + 13) = v63;
    v73(&v58[v57], v55, v10);
    v65 = v71;
    *v71 = &unk_24B51F210;
    *(v65 + 1) = v58;

    sub_24B517BDC();
    v66 = *MEMORY[0x277D043E8];
    v67 = sub_24B51799C();
    (*(*(v67 - 8) + 104))(&v52[v81], v66, v67);
    (*(v78 + 104))(v52, *MEMORY[0x277D043B0], v80);
    sub_24B517B8C();
    sub_24B517B7C();
    return (v56[1])(v72, v10);
  }
}

uint64_t sub_24B4CF138(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_24B517BCC();
  v6[3] = sub_24B517BBC();
  v11 = (a2 + *a2);
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_24B4C8FCC;

  return v11(a6);
}

uint64_t sub_24B4CF258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6[2] = sub_24B517BCC();
  v6[3] = sub_24B517BBC();
  v10 = (a6 + *a6);
  v8 = swift_task_alloc();
  v6[4] = v8;
  *v8 = v6;
  v8[1] = sub_24B4CF36C;

  return v10();
}

uint64_t sub_24B4CF36C()
{
  *(*v1 + 40) = v0;

  v3 = sub_24B517B9C();
  if (v0)
  {
    v4 = sub_24B4CFDB4;
  }

  else
  {
    v4 = sub_24B4CA72C;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_24B4CF4C8(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[2];
  v6 = v1[12];
  v7 = v1[13];
  v8 = v1[14];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24B4CA728;

  return sub_24B4CF258(a1, v5, v4, v6, v7, v8);
}

uint64_t sub_24B4CF5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD1E8, &unk_24B51F1E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_24B4CFCDC(a3, v22 - v9);
  v11 = sub_24B517C0C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_24B4CFD4C(v10);
  }

  else
  {
    sub_24B517BFC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_24B517B9C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_24B517B2C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_24B4CFD4C(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24B4CFD4C(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_24B4CF850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2)
  {
  }
}

uint64_t sub_24B4CF8E0(uint64_t a1)
{
  v3 = (*(*(v1[3] - 8) + 80) + 112) & ~*(*(v1[3] - 8) + 80);
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B4C9DE4;

  return sub_24B4CF138(a1, v4, v5, v6, v7, v1 + v3);
}

uint64_t sub_24B4CFAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24B4CFB20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24B4CFB68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B4CFBC0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_24B4CFCDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD1E8, &unk_24B51F1E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4CFD4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD1E8, &unk_24B51F1E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BrowseEditorialDescriptor.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t BrowseEditorialDescriptor.subtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BrowseEditorialDescriptor(0) + 40);

  return sub_24B4D1850(v3, a1);
}

uint64_t BrowseEditorialDescriptor.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrowseEditorialDescriptor(0) + 44);
  v4 = sub_24B516B8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BrowseEditorialDescriptor.init(content:displayStyle:galleryDestination:galleryDisplayStyle:identifier:preferredInsetBehavior:subtitle:title:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 9) = a3;
  *(a9 + 10) = a4;
  *(a9 + 11) = a5;
  *(a9 + 16) = a6;
  *(a9 + 24) = a7;
  *(a9 + 32) = a8;
  v12 = type metadata accessor for BrowseEditorialDescriptor(0);
  sub_24B4D18C0(a10, a9 + *(v12 + 40));
  v13 = *(v12 + 44);
  v14 = sub_24B516B8C();
  v15 = *(*(v14 - 8) + 32);

  return v15(a9 + v13, a11, v14);
}

uint64_t sub_24B4CFFAC()
{
  v1 = *v0;
  v2 = 0x746E65746E6F63;
  v3 = 0x656C746974627573;
  if (v1 != 6)
  {
    v3 = 0x656C746974;
  }

  v4 = 0x696669746E656469;
  if (v1 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 2)
  {
    v5 = 0xD000000000000013;
  }

  if (*v0)
  {
    v2 = 0x5379616C70736964;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B4D00BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4D1F0C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4D00F0(uint64_t a1)
{
  v2 = sub_24B4D1930();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4D012C(uint64_t a1)
{
  v2 = sub_24B4D1930();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseEditorialDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD1F0, &qword_24B51F388);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4D1930();
  sub_24B517FDC();
  v9 = *(v3 + 8);
  v11 = *v3;
  v12 = v9;
  v13 = 0;
  sub_24B4D1984();
  sub_24B517EBC();
  if (!v2)
  {
    LOBYTE(v11) = *(v3 + 9);
    v13 = 1;
    sub_24B49B688();
    sub_24B517EBC();
    LOBYTE(v11) = *(v3 + 10);
    v13 = 2;
    sub_24B4D19D8();
    sub_24B517E6C();
    LOBYTE(v11) = *(v3 + 11);
    v13 = 3;
    sub_24B517E6C();
    LOBYTE(v11) = 4;
    sub_24B517E7C();
    LOBYTE(v11) = *(v3 + 32);
    v13 = 5;
    sub_24B4D1A2C();
    sub_24B517E6C();
    type metadata accessor for BrowseEditorialDescriptor(0);
    LOBYTE(v11) = 6;
    sub_24B516B8C();
    sub_24B47B654(&qword_27EFFC510, MEMORY[0x277CC8C40], MEMORY[0x277CC8C48]);
    sub_24B517E6C();
    LOBYTE(v11) = 7;
    sub_24B517EBC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t BrowseEditorialDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_24B516B8C();
  v29 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD218, &qword_24B51F390);
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v26 - v10;
  v12 = type metadata accessor for BrowseEditorialDescriptor(0);
  MEMORY[0x28223BE20](v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24B4D1930();
  v32 = v11;
  v16 = v33;
  sub_24B517FCC();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v33 = v8;
  v27 = v5;
  v17 = v30;
  v37 = 0;
  sub_24B4D1A80();
  v18 = v31;
  sub_24B517E0C();
  v19 = v36;
  v20 = v14;
  *v14 = v35;
  v14[8] = v19;
  v37 = 1;
  v21 = sub_24B49C974();
  sub_24B517E0C();
  v26[1] = v21;
  *(v20 + 9) = v35;
  v37 = 2;
  sub_24B4D1AD4();
  sub_24B517DBC();
  *(v20 + 10) = v35;
  v37 = 3;
  sub_24B517DBC();
  *(v20 + 11) = v35;
  LOBYTE(v35) = 4;
  *(v20 + 16) = sub_24B517DCC();
  *(v20 + 24) = v22;
  v37 = 5;
  sub_24B4D1B28();
  sub_24B517DBC();
  *(v20 + 32) = v35;
  LOBYTE(v35) = 6;
  sub_24B47B654(&qword_27EFFC588, MEMORY[0x277CC8C40], MEMORY[0x277CC8C60]);
  v23 = v33;
  sub_24B517DBC();
  sub_24B4D18C0(v23, v20 + *(v12 + 40));
  LOBYTE(v35) = 7;
  v24 = v27;
  sub_24B517E0C();
  (*(v17 + 8))(v32, v18);
  (*(v29 + 32))(v20 + *(v12 + 44), v24, v3);
  sub_24B4D1B7C(v20, v28, type metadata accessor for BrowseEditorialDescriptor);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_24B4D1BE4(v20, type metadata accessor for BrowseEditorialDescriptor);
}

uint64_t BrowseEditorialDescriptor.hash(into:)(__int128 *a1)
{
  v3 = sub_24B516B8C();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  MEMORY[0x28223BE20](v6 - 8);
  v46 = &v44 - v7;
  v8 = type metadata accessor for BrowseItem(0);
  MEMORY[0x28223BE20](v8 - 8);
  v59 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BrowseLazyItem(0);
  v50 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v44 - v14;
  v16 = *v1;
  v49 = v1;
  v17 = *(v1 + 8);
  v45 = v5;
  if (v17)
  {
    MEMORY[0x24C241D70](1);
    sub_24B4844E8(a1, v16);
    goto LABEL_18;
  }

  MEMORY[0x24C241D70](0);
  MEMORY[0x24C241D70](*(v16 + 16));
  v52 = *(v16 + 16);
  if (v52)
  {
    v18 = 0;
    v51 = v16 + 32;
    v57 = v15;
    v58 = v10;
    while (1)
    {
      v56 = v18;
      v19 = (v51 + 24 * v18);
      v20 = *v19;
      v53 = v19[1];
      v21 = v19[2];
      v22 = *(v20 + 16);
      MEMORY[0x24C241D70](v22);
      v54 = v21;
      v55 = v20;
      if (v22)
      {
        break;
      }

LABEL_6:
      v18 = v56 + 1;
      sub_24B517B3C();

      if (v18 == v52)
      {
        goto LABEL_18;
      }
    }

    v23 = v50;
    v24 = v20 + ((*(v50 + 80) + 32) & ~*(v50 + 80));

    v25 = *(v23 + 72);
    v60 = v25;
    while (1)
    {
      sub_24B4D1B7C(v24, v15, type metadata accessor for BrowseLazyItem);
      sub_24B4D1B7C(v15, v13, type metadata accessor for BrowseLazyItem);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      v26 = v59;
      sub_24B4850B8(v13, v59);
      MEMORY[0x24C241D70](0);
      BrowseItem.hash(into:)(a1);
      sub_24B4D1BE4(v26, type metadata accessor for BrowseItem);
LABEL_10:
      sub_24B4D1BE4(v15, type metadata accessor for BrowseLazyItem);
      v24 += v25;
      if (!--v22)
      {
        goto LABEL_6;
      }
    }

    v27 = *(v13 + 2);
    v28 = *(v13 + 4);
    v29 = *(v13 + 5);
    v30 = *(v13 + 6);
    v61 = *(v13 + 3);
    v62 = v29;
    v63 = *(v13 + 7);
    v64 = v30;
    v31 = a1;
    v32 = *v13;
    MEMORY[0x24C241D70](1);
    v33 = v32;
    a1 = v31;
    BrowseDisplayStyle.rawValue.getter(v33);
    sub_24B517B3C();

    if (v27)
    {
      sub_24B517F9C();
      sub_24B517B3C();
      if (v28)
      {
LABEL_14:
        sub_24B517F9C();
        sub_24B517B3C();
LABEL_17:
        sub_24B517B3C();
        sub_24B517B3C();
        sub_24B517B3C();

        v15 = v57;
        v25 = v60;
        goto LABEL_10;
      }
    }

    else
    {
      sub_24B517F9C();
      if (v28)
      {
        goto LABEL_14;
      }
    }

    sub_24B517F9C();
    goto LABEL_17;
  }

LABEL_18:
  v34 = v49;
  BrowseDisplayStyle.rawValue.getter(*(v49 + 9));
  sub_24B517B3C();

  v35 = v34[10];
  sub_24B517F9C();
  if (v35 != 2)
  {
    MEMORY[0x24C241D70](v35 & 1);
  }

  v37 = v47;
  v36 = v48;
  v38 = v46;
  v39 = v34[11];
  sub_24B517F9C();
  if (v39 != 36)
  {
    BrowseDisplayStyle.rawValue.getter(v39);
    sub_24B517B3C();
  }

  sub_24B517B3C();
  v40 = v34[32];
  sub_24B517F9C();
  if (v40 != 2)
  {
    MEMORY[0x24C241D70](v40 & 1);
  }

  v41 = type metadata accessor for BrowseEditorialDescriptor(0);
  sub_24B4D1850(&v34[*(v41 + 40)], v38);
  if ((*(v37 + 48))(v38, 1, v36) == 1)
  {
    sub_24B517F9C();
  }

  else
  {
    v42 = v45;
    (*(v37 + 32))(v45, v38, v36);
    sub_24B517F9C();
    sub_24B47B654(&qword_2810EED98, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
    sub_24B517A9C();
    (*(v37 + 8))(v42, v36);
  }

  sub_24B47B654(&qword_2810EED98, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
  return sub_24B517A9C();
}

uint64_t BrowseEditorialDescriptor.hashValue.getter()
{
  sub_24B517F7C();
  BrowseEditorialDescriptor.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4D12E0()
{
  sub_24B517F7C();
  BrowseEditorialDescriptor.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4D1324(uint64_t a1)
{
  sub_24B517F7C();
  BrowseEditorialDescriptor.hash(into:)(v2);
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing25BrowseEditorialDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B516B8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC608, &qword_24B51F5B0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v41 - v13;
  v15 = *a1;
  v16 = *a2;
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      goto LABEL_38;
    }

    v42 = v12;
    if ((sub_24B483BA0(v15, v16) & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (*(a2 + 8))
    {
      goto LABEL_38;
    }

    v42 = v12;
    if ((sub_24B482FB8(v15, v16) & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v17 = *(a2 + 9);
  v18 = BrowseDisplayStyle.rawValue.getter(*(a1 + 9));
  v20 = v19;
  if (v18 == BrowseDisplayStyle.rawValue.getter(v17) && v20 == v21)
  {
  }

  else
  {
    v22 = sub_24B517EEC();

    if ((v22 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v23 = *(a1 + 10);
  v24 = *(a2 + 10);
  if (v23 == 2)
  {
    if (v24 != 2)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v25 = 0;
    if (v24 == 2 || ((v24 ^ v23) & 1) != 0)
    {
      return v25 & 1;
    }
  }

  v26 = *(a1 + 11);
  v27 = *(a2 + 11);
  if (v26 == 36)
  {
    if (v27 != 36)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (v27 == 36)
    {
      goto LABEL_38;
    }

    v28 = BrowseDisplayStyle.rawValue.getter(v26);
    v30 = v29;
    if (v28 == BrowseDisplayStyle.rawValue.getter(v27) && v30 == v31)
    {
    }

    else
    {
      v32 = sub_24B517EEC();

      if ((v32 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_24B517EEC() & 1) == 0)
  {
    goto LABEL_38;
  }

  v33 = *(a1 + 32);
  v34 = *(a2 + 32);
  if (v33 == 2)
  {
    if (v34 != 2)
    {
      goto LABEL_38;
    }

    goto LABEL_32;
  }

  v25 = 0;
  if (v34 != 2 && ((v34 ^ v33) & 1) == 0)
  {
LABEL_32:
    v41 = type metadata accessor for BrowseEditorialDescriptor(0);
    v35 = *(v41 + 40);
    v36 = *(v42 + 48);
    sub_24B4D1850(a1 + v35, v14);
    sub_24B4D1850(a2 + v35, &v14[v36]);
    v37 = *(v5 + 48);
    if (v37(v14, 1, v4) == 1)
    {
      if (v37(&v14[v36], 1, v4) == 1)
      {
        sub_24B49689C(v14, &qword_27EFFC4E8, &qword_24B51F380);
LABEL_41:
        v25 = sub_24B516B7C();
        return v25 & 1;
      }

      goto LABEL_37;
    }

    sub_24B4D1850(v14, v10);
    if (v37(&v14[v36], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
LABEL_37:
      sub_24B49689C(v14, &qword_27EFFC608, &qword_24B51F5B0);
      goto LABEL_38;
    }

    (*(v5 + 32))(v7, &v14[v36], v4);
    sub_24B47B654(&qword_2810EED90, MEMORY[0x277CC8C40], MEMORY[0x277CC8C58]);
    v39 = sub_24B517AAC();
    v40 = *(v5 + 8);
    v40(v7, v4);
    v40(v10, v4);
    sub_24B49689C(v14, &qword_27EFFC4E8, &qword_24B51F380);
    if (v39)
    {
      goto LABEL_41;
    }

LABEL_38:
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t sub_24B4D1850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4D18C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B4D1930()
{
  result = qword_27EFFD1F8;
  if (!qword_27EFFD1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD1F8);
  }

  return result;
}

unint64_t sub_24B4D1984()
{
  result = qword_27EFFD200;
  if (!qword_27EFFD200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD200);
  }

  return result;
}

unint64_t sub_24B4D19D8()
{
  result = qword_27EFFD208;
  if (!qword_27EFFD208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD208);
  }

  return result;
}

unint64_t sub_24B4D1A2C()
{
  result = qword_27EFFD210;
  if (!qword_27EFFD210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD210);
  }

  return result;
}

unint64_t sub_24B4D1A80()
{
  result = qword_27EFFD220;
  if (!qword_27EFFD220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD220);
  }

  return result;
}

unint64_t sub_24B4D1AD4()
{
  result = qword_27EFFD228;
  if (!qword_27EFFD228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD228);
  }

  return result;
}

unint64_t sub_24B4D1B28()
{
  result = qword_27EFFD230;
  if (!qword_27EFFD230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD230);
  }

  return result;
}

uint64_t sub_24B4D1B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B4D1BE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for BrowseEditorialDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BrowseEditorialDescriptor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B4D1E08()
{
  result = qword_27EFFD240;
  if (!qword_27EFFD240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD240);
  }

  return result;
}

unint64_t sub_24B4D1E60()
{
  result = qword_27EFFD248;
  if (!qword_27EFFD248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD248);
  }

  return result;
}

unint64_t sub_24B4D1EB8()
{
  result = qword_27EFFD250;
  if (!qword_27EFFD250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD250);
  }

  return result;
}

uint64_t sub_24B4D1F0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B5278A0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B5278C0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B517EEC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B5278E0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_24B517EEC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t BrowseArtwork.init(backgroundColor:templateURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24B49AA90(a1, a3, &qword_27EFFCBE0, &qword_24B51CCA8);
  v5 = type metadata accessor for BrowseArtwork(0);
  return sub_24B49AA90(a2, a3 + *(v5 + 20), &qword_27EFFCBD8, &qword_24B51CCA0);
}

uint64_t sub_24B4D228C()
{
  if (*v0)
  {
    return 0x6574616C706D6574;
  }

  else
  {
    return 0x756F72676B636162;
  }
}

uint64_t sub_24B4D22DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL;
  if (v6 || (sub_24B517EEC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xEB000000004C5255)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B517EEC();

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

uint64_t sub_24B4D23C4(uint64_t a1)
{
  v2 = sub_24B4D26A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4D2400(uint64_t a1)
{
  v2 = sub_24B4D26A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseArtwork.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD258, &qword_24B51F5B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4D26A0();
  sub_24B517FDC();
  v8[15] = 0;
  sub_24B516CAC();
  sub_24B47B7BC(&qword_27EFFD268, MEMORY[0x277D09D68], MEMORY[0x277D09D70]);
  sub_24B517E6C();
  if (!v1)
  {
    type metadata accessor for BrowseArtwork(0);
    v8[14] = 1;
    sub_24B516BAC();
    sub_24B47B7BC(&qword_27EFFC048, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_24B517E6C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24B4D26A0()
{
  result = qword_27EFFD260;
  if (!qword_27EFFD260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD260);
  }

  return result;
}

uint64_t BrowseArtwork.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBD8, &qword_24B51CCA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBE0, &qword_24B51CCA8);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = &v19 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD270, &qword_24B51F5C0);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v19 - v9;
  v11 = type metadata accessor for BrowseArtwork(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4D26A0();
  sub_24B517FCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v11;
  v14 = v13;
  v15 = v22;
  sub_24B516CAC();
  v26 = 0;
  sub_24B47B7BC(&qword_27EFFD278, MEMORY[0x277D09D68], MEMORY[0x277D09D88]);
  v16 = v23;
  v17 = v24;
  sub_24B517DBC();
  sub_24B49AA90(v16, v14, &qword_27EFFCBE0, &qword_24B51CCA8);
  sub_24B516BAC();
  v25 = 1;
  sub_24B47B7BC(&qword_27EFFC068, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_24B517DBC();
  (*(v15 + 8))(v10, v17);
  sub_24B49AA90(v6, v14 + *(v20 + 20), &qword_27EFFCBD8, &qword_24B51CCA0);
  sub_24B4D2AA4(v14, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B4D2B08(v14);
}

uint64_t sub_24B4D2AA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseArtwork(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4D2B08(uint64_t a1)
{
  v2 = type metadata accessor for BrowseArtwork(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BrowseArtwork.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_24B516BAC();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v21 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBD8, &qword_24B51CCA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_24B516CAC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBE0, &qword_24B51CCA8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v20 - v13;
  sub_24B496724(v2, &v20 - v13, &qword_27EFFCBE0, &qword_24B51CCA8);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_24B517F9C();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_24B517F9C();
    sub_24B47B7BC(&qword_2810EED50, MEMORY[0x277D09D68], MEMORY[0x277D09D78]);
    sub_24B517A9C();
    (*(v9 + 8))(v11, v8);
  }

  v15 = type metadata accessor for BrowseArtwork(0);
  sub_24B496724(v2 + *(v15 + 20), v7, &qword_27EFFCBD8, &qword_24B51CCA0);
  v17 = v22;
  v16 = v23;
  if ((*(v22 + 48))(v7, 1, v23) == 1)
  {
    return sub_24B517F9C();
  }

  v19 = v21;
  (*(v17 + 32))(v21, v7, v16);
  sub_24B517F9C();
  sub_24B47B7BC(&qword_2810EED80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B517A9C();
  return (*(v17 + 8))(v19, v16);
}

uint64_t BrowseArtwork.hashValue.getter()
{
  sub_24B517F7C();
  BrowseArtwork.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4D2F80()
{
  sub_24B517F7C();
  BrowseArtwork.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4D2FC4(uint64_t a1)
{
  sub_24B517F7C();
  BrowseArtwork.hash(into:)(v2);
  return sub_24B517FBC();
}

BOOL _s15FitnessBrowsing13BrowseArtworkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B516BAC();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBD8, &qword_24B51CCA0);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v38 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD298, &qword_24B51F800);
  MEMORY[0x28223BE20](v40);
  v41 = &v38 - v8;
  v9 = sub_24B516CAC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBE0, &qword_24B51CCA8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD2A0, &qword_24B51F808);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v38 - v18;
  v20 = *(v17 + 56);
  v42 = a1;
  sub_24B496724(a1, &v38 - v18, &qword_27EFFCBE0, &qword_24B51CCA8);
  v43 = a2;
  sub_24B496724(a2, &v19[v20], &qword_27EFFCBE0, &qword_24B51CCA8);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) != 1)
  {
    sub_24B496724(v19, v15, &qword_27EFFCBE0, &qword_24B51CCA8);
    if (v21(&v19[v20], 1, v9) != 1)
    {
      (*(v10 + 32))(v12, &v19[v20], v9);
      sub_24B47B7BC(&qword_2810EED48, MEMORY[0x277D09D68], MEMORY[0x277D09D80]);
      v25 = sub_24B517AAC();
      v26 = *(v10 + 8);
      v26(v12, v9);
      v26(v15, v9);
      sub_24B49689C(v19, &qword_27EFFCBE0, &qword_24B51CCA8);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v10 + 8))(v15, v9);
LABEL_6:
    v22 = &qword_27EFFD2A0;
    v23 = &qword_24B51F808;
    v24 = v19;
LABEL_14:
    sub_24B49689C(v24, v22, v23);
    return 0;
  }

  if (v21(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_24B49689C(v19, &qword_27EFFCBE0, &qword_24B51CCA8);
LABEL_8:
  v27 = *(type metadata accessor for BrowseArtwork(0) + 20);
  v28 = v41;
  v29 = *(v40 + 48);
  sub_24B496724(v42 + v27, v41, &qword_27EFFCBD8, &qword_24B51CCA0);
  sub_24B496724(v43 + v27, v28 + v29, &qword_27EFFCBD8, &qword_24B51CCA0);
  v31 = v44;
  v30 = v45;
  v32 = *(v44 + 48);
  if (v32(v28, 1, v45) == 1)
  {
    if (v32(v28 + v29, 1, v30) == 1)
    {
      sub_24B49689C(v28, &qword_27EFFCBD8, &qword_24B51CCA0);
      return 1;
    }

    goto LABEL_13;
  }

  v33 = v39;
  sub_24B496724(v28, v39, &qword_27EFFCBD8, &qword_24B51CCA0);
  if (v32(v28 + v29, 1, v30) == 1)
  {
    (*(v31 + 8))(v33, v30);
LABEL_13:
    v22 = &qword_27EFFD298;
    v23 = &qword_24B51F800;
    v24 = v28;
    goto LABEL_14;
  }

  v35 = v38;
  (*(v31 + 32))(v38, v28 + v29, v30);
  sub_24B47B7BC(&qword_2810EED78, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v36 = sub_24B517AAC();
  v37 = *(v31 + 8);
  v37(v35, v30);
  v37(v33, v30);
  sub_24B49689C(v28, &qword_27EFFCBD8, &qword_24B51CCA0);
  return (v36 & 1) != 0;
}

unint64_t sub_24B4D3670()
{
  result = qword_27EFFD280;
  if (!qword_27EFFD280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD280);
  }

  return result;
}

unint64_t sub_24B4D36C8()
{
  result = qword_27EFFD288;
  if (!qword_27EFFD288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD288);
  }

  return result;
}

unint64_t sub_24B4D3720()
{
  result = qword_27EFFD290;
  if (!qword_27EFFD290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD290);
  }

  return result;
}

uint64_t sub_24B4D3784(uint64_t a1)
{
  v2 = sub_24B4D4014();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4D37C0(uint64_t a1)
{
  v2 = sub_24B4D4014();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4D37FC(uint64_t a1)
{
  v2 = sub_24B4D3FC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4D3838(uint64_t a1)
{
  v2 = sub_24B4D3FC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4D3874(uint64_t a1)
{
  v2 = sub_24B4D3F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4D38B0(uint64_t a1)
{
  v2 = sub_24B4D3F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4D38EC()
{
  v1 = 0x654C6D6F74746F62;
  v2 = 0x654C7265746E6563;
  if (*v0 != 2)
  {
    v2 = 0x696461654C706F74;
  }

  if (*v0)
  {
    v1 = 0x7265746E6563;
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

uint64_t sub_24B4D3970@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4D4138(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4D3998(uint64_t a1)
{
  v2 = sub_24B4D3EC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4D39D4(uint64_t a1)
{
  v2 = sub_24B4D3EC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4D3A10(uint64_t a1)
{
  v2 = sub_24B4D3F18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4D3A4C(uint64_t a1)
{
  v2 = sub_24B4D3F18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicBrickDisplayStyle.encode(to:)(void *a1, int a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD2A8, &qword_24B51F810);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v20 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD2B0, &qword_24B51F818);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v23 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD2B8, &qword_24B51F820);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD2C0, &qword_24B51F828);
  v20 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD2C8, &qword_24B51F830);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4D3EC4();
  sub_24B517FDC();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      sub_24B4D3F6C();
      v9 = v23;
      sub_24B517E3C();
      v18 = v24;
      v17 = v25;
    }

    else
    {
      v33 = 3;
      sub_24B4D3F18();
      v9 = v26;
      sub_24B517E3C();
      v18 = v27;
      v17 = v28;
    }

    goto LABEL_8;
  }

  if (v29)
  {
    v31 = 1;
    sub_24B4D3FC0();
    sub_24B517E3C();
    v18 = v21;
    v17 = v22;
LABEL_8:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  sub_24B4D4014();
  sub_24B517E3C();
  (*(v20 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

unint64_t sub_24B4D3EC4()
{
  result = qword_27EFFD2D0;
  if (!qword_27EFFD2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD2D0);
  }

  return result;
}

unint64_t sub_24B4D3F18()
{
  result = qword_27EFFD2D8;
  if (!qword_27EFFD2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD2D8);
  }

  return result;
}

unint64_t sub_24B4D3F6C()
{
  result = qword_27EFFD2E0;
  if (!qword_27EFFD2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD2E0);
  }

  return result;
}

unint64_t sub_24B4D3FC0()
{
  result = qword_27EFFD2E8;
  if (!qword_27EFFD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD2E8);
  }

  return result;
}

unint64_t sub_24B4D4014()
{
  result = qword_27EFFD2F0;
  if (!qword_27EFFD2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD2F0);
  }

  return result;
}

void *sub_24B4D4080@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B4D42B0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t DynamicBrickDisplayStyle.hashValue.getter(unsigned __int8 a1)
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](a1);
  return sub_24B517FBC();
}

uint64_t sub_24B4D4138(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654C6D6F74746F62 && a2 == 0xED0000676E696461;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746E6563 && a2 == 0xE600000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654C7265746E6563 && a2 == 0xED0000676E696461 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696461654C706F74 && a2 == 0xEA0000000000676ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B517EEC();

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

void *sub_24B4D42B0(void *a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD358, &qword_24B51FD30);
  v34 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = &v31 - v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD360, &qword_24B51FD38);
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD368, &qword_24B51FD40);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD370, &qword_24B51FD48);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD378, &unk_24B51FD50);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_24B4D3EC4();
  v15 = v43;
  sub_24B517FCC();
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
  v20 = sub_24B517E1C();
  v21 = (2 * *(v20 + 16)) | 1;
  v45 = v20;
  v46 = v20 + 32;
  v47 = 0;
  v48 = v21;
  v22 = sub_24B4A39B4();
  if (v22 != 4 && v47 == v48 >> 1)
  {
    v11 = v22;
    if (v22 <= 1u)
    {
      if (v22)
      {
        v49 = 1;
        sub_24B4D3FC0();
        v29 = v33;
        sub_24B517D7C();
        if (!v29)
        {
          (*(v37 + 8))(v6, v38);
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 0;
        sub_24B4D4014();
        v23 = v33;
        sub_24B517D7C();
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
      sub_24B4D3F6C();
      v28 = v33;
      sub_24B517D7C();
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
      sub_24B4D3F18();
      v30 = v33;
      sub_24B517D7C();
      if (!v30)
      {
        (*(v34 + 8))(v18, v39);
        goto LABEL_22;
      }
    }

    (v27[1])(v19, v10);
    goto LABEL_10;
  }

  v24 = sub_24B517D0C();
  swift_allocError();
  v11 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0);
  *v11 = &type metadata for DynamicBrickDisplayStyle;
  sub_24B517D8C();
  sub_24B517CFC();
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

unint64_t sub_24B4D48F4()
{
  result = qword_27EFFD2F8;
  if (!qword_27EFFD2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD2F8);
  }

  return result;
}

unint64_t sub_24B4D49AC()
{
  result = qword_27EFFD300;
  if (!qword_27EFFD300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD300);
  }

  return result;
}

unint64_t sub_24B4D4A04()
{
  result = qword_27EFFD308;
  if (!qword_27EFFD308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD308);
  }

  return result;
}

unint64_t sub_24B4D4A5C()
{
  result = qword_27EFFD310;
  if (!qword_27EFFD310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD310);
  }

  return result;
}

unint64_t sub_24B4D4AB4()
{
  result = qword_27EFFD318;
  if (!qword_27EFFD318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD318);
  }

  return result;
}

unint64_t sub_24B4D4B0C()
{
  result = qword_27EFFD320;
  if (!qword_27EFFD320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD320);
  }

  return result;
}

unint64_t sub_24B4D4B64()
{
  result = qword_27EFFD328;
  if (!qword_27EFFD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD328);
  }

  return result;
}

unint64_t sub_24B4D4BBC()
{
  result = qword_27EFFD330;
  if (!qword_27EFFD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD330);
  }

  return result;
}

unint64_t sub_24B4D4C14()
{
  result = qword_27EFFD338;
  if (!qword_27EFFD338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD338);
  }

  return result;
}

unint64_t sub_24B4D4C6C()
{
  result = qword_27EFFD340;
  if (!qword_27EFFD340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD340);
  }

  return result;
}

unint64_t sub_24B4D4CC4()
{
  result = qword_27EFFD348;
  if (!qword_27EFFD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD348);
  }

  return result;
}

unint64_t sub_24B4D4D1C()
{
  result = qword_27EFFD350;
  if (!qword_27EFFD350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD350);
  }

  return result;
}

uint64_t BrowseItemPlaceholder.editorialCardIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t BrowseItemPlaceholder.groupTitle.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t BrowseItemPlaceholder.identifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t BrowseItemPlaceholder.referenceIdentifier.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

void __swiftcall BrowseItemPlaceholder.init(displayStyle:editorialCardIdentifier:groupTitle:identifier:referenceIdentifier:referenceType:)(FitnessBrowsing::BrowseItemPlaceholder *__return_ptr retstr, FitnessBrowsing::BrowseDisplayStyle displayStyle, Swift::String_optional editorialCardIdentifier, Swift::String_optional groupTitle, Swift::String identifier, Swift::String referenceIdentifier, FitnessBrowsing::BrowseItemReferenceType referenceType)
{
  retstr->displayStyle = displayStyle;
  retstr->editorialCardIdentifier = editorialCardIdentifier;
  retstr->groupTitle = groupTitle;
  retstr->identifier = identifier;
  retstr->referenceIdentifier = referenceIdentifier;
  retstr->referenceType = referenceType;
}

uint64_t sub_24B4D4E6C()
{
  v1 = *v0;
  v2 = 0x5379616C70736964;
  v3 = 0x696669746E656469;
  v4 = 0x636E657265666572;
  if (v1 == 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000017;
  if (v1 != 1)
  {
    v5 = 0x74695470756F7267;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B4D4F4C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4D5DD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4D4F74(uint64_t a1)
{
  v2 = sub_24B4D52A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4D4FB0(uint64_t a1)
{
  v2 = sub_24B4D52A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseItemPlaceholder.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD380, &qword_24B51FD60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v27 = *(v1 + 2);
  v28 = v9;
  v10 = *(v1 + 3);
  v25 = *(v1 + 4);
  v26 = v10;
  v11 = *(v1 + 5);
  v23 = *(v1 + 6);
  v24 = v11;
  v12 = *(v1 + 8);
  v21 = *(v1 + 7);
  v22 = v12;
  v13 = v1[72];
  v14 = a1[3];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v14);
  sub_24B4D52A8();
  sub_24B517FDC();
  v36 = v8;
  v35 = 0;
  sub_24B49B688();
  sub_24B517EBC();
  if (!v2)
  {
    v20 = v13;
    v34 = 1;
    sub_24B517E4C();
    v33 = 2;
    sub_24B517E4C();
    v32 = 3;
    sub_24B517E7C();
    v31 = 4;
    sub_24B517E7C();
    v30 = v20;
    v29 = 5;
    sub_24B49B784();
    sub_24B517EBC();
  }

  return (*(v5 + 8))(v7, v17);
}

unint64_t sub_24B4D52A8()
{
  result = qword_27EFFD388;
  if (!qword_27EFFD388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD388);
  }

  return result;
}

uint64_t BrowseItemPlaceholder.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD390, &qword_24B51FD68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4D52A8();
  sub_24B517FCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v31) = 0;
  sub_24B49C974();
  sub_24B517E0C();
  v9 = v35[0];
  v35[0] = 1;
  v10 = sub_24B517D9C();
  v45 = v9;
  v30 = v11;
  v35[0] = 2;
  v12 = sub_24B517D9C();
  v29 = v13;
  v27 = v12;
  v35[0] = 3;
  v26 = sub_24B517DCC();
  v28 = v14;
  v35[0] = 4;
  v25 = sub_24B517DCC();
  v16 = v15;
  v46 = 5;
  sub_24B49CADC();
  sub_24B517E0C();
  (*(v6 + 8))(v8, v5);
  HIDWORD(v24) = v47;
  v17 = v45;
  LOBYTE(v31) = v45;
  v18 = v30;
  *(&v31 + 1) = v10;
  *&v32 = v30;
  v19 = v27;
  *(&v32 + 1) = v27;
  *&v33 = v29;
  v20 = v28;
  *(&v33 + 1) = v26;
  *v34 = v28;
  *&v34[8] = v25;
  *&v34[16] = v16;
  v34[24] = v47;
  v21 = *v34;
  a2[2] = v33;
  a2[3] = v21;
  v22 = v32;
  *a2 = v31;
  a2[1] = v22;
  *(a2 + 57) = *&v34[9];
  sub_24B4D5738(&v31, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v35[0] = v17;
  v36 = v10;
  v37 = v18;
  v38 = v19;
  v39 = v29;
  v40 = v26;
  v41 = v20;
  v42 = v25;
  v43 = v16;
  v44 = BYTE4(v24);
  return sub_24B4851E4(v35);
}

uint64_t BrowseItemPlaceholder.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 72);
  BrowseDisplayStyle.rawValue.getter(*v1);
  sub_24B517B3C();

  if (v3)
  {
    sub_24B517F9C();
    sub_24B517B3C();
    if (v4)
    {
LABEL_3:
      sub_24B517F9C();
      sub_24B517B3C();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24B517F9C();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  sub_24B517F9C();
LABEL_6:
  sub_24B517B3C();
  sub_24B517B3C();

  return sub_24B49A070(a1, v5);
}

uint64_t BrowseItemPlaceholder.hashValue.getter()
{
  sub_24B517F7C();
  BrowseItemPlaceholder.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4D5904()
{
  sub_24B517F7C();
  BrowseItemPlaceholder.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4D5948(uint64_t a1)
{
  sub_24B517F7C();
  BrowseItemPlaceholder.hash(into:)(v2);
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing21BrowseItemPlaceholderV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v23 = *(a1 + 48);
  v24 = *(a1 + 24);
  v17 = *(a1 + 72);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v25 = *(a2 + 40);
  v26 = *(a1 + 40);
  v21 = *(a1 + 56);
  v22 = *(a2 + 48);
  v19 = *(a1 + 64);
  v20 = *(a2 + 56);
  v18 = *(a2 + 64);
  v16 = *(a2 + 72);
  v9 = *a2;
  v10 = BrowseDisplayStyle.rawValue.getter(*a1);
  v12 = v11;
  if (v10 == BrowseDisplayStyle.rawValue.getter(v9) && v12 == v13)
  {
  }

  else
  {
    v14 = sub_24B517EEC();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!v6 || (v2 != v5 || v3 != v6) && (sub_24B517EEC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (!v4)
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (!v8 || (v24 != v7 || v4 != v8) && (sub_24B517EEC() & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  if ((v26 != v25 || v23 != v22) && (sub_24B517EEC() & 1) == 0 || (v21 != v20 || v19 != v18) && (sub_24B517EEC() & 1) == 0)
  {
    return 0;
  }

  return sub_24B4FED70(v17, v16);
}

unint64_t sub_24B4D5B98()
{
  result = qword_2810EDFE0[0];
  if (!qword_2810EDFE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810EDFE0);
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24B4D5C10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B4D5C58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B4D5CD0()
{
  result = qword_27EFFD398;
  if (!qword_27EFFD398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD398);
  }

  return result;
}

unint64_t sub_24B4D5D28()
{
  result = qword_27EFFD3A0;
  if (!qword_27EFFD3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD3A0);
  }

  return result;
}

unint64_t sub_24B4D5D80()
{
  result = qword_27EFFD3A8;
  if (!qword_27EFFD3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD3A8);
  }

  return result;
}

uint64_t sub_24B4D5DD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024B527900 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74695470756F7267 && a2 == 0xEA0000000000656CLL || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B517EEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B527610 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xED00006570795465)
  {

    return 5;
  }

  else
  {
    v6 = sub_24B517EEC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

FitnessBrowsing::BrowseFontDesign_optional __swiftcall BrowseFontDesign.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_24B517D6C();

  if (v1 == 1)
  {
    v2.value = FitnessBrowsing_BrowseFontDesign_rounded;
  }

  else
  {
    v2.value = FitnessBrowsing_BrowseFontDesign_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t BrowseFontDesign.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6465646E756F72;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_24B4D6080(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6465646E756F72;
  }

  else
  {
    v2 = 0x746C7561666564;
  }

  if (*a2)
  {
    v3 = 0x6465646E756F72;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_24B517EEC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_24B4D6108@<X0>(char *a2@<X8>)
{
  v3 = sub_24B517D6C();

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

void sub_24B4D6168(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x6465646E756F72;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

unint64_t sub_24B4D61A4()
{
  result = qword_27EFFD3B0;
  if (!qword_27EFFD3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFD3B8, &qword_24B520010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD3B0);
  }

  return result;
}

unint64_t sub_24B4D62CC()
{
  result = qword_27EFFD3C0;
  if (!qword_27EFFD3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD3C0);
  }

  return result;
}

uint64_t sub_24B4D6320()
{
  sub_24B517F7C();
  sub_24B517B3C();

  return sub_24B517FBC();
}

uint64_t sub_24B4D6398(uint64_t a1)
{
  sub_24B517B3C();
}

uint64_t sub_24B4D63F4(uint64_t a1)
{
  sub_24B517F7C();
  sub_24B517B3C();

  return sub_24B517FBC();
}

unint64_t sub_24B4D6478()
{
  result = qword_27EFFD3C8;
  if (!qword_27EFFD3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD3C8);
  }

  return result;
}

uint64_t BrowseDetailVideoLinkItem.attributedTitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B516B8C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BrowseDetailVideoLinkItem.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for BrowseDetailVideoLinkItem(0) + 20));

  return v1;
}

uint64_t BrowseDetailVideoLinkItem.init(attributedTitle:identifier:videoAsset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_24B516B8C();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for BrowseDetailVideoLinkItem(0);
  v12 = (a5 + *(v11 + 20));
  *v12 = a2;
  v12[1] = a3;
  v13 = a5 + *(v11 + 24);

  return sub_24B4D666C(a4, v13);
}

uint64_t sub_24B4D666C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoAsset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4D66D0()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x7373416F65646976;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7475626972747461;
  }
}

uint64_t sub_24B4D673C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4D77BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4D6764(uint64_t a1)
{
  v2 = sub_24B4D6A10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4D67A0(uint64_t a1)
{
  v2 = sub_24B4D6A10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseDetailVideoLinkItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD3D0, &qword_24B520110);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4D6A10();
  sub_24B517FDC();
  v8[15] = 0;
  sub_24B516B8C();
  sub_24B47B69C(&qword_27EFFC510, MEMORY[0x277CC8C40], MEMORY[0x277CC8C48]);
  sub_24B517EBC();
  if (!v1)
  {
    type metadata accessor for BrowseDetailVideoLinkItem(0);
    v8[14] = 1;
    sub_24B517E7C();
    v8[13] = 2;
    type metadata accessor for VideoAsset(0);
    sub_24B47B69C(&qword_27EFFD3E0, type metadata accessor for VideoAsset, &protocol conformance descriptor for VideoAsset);
    sub_24B517EBC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24B4D6A10()
{
  result = qword_27EFFD3D8;
  if (!qword_27EFFD3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD3D8);
  }

  return result;
}

uint64_t BrowseDetailVideoLinkItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = type metadata accessor for VideoAsset(0);
  MEMORY[0x28223BE20](v25);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_24B516B8C();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD3E8, &qword_24B520118);
  v26 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = &v21 - v7;
  v9 = type metadata accessor for BrowseDetailVideoLinkItem(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4D6A10();
  sub_24B517FCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v26;
  v13 = v27;
  v22 = v11;
  v23 = a1;
  v21 = v5;
  v33 = 0;
  sub_24B47B69C(&qword_27EFFC588, MEMORY[0x277CC8C40], MEMORY[0x277CC8C60]);
  sub_24B517E0C();
  v14 = v22;
  (*(v13 + 32))();
  v32 = 1;
  v15 = sub_24B517DCC();
  v16 = v14;
  v17 = (v14 + *(v9 + 20));
  *v17 = v15;
  v17[1] = v18;
  v31 = 2;
  sub_24B47B69C(&qword_27EFFD3F0, type metadata accessor for VideoAsset, &protocol conformance descriptor for VideoAsset);
  v19 = v21;
  sub_24B517E0C();
  (*(v12 + 8))(v8, v30);
  sub_24B4D666C(v19, v16 + *(v9 + 24));
  sub_24B4D6ED0(v16, v24, type metadata accessor for BrowseDetailVideoLinkItem);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return sub_24B4D6F38(v16);
}

uint64_t sub_24B4D6ED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B4D6F38(uint64_t a1)
{
  v2 = type metadata accessor for BrowseDetailVideoLinkItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static BrowseDetailVideoLinkItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_24B516B7C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for BrowseDetailVideoLinkItem(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_24B517EEC() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 24);

  return _s15FitnessBrowsing10VideoAssetV2eeoiySbAC_ACtFZ_0((a1 + v10), (a2 + v10));
}

uint64_t BrowseDetailVideoLinkItem.hash(into:)(uint64_t a1)
{
  sub_24B516B8C();
  sub_24B47B69C(&qword_2810EED98, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
  sub_24B517A9C();
  v2 = type metadata accessor for BrowseDetailVideoLinkItem(0);
  sub_24B517B3C();
  v3 = v1 + *(v2 + 24);
  sub_24B517B3C();
  if (*(v3 + 24))
  {
    sub_24B517F9C();
    sub_24B517B3C();
  }

  else
  {
    sub_24B517F9C();
  }

  type metadata accessor for VideoAsset(0);
  sub_24B516BAC();
  sub_24B47B69C(&qword_2810EED80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  return sub_24B517A9C();
}

uint64_t BrowseDetailVideoLinkItem.hashValue.getter()
{
  sub_24B517F7C();
  sub_24B516B8C();
  sub_24B47B69C(&qword_2810EED98, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
  sub_24B517A9C();
  v1 = type metadata accessor for BrowseDetailVideoLinkItem(0);
  sub_24B517B3C();
  v2 = v0 + *(v1 + 24);
  sub_24B517B3C();
  if (*(v2 + 24))
  {
    sub_24B517F9C();
    sub_24B517B3C();
  }

  else
  {
    sub_24B517F9C();
  }

  type metadata accessor for VideoAsset(0);
  sub_24B516BAC();
  sub_24B47B69C(&qword_2810EED80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B517A9C();
  return sub_24B517FBC();
}

uint64_t sub_24B4D730C(uint64_t a1, uint64_t a2)
{
  sub_24B516B8C();
  sub_24B47B69C(&qword_2810EED98, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
  sub_24B517A9C();
  sub_24B517B3C();
  v4 = v2 + *(a2 + 24);
  sub_24B517B3C();
  if (*(v4 + 24))
  {
    sub_24B517F9C();
    sub_24B517B3C();
  }

  else
  {
    sub_24B517F9C();
  }

  type metadata accessor for VideoAsset(0);
  sub_24B516BAC();
  sub_24B47B69C(&qword_2810EED80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  return sub_24B517A9C();
}

uint64_t sub_24B4D7450(uint64_t a1, uint64_t a2)
{
  sub_24B517F7C();
  sub_24B516B8C();
  sub_24B47B69C(&qword_2810EED98, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
  sub_24B517A9C();
  sub_24B517B3C();
  v4 = v2 + *(a2 + 24);
  sub_24B517B3C();
  if (*(v4 + 24))
  {
    sub_24B517F9C();
    sub_24B517B3C();
  }

  else
  {
    sub_24B517F9C();
  }

  type metadata accessor for VideoAsset(0);
  sub_24B516BAC();
  sub_24B47B69C(&qword_2810EED80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B517A9C();
  return sub_24B517FBC();
}

uint64_t sub_24B4D75A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_24B516B7C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_24B517EEC() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 24);

  return _s15FitnessBrowsing10VideoAssetV2eeoiySbAC_ACtFZ_0((a1 + v11), (a2 + v11));
}

unint64_t sub_24B4D76B8()
{
  result = qword_27EFFD400;
  if (!qword_27EFFD400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD400);
  }

  return result;
}

unint64_t sub_24B4D7710()
{
  result = qword_27EFFD408;
  if (!qword_27EFFD408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD408);
  }

  return result;
}

unint64_t sub_24B4D7768()
{
  result = qword_27EFFD410;
  if (!qword_27EFFD410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD410);
  }

  return result;
}

uint64_t sub_24B4D77BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475626972747461 && a2 == 0xEF656C7469546465;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7373416F65646976 && a2 == 0xEA00000000007465)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B517EEC();

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

uint64_t BrowseError.hashValue.getter()
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](0);
  return sub_24B517FBC();
}

unint64_t sub_24B4D7960()
{
  result = qword_27EFFD418;
  if (!qword_27EFFD418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD418);
  }

  return result;
}

uint64_t NewAndFeaturedDataItem.referenceIdentifier.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 112));

  return v2;
}

uint64_t NewAndFeaturedDataItem.sampleContentIdentifier.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 116));

  return v2;
}

uint64_t NewAndFeaturedDataItem.presentationContextKey.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 120);
  v5 = sub_24B516C2C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

__n128 NewAndFeaturedDataItem.init(id:artwork:title:subtitle:assetLoadStatus:healthKitActivityTypes:isBookmarked:mediaType:referenceIdentifier:sampleContentIdentifier:metrics:presentationContextKey:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __n128 *a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, __int128 a19, uint64_t a20, uint64_t a21)
{
  v26 = a14[5];
  v53 = a14[4];
  v54 = v26;
  v55 = a14[6];
  v27 = a14[1];
  v49 = *a14;
  v50 = v27;
  v28 = a14[3];
  v51 = a14[2];
  v52 = v28;
  (*(*(a17 - 8) + 32))(a9, a1, a17);
  v44[0] = a16;
  v44[1] = a17;
  v45 = a18;
  v46 = a19;
  v47 = a20;
  v48 = a21;
  v29 = type metadata accessor for NewAndFeaturedDataItem(0, v44);
  (*(*(a16 - 8) + 32))(a9 + v29[21], a2, a16);
  v30 = v29[22];
  v31 = sub_24B516DDC();
  v32 = *(*(v31 - 8) + 32);
  v32(a9 + v30, a3, v31);
  v32(a9 + v29[23], a4, v31);
  *(a9 + v29[24]) = a5;
  *(a9 + v29[25]) = a6;
  *(a9 + v29[26]) = a7;
  *(a9 + v29[27]) = a8;
  v33 = (a9 + v29[28]);
  *v33 = a10;
  v33[1] = a11;
  v34 = (a9 + v29[29]);
  *v34 = a12;
  v34[1] = a13;
  v35 = v29[30];
  v36 = sub_24B516C2C();
  (*(*(v36 - 8) + 32))(a9 + v35, a15, v36);
  v37 = a9 + v29[31];
  v38 = v54;
  *(v37 + 64) = v53;
  *(v37 + 80) = v38;
  *(v37 + 96) = v55;
  v39 = v50;
  *v37 = v49;
  *(v37 + 16) = v39;
  result = v52;
  *(v37 + 32) = v51;
  *(v37 + 48) = result;
  return result;
}

BOOL static NewAndFeaturedDataItem.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if ((sub_24B517AAC() & 1) == 0)
  {
    return 0;
  }

  *&v82 = a3;
  *(&v82 + 1) = a4;
  *&v83 = a5;
  *(&v83 + 1) = a6;
  *&v84 = a7;
  *(&v84 + 1) = a8;
  v85 = a9;
  v17 = type metadata accessor for NewAndFeaturedDataItem(0, &v82);
  if ((sub_24B517AAC() & 1) == 0 || (sub_24B516DCC() & 1) == 0 || (sub_24B516DCC() & 1) == 0)
  {
    return 0;
  }

  v18 = v17[24];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 9)
  {
    if (v20 != 9)
    {
      return 0;
    }
  }

  else if (v19 != v20)
  {
    return 0;
  }

  if ((sub_24B48407C(*(a1 + v17[25]), *(a2 + v17[25])) & 1) == 0)
  {
    return 0;
  }

  v21 = v17[26];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22 == 2)
  {
    if (v23 != 2)
    {
      return 0;
    }

    goto LABEL_15;
  }

  result = 0;
  if (v23 != 2 && ((v23 ^ v22) & 1) == 0)
  {
LABEL_15:
    v25 = v17[27];
    v26 = *(a1 + v25);
    v27 = *(a2 + v25);
    if (v26 == 4)
    {
      if (v27 != 4)
      {
        return 0;
      }
    }

    else if (v26 != v27)
    {
      return 0;
    }

    v28 = v17[28];
    v29 = *(a1 + v28);
    v30 = *(a1 + v28 + 8);
    v31 = (a2 + v28);
    if ((v29 != *v31 || v30 != v31[1]) && (sub_24B517EEC() & 1) == 0)
    {
      return 0;
    }

    v32 = v17[29];
    v33 = (a1 + v32);
    v34 = *(a1 + v32 + 8);
    v35 = (a2 + v32);
    v36 = v35[1];
    if (v34)
    {
      if (!v36 || (*v33 != *v35 || v34 != v36) && (sub_24B517EEC() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v36)
    {
      return 0;
    }

    if (sub_24B516C0C())
    {
      v37 = v17[31];
      v38 = (a1 + v37);
      v39 = *(a1 + v37 + 48);
      v40 = *(a1 + v37 + 80);
      v111 = *(a1 + v37 + 64);
      v112 = v40;
      v41 = *(a1 + v37 + 80);
      v113 = *(a1 + v37 + 96);
      v42 = *(a1 + v37 + 16);
      v108[0] = *(a1 + v37);
      v108[1] = v42;
      v43 = *(a1 + v37 + 16);
      v44 = *(a1 + v37 + 48);
      v109 = *(a1 + v37 + 32);
      v110 = v44;
      v45 = (a2 + v37);
      v46 = v45[1];
      v114[0] = *v45;
      v114[1] = v46;
      v47 = v45[5];
      v119 = v45[6];
      v48 = v45[3];
      v49 = v45[5];
      v117 = v45[4];
      v118 = v49;
      v50 = v45[1];
      v51 = v45[3];
      v115 = v45[2];
      v116 = v51;
      v104 = v39;
      v105 = v111;
      v52 = v38[6];
      v106 = v41;
      v107 = v52;
      v102 = v43;
      v103 = v109;
      v53 = v108[0];
      v54 = v114[0];
      v96 = v50;
      v97 = v115;
      v55 = v45[6];
      v100 = v47;
      v101 = v55;
      v98 = v48;
      v99 = v117;
      if (*(&v108[0] + 1))
      {
        v82 = v108[0];
        v56 = v38[4];
        v85 = v38[3];
        v86 = v56;
        v57 = v38[6];
        v87 = v38[5];
        v88 = v57;
        v58 = v38[2];
        v83 = v38[1];
        v84 = v58;
        v75 = v108[0];
        v76 = v83;
        v80 = v87;
        v81 = v57;
        v78 = v85;
        v79 = v56;
        v77 = v58;
        if (*(&v114[0] + 1))
        {
          v59 = v45[4];
          v71 = v45[3];
          v72 = v59;
          v60 = v45[6];
          v73 = v45[5];
          v74 = v60;
          v61 = v45[2];
          v69 = v45[1];
          v70 = v61;
          v68 = v114[0];
          v62 = _s15FitnessBrowsing29NewAndFeaturedDataItemMetricsV2eeoiySbAC_ACtFZ_0(&v75, &v68);
          v66[4] = v72;
          v66[5] = v73;
          v66[6] = v74;
          v66[0] = v68;
          v66[1] = v69;
          v66[2] = v70;
          v66[3] = v71;
          sub_24B4D8258(v108, v67);
          sub_24B4D8258(v114, v67);
          sub_24B4D8258(&v82, v67);
          sub_24B4CC6AC(v66);
          v67[4] = v79;
          v67[5] = v80;
          v67[6] = v81;
          v67[0] = v75;
          v67[1] = v76;
          v67[2] = v77;
          v67[3] = v78;
          sub_24B4CC6AC(v67);
          v68 = v53;
          v71 = v104;
          v72 = v105;
          v73 = v106;
          v74 = v107;
          v69 = v102;
          v70 = v103;
          sub_24B49689C(&v68, &qword_27EFFCEA0, &unk_24B5203F0);
          return (v62 & 1) != 0;
        }

        v72 = v86;
        v73 = v87;
        v74 = v88;
        v68 = v82;
        v69 = v83;
        v70 = v84;
        v71 = v85;
        sub_24B4D8258(v108, v67);
        sub_24B4D8258(v114, v67);
        sub_24B4D8258(&v82, v67);
        sub_24B4CC6AC(&v68);
      }

      else
      {
        if (!*(&v114[0] + 1))
        {
          v82 = *&v108[0];
          v63 = v38[4];
          v85 = v38[3];
          v86 = v63;
          v64 = v38[6];
          v87 = v38[5];
          v88 = v64;
          v65 = v38[2];
          v83 = v38[1];
          v84 = v65;
          sub_24B4D8258(v108, &v75);
          sub_24B4D8258(v114, &v75);
          sub_24B49689C(&v82, &qword_27EFFCEA0, &unk_24B5203F0);
          return 1;
        }

        sub_24B4D8258(v108, &v82);
        sub_24B4D8258(v114, &v82);
      }

      v82 = v53;
      v85 = v104;
      v86 = v105;
      v87 = v106;
      v88 = v107;
      v83 = v102;
      v84 = v103;
      v89 = v54;
      v90 = v96;
      v91 = v97;
      v94 = v100;
      v95 = v101;
      v92 = v98;
      v93 = v99;
      sub_24B49689C(&v82, &qword_27EFFD420, &qword_24B524220);
    }

    return 0;
  }

  return result;
}

uint64_t sub_24B4D8258(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCEA0, &unk_24B5203F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4D82C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616F4C7465737361 && a2 == 0xEF73757461745364 || (sub_24B517EEC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B5275F0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x616D6B6F6F427369 && a2 == 0xEC00000064656B72 || (sub_24B517EEC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065 || (sub_24B517EEC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B527610 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024B527630 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B527920 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_24B517EEC();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_24B4D869C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000017;
    v7 = 0x7363697274656DLL;
    if (a1 == 10)
    {
      v7 = 0xD000000000000016;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000013;
    if (a1 == 7)
    {
      v8 = 0x707954616964656DLL;
    }

    if (a1 == 6)
    {
      v8 = 0x616D6B6F6F427369;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x656C746974627573;
    v3 = 0x616F4C7465737361;
    if (a1 != 4)
    {
      v3 = 0xD000000000000016;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6B726F77747261;
    if (a1 != 1)
    {
      v4 = 0x656C746974;
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

uint64_t sub_24B4D8868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4D82C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4D88B0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_24B4DAF18();
  *a2 = result;
  return result;
}

uint64_t sub_24B4D88EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24B4D8940(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t NewAndFeaturedDataItem.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 56);
  v24 = *(a2 + 24);
  *&v35[8] = v24;
  v20 = *(a2 + 40);
  *&v35[24] = v20;
  v21 = v3;
  v22 = a2;
  *v35 = v3;
  *&v35[40] = v4;
  v23 = *(a2 + 64);
  v36 = v23;
  type metadata accessor for NewAndFeaturedDataItem.CodingKeys(255, v35);
  swift_getWitnessTable();
  v5 = sub_24B517ECC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B517FDC();
  v35[0] = 0;
  v9 = v25;
  sub_24B517EBC();
  if (!v9)
  {
    v35[0] = 1;
    sub_24B517EBC();
    v35[0] = 2;
    sub_24B516DDC();
    sub_24B4DA1EC(&qword_27EFFD428, MEMORY[0x277D096C8], MEMORY[0x277D096D0]);
    sub_24B517EBC();
    v35[0] = 3;
    sub_24B517EBC();
    v11 = v41;
    v35[0] = *(v41 + v22[24]);
    LOBYTE(v28) = 4;
    sub_24B49B634();
    sub_24B517E6C();
    *v35 = *(v11 + v22[25]);
    LOBYTE(v28) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC550, &qword_24B520400);
    sub_24B49CA1C(&qword_27EFFC558, MEMORY[0x277D83E90], MEMORY[0x277D83948]);
    sub_24B517EBC();
    v35[0] = 6;
    sub_24B517E5C();
    v35[0] = *(v11 + v22[27]);
    LOBYTE(v28) = 7;
    sub_24B49B730();
    sub_24B517E6C();
    v35[0] = 8;
    sub_24B517E7C();
    v35[0] = 9;
    sub_24B517E4C();
    v40[0] = 10;
    sub_24B516C2C();
    sub_24B4DA1EC(&qword_27EFFD430, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_24B517EBC();
    v12 = (v41 + v22[31]);
    v13 = v12[3];
    v14 = v12[5];
    v37 = v12[4];
    v38 = v14;
    v15 = v12[5];
    v39 = v12[6];
    v16 = v12[1];
    *v35 = *v12;
    *&v35[16] = v16;
    v17 = v12[3];
    v19 = *v12;
    v18 = v12[1];
    *&v35[32] = v12[2];
    v36 = v17;
    v32 = v37;
    v33 = v15;
    v34 = v12[6];
    v28 = v19;
    v29 = v18;
    v30 = *&v35[32];
    v31 = v13;
    v27 = 11;
    sub_24B4D8258(v35, v26);
    sub_24B4DA198();
    sub_24B517E6C();
    v26[4] = v32;
    v26[5] = v33;
    v26[6] = v34;
    v26[0] = v28;
    v26[1] = v29;
    v26[2] = v30;
    v26[3] = v31;
    sub_24B49689C(v26, &qword_27EFFCEA0, &unk_24B5203F0);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t NewAndFeaturedDataItem.hash(into:)(uint64_t a1, int *a2)
{
  sub_24B517A9C();
  sub_24B517A9C();
  sub_24B516DDC();
  sub_24B4DA1EC(&qword_2810ED7E8, MEMORY[0x277D096C8], MEMORY[0x277D096D8]);
  sub_24B517A9C();
  sub_24B517A9C();
  v4 = *(v2 + a2[24]);
  sub_24B517F9C();
  if (v4 != 9)
  {
    MEMORY[0x24C241D70](v4);
  }

  v5 = *(v2 + a2[25]);
  MEMORY[0x24C241D70](*(v5 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      v8 = *v7++;
      MEMORY[0x24C241D70](v8);
      --v6;
    }

    while (v6);
  }

  if (*(v2 + a2[26]) != 2)
  {
    sub_24B517F9C();
  }

  sub_24B517F9C();
  v9 = *(v2 + a2[27]);
  sub_24B517F9C();
  if (v9 != 4)
  {
    MEMORY[0x24C241D70](v9);
  }

  sub_24B517B3C();
  if (*(v2 + a2[29] + 8))
  {
    sub_24B517F9C();
    sub_24B517B3C();
  }

  else
  {
    sub_24B517F9C();
  }

  sub_24B516C2C();
  sub_24B4DA1EC(&qword_27EFFD440, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24B517A9C();
  v10 = (v2 + a2[31]);
  v11 = v10[5];
  v18 = v10[4];
  v19 = v11;
  v20 = v10[6];
  v12 = v10[1];
  v15[0] = *v10;
  v15[1] = v12;
  v13 = v10[3];
  v16 = v10[2];
  v17 = v13;
  if (!*(&v15[0] + 1))
  {
    return sub_24B517F9C();
  }

  sub_24B517F9C();

  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517F9C();
  if (*(&v16 + 1))
  {
    sub_24B517B3C();
  }

  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517B3C();
  return sub_24B49689C(v15, &qword_27EFFCEA0, &unk_24B5203F0);
}

uint64_t NewAndFeaturedDataItem.hashValue.getter(int *a1)
{
  sub_24B517F7C();
  NewAndFeaturedDataItem.hash(into:)(v3, a1);
  return sub_24B517FBC();
}

uint64_t NewAndFeaturedDataItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v79 = a5;
  v81 = a1;
  v60 = a9;
  v78 = a10;
  v66 = sub_24B516C2C();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v61 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_24B516DDC();
  v67 = *(v69 - 8);
  v18 = MEMORY[0x28223BE20](v69);
  v62 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v63 = &v59 - v21;
  v64 = *(a2 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v71 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *(a3 - 8);
  MEMORY[0x28223BE20](v22);
  v77 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v82 = a2;
  *(&v82 + 1) = a3;
  *&v83 = a4;
  *(&v83 + 1) = a5;
  *&v84 = a6;
  *(&v84 + 1) = a7;
  v25 = a6;
  *&v85 = a8;
  *(&v85 + 1) = a10;
  v26 = a8;
  type metadata accessor for NewAndFeaturedDataItem.CodingKeys(255, &v82);
  swift_getWitnessTable();
  v75 = sub_24B517E2C();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v28 = &v59 - v27;
  v70 = a2;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  v76 = a3;
  v72 = a4;
  *&v83 = a4;
  *(&v83 + 1) = v79;
  *&v84 = v25;
  *(&v84 + 1) = a7;
  v73 = a7;
  *&v85 = v26;
  *(&v85 + 1) = v78;
  v29 = v81;
  v30 = type metadata accessor for NewAndFeaturedDataItem(0, &v82);
  v78 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v32 = &v59 - v31;
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  v79 = v28;
  v33 = v80;
  sub_24B517FCC();
  if (v33)
  {
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v34 = v30;
  v35 = v71;
  v80 = v32;
  LOBYTE(v82) = 0;
  v36 = v76;
  sub_24B517E0C();
  v37 = v80;
  (*(v68 + 32))(v80, v77, v36);
  LOBYTE(v82) = 1;
  v38 = v70;
  sub_24B517E0C();
  (*(v64 + 32))(&v37[*(v30 + 84)], v35, v38);
  LOBYTE(v82) = 2;
  sub_24B4DA1EC(&qword_27EFFD448, MEMORY[0x277D096C8], MEMORY[0x277D096E0]);
  v39 = v63;
  v40 = v37;
  v41 = v69;
  v77 = 0;
  sub_24B517E0C();
  v42 = v34[22];
  v43 = v34;
  v44 = *(v67 + 32);
  v44(&v40[v42], v39, v41);
  LOBYTE(v82) = 3;
  v45 = v62;
  sub_24B517E0C();
  v44(&v40[v43[23]], v45, v41);
  v89 = 4;
  sub_24B49C920();
  sub_24B517DBC();
  v40[v43[24]] = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC550, &qword_24B520400);
  v89 = 5;
  sub_24B49CA1C(&qword_27EFFC5C0, MEMORY[0x277D83EB0], MEMORY[0x277D83978]);
  sub_24B517E0C();
  *&v40[v43[25]] = v82;
  LOBYTE(v82) = 6;
  v40[v43[26]] = sub_24B517DAC();
  v89 = 7;
  sub_24B49CA88();
  sub_24B517DBC();
  v80[v43[27]] = v82;
  LOBYTE(v82) = 8;
  v46 = sub_24B517DCC();
  v47 = &v80[v43[28]];
  *v47 = v46;
  v47[1] = v48;
  LOBYTE(v82) = 9;
  v49 = sub_24B517D9C();
  v50 = &v80[v43[29]];
  *v50 = v49;
  v50[1] = v51;
  LOBYTE(v82) = 10;
  sub_24B4DA1EC(&qword_27EFFD450, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  sub_24B517E0C();
  (*(v65 + 32))(&v80[v43[30]], v61, v66);
  v89 = 11;
  sub_24B4DA234();
  sub_24B517DBC();
  (*(v74 + 8))(v79, v75);
  v52 = v80;
  v53 = &v80[v43[31]];
  v54 = v87;
  *(v53 + 4) = v86;
  *(v53 + 5) = v54;
  *(v53 + 6) = v88;
  v55 = v83;
  *v53 = v82;
  *(v53 + 1) = v55;
  v56 = v85;
  *(v53 + 2) = v84;
  *(v53 + 3) = v56;
  v57 = v78;
  (*(v78 + 16))(v60, v52, v43);
  __swift_destroy_boxed_opaque_existential_1(v81);
  return (*(v57 + 8))(v52, v43);
}

uint64_t sub_24B4DA0FC(uint64_t a1, int *a2)
{
  sub_24B517F7C();
  NewAndFeaturedDataItem.hash(into:)(v4, a2);
  return sub_24B517FBC();
}

unint64_t sub_24B4DA198()
{
  result = qword_27EFFD438;
  if (!qword_27EFFD438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD438);
  }

  return result;
}

uint64_t sub_24B4DA1EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24B4DA234()
{
  result = qword_27EFFD458[0];
  if (!qword_27EFFD458[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EFFD458);
  }

  return result;
}

void sub_24B4DA324(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_24B516DDC();
      if (v3 <= 0x3F)
      {
        sub_24B47C4CC(319, qword_2810ED9D8, &type metadata for BrowseItemAssetLoadStatus, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24B47C4CC(319, &qword_2810ED6F0, MEMORY[0x277D83E88], MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            sub_24B47C4CC(319, &qword_2810ED6E8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_24B47C4CC(319, &qword_2810EE2A8, &type metadata for BrowseItemMediaType, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_24B47C4CC(319, &qword_2810ED708, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_24B516C2C();
                  if (v9 <= 0x3F)
                  {
                    sub_24B47C4CC(319, &qword_2810ED8B0, &type metadata for NewAndFeaturedDataItemMetrics, MEMORY[0x277D83D88]);
                    if (v10 <= 0x3F)
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
  }
}

uint64_t sub_24B4DA548(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v40 = *(a3 + 24);
  v4 = *(v40 - 8);
  v39 = *(a3 + 16);
  v5 = *(v4 + 84);
  v6 = *(v39 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v4 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v37 = sub_24B516DDC();
  v9 = *(v37 - 8);
  v42 = v9;
  v38 = *(v9 + 84);
  if (v38 > v8)
  {
    v8 = *(v9 + 84);
  }

  v10 = *(sub_24B516C2C() - 8);
  v11 = *(v6 + 80);
  v12 = *(v6 + 64);
  v13 = *(v9 + 80);
  v14 = *(v9 + 64);
  v15 = *(v10 + 80);
  if (v8 <= *(v10 + 84))
  {
    v16 = *(v10 + 84);
  }

  else
  {
    v16 = v8;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v4 + 64) + v11;
  v19 = v14 + v13;
  v20 = v15 + 16;
  v21 = a1;
  if (v17 >= a2)
  {
    goto LABEL_35;
  }

  v22 = ((*(v10 + 64) + ((v20 + ((((((((v19 + ((v12 + v13 + (v18 & ~v11)) & ~v13)) & ~v13) + v14) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 112;
  v23 = v22 & 0xFFFFFFF8;
  if ((v22 & 0xFFFFFFF8) != 0)
  {
    v24 = 2;
  }

  else
  {
    v24 = a2 - v17 + 1;
  }

  if (v24 >= 0x10000)
  {
    v25 = 4;
  }

  else
  {
    v25 = 2;
  }

  if (v24 < 0x100)
  {
    v25 = 1;
  }

  if (v24 >= 2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26 <= 1)
  {
    if (!v26)
    {
      goto LABEL_35;
    }

    v27 = *(a1 + v22);
    if (!v27)
    {
      goto LABEL_35;
    }

LABEL_32:
    v29 = v27 - 1;
    if (v23)
    {
      v29 = 0;
      v30 = *a1;
    }

    else
    {
      v30 = 0;
    }

    return v17 + (v30 | v29) + 1;
  }

  if (v26 == 2)
  {
    v27 = *(a1 + v22);
    if (v27)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v27 = *(a1 + v22);
    if (v27)
    {
      goto LABEL_32;
    }
  }

LABEL_35:
  if (v5 == v17)
  {
    v31 = v40;
    v32 = *(v4 + 48);
    v33 = v5;
LABEL_41:

    return v32(v21, v33, v31);
  }

  v21 = ((a1 + v18) & ~v11);
  if (v7 == v17)
  {
    v32 = *(v6 + 48);
    v33 = v7;
    v31 = v39;
    goto LABEL_41;
  }

  v21 = ((v21 + v12 + v13) & ~v13);
  if (v38 == v17)
  {
    v32 = *(v42 + 48);
    v33 = v38;
    v31 = v37;
    goto LABEL_41;
  }

  v34 = (((v21 + v19) & ~v13) + v14) & 0xFFFFFFFFFFFFFFF8;
  if ((v16 & 0x80000000) != 0)
  {
    v36 = *(v10 + 48);

    return v36((v20 + ((((v34 + 25) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v15);
  }

  else
  {
    v35 = *(v34 + 8);
    if (v35 >= 0xFFFFFFFF)
    {
      LODWORD(v35) = -1;
    }

    return (v35 + 1);
  }
}

void sub_24B4DA918(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v32 = v5;
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 16) - 8);
  v31 = *(v7 + 84);
  if (v31 <= v6)
  {
    v8 = *(v5 + 84);
  }

  else
  {
    v8 = *(v7 + 84);
  }

  v9 = *(sub_24B516DDC() - 8);
  v10 = *(v9 + 84);
  if (v10 > v8)
  {
    v8 = *(v9 + 84);
  }

  v11 = *(sub_24B516C2C() - 8);
  v12 = *(v5 + 64);
  v13 = *(v7 + 80);
  v14 = *(v7 + 64);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  v17 = *(v11 + 80);
  if (v8 <= *(v11 + 84))
  {
    v18 = *(v11 + 84);
  }

  else
  {
    v18 = v8;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v20 = ((*(v11 + 64) + ((v17 + 16 + ((((((((v16 + v15 + ((v14 + v15 + ((v12 + v13) & ~v13)) & ~v15)) & ~v15) + v16) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 112;
  if (v19 >= a3)
  {
    v23 = 0;
  }

  else
  {
    if (((*(v11 + 64) + ((v17 + 16 + ((((((((v16 + v15 + ((v14 + v15 + ((v12 + v13) & ~v13)) & ~v15)) & ~v15) + v16) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v17) + 7) & 0xFFFFFFF8) == 0xFFFFFF90)
    {
      v21 = a3 - v19 + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }
  }

  if (a2 > v19)
  {
    if (((*(v11 + 64) + ((v17 + 16 + ((((((((v16 + v15 + ((v14 + v15 + ((v12 + v13) & ~v13)) & ~v15)) & ~v15) + v16) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v17) + 7) & 0xFFFFFFF8) == 0xFFFFFF90)
    {
      v24 = a2 - v19;
    }

    else
    {
      v24 = 1;
    }

    if (((*(v11 + 64) + ((v17 + 16 + ((((((((v16 + v15 + ((v14 + v15 + ((v12 + v13) & ~v13)) & ~v15)) & ~v15) + v16) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v17) + 7) & 0xFFFFFFF8) != 0xFFFFFF90)
    {
      v25 = ~v19 + a2;
      bzero(a1, v20);
      *a1 = v25;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        *(a1 + v20) = v24;
      }

      else
      {
        *(a1 + v20) = v24;
      }
    }

    else if (v23)
    {
      *(a1 + v20) = v24;
    }

    return;
  }

  if (v23 <= 1)
  {
    if (v23)
    {
      *(a1 + v20) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

LABEL_42:
    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  if (v23 == 2)
  {
    *(a1 + v20) = 0;
    goto LABEL_42;
  }

  *(a1 + v20) = 0;
  if (!a2)
  {
    return;
  }

LABEL_43:
  if (v6 == v19)
  {
    v26 = *(v32 + 56);
    v27 = a1;

LABEL_57:
    v26(v27);
    return;
  }

  v27 = ((a1 + v12 + v13) & ~v13);
  if (v31 == v19)
  {
    v26 = *(v7 + 56);

    goto LABEL_57;
  }

  v27 = ((v27 + v14 + v15) & ~v15);
  if (v10 == v19)
  {
    v26 = *(v9 + 56);

    goto LABEL_57;
  }

  v28 = (((v27 + v16 + v15) & ~v15) + v16) & 0xFFFFFFFFFFFFFFF8;
  if ((v18 & 0x80000000) != 0)
  {
    v30 = *(v11 + 56);

    v30((v17 + 16 + ((((v28 + 25) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v17);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v29 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v29 = a2 - 1;
    }

    *(v28 + 8) = v29;
  }
}

uint64_t sub_24B4DAD84(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_24B4DAE14(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 BrowseEnvironment.init(fetchEditorialCollectionDetail:fetchEditorialGalleryItems:fetchSectionDescriptors:invalidateAllPlaceholders:makeAllowedContentRatingsUpdatedStream:makeAppDidEnterBackgroundStream:makeArchivedSessionsUpdatedStream:makeAudioLanguagePreferenceUpdatedStream:makeBrowsingIdentityUpdatedStream:makeCatalogUpdatedStream:makeSignificantTimeChangeStream:makeStorefrontLanguageUpdatedStream:makeTrainerTipJournalsUpdatedStream:makeWheelchairStatusUpdatedStream:refreshCanvas:refreshCanvasItems:reloadCanvas:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __n128 a21, uint64_t a22, uint64_t a23)
{
  result = a21;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 144) = a15;
  *(a9 + 160) = a16;
  *(a9 + 176) = a17;
  *(a9 + 192) = a18;
  *(a9 + 208) = a19;
  *(a9 + 224) = a20;
  *(a9 + 240) = a21;
  *(a9 + 256) = a22;
  *(a9 + 264) = a23;
  return result;
}

uint64_t sub_24B4DAF74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_24B4DAFBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t BrowseGalleryDescriptor.copyWith(displayStyle:identifier:items:preferredInsetBehavior:title:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a6;
  v31 = a2;
  v32 = a1;
  v12 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v27 - v14;
  v16 = sub_24B516B8C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12 == 36)
  {
    v32 = *v7;
  }

  if (a3)
  {
    v29 = a3;
    if (a4)
    {
LABEL_5:
      v27 = a4;
      goto LABEL_8;
    }
  }

  else
  {
    v20 = *(v7 + 2);
    v31 = *(v7 + 1);
    v29 = v20;

    if (a4)
    {
      goto LABEL_5;
    }
  }

  v27 = *(v7 + 3);

LABEL_8:
  if (a5 == 2)
  {
    v30 = v7[32];
  }

  else
  {
    v30 = a5;
  }

  sub_24B4D1850(v28, v15);
  v21 = *(v17 + 48);
  if (v21(v15, 1, v16) == 1)
  {
    v22 = type metadata accessor for BrowseGalleryDescriptor(0);
    (*(v17 + 16))(v19, &v7[*(v22 + 32)], v16);
    v23 = v21(v15, 1, v16);

    if (v23 != 1)
    {
      sub_24B4DB2F8(v15);
    }
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
  }

  *a7 = v32;
  v24 = v29;
  *(a7 + 8) = v31;
  *(a7 + 16) = v24;
  *(a7 + 24) = v27;
  *(a7 + 32) = v30 & 1;
  v25 = type metadata accessor for BrowseGalleryDescriptor(0);
  return (*(v17 + 32))(a7 + *(v25 + 32), v19, v16);
}

uint64_t sub_24B4DB2F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CreatePlanBannerDescriptor.actionTitle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CreatePlanBannerDescriptor.subtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CreatePlanBannerDescriptor.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall CreatePlanBannerDescriptor.init(actionTitle:subtitle:title:)(FitnessBrowsing::CreatePlanBannerDescriptor *__return_ptr retstr, Swift::String_optional actionTitle, Swift::String_optional subtitle, Swift::String_optional title)
{
  retstr->actionTitle = actionTitle;
  retstr->subtitle = subtitle;
  retstr->title = title;
}

uint64_t sub_24B4DB404()
{
  v1 = 0x656C746974627573;
  if (*v0 != 1)
  {
    v1 = 0x656C746974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69546E6F69746361;
  }
}

uint64_t sub_24B4DB464@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4DBF78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4DB48C(uint64_t a1)
{
  v2 = sub_24B4DBCE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4DB4C8(uint64_t a1)
{
  v2 = sub_24B4DBCE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CreatePlanBannerDescriptor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD4E0, &qword_24B520790);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4DBCE8();
  sub_24B517FDC();
  v14 = 0;
  v9 = v11[5];
  sub_24B517E4C();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_24B517E4C();
  v12 = 2;
  sub_24B517E4C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t CreatePlanBannerDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD4F0, &qword_24B520798);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4DBCE8();
  sub_24B517FCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_24B517D9C();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_24B517D9C();
  v21 = v12;
  v23 = 2;
  v13 = sub_24B517D9C();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CreatePlanBannerDescriptor.hash(into:)(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  if (v1[1])
  {
    sub_24B517F9C();
    sub_24B517B3C();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_24B517F9C();
    if (v3)
    {
      goto LABEL_4;
    }

    return sub_24B517F9C();
  }

  sub_24B517F9C();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_24B517F9C();
  sub_24B517B3C();
  if (!v3)
  {
    return sub_24B517F9C();
  }

LABEL_4:
  sub_24B517F9C();

  return sub_24B517B3C();
}

uint64_t CreatePlanBannerDescriptor.hashValue.getter()
{
  v1 = v0[1];
  v2 = v0[3];
  v3 = v0[5];
  sub_24B517F7C();
  if (v1)
  {
    sub_24B517F9C();
    sub_24B517B3C();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_24B517F9C();
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_24B517F9C();
    return sub_24B517FBC();
  }

  sub_24B517F9C();
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_24B517F9C();
  sub_24B517B3C();
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_24B517F9C();
  sub_24B517B3C();
  return sub_24B517FBC();
}

uint64_t sub_24B4DBB38()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  v6 = v0[2];
  sub_24B517F7C();
  CreatePlanBannerDescriptor.hash(into:)(v3);
  return sub_24B517FBC();
}

uint64_t sub_24B4DBB90(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  v7 = v1[2];
  sub_24B517F7C();
  CreatePlanBannerDescriptor.hash(into:)(v4);
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing26CreatePlanBannerDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    if (!v8 || (*a1 != *a2 || v3 != v8) && (sub_24B517EEC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v4 != v9 || v6 != v11) && (sub_24B517EEC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v7)
  {
    if (v12 && (v5 == v10 && v7 == v12 || (sub_24B517EEC() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_24B4DBCE8()
{
  result = qword_27EFFD4E8;
  if (!qword_27EFFD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD4E8);
  }

  return result;
}

unint64_t sub_24B4DBD40()
{
  result = qword_27EFFD4F8;
  if (!qword_27EFFD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD4F8);
  }

  return result;
}

uint64_t sub_24B4DBD94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_24B4DBDF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_24B4DBE74()
{
  result = qword_27EFFD500;
  if (!qword_27EFFD500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD500);
  }

  return result;
}

unint64_t sub_24B4DBECC()
{
  result = qword_27EFFD508;
  if (!qword_27EFFD508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD508);
  }

  return result;
}

unint64_t sub_24B4DBF24()
{
  result = qword_27EFFD510;
  if (!qword_27EFFD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD510);
  }

  return result;
}

uint64_t sub_24B4DBF78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69546E6F69746361 && a2 == 0xEB00000000656C74;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B517EEC();

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

uint64_t sub_24B4DC090(uint64_t a1)
{
  v2 = sub_24B4DC98C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4DC0CC(uint64_t a1)
{
  v2 = sub_24B4DC98C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4DC108(uint64_t a1)
{
  v2 = sub_24B4DC938();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4DC144(uint64_t a1)
{
  v2 = sub_24B4DC938();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24B4DC180()
{
  v1 = 0x615472656E6E6162;
  v2 = 0x6570704177656976;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_24B4DC204@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4DD9F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4DC22C(uint64_t a1)
{
  v2 = sub_24B4DC83C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4DC268(uint64_t a1)
{
  v2 = sub_24B4DC83C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4DC2A4(uint64_t a1)
{
  v2 = sub_24B4DC8E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4DC2E0(uint64_t a1)
{
  v2 = sub_24B4DC8E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4DC31C(uint64_t a1)
{
  v2 = sub_24B4DC890();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4DC358(uint64_t a1)
{
  v2 = sub_24B4DC890();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CreatePlanBannerAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD518, &qword_24B5209D0);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v31 = &v24 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD520, &qword_24B5209D8);
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD528, &qword_24B5209E0);
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD530, &qword_24B5209E8);
  v24 = *(v10 - 8);
  v25 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD538, &qword_24B5209F0);
  v13 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v15 = &v24 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4DC83C();
  sub_24B517FDC();
  switch(v16)
  {
    case 5:
      v37 = 2;
      sub_24B4DC8E4();
      v9 = v28;
      v18 = v34;
      sub_24B517E3C();
      v20 = v29;
      v19 = v30;
      goto LABEL_7;
    case 4:
      v36 = 1;
      sub_24B4DC938();
      v18 = v34;
      sub_24B517E3C();
      v20 = v26;
      v19 = v27;
LABEL_7:
      (*(v20 + 8))(v9, v19);
      return (*(v13 + 8))(v15, v18);
    case 3:
      v35 = 0;
      sub_24B4DC98C();
      v17 = v34;
      sub_24B517E3C();
      (*(v24 + 8))(v12, v25);
      break;
    default:
      v39 = 3;
      sub_24B4DC890();
      v22 = v31;
      v17 = v34;
      sub_24B517E3C();
      v38 = v16;
      sub_24B4A4B48();
      v23 = v33;
      sub_24B517EBC();
      (*(v32 + 8))(v22, v23);
      break;
  }

  return (*(v13 + 8))(v15, v17);
}

unint64_t sub_24B4DC83C()
{
  result = qword_27EFFD540;
  if (!qword_27EFFD540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD540);
  }

  return result;
}

unint64_t sub_24B4DC890()
{
  result = qword_27EFFD548;
  if (!qword_27EFFD548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD548);
  }

  return result;
}

unint64_t sub_24B4DC8E4()
{
  result = qword_27EFFD550;
  if (!qword_27EFFD550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD550);
  }

  return result;
}

unint64_t sub_24B4DC938()
{
  result = qword_27EFFD558;
  if (!qword_27EFFD558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD558);
  }

  return result;
}

unint64_t sub_24B4DC98C()
{
  result = qword_27EFFD560;
  if (!qword_27EFFD560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD560);
  }

  return result;
}

uint64_t CreatePlanBannerAction.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD568, &qword_24B5209F8);
  v4 = *(v3 - 8);
  v44 = v3;
  v45 = v4;
  MEMORY[0x28223BE20](v3);
  v48 = &v38 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD570, &qword_24B520A00);
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v47 = &v38 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD578, &qword_24B520A08);
  v46 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD580, &qword_24B520A10);
  v41 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD588, &unk_24B520A18);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - v14;
  v16 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_24B4DC83C();
  v17 = v50;
  sub_24B517FCC();
  if (!v17)
  {
    v18 = v11;
    v38 = v9;
    v39 = 0;
    v19 = v8;
    v21 = v46;
    v20 = v47;
    v50 = v13;
    v22 = v48;
    v23 = v49;
    v24 = sub_24B517E1C();
    v25 = (2 * *(v24 + 16)) | 1;
    v52 = v24;
    v53 = v24 + 32;
    v54 = 0;
    v55 = v25;
    v26 = sub_24B4A39B4();
    if (v26 == 4 || v54 != v55 >> 1)
    {
      v28 = sub_24B517D0C();
      swift_allocError();
      v30 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0);
      *v30 = &type metadata for CreatePlanBannerAction;
      sub_24B517D8C();
      sub_24B517CFC();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
    }

    else
    {
      if (v26 > 1u)
      {
        v32 = v23;
        v33 = v50;
        if (v26 == 2)
        {
          v56 = 2;
          sub_24B4DC8E4();
          v34 = v39;
          sub_24B517D7C();
          if (!v34)
          {
            (*(v40 + 8))(v20, v42);
            (*(v33 + 8))(v15, v12);
            swift_unknownObjectRelease();
            *v32 = 5;
            return __swift_destroy_boxed_opaque_existential_1(v51);
          }
        }

        else
        {
          v56 = 3;
          sub_24B4DC890();
          v36 = v39;
          sub_24B517D7C();
          if (!v36)
          {
            sub_24B4A4F64();
            v37 = v44;
            sub_24B517E0C();
            (*(v45 + 8))(v22, v37);
            (*(v33 + 8))(v15, v12);
            swift_unknownObjectRelease();
            *v32 = v56;
            return __swift_destroy_boxed_opaque_existential_1(v51);
          }
        }

        (*(v33 + 8))(v15, v12);
        goto LABEL_10;
      }

      if (v26)
      {
        v56 = 1;
        sub_24B4DC938();
        v35 = v39;
        sub_24B517D7C();
        if (!v35)
        {
          (*(v21 + 8))(v19, v43);
          (*(v50 + 8))(v15, v12);
          swift_unknownObjectRelease();
          *v23 = 4;
          return __swift_destroy_boxed_opaque_existential_1(v51);
        }
      }

      else
      {
        v56 = 0;
        sub_24B4DC98C();
        v27 = v39;
        sub_24B517D7C();
        if (!v27)
        {
          (*(v41 + 8))(v18, v38);
          (*(v50 + 8))(v15, v12);
          swift_unknownObjectRelease();
          *v23 = 3;
          return __swift_destroy_boxed_opaque_existential_1(v51);
        }
      }
    }

    (*(v50 + 8))(v15, v12);
LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v51);
}

BOOL static CreatePlanBannerAction.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 5:
      return v3 == 5;
    case 4:
      return v3 == 4;
    case 3:
      return v3 == 3;
  }

  if ((v3 - 3) < 3)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t CreatePlanBannerAction.hash(into:)()
{
  v1 = *v0;
  v2 = v1 - 3;
  if ((v1 - 3) >= 3)
  {
    MEMORY[0x24C241D70](3);
    v2 = v1;
  }

  return MEMORY[0x24C241D70](v2);
}

uint64_t CreatePlanBannerAction.hashValue.getter()
{
  v1 = *v0;
  sub_24B517F7C();
  v2 = v1 - 3;
  if ((v1 - 3) >= 3)
  {
    MEMORY[0x24C241D70](3);
    v2 = v1;
  }

  MEMORY[0x24C241D70](v2);
  return sub_24B517FBC();
}

uint64_t sub_24B4DD230()
{
  v1 = *v0;
  sub_24B517F7C();
  v2 = v1 - 3;
  if ((v1 - 3) >= 3)
  {
    MEMORY[0x24C241D70](3);
    v2 = v1;
  }

  MEMORY[0x24C241D70](v2);
  return sub_24B517FBC();
}

uint64_t sub_24B4DD294()
{
  v1 = *v0;
  v2 = v1 - 3;
  if ((v1 - 3) >= 3)
  {
    MEMORY[0x24C241D70](3);
    v2 = v1;
  }

  return MEMORY[0x24C241D70](v2);
}

uint64_t sub_24B4DD2DC(uint64_t a1)
{
  sub_24B517F7C();
  v2 = *v1;
  v3 = v2 - 3;
  if ((v2 - 3) >= 3)
  {
    MEMORY[0x24C241D70](3);
    v3 = v2;
  }

  MEMORY[0x24C241D70](v3);
  return sub_24B517FBC();
}

unint64_t sub_24B4DD340()
{
  result = qword_27EFFD590;
  if (!qword_27EFFD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD590);
  }

  return result;
}

BOOL sub_24B4DD394(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 5:
      return v3 == 5;
    case 4:
      return v3 == 4;
    case 3:
      return v3 == 3;
  }

  if ((v3 - 3) < 3)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t getEnumTagSinglePayload for CreatePlanBannerAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CreatePlanBannerAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
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

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_24B4DD554(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_24B4DD568(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unint64_t sub_24B4DD5DC()
{
  result = qword_27EFFD598;
  if (!qword_27EFFD598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD598);
  }

  return result;
}

unint64_t sub_24B4DD634()
{
  result = qword_27EFFD5A0;
  if (!qword_27EFFD5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD5A0);
  }

  return result;
}

unint64_t sub_24B4DD68C()
{
  result = qword_27EFFD5A8;
  if (!qword_27EFFD5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD5A8);
  }

  return result;
}

unint64_t sub_24B4DD6E4()
{
  result = qword_27EFFD5B0;
  if (!qword_27EFFD5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD5B0);
  }

  return result;
}

unint64_t sub_24B4DD73C()
{
  result = qword_27EFFD5B8;
  if (!qword_27EFFD5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD5B8);
  }

  return result;
}

unint64_t sub_24B4DD794()
{
  result = qword_27EFFD5C0;
  if (!qword_27EFFD5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD5C0);
  }

  return result;
}

unint64_t sub_24B4DD7EC()
{
  result = qword_27EFFD5C8;
  if (!qword_27EFFD5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD5C8);
  }

  return result;
}

unint64_t sub_24B4DD844()
{
  result = qword_27EFFD5D0;
  if (!qword_27EFFD5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD5D0);
  }

  return result;
}

unint64_t sub_24B4DD89C()
{
  result = qword_27EFFD5D8;
  if (!qword_27EFFD5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD5D8);
  }

  return result;
}

unint64_t sub_24B4DD8F4()
{
  result = qword_27EFFD5E0;
  if (!qword_27EFFD5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD5E0);
  }

  return result;
}

unint64_t sub_24B4DD94C()
{
  result = qword_27EFFD5E8;
  if (!qword_27EFFD5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD5E8);
  }

  return result;
}

unint64_t sub_24B4DD9A4()
{
  result = qword_27EFFD5F0;
  if (!qword_27EFFD5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD5F0);
  }

  return result;
}

uint64_t sub_24B4DD9F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000024B527940 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x615472656E6E6162 && a2 == 0xEC00000064657070 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024B527960 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_24B517EEC();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24B4DDB80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD5F8, &qword_24B520F90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4DDBF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD5F8, &qword_24B520F90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t BrowseLocalState.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24B516BEC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_24B4DDD10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x800000024B527980 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24B517EEC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24B4DDDA4(uint64_t a1)
{
  v2 = sub_24B4DDF80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4DDDE0(uint64_t a1)
{
  v2 = sub_24B4DDF80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseLocalState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD600, &qword_24B520F98);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4DDF80();
  sub_24B517FDC();
  sub_24B516BEC();
  sub_24B4DE9BC(&qword_27EFFD610, MEMORY[0x277CC9580]);
  sub_24B517E6C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24B4DDF80()
{
  result = qword_27EFFD608;
  if (!qword_27EFFD608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD608);
  }

  return result;
}

uint64_t BrowseLocalState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD5F8, &qword_24B520F90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD618, &qword_24B520FA0);
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for BrowseLocalState(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24B516BEC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4DDF80();
  v13 = v18;
  sub_24B517FCC();
  if (!v13)
  {
    v14 = v17;
    sub_24B4DE9BC(&qword_27EFFD620, MEMORY[0x277CC95A0]);
    sub_24B517DBC();
    (*(v16 + 8))(v8, v6);
    sub_24B4DDBF8(v5, v11);
    sub_24B4DE2F8(v11, v14);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B4DE29C(v11);
}

uint64_t type metadata accessor for BrowseLocalState(uint64_t a1)
{
  result = qword_2810EE4E8;
  if (!qword_2810EE4E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B4DE29C(uint64_t a1)
{
  v2 = type metadata accessor for BrowseLocalState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B4DE2F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseLocalState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4DE374(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD600, &qword_24B520F98);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4DDF80();
  sub_24B517FDC();
  sub_24B516BEC();
  sub_24B4DE9BC(&qword_27EFFD610, MEMORY[0x277CC9580]);
  sub_24B517E6C();
  return (*(v3 + 8))(v5, v2);
}

BOOL _s15FitnessBrowsing16BrowseLocalStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B516BEC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD5F8, &qword_24B520F90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD640, &qword_24B521158);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_24B4DDB80(a1, &v20 - v13);
  sub_24B4DDB80(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_24B4DDB80(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_24B4DE9BC(&qword_2810EED68, MEMORY[0x277CC9598]);
      v18 = sub_24B517AAC();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_24B49689C(v14, &qword_27EFFD5F8, &qword_24B520F90);
      return (v18 & 1) != 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_24B49689C(v14, &qword_27EFFD640, &qword_24B521158);
    return 0;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_24B49689C(v14, &qword_27EFFD5F8, &qword_24B520F90);
  return 1;
}

void sub_24B4DE7E0(uint64_t a1)
{
  sub_24B4DE84C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24B4DE84C(uint64_t a1)
{
  if (!qword_2810EED60)
  {
    sub_24B516BEC();
    v1 = sub_24B517C8C();
    if (!v2)
    {
      atomic_store(v1, &qword_2810EED60);
    }
  }
}

unint64_t sub_24B4DE8B8()
{
  result = qword_27EFFD628;
  if (!qword_27EFFD628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD628);
  }

  return result;
}

unint64_t sub_24B4DE910()
{
  result = qword_27EFFD630;
  if (!qword_27EFFD630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD630);
  }

  return result;
}

unint64_t sub_24B4DE968()
{
  result = qword_27EFFD638;
  if (!qword_27EFFD638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD638);
  }

  return result;
}

uint64_t sub_24B4DE9BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_24B516BEC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B4DEA00()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_24B4DEA5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4E1020(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4DEA84(uint64_t a1)
{
  v2 = sub_24B4DF65C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4DEAC0(uint64_t a1)
{
  v2 = sub_24B4DF65C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4DEAFC(uint64_t a1)
{
  v2 = sub_24B4DF758();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4DEB38(uint64_t a1)
{
  v2 = sub_24B4DF758();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4DEB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B517EEC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B4DEC20(uint64_t a1)
{
  v2 = sub_24B4DF704();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4DEC5C(uint64_t a1)
{
  v2 = sub_24B4DF704();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4DEC98(uint64_t a1)
{
  v2 = sub_24B4DF6B0();

  return MEMORY[0x2821FE718](a1, v2);
}