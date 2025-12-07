uint64_t sub_26C40C2E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C40C388(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26C40C408@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_26C4026B8(a1, a3);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_26C40C454(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_26C40C4BC(uint64_t a1)
{
  type metadata accessor for LamportTimestamp(319);
  if (v1 <= 0x3F)
  {
    sub_26C40C760(319, &qword_2804979E8, type metadata accessor for ValueData, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_26C40C760(319, qword_2804979F0, type metadata accessor for LamportTimestamp, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26C40C5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LamportTimestamp(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 52));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26C40C6A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LamportTimestamp(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }

  return result;
}

void sub_26C40C760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26C40C88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v28 = a5;
  v30 = a3;
  v31 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - v10;
  *a6 = xmmword_26C46D3C0;
  v12 = type metadata accessor for ValueData(0);
  sub_26C46BD14();
  v13 = *(v12 + 24);
  v14 = type metadata accessor for PBUUID(0);
  v15 = *(*(v14 - 8) + 56);
  v15(a6 + v13, 1, 1, v14);
  v15(a6 + *(v12 + 28), 1, 1, v14);
  v16 = a1;
  sub_26C3DDD48(a1, v11, &qword_280497430, &unk_26C46D3D0);
  sub_26C40EC10(v11);
  if (qword_280497168 != -1)
  {
    swift_once();
  }

  sub_26C410654(a4, a4);
  v17 = *(a4 - 8);
  swift_allocObject();
  v18 = sub_26C46C264();
  (*(v17 + 16))(v19, v31, a4);
  sub_26C46C2E4();
  v33 = v18;
  v32 = v28;
  swift_getWitnessTable();
  v20 = v29;
  v21 = sub_26C46BA74();
  if (v20)
  {
    sub_26C3DE270(v30, &qword_280497430, &unk_26C46D3D0);
    (*(v17 + 8))(v31, a4);
    sub_26C3DE270(v16, &qword_280497430, &unk_26C46D3D0);

    return sub_26C4118B4(a6, type metadata accessor for ValueData);
  }

  else
  {
    v24 = v21;
    v25 = v22;

    sub_26C3DDEA8(*a6, *(a6 + 8));
    *a6 = v24;
    *(a6 + 8) = v25;
    v26 = v30;
    sub_26C3DDD48(v30, v11, &qword_280497430, &unk_26C46D3D0);
    sub_26C40EF48(v11);
    sub_26C3DE270(v26, &qword_280497430, &unk_26C46D3D0);
    (*(v17 + 8))(v31, a4);
    return sub_26C3DE270(v16, &qword_280497430, &unk_26C46D3D0);
  }
}

void *sub_26C40CC14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v12 = a3;
  v6 = sub_26C46C474();
  v11 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  if (qword_280497170 != -1)
  {
    swift_once();
  }

  sub_26C46C2E4();
  v14 = a2;
  swift_getWitnessTable();
  result = sub_26C46BA34();
  if (!v3)
  {
    v13 = v15;
    swift_getWitnessTable();
    sub_26C46C3B4();
    v10 = *(a1 - 8);
    if ((*(v10 + 48))(v8, 1, a1) == 1)
    {
      (*(v11 + 8))(v8, v6);

      sub_26C411914();
      swift_allocError();
      return swift_willThrow();
    }

    else
    {
      (*(v10 + 32))(v12, v8, a1);
    }
  }

  return result;
}

uint64_t sub_26C40CE7C@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = type metadata accessor for PBUUID(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v22 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = *(type metadata accessor for ValueData(0) + 24);
  v21 = v1;
  sub_26C3DDD48(v1 + v11, v10, &qword_280497458, &unk_26C46D3F0);
  v12 = *(v3 + 48);
  v13 = 1;
  v14 = v12(v10, 1, v2);
  v15 = v10;
  v16 = v23;
  sub_26C3DE270(v15, &qword_280497458, &unk_26C46D3F0);
  if (v14 != 1)
  {
    sub_26C3DDD48(v21 + v11, v8, &qword_280497458, &unk_26C46D3F0);
    if (v12(v8, 1, v2) == 1)
    {
      v17 = v22;
      *v22 = 0;
      v17[1] = 0;
      sub_26C46BD14();
      if (v12(v8, 1, v2) != 1)
      {
        sub_26C3DE270(v8, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v17 = v22;
      sub_26C4117F8(v8, v22, type metadata accessor for PBUUID);
    }

    sub_26C40F3CC();
    sub_26C4118B4(v17, type metadata accessor for PBUUID);
    v13 = 0;
  }

  v18 = sub_26C46BB54();
  return (*(*(v18 - 8) + 56))(v16, v13, 1, v18);
}

uint64_t sub_26C40D13C@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = type metadata accessor for PBUUID(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v22 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = *(type metadata accessor for ValueData(0) + 28);
  v21 = v1;
  sub_26C3DDD48(v1 + v11, v10, &qword_280497458, &unk_26C46D3F0);
  v12 = *(v3 + 48);
  v13 = 1;
  v14 = v12(v10, 1, v2);
  v15 = v10;
  v16 = v23;
  sub_26C3DE270(v15, &qword_280497458, &unk_26C46D3F0);
  if (v14 != 1)
  {
    sub_26C3DDD48(v21 + v11, v8, &qword_280497458, &unk_26C46D3F0);
    if (v12(v8, 1, v2) == 1)
    {
      v17 = v22;
      *v22 = 0;
      v17[1] = 0;
      sub_26C46BD14();
      if (v12(v8, 1, v2) != 1)
      {
        sub_26C3DE270(v8, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v17 = v22;
      sub_26C4117F8(v8, v22, type metadata accessor for PBUUID);
    }

    sub_26C40F3CC();
    sub_26C4118B4(v17, type metadata accessor for PBUUID);
    v13 = 0;
  }

  v18 = sub_26C46BB54();
  return (*(*(v18 - 8) + 56))(v16, v13, 1, v18);
}

uint64_t sub_26C40D428(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_26C46C394();
  if (!v19)
  {
    return sub_26C46C284();
  }

  v41 = v19;
  v45 = sub_26C46C584();
  v32 = sub_26C46C594();
  sub_26C46C564();
  result = sub_26C46C384();
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
      v22 = sub_26C46C3C4();
      v23 = v14;
      v24 = v14;
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
      sub_26C46C574();
      result = sub_26C46C3A4();
      ++v21;
      v14 = v24;
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

uint64_t sub_26C40D848()
{
  sub_26C46BA94();
  swift_allocObject();
  v0 = sub_26C46BA84();
  result = sub_26C46BA64();
  qword_280497A78 = v0;
  return result;
}

uint64_t sub_26C40D894()
{
  sub_26C46BA54();
  swift_allocObject();
  result = sub_26C46BA44();
  qword_280497A80 = result;
  return result;
}

uint64_t sub_26C40D8D4(uint64_t a1)
{
  v20 = type metadata accessor for PBUUID(0);
  v2 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_26C46BB54();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  sub_26C3DDD48(a1, v7, &qword_280497430, &unk_26C46D3D0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_26C3DE270(a1, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v7, &qword_280497430, &unk_26C46D3D0);
    v15 = *(type metadata accessor for ModelData(0) + 36);
    v16 = v21;
    sub_26C3DE270(v21 + v15, &qword_280497458, &unk_26C46D3F0);
    return (*(v2 + 56))(v16 + v15, 1, 1, v20);
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    (*(v9 + 16))(v12, v14, v8);
    sub_26C40F280(v12, v4);
    sub_26C3DE270(a1, &qword_280497430, &unk_26C46D3D0);
    (*(v9 + 8))(v14, v8);
    v18 = *(type metadata accessor for ModelData(0) + 36);
    v19 = v21;
    sub_26C3DE270(v21 + v18, &qword_280497458, &unk_26C46D3F0);
    sub_26C4117F8(v4, v19 + v18, type metadata accessor for PBUUID);
    return (*(v2 + 56))(v19 + v18, 0, 1, v20);
  }
}

uint64_t sub_26C40DC0C(uint64_t a1)
{
  v59 = type metadata accessor for PBUUID(0);
  v3 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = (&v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497AA0, &qword_26C46E020);
  v5 = MEMORY[0x28223BE20](v57);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v56 = &v49 - v9;
  MEMORY[0x28223BE20](v8);
  v55 = &v49 - v10;
  v11 = type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier(0);
  v53 = *(v11 - 8);
  v54 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  if (v14)
  {
    v49 = v1;
    v66 = MEMORY[0x277D84F90];
    sub_26C42FB78(0, v14, 0);
    v15 = v66;
    v16 = sub_26C46C494();
    v17 = 0;
    v18 = *(a1 + 36);
    v51 = (v3 + 56);
    v52 = v7 + 8;
    v50 = a1;
    do
    {
      v61 = v17;
      v64 = v15;
      v65 = v14;
      v19 = v55;
      v62 = v18;
      v63 = v16;
      v20 = sub_26C411048(v55, v16, v18, v17 & 1, a1);
      v22 = v21;
      v60 = sub_26C46BB54();
      v23 = *(v60 - 8);
      v24 = v56;
      (*(v23 + 32))(v56, v19, v60);
      v25 = v57;
      v26 = (v24 + *(v57 + 48));
      *v26 = v20;
      v26[1] = v22;
      *v13 = 0;
      *(v13 + 1) = 0xE000000000000000;
      v27 = v54;
      sub_26C46BD14();
      v28 = *(v27 + 24);
      v29 = *v51;
      v30 = v59;
      (*v51)(&v13[v28], 1, 1, v59);
      sub_26C3DDD48(v24, v7, &qword_280497AA0, &qword_26C46E020);

      v31 = v7;
      v32 = v58;
      sub_26C40F280(v31, v58);
      sub_26C3DE270(&v13[v28], &qword_280497458, &unk_26C46D3F0);
      v33 = v32;
      v7 = v31;
      sub_26C4117F8(v33, &v13[v28], type metadata accessor for PBUUID);
      v29(&v13[v28], 0, 1, v30);
      sub_26C3E9F28(v24, v31, &qword_280497AA0, &qword_26C46E020);
      v34 = *(v25 + 48);
      v15 = v64;
      v35 = (v31 + v34);
      v37 = *v35;
      v36 = v35[1];
      *v13 = v37;
      *(v13 + 1) = v36;
      (*(v23 + 8))(v31, v60);
      v66 = v15;
      v39 = *(v15 + 16);
      v38 = *(v15 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_26C42FB78((v38 > 1), v39 + 1, 1);
        v15 = v66;
      }

      *(v15 + 16) = v39 + 1;
      sub_26C4117F8(v13, v15 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v39, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier);
      v40 = v61;
      v42 = v62;
      v41 = v63;
      a1 = v50;
      v43 = sub_26C410FC8(v63, v62, v61 & 1, v50);
      v45 = v44;
      v47 = v46;
      sub_26C411860(v41, v42, v40 & 1);
      v16 = v43;
      v18 = v45;
      v17 = v47;
      v14 = v65 - 1;
    }

    while (v65 != 1);
    sub_26C411860(v43, v45, v47 & 1);

    v1 = v49;
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  *(v1 + 16) = v15;
  return result;
}

uint64_t sub_26C40E104(uint64_t a1)
{
  v20 = type metadata accessor for PBUUID(0);
  v2 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_26C46BB54();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  sub_26C3DDD48(a1, v7, &qword_280497430, &unk_26C46D3D0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_26C3DE270(a1, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v7, &qword_280497430, &unk_26C46D3D0);
    v15 = *(type metadata accessor for OwnershipChangeBroadcastMessage(0) + 40);
    v16 = v21;
    sub_26C3DE270(v21 + v15, &qword_280497458, &unk_26C46D3F0);
    return (*(v2 + 56))(v16 + v15, 1, 1, v20);
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    (*(v9 + 16))(v12, v14, v8);
    sub_26C40F280(v12, v4);
    sub_26C3DE270(a1, &qword_280497430, &unk_26C46D3D0);
    (*(v9 + 8))(v14, v8);
    v18 = *(type metadata accessor for OwnershipChangeBroadcastMessage(0) + 40);
    v19 = v21;
    sub_26C3DE270(v21 + v18, &qword_280497458, &unk_26C46D3F0);
    sub_26C4117F8(v4, v19 + v18, type metadata accessor for PBUUID);
    return (*(v2 + 56))(v19 + v18, 0, 1, v20);
  }
}

uint64_t sub_26C40E43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v33 = a3;
  v34 = a4;
  v32 = a2;
  v16 = MEMORY[0x277D84F90];
  *a9 = MEMORY[0x277D84F90];
  a9[1] = v16;
  a9[2] = v16;
  a9[3] = v16;
  type metadata accessor for DictionaryCatchupData(0);
  sub_26C46BD14();
  v41 = a1;
  v36 = a5;
  v37 = a6;
  v30 = a7;
  v38 = a7;
  v39 = a8;
  v17 = sub_26C46C2E4();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497460, qword_26C46DAA0);
  WitnessTable = swift_getWitnessTable();
  v31 = v18;
  v20 = sub_26C40D428(sub_26C41186C, v35, v17, MEMORY[0x277CC9318], v18, WitnessTable, MEMORY[0x277D84950], &v40);

  if (v9)
  {

    return sub_26C4118B4(a9, type metadata accessor for DictionaryCatchupData);
  }

  else
  {
    v23 = v32;
    v22 = v33;
    *a9 = v20;
    a9[1] = v23;
    a9[2] = v22;
    v41 = v34;
    MEMORY[0x28223BE20](v21);
    v29[2] = a5;
    v29[3] = a6;
    v29[4] = v30;
    v29[5] = a8;
    type metadata accessor for LamportTimestamp(255);
    v24 = sub_26C46C174();
    v25 = type metadata accessor for DictionaryCatchupData.TombstoneTimestamp(0);
    v26 = swift_getWitnessTable();
    v27 = sub_26C40D428(sub_26C411890, v29, v24, v25, v31, v26, MEMORY[0x277D84950], &v40);

    a9[3] = v27;
  }

  return result;
}

uint64_t sub_26C40E6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X5>, uint64_t *a4@<X8>)
{
  if (qword_280497168 != -1)
  {
    swift_once();
  }

  sub_26C410654(a2, a2);
  v9 = *(a2 - 8);
  swift_allocObject();
  sub_26C46C264();
  (*(v9 + 16))(v10, a1, a2);
  sub_26C46C2E4();
  swift_getWitnessTable();
  v11 = sub_26C46BA74();
  if (v4)
  {

    *a3 = v4;
  }

  else
  {
    v14 = v11;
    v15 = v12;

    *a4 = v14;
    a4[1] = v15;
  }

  return result;
}

uint64_t sub_26C40E858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X5>, uint64_t a5@<X8>)
{
  v36 = a4;
  v37 = a3;
  v8 = type metadata accessor for LamportTimestamp(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v29 - v10;
  *a5 = xmmword_26C46D3C0;
  v12 = type metadata accessor for DictionaryCatchupData.TombstoneTimestamp(0);
  sub_26C46BD14();
  v13 = *(v8 - 8);
  v14 = *(v13 + 56);
  v34 = *(v12 + 24);
  v35 = v8;
  v32 = v13 + 56;
  v33 = v14;
  v14(a5 + v34, 1, 1, v8);
  if (qword_280497168 != -1)
  {
    swift_once();
  }

  sub_26C410654(a2, a2);
  v15 = *(a2 - 8);
  swift_allocObject();
  v16 = sub_26C46C264();
  v18 = v17;
  v19 = *(v39 + 16);
  v39 += 16;
  v31 = v19;
  v19(v11, a1, TupleTypeMetadata2);
  v30 = a1;
  v20 = *(TupleTypeMetadata2 + 48);
  (*(v15 + 32))(v18, v11, a2);
  sub_26C46C2E4();
  sub_26C4118B4(&v11[v20], type metadata accessor for LamportTimestamp);
  v41 = v16;
  v40 = v37;
  swift_getWitnessTable();
  v21 = v38;
  v22 = sub_26C46BA74();
  if (v21)
  {

    result = sub_26C4118B4(a5, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp);
    *v36 = v21;
  }

  else
  {
    v25 = v22;
    v26 = v23;

    sub_26C3DDEA8(*a5, *(a5 + 8));
    *a5 = v25;
    *(a5 + 8) = v26;
    v31(v11, v30, TupleTypeMetadata2);
    v27 = *(TupleTypeMetadata2 + 48);
    v28 = v34;
    sub_26C3DE270(a5 + v34, &qword_280497468, &unk_26C46D400);
    sub_26C4117F8(&v11[v27], a5 + v28, type metadata accessor for LamportTimestamp);
    v33(a5 + v28, 0, 1, v35);
    return (*(v15 + 8))(v11, a2);
  }

  return result;
}

uint64_t sub_26C40EC10(uint64_t a1)
{
  v20 = type metadata accessor for PBUUID(0);
  v2 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_26C46BB54();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  sub_26C3DDD48(a1, v7, &qword_280497430, &unk_26C46D3D0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_26C3DE270(a1, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v7, &qword_280497430, &unk_26C46D3D0);
    v15 = *(type metadata accessor for ValueData(0) + 24);
    v16 = v21;
    sub_26C3DE270(v21 + v15, &qword_280497458, &unk_26C46D3F0);
    return (*(v2 + 56))(v16 + v15, 1, 1, v20);
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    (*(v9 + 16))(v12, v14, v8);
    sub_26C40F280(v12, v4);
    sub_26C3DE270(a1, &qword_280497430, &unk_26C46D3D0);
    (*(v9 + 8))(v14, v8);
    v18 = *(type metadata accessor for ValueData(0) + 24);
    v19 = v21;
    sub_26C3DE270(v21 + v18, &qword_280497458, &unk_26C46D3F0);
    sub_26C4117F8(v4, v19 + v18, type metadata accessor for PBUUID);
    return (*(v2 + 56))(v19 + v18, 0, 1, v20);
  }
}

uint64_t sub_26C40EF48(uint64_t a1)
{
  v20 = type metadata accessor for PBUUID(0);
  v2 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_26C46BB54();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  sub_26C3DDD48(a1, v7, &qword_280497430, &unk_26C46D3D0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_26C3DE270(a1, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v7, &qword_280497430, &unk_26C46D3D0);
    v15 = *(type metadata accessor for ValueData(0) + 28);
    v16 = v21;
    sub_26C3DE270(v21 + v15, &qword_280497458, &unk_26C46D3F0);
    return (*(v2 + 56))(v16 + v15, 1, 1, v20);
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    (*(v9 + 16))(v12, v14, v8);
    sub_26C40F280(v12, v4);
    sub_26C3DE270(a1, &qword_280497430, &unk_26C46D3D0);
    (*(v9 + 8))(v14, v8);
    v18 = *(type metadata accessor for ValueData(0) + 28);
    v19 = v21;
    sub_26C3DE270(v21 + v18, &qword_280497458, &unk_26C46D3F0);
    sub_26C4117F8(v4, v19 + v18, type metadata accessor for PBUUID);
    return (*(v2 + 56))(v19 + v18, 0, 1, v20);
  }
}

uint64_t sub_26C40F280@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  type metadata accessor for PBUUID(0);
  sub_26C46BD14();
  v4 = sub_26C46BB34() >> 56;
  v5 = (sub_26C46BB34() >> 40) & 0xFF00 | v4;
  v6 = (sub_26C46BB34() >> 24) & 0xFF0000;
  v7 = v5 | v6 | (sub_26C46BB34() >> 8) & 0xFF000000;
  v8 = v7 & 0xFFFFFF00FFFFFFFFLL | ((sub_26C46BB34() >> 24) << 32);
  v9 = v8 & 0xFFFF00FFFFFFFFFFLL | ((sub_26C46BB34() >> 16) << 40);
  v10 = v9 & 0xFF00FFFFFFFFFFFFLL | ((sub_26C46BB34() >> 8) << 48);
  *a2 = v10 | (sub_26C46BB34() << 56);
  sub_26C46BB34();
  HIBYTE(v10) = v11;
  sub_26C46BB34();
  v13 = (v12 >> 40) & 0xFF00 | HIBYTE(v10);
  sub_26C46BB34();
  v15 = (v14 >> 24) & 0xFF0000;
  sub_26C46BB34();
  v17 = v13 | v15 | (v16 >> 8) & 0xFF000000;
  sub_26C46BB34();
  v19 = v17 & 0xFFFFFF00FFFFFFFFLL | (v18 << 32);
  sub_26C46BB34();
  v21 = v19 & 0xFFFF00FFFFFFFFFFLL | (v20 << 40);
  sub_26C46BB34();
  v23 = v21 & 0xFF00FFFFFFFFFFFFLL | (v22 << 48);
  sub_26C46BB34();
  v25 = v24;
  v26 = sub_26C46BB54();
  result = (*(*(v26 - 8) + 8))(a1, v26);
  a2[1] = v23 | (v25 << 56);
  return result;
}

uint64_t sub_26C40F448@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = type metadata accessor for PBUUID(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v22 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = *(type metadata accessor for ModelData(0) + 36);
  v21 = v1;
  sub_26C3DDD48(v1 + v11, v10, &qword_280497458, &unk_26C46D3F0);
  v12 = *(v3 + 48);
  v13 = 1;
  v14 = v12(v10, 1, v2);
  v15 = v10;
  v16 = v23;
  sub_26C3DE270(v15, &qword_280497458, &unk_26C46D3F0);
  if (v14 != 1)
  {
    sub_26C3DDD48(v21 + v11, v8, &qword_280497458, &unk_26C46D3F0);
    if (v12(v8, 1, v2) == 1)
    {
      v17 = v22;
      *v22 = 0;
      v17[1] = 0;
      sub_26C46BD14();
      if (v12(v8, 1, v2) != 1)
      {
        sub_26C3DE270(v8, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v17 = v22;
      sub_26C4117F8(v8, v22, type metadata accessor for PBUUID);
    }

    sub_26C40F3CC();
    sub_26C4118B4(v17, type metadata accessor for PBUUID);
    v13 = 0;
  }

  v18 = sub_26C46BB54();
  return (*(*(v18 - 8) + 56))(v16, v13, 1, v18);
}

uint64_t sub_26C40F708@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = type metadata accessor for PBUUID(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v22 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = *(type metadata accessor for OwnershipChangeBroadcastMessage(0) + 40);
  v21 = v1;
  sub_26C3DDD48(v1 + v11, v10, &qword_280497458, &unk_26C46D3F0);
  v12 = *(v3 + 48);
  v13 = 1;
  v14 = v12(v10, 1, v2);
  v15 = v10;
  v16 = v23;
  sub_26C3DE270(v15, &qword_280497458, &unk_26C46D3F0);
  if (v14 != 1)
  {
    sub_26C3DDD48(v21 + v11, v8, &qword_280497458, &unk_26C46D3F0);
    if (v12(v8, 1, v2) == 1)
    {
      v17 = v22;
      *v22 = 0;
      v17[1] = 0;
      sub_26C46BD14();
      if (v12(v8, 1, v2) != 1)
      {
        sub_26C3DE270(v8, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v17 = v22;
      sub_26C4117F8(v8, v22, type metadata accessor for PBUUID);
    }

    sub_26C40F3CC();
    sub_26C4118B4(v17, type metadata accessor for PBUUID);
    v13 = 0;
  }

  v18 = sub_26C46BB54();
  return (*(*(v18 - 8) + 56))(v16, v13, 1, v18);
}

uint64_t sub_26C40F9C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = sub_26C46BD44();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LamportTimestamp(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = 0;
  sub_26C46BD14();
  v10 = *(v7 + 24);
  v11 = type metadata accessor for PBUUID(0);
  (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C46C884();
  if (v2)
  {
    sub_26C4118B4(v9, type metadata accessor for LamportTimestamp);
  }

  else
  {
    v14 = v4;
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    sub_26C3E0208();
    sub_26C46C774();
    v12 = v16[0];
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_26C46BD34();
    sub_26C40FE90(&qword_280497A90, &unk_26C4708A4);
    sub_26C46BE94();
    sub_26C3DDEA8(v12, *(&v12 + 1));
    (*(v19 + 8))(v6, v14);
    sub_26C3DE270(v16, &qword_280497A98, &qword_26C46E008);
    __swift_destroy_boxed_opaque_existential_1(v18);
    sub_26C4117F8(v9, v15, type metadata accessor for LamportTimestamp);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26C40FD04(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C46C8A4();
  type metadata accessor for LamportTimestamp(0);
  sub_26C40FE90(&qword_280497A90, &unk_26C4708A4);
  v2 = sub_26C46BE64();
  if (!v1)
  {
    v5 = v2;
    v6 = v3;
    __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_26C3E031C();
    sub_26C46C784();
    sub_26C3DDEA8(v5, v6);
  }

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_26C40FE90(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LamportTimestamp(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26C40FED4()
{
  v1 = type metadata accessor for ModelData.PropertyDataMap(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  v6 = *(v5 + 16);
  if (v6)
  {
    v20 = MEMORY[0x277D84F90];
    sub_26C42FBBC(0, v6, 0);
    v7 = v20;
    v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    do
    {
      sub_26C411790(v8, v4, type metadata accessor for ModelData.PropertyDataMap);
      v10 = *v4;
      v11 = *(v4 + 1);
      v12 = *(v4 + 2);
      sub_26C3DDDB0(v11, v12);
      sub_26C4118B4(v4, type metadata accessor for ModelData.PropertyDataMap);
      v20 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_26C42FBBC((v13 > 1), v14 + 1, 1);
        v7 = v20;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 24 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v11;
      *(v15 + 48) = v12;
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  else if (!*(MEMORY[0x277D84F90] + 16))
  {
    v16 = MEMORY[0x277D84F98];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497348, &qword_26C46D138);
  v16 = sub_26C46C624();
LABEL_9:
  v20 = v16;

  sub_26C4106C8(v17, 1, &v20);

  return v20;
}

uint64_t sub_26C410104()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  MEMORY[0x28223BE20](v1 - 8);
  v34 = &v29 - v2;
  v33 = type metadata accessor for PBUUID(0);
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier(0);
  v6 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497598, &unk_26C46E010);
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = *(v0 + 16);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v35 = MEMORY[0x277D84F90];
    sub_26C42FBDC(0, v13, 0);
    v14 = v35;
    v15 = v6;
    v16 = v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v17 = (v3 + 48);
    v29 = *(v15 + 72);
    do
    {
      sub_26C411790(v16, v8, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier);
      v18 = v34;
      sub_26C3DDD48(v8 + *(v32 + 24), v34, &qword_280497458, &unk_26C46D3F0);
      v19 = *v17;
      v20 = v33;
      if ((*v17)(v18, 1, v33) == 1)
      {
        *v5 = 0;
        v5[1] = 0;
        sub_26C46BD14();
        if (v19(v18, 1, v20) != 1)
        {
          sub_26C3DE270(v18, &qword_280497458, &unk_26C46D3F0);
        }
      }

      else
      {
        sub_26C4117F8(v18, v5, type metadata accessor for PBUUID);
      }

      v21 = &v11[*(v31 + 48)];
      sub_26C40F3CC();
      sub_26C4118B4(v5, type metadata accessor for PBUUID);
      v23 = *v8;
      v22 = v8[1];

      sub_26C4118B4(v8, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier);
      *v21 = v23;
      *(v21 + 1) = v22;
      v35 = v14;
      v25 = *(v14 + 16);
      v24 = *(v14 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_26C42FBDC((v24 > 1), v25 + 1, 1);
        v14 = v35;
      }

      *(v14 + 16) = v25 + 1;
      sub_26C3E9F28(v11, v14 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v25, &qword_280497598, &unk_26C46E010);
      v16 += v29;
      --v13;
    }

    while (v13);
  }

  if (*(v14 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497340, &qword_26C46D130);
    v26 = sub_26C46C624();
  }

  else
  {
    v26 = MEMORY[0x277D84F98];
  }

  v35 = v26;

  sub_26C410A5C(v27, 1, &v35);

  return v35;
}

uint64_t sub_26C410598()
{
  sub_26C46C814();
  MEMORY[0x26D6A1230](0);
  return sub_26C46C844();
}

uint64_t sub_26C410604(uint64_t a1)
{
  sub_26C46C814();
  MEMORY[0x26D6A1230](0);
  return sub_26C46C844();
}

uint64_t sub_26C410654(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497AA8, qword_26C46E028);
  }

  else
  {

    return MEMORY[0x2821FDC00](0, a2);
  }
}

void sub_26C4106C8(uint64_t a1, char a2, void *a3)
{
  v37 = *(a1 + 16);
  if (!v37)
  {
    goto LABEL_3;
  }

  LOBYTE(v5) = a2;
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  sub_26C3DDDB0(v8, v7);
  if (v7 >> 60 == 15)
  {
    goto LABEL_3;
  }

  v9 = *a3;
  v10 = sub_26C42C1C8(v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_26C3DAA08(v15, v5 & 1);
    v10 = sub_26C42C1C8(v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_9;
    }

LABEL_7:
    v10 = sub_26C46C7A4();
    __break(1u);
  }

  if (v5)
  {
LABEL_9:
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_13:
    v21 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v21[6] + 4 * v10) = v6;
    v22 = (v21[7] + 16 * v10);
    *v22 = v8;
    v22[1] = v7;
    v23 = v21[2];
    v14 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v14)
    {
      v21[2] = v24;
      if (v37 == 1)
      {
LABEL_3:

        return;
      }

      v5 = (a1 + 72);
      v25 = 1;
      while (v25 < *(a1 + 16))
      {
        v6 = *(v5 - 4);
        v8 = *(v5 - 1);
        v7 = *v5;
        sub_26C3DDDB0(v8, *v5);
        if (v7 >> 60 == 15)
        {
          goto LABEL_3;
        }

        v26 = *a3;
        v27 = sub_26C42C1C8(v6);
        v29 = v26[2];
        v30 = (v28 & 1) == 0;
        v14 = __OFADD__(v29, v30);
        v31 = v29 + v30;
        if (v14)
        {
          goto LABEL_25;
        }

        v16 = v28;
        if (v26[3] < v31)
        {
          sub_26C3DAA08(v31, 1);
          v27 = sub_26C42C1C8(v6);
          if ((v16 & 1) != (v32 & 1))
          {
            goto LABEL_7;
          }
        }

        if (v16)
        {
          goto LABEL_10;
        }

        v33 = *a3;
        *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
        *(v33[6] + 4 * v27) = v6;
        v34 = (v33[7] + 16 * v27);
        *v34 = v8;
        v34[1] = v7;
        v35 = v33[2];
        v14 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v14)
        {
          goto LABEL_26;
        }

        ++v25;
        v33[2] = v36;
        v5 += 3;
        if (v37 == v25)
        {
          goto LABEL_3;
        }
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = v10;
  sub_26C42EE4C();
  v10 = v20;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v18 = swift_allocError();
  swift_willThrow();
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497460, qword_26C46DAA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_26C3DDEA8(v8, v7);

    return;
  }

LABEL_28:
  sub_26C46C524();
  MEMORY[0x26D6A0C00](0xD00000000000001BLL, 0x800000026C475C50);
  sub_26C46C5B4();
  MEMORY[0x26D6A0C00](39, 0xE100000000000000);
  sub_26C46C5E4();
  __break(1u);
}

void sub_26C410A5C(uint64_t a1, char a2, void *a3)
{
  v7 = sub_26C46BB54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497598, &unk_26C46E010);
  v12 = MEMORY[0x28223BE20](v11);
  v15 = &v58 - v14;
  v65 = *(a1 + 16);
  if (!v65)
  {
    goto LABEL_22;
  }

  v16 = &v15[*(v12 + 48)];
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v64 = *(v13 + 72);
  v66 = a1;
  v59 = v17;
  v60 = v3;
  sub_26C3DDD48(a1 + v17, &v58 - v14, &qword_280497598, &unk_26C46E010);
  v61 = v8;
  v67 = *(v8 + 32);
  v68 = v7;
  v67(v10, v15, v7);
  v63 = v16;
  v18 = *v16;
  v19 = *(v16 + 1);
  v69 = a3;
  v20 = *a3;
  v21 = sub_26C42C210(v10);
  v23 = *(v20 + 16);
  v24 = (v22 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v27 = v22;
  if (*(v20 + 24) < v26)
  {
    sub_26C3DAC84(v26, a2 & 1);
    v21 = sub_26C42C210(v10);
    if ((v27 & 1) != (v28 & 1))
    {
LABEL_5:
      sub_26C46C7A4();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v27)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v31 = v21;
  sub_26C42EFB4();
  v21 = v31;
  if (v27)
  {
LABEL_9:
    v29 = swift_allocError();
    swift_willThrow();
    v72 = v29;
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497460, qword_26C46DAA0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v61 + 8))(v10, v68);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v32 = v68;
  v33 = *v69;
  *(*v69 + 8 * (v21 >> 6) + 64) |= 1 << v21;
  v34 = v33[6];
  v62 = *(v61 + 72);
  v35 = v21;
  v67((v34 + v62 * v21), v10, v32);
  v36 = (v33[7] + 16 * v35);
  *v36 = v18;
  v36[1] = v19;
  v37 = v33[2];
  v25 = __OFADD__(v37, 1);
  v38 = v37 + 1;
  if (!v25)
  {
    v33[2] = v38;
    v39 = v66;
    if (v65 == 1)
    {
LABEL_22:

      return;
    }

    v40 = v66 + v64 + v59;
    v41 = 1;
    while (v41 < *(v39 + 16))
    {
      sub_26C3DDD48(v40, v15, &qword_280497598, &unk_26C46E010);
      v67(v10, v15, v68);
      v42 = *v63;
      v43 = *(v63 + 1);
      v44 = *v69;
      v45 = sub_26C42C210(v10);
      v47 = v44[2];
      v48 = (v46 & 1) == 0;
      v25 = __OFADD__(v47, v48);
      v49 = v47 + v48;
      if (v25)
      {
        goto LABEL_23;
      }

      v50 = v46;
      if (v44[3] < v49)
      {
        sub_26C3DAC84(v49, 1);
        v45 = sub_26C42C210(v10);
        if ((v50 & 1) != (v51 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v50)
      {
        goto LABEL_9;
      }

      v52 = v68;
      v53 = *v69;
      *(*v69 + 8 * (v45 >> 6) + 64) |= 1 << v45;
      v54 = v45;
      v67((v53[6] + v62 * v45), v10, v52);
      v55 = (v53[7] + 16 * v54);
      *v55 = v42;
      v55[1] = v43;
      v56 = v53[2];
      v25 = __OFADD__(v56, 1);
      v57 = v56 + 1;
      if (v25)
      {
        goto LABEL_24;
      }

      ++v41;
      v53[2] = v57;
      v40 += v64;
      v39 = v66;
      if (v65 == v41)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_26C46C524();
  MEMORY[0x26D6A0C00](0xD00000000000001BLL, 0x800000026C475C50);
  sub_26C46C5B4();
  MEMORY[0x26D6A0C00](39, 0xE100000000000000);
  sub_26C46C5E4();
  __break(1u);
}

uint64_t sub_26C410FC8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return sub_26C46C4B4();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_26C411048(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v7 = result;
    v8 = *(a5 + 48);
    v9 = sub_26C46BB54();
    (*(*(v9 - 8) + 16))(v7, v8 + *(*(v9 - 8) + 72) * a2, v9);
    v10 = *(*(a5 + 56) + 16 * a2);

    return v10;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_26C41111C(_DWORD *a1, _DWORD *a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for PBUUID(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v50 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v58 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v50 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v50 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v50 - v20;
  v22 = sub_26C46BB54();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v25 = MEMORY[0x28223BE20](v24);
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  v53 = a2;
  v54 = v28;
  v56 = v25;
  v57 = &v50 - v26;
  v55 = v27;
  v51 = v8;
  v52 = type metadata accessor for LamportTimestamp(0);
  v50 = *(v52 + 24);
  sub_26C3DDD48(a1 + v50, v21, &qword_280497458, &unk_26C46D3F0);
  v30 = *(v5 + 48);
  v31 = v30(v21, 1, v4);
  sub_26C3DE270(v21, &qword_280497458, &unk_26C46D3F0);
  if (v31 == 1)
  {
    v32 = v30;
    v33 = v53;
    if (qword_280497190 != -1)
    {
      swift_once();
    }

    v34 = v56;
    v35 = __swift_project_value_buffer(v56, qword_2804985C0);
    (*(v55 + 16))(v57, v35, v34);
  }

  else
  {
    sub_26C3DDD48(a1 + v50, v19, &qword_280497458, &unk_26C46D3F0);
    if (v30(v19, 1, v4) == 1)
    {
      *v10 = 0;
      v10[1] = 0;
      sub_26C46BD14();
      v36 = v4;
      v32 = v30;
      v37 = v30(v19, 1, v4);
      v33 = v53;
      if (v37 != 1)
      {
        sub_26C3DE270(v19, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v36 = v4;
      v32 = v30;
      sub_26C4117F8(v19, v10, type metadata accessor for PBUUID);
      v33 = v53;
    }

    sub_26C40F3CC();
    sub_26C4118B4(v10, type metadata accessor for PBUUID);
    v4 = v36;
  }

  v38 = *(v52 + 24);
  sub_26C3DDD48(v33 + v38, v16, &qword_280497458, &unk_26C46D3F0);
  v39 = v32(v16, 1, v4);
  sub_26C3DE270(v16, &qword_280497458, &unk_26C46D3F0);
  if (v39 == 1)
  {
    if (qword_280497190 != -1)
    {
      swift_once();
    }

    v40 = v56;
    v41 = __swift_project_value_buffer(v56, qword_2804985C0);
    v43 = v54;
    v42 = v55;
    (*(v55 + 16))(v54, v41, v40);
  }

  else
  {
    v44 = v58;
    sub_26C3DDD48(v33 + v38, v58, &qword_280497458, &unk_26C46D3F0);
    if (v32(v44, 1, v4) == 1)
    {
      v45 = v51;
      *v51 = 0;
      v45[1] = 0;
      sub_26C46BD14();
      v46 = v32(v44, 1, v4);
      v42 = v55;
      v40 = v56;
      v43 = v54;
      if (v46 != 1)
      {
        sub_26C3DE270(v44, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v45 = v51;
      sub_26C4117F8(v44, v51, type metadata accessor for PBUUID);
      v42 = v55;
      v40 = v56;
      v43 = v54;
    }

    sub_26C40F3CC();
    sub_26C4118B4(v45, type metadata accessor for PBUUID);
  }

  v47 = v57;
  v48 = memcmp(v57, v43, v23);
  v49 = *(v42 + 8);
  v49(v43, v40);
  v49(v47, v40);
  return v48 >> 31;
}

uint64_t sub_26C411790(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C4117F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C411860(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_26C4118B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26C411914()
{
  result = qword_280497AB0;
  if (!qword_280497AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497AB0);
  }

  return result;
}

unint64_t sub_26C41197C()
{
  result = qword_280497AB8;
  if (!qword_280497AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497AB8);
  }

  return result;
}

uint64_t sub_26C4119D0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_26C411A3C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = result;
  v4 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_38:
      __break(1u);
      return result;
    }

    v5 = HIDWORD(a2) - a2;
  }

LABEL_11:
  v8 = ceilf(v5 / result);
  if ((LODWORD(v8) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v8 <= -9.2234e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v8 >= 9.2234e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v9 = v8;
  if (v8 < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v9)
  {
    v19 = v5;
    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v10 * v3;
      if ((v10 * v3) >> 64 != (v10 * v3) >> 63)
      {
        break;
      }

      v12 = v3;
      if (v9 == 1)
      {
        v12 = v19 - result;
        if (__OFSUB__(v19, result))
        {
          goto LABEL_33;
        }
      }

      if (__OFADD__(result, v12))
      {
        goto LABEL_31;
      }

      if (result + v12 < result)
      {
        goto LABEL_32;
      }

      v13 = sub_26C46BAC4();
      v15 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_26C42BA84(0, *(v11 + 2) + 1, 1, v11);
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v11 = sub_26C42BA84((v16 > 1), v17 + 1, 1, v11);
      }

      *(v11 + 2) = v17 + 1;
      v18 = &v11[16 * v17];
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
      ++v10;
      if (!--v9)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26C411C28(void (*a1)(_BYTE *))
{
  v3 = type metadata accessor for SyncedModelOwnerState(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState;
  swift_beginAccess();
  sub_26C412BBC(v1 + v9, v8);
  v10 = sub_26C46BCD4();
  v11 = *(*(v10 - 8) + 56);
  v11(v6, 2, 2, v10);
  v12 = _s12SyncedModels0A15ModelOwnerStateO2eeoiySbAC_ACtFZ_0(v8, v6);
  sub_26C3DD6A8(v6);
  sub_26C3DD6A8(v8);
  if (v12)
  {
    v21[0] = 0;
    return (a1)(v21);
  }

  v13 = *(v1 + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_shouldReceiveOwnership);
  if (!v13)
  {
    v21[0] = 1;
    return (a1)(v21);
  }

  v19 = v1;
  v20 = a1;
  v14 = *(v1 + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_shouldReceiveOwnership + 8);

  if (v13(v15))
  {
    v11(v8, 2, 2, v10);
    v16 = v19;
    sub_26C412BBC(v19 + v9, v6);
    swift_beginAccess();
    sub_26C3DD644(v8, v16 + v9);
    swift_endAccess();
    sub_26C412324(v6);
    sub_26C3DD6A8(v6);
    sub_26C3DD6A8(v8);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v21[0] = v17;
  v20(v21);
  return sub_26C3DD730(v13, v14);
}

uint64_t sub_26C411E5C()
{
  v1 = type metadata accessor for SyncedModelOwnerState(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v12[-v5];
  v7 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState;
  swift_beginAccess();
  sub_26C412BBC(v0 + v7, v6);
  v8 = sub_26C46BCD4();
  v9 = *(*(v8 - 8) + 56);
  v9(v4, 2, 2, v8);
  v10 = _s12SyncedModels0A15ModelOwnerStateO2eeoiySbAC_ACtFZ_0(v6, v4);
  sub_26C3DD6A8(v4);
  result = sub_26C3DD6A8(v6);
  if (v10)
  {
    v9(v6, 1, 2, v8);
    sub_26C412BBC(v0 + v7, v4);
    swift_beginAccess();
    sub_26C3DD644(v6, v0 + v7);
    swift_endAccess();
    sub_26C412324(v4);
    sub_26C3DD6A8(v4);
    return sub_26C3DD6A8(v6);
  }

  return result;
}

uint64_t sub_26C411FF4()
{
  v1 = type metadata accessor for SyncedModelOwnerState(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - v5;
  v7 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState;
  swift_beginAccess();
  sub_26C412BBC(v0 + v7, v6);
  v8 = sub_26C46BCD4();
  v9 = *(*(v8 - 8) + 56);
  v9(v4, 2, 2, v8);
  v10 = _s12SyncedModels0A15ModelOwnerStateO2eeoiySbAC_ACtFZ_0(v6, v4);
  sub_26C3DD6A8(v4);
  sub_26C3DD6A8(v6);
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    sub_26C412BBC(v0 + v7, v6);
    v9(v4, 1, 2, v8);
    v11 = _s12SyncedModels0A15ModelOwnerStateO2eeoiySbAC_ACtFZ_0(v6, v4);
    sub_26C3DD6A8(v4);
    sub_26C3DD6A8(v6);
  }

  return v11 & 1;
}

uint64_t sub_26C412178@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SyncedModelOwnerState(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-v7];
  v9 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState;
  swift_beginAccess();
  sub_26C412BBC(v1 + v9, v8);
  sub_26C412C20(v8, v6);
  v10 = sub_26C46BCD4();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v6, 2, v10);
  if (v12)
  {
    if (v12 == 1)
    {
      return (*(v11 + 56))(a1, 1, 1, v10);
    }

    else
    {
      v14 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_localParticipant;
      swift_beginAccess();
      return sub_26C412C84(v1 + v14, a1);
    }
  }

  else
  {
    (*(v11 + 32))(a1, v6, v10);
    return (*(v11 + 56))(a1, 0, 1, v10);
  }
}

uint64_t sub_26C412324(uint64_t a1)
{
  v3 = type metadata accessor for SyncedModelOwnerState(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v30 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v18 = &v30 - v17;
  v19 = *(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_ownershipChangedHandler);
  if (v19)
  {
    v31 = *(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_ownershipChangedHandler + 8);
    v32 = v19;
    sub_26C412BBC(a1, v11);
    v20 = sub_26C46BCD4();
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    v23 = v22(v11, 2, v20);
    if (v23)
    {
      if (v23 == 1)
      {
        (*(v21 + 56))(v18, 1, 1, v20);
      }

      else
      {
        v24 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_localParticipant;
        swift_beginAccess();
        sub_26C412C84(v1 + v24, v18);
      }
    }

    else
    {
      (*(v21 + 32))(v18, v11, v20);
      (*(v21 + 56))(v18, 0, 1, v20);
    }

    v25 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState;
    swift_beginAccess();
    sub_26C412BBC(v1 + v25, v9);
    sub_26C412C20(v9, v6);
    v26 = v22(v6, 2, v20);
    if (v26)
    {
      if (v26 == 1)
      {
        (*(v21 + 56))(v15, 1, 1, v20);
      }

      else
      {
        v27 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_localParticipant;
        swift_beginAccess();
        sub_26C412C84(v1 + v27, v15);
      }
    }

    else
    {
      (*(v21 + 32))(v15, v6, v20);
      (*(v21 + 56))(v15, 0, 1, v20);
    }

    v28 = v31;
    v29 = v32;

    v29(v18, v15);
    sub_26C3DD730(v29, v28);
    sub_26C412B54(v15);
    return sub_26C412B54(v18);
  }

  return result;
}

uint64_t sub_26C41267C(uint64_t a1, void (*a2)(_BYTE *), uint64_t a3)
{
  v21 = a3;
  v22 = a1;
  v5 = type metadata accessor for SyncedModelOwnerState(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState;
  swift_beginAccess();
  sub_26C412BBC(v3 + v11, v10);
  v12 = sub_26C46BCD4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v8, 2, 2, v12);
  v15 = _s12SyncedModels0A15ModelOwnerStateO2eeoiySbAC_ACtFZ_0(v10, v8);
  sub_26C3DD6A8(v8);
  sub_26C3DD6A8(v10);
  if (v15)
  {
    v16 = *(v3 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestHandler);
    if (v16)
    {
      v19 = v3;
      v20 = a2;
      v17 = *(v3 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestHandler + 8);

      if ((v16(v22) & 1) == 0)
      {
        v23[0] = 1;
        v20(v23);
        return sub_26C3DD730(v16, v17);
      }

      sub_26C3DD730(v16, v17);
      v3 = v19;
      a2 = v20;
    }
  }

  (*(v13 + 16))(v10, v22, v12);
  v14(v10, 0, 2, v12);
  sub_26C412BBC(v3 + v11, v8);
  swift_beginAccess();
  sub_26C3DD644(v10, v3 + v11);
  swift_endAccess();
  sub_26C412324(v8);
  sub_26C3DD6A8(v8);
  sub_26C3DD6A8(v10);
  v23[0] = 0;
  return (a2)(v23);
}

uint64_t sub_26C4128DC()
{
  sub_26C3DD6A8(v0 + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState);
  sub_26C412B54(v0 + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_localParticipant);
  v1 = *(v0 + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_shouldReceiveOwnership);
  v2 = *(v0 + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_shouldReceiveOwnership + 8);

  return sub_26C3DD730(v1, v2);
}

uint64_t sub_26C412930()
{
  v0 = sub_26C413B98();
  v1 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState;

  sub_26C3DD6A8(v2 + v1);
  sub_26C412B54(v0 + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_localParticipant);
  sub_26C3DD730(*(v0 + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_shouldReceiveOwnership), *(v0 + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_shouldReceiveOwnership + 8));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TestSyncedModelController(uint64_t a1)
{
  result = qword_280497AC0;
  if (!qword_280497AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26C412A28(uint64_t a1)
{
  type metadata accessor for SyncedModelOwnerState(319);
  if (v1 <= 0x3F)
  {
    sub_26C412AFC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_26C412AFC(uint64_t a1)
{
  if (!qword_280497AD0)
  {
    sub_26C46BCD4();
    v1 = sub_26C46C474();
    if (!v2)
    {
      atomic_store(v1, &qword_280497AD0);
    }
  }
}

uint64_t sub_26C412B54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26C412BBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncedModelOwnerState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C412C20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncedModelOwnerState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C412C84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C412CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TestSyncedModelController(0);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState;
  v7 = sub_26C46BCD4();
  v8 = *(*(v7 - 8) + 56);
  v8(v5 + v6, 1, 2, v7);
  v8(v5 + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_localParticipant, 1, 1, v7);
  v9 = (v5 + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_shouldReceiveOwnership);
  *v9 = 0;
  v9[1] = 0;

  return sub_26C43076C(a1, v5);
}

uint64_t sub_26C412DEC()
{
  sub_26C46BBB4();
  swift_allocObject();
  result = sub_26C46BBA4();
  qword_280497AD8 = result;
  return result;
}

uint64_t sub_26C412E60(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v14 = a3;
  v13 = a2;
  v15 = sub_26C46C874();
  v4 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280497178 != -1)
  {
    swift_once();
  }

  sub_26C46BB84();

  *(&v23 + 1) = swift_getObjectType();
  *&v22 = a1;
  swift_unknownObjectRetain();
  sub_26C46C854();
  sub_26C46C864();
  sub_26C46C5A4();

  sub_26C46C644();
  if (!v24)
  {
LABEL_6:

    v7 = sub_26C4134D0(a1, v13);
LABEL_7:
    v8 = v7;
    goto LABEL_8;
  }

  while (1)
  {
    v20 = v22;
    sub_26C413118(&v23, v21);
    v17 = v20;
    v18 = v21[0];
    v19 = v21[1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497AE0, "|8");
    if (swift_dynamicCast())
    {
      break;
    }

    sub_26C46C644();
    if (!v24)
    {
      goto LABEL_6;
    }
  }

  v8 = (*(*v16 + 144))(v10);

  if (!v8)
  {
    v7 = v13(v11);
    goto LABEL_7;
  }

LABEL_8:
  (*(v4 + 8))(v6, v15);

  sub_26C46BB94();

  return v8;
}

_OWORD *sub_26C413118(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26C413128()
{
  sub_26C46BBB4();
  swift_allocObject();
  result = sub_26C46BBA4();
  qword_280497AE8 = result;
  return result;
}

void *sub_26C413168()
{
  result = sub_26C3E9790(MEMORY[0x277D84F90]);
  off_280497AF0 = result;
  return result;
}

uint64_t sub_26C4131B4()
{
  if (qword_280497188 != -1)
  {
LABEL_26:
    swift_once();
  }

  swift_beginAccess();
  v0 = off_280497AF0;
  v1 = off_280497AF0 + 64;
  v2 = 1 << *(off_280497AF0 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(off_280497AF0 + 8);
  v5 = (v2 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v6 = 0;
  v25 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = v6;
    if (!v4)
    {
      break;
    }

LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = (v6 << 9) | (8 * v8);
    v10 = *(v0[6] + v9);
    sub_26C3DDFB4(v0[7] + v9, &v28);
    v27 = v10;
    sub_26C4136A4(&v27, &v29);
    Strong = swift_weakLoadStrong();
    sub_26C413714(v30);
    if (Strong)
    {

      sub_26C3DE270(&v27, &qword_280497AF8, &qword_26C46E228);
    }

    else
    {
      sub_26C413744(&v27, &v29);
      v24 = v29;
      sub_26C413714(v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_26C42BB90(0, *(v25 + 2) + 1, 1, v25);
      }

      v13 = *(v25 + 2);
      v12 = *(v25 + 3);
      if (v13 >= v12 >> 1)
      {
        v25 = sub_26C42BB90((v12 > 1), v13 + 1, 1, v25);
      }

      *(v25 + 2) = v13 + 1;
      *&v25[8 * v13 + 32] = v24;
    }
  }

  while (1)
  {
    v6 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v6 >= v5)
    {
      break;
    }

    v4 = *&v1[8 * v6];
    ++v7;
    if (v4)
    {
      goto LABEL_9;
    }
  }

  v14 = *(v25 + 2);
  if (v14)
  {
    v15 = (v25 + 32);
    do
    {
      v16 = *v15;
      swift_beginAccess();
      v17 = sub_26C42C320(v16);
      v19 = v18;
      if (v18)
      {
        v20 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = off_280497AF0;
        v26 = off_280497AF0;
        off_280497AF0 = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_26C42E6FC();
          v22 = v26;
        }

        sub_26C3DDEFC(v22[7] + 8 * v20, &v29);
        sub_26C42D300(v20, v22);
        off_280497AF0 = v22;
      }

      else
      {
        v29 = 0;
      }

      v30[0] = (v19 & 1) == 0;
      swift_endAccess();
      sub_26C3DE270(&v29, &qword_280497368, &qword_26C46E220);
      ++v15;
      --v14;
    }

    while (v14);
  }
}

uint64_t sub_26C4134D0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_280497180 != -1)
  {
    swift_once();
  }

  sub_26C46BB84();

  sub_26C4131B4();
  if (qword_280497188 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_280497AF0;
  if (!*(off_280497AF0 + 2) || (v5 = sub_26C42C320(a1), (v6 & 1) == 0))
  {
    v10 = 0;
    v11 = 1;
    sub_26C3DE270(&v10, &qword_280497368, &qword_26C46E220);
    v8 = swift_endAccess();
LABEL_10:
    Strong = a2(v8);
    swift_weakInit();
    v11 = 0;
    swift_beginAccess();
    sub_26C3D8AA4(&v10, a1);
    swift_endAccess();
    goto LABEL_11;
  }

  sub_26C3DDFB4(v4[7] + 8 * v5, &v10);
  v11 = 0;
  Strong = swift_weakLoadStrong();
  sub_26C3DE270(&v10, &qword_280497368, &qword_26C46E220);
  v8 = swift_endAccess();
  if (!Strong)
  {
    goto LABEL_10;
  }

LABEL_11:

  sub_26C46BB94();

  return Strong;
}

uint64_t sub_26C4136A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497AF8, &qword_26C46E228);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C413744(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497AF8, &qword_26C46E228);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C4137B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C4137D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_26C41385C(uint64_t a1)
{
  v3 = type metadata accessor for ModelData.PropertyDataMap(0);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v28 = v1;
  v38 = MEMORY[0x277D84F90];
  sub_26C42FB34(0, v6, 0);
  v7 = v38;
  v8 = a1 + 64;
  result = sub_26C46C494();
  v10 = result;
  v11 = 0;
  v37 = *(a1 + 36);
  v29 = a1 + 72;
  v32 = xmmword_26C46D3C0;
  v30 = v6;
  v31 = a1;
  v33 = a1 + 64;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_22;
    }

    if (v37 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v36 = v11;
    v14 = v7;
    v15 = *(*(a1 + 48) + 4 * v10);
    v16 = (*(a1 + 56) + 16 * v10);
    v17 = *v16;
    v18 = v16[1];
    *(v5 + 8) = v32;
    sub_26C3DDDB0(v17, v18);
    sub_26C46BD14();
    *v5 = v15;
    v7 = v14;
    sub_26C3DDEA8(*(v5 + 1), *(v5 + 2));
    *(v5 + 1) = v17;
    *(v5 + 2) = v18;
    v38 = v14;
    v20 = *(v14 + 16);
    v19 = *(v14 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_26C42FB34((v19 > 1), v20 + 1, 1);
      v7 = v38;
    }

    *(v7 + 16) = v20 + 1;
    result = sub_26C42B9BC(v5, v7 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v20, type metadata accessor for ModelData.PropertyDataMap);
    a1 = v31;
    v12 = 1 << *(v31 + 32);
    v8 = v33;
    if (v10 >= v12)
    {
      goto LABEL_24;
    }

    v21 = *(v33 + 8 * v13);
    if ((v21 & (1 << v10)) == 0)
    {
      goto LABEL_25;
    }

    if (v37 != *(v31 + 36))
    {
      goto LABEL_26;
    }

    v22 = v21 & (-2 << (v10 & 0x3F));
    if (v22)
    {
      v12 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v13 << 6;
      v24 = v13 + 1;
      v25 = (v29 + 8 * v13);
      while (v24 < (v12 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_26C411860(v10, v37, 0);
          v12 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_26C411860(v10, v37, 0);
    }

LABEL_4:
    v11 = v36 + 1;
    v10 = v12;
    if (v36 + 1 == v30)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_26C413B98()
{
  v1 = v0;
  v2 = sub_26C46C0A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C46C0D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + 40);
    v24 = v3;
    v22 = v11;

    v12 = swift_allocObject();
    v23 = v7;
    v13 = v12;
    swift_weakInit();
    aBlock[4] = sub_26C430F6C;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26C3DF384;
    aBlock[3] = &block_descriptor_106;
    v14 = _Block_copy(aBlock);

    sub_26C46C0C4();
    v25 = MEMORY[0x277D84F90];
    sub_26C431280(&qword_2804973F8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497400, &qword_26C46D290);
    v21 = v6;
    sub_26C3FBC1C(&qword_280497408, &qword_280497400, &qword_26C46D290, MEMORY[0x277D83970]);
    sub_26C46C484();
    v15 = v22;
    MEMORY[0x26D6A0E60](0, v9, v5, v14);
    _Block_release(v14);

    (*(v24 + 8))(v5, v2);
    (*(v23 + 8))(v9, v21);
  }

  swift_weakDestroy();
  v16 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
  v17 = sub_26C46BB54();
  v18 = *(*(v17 - 8) + 8);
  v18(v1 + v16, v17);

  sub_26C3DE270(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__transaction, &qword_280497B90, &qword_26C46E548);

  v18(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v17);

  sub_26C3DE270(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__authorityParticipant, &qword_280497268, &qword_26C46CFE0);
  sub_26C3DE270(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID, &qword_280497430, &unk_26C46D3D0);
  sub_26C3DD730(*(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestHandler), *(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestHandler + 8));

  sub_26C3DE270(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__pendingOwnershipRequest, &qword_280497B80, &unk_26C46E518);

  sub_26C3DD730(*(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_ownershipChangedHandler), *(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_ownershipChangedHandler + 8));

  return v1;
}

uint64_t sub_26C41409C()
{
  v1 = v0;
  v2 = sub_26C46BB54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  v7 = *(v6 - 8);
  v78 = v6;
  v79 = v7;
  MEMORY[0x28223BE20](v6);
  v73 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  MEMORY[0x28223BE20](v9 - 8);
  v74 = v69 - v10;
  v11 = sub_26C46BCF4();
  v76 = *(v11 - 8);
  v77 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for SyncMessage(0);
  MEMORY[0x28223BE20](v75);
  v15 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B90, &qword_26C46E548);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v69 - v17;
  v19 = type metadata accessor for SyncTransactionMessage(0);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v81 = (v69 - v24);
  result = swift_weakLoadStrong();
  if (result)
  {
    v80 = result;
    v70 = v5;
    v71 = v3;
    v72 = v2;
    v26 = *(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_transactionLock);
    sub_26C46BB84();
    v27 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__transaction;
    swift_beginAccess();
    sub_26C3DDD48(v1 + v27, v18, &qword_280497B90, &qword_26C46E548);
    v28 = *(v20 + 48);
    if (v28(v18, 1, v19) == 1)
    {
      sub_26C3DE270(v18, &qword_280497B90, &qword_26C46E548);
      sub_26C46BB94();
    }

    v69[1] = v26;
    sub_26C42B9BC(v18, v81, type metadata accessor for SyncTransactionMessage);
    v29 = sub_26C414038(v83);
    v31 = v30;
    if (!v28(v30, 1, v19))
    {
      v32 = (v31 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = *v32;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_26C430A54(0, *(v34 + 16), &qword_280497BC8, &qword_26C46E5B0, type metadata accessor for PropertyChangedMessage, type metadata accessor for PropertyChangedMessage);
      }

      else
      {
        *v32 = sub_26C42C014(0, *(v34 + 24) >> 1, &qword_280497BC8, &qword_26C46E5B0, type metadata accessor for PropertyChangedMessage);
      }
    }

    (v29)(v83, 0);
    v35 = sub_26C414038(v83);
    v37 = v36;
    if (!v28(v36, 1, v19))
    {
      v38 = (v37 + 32);
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v40 = *v38;
      if (v39)
      {
        sub_26C430A54(0, *(v40 + 16), &qword_280497BD0, &qword_26C46E5B8, type metadata accessor for DictionaryChangedMessage, type metadata accessor for DictionaryChangedMessage);
      }

      else
      {
        *v38 = sub_26C42C014(0, *(v40 + 24) >> 1, &qword_280497BD0, &qword_26C46E5B8, type metadata accessor for DictionaryChangedMessage);
      }
    }

    (v35)(v83, 0);
    v41 = sub_26C414038(v83);
    v43 = v42;
    if (v28(v42, 1, v19))
    {
      (v41)(v83, 0);
      v44 = v78;
    }

    else
    {
      v45 = (v43 + 24);
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v47 = *v45;
      v44 = v78;
      if (v46)
      {
        sub_26C430A54(0, *(v47 + 16), &qword_280497BD8, &qword_26C46E5C0, type metadata accessor for SetChangedMessage, type metadata accessor for SetChangedMessage);
      }

      else
      {
        *v45 = sub_26C42C014(0, *(v47 + 24) >> 1, &qword_280497BD8, &qword_26C46E5C0, type metadata accessor for SetChangedMessage);
      }

      (v41)(v83, 0);
    }

    sub_26C46BB94();
    v48 = v81;
    if (*(v81[2] + 16) || *(v81[4] + 16) || *(v81[3] + 16))
    {
      v49 = *(v79 + 56);
      v49(v15, 1, 1, v44);
      sub_26C46BD14();
      sub_26C42C130(v48, v23, type metadata accessor for SyncTransactionMessage);
      sub_26C3DE270(v15, &qword_280497650, &unk_26C46D930);
      sub_26C42B9BC(v23, v15, type metadata accessor for SyncTransactionMessage);
      swift_storeEnumTagMultiPayload();
      v49(v15, 0, 1, v44);
      v51 = v76;
      v50 = v77;
      (*(v76 + 104))(v13, *MEMORY[0x277CCB260], v77);
      sub_26C3F5D78(v15, v13);
      (*(v51 + 8))(v13, v50);
      if (qword_280497148 != -1)
      {
        swift_once();
      }

      v52 = sub_26C46BFA4();
      __swift_project_value_buffer(v52, qword_280498530);

      v53 = sub_26C46BF84();
      v54 = sub_26C46C3D4();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v82 = v56;
        *v55 = 16777730;
        swift_beginAccess();
        v57 = v74;
        sub_26C3DDD48(v15, v74, &qword_280497650, &unk_26C46D930);
        result = (*(v79 + 48))(v57, 1, v44);
        if (result == 1)
        {
          __break(1u);
          return result;
        }

        v58 = v73;
        sub_26C42C130(v57, v73, type metadata accessor for SyncMessage.OneOf_Contents);
        v59 = v57;
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_26C42BA24(v58, type metadata accessor for SyncMessage.OneOf_Contents);
        sub_26C42BA24(v59, type metadata accessor for SyncMessage.OneOf_Contents);
        *(v55 + 4) = EnumCaseMultiPayload;
        *(v55 + 5) = 2080;
        v61 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
        swift_beginAccess();
        v62 = v71;
        v63 = v70;
        v64 = v72;
        (*(v71 + 16))(v70, v1 + v61, v72);
        v65 = sub_26C46BB04();
        v67 = v66;
        (*(v62 + 8))(v63, v64);
        v68 = sub_26C3E80A8(v65, v67, &v82);

        *(v55 + 7) = v68;
        _os_log_impl(&dword_26C3D6000, v53, v54, "SyncedModel: sent transaction of type:%hhu for model:%s", v55, 0xFu);
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x26D6A18D0](v56, -1, -1);
        MEMORY[0x26D6A18D0](v55, -1, -1);

        sub_26C42BA24(v15, type metadata accessor for SyncMessage);
        v48 = v81;
      }

      else
      {

        sub_26C42BA24(v15, type metadata accessor for SyncMessage);
      }
    }

    else
    {
    }

    return sub_26C42BA24(v48, type metadata accessor for SyncTransactionMessage);
  }

  return result;
}

uint64_t sub_26C414BC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v54 = a3;
  v57 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - v11;
  v13 = sub_26C46BCD4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26C46BB54();
  v55 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v56 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280497148 != -1)
  {
LABEL_20:
    swift_once();
  }

  v19 = sub_26C46BFA4();
  __swift_project_value_buffer(v19, qword_280498530);

  v20 = sub_26C46BF84();
  v21 = sub_26C46C404();

  v52 = v21;
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v51 = a4;
    v23 = v22;
    v48 = swift_slowAlloc();
    v61[0] = v48;
    *v23 = 136315138;
    v47 = v20;
    v24 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
    swift_beginAccess();
    v49 = a2;
    v25 = v55;
    v26 = v5 + v24;
    v27 = v56;
    (*(v55 + 16))(v56, v26, v17);
    sub_26C431280(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v28 = v14;
    v29 = v13;
    v30 = sub_26C46C704();
    v50 = v12;
    v32 = v31;
    v33 = v25;
    a2 = v49;
    (*(v33 + 8))(v27, v17);
    v34 = v30;
    v13 = v29;
    v14 = v28;
    v35 = sub_26C3E80A8(v34, v32, v61);
    v12 = v50;

    *(v23 + 4) = v35;
    v20 = v47;
    _os_log_impl(&dword_26C3D6000, v47, v52, "SyncedModel: Registering model:%s", v23, 0xCu);
    v36 = v48;
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x26D6A18D0](v36, -1, -1);
    a4 = v51;
    MEMORY[0x26D6A18D0](v23, -1, -1);
  }

  swift_weakAssign();
  v37 = v5 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type;
  *v37 = a2;
  *(v37 + 8) = v54 & 1;
  sub_26C46BB64();
  sub_26C3DDD48(a4, v12, &qword_280497268, &qword_26C46CFE0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_26C3DE270(v12, &qword_280497268, &qword_26C46CFE0);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_26C415270(v16);
    (*(v14 + 8))(v16, v13);
  }

  v38 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__properties;
  swift_beginAccess();
  v39 = *(v5 + v38);
  a4 = v39 + 64;
  v40 = 1 << *(v39 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v16 = v41 & *(v39 + 64);
  v12 = ((v40 + 63) >> 6);

  a2 = 0;
  while (v16)
  {
LABEL_16:
    sub_26C3DE190(*(v39 + 56) + ((a2 << 10) | (16 * __clz(__rbit64(v16)))), v58);
    sub_26C3DE0D8(v58, v59);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(v60 + 40))(*Strong);
    }

    v16 &= v16 - 1;
    sub_26C431210(v59);
  }

  while (1)
  {
    v42 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v42 >= v12)
    {
      break;
    }

    v16 = *(a4 + 8 * v42);
    ++a2;
    if (v16)
    {
      a2 = v42;
      goto LABEL_16;
    }
  }

  v44 = v56;
  (*(v55 + 16))(v56, v5 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v17);
  v45 = v53;
  (*(v14 + 16))(v53, v57 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v13);
  (*(v14 + 56))(v45, 0, 1, v13);
  swift_beginAccess();
  sub_26C3D8BB4(v45, v44);
  return swift_endAccess();
}

uint64_t sub_26C415270(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26C46BB54();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C46BCD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v44 - v11;
  v13 = *(v7 + 2);
  v13(&v44 - v11, a1, v6);
  (*(v7 + 7))(v12, 0, 1, v6);
  v14 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__authorityParticipant;
  swift_beginAccess();
  sub_26C3DDCE0(v12, v1 + v14, &qword_280497268, &qword_26C46CFE0);
  swift_endAccess();
  if (qword_280497148 != -1)
  {
LABEL_18:
    swift_once();
  }

  v15 = sub_26C46BFA4();
  __swift_project_value_buffer(v15, qword_280498530);
  v54 = a1;
  v13(v9, a1, v6);

  v16 = sub_26C46BF84();
  v17 = sub_26C46C404();

  v13 = v2;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v47 = v18;
    v50 = swift_slowAlloc();
    v58[0] = v50;
    *v18 = 136315394;
    v49 = v17;
    v19 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
    swift_beginAccess();
    v21 = v51;
    v20 = v52;
    v22 = v53;
    (*(v52 + 16))(v51, v13 + v19, v53);
    sub_26C431280(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v46 = v9;
    v23 = sub_26C46C704();
    v48 = v16;
    v45 = v13;
    v25 = v24;
    v26 = *(v20 + 8);
    v26(v21, v22);
    v27 = sub_26C3E80A8(v23, v25, v58);

    v29 = v46;
    v28 = v47;
    *(v47 + 1) = v27;
    *(v28 + 6) = 2080;
    sub_26C46BCC4();
    v30 = sub_26C46C704();
    v32 = v31;
    v26(v21, v22);
    v33 = v29;
    v13 = v45;
    (*(v7 + 1))(v33, v6);
    v34 = sub_26C3E80A8(v30, v32, v58);

    *(v28 + 14) = v34;
    v35 = v48;
    _os_log_impl(&dword_26C3D6000, v48, v49, "SyncedModel: Authority of model:%s set to %s", v28, 0x16u);
    v36 = v50;
    swift_arrayDestroy();
    MEMORY[0x26D6A18D0](v36, -1, -1);
    MEMORY[0x26D6A18D0](v28, -1, -1);
  }

  else
  {

    (*(v7 + 1))(v9, v6);
  }

  v37 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__properties;
  swift_beginAccess();
  v9 = *(v13 + v37);
  v7 = v9 + 64;
  v38 = 1 << v9[32];
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v2 = v39 & *(v9 + 8);
  v6 = (v38 + 63) >> 6;

  v40 = 0;
  a1 = v54;
  while (v2)
  {
LABEL_14:
    sub_26C3DE190(*(v9 + 7) + ((v40 << 10) | (16 * __clz(__rbit64(v2)))), v57);
    sub_26C3DE0D8(v57, v55);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(v56 + 56))(a1, *Strong);
    }

    v2 &= v2 - 1;
    sub_26C431210(v55);
  }

  while (1)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v41 >= v6)
    {
      break;
    }

    v2 = *&v7[8 * v41];
    ++v40;
    if (v2)
    {
      v40 = v41;
      goto LABEL_14;
    }
  }

  v57[0] = 2;

  sub_26C46C034();
}

void *sub_26C41588C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__properties;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    sub_26C3DE190(*(v3 + 56) + ((v9 << 10) | (16 * __clz(__rbit64(v6)))), v14);
    sub_26C3DE0D8(v14, v12);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(v13 + 48))(*Strong);
    }

    v6 &= v6 - 1;
    result = sub_26C431210(v12);
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      swift_weakAssign();
      return sub_26C46BB64();
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26C415A38(uint64_t a1, uint64_t a2)
{
  v97 = a2;
  v3 = type metadata accessor for SetChangedMessage(0);
  v92 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v99 = (&v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for DictionaryChangedMessage(0);
  v93 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  *&v100 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PropertyChangedMessage(0);
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7 - 8);
  v11 = (&v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = a1;
  v12 = *(a1 + 16);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__properties;
    v15 = v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    swift_beginAccess();
    v16 = *(v8 + 72);
    v17 = &qword_280497378;
    *(&v18 + 1) = 1;
    v96 = xmmword_26C46CFD0;
    v19 = &unk_26C46E560;
    *&v18 = 67109120;
    v95 = v18;
    do
    {
      sub_26C42C130(v15, v11, type metadata accessor for PropertyChangedMessage);
      v20 = *v11;
      v21 = *(v101 + v14);
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = sub_26C42C1C8(*v11);
        if (v24)
        {
          sub_26C3DE190(*(v21 + 56) + 16 * v23, v104);
          LOBYTE(v22) = *(&v104[0] + 1) != 1;
          LODWORD(v98) = v20;
          if (*&v104[0])
          {
            goto LABEL_13;
          }

          goto LABEL_11;
        }

        LOBYTE(v22) = 0;
      }

      v104[0] = v96;
      LODWORD(v98) = v20;
LABEL_11:
      if ((v22 & 1) == 0)
      {
        sub_26C3DE270(v104, v17, v19);
LABEL_15:
        if (qword_280497148 != -1)
        {
          swift_once();
        }

        v27 = sub_26C46BFA4();
        __swift_project_value_buffer(v27, qword_280498530);
        v28 = sub_26C46BF84();
        v29 = sub_26C46C3E4();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = v11;
          v31 = v19;
          v32 = v16;
          v33 = v17;
          v34 = v14;
          v35 = swift_slowAlloc();
          *v35 = v95;
          *(v35 + 4) = v98;
          _os_log_impl(&dword_26C3D6000, v28, v29, "Error: received property update for unknown property #:%u", v35, 8u);
          v36 = v35;
          v14 = v34;
          v17 = v33;
          v16 = v32;
          v19 = v31;
          v11 = v30;
          MEMORY[0x26D6A18D0](v36, -1, -1);
        }

        goto LABEL_4;
      }

LABEL_13:
      Strong = swift_weakLoadStrong();
      v26 = *(&v104[0] + 1);
      sub_26C3DE270(v104, v17, v19);
      if (!Strong)
      {
        goto LABEL_15;
      }

      (*(v26 + 8))(v11, v97, *Strong, v26);

LABEL_4:
      result = sub_26C42BA24(v11, type metadata accessor for PropertyChangedMessage);
      v15 += v16;
      --v13;
    }

    while (v13);
  }

  v37 = *(v94 + 32);
  v38 = *(v37 + 16);
  if (!v38)
  {
LABEL_38:
    v61 = *(v94 + 24);
    v62 = *(v61 + 16);
    if (!v62)
    {
      return result;
    }

    v63 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__properties;
    v64 = v92;
    v65 = v61 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
    swift_beginAccess();
    v66 = *(v64 + 72);
    v67 = &qword_280497378;
    *(&v68 + 1) = 1;
    v100 = xmmword_26C46CFD0;
    v69 = &unk_26C46E560;
    v70 = qword_280498530;
    *&v68 = 67109120;
    v98 = v68;
    while (1)
    {
      v71 = v99;
      sub_26C42C130(v65, v99, type metadata accessor for SetChangedMessage);
      v72 = *v71;
      v73 = *(v101 + v63);
      v74 = *(v73 + 16);
      if (v74)
      {
        v75 = sub_26C42C1C8(v72);
        if (v76)
        {
          sub_26C3DE190(*(v73 + 56) + 16 * v75, &v102);
          LOBYTE(v74) = *(&v102 + 1) != 1;
          if (v102)
          {
            goto LABEL_50;
          }

          goto LABEL_48;
        }

        LOBYTE(v74) = 0;
      }

      v102 = v100;
LABEL_48:
      if ((v74 & 1) == 0)
      {
        sub_26C3DE270(&v102, v67, v69);
LABEL_53:
        if (qword_280497148 != -1)
        {
          swift_once();
        }

        v79 = sub_26C46BFA4();
        __swift_project_value_buffer(v79, v70);
        v80 = sub_26C46BF84();
        v81 = sub_26C46C3E4();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = v72;
          v84 = v66;
          v85 = v63;
          v86 = v69;
          v87 = v67;
          v88 = v70;
          v89 = v82;
          *v82 = v98;
          *(v82 + 4) = v83;
          _os_log_impl(&dword_26C3D6000, v80, v81, "Error: received set update for unknown set #:%u", v82, 8u);
          v90 = v89;
          v70 = v88;
          v67 = v87;
          v69 = v86;
          v63 = v85;
          v66 = v84;
          MEMORY[0x26D6A18D0](v90, -1, -1);
        }

        goto LABEL_41;
      }

LABEL_50:
      v77 = swift_weakLoadStrong();
      sub_26C3DE270(&v102, v67, v69);
      if (!v77)
      {
        goto LABEL_53;
      }

      v78 = *v77;
      result = swift_conformsToProtocol2();
      if (!result)
      {
        goto LABEL_59;
      }

      (*(result + 16))(v99, v97, v78, result);

LABEL_41:
      result = sub_26C42BA24(v99, type metadata accessor for SetChangedMessage);
      v65 += v66;
      if (!--v62)
      {
        return result;
      }
    }
  }

  v39 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__properties;
  v40 = v93;
  v41 = v37 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
  swift_beginAccess();
  v42 = *(v40 + 72);
  v43 = &qword_280497378;
  *(&v44 + 1) = 1;
  v98 = xmmword_26C46CFD0;
  *&v44 = 67109120;
  v96 = v44;
  while (1)
  {
    v45 = v100;
    sub_26C42C130(v41, v100, type metadata accessor for DictionaryChangedMessage);
    v46 = *v45;
    v47 = *(v101 + v39);
    v48 = *(v47 + 16);
    if (v48)
    {
      v49 = sub_26C42C1C8(v46);
      if (v50)
      {
        sub_26C3DE190(*(v47 + 56) + 16 * v49, v103);
        LOBYTE(v48) = *(&v103[0] + 1) != 1;
        if (*&v103[0])
        {
          goto LABEL_31;
        }

        goto LABEL_29;
      }

      LOBYTE(v48) = 0;
    }

    v103[0] = v98;
LABEL_29:
    if ((v48 & 1) == 0)
    {
      sub_26C3DE270(v103, v43, &unk_26C46E560);
LABEL_34:
      if (qword_280497148 != -1)
      {
        swift_once();
      }

      v53 = sub_26C46BFA4();
      __swift_project_value_buffer(v53, qword_280498530);
      v54 = sub_26C46BF84();
      v55 = sub_26C46C3E4();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = v42;
        v57 = v39;
        v58 = v43;
        v59 = swift_slowAlloc();
        *v59 = v96;
        *(v59 + 4) = v46;
        _os_log_impl(&dword_26C3D6000, v54, v55, "Error: received dictionary update for unknown dictionary #:%u", v59, 8u);
        v60 = v59;
        v43 = v58;
        v39 = v57;
        v42 = v56;
        MEMORY[0x26D6A18D0](v60, -1, -1);
      }

      goto LABEL_22;
    }

LABEL_31:
    v51 = swift_weakLoadStrong();
    sub_26C3DE270(v103, v43, &unk_26C46E560);
    if (!v51)
    {
      goto LABEL_34;
    }

    v52 = *v51;
    result = swift_conformsToProtocol2();
    if (!result)
    {
      break;
    }

    (*(result + 16))(v100, v97, v52, result);

LABEL_22:
    result = sub_26C42BA24(v100, type metadata accessor for DictionaryChangedMessage);
    v41 += v42;
    if (!--v38)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_26C41643C(_DWORD *a1, uint64_t a2)
{
  v3 = v2;
  v71 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497AA0, &qword_26C46E020);
  v5 = MEMORY[0x28223BE20](v78);
  v77 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v76 = &v71 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v71 - v13;
  MEMORY[0x28223BE20](v12);
  v83 = &v71 - v15;
  *&v79 = sub_26C46BB54();
  v16 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280497148 != -1)
  {
LABEL_40:
    swift_once();
  }

  v19 = sub_26C46BFA4();
  v20 = __swift_project_value_buffer(v19, qword_280498530);

  v73 = v20;
  v21 = sub_26C46BF84();
  v22 = sub_26C46C404();

  v23 = os_log_type_enabled(v21, v22);
  v82 = v16;
  v72 = a1;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v85[0] = swift_slowAlloc();
    v25 = v85[0];
    *v24 = 136315138;
    LODWORD(v81) = v22;
    v26 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
    swift_beginAccess();
    v27 = v3 + v26;
    v28 = v79;
    (*(v82 + 16))(v18, v27, v79);
    sub_26C431280(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v29 = sub_26C46C704();
    v31 = v30;
    (*(v82 + 8))(v18, v28);
    v32 = sub_26C3E80A8(v29, v31, v85);

    *(v24 + 4) = v32;
    _os_log_impl(&dword_26C3D6000, v21, v81, "SyncedModel: Applying catchup for model: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v33 = v25;
    a1 = v72;
    MEMORY[0x26D6A18D0](v33, -1, -1);
    v34 = v24;
    v16 = v82;
    MEMORY[0x26D6A18D0](v34, -1, -1);
  }

  v35 = v83;
  sub_26C40F448(v83);
  v36 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
  swift_beginAccess();
  v18 = &qword_280497430;
  sub_26C3DDD48(v3 + v36, v14, &qword_280497430, &unk_26C46D3D0);
  swift_beginAccess();
  sub_26C3E9EB8(v35, v3 + v36);
  swift_endAccess();
  sub_26C3DDD48(v3 + v36, v11, &qword_280497430, &unk_26C46D3D0);
  sub_26C418F90(v14, v11);
  sub_26C3DE270(v11, &qword_280497430, &unk_26C46D3D0);
  sub_26C3DE270(v14, &qword_280497430, &unk_26C46D3D0);
  sub_26C3DE270(v35, &qword_280497430, &unk_26C46D3D0);
  *(v3 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter) = *a1;
  v37 = sub_26C410104();
  v38 = 0;
  v40 = v37 + 64;
  v39 = *(v37 + 64);
  *&v80 = v37;
  v41 = 1 << *(v37 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v11 = v42 & v39;
  a1 = ((v41 + 63) >> 6);
  v75 = v16 + 16;
  v74 = v16 + 32;
  v81 = v3;
  if ((v42 & v39) != 0)
  {
    while (1)
    {
      v43 = v38;
LABEL_12:
      v44 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v45 = v44 | (v43 << 6);
      v46 = v80;
      v47 = v82;
      v48 = v76;
      v49 = v79;
      (*(v82 + 16))(v76, *(v80 + 48) + *(v82 + 72) * v45, v79);
      v50 = (*(v46 + 56) + 16 * v45);
      v16 = v50[1];
      v83 = *v50;
      v18 = v77;
      v14 = &v77[*(v78 + 48)];
      (*(v47 + 32))(v77, v48, v49);
      *v14 = v83;
      *(v14 + 8) = v16;

      sub_26C3DE270(v18, &qword_280497AA0, &qword_26C46E020);
      v3 = v81;
      if (!v11)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v43 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v43 >= a1)
    {
      break;
    }

    v11 = *(v40 + 8 * v43);
    ++v38;
    if (v11)
    {
      v38 = v43;
      goto LABEL_12;
    }
  }

  v51 = sub_26C40FED4();
  v16 = v51 + 64;
  v52 = 1 << *(v51 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & *(v51 + 64);
  v82 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__properties;
  v83 = v51;
  swift_beginAccess();
  v18 = 0;
  v55 = (v52 + 63) >> 6;
  *(&v56 + 1) = 1;
  v80 = xmmword_26C46CFD0;
  *&v56 = 67109120;
  v79 = v56;
  while (v54)
  {
LABEL_25:
    v58 = __clz(__rbit64(v54)) | (v18 << 6);
    v14 = *(*(v83 + 48) + 4 * v58);
    v59 = *(v83 + 56) + 16 * v58;
    a1 = *v59;
    v11 = *(v59 + 8);
    v60 = *(v3 + v82);
    v61 = *(v60 + 16);
    if (v61)
    {
      v62 = sub_26C42C1C8(v14);
      if (v63)
      {
        sub_26C3DE190(*(v60 + 56) + 16 * v62, &v84);
        LOBYTE(v61) = *(&v84 + 1) != 1;
        if (v84)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }

      LOBYTE(v61) = 0;
    }

    v84 = v80;
LABEL_31:
    if ((v61 & 1) == 0)
    {
      sub_26C3DDDB0(a1, v11);
      sub_26C3DE270(&v84, &qword_280497378, &unk_26C46E560);
      goto LABEL_35;
    }

LABEL_33:
    Strong = swift_weakLoadStrong();
    v65 = *(&v84 + 1);
    sub_26C3DDDB0(a1, v11);
    sub_26C3DE270(&v84, &qword_280497378, &unk_26C46E560);
    if (Strong)
    {
      (*(v65 + 16))(a1, v11, v71, *Strong, v65);

      goto LABEL_19;
    }

LABEL_35:
    sub_26C3DDDB0(a1, v11);
    v66 = sub_26C46BF84();
    v67 = sub_26C46C3E4();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = v79;
      *(v68 + 4) = v14;
      sub_26C3DDEA8(a1, v11);
      _os_log_impl(&dword_26C3D6000, v66, v67, "SyncedModel: Handling catchup data: found unknown property ID %u", v68, 8u);
      v69 = v68;
      v3 = v81;
      MEMORY[0x26D6A18D0](v69, -1, -1);
    }

    else
    {
      sub_26C3DDEA8(a1, v11);
    }

LABEL_19:
    v54 &= v54 - 1;
    sub_26C3DDEA8(a1, v11);
  }

  while (1)
  {
    v57 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_39;
    }

    if (v57 >= v55)
    {
    }

    v54 = *(v16 + 8 * v57);
    ++v18;
    if (v54)
    {
      v18 = v57;
      goto LABEL_25;
    }
  }
}

uint64_t sub_26C416CE4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B98, &qword_26C46E558);
  v4 = MEMORY[0x28223BE20](v212);
  v211 = &v181 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v214 = &v181 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v210 = &v181 - v9;
  MEMORY[0x28223BE20](v8);
  v201 = &v181 - v10;
  v193 = type metadata accessor for ModelData.PropertyDataMap(0);
  v192 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v198 = &v181 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for PBUUID(0);
  v206 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v207 = (&v181 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v208 = (&v181 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v17 = &v181 - v16;
  v194 = &v181 - v16;
  v18 = sub_26C46BB54();
  v204 = *(v18 - 8);
  v19 = v204;
  v20 = MEMORY[0x28223BE20](v18);
  v200 = &v181 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  *&v199 = &v181 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v181 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v181 - v27;
  v209 = &v181 - v27;
  v29 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
  v197 = v2;
  swift_beginAccess();
  v30 = *(v19 + 16);
  v30(v28, v2 + v29, v18);
  v31 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
  swift_beginAccess();
  sub_26C3DDD48(v2 + v31, v17, &qword_280497430, &unk_26C46D3D0);
  LODWORD(v202) = *(v2 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter);
  v32 = MEMORY[0x277D84F90];
  *&v195 = sub_26C3E98B0(MEMORY[0x277D84F90]);
  *&v203 = sub_26C3E99BC(v32);
  *a1 = 0;
  *(a1 + 8) = v32;
  *(a1 + 16) = v32;
  v33 = type metadata accessor for ModelData(0);
  sub_26C46BD14();
  v34 = *(v33 + 32);
  v35 = *(v206 + 56);
  v36 = v213;
  v35(a1 + v34, 1, 1, v213);
  v35(a1 + *(v33 + 36), 1, 1, v36);
  v30(v26, v209, v18);
  v37 = v199;
  v206 = v19 + 16;
  v205 = v30;
  v30(v199, v26, v18);
  v38 = v207;
  sub_26C40F280(v37, v207);
  v40 = (v204 + 8);
  v39 = *(v204 + 8);
  (v39)(v26, v18);
  sub_26C3DE270(a1 + v34, &qword_280497458, &unk_26C46D3F0);
  sub_26C42B9BC(v38, a1 + v34, type metadata accessor for PBUUID);
  v35(a1 + v34, 0, 1, v213);
  v41 = v194;
  v42 = v208;
  sub_26C3DDD48(v194, v208, &qword_280497430, &unk_26C46D3D0);
  sub_26C40D8D4(v42);
  *a1 = v202;
  v43 = sub_26C41385C(v195);
  v196 = 0;

  v187 = v43;
  *(a1 + 8) = v43;
  v213 = a1;
  sub_26C40DC0C(v203);
  sub_26C3DE270(v41, &qword_280497430, &unk_26C46D3D0);
  v44 = v209;
  v215 = v18;
  v209 = v40;
  v208 = v39;
  (v39)(v44, v18);
  v45 = v197;
  v46 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__properties;
  swift_beginAccess();
  v47 = *(v45 + v46);
  v48 = v47 + 64;
  v49 = 1 << *(v47 + 32);
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  else
  {
    v50 = -1;
  }

  v51 = v50 & *(v47 + 64);
  v52 = (v49 + 63) >> 6;

  v53 = 0;
  v203 = xmmword_26C46CFD0;
  *(&v54 + 1) = 0xC000000000000000;
  v195 = xmmword_26C46D3C0;
  *&v54 = 67109120;
  v199 = v54;
  v202 = v47;
  while (v51)
  {
LABEL_11:
    v56 = *(*(v47 + 48) + ((v53 << 8) | (4 * __clz(__rbit64(v51)))));
    v57 = *(v45 + v46);
    v58 = *(v57 + 16);
    LODWORD(v207) = v56;
    if (!v58)
    {
      goto LABEL_15;
    }

    v59 = sub_26C42C1C8(v56);
    if ((v60 & 1) == 0)
    {
      LOBYTE(v58) = 0;
LABEL_15:
      v61 = 0;
      v217 = v203;
      goto LABEL_16;
    }

    sub_26C3DE190(*(v57 + 56) + 16 * v59, &v217);
    v61 = v217 != 0;
    LOBYTE(v58) = *(&v217 + 1) != 1;
LABEL_16:
    v51 &= v51 - 1;
    if (!v61 && (v58 & 1) == 0)
    {
      sub_26C3DE270(&v217, &qword_280497378, &unk_26C46E560);
      goto LABEL_25;
    }

    Strong = swift_weakLoadStrong();
    v63 = *(&v217 + 1);
    sub_26C3DE270(&v217, &qword_280497378, &unk_26C46E560);
    if (Strong)
    {
      v64 = v196;
      v65 = (*(v63 + 24))(*Strong, v63);
      if (v64)
      {
        if (qword_280497148 != -1)
        {
          swift_once();
        }

        v196 = 0;
        v67 = sub_26C46BFA4();
        __swift_project_value_buffer(v67, qword_280498530);
        v68 = sub_26C46BF84();
        v69 = sub_26C46C3E4();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v189 = Strong;
          v71 = v45;
          v72 = v64;
          v73 = v46;
          v74 = v70;
          *v70 = v199;
          *(v70 + 4) = v207;
          _os_log_impl(&dword_26C3D6000, v68, v69, "Failed to encode property data for property ID %u while creating catchup data", v70, 8u);
          v75 = v74;
          v46 = v73;
          MEMORY[0x26D6A18D0](v75, -1, -1);
          v76 = v72;
          v45 = v71;
        }

        else
        {
        }

        v47 = v202;
      }

      else
      {
        v181 = 0;
        v186 = v46;
        v182 = v65;
        v183 = v66;
        sub_26C3DDDB0(v65, v66);
        v82 = sub_26C40FED4();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v217 = v82;
        v84 = sub_26C42C1C8(v207);
        v86 = *(v82 + 16);
        v87 = (v85 & 1) == 0;
        v88 = __OFADD__(v86, v87);
        v89 = v86 + v87;
        v90 = v198;
        if (v88)
        {
          goto LABEL_93;
        }

        v91 = v85;
        if (*(v82 + 24) >= v89)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v124 = v84;
            sub_26C42EE4C();
            v84 = v124;
            v90 = v198;
          }
        }

        else
        {
          sub_26C3DAA08(v89, isUniquelyReferenced_nonNull_native);
          v84 = sub_26C42C1C8(v207);
          if ((v91 & 1) != (v92 & 1))
          {
            goto LABEL_96;
          }
        }

        v46 = v186;
        v93 = v217;
        if (v91)
        {
          v94 = (*(v217 + 56) + 16 * v84);
          v95 = *v94;
          v96 = v94[1];
          v97 = v183;
          *v94 = v182;
          v94[1] = v97;
          sub_26C3DDEA8(v95, v96);
          v98 = v93[2];
        }

        else
        {
          *(v217 + 8 * (v84 >> 6) + 64) |= 1 << v84;
          *(v93[6] + 4 * v84) = v207;
          v99 = (v93[7] + 16 * v84);
          v100 = v183;
          *v99 = v182;
          v99[1] = v100;
          v101 = v93[2];
          v98 = v101 + 1;
          if (__OFADD__(v101, 1))
          {
            goto LABEL_94;
          }

          v93[2] = v98;
        }

        if (v98)
        {
          v189 = Strong;
          *&v217 = MEMORY[0x277D84F90];
          v188 = v93;
          sub_26C42FB34(0, v98, 0);
          v102 = v188;
          v207 = v217;
          v196 = v188 + 8;
          v103 = sub_26C46C494();
          v104 = 0;
          v184 = v102 + 9;
          v185 = v98;
          while ((v103 & 0x8000000000000000) == 0 && v103 < 1 << *(v102 + 32))
          {
            if ((*(v196 + (v103 >> 6)) & (1 << v103)) == 0)
            {
              goto LABEL_89;
            }

            v194 = v103 >> 6;
            v190 = v104;
            v106 = v102[7];
            v107 = *(v102[6] + 4 * v103);
            v191 = *(v102 + 9);
            v108 = (v106 + 16 * v103);
            v109 = *v108;
            v110 = v108[1];
            *(v90 + 8) = v195;
            sub_26C3DDDB0(v109, v110);
            v90 = v198;
            sub_26C46BD14();
            *v90 = v107;
            sub_26C3DDEA8(*(v90 + 8), *(v90 + 16));
            *(v90 + 8) = v109;
            *(v90 + 16) = v110;
            v111 = v207;
            *&v217 = v207;
            v113 = v207[2];
            v112 = v207[3];
            if (v113 >= v112 >> 1)
            {
              sub_26C42FB34((v112 > 1), v113 + 1, 1);
              v111 = v217;
            }

            v111[2] = v113 + 1;
            v114 = (*(v192 + 80) + 32) & ~*(v192 + 80);
            v207 = v111;
            sub_26C42B9BC(v90, v111 + v114 + *(v192 + 72) * v113, type metadata accessor for ModelData.PropertyDataMap);
            v102 = v188;
            v105 = 1 << *(v188 + 32);
            if (v103 >= v105)
            {
              goto LABEL_90;
            }

            v115 = *(v196 + v194);
            if ((v115 & (1 << v103)) == 0)
            {
              goto LABEL_91;
            }

            if (v191 != *(v188 + 9))
            {
              goto LABEL_92;
            }

            v116 = v115 & (-2 << (v103 & 0x3F));
            if (v116)
            {
              v105 = __clz(__rbit64(v116)) | v103 & 0x7FFFFFFFFFFFFFC0;
              v45 = v197;
              v46 = v186;
            }

            else
            {
              v117 = v194 << 6;
              v118 = v194 + 1;
              v119 = &v184[v194];
              v45 = v197;
              v46 = v186;
              while (v118 < (v105 + 63) >> 6)
              {
                v121 = *v119++;
                v120 = v121;
                v117 += 64;
                ++v118;
                if (v121)
                {
                  sub_26C411860(v103, v191, 0);
                  v105 = __clz(__rbit64(v120)) + v117;
                  goto LABEL_59;
                }
              }

              sub_26C411860(v103, v191, 0);
LABEL_59:
              v90 = v198;
              v102 = v188;
            }

            v104 = v190 + 1;
            v103 = v105;
            if (v190 + 1 == v185)
            {

              sub_26C3DDEA8(v182, v183);

              v122 = v213;
              v123 = v207;
              goto LABEL_62;
            }
          }

          goto LABEL_88;
        }

        sub_26C3DDEA8(v182, v183);

        v122 = v213;
        v123 = MEMORY[0x277D84F90];
LABEL_62:
        *(v122 + 8) = v123;
        v187 = v123;
        v196 = v181;
        v47 = v202;
      }
    }

    else
    {
LABEL_25:
      if (qword_280497148 != -1)
      {
        swift_once();
      }

      v77 = sub_26C46BFA4();
      __swift_project_value_buffer(v77, qword_280498530);
      v78 = sub_26C46BF84();
      v79 = sub_26C46C3E4();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = v199;
        *(v80 + 4) = v207;
        _os_log_impl(&dword_26C3D6000, v78, v79, "Found invalid property ID %u when creating catchup data", v80, 8u);
        v81 = v80;
        v47 = v202;
        MEMORY[0x26D6A18D0](v81, -1, -1);
      }
    }
  }

  while (1)
  {
    v55 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
      goto LABEL_85;
    }

    if (v55 >= v52)
    {
      break;
    }

    v51 = *(v48 + 8 * v55);
    ++v53;
    if (v51)
    {
      v53 = v55;
      goto LABEL_11;
    }
  }

  v125 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUIDsToParticipants;
  swift_beginAccess();
  v126 = *(v45 + v125);
  v127 = (v126 + 64);
  v128 = 1 << *(v126 + 32);
  v129 = -1;
  if (v128 < 64)
  {
    v129 = ~(-1 << v128);
  }

  v130 = v129 & *(v126 + 64);
  v131 = (v128 + 63) >> 6;
  *&v199 = v204 + 32;
  v202 = v126;

  v132 = 0;
  v198 = v127;
  v197 = v131;
  while (2)
  {
    if (v130)
    {
LABEL_73:
      v139 = __clz(__rbit64(v130)) | (v132 << 6);
      v140 = v202;
      v141 = *(v202 + 48);
      v142 = v204;
      *&v203 = *(v204 + 72);
      v143 = v201;
      v144 = v215;
      v205(v201, v141 + v203 * v139, v215);
      v145 = *(v140 + 56);
      v146 = sub_26C46BCD4();
      v147 = *(v146 - 1);
      v148 = v145 + *(v147 + 72) * v139;
      v149 = v212;
      v150 = *(v212 + 48);
      (*(v147 + 16))(&v143[v150], v148, v146);
      v151 = *(v149 + 48);
      v152 = *(v142 + 32);
      v153 = v210;
      v152(v210, v143, v144);
      (*(v147 + 32))(v153 + v151, &v143[v150], v146);
      v154 = v214;
      sub_26C3DDD48(v153, v214, &qword_280497B98, &qword_26C46E558);
      v155 = v153;
      v156 = v211;
      sub_26C3DDD48(v155, v211, &qword_280497B98, &qword_26C46E558);
      v157 = *(v149 + 48);
      v158 = v200;
      sub_26C46BCC4();
      v159 = *(v147 + 8);
      v207 = v146;
      v160 = v146;
      v161 = v159;
      v159(v156 + v157, v160);
      v162 = sub_26C46BB04();
      v164 = v163;
      (v208)(v158, v215);
      v165 = sub_26C410104();
      v166 = swift_isUniquelyReferenced_nonNull_native();
      v216 = v165;
      v167 = sub_26C42C210(v154);
      v169 = *(v165 + 16);
      v170 = (v168 & 1) == 0;
      v88 = __OFADD__(v169, v170);
      v171 = v169 + v170;
      if (v88)
      {
        goto LABEL_86;
      }

      v172 = v168;
      if (*(v165 + 24) >= v171)
      {
        if ((v166 & 1) == 0)
        {
          v179 = v167;
          sub_26C42EFB4();
          v167 = v179;
          v174 = v216;
          if ((v172 & 1) == 0)
          {
            goto LABEL_79;
          }

          goto LABEL_66;
        }
      }

      else
      {
        sub_26C3DAC84(v171, v166);
        v167 = sub_26C42C210(v214);
        if ((v172 & 1) != (v173 & 1))
        {
          goto LABEL_95;
        }
      }

      v174 = v216;
      if ((v172 & 1) == 0)
      {
LABEL_79:
        v174[(v167 >> 6) + 8] |= 1 << v167;
        v175 = v167;
        v205((v174[6] + v167 * v203), v214, v215);
        v176 = (v174[7] + 16 * v175);
        *v176 = v162;
        v176[1] = v164;
        v177 = v174[2];
        v88 = __OFADD__(v177, 1);
        v178 = v177 + 1;
        if (v88)
        {
          goto LABEL_87;
        }

        v174[2] = v178;
        goto LABEL_67;
      }

LABEL_66:
      v133 = (v174[7] + 16 * v167);
      *v133 = v162;
      v133[1] = v164;

LABEL_67:
      v130 &= v130 - 1;
      v134 = *(v212 + 48);
      v135 = v214;
      v136 = v215;
      v137 = v208;
      (v208)(v214, v215);
      sub_26C40DC0C(v174);
      sub_26C3DE270(v210, &qword_280497B98, &qword_26C46E558);
      v137(v211, v136);
      v161(v135 + v134, v207);
      v127 = v198;
      v131 = v197;
      continue;
    }

    break;
  }

  while (1)
  {
    v138 = v132 + 1;
    if (__OFADD__(v132, 1))
    {
      break;
    }

    if (v138 >= v131)
    {
    }

    v130 = *&v127[8 * v138];
    ++v132;
    if (v130)
    {
      v132 = v138;
      goto LABEL_73;
    }
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  sub_26C46C7A4();
  __break(1u);
LABEL_96:
  result = sub_26C46C7A4();
  __break(1u);
  return result;
}

uint64_t sub_26C418080()
{
  v1 = v0;
  v94 = type metadata accessor for SyncedModelManager.MessageWrapper(0);
  v2 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v4 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26C46BCF4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v102 = &v87 - v10;
  v112 = type metadata accessor for SyncMessage(0);
  MEMORY[0x28223BE20](v112);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for PBUUID(0);
  v109 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v14 = (&v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v110 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v113 = &v87 - v18;
  v105 = type metadata accessor for OwnershipChangeBroadcastMessage(0);
  v19 = MEMORY[0x28223BE20](v105);
  v111 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v87 - v21;
  v108 = sub_26C46BB54();
  v116 = *(v108 - 8);
  v23 = MEMORY[0x28223BE20](v108);
  v107 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v106 = &v87 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v115 = &v87 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v87 - v29;
  result = swift_weakLoadStrong();
  if (result)
  {
    v104 = result;
    v89 = v9;
    v93 = v6;
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v103 = v12;
    v32 = sub_26C46BFA4();
    v33 = __swift_project_value_buffer(v32, qword_280498530);

    v91 = v33;
    v34 = sub_26C46BF84();
    v35 = sub_26C46C404();

    v36 = os_log_type_enabled(v34, v35);
    v37 = &qword_280498000;
    v92 = v4;
    v90 = v5;
    v88 = v2;
    v101 = v14;
    if (v36)
    {
      v38 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v117 = v100;
      *v38 = 136315138;
      v39 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
      swift_beginAccess();
      v40 = v116;
      v41 = v108;
      (*(v116 + 16))(v30, v1 + v39, v108);
      sub_26C431280(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v42 = sub_26C46C704();
      v44 = v43;
      (*(v40 + 8))(v30, v41);
      v45 = sub_26C3E80A8(v42, v44, &v117);

      *(v38 + 4) = v45;
      v37 = &qword_280498000;
      _os_log_impl(&dword_26C3D6000, v34, v35, "SyncedModel: Received ownership of model:%s", v38, 0xCu);
      v46 = v100;
      __swift_destroy_boxed_opaque_existential_1(v100);
      MEMORY[0x26D6A18D0](v46, -1, -1);
      MEMORY[0x26D6A18D0](v38, -1, -1);
    }

    else
    {

      v41 = v108;
      v40 = v116;
    }

    v98 = *(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type);
    v97 = *(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type + 8);
    v47 = v37[190];
    swift_beginAccess();
    v48 = *(v40 + 16);
    v48(v30, v1 + v47, v41);
    v49 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID;
    v48(v115, v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v41);
    v50 = v1 + v49;
    v51 = v113;
    v48(v113, v50, v41);
    (*(v40 + 56))(v51, 0, 1, v41);
    LODWORD(v108) = *(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter);
    LODWORD(v100) = *(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestHandler) == 0;
    *(v22 + 3) = 0;
    v22[16] = 0;
    v52 = v105;
    sub_26C46BD14();
    v53 = v52[8];
    v99 = v30;
    v54 = *(v109 + 56);
    v96 = v54;
    v55 = v114;
    v54(&v22[v53], 1, 1, v114);
    v109 = v52[9];
    v54(&v22[v109], 1, 1, v55);
    v54(&v22[v52[10]], 1, 1, v55);
    *v22 = v98;
    v22[8] = v97;
    v56 = v106;
    v95 = v48;
    v48(v106, v30, v41);
    v57 = v107;
    v48(v107, v56, v41);
    v58 = v101;
    sub_26C40F280(v57, v101);
    v59 = *(v116 + 8);
    v116 += 8;
    v105 = v59;
    (v59)(v56, v41);
    sub_26C3DE270(&v22[v53], &qword_280497458, &unk_26C46D3F0);
    v98 = type metadata accessor for PBUUID;
    sub_26C42B9BC(v58, &v22[v53], type metadata accessor for PBUUID);
    v60 = v114;
    v61 = v96;
    v96(&v22[v53], 0, 1, v114);
    v62 = v95;
    v95(v56, v115, v41);
    v62(v57, v56, v41);
    sub_26C40F280(v57, v58);
    v63 = v105;
    (v105)(v56, v41);
    v64 = v109;
    sub_26C3DE270(&v22[v109], &qword_280497458, &unk_26C46D3F0);
    sub_26C42B9BC(v58, &v22[v64], v98);
    v61(&v22[v64], 0, 1, v60);
    v65 = v113;
    v66 = v110;
    sub_26C3DDD48(v113, v110, &qword_280497430, &unk_26C46D3D0);
    sub_26C40E104(v66);
    sub_26C3DE270(v65, &qword_280497430, &unk_26C46D3D0);
    (v63)(v115, v41);
    (v63)(v99, v41);
    *(v22 + 3) = v108;
    v22[16] = v100;
    v67 = type metadata accessor for SyncMessage.OneOf_Contents(0);
    v68 = *(*(v67 - 8) + 56);
    v69 = v103;
    v68(v103, 1, 1, v67);
    sub_26C46BD14();
    v70 = v111;
    sub_26C42C130(v22, v111, type metadata accessor for OwnershipChangeBroadcastMessage);
    sub_26C3DE270(v69, &qword_280497650, &unk_26C46D930);
    sub_26C42B9BC(v70, v69, type metadata accessor for OwnershipChangeBroadcastMessage);
    swift_storeEnumTagMultiPayload();
    v68(v69, 0, 1, v67);
    sub_26C431280(&qword_280497660, type metadata accessor for SyncMessage, &unk_26C47073C);
    v71 = sub_26C46BE64();
    v73 = v72;
    v74 = *MEMORY[0x277CCB260];
    v75 = v93;
    v76 = v102;
    v77 = v90;
    v116 = *(v93 + 104);
    (v116)(v102, v74, v90);
    v78 = *(v75 + 16);
    v79 = v92;
    v78(v92 + *(v94 + 20), v76, v77);
    *v79 = v71;
    v79[1] = v73;
    v80 = v104;
    swift_beginAccess();
    v81 = *(v80 + 16);
    sub_26C3DDDB0(v71, v73);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v80 + 16) = v81;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v81 = sub_26C42BE38(0, v81[2] + 1, 1, v81, &qword_280497B88, &qword_26C46E528, type metadata accessor for SyncedModelManager.MessageWrapper);
      *(v104 + 16) = v81;
    }

    v84 = v81[2];
    v83 = v81[3];
    if (v84 >= v83 >> 1)
    {
      v81 = sub_26C42BE38((v83 > 1), v84 + 1, 1, v81, &qword_280497B88, &qword_26C46E528, type metadata accessor for SyncedModelManager.MessageWrapper);
    }

    v81[2] = v84 + 1;
    sub_26C42B9BC(v92, v81 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v84, type metadata accessor for SyncedModelManager.MessageWrapper);
    *(v104 + 16) = v81;
    swift_endAccess();
    v85 = *(v93 + 8);
    v85(v102, v77);
    v86 = v89;
    (v116)(v89, v74, v77);
    sub_26C3ECC34(v86);

    sub_26C3DDEA8(v71, v73);
    v85(v86, v77);
    sub_26C42BA24(v103, type metadata accessor for SyncMessage);
    return sub_26C42BA24(v22, type metadata accessor for OwnershipChangeBroadcastMessage);
  }

  return result;
}

void sub_26C418F90(uint64_t a1, NSObject *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v113 = &v108[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v5);
  v112 = &v108[-v8];
  v9 = MEMORY[0x28223BE20](v7);
  v119 = &v108[-v10];
  v11 = MEMORY[0x28223BE20](v9);
  v118 = &v108[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v124 = &v108[-v14];
  MEMORY[0x28223BE20](v13);
  v123 = &v108[-v15];
  v16 = sub_26C46BB54();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v111 = &v108[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v110 = &v108[-v21];
  MEMORY[0x28223BE20](v20);
  v114 = &v108[-v22];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v116 = &v108[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v108[-v27];
  MEMORY[0x28223BE20](v26);
  v30 = &v108[-v29];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B78, "n6");
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v34 = &v108[-v33];
  v35 = *(v32 + 56);
  v115 = a1;
  sub_26C3DDD48(a1, &v108[-v33], &qword_280497430, &unk_26C46D3D0);
  v117 = a2;
  v36 = v16;
  sub_26C3DDD48(a2, &v34[v35], &qword_280497430, &unk_26C46D3D0);
  v121 = v17;
  v37 = *(v17 + 48);
  v38 = v37(v34, 1, v36);
  v122 = v36;
  if (v38 == 1)
  {
    if (v37(&v34[v35], 1, v36) == 1)
    {
      sub_26C3DE270(v34, &qword_280497430, &unk_26C46D3D0);
LABEL_14:
      if (qword_280497148 != -1)
      {
        swift_once();
      }

      v64 = sub_26C46BFA4();
      __swift_project_value_buffer(v64, qword_280498530);
      v65 = sub_26C46BF84();
      v66 = sub_26C46C3E4();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_26C3D6000, v65, v66, "SyncedModel: onChangedOwnership called but ownership didn't change", v67, 2u);
        MEMORY[0x26D6A18D0](v67, -1, -1);
      }

      return;
    }

    goto LABEL_6;
  }

  sub_26C3DDD48(v34, v30, &qword_280497430, &unk_26C46D3D0);
  if (v37(&v34[v35], 1, v36) == 1)
  {
    (*(v121 + 8))(v30, v36);
LABEL_6:
    sub_26C3DE270(v34, &qword_280497B78, "n6");
    v39 = v120;
    goto LABEL_7;
  }

  v59 = v121;
  v60 = v37;
  v61 = v114;
  (*(v121 + 32))(v114, &v34[v35], v36);
  sub_26C431280(&qword_2804975A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v109 = sub_26C46C1C4();
  v62 = *(v59 + 8);
  v63 = v61;
  v37 = v60;
  v62(v63, v122);
  v62(v30, v122);
  v39 = v120;
  v36 = v122;
  sub_26C3DE270(v34, &qword_280497430, &unk_26C46D3D0);
  if (v109)
  {
    goto LABEL_14;
  }

LABEL_7:
  sub_26C3DDD48(v115, v28, &qword_280497430, &unk_26C46D3D0);
  if (v37(v28, 1, v36) == 1)
  {
    v40 = v37;
    v41 = sub_26C46BCD4();
    (*(*(v41 - 8) + 56))(v123, 1, 1, v41);
    v42 = v119;
LABEL_12:
    v43 = v121;
    goto LABEL_21;
  }

  v43 = v121;
  v44 = v110;
  (*(v121 + 32))(v110, v28, v36);
  v45 = v36;
  v46 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUIDsToParticipants;
  swift_beginAccess();
  v47 = *(v39 + v46);
  v42 = v119;
  if (*(v47 + 16))
  {

    v48 = sub_26C42C210(v44);
    if (v49)
    {
      v50 = v48;
      v40 = v37;
      v51 = *(v47 + 56);
      v52 = v44;
      v53 = sub_26C46BCD4();
      v54 = *(v53 - 8);
      v55 = v54;
      v56 = v51 + *(v54 + 72) * v50;
      v42 = v119;
      v57 = v123;
      (*(v54 + 16))(v123, v56, v53);
      v58 = v122;
      (*(v121 + 8))(v52, v122);
      v36 = v58;

      (*(v55 + 56))(v57, 0, 1, v53);
      v39 = v120;
      goto LABEL_12;
    }

    v40 = v37;

    v36 = v122;
    (*(v43 + 8))(v44, v122);
    v69 = sub_26C46BCD4();
    (*(*(v69 - 8) + 56))(v123, 1, 1, v69);
  }

  else
  {
    v40 = v37;
    (*(v43 + 8))(v44, v45);
    v68 = sub_26C46BCD4();
    (*(*(v68 - 8) + 56))(v123, 1, 1, v68);
    v36 = v45;
  }

LABEL_21:
  v70 = v116;
  sub_26C3DDD48(v117, v116, &qword_280497430, &unk_26C46D3D0);
  if (v40(v70, 1, v36) == 1)
  {
LABEL_27:
    v82 = sub_26C46BCD4();
    (*(*(v82 - 8) + 56))(v124, 1, 1, v82);
    goto LABEL_28;
  }

  v71 = v111;
  (*(v43 + 32))(v111, v70, v36);
  v72 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUIDsToParticipants;
  swift_beginAccess();
  v73 = v36;
  v74 = *(v39 + v72);
  if (!*(v74 + 16))
  {
    (*(v43 + 8))(v71, v73);
    goto LABEL_27;
  }

  v75 = sub_26C42C210(v71);
  if ((v76 & 1) == 0)
  {

    (*(v43 + 8))(v71, v122);
    goto LABEL_27;
  }

  v77 = v75;
  v78 = *(v74 + 56);
  v79 = sub_26C46BCD4();
  v80 = v124;
  v81 = *(v79 - 8);
  (*(v81 + 16))(v124, v78 + *(v81 + 72) * v77, v79);
  (*(v43 + 8))(v71, v122);

  (*(v81 + 56))(v80, 0, 1, v79);
LABEL_28:
  v83 = v118;
  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v84 = sub_26C46BFA4();
  __swift_project_value_buffer(v84, qword_280498530);
  sub_26C3DDD48(v123, v83, &qword_280497268, &qword_26C46CFE0);
  sub_26C3DDD48(v124, v42, &qword_280497268, &qword_26C46CFE0);
  v85 = sub_26C46BF84();
  v86 = sub_26C46C404();
  if (os_log_type_enabled(v85, v86))
  {
    LODWORD(v116) = v86;
    v117 = v85;
    v87 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v125[0] = v115;
    *v87 = 136315394;
    v88 = v112;
    sub_26C3DDD48(v83, v112, &qword_280497268, &qword_26C46CFE0);
    v89 = sub_26C46BCD4();
    v90 = *(v89 - 8);
    v91 = *(v90 + 48);
    if (v91(v88, 1, v89) == 1)
    {
      sub_26C3DE270(v88, &qword_280497268, &qword_26C46CFE0);
      v92 = 0xE300000000000000;
      v93 = 7104878;
    }

    else
    {
      v94 = v114;
      sub_26C46BCC4();
      (*(v90 + 8))(v88, v89);
      v93 = sub_26C46BB04();
      v92 = v95;
      (*(v121 + 8))(v94, v122);
    }

    sub_26C3DE270(v83, &qword_280497268, &qword_26C46CFE0);
    v96 = sub_26C3E80A8(v93, v92, v125);

    *(v87 + 4) = v96;
    *(v87 + 12) = 2080;
    v97 = v119;
    v98 = v113;
    sub_26C3DDD48(v119, v113, &qword_280497268, &qword_26C46CFE0);
    if (v91(v98, 1, v89) == 1)
    {
      sub_26C3DE270(v98, &qword_280497268, &qword_26C46CFE0);
      v99 = 0xE300000000000000;
      v39 = v120;
      v100 = v117;
      v101 = 7104878;
    }

    else
    {
      v102 = v114;
      sub_26C46BCC4();
      (*(v90 + 8))(v98, v89);
      v101 = sub_26C46BB04();
      v99 = v103;
      (*(v121 + 8))(v102, v122);
      v39 = v120;
      v100 = v117;
    }

    sub_26C3DE270(v97, &qword_280497268, &qword_26C46CFE0);
    v104 = sub_26C3E80A8(v101, v99, v125);

    *(v87 + 14) = v104;
    _os_log_impl(&dword_26C3D6000, v100, v116, "SyncedModel: changed ownership from:%s to:%s", v87, 0x16u);
    v105 = v115;
    swift_arrayDestroy();
    MEMORY[0x26D6A18D0](v105, -1, -1);
    MEMORY[0x26D6A18D0](v87, -1, -1);
  }

  else
  {

    sub_26C3DE270(v42, &qword_280497268, &qword_26C46CFE0);
    sub_26C3DE270(v83, &qword_280497268, &qword_26C46CFE0);
  }

  v106 = *(v39 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_ownershipChangedHandler);
  if (v106)
  {
    v107 = *(v39 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_ownershipChangedHandler + 8);

    v106(v123, v124);
    sub_26C3DD730(v106, v107);
  }

  sub_26C3DE270(v124, &qword_280497268, &qword_26C46CFE0);
  sub_26C3DE270(v123, &qword_280497268, &qword_26C46CFE0);
}

void sub_26C419DF8(_DWORD *a1, uint64_t a2)
{
  v5 = sub_26C46BB54();
  v109 = *(v5 - 8);
  v110 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B78, "n6");
  MEMORY[0x28223BE20](v103);
  v104 = &v100 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v106 = &v100 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v107 = &v100 - v16;
  MEMORY[0x28223BE20](v15);
  v108 = &v100 - v17;
  v116 = sub_26C46BCD4();
  isa = v116[-1].isa;
  MEMORY[0x28223BE20](v116);
  v105 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497638, &unk_26C46D920);
  MEMORY[0x28223BE20](v20);
  v22 = &v100 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v113 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v100 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v100 - v29;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v102 = v12;
    v101 = v7;
    v112 = a1;
    v115 = a2;
    v32 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__authorityParticipant;
    v33 = Strong;
    swift_beginAccess();
    v114 = v2;
    sub_26C3DDD48(v2 + v32, v30, &qword_280497268, &qword_26C46CFE0);
    v34 = *(isa + 2);
    v111 = v33;
    v35 = v33 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant;
    v36 = v116;
    v34(v28, v35, v116);
    (*(isa + 7))(v28, 0, 1, v36);
    v37 = *(v20 + 48);
    sub_26C3DDD48(v30, v22, &qword_280497268, &qword_26C46CFE0);
    sub_26C3DDD48(v28, &v22[v37], &qword_280497268, &qword_26C46CFE0);
    v38 = *(isa + 6);
    if (v38(v22, 1, v36) == 1)
    {
      sub_26C3DE270(v28, &qword_280497268, &qword_26C46CFE0);
      sub_26C3DE270(v30, &qword_280497268, &qword_26C46CFE0);
      v39 = v38(&v22[v37], 1, v36);
      v41 = v114;
      v40 = v115;
      if (v39 == 1)
      {
        sub_26C3DE270(v22, &qword_280497268, &qword_26C46CFE0);
        goto LABEL_21;
      }
    }

    else
    {
      v46 = v113;
      sub_26C3DDD48(v22, v113, &qword_280497268, &qword_26C46CFE0);
      if (v38(&v22[v37], 1, v36) != 1)
      {
        v54 = v105;
        (*(isa + 4))(v105, &v22[v37], v36);
        sub_26C431280(&qword_280497658, MEMORY[0x277CCB248], MEMORY[0x277CCB258]);
        v55 = v46;
        v56 = sub_26C46C1C4();
        v57 = *(isa + 1);
        v57(v54, v36);
        sub_26C3DE270(v28, &qword_280497268, &qword_26C46CFE0);
        sub_26C3DE270(v30, &qword_280497268, &qword_26C46CFE0);
        v57(v55, v36);
        sub_26C3DE270(v22, &qword_280497268, &qword_26C46CFE0);
        v41 = v114;
        v40 = v115;
        if (v56)
        {
LABEL_21:
          v58 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
          swift_beginAccess();
          v59 = v108;
          sub_26C3DDD48(v41 + v58, v108, &qword_280497430, &unk_26C46D3D0);
          v61 = v109;
          v60 = v110;
          v62 = *(v109 + 48);
          v63 = v62(v59, 1, v110);
          sub_26C3DE270(v59, &qword_280497430, &unk_26C46D3D0);
          if (v63 == 1)
          {
            if (qword_280497148 != -1)
            {
              swift_once();
            }

            v64 = sub_26C46BFA4();
            __swift_project_value_buffer(v64, qword_280498530);
            v65 = sub_26C46BF84();
            v66 = sub_26C46C404();
            v67 = os_log_type_enabled(v65, v66);
            v68 = v115;
            if (v67)
            {
              v69 = swift_slowAlloc();
              *v69 = 0;
              _os_log_impl(&dword_26C3D6000, v65, v66, "SyncedModel: Handling ownership change request. Model is unowned. Returning success.", v69, 2u);
              MEMORY[0x26D6A18D0](v69, -1, -1);
            }

            v51 = v112;
            v52 = v68;
            v53 = 1;
LABEL_27:
            sub_26C41AC88(v51, v52, v53, 1);
LABEL_28:

            return;
          }

          v70 = v107;
          sub_26C3DDD48(v41 + v58, v107, &qword_280497430, &unk_26C46D3D0);
          v71 = v41 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID;
          v72 = v106;
          (*(v61 + 16))(v106, v71, v60);
          (*(v61 + 56))(v72, 0, 1, v60);
          v73 = v104;
          v74 = *(v103 + 48);
          sub_26C3DDD48(v70, v104, &qword_280497430, &unk_26C46D3D0);
          sub_26C3DDD48(v72, v73 + v74, &qword_280497430, &unk_26C46D3D0);
          if (v62(v73, 1, v60) == 1)
          {
            sub_26C3DE270(v72, &qword_280497430, &unk_26C46D3D0);
            sub_26C3DE270(v70, &qword_280497430, &unk_26C46D3D0);
            v75 = v62(v73 + v74, 1, v60);
            v76 = v114;
            v77 = v115;
            if (v75 == 1)
            {
              sub_26C3DE270(v73, &qword_280497430, &unk_26C46D3D0);
LABEL_37:
              v83 = *(v76 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestHandler);
              if (v83)
              {
                v84 = *(v76 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestHandler + 8);

                if (v83(v77))
                {
                  if (qword_280497148 != -1)
                  {
                    swift_once();
                  }

                  v85 = sub_26C46BFA4();
                  __swift_project_value_buffer(v85, qword_280498530);
                  v86 = sub_26C46BF84();
                  v87 = sub_26C46C404();
                  if (os_log_type_enabled(v86, v87))
                  {
                    v88 = swift_slowAlloc();
                    *v88 = 0;
                    _os_log_impl(&dword_26C3D6000, v86, v87, "SyncedModel: Handling ownership change request. Participant is owner and authority. Ownership request handler accepted change. Returning success.", v88, 2u);
                    MEMORY[0x26D6A18D0](v88, -1, -1);
                  }

                  v89 = v112;
                  v90 = v77;
                  v91 = 2;
                }

                else
                {
                  if (qword_280497148 != -1)
                  {
                    swift_once();
                  }

                  v96 = sub_26C46BFA4();
                  __swift_project_value_buffer(v96, qword_280498530);
                  v97 = sub_26C46BF84();
                  v98 = sub_26C46C404();
                  if (os_log_type_enabled(v97, v98))
                  {
                    v99 = swift_slowAlloc();
                    *v99 = 0;
                    _os_log_impl(&dword_26C3D6000, v97, v98, "SyncedModel: Handling ownership change request. Participant is owner and authority but ownership request handler refused change. Returning refusal.", v99, 2u);
                    MEMORY[0x26D6A18D0](v99, -1, -1);
                  }

                  v89 = v112;
                  v90 = v77;
                  v91 = 3;
                }

                sub_26C41AC88(v89, v90, v91, 1);
                sub_26C3DD730(v83, v84);
                goto LABEL_28;
              }

              if (qword_280497148 != -1)
              {
                swift_once();
              }

              v92 = sub_26C46BFA4();
              __swift_project_value_buffer(v92, qword_280498530);
              v93 = sub_26C46BF84();
              v94 = sub_26C46C404();
              if (os_log_type_enabled(v93, v94))
              {
                v95 = swift_slowAlloc();
                *v95 = 0;
                _os_log_impl(&dword_26C3D6000, v93, v94, "SyncedModel: Handling ownership change request. Participant is owner and authority but no ownership request handler has been registered. Returning refusal.", v95, 2u);
                MEMORY[0x26D6A18D0](v95, -1, -1);
              }

              v51 = v112;
              v52 = v77;
              v53 = 3;
              goto LABEL_27;
            }
          }

          else
          {
            v78 = v102;
            sub_26C3DDD48(v73, v102, &qword_280497430, &unk_26C46D3D0);
            if (v62(v73 + v74, 1, v60) != 1)
            {
              v79 = v73 + v74;
              v80 = v101;
              (*(v61 + 32))(v101, v79, v60);
              sub_26C431280(&qword_2804975A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
              v81 = sub_26C46C1C4();
              v82 = *(v61 + 8);
              v82(v80, v60);
              sub_26C3DE270(v106, &qword_280497430, &unk_26C46D3D0);
              sub_26C3DE270(v107, &qword_280497430, &unk_26C46D3D0);
              v82(v78, v60);
              sub_26C3DE270(v73, &qword_280497430, &unk_26C46D3D0);
              v76 = v114;
              v77 = v115;
              if (v81)
              {
                goto LABEL_37;
              }

LABEL_35:
              sub_26C41C740(v112, v77);
              goto LABEL_28;
            }

            sub_26C3DE270(v106, &qword_280497430, &unk_26C46D3D0);
            sub_26C3DE270(v107, &qword_280497430, &unk_26C46D3D0);
            (*(v61 + 8))(v78, v60);
            v77 = v115;
          }

          sub_26C3DE270(v73, &qword_280497B78, "n6");
          goto LABEL_35;
        }

LABEL_15:
        if (qword_280497148 != -1)
        {
          swift_once();
        }

        v47 = sub_26C46BFA4();
        __swift_project_value_buffer(v47, qword_280498530);
        v48 = sub_26C46BF84();
        v49 = sub_26C46C3D4();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_26C3D6000, v48, v49, "SyncedModel: Received ownership change request but user is not authority", v50, 2u);
          MEMORY[0x26D6A18D0](v50, -1, -1);
        }

        v51 = v112;
        v52 = v40;
        v53 = 8;
        goto LABEL_27;
      }

      sub_26C3DE270(v28, &qword_280497268, &qword_26C46CFE0);
      sub_26C3DE270(v30, &qword_280497268, &qword_26C46CFE0);
      (*(isa + 1))(v46, v36);
      v40 = v115;
    }

    sub_26C3DE270(v22, &qword_280497638, &unk_26C46D920);
    goto LABEL_15;
  }

  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v42 = sub_26C46BFA4();
  __swift_project_value_buffer(v42, qword_280498530);
  v116 = sub_26C46BF84();
  v43 = sub_26C46C3E4();
  if (os_log_type_enabled(v116, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_26C3D6000, v116, v43, "SyncedModel: Received ownership change request but model is not associated with a manager", v44, 2u);
    MEMORY[0x26D6A18D0](v44, -1, -1);
  }

  v45 = v116;
}

void sub_26C41AC88(uint64_t a1, void (*a2)(void, void, void, void), uint64_t a3, int a4)
{
  v190 = a4;
  v188 = a2;
  v189 = a3;
  v187 = a1;
  v153 = type metadata accessor for SyncedModelManager.MessageWrapper(0);
  v157 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v155 = (&v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v163 = sub_26C46BCF4();
  v156 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v154 = (&v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v172 = type metadata accessor for SyncMessage(0);
  MEMORY[0x28223BE20](v172);
  v173 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v162 = (&v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v161 = &v148 - v12;
  MEMORY[0x28223BE20](v11);
  v160 = &v148 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  MEMORY[0x28223BE20](v14 - 8);
  v178 = &v148 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v170 = &v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v159 = &v148 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v176 = &v148 - v22;
  MEMORY[0x28223BE20](v21);
  v177 = &v148 - v23;
  v24 = type metadata accessor for PBUUID(0);
  v25 = *(v24 - 8);
  v192 = v24;
  v193 = v25;
  v26 = MEMORY[0x28223BE20](v24);
  v169 = (&v148 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x28223BE20](v26);
  v158 = (&v148 - v29);
  v30 = MEMORY[0x28223BE20](v28);
  v175 = (&v148 - v31);
  v32 = MEMORY[0x28223BE20](v30);
  v183 = (&v148 - v33);
  MEMORY[0x28223BE20](v32);
  v168 = (&v148 - v34);
  v35 = type metadata accessor for OwnershipChangeReplyMessage(0);
  v36 = MEMORY[0x28223BE20](v35);
  v171 = &v148 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v180 = &v148 - v39;
  MEMORY[0x28223BE20](v38);
  v41 = &v148 - v40;
  v42 = sub_26C46BB54();
  v43 = *(v42 - 8);
  v44 = MEMORY[0x28223BE20](v42);
  v182 = (&v148 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = MEMORY[0x28223BE20](v44);
  v185 = (&v148 - v47);
  v48 = MEMORY[0x28223BE20](v46);
  v174 = &v148 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v181 = &v148 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v184 = &v148 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v56 = &v148 - v55;
  MEMORY[0x28223BE20](v54);
  v58 = &v148 - v57;
  v59 = sub_26C46BCD4();
  v60 = *(v59 - 1);
  MEMORY[0x28223BE20](v59);
  v62 = &v148 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = v4;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v167 = v35;
    v64 = *(v60 + 16);
    v179 = Strong;
    v150 = v60 + 16;
    v149 = v64;
    v64(v62, Strong + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v59);
    sub_26C46BCC4();
    sub_26C46BCC4();
    v65 = sub_26C46BB14();
    v186 = v43;
    v67 = *(v43 + 8);
    v66 = (v43 + 8);
    v67(v56, v42);
    v165 = v67;
    v67(v58, v42);
    v151 = v60;
    v70 = *(v60 + 8);
    v68 = (v60 + 8);
    v69 = v70;
    v152 = v59;
    (v70)(v62, v59);
    v166 = v66;
    v164 = v58;
    if (v65)
    {
      v71 = v42;
      sub_26C41F4FC(v189, v190 & 1, &v194);
      v72 = v191;
      v42 = v167;
      v73 = v177;
      if (v194)
      {
LABEL_6:
        v182 = *(&v72->isa + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type);
        LODWORD(v180) = *(&v72[1].isa + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type);
        v77 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
        swift_beginAccess();
        v185 = *(v186 + 16);
        v186 += 16;
        v185(v184, v72 + v77, v71);
        v78 = type metadata accessor for OwnershipChangeRequestMessage(0);
        sub_26C3DDD48(v187 + *(v78 + 40), v73, &qword_280497458, &unk_26C46D3F0);
        v79 = v192;
        isa = v193[6].isa;
        if ((isa)(v73, 1, v192) == 1)
        {
          v81 = v168;
          *v168 = 0;
          v81[1] = 0;
          sub_26C46BD14();
          if ((isa)(v73, 1, v79) != 1)
          {
            sub_26C3DE270(v73, &qword_280497458, &unk_26C46D3F0);
          }
        }

        else
        {
          v81 = v168;
          sub_26C42B9BC(v73, v168, type metadata accessor for PBUUID);
        }

        sub_26C40F3CC();
        sub_26C42BA24(v81, type metadata accessor for PBUUID);
        LODWORD(v187) = *(&v72->isa + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter);
        *(v41 + 16) = 0;
        *(v41 + 24) = 1;
        *(v41 + 28) = 0;
        sub_26C46BD14();
        v102 = *(v42 + 32);
        v103 = v192;
        v104 = v193[7].isa;
        v193 += 7;
        v188 = v104;
        (v104)(v41 + v102, 1, 1, v192);
        v178 = *(v42 + 36);
        (v104)(v41 + v178, 1, 1, v103);
        *v41 = v182;
        *(v41 + 8) = v180;
        v105 = v164;
        v106 = v185;
        v185(v164, v184, v71);
        v106(v56, v105, v71);
        v107 = v183;
        sub_26C40F280(v56, v183);
        v108 = v165;
        v165(v105, v71);
        sub_26C3DE270(v41 + v102, &qword_280497458, &unk_26C46D3F0);
        v182 = type metadata accessor for PBUUID;
        sub_26C42B9BC(v107, v41 + v102, type metadata accessor for PBUUID);
        v188(v41 + v102, 0, 1, v192);
        v109 = v181;
        v106(v105, v181, v71);
        v106(v56, v105, v71);
        sub_26C40F280(v56, v107);
        v108(v105, v71);
        v108(v109, v71);
        v108(v184, v71);
        v110 = v178;
        sub_26C3DE270(v41 + v178, &qword_280497458, &unk_26C46D3F0);
        sub_26C42B9BC(v107, v41 + v110, v182);
        v188(v41 + v110, 0, 1, v192);
        *(v41 + 16) = v189;
        *(v41 + 24) = v190 & 1;
        *(v41 + 28) = v187;
        sub_26C41E638(v41);

        sub_26C42BA24(v41, type metadata accessor for OwnershipChangeReplyMessage);
        return;
      }

      v74 = *(&v191->isa + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter);
      v75 = __CFADD__(v74, 1);
      v76 = v74 + 1;
      if (!v75)
      {
        *(&v191->isa + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter) = v76;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_38;
    }

    v168 = v69;
    v177 = v68;
    v184 = type metadata accessor for OwnershipChangeRequestMessage(0);
    v181 = *(v184 + 9);
    v86 = v176;
    sub_26C3DDD48(&v181[v187], v176, &qword_280497458, &unk_26C46D3F0);
    v87 = v192;
    v72 = v193 + 6;
    v88 = v193[6].isa;
    if ((v88)(v86, 1, v192) == 1)
    {
      v89 = v175;
      *v175 = 0;
      v89[1] = 0;
      sub_26C46BD14();
      v90 = v88;
      v91 = (v88)(v86, 1, v87);
      v92 = v152;
      v93 = v151;
      if (v91 != 1)
      {
        sub_26C3DE270(v86, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v90 = v88;
      v89 = v175;
      sub_26C42B9BC(v86, v175, type metadata accessor for PBUUID);
      v92 = v152;
      v93 = v151;
    }

    v94 = v174;
    sub_26C40F3CC();
    sub_26C42BA24(v89, type metadata accessor for PBUUID);
    v95 = v178;
    v149(v178, v188, v92);
    (*(v93 + 56))(v95, 0, 1, v92);
    v66 = v191;
    swift_beginAccess();
    sub_26C3D8BB4(v95, v94);
    swift_endAccess();
    sub_26C41F4FC(v189, v190 & 1, &v194);
    v71 = 0x280497000;
    v96 = v90;
    v148 = v56;
    if (!v194)
    {
      v97 = v159;
      sub_26C3DDD48(&v181[v187], v159, &qword_280497458, &unk_26C46D3F0);
      v98 = v192;
      if (v90(v97, 1, v192) == 1)
      {
        v99 = v158;
        *v158 = 0;
        v99[1] = 0;
        sub_26C46BD14();
        v100 = v90(v97, 1, v98);
        v101 = v186;
        if (v100 != 1)
        {
          sub_26C3DE270(v97, &qword_280497458, &unk_26C46D3F0);
        }
      }

      else
      {
        v99 = v158;
        sub_26C42B9BC(v97, v158, type metadata accessor for PBUUID);
        v101 = v186;
      }

      v111 = v160;
      sub_26C40F3CC();
      sub_26C42BA24(v99, type metadata accessor for PBUUID);
      (*(v101 + 56))(v111, 0, 1, v42);
      v112 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
      v66 = v191;
      swift_beginAccess();
      v59 = &qword_280497430;
      v113 = v161;
      sub_26C3DDD48(v66 + v112, v161, &qword_280497430, &unk_26C46D3D0);
      swift_beginAccess();
      sub_26C3E9EB8(v111, v66 + v112);
      swift_endAccess();
      v114 = v162;
      sub_26C3DDD48(v66 + v112, v162, &qword_280497430, &unk_26C46D3D0);
      v65 = v66;
      sub_26C418F90(v113, v114);
      sub_26C3DE270(v114, &qword_280497430, &unk_26C46D3D0);
      sub_26C3DE270(v113, &qword_280497430, &unk_26C46D3D0);
      sub_26C3DE270(v111, &qword_280497430, &unk_26C46D3D0);
      v71 = 0x280497000uLL;
      v115 = *(v66 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter);
      v75 = __CFADD__(v115, 1);
      v116 = v115 + 1;
      if (v75)
      {
LABEL_38:
        __break(1u);
LABEL_39:
        v59 = sub_26C42BE38(0, v59[2] + 1, 1, v59, &qword_280497B88, &qword_26C46E528, type metadata accessor for SyncedModelManager.MessageWrapper);
        *(v65 + 16) = v59;
LABEL_34:
        v145 = v157;
        v147 = v59[2];
        v146 = v59[3];
        if (v147 >= v146 >> 1)
        {
          v59 = sub_26C42BE38((v146 > 1), v147 + 1, 1, v59, &qword_280497B88, &qword_26C46E528, type metadata accessor for SyncedModelManager.MessageWrapper);
        }

        v59[2] = v147 + 1;
        sub_26C42B9BC(v72, v59 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v147, type metadata accessor for SyncedModelManager.MessageWrapper);
        *(v179 + 16) = v59;
        swift_endAccess();
        v66[1](v42, v163);

        sub_26C42BA24(v71, type metadata accessor for SyncMessage);
        sub_26C42BA24(v180, type metadata accessor for OwnershipChangeReplyMessage);
        return;
      }

      *(v66 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter) = v116;
    }

    v181 = *(v66 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type);
    LODWORD(v178) = *(v66 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type + 8);
    v117 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
    swift_beginAccess();
    v118 = *(v186 + 16);
    v118(v185, v66 + v117, v42);
    v119 = v170;
    sub_26C3DDD48(v187 + *(v184 + 10), v170, &qword_280497458, &unk_26C46D3F0);
    v120 = v192;
    if (v96(v119, 1, v192) == 1)
    {
      v121 = v169;
      *v169 = 0;
      v121[1] = 0;
      sub_26C46BD14();
      if (v96(v119, 1, v120) != 1)
      {
        sub_26C3DE270(v119, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v121 = v169;
      sub_26C42B9BC(v119, v169, type metadata accessor for PBUUID);
    }

    sub_26C40F3CC();
    sub_26C42BA24(v121, type metadata accessor for PBUUID);
    LODWORD(v187) = *(&v191->isa + *(v71 + 2848));
    v122 = v180;
    *(v180 + 16) = 0;
    *(v122 + 24) = 1;
    *(v122 + 28) = 0;
    v123 = v167;
    sub_26C46BD14();
    v124 = *(v123 + 32);
    v125 = v192;
    v126 = v193[7].isa;
    v193 += 7;
    v191 = v126;
    (v126)(v122 + v124, 1, 1, v192);
    v186 = *(v123 + 36);
    (v126)(v122 + v186, 1, 1, v125);
    *v122 = v181;
    *(v122 + 8) = v178;
    v127 = v164;
    v118(v164, v185, v42);
    v128 = v148;
    v118(v148, v127, v42);
    v129 = v183;
    sub_26C40F280(v128, v183);
    v130 = v165;
    v165(v127, v42);
    sub_26C3DE270(v122 + v124, &qword_280497458, &unk_26C46D3F0);
    v184 = type metadata accessor for PBUUID;
    sub_26C42B9BC(v129, v122 + v124, type metadata accessor for PBUUID);
    (v191)(v122 + v124, 0, 1, v192);
    v131 = v182;
    v118(v127, v182, v42);
    v118(v128, v127, v42);
    sub_26C40F280(v128, v129);
    v130(v127, v42);
    v130(v131, v42);
    v130(v185, v42);
    v132 = v186;
    sub_26C3DE270(v122 + v186, &qword_280497458, &unk_26C46D3F0);
    sub_26C42B9BC(v129, v122 + v132, v184);
    (v191)(v122 + v132, 0, 1, v192);
    *(v122 + 16) = v189;
    *(v122 + 24) = v190 & 1;
    *(v122 + 28) = v187;
    v133 = type metadata accessor for SyncMessage.OneOf_Contents(0);
    v134 = *(*(v133 - 8) + 56);
    v71 = v173;
    v134(v173, 1, 1, v133);
    sub_26C46BD14();
    v135 = v171;
    sub_26C42C130(v122, v171, type metadata accessor for OwnershipChangeReplyMessage);
    sub_26C3DE270(v71, &qword_280497650, &unk_26C46D930);
    sub_26C42B9BC(v135, v71, type metadata accessor for OwnershipChangeReplyMessage);
    swift_storeEnumTagMultiPayload();
    v134(v71, 0, 1, v133);
    sub_26C431280(&qword_280497660, type metadata accessor for SyncMessage, &unk_26C47073C);
    v136 = sub_26C46BE64();
    v138 = v137;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497668, &unk_26C46E530);
    v139 = (*(v151 + 80) + 32) & ~*(v151 + 80);
    v140 = swift_allocObject();
    *(v140 + 16) = xmmword_26C46D760;
    v141 = v152;
    v149(v140 + v139, v188, v152);
    v142 = sub_26C3FD100(v140);
    swift_setDeallocating();
    (v168)(v140 + v139, v141);
    swift_deallocClassInstance();
    v42 = v154;
    *v154 = v142;
    v66 = v156;
    v143 = v163;
    (*(v156 + 104))(v42, *MEMORY[0x277CCB268], v163);
    v72 = v155;
    (v66[2])(v155 + *(v153 + 20), v42, v143);
    v72->isa = v136;
    v72[1].isa = v138;
    v65 = v179;
    swift_beginAccess();
    v59 = *(v65 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v65 + 16) = v59;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v82 = sub_26C46BFA4();
  __swift_project_value_buffer(v82, qword_280498530);
  v193 = sub_26C46BF84();
  v83 = sub_26C46C3E4();
  if (os_log_type_enabled(v193, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_26C3D6000, v193, v83, "SyncedModel: Replying to ownership change request but model is not associated with a manager", v84, 2u);
    MEMORY[0x26D6A18D0](v84, -1, -1);
  }

  v85 = v193;
}

void sub_26C41C740(_DWORD *a1, uint64_t a2)
{
  v205 = a2;
  v234 = a1;
  v201 = sub_26C46C0A4();
  v200 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v198 = v179 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_26C46C0D4();
  v197 = *(v199 - 8);
  MEMORY[0x28223BE20](v199);
  v196 = v179 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_26C46C0F4();
  v195 = *(v202 - 8);
  v5 = MEMORY[0x28223BE20](v202);
  v193 = v179 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v194 = v179 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497328, &qword_26C46E550);
  MEMORY[0x28223BE20](v8 - 8);
  v192 = v179 - v9;
  v182 = type metadata accessor for SyncedModelManager.MessageWrapper(0);
  v190 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v188 = (v179 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v191 = sub_26C46BCF4();
  v189 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v187 = (v179 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v204 = type metadata accessor for SyncMessage(0);
  MEMORY[0x28223BE20](v204);
  v207 = v179 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_26C46BCD4();
  v218 = *(v219 - 8);
  v13 = MEMORY[0x28223BE20](v219);
  v203 = v179 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v179 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  MEMORY[0x28223BE20](v17 - 8);
  v225 = v179 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v186 = v179 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v231 = (v179 - v23);
  MEMORY[0x28223BE20](v22);
  v25 = v179 - v24;
  v26 = type metadata accessor for PBUUID(0);
  v236 = *(v26 - 8);
  v27 = MEMORY[0x28223BE20](v26);
  v183 = (v179 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x28223BE20](v27);
  v224 = (v179 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v228 = (v179 - v32);
  MEMORY[0x28223BE20](v31);
  v34 = (v179 - v33);
  v35 = sub_26C46BB54();
  v36 = *(v35 - 8);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = v179 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37);
  v221 = v179 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v223 = v179 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v226 = v179 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v233 = v179 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v235 = v179 - v49;
  MEMORY[0x28223BE20](v48);
  v51 = v179 - v50;
  v52 = type metadata accessor for OwnershipHandoffRequestMessage(0);
  v184 = *(v52 - 1);
  v53 = MEMORY[0x28223BE20](v52);
  v206 = v179 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = v54;
  MEMORY[0x28223BE20](v53);
  v232 = v179 - v55;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v180 = v39;
    v222 = Strong;
    v181 = v16;
    v210 = *(v2 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type);
    v212 = *(v2 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type + 8);
    v57 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
    swift_beginAccess();
    v230 = v36;
    v58 = *(v36 + 16);
    v220 = v2;
    v217 = v35;
    v214 = v36 + 16;
    v213 = v58;
    v58(v51, (v2 + v57), v35);
    v59 = type metadata accessor for OwnershipChangeRequestMessage(0);
    sub_26C3DDD48(v234 + *(v59 + 36), v25, &qword_280497458, &unk_26C46D3F0);
    v60 = v236;
    v62 = v236 + 6;
    isa = v236[6].isa;
    v63 = (isa)(v25, 1, v26);
    v215 = isa;
    v229 = v51;
    if (v63 == 1)
    {
      *v34 = 0;
      v34[1] = 0;
      sub_26C46BD14();
      v64 = v26;
      v65 = (isa)(v25, 1, v26);
      v66 = v228;
      if (v65 != 1)
      {
        sub_26C3DE270(v25, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v64 = v26;
      sub_26C42B9BC(v25, v34, type metadata accessor for PBUUID);
      v66 = v228;
    }

    sub_26C40F3CC();
    sub_26C42BA24(v34, type metadata accessor for PBUUID);
    v211 = v234[7];
    v179[0] = *(v59 + 40);
    v71 = v231;
    sub_26C3DDD48(v234 + v179[0], v231, &qword_280497458, &unk_26C46D3F0);
    v72 = v64;
    v73 = v215;
    v74 = v215(v71, 1, v64);
    v179[1] = v62;
    if (v74 == 1)
    {
      v75 = v229;
      *v66 = 0;
      v66[1] = 0;
      sub_26C46BD14();
      v76 = v73(v71, 1, v72);
      v77 = v232;
      if (v76 != 1)
      {
        sub_26C3DE270(v71, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v75 = v229;
      sub_26C42B9BC(v71, v66, type metadata accessor for PBUUID);
      v77 = v232;
    }

    sub_26C40F3CC();
    sub_26C42BA24(v66, type metadata accessor for PBUUID);
    *(v77 + 3) = 0;
    sub_26C46BD14();
    v78 = v52[7];
    v79 = v60[7].isa;
    v236 = v60 + 7;
    v227 = v79;
    v79(&v77[v78], 1, 1, v72);
    v208 = v52[8];
    v79(&v77[v208], 1, 1, v72);
    v209 = v52[9];
    v79(&v77[v209], 1, 1, v72);
    *v77 = v210;
    v77[8] = v212;
    v80 = v226;
    v81 = v75;
    v82 = v217;
    v83 = v213;
    v213(v226, v81, v217);
    v84 = v223;
    v83(v223, v80, v82);
    v85 = v224;
    sub_26C40F280(v84, v224);
    v216 = v72;
    v86 = *(v230 + 8);
    v232 = (v230 + 8);
    v231 = v86;
    v86(v80, v82);
    sub_26C3DE270(&v77[v78], &qword_280497458, &unk_26C46D3F0);
    v228 = type metadata accessor for PBUUID;
    sub_26C42B9BC(v85, &v77[v78], type metadata accessor for PBUUID);
    v87 = &v77[v78];
    v88 = v227;
    v227(v87, 0, 1, v72);
    v83(v80, v235, v82);
    v83(v84, v80, v82);
    v89 = v85;
    sub_26C40F280(v84, v85);
    v231(v80, v82);
    v90 = v208;
    sub_26C3DE270(&v77[v208], &qword_280497458, &unk_26C46D3F0);
    sub_26C42B9BC(v89, &v77[v90], v228);
    v91 = &v77[v90];
    v92 = v216;
    v88(v91, 0, 1, v216);
    *(v77 + 3) = v211;
    v93 = v233;
    v83(v80, v233, v82);
    v83(v84, v80, v82);
    v94 = v84;
    v95 = v231;
    sub_26C40F280(v94, v89);
    v95(v80, v82);
    v95(v93, v82);
    v95(v235, v82);
    v95(v229, v82);
    v96 = v209;
    sub_26C3DE270(&v77[v209], &qword_280497458, &unk_26C46D3F0);
    sub_26C42B9BC(v89, &v77[v96], v228);
    v97 = v77;
    v227(&v77[v96], 0, 1, v92);
    v98 = v230;
    v99 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
    v100 = v220;
    swift_beginAccess();
    v101 = v100 + v99;
    v102 = v225;
    sub_26C3DDD48(v101, v225, &qword_280497430, &unk_26C46D3D0);
    if ((*(v98 + 48))(v102, 1, v82) == 1)
    {
      sub_26C3DE270(v102, &qword_280497430, &unk_26C46D3D0);
LABEL_27:
      if (qword_280497148 != -1)
      {
        swift_once();
      }

      v129 = sub_26C46BFA4();
      __swift_project_value_buffer(v129, qword_280498530);
      v130 = sub_26C46BF84();
      v131 = sub_26C46C3E4();
      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        *v132 = 0;
        _os_log_impl(&dword_26C3D6000, v130, v131, "SyncedModel: couldn't find participant for owner UUID when handling ownership change request", v132, 2u);
        MEMORY[0x26D6A18D0](v132, -1, -1);
      }

      sub_26C42BA24(v97, type metadata accessor for OwnershipHandoffRequestMessage);
      return;
    }

    v103 = v221;
    (*(v98 + 32))(v221, v102, v82);
    v104 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUIDsToParticipants;
    swift_beginAccess();
    v105 = *(v100 + v104);
    if (*(v105 + 16))
    {

      v106 = sub_26C42C210(v103);
      if (v107)
      {
        v108 = *(v105 + 56);
        v109 = (v218 + 16);
        v110 = *(v218 + 16);
        v229 = *(v218 + 72);
        v111 = v181;
        v112 = v219;
        v110(v181, v108 + v229 * v106, v219);

        if (qword_280497148 != -1)
        {
          swift_once();
        }

        v113 = sub_26C46BFA4();
        v114 = __swift_project_value_buffer(v113, qword_280498530);
        v115 = v203;
        v233 = v110;
        v110(v203, v111, v112);
        v230 = v114;
        v116 = sub_26C46BF84();
        v117 = sub_26C46C404();
        v118 = os_log_type_enabled(v116, v117);
        v235 = v109;
        if (v118)
        {
          v119 = swift_slowAlloc();
          v228 = swift_slowAlloc();
          aBlock[0] = v228;
          *v119 = 136315138;
          v120 = v226;
          sub_26C46BCC4();
          sub_26C431280(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v121 = sub_26C46C704();
          v122 = v97;
          v123 = v115;
          v125 = v124;
          v231(v120, v82);
          v126 = v123;
          v97 = v122;
          v236 = *(v218 + 8);
          (v236)(v126, v219);
          v127 = sub_26C3E80A8(v121, v125, aBlock);

          *(v119 + 4) = v127;
          _os_log_impl(&dword_26C3D6000, v116, v117, "SyncedModel: Authority requesting ownership of model owned by %s", v119, 0xCu);
          v128 = v228;
          __swift_destroy_boxed_opaque_existential_1(v228);
          MEMORY[0x26D6A18D0](v128, -1, -1);
          MEMORY[0x26D6A18D0](v119, -1, -1);
        }

        else
        {

          v236 = *(v218 + 8);
          (v236)(v115, v112);
        }

        v133 = v207;
        v134 = v206;
        v135 = type metadata accessor for SyncMessage.OneOf_Contents(0);
        v136 = *(*(v135 - 8) + 56);
        v136(v133, 1, 1, v135);
        sub_26C46BD14();
        sub_26C42C130(v97, v134, type metadata accessor for OwnershipHandoffRequestMessage);
        sub_26C3DE270(v133, &qword_280497650, &unk_26C46D930);
        sub_26C42B9BC(v134, v133, type metadata accessor for OwnershipHandoffRequestMessage);
        swift_storeEnumTagMultiPayload();
        v136(v133, 0, 1, v135);
        sub_26C431280(&qword_280497660, type metadata accessor for SyncMessage, &unk_26C47073C);
        v137 = sub_26C46BE64();
        v138 = v181;
        v139 = v137;
        v141 = v140;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497668, &unk_26C46E530);
        v142 = v218;
        v143 = (*(v218 + 80) + 32) & ~*(v218 + 80);
        v144 = swift_allocObject();
        *(v144 + 16) = xmmword_26C46D760;
        v145 = v138;
        v146 = v219;
        (v233)(v144 + v143, v145, v219);
        v147 = sub_26C3FD100(v144);
        swift_setDeallocating();
        v228 = (v142 + 8);
        (v236)(v144 + v143, v146);
        swift_deallocClassInstance();
        v148 = v187;
        *v187 = v147;
        v149 = v189;
        v150 = v191;
        (*(v189 + 104))(v148, *MEMORY[0x277CCB268], v191);
        v151 = v188;
        (*(v149 + 16))(v188 + *(v182 + 20), v148, v150);
        *v151 = v139;
        v151[1] = v141;
        v152 = v222;
        swift_beginAccess();
        v153 = *(v152 + 16);
        v230 = v139;
        v229 = v141;
        sub_26C3DDDB0(v139, v141);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v152 + 16) = v153;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v153 = sub_26C42BE38(0, v153[2] + 1, 1, v153, &qword_280497B88, &qword_26C46E528, type metadata accessor for SyncedModelManager.MessageWrapper);
          *(v222 + 16) = v153;
        }

        v156 = v153[2];
        v155 = v153[3];
        if (v156 >= v155 >> 1)
        {
          v153 = sub_26C42BE38((v155 > 1), v156 + 1, 1, v153, &qword_280497B88, &qword_26C46E528, type metadata accessor for SyncedModelManager.MessageWrapper);
        }

        v153[2] = v156 + 1;
        sub_26C42B9BC(v151, v153 + ((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v156, type metadata accessor for SyncedModelManager.MessageWrapper);
        *(v222 + 16) = v153;
        swift_endAccess();
        (*(v149 + 8))(v148, v150);
        v157 = v234;
        v158 = v186;
        sub_26C3DDD48(v234 + v179[0], v186, &qword_280497458, &unk_26C46D3F0);
        v159 = v216;
        v160 = v215;
        if (v215(v158, 1, v216) == 1)
        {
          v161 = v160;
          v162 = v183;
          *v183 = 0;
          v162[1] = 0;
          sub_26C46BD14();
          v163 = v161(v158, 1, v159);
          v164 = v180;
          if (v163 != 1)
          {
            sub_26C3DE270(v158, &qword_280497458, &unk_26C46D3F0);
          }
        }

        else
        {
          v162 = v183;
          sub_26C42B9BC(v158, v183, type metadata accessor for PBUUID);
          v164 = v180;
        }

        sub_26C40F3CC();
        sub_26C42BA24(v162, type metadata accessor for PBUUID);
        v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497330, &unk_26C46D120);
        v166 = *(v165 + 48);
        v167 = v192;
        (v233)(v192, v205, v219);
        sub_26C42C130(v157, v167 + v166, type metadata accessor for OwnershipChangeRequestMessage);
        (*(*(v165 - 8) + 56))(v167, 0, 1, v165);
        v168 = v220;
        swift_beginAccess();
        sub_26C3D8FA0(v167, v164);
        swift_endAccess();
        v234 = *(v222 + 40);
        v169 = v193;
        sub_26C46C0E4();
        v170 = v194;
        sub_26C46C104();
        v235 = *(v195 + 8);
        (v235)(v169, v202);
        v171 = v206;
        sub_26C42C130(v97, v206, type metadata accessor for OwnershipHandoffRequestMessage);
        v172 = (*(v184 + 80) + 24) & ~*(v184 + 80);
        v173 = swift_allocObject();
        *(v173 + 16) = v168;
        sub_26C42B9BC(v171, v173 + v172, type metadata accessor for OwnershipHandoffRequestMessage);
        aBlock[4] = sub_26C431164;
        aBlock[5] = v173;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_26C3DF384;
        aBlock[3] = &block_descriptor_112;
        v174 = _Block_copy(aBlock);

        v175 = v196;
        sub_26C46C0C4();
        aBlock[6] = MEMORY[0x277D84F90];
        sub_26C431280(&qword_2804973F8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497400, &qword_26C46D290);
        sub_26C3FBC1C(&qword_280497408, &qword_280497400, &qword_26C46D290, MEMORY[0x277D83970]);
        v176 = v198;
        v177 = v201;
        sub_26C46C484();
        v178 = v234;
        MEMORY[0x26D6A0E30](v170, v175, v176, v174);
        _Block_release(v174);

        sub_26C3DDEA8(v230, v229);
        (*(v200 + 8))(v176, v177);
        (*(v197 + 8))(v175, v199);
        (v235)(v170, v202);
        (v236)(v181, v219);
        v231(v221, v217);
        sub_26C42BA24(v207, type metadata accessor for SyncMessage);
        sub_26C42BA24(v97, type metadata accessor for OwnershipHandoffRequestMessage);

        return;
      }
    }

    v95(v103, v82);
    goto LABEL_27;
  }

  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v67 = sub_26C46BFA4();
  __swift_project_value_buffer(v67, qword_280498530);
  v236 = sub_26C46BF84();
  v68 = sub_26C46C3E4();
  if (os_log_type_enabled(v236, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_26C3D6000, v236, v68, "SyncedModel: Asking owner for handoff but model is not associated with a manager", v69, 2u);
    MEMORY[0x26D6A18D0](v69, -1, -1);
  }

  v70 = v236;
}

void sub_26C41E638(uint64_t a1)
{
  v2 = v1;
  v109 = type metadata accessor for OwnershipChangeReplyMessage(0);
  MEMORY[0x28223BE20](v109);
  v110 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497308, &unk_26C46D100);
  MEMORY[0x28223BE20](v5 - 8);
  v105 = &v100 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v108 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v102 = &v100 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = (&v100 - v12);
  v111 = type metadata accessor for PBUUID(0);
  v113 = *(v111 - 8);
  v14 = MEMORY[0x28223BE20](v111);
  v106 = (&v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v104 = (&v100 - v17);
  MEMORY[0x28223BE20](v16);
  v19 = &v100 - v18;
  v114 = sub_26C46BB54();
  v112 = *(v114 - 8);
  v20 = MEMORY[0x28223BE20](v114);
  v107 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v103 = &v100 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v100 - v24;
  v26 = type metadata accessor for CachedOwnershipRequest(0);
  isa = v26[-1].isa;
  v117 = v26;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v101 = &v100 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v100 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v37 = (&v100 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v100 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v100 - v41;
  v43 = *(a1 + 16);
  v115 = a1;
  sub_26C41F4FC(v43, *(a1 + 24), v120);
  if (!v120[0])
  {
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v53 = sub_26C46BFA4();
    __swift_project_value_buffer(v53, qword_280498530);
    v54 = sub_26C46BF84();
    v55 = sub_26C46C404();
    v56 = os_log_type_enabled(v54, v55);
    v13 = v114;
    if (v56)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_26C3D6000, v54, v55, "SyncedModel: Handling ownership request reply. Request was success!", v57, 2u);
      MEMORY[0x26D6A18D0](v57, -1, -1);
    }

    v58 = v112;
    (*(v112 + 16))(v42, v2 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v13);
    (*(v58 + 56))(v42, 0, 1, v13);
    v59 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
    swift_beginAccess();
    sub_26C3DDD48(v2 + v59, v40, &qword_280497430, &unk_26C46D3D0);
    swift_beginAccess();
    sub_26C3E9EB8(v42, v2 + v59);
    swift_endAccess();
    sub_26C3DDD48(v2 + v59, v37, &qword_280497430, &unk_26C46D3D0);
    sub_26C418F90(v40, v37);
    sub_26C3DE270(v37, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v40, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v42, &qword_280497430, &unk_26C46D3D0);
    *(v2 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter) = *(v115 + 28);
    v60 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestsAwaitingReply;
    swift_beginAccess();
    v25 = *(v2 + v60);
    v61 = 1 << v25[32];
    v62 = -1;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    v63 = v62 & *(v25 + 8);
    v19 = ((v61 + 63) >> 6);

    v29 = 0;
    while (v63)
    {
      v64 = v29;
LABEL_21:
      v65 = __clz(__rbit64(v63));
      v63 &= v63 - 1;
      sub_26C42C130(*(v25 + 7) + *(isa + 9) * (v65 | (v64 << 6)), v33, type metadata accessor for CachedOwnershipRequest);
      v13 = *&v33[SHIDWORD(v117[2].isa)];

      sub_26C42BA24(v33, type metadata accessor for CachedOwnershipRequest);
      v118 = 0;
      v13(&v118);
    }

    while (1)
    {
      v64 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v64 >= v19)
      {

        *(v2 + v60) = MEMORY[0x277D84F98];

        sub_26C418080();
        return;
      }

      v63 = *&v25[8 * v64 + 64];
      ++v29;
      if (v63)
      {
        v29 = v64;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_49:
    swift_once();
    goto LABEL_4;
  }

  if (v120[0] != 1)
  {
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v66 = sub_26C46BFA4();
    __swift_project_value_buffer(v66, qword_280498530);
    v117 = sub_26C46BF84();
    v67 = sub_26C46C3E4();
    if (os_log_type_enabled(v117, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_26C3D6000, v117, v67, "SyncedModel: got timedOut result when paring OwnershipRequestReplyMessage", v68, 2u);
      MEMORY[0x26D6A18D0](v68, -1, -1);
    }

    v69 = v117;

    return;
  }

  if (qword_280497148 != -1)
  {
    goto LABEL_49;
  }

LABEL_4:
  v44 = sub_26C46BFA4();
  __swift_project_value_buffer(v44, qword_280498530);
  v45 = sub_26C46BF84();
  v46 = sub_26C46C404();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_26C3D6000, v45, v46, "SyncedModel: Handling ownership request reply. Request was refused.", v47, 2u);
    MEMORY[0x26D6A18D0](v47, -1, -1);
  }

  v48 = *(v109 + 36);
  sub_26C3DDD48(v115 + v48, v13, &qword_280497458, &unk_26C46D3F0);
  v49 = v113 + 48;
  v50 = *(v113 + 48);
  v51 = v111;
  v52 = v50(v13, 1, v111);
  v113 = v49;
  if (v52 == 1)
  {
    *v19 = 0;
    *(v19 + 1) = 0;
    sub_26C46BD14();
    if (v50(v13, 1, v51) != 1)
    {
      sub_26C3DE270(v13, &qword_280497458, &unk_26C46D3F0);
    }
  }

  else
  {
    sub_26C42B9BC(v13, v19, type metadata accessor for PBUUID);
  }

  sub_26C40F3CC();
  sub_26C42BA24(v19, type metadata accessor for PBUUID);
  v70 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestsAwaitingReply;
  swift_beginAccess();
  v71 = *(v2 + v70);
  v72 = v114;
  v73 = v110;
  if (*(v71 + 16))
  {

    v74 = sub_26C42C210(v25);
    if (v75)
    {
      sub_26C42C130(*(v71 + 56) + *(isa + 9) * v74, v29, type metadata accessor for CachedOwnershipRequest);
      v76 = *(v112 + 8);
      v76(v25, v72);

      v77 = v101;
      sub_26C42B9BC(v29, v101, type metadata accessor for CachedOwnershipRequest);
      v78 = *(v77 + SHIDWORD(v117[2].isa));
      LOBYTE(v119[0]) = 1;
      v78(v119);
      v79 = v102;
      sub_26C3DDD48(v115 + v48, v102, &qword_280497458, &unk_26C46D3F0);
      v80 = v111;
      if (v50(v79, 1, v111) == 1)
      {
        v81 = v104;
        *v104 = 0;
        v81[1] = 0;
        sub_26C46BD14();
        v82 = v50(v79, 1, v80);
        v83 = v105;
        v84 = v103;
        if (v82 != 1)
        {
          sub_26C3DE270(v79, &qword_280497458, &unk_26C46D3F0);
        }
      }

      else
      {
        v81 = v104;
        sub_26C42B9BC(v79, v104, type metadata accessor for PBUUID);
        v83 = v105;
        v84 = v103;
      }

      sub_26C40F3CC();
      sub_26C42BA24(v81, type metadata accessor for PBUUID);
      swift_beginAccess();
      sub_26C42C948(v84, v83);
      v76(v84, v114);
      sub_26C3DE270(v83, &qword_280497308, &unk_26C46D100);
      swift_endAccess();
      v92 = type metadata accessor for CachedOwnershipRequest;
      v93 = v77;
      goto LABEL_47;
    }
  }

  v85 = *(v112 + 8);
  v85(v25, v72);
  sub_26C42C130(v115, v73, type metadata accessor for OwnershipChangeReplyMessage);
  v86 = sub_26C46BF84();
  v87 = sub_26C46C3E4();
  if (!os_log_type_enabled(v86, v87))
  {

    v92 = type metadata accessor for OwnershipChangeReplyMessage;
    v93 = v73;
LABEL_47:
    sub_26C42BA24(v93, v92);
    return;
  }

  v88 = swift_slowAlloc();
  v117 = swift_slowAlloc();
  v119[0] = v117;
  *v88 = 136315138;
  v89 = v108;
  sub_26C3DDD48(v73 + *(v109 + 36), v108, &qword_280497458, &unk_26C46D3F0);
  v90 = v111;
  if (v50(v89, 1, v111) == 1)
  {
    v91 = v106;
    *v106 = 0;
    v91[1] = 0;
    sub_26C46BD14();
    if (v50(v89, 1, v90) != 1)
    {
      sub_26C3DE270(v89, &qword_280497458, &unk_26C46D3F0);
    }
  }

  else
  {
    v91 = v106;
    sub_26C42B9BC(v89, v106, type metadata accessor for PBUUID);
  }

  v94 = v107;
  sub_26C40F3CC();
  sub_26C42BA24(v91, type metadata accessor for PBUUID);
  v95 = sub_26C46BB04();
  v97 = v96;
  v85(v94, v114);
  sub_26C42BA24(v110, type metadata accessor for OwnershipChangeReplyMessage);
  v98 = sub_26C3E80A8(v95, v97, v119);

  *(v88 + 4) = v98;
  _os_log_impl(&dword_26C3D6000, v86, v87, "SyncedModel: got OwnershipRequestReply for unknown request %s", v88, 0xCu);
  v99 = v117;
  __swift_destroy_boxed_opaque_existential_1(v117);
  MEMORY[0x26D6A18D0](v99, -1, -1);
  MEMORY[0x26D6A18D0](v88, -1, -1);
}

void sub_26C41F4FC(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v5 = sub_26C46BFA4();
    __swift_project_value_buffer(v5, qword_280498530);
    v6 = sub_26C46BF84();
    v7 = sub_26C46C3E4();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_11;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "SyncedModel: unrecognized OwnershipChangeResultType";
    goto LABEL_10;
  }

  if (a1 > 4)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        if (qword_280497148 != -1)
        {
          swift_once();
        }

        v11 = sub_26C46BFA4();
        __swift_project_value_buffer(v11, qword_280498530);
        v6 = sub_26C46BF84();
        v7 = sub_26C46C3E4();
        if (!os_log_type_enabled(v6, v7))
        {
          goto LABEL_11;
        }

        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "SyncedModel: found relesaeFailedNotOwner reply type when determining OwnershipChangeResultType";
      }

      else
      {
        if (qword_280497148 != -1)
        {
          swift_once();
        }

        v13 = sub_26C46BFA4();
        __swift_project_value_buffer(v13, qword_280498530);
        v6 = sub_26C46BF84();
        v7 = sub_26C46C3E4();
        if (!os_log_type_enabled(v6, v7))
        {
          goto LABEL_11;
        }

        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "SyncedModel: found notAuthority reply type when determining OwnershipChangeResultType";
      }
    }

    else
    {
      if (a1 == 5)
      {
        goto LABEL_12;
      }

      if (qword_280497148 != -1)
      {
        swift_once();
      }

      v10 = sub_26C46BFA4();
      __swift_project_value_buffer(v10, qword_280498530);
      v6 = sub_26C46BF84();
      v7 = sub_26C46C3E4();
      if (!os_log_type_enabled(v6, v7))
      {
LABEL_11:

LABEL_12:
        v4 = 1;
        goto LABEL_13;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "SyncedModel: found releaseSuccessful reply type when determining OwnershipChangeResultType";
    }

LABEL_10:
    _os_log_impl(&dword_26C3D6000, v6, v7, v9, v8, 2u);
    MEMORY[0x26D6A18D0](v8, -1, -1);
    goto LABEL_11;
  }

  if (a1 > 2)
  {
    v4 = 1;
    goto LABEL_13;
  }

  if ((a1 - 1) >= 2)
  {
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v12 = sub_26C46BFA4();
    __swift_project_value_buffer(v12, qword_280498530);
    v6 = sub_26C46BF84();
    v7 = sub_26C46C3E4();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_11;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "SyncedModel: found invalid reply type when determining OwnershipChangeResultType";
    goto LABEL_10;
  }

  v4 = 0;
LABEL_13:
  *a3 = v4;
}

void sub_26C41F870(uint64_t a1, uint64_t a2)
{
  v160 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v136[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  MEMORY[0x28223BE20](v7 - 8);
  v151 = &v136[-v8];
  v149 = type metadata accessor for PBUUID(0);
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v150 = &v136[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B78, "n6");
  MEMORY[0x28223BE20](v145);
  v146 = &v136[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v144 = &v136[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v154 = &v136[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v155 = &v136[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v136[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v136[-v21];
  v23 = sub_26C46BB54();
  v158 = *(v23 - 8);
  v159 = v23;
  v24 = MEMORY[0x28223BE20](v23);
  v147 = &v136[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v153 = &v136[-v26];
  v27 = sub_26C46BCD4();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v136[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v136[-v33];
  MEMORY[0x28223BE20](v32);
  v36 = &v136[-v35];
  v157 = a1;
  v37 = *(a1 + 12);
  v161 = v2;
  v38 = *(v2 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter);
  if (v37 < v38)
  {
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v39 = sub_26C46BFA4();
    __swift_project_value_buffer(v39, qword_280498530);
    (*(v28 + 16))(v36, v160, v27);

    v40 = sub_26C46BF84();
    v41 = sub_26C46C404();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v152 = v27;
      v43 = v42;
      v160 = swift_slowAlloc();
      v162 = v160;
      *v43 = 136315394;
      v157 = v40;
      v44 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
      v45 = v161;
      swift_beginAccess();
      v46 = v158;
      v47 = v159;
      v48 = *(v158 + 16);
      LODWORD(v161) = v41;
      v49 = v153;
      v48(v153, v45 + v44, v159);
      sub_26C431280(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v50 = sub_26C46C704();
      v52 = v51;
      v53 = *(v46 + 8);
      v53(v49, v47);
      v54 = sub_26C3E80A8(v50, v52, &v162);

      *(v43 + 4) = v54;
      *(v43 + 12) = 2080;
      sub_26C46BCC4();
      v55 = sub_26C46C704();
      v57 = v56;
      v53(v49, v47);
      (*(v28 + 8))(v36, v152);
      v58 = sub_26C3E80A8(v55, v57, &v162);

      *(v43 + 14) = v58;
      v59 = "SyncedModel: Received ownership change broadcast for model:%s from participant:%s but was for previous ownership count";
LABEL_6:
      v60 = v157;
      _os_log_impl(&dword_26C3D6000, v157, v161, v59, v43, 0x16u);
      v61 = v160;
      swift_arrayDestroy();
      MEMORY[0x26D6A18D0](v61, -1, -1);
      MEMORY[0x26D6A18D0](v43, -1, -1);

      return;
    }

    (*(v28 + 8))(v36, v27);
    return;
  }

  v143 = v6;
  v156 = v28;
  v152 = v27;
  if (v37 != v38 || (sub_26C40F708(v22), v62 = *(v158 + 48), v63 = v62(v22, 1, v159), sub_26C3DE270(v22, &qword_280497430, &unk_26C46D3D0), v63 != 1) || (v64 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID, v65 = v161, swift_beginAccess(), sub_26C3DDD48(v65 + v64, v20, &qword_280497430, &unk_26C46D3D0), v66 = v62(v20, 1, v159), sub_26C3DE270(v20, &qword_280497430, &unk_26C46D3D0), v66 == 1))
  {
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v67 = sub_26C46BFA4();
    __swift_project_value_buffer(v67, qword_280498530);
    v68 = v156;
    v69 = *(v156 + 16);
    v142 = v156 + 16;
    v141 = v69;
    v69(v31, v160, v27);

    v70 = sub_26C46BF84();
    v71 = sub_26C46C404();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v140 = v72;
      v139 = swift_slowAlloc();
      v163 = v139;
      *v72 = 136315394;
      v138 = v70;
      v73 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
      v74 = v161;
      swift_beginAccess();
      v137 = v71;
      v75 = v158;
      v76 = v159;
      v77 = v153;
      (*(v158 + 16))(v153, v74 + v73, v159);
      sub_26C431280(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v78 = sub_26C46C704();
      v80 = v79;
      v81 = v27;
      v82 = *(v75 + 8);
      v82(v77, v76);
      v83 = sub_26C3E80A8(v78, v80, &v163);

      v84 = v140;
      *(v140 + 1) = v83;
      *(v84 + 6) = 2080;
      sub_26C46BCC4();
      v85 = sub_26C46C704();
      v87 = v86;
      v82(v77, v76);
      (*(v156 + 8))(v31, v81);
      v88 = sub_26C3E80A8(v85, v87, &v163);

      v89 = v140;
      *(v140 + 14) = v88;
      v90 = v138;
      _os_log_impl(&dword_26C3D6000, v138, v137, "SyncedModel: Received ownership change broadcast for model:%s from participant:%s", v89, 0x16u);
      v91 = v139;
      swift_arrayDestroy();
      MEMORY[0x26D6A18D0](v91, -1, -1);
      MEMORY[0x26D6A18D0](v89, -1, -1);
    }

    else
    {

      (*(v68 + 8))(v31, v27);
      v75 = v158;
      v76 = v159;
    }

    v92 = v154;
    v93 = v155;
    v94 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
    v95 = v161;
    swift_beginAccess();
    sub_26C3DDD48(v95 + v94, v93, &qword_280497430, &unk_26C46D3D0);
    (*(v75 + 16))(v92, v95 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v76);
    (*(v75 + 56))(v92, 0, 1, v76);
    v96 = *(v145 + 48);
    v97 = v146;
    sub_26C3DDD48(v93, v146, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DDD48(v92, &v97[v96], &qword_280497430, &unk_26C46D3D0);
    v98 = v92;
    v99 = *(v75 + 48);
    if (v99(v97, 1, v76) == 1)
    {
      sub_26C3DE270(v98, &qword_280497430, &unk_26C46D3D0);
      sub_26C3DE270(v93, &qword_280497430, &unk_26C46D3D0);
      v100 = v99(&v97[v96], 1, v76);
      v101 = v152;
      v102 = v149;
      v103 = v148;
      if (v100 == 1)
      {
        v104 = &qword_280497430;
        v105 = &unk_26C46D3D0;
LABEL_22:
        sub_26C3DE270(v97, v104, v105);
        v107 = v156;
        v108 = v151;
        v109 = v150;
LABEL_24:
        v113 = type metadata accessor for OwnershipChangeBroadcastMessage(0);
        sub_26C3DDD48(v157 + *(v113 + 36), v108, &qword_280497458, &unk_26C46D3F0);
        v114 = *(v103 + 48);
        if (v114(v108, 1, v102) == 1)
        {
          *v109 = 0;
          v109[1] = 0;
          sub_26C46BD14();
          if (v114(v108, 1, v102) != 1)
          {
            sub_26C3DE270(v108, &qword_280497458, &unk_26C46D3F0);
          }
        }

        else
        {
          sub_26C42B9BC(v108, v109, type metadata accessor for PBUUID);
        }

        v115 = v147;
        sub_26C40F3CC();
        sub_26C42BA24(v109, type metadata accessor for PBUUID);
        v116 = v143;
        v141(v143, v160, v101);
        (*(v107 + 56))(v116, 0, 1, v101);
        swift_beginAccess();
        sub_26C3D8BB4(v116, v115);
        swift_endAccess();
        return;
      }
    }

    else
    {
      v106 = v144;
      sub_26C3DDD48(v97, v144, &qword_280497430, &unk_26C46D3D0);
      if (v99(&v97[v96], 1, v76) != 1)
      {
        v110 = v153;
        (*(v75 + 32))(v153, &v97[v96], v76);
        sub_26C431280(&qword_2804975A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        sub_26C46C1C4();
        v111 = v97;
        v112 = *(v75 + 8);
        v112(v110, v76);
        sub_26C3DE270(v154, &qword_280497430, &unk_26C46D3D0);
        sub_26C3DE270(v155, &qword_280497430, &unk_26C46D3D0);
        v112(v106, v76);
        sub_26C3DE270(v111, &qword_280497430, &unk_26C46D3D0);
        v101 = v152;
        v107 = v156;
        v108 = v151;
        v109 = v150;
        v102 = v149;
        v103 = v148;
        goto LABEL_24;
      }

      sub_26C3DE270(v154, &qword_280497430, &unk_26C46D3D0);
      sub_26C3DE270(v155, &qword_280497430, &unk_26C46D3D0);
      (*(v75 + 8))(v106, v76);
      v101 = v152;
      v102 = v149;
      v103 = v148;
    }

    v104 = &qword_280497B78;
    v105 = "n6";
    goto LABEL_22;
  }

  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v117 = sub_26C46BFA4();
  __swift_project_value_buffer(v117, qword_280498530);
  v118 = v156;
  (*(v156 + 16))(v34, v160, v27);

  v119 = sub_26C46BF84();
  v120 = sub_26C46C404();

  if (os_log_type_enabled(v119, v120))
  {
    v43 = swift_slowAlloc();
    v160 = swift_slowAlloc();
    v162 = v160;
    *v43 = 136315394;
    v157 = v119;
    v121 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
    v122 = v161;
    swift_beginAccess();
    v124 = v158;
    v123 = v159;
    v125 = *(v158 + 16);
    LODWORD(v161) = v120;
    v126 = v153;
    v125(v153, v122 + v121, v159);
    sub_26C431280(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v127 = sub_26C46C704();
    v129 = v128;
    v130 = *(v124 + 8);
    v130(v126, v123);
    v131 = sub_26C3E80A8(v127, v129, &v162);

    *(v43 + 4) = v131;
    *(v43 + 12) = 2080;
    sub_26C46BCC4();
    v132 = sub_26C46C704();
    v134 = v133;
    v130(v126, v123);
    (*(v118 + 8))(v34, v152);
    v135 = sub_26C3E80A8(v132, v134, &v162);

    *(v43 + 14) = v135;
    v59 = "SyncedModel: Received ownership change broadcast for model:%s from participant:%s but was for local releaseOwnership that conflicts with a valid handoff";
    goto LABEL_6;
  }

  (*(v118 + 8))(v34, v27);
}

void sub_26C420A44(void (*a1)(void, void, void, void), uint64_t a2)
{
  v45 = a1;
  v46 = a2;
  v3 = sub_26C46BB54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v43 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B78, "n6");
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v44 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  v18 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
  swift_beginAccess();
  sub_26C3DDD48(v2 + v18, v17, &qword_280497430, &unk_26C46D3D0);
  v19 = *(v4 + 16);
  v47 = v2;
  v19(v15, v2 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v3);
  (*(v4 + 56))(v15, 0, 1, v3);
  v20 = *(v7 + 56);
  sub_26C3DDD48(v17, v9, &qword_280497430, &unk_26C46D3D0);
  sub_26C3DDD48(v15, &v9[v20], &qword_280497430, &unk_26C46D3D0);
  v21 = *(v4 + 48);
  if (v21(v9, 1, v3) == 1)
  {
    sub_26C3DE270(v15, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v17, &qword_280497430, &unk_26C46D3D0);
    v22 = v21(&v9[v20], 1, v3);
    v23 = v47;
    if (v22 == 1)
    {
      sub_26C3DE270(v9, &qword_280497430, &unk_26C46D3D0);
      v24 = v46;
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v25 = v44;
  sub_26C3DDD48(v9, v44, &qword_280497430, &unk_26C46D3D0);
  if (v21(&v9[v20], 1, v3) == 1)
  {
    sub_26C3DE270(v15, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v17, &qword_280497430, &unk_26C46D3D0);
    (*(v4 + 8))(v25, v3);
LABEL_6:
    sub_26C3DE270(v9, &qword_280497B78, "n6");
    v24 = v46;
LABEL_7:
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v26 = sub_26C46BFA4();
    __swift_project_value_buffer(v26, qword_280498530);
    v27 = sub_26C46BF84();
    v28 = sub_26C46C404();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_12;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "SyncedModel: Handling ownership handoff request. Participant is not owner. Refusing.";
    goto LABEL_11;
  }

  v31 = v43;
  (*(v4 + 32))(v43, &v9[v20], v3);
  sub_26C431280(&qword_2804975A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v32 = v25;
  v33 = sub_26C46C1C4();
  v34 = *(v4 + 8);
  v34(v31, v3);
  sub_26C3DE270(v15, &qword_280497430, &unk_26C46D3D0);
  sub_26C3DE270(v17, &qword_280497430, &unk_26C46D3D0);
  v34(v32, v3);
  sub_26C3DE270(v9, &qword_280497430, &unk_26C46D3D0);
  v24 = v46;
  v23 = v47;
  if ((v33 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_14:
  v35 = *(v23 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestHandler);
  if (!v35)
  {
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v42 = sub_26C46BFA4();
    __swift_project_value_buffer(v42, qword_280498530);
    v27 = sub_26C46BF84();
    v28 = sub_26C46C404();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_12;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "SyncedModel: Handling ownership handoff request. No ownership request handler. Refusing.";
LABEL_11:
    _os_log_impl(&dword_26C3D6000, v27, v28, v30, v29, 2u);
    MEMORY[0x26D6A18D0](v29, -1, -1);
LABEL_12:

    sub_26C42113C(v45, v24, 0);
    return;
  }

  v36 = *(v23 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestHandler + 8);

  v37 = v35(v24);
  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v38 = sub_26C46BFA4();
  __swift_project_value_buffer(v38, qword_280498530);
  v39 = sub_26C46BF84();
  v40 = sub_26C46C404();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 67109120;
    *(v41 + 4) = v37 & 1;
    _os_log_impl(&dword_26C3D6000, v39, v40, "SyncedModel: Handling ownership handoff request. Ownership request handler result is allowed:%{BOOL}d", v41, 8u);
    MEMORY[0x26D6A18D0](v41, -1, -1);
  }

  sub_26C42113C(v45, v24, v37 & 1);
  sub_26C3DD730(v35, v36);
}

void sub_26C42113C(void (*a1)(void, void, void, void), uint64_t a2, int a3)
{
  v4 = v3;
  v110 = a3;
  v95 = a2;
  v114 = a1;
  v96 = type metadata accessor for SyncedModelManager.MessageWrapper(0);
  v99 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v6 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C46BCF4();
  v98 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v97 = (&v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111 = type metadata accessor for SyncMessage(0);
  MEMORY[0x28223BE20](v111);
  v113 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v116 = (&v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v14 = &v92 - v13;
  v15 = type metadata accessor for PBUUID(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v117 = (&v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v17);
  v115 = (&v92 - v20);
  MEMORY[0x28223BE20](v19);
  v22 = (&v92 - v21);
  v23 = sub_26C46BB54();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v122 = (&v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x28223BE20](v25);
  v108 = &v92 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v118 = &v92 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v121 = &v92 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = (&v92 - v33);
  v106 = type metadata accessor for OwnershipHandoffReplyMessage(0);
  v35 = MEMORY[0x28223BE20](v106);
  v109 = &v92 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v107 = &v92 - v37;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v93 = v6;
    v94 = v7;
    v102 = *(v4 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type);
    v101 = *(v4 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type + 8);
    v38 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
    swift_beginAccess();
    v105 = v24;
    v39 = *(v24 + 16);
    v104 = v24 + 16;
    v103 = v39;
    v39(v34, (v4 + v38), v23);
    v40 = type metadata accessor for OwnershipHandoffRequestMessage(0);
    v41 = v114;
    sub_26C3DDD48(v114 + *(v40 + 32), v14, &qword_280497458, &unk_26C46D3F0);
    v119 = v16;
    v42 = *(v16 + 48);
    v43 = v42(v14, 1, v15);
    v120 = v15;
    if (v43 == 1)
    {
      *v22 = 0;
      v22[1] = 0;
      sub_26C46BD14();
      if (v42(v14, 1, v15) != 1)
      {
        sub_26C3DE270(v14, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      sub_26C42B9BC(v14, v22, type metadata accessor for PBUUID);
    }

    sub_26C40F3CC();
    sub_26C42BA24(v22, type metadata accessor for PBUUID);
    v48 = v116;
    sub_26C3DDD48(v41 + *(v40 + 36), v116, &qword_280497458, &unk_26C46D3F0);
    v49 = v120;
    if (v42(v48, 1, v120) == 1)
    {
      v50 = v115;
      *v115 = 0;
      v50[1] = 0;
      sub_26C46BD14();
      v51 = v42(v48, 1, v49);
      v52 = v119;
      if (v51 != 1)
      {
        sub_26C3DE270(v48, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v50 = v115;
      sub_26C42B9BC(v48, v115, type metadata accessor for PBUUID);
      v52 = v119;
    }

    sub_26C40F3CC();
    sub_26C42BA24(v50, type metadata accessor for PBUUID);
    v53 = v107;
    v107[9] = 0;
    v54 = v106;
    sub_26C46BD14();
    v55 = v54[7];
    v56 = *(v52 + 56);
    v119 = v52 + 56;
    v114 = v56;
    v56(v53 + v55, 1, 1, v49);
    v100 = v54[8];
    v56(v53 + v100, 1, 1, v49);
    v106 = v54[9];
    v56(v53 + v106, 1, 1, v49);
    *v53 = v102;
    *(v53 + 8) = v101;
    v57 = v108;
    v58 = v49;
    v59 = v103;
    v103(v108, v34, v23);
    v60 = v122;
    v59(v122, v57, v23);
    sub_26C40F280(v60, v117);
    v102 = v34;
    v115 = *(v105 + 8);
    (v115)(v57, v23);
    sub_26C3DE270(v53 + v55, &qword_280497458, &unk_26C46D3F0);
    v61 = v58;
    v116 = type metadata accessor for PBUUID;
    v62 = v117;
    sub_26C42B9BC(v117, v53 + v55, type metadata accessor for PBUUID);
    v63 = v114;
    v114(v53 + v55, 0, 1, v61);
    v59(v57, v121, v23);
    v64 = v122;
    v59(v122, v57, v23);
    sub_26C40F280(v64, v62);
    (v115)(v57, v23);
    v65 = v100;
    sub_26C3DE270(v53 + v100, &qword_280497458, &unk_26C46D3F0);
    sub_26C42B9BC(v62, v53 + v65, v116);
    v63(v53 + v65, 0, 1, v120);
    *(v53 + 9) = v110 & 1;
    v66 = v118;
    v59(v57, v118, v23);
    v67 = v122;
    v59(v122, v57, v23);
    sub_26C40F280(v67, v62);
    v68 = v115;
    (v115)(v57, v23);
    v68(v66, v23);
    v68(v121, v23);
    v68(v102, v23);
    v69 = v106;
    sub_26C3DE270(v53 + v106, &qword_280497458, &unk_26C46D3F0);
    sub_26C42B9BC(v62, v53 + v69, v116);
    v114(v53 + v69, 0, 1, v120);
    v70 = type metadata accessor for SyncMessage.OneOf_Contents(0);
    v71 = *(*(v70 - 8) + 56);
    v72 = v113;
    v71(v113, 1, 1, v70);
    sub_26C46BD14();
    v73 = v109;
    sub_26C42C130(v53, v109, type metadata accessor for OwnershipHandoffReplyMessage);
    sub_26C3DE270(v72, &qword_280497650, &unk_26C46D930);
    sub_26C42B9BC(v73, v72, type metadata accessor for OwnershipHandoffReplyMessage);
    swift_storeEnumTagMultiPayload();
    v71(v72, 0, 1, v70);
    sub_26C431280(&qword_280497660, type metadata accessor for SyncMessage, &unk_26C47073C);
    v74 = sub_26C46BE64();
    v76 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497668, &unk_26C46E530);
    v77 = sub_26C46BCD4();
    v78 = *(v77 - 8);
    v79 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_26C46D760;
    (*(v78 + 16))(v80 + v79, v95, v77);
    v81 = sub_26C3FD100(v80);
    swift_setDeallocating();
    (*(v78 + 8))(v80 + v79, v77);
    swift_deallocClassInstance();
    v82 = v97;
    *v97 = v81;
    v83 = v98;
    v84 = v94;
    (*(v98 + 104))(v82, *MEMORY[0x277CCB268], v94);
    v85 = v93;
    (*(v83 + 16))(v93 + *(v96 + 20), v82, v84);
    *v85 = v74;
    v85[1] = v76;
    v86 = Strong;
    swift_beginAccess();
    v87 = *(v86 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v86 + 16) = v87;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v87 = sub_26C42BE38(0, v87[2] + 1, 1, v87, &qword_280497B88, &qword_26C46E528, type metadata accessor for SyncedModelManager.MessageWrapper);
      *(v86 + 16) = v87;
    }

    v89 = v99;
    v91 = v87[2];
    v90 = v87[3];
    if (v91 >= v90 >> 1)
    {
      v87 = sub_26C42BE38((v90 > 1), v91 + 1, 1, v87, &qword_280497B88, &qword_26C46E528, type metadata accessor for SyncedModelManager.MessageWrapper);
    }

    v87[2] = v91 + 1;
    sub_26C42B9BC(v85, v87 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v91, type metadata accessor for SyncedModelManager.MessageWrapper);
    *(v86 + 16) = v87;
    swift_endAccess();
    (*(v83 + 8))(v82, v84);

    sub_26C42BA24(v113, type metadata accessor for SyncMessage);
    sub_26C42BA24(v53, type metadata accessor for OwnershipHandoffReplyMessage);
  }

  else
  {
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v44 = sub_26C46BFA4();
    __swift_project_value_buffer(v44, qword_280498530);
    v122 = sub_26C46BF84();
    v45 = sub_26C46C3E4();
    if (os_log_type_enabled(v122, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_26C3D6000, v122, v45, "SyncedModel: Replying to ownership handoff request but model is not associated with a manager", v46, 2u);
      MEMORY[0x26D6A18D0](v46, -1, -1);
    }

    v47 = v122;
  }
}

void sub_26C4221FC(uint64_t a1)
{
  v2 = type metadata accessor for OwnershipHandoffReplyMessage(0);
  MEMORY[0x28223BE20](v2);
  v87 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497328, &qword_26C46E550);
  MEMORY[0x28223BE20](v4 - 8);
  v77 = &v74 - v5;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497330, &unk_26C46D120);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v7 = &v74 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v80 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v76 = &v74 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v74 - v13;
  v15 = type metadata accessor for PBUUID(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v79 = (&v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (&v74 - v20);
  MEMORY[0x28223BE20](v19);
  v23 = (&v74 - v22);
  v24 = sub_26C46BB54();
  v25 = *(v24 - 8);
  v89 = v24;
  v90 = v25;
  v26 = MEMORY[0x28223BE20](v24);
  v78 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v74 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v74 - v31;
  v33 = type metadata accessor for OwnershipChangeRequestMessage(0);
  MEMORY[0x28223BE20](v33 - 8);
  v84 = &v74 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_26C46BCD4();
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v81 = v2;
  v82 = (&v74 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = *(v2 + 36);
  v86 = a1;
  sub_26C3DDD48(a1 + v36, v14, &qword_280497458, &unk_26C46D3F0);
  v37 = *(v16 + 48);
  if (v37(v14, 1, v15) == 1)
  {
    *v23 = 0;
    v23[1] = 0;
    sub_26C46BD14();
    if (v37(v14, 1, v15) != 1)
    {
      sub_26C3DE270(v14, &qword_280497458, &unk_26C46D3F0);
    }
  }

  else
  {
    sub_26C42B9BC(v14, v23, type metadata accessor for PBUUID);
  }

  sub_26C40F3CC();
  sub_26C42BA24(v23, type metadata accessor for PBUUID);
  v38 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestsAwaitingHandoffReply;
  v39 = v88;
  swift_beginAccess();
  v40 = *(v39 + v38);
  if (*(v40 + 16))
  {

    v41 = sub_26C42C210(v32);
    if (v42)
    {
      sub_26C3DDD48(*(v40 + 56) + *(v74 + 72) * v41, v7, &qword_280497330, &unk_26C46D120);
      v43 = *(v90 + 8);
      v44 = v32;
      v90 += 8;
      v45 = v43;
      v43(v44, v89);

      v46 = *(v75 + 48);
      (*(v83 + 32))(v82, v7, v85);
      sub_26C42B9BC(&v7[v46], v84, type metadata accessor for OwnershipChangeRequestMessage);
      v47 = v86 + v36;
      v48 = v86;
      v49 = v76;
      sub_26C3DDD48(v47, v76, &qword_280497458, &unk_26C46D3F0);
      if (v37(v49, 1, v15) == 1)
      {
        *v21 = 0;
        v21[1] = 0;
        sub_26C46BD14();
        if (v37(v49, 1, v15) != 1)
        {
          sub_26C3DE270(v49, &qword_280497458, &unk_26C46D3F0);
        }
      }

      else
      {
        sub_26C42B9BC(v49, v21, type metadata accessor for PBUUID);
      }

      sub_26C40F3CC();
      sub_26C42BA24(v21, type metadata accessor for PBUUID);
      swift_beginAccess();
      v65 = v77;
      sub_26C42CAFC(v30, v77);
      v45(v30, v89);
      sub_26C3DE270(v65, &qword_280497328, &qword_26C46E550);
      swift_endAccess();
      v66 = *(v48 + 9);
      if (*(v48 + 9))
      {
        v67 = 2;
      }

      else
      {
        v67 = 3;
      }

      if (qword_280497148 != -1)
      {
        swift_once();
      }

      v68 = sub_26C46BFA4();
      __swift_project_value_buffer(v68, qword_280498530);
      v69 = sub_26C46BF84();
      v70 = sub_26C46C404();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 67109120;
        *(v71 + 4) = v66;
        _os_log_impl(&dword_26C3D6000, v69, v70, "SyncedModel: Handling ownership handoff reply with result: %{BOOL}d", v71, 8u);
        MEMORY[0x26D6A18D0](v71, -1, -1);
      }

      v72 = v84;
      v73 = v82;
      sub_26C41AC88(v84, v82, v67, 1);
      sub_26C42BA24(v72, type metadata accessor for OwnershipChangeRequestMessage);
      (*(v83 + 8))(v73, v85);
      return;
    }
  }

  v50 = v90 + 8;
  v51 = *(v90 + 8);
  v51(v32, v89);
  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v52 = sub_26C46BFA4();
  __swift_project_value_buffer(v52, qword_280498530);
  v53 = v87;
  sub_26C42C130(v86, v87, type metadata accessor for OwnershipHandoffReplyMessage);
  v54 = sub_26C46BF84();
  v55 = sub_26C46C3E4();
  if (os_log_type_enabled(v54, v55))
  {
    v90 = v50;
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v91[0] = v57;
    *v56 = 136315138;
    v58 = v80;
    sub_26C3DDD48(v53 + *(v81 + 36), v80, &qword_280497458, &unk_26C46D3F0);
    if (v37(v58, 1, v15) == 1)
    {
      v59 = v79;
      *v79 = 0;
      v59[1] = 0;
      sub_26C46BD14();
      if (v37(v58, 1, v15) != 1)
      {
        sub_26C3DE270(v58, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v59 = v79;
      sub_26C42B9BC(v58, v79, type metadata accessor for PBUUID);
    }

    v60 = v78;
    sub_26C40F3CC();
    sub_26C42BA24(v59, type metadata accessor for PBUUID);
    v61 = sub_26C46BB04();
    v63 = v62;
    v51(v60, v89);
    sub_26C42BA24(v87, type metadata accessor for OwnershipHandoffReplyMessage);
    v64 = sub_26C3E80A8(v61, v63, v91);

    *(v56 + 4) = v64;
    _os_log_impl(&dword_26C3D6000, v54, v55, "SyncedModel: got handoff reply for unknown ownership request: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v57);
    MEMORY[0x26D6A18D0](v57, -1, -1);
    MEMORY[0x26D6A18D0](v56, -1, -1);
  }

  else
  {

    sub_26C42BA24(v53, type metadata accessor for OwnershipHandoffReplyMessage);
  }
}

uint64_t sub_26C422CF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_26C46BB54();
  __swift_allocate_value_buffer(v3, qword_2804985C0);
  v4 = __swift_project_value_buffer(v3, qword_2804985C0);
  sub_26C46BAF4();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C422E20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_26C46BB54();
  __swift_allocate_value_buffer(v3, qword_2804985D8);
  v4 = __swift_project_value_buffer(v3, qword_2804985D8);
  sub_26C46BAF4();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

SyncedModels::OwnershipRequestResult_optional __swiftcall OwnershipRequestResult.init(rawValue:)(SyncedModels::OwnershipRequestResult_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= SyncedModels_OwnershipRequestResult_unknownDefault)
  {
    value = SyncedModels_OwnershipRequestResult_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

uint64_t sub_26C422F70()
{
  sub_26C46C814();
  sub_26C46C834();
  return sub_26C46C844();
}

uint64_t sub_26C422FE4(uint64_t a1)
{
  sub_26C46C814();
  sub_26C46C834();
  return sub_26C46C844();
}

SyncedModels::SyncedModelStatus_optional __swiftcall SyncedModelStatus.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_26C42305C()
{
  result = qword_280497B00;
  if (!qword_280497B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497B00);
  }

  return result;
}

unint64_t sub_26C4230B4()
{
  result = qword_280497B08;
  if (!qword_280497B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497B08);
  }

  return result;
}

void sub_26C423144()
{
  v1 = v0;
  v2 = sub_26C46BB54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v6 = sub_26C46BFA4();
  __swift_project_value_buffer(v6, qword_280498530);

  v20 = sub_26C46BF84();
  v7 = sub_26C46C404();

  if (os_log_type_enabled(v20, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315394;
    v10 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v10, v2);
    sub_26C431280(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v11 = sub_26C46C704();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_26C3E80A8(v11, v13, &v21);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    if (*(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_ownershipChangedHandler))
    {
      v15 = 7562617;
    }

    else
    {
      v15 = 28526;
    }

    if (*(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_ownershipChangedHandler))
    {
      v16 = 0xE300000000000000;
    }

    else
    {
      v16 = 0xE200000000000000;
    }

    v17 = sub_26C3E80A8(v15, v16, &v21);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_26C3D6000, v20, v7, "SyncedModel[%s] ownershipChangedHandler was set:%s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A18D0](v9, -1, -1);
    MEMORY[0x26D6A18D0](v8, -1, -1);
  }

  else
  {
    v18 = v20;
  }
}

uint64_t sub_26C423454(unsigned __int8 *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B80, &unk_26C46E518);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v57 - v4;
  v6 = type metadata accessor for PendingOwnershipRequest(0);
  v64 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v57 - v10);
  v12 = sub_26C46BB54();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v62 = v16;
    v63 = v5;
    v61 = v15;
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v19 = sub_26C46BFA4();
    v20 = __swift_project_value_buffer(v19, qword_280498530);

    v60 = v20;
    v21 = sub_26C46BF84();
    v22 = sub_26C46C404();

    v23 = os_log_type_enabled(v21, v22);
    v59 = v13;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = v11;
      v66[0] = v57;
      *v24 = 136315394;
      v25 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
      swift_beginAccess();
      v26 = v18 + v25;
      v27 = v61;
      (*(v13 + 16))(v61, v26, v12);
      sub_26C431280(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v28 = sub_26C46C704();
      v29 = v13;
      v30 = v6;
      v31 = v9;
      v33 = v32;
      (*(v29 + 8))(v27, v12);
      v34 = sub_26C3E80A8(v28, v33, v66);
      v9 = v31;
      v6 = v30;

      *(v24 + 4) = v34;
      *(v24 + 12) = 2048;
      v35 = v62;
      *(v24 + 14) = v62;
      _os_log_impl(&dword_26C3D6000, v21, v22, "SyncedModel[%s]: status changed to %ld", v24, 0x16u);
      v36 = v57;
      __swift_destroy_boxed_opaque_existential_1(v57);
      v11 = v58;
      MEMORY[0x26D6A18D0](v36, -1, -1);
      MEMORY[0x26D6A18D0](v24, -1, -1);
    }

    else
    {

      v35 = v62;
    }

    v37 = v35 == 2;
    v38 = v63;
    if (v37)
    {
      v39 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__pendingOwnershipRequest;
      swift_beginAccess();
      sub_26C3DDD48(v18 + v39, v38, &qword_280497B80, &unk_26C46E518);
      if ((*(v64 + 48))(v38, 1, v6) == 1)
      {

        return sub_26C3DE270(v38, &qword_280497B80, &unk_26C46E518);
      }

      else
      {
        sub_26C42B9BC(v38, v11, type metadata accessor for PendingOwnershipRequest);
        sub_26C42C130(v11, v9, type metadata accessor for PendingOwnershipRequest);

        v40 = sub_26C46BF84();
        v41 = sub_26C46C404();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v62 = v9;
          v43 = v42;
          v64 = swift_slowAlloc();
          v65 = v64;
          *v43 = 136315394;
          LODWORD(v63) = v41;
          v44 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
          swift_beginAccess();
          v45 = v59;
          v46 = v61;
          (*(v59 + 16))(v61, v18 + v44, v12);
          sub_26C431280(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v47 = sub_26C46C704();
          v49 = v48;
          (*(v45 + 8))(v46, v12);
          v50 = sub_26C3E80A8(v47, v49, &v65);

          *(v43 + 4) = v50;
          *(v43 + 12) = 2080;
          sub_26C46BAE4();
          sub_26C431280(&qword_280497C28, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v51 = v62;
          v52 = sub_26C46C704();
          v54 = v53;
          sub_26C42BA24(v51, type metadata accessor for PendingOwnershipRequest);
          v55 = sub_26C3E80A8(v52, v54, &v65);

          *(v43 + 14) = v55;
          _os_log_impl(&dword_26C3D6000, v40, v63, "SyncedModel[%s]: Applying pending request ownership from time:%s", v43, 0x16u);
          v56 = v64;
          swift_arrayDestroy();
          MEMORY[0x26D6A18D0](v56, -1, -1);
          MEMORY[0x26D6A18D0](v43, -1, -1);
        }

        else
        {

          sub_26C42BA24(v9, type metadata accessor for PendingOwnershipRequest);
        }

        (*(*v18 + 760))(*v11, v11[1]);

        return sub_26C42BA24(v11, type metadata accessor for PendingOwnershipRequest);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_26C423BB8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B80, &unk_26C46E518);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v2);
  v6 = &v16[-v5 - 8];
  v7 = type metadata accessor for PendingOwnershipRequest(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__pendingOwnershipRequest;
    swift_beginAccess();
    sub_26C3DDD48(v12 + v13, v6, &qword_280497B80, &unk_26C46E518);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      return sub_26C3DE270(v6, &qword_280497B80, &unk_26C46E518);
    }

    else
    {
      sub_26C42B9BC(v6, v10, type metadata accessor for PendingOwnershipRequest);
      v14 = *v10;
      v16[0] = 1;
      v14(v16);
      (*(v8 + 56))(v4, 1, 1, v7);
      swift_beginAccess();
      sub_26C3DDCE0(v4, v12 + v13, &qword_280497B80, &unk_26C46E518);
      swift_endAccess();

      return sub_26C42BA24(v10, type metadata accessor for PendingOwnershipRequest);
    }
  }

  return result;
}

uint64_t sub_26C423E3C()
{
  sub_26C413B98();

  return swift_deallocClassInstance();
}

void sub_26C423EBC(uint64_t a1)
{
  sub_26C46BB54();
  if (v1 <= 0x3F)
  {
    sub_26C42A780(319, &qword_280497B40, type metadata accessor for SyncTransactionMessage);
    if (v2 <= 0x3F)
    {
      sub_26C42A780(319, &qword_280497AD0, MEMORY[0x277CCB248]);
      if (v3 <= 0x3F)
      {
        sub_26C42A780(319, qword_280497510, MEMORY[0x277CC95F0]);
        if (v4 <= 0x3F)
        {
          sub_26C42A780(319, &qword_280497B48, type metadata accessor for PendingOwnershipRequest);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_26C424114(uint64_t a1)
{
  v38 = type metadata accessor for PBUUID(0);
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v30[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_26C46BB54();
  v32 = *(v3 - 8);
  v4 = v32;
  v5 = MEMORY[0x28223BE20](v3);
  v35 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30[-v8];
  MEMORY[0x28223BE20](v7);
  v10 = &v30[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B90, &qword_26C46E548);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30[-v12];
  v14 = *(a1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type);
  v31 = *(a1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type + 8);
  v15 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
  v16 = a1;
  v36 = a1;
  swift_beginAccess();
  v17 = *(v4 + 16);
  v17(v10, v16 + v15, v3);
  v18 = MEMORY[0x277D84F90];
  *(v13 + 2) = MEMORY[0x277D84F90];
  *(v13 + 3) = v18;
  *(v13 + 4) = v18;
  v19 = type metadata accessor for SyncTransactionMessage(0);
  sub_26C46BD14();
  v20 = *(v19 + 36);
  v21 = *(v39 + 56);
  v39 += 56;
  v33 = v21;
  v21(&v13[v20], 1, 1, v38);
  *v13 = v14;
  v13[8] = v31;
  v22 = v34;
  v17(v34, v10, v3);
  v23 = v35;
  v17(v35, v22, v3);
  v24 = v37;
  sub_26C40F280(v23, v37);
  v25 = *(v32 + 8);
  v25(v22, v3);
  v25(v10, v3);
  sub_26C3DE270(&v13[v20], &qword_280497458, &unk_26C46D3F0);
  sub_26C42B9BC(v24, &v13[v20], type metadata accessor for PBUUID);
  v33(&v13[v20], 0, 1, v38);
  v26 = MEMORY[0x277D84F90];
  *(v13 + 3) = MEMORY[0x277D84F90];
  *(v13 + 4) = v26;
  *(v13 + 2) = v26;
  (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
  v27 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__transaction;
  v28 = v36;
  swift_beginAccess();
  sub_26C3DDCE0(v13, v28 + v27, &qword_280497B90, &qword_26C46E548);
  return swift_endAccess();
}

uint64_t sub_26C42450C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B90, &qword_26C46E548);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for SyncTransactionMessage(0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__transaction;
  swift_beginAccess();
  sub_26C3DDCE0(v4, a1 + v6, &qword_280497B90, &qword_26C46E548);
  return swift_endAccess();
}

uint64_t sub_26C424618@<X0>(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  v5 = type metadata accessor for PropertyChangedMessage(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_26C414038(v19);
  v11 = v10;
  v12 = type metadata accessor for SyncTransactionMessage(0);
  v13 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  if (v13)
  {
    result = (v9)(v19, 0);
  }

  else
  {
    sub_26C42C130(a1, v8, type metadata accessor for PropertyChangedMessage);
    v15 = *(v11 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + 16) = v15;
    v20 = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_26C42BE38(0, v15[2] + 1, 1, v15, &qword_280497BC8, &qword_26C46E5B0, type metadata accessor for PropertyChangedMessage);
      *(v11 + 16) = v15;
    }

    v18 = v15[2];
    v17 = v15[3];
    if (v18 >= v17 >> 1)
    {
      v15 = sub_26C42BE38((v17 > 1), v18 + 1, 1, v15, &qword_280497BC8, &qword_26C46E5B0, type metadata accessor for PropertyChangedMessage);
      *(v11 + 16) = v15;
    }

    v15[2] = v18 + 1;
    sub_26C42B9BC(v8, v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, type metadata accessor for PropertyChangedMessage);
    result = (v9)(v19, 0);
  }

  *a2 = v13 != 0;
  return result;
}

uint64_t sub_26C424888@<X0>(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  v5 = type metadata accessor for DictionaryChangedMessage(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_26C414038(v19);
  v11 = v10;
  v12 = type metadata accessor for SyncTransactionMessage(0);
  v13 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  if (v13)
  {
    result = (v9)(v19, 0);
  }

  else
  {
    sub_26C42C130(a1, v8, type metadata accessor for DictionaryChangedMessage);
    v15 = *(v11 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + 32) = v15;
    v20 = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_26C42BE38(0, v15[2] + 1, 1, v15, &qword_280497BD0, &qword_26C46E5B8, type metadata accessor for DictionaryChangedMessage);
      *(v11 + 32) = v15;
    }

    v18 = v15[2];
    v17 = v15[3];
    if (v18 >= v17 >> 1)
    {
      v15 = sub_26C42BE38((v17 > 1), v18 + 1, 1, v15, &qword_280497BD0, &qword_26C46E5B8, type metadata accessor for DictionaryChangedMessage);
      *(v11 + 32) = v15;
    }

    v15[2] = v18 + 1;
    sub_26C42B9BC(v8, v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, type metadata accessor for DictionaryChangedMessage);
    result = (v9)(v19, 0);
  }

  *a2 = v13 != 0;
  return result;
}

uint64_t sub_26C424AF8@<X0>(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  v5 = type metadata accessor for SetChangedMessage(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_26C414038(v19);
  v11 = v10;
  v12 = type metadata accessor for SyncTransactionMessage(0);
  v13 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  if (v13)
  {
    result = (v9)(v19, 0);
  }

  else
  {
    sub_26C42C130(a1, v8, type metadata accessor for SetChangedMessage);
    v15 = *(v11 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + 24) = v15;
    v20 = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_26C42BE38(0, v15[2] + 1, 1, v15, &qword_280497BD8, &qword_26C46E5C0, type metadata accessor for SetChangedMessage);
      *(v11 + 24) = v15;
    }

    v18 = v15[2];
    v17 = v15[3];
    if (v18 >= v17 >> 1)
    {
      v15 = sub_26C42BE38((v17 > 1), v18 + 1, 1, v15, &qword_280497BD8, &qword_26C46E5C0, type metadata accessor for SetChangedMessage);
      *(v11 + 24) = v15;
    }

    v15[2] = v18 + 1;
    sub_26C42B9BC(v8, v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, type metadata accessor for SetChangedMessage);
    result = (v9)(v19, 0);
  }

  *a2 = v13 != 0;
  return result;
}

uint64_t sub_26C424D68()
{
  v1 = sub_26C46BB54();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B78, "n6");
  MEMORY[0x28223BE20](v36);
  v32 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v29 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
  swift_beginAccess();
  v33 = v0;
  sub_26C3DDD48(v0 + v16, v15, &qword_280497430, &unk_26C46D3D0);
  v34 = v2;
  v17 = *(v2 + 48);
  v18 = 1;
  v37 = v1;
  v35 = v17;
  LODWORD(v1) = v17(v15, 1, v1);
  sub_26C3DE270(v15, &qword_280497430, &unk_26C46D3D0);
  if (v1 != 1)
  {
    v19 = v33;
    sub_26C3DDD48(v33 + v16, v13, &qword_280497430, &unk_26C46D3D0);
    v20 = v34;
    v21 = v37;
    (*(v34 + 16))(v10, v19 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v37);
    (*(v20 + 56))(v10, 0, 1, v21);
    v22 = *(v36 + 12);
    v23 = v32;
    sub_26C3DDD48(v13, v32, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DDD48(v10, v23 + v22, &qword_280497430, &unk_26C46D3D0);
    v24 = v35;
    if (v35(v23, 1, v21) == 1)
    {
      sub_26C3DE270(v10, &qword_280497430, &unk_26C46D3D0);
      sub_26C3DE270(v13, &qword_280497430, &unk_26C46D3D0);
      if (v24(v23 + v22, 1, v21) == 1)
      {
        sub_26C3DE270(v23, &qword_280497430, &unk_26C46D3D0);
        v18 = 1;
        return v18 & 1;
      }
    }

    else
    {
      v36 = v10;
      v25 = v31;
      sub_26C3DDD48(v23, v31, &qword_280497430, &unk_26C46D3D0);
      if (v24(v23 + v22, 1, v21) != 1)
      {
        v26 = v30;
        (*(v20 + 32))(v30, v23 + v22, v21);
        sub_26C431280(&qword_2804975A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v18 = sub_26C46C1C4();
        v27 = *(v20 + 8);
        v27(v26, v21);
        sub_26C3DE270(v36, &qword_280497430, &unk_26C46D3D0);
        sub_26C3DE270(v13, &qword_280497430, &unk_26C46D3D0);
        v27(v25, v21);
        sub_26C3DE270(v23, &qword_280497430, &unk_26C46D3D0);
        return v18 & 1;
      }

      sub_26C3DE270(v36, &qword_280497430, &unk_26C46D3D0);
      sub_26C3DE270(v13, &qword_280497430, &unk_26C46D3D0);
      (*(v20 + 8))(v25, v21);
    }

    sub_26C3DE270(v23, &qword_280497B78, "n6");
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_26C42528C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26C46BB54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21[-v8];
  v10 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
  swift_beginAccess();
  sub_26C3DDD48(v1 + v10, v9, &qword_280497430, &unk_26C46D3D0);
  if ((*(v4 + 48))(v9, 1, v3) != 1)
  {
    (*(v4 + 32))(v6, v9, v3);
    v11 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUIDsToParticipants;
    swift_beginAccess();
    v12 = *(v1 + v11);
    if (*(v12 + 16))
    {

      v13 = sub_26C42C210(v6);
      if (v14)
      {
        v15 = v13;
        v16 = *(v12 + 56);
        v17 = sub_26C46BCD4();
        v18 = *(v17 - 8);
        (*(v18 + 16))(a1, v16 + *(v18 + 72) * v15, v17);
        (*(v4 + 8))(v6, v3);

        return (*(v18 + 56))(a1, 0, 1, v17);
      }
    }

    (*(v4 + 8))(v6, v3);
  }

  v20 = sub_26C46BCD4();
  return (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
}

uint64_t sub_26C425580(unsigned int (*a1)(char *, uint64_t, uint64_t), unsigned int (*a2)(char *, uint64_t, uint64_t))
{
  v380 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B80, &unk_26C46E518);
  MEMORY[0x28223BE20](v4 - 8);
  v378 = (&v305 - v5);
  v346 = sub_26C46C0F4();
  v329 = *(v346 - 8);
  v6 = MEMORY[0x28223BE20](v346);
  v327 = &v305 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v328 = &v305 - v8;
  v317 = type metadata accessor for SyncedModelManager.MessageWrapper(0);
  v321 = *(v317 - 8);
  MEMORY[0x28223BE20](v317);
  v344 = (&v305 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v322 = sub_26C46BCF4();
  v345 = *(v322 - 8);
  MEMORY[0x28223BE20](v322);
  v343 = (&v305 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v352 = type metadata accessor for SyncMessage(0);
  MEMORY[0x28223BE20](v352);
  v354 = &v305 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497308, &unk_26C46D100);
  MEMORY[0x28223BE20](v12 - 8);
  v349 = &v305 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v326 = &v305 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v320 = &v305 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v342 = &v305 - v20;
  MEMORY[0x28223BE20](v19);
  v336 = &v305 - v21;
  v339 = sub_26C46BAE4();
  v338 = *(v339 - 8);
  MEMORY[0x28223BE20](v339);
  v337 = &v305 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v348 = type metadata accessor for CachedOwnershipRequest(0);
  v347 = *(v348 - 8);
  v23 = MEMORY[0x28223BE20](v348);
  v25 = &v305 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v341 = &v305 - v26;
  v369 = type metadata accessor for PBUUID(0);
  v367 = *(v369 - 8);
  v27 = MEMORY[0x28223BE20](v369);
  v323 = (&v305 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x28223BE20](v27);
  v319 = (&v305 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v340 = (&v305 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v334 = (&v305 - v34);
  MEMORY[0x28223BE20](v33);
  v373 = (&v305 - v35);
  v355 = type metadata accessor for OwnershipChangeRequestMessage(0);
  v324 = *(v355 - 8);
  v36 = MEMORY[0x28223BE20](v355);
  v353 = &v305 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v370 = &v305 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v351 = &v305 - v41;
  v325 = v42;
  MEMORY[0x28223BE20](v40);
  v358 = &v305 - v43;
  v366 = sub_26C46C0A4();
  v365 = *(v366 - 1);
  MEMORY[0x28223BE20](v366);
  v362 = &v305 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v364 = sub_26C46C0D4();
  v363 = *(v364 - 1);
  MEMORY[0x28223BE20](v364);
  v361 = &v305 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v374 = sub_26C46BB54();
  v377 = *(v374 - 1);
  v46 = MEMORY[0x28223BE20](v374);
  v318 = &v305 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v335 = &v305 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v333 = &v305 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v356 = &v305 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v357 = &v305 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v368 = &v305 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v375 = &v305 - v59;
  MEMORY[0x28223BE20](v58);
  v376 = &v305 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B78, "n6");
  MEMORY[0x28223BE20](v61);
  v63 = (&v305 - v62);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v65 = MEMORY[0x28223BE20](v64 - 8);
  v332 = (&v305 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = MEMORY[0x28223BE20](v65);
  v331 = &v305 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v330 = &v305 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v360 = (&v305 - v72);
  v73 = MEMORY[0x28223BE20](v71);
  v359 = (&v305 - v74);
  v75 = MEMORY[0x28223BE20](v73);
  v77 = &v305 - v76;
  MEMORY[0x28223BE20](v75);
  v79 = &v305 - v78;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  MEMORY[0x28223BE20](v80 - 8);
  v82 = &v305 - v81;
  v83 = sub_26C46BCD4();
  v84 = *(v83 - 8);
  v85 = MEMORY[0x28223BE20](v83);
  v350 = &v305 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = MEMORY[0x28223BE20](v85);
  v371 = &v305 - v88;
  MEMORY[0x28223BE20](v87);
  v379 = &v305 - v89;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v372 = a2;
    v382 = v2;
    v90 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__authorityParticipant;
    swift_beginAccess();
    v91 = v382 + v90;
    v92 = v382;
    sub_26C3DDD48(v91, v82, &qword_280497268, &qword_26C46CFE0);
    if (v84[6](v82, 1, v83) == 1)
    {
      sub_26C3DE270(v82, &qword_280497268, &qword_26C46CFE0);
LABEL_11:
      if (qword_280497148 != -1)
      {
        swift_once();
      }

      v101 = sub_26C46BFA4();
      __swift_project_value_buffer(v101, qword_280498530);
      v102 = sub_26C46BF84();
      v103 = sub_26C46C3E4();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        *v104 = 0;
        _os_log_impl(&dword_26C3D6000, v102, v103, "SyncedModel: tried to request ownership while catching up, enqueuing request", v104, 2u);
        MEMORY[0x26D6A18D0](v104, -1, -1);
      }

      v105 = type metadata accessor for PendingOwnershipRequest(0);
      v106 = v378;
      sub_26C46BAD4();

      v107 = v372;
      *v106 = v380;
      v106[1] = v107;
      (*(*(v105 - 8) + 56))(v106, 0, 1, v105);
      v108 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__pendingOwnershipRequest;
      swift_beginAccess();

      sub_26C3DDCE0(v106, v92 + v108, &qword_280497B80, &unk_26C46E518);
      return swift_endAccess();
    }

    v314 = v25;
    v98 = v92;
    v99 = v379;
    v84[4](v379, v82, v83);
    v100 = sub_26C3EA940();
    v316 = v83;
    if (v100)
    {
      (v84[1])(v99, v316);
      v92 = v98;
      goto LABEL_11;
    }

    v378 = v84;
    v109 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
    v110 = v98;
    swift_beginAccess();
    v312 = v109;
    sub_26C3DDD48(v98 + v109, v79, &qword_280497430, &unk_26C46D3D0);
    v111 = v377;
    v112 = *(v377 + 16);
    v311 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID;
    v113 = v374;
    v315 = v377 + 16;
    v313 = v112;
    v112(v77, v110 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v374);
    v114 = *(v111 + 56);
    v309 = v111 + 56;
    v308 = v114;
    v114(v77, 0, 1, v113);
    v115 = *(v61 + 48);
    sub_26C3DDD48(v79, v63, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DDD48(v77, v63 + v115, &qword_280497430, &unk_26C46D3D0);
    v116 = *(v111 + 48);
    v117 = v116(v63, 1, v113);
    v310 = v116;
    if (v117 == 1)
    {
      sub_26C3DE270(v77, &qword_280497430, &unk_26C46D3D0);
      sub_26C3DE270(v79, &qword_280497430, &unk_26C46D3D0);
      if (v116((v63 + v115), 1, v113) == 1)
      {
        sub_26C3DE270(v63, &qword_280497430, &unk_26C46D3D0);
LABEL_42:
        if (qword_280497148 != -1)
        {
          swift_once();
        }

        v206 = sub_26C46BFA4();
        __swift_project_value_buffer(v206, qword_280498530);
        v207 = sub_26C46BF84();
        v208 = sub_26C46C404();
        if (os_log_type_enabled(v207, v208))
        {
          v209 = swift_slowAlloc();
          *v209 = 0;
          _os_log_impl(&dword_26C3D6000, v207, v208, "SyncedModel: Requesting ownership when local participant already owns model. Succeeding.", v209, 2u);
          MEMORY[0x26D6A18D0](v209, -1, -1);
        }

        sub_26C418080();
        v210 = *(Strong + 40);
        v211 = swift_allocObject();
        v212 = v372;
        *(v211 + 16) = v380;
        *(v211 + 24) = v212;
        v387 = sub_26C4312D8;
        v388 = v211;
        aBlock = MEMORY[0x277D85DD0];
        v384 = 1107296256;
        v385 = sub_26C3DF384;
        v386 = &block_descriptor_100;
        v213 = _Block_copy(&aBlock);

        v214 = v210;
        v215 = v361;
        sub_26C46C0C4();
        v390 = MEMORY[0x277D84F90];
        sub_26C431280(&qword_2804973F8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497400, &qword_26C46D290);
        sub_26C3FBC1C(&qword_280497408, &qword_280497400, &qword_26C46D290, MEMORY[0x277D83970]);
        v216 = v362;
        v217 = v366;
        sub_26C46C484();
        MEMORY[0x26D6A0E60](0, v215, v216, v213);
        _Block_release(v213);

        (*(v365 + 8))(v216, v217);
        (*(v363 + 8))(v215, v364);
        (v378[1])(v379, v316);
      }
    }

    else
    {
      v118 = v359;
      sub_26C3DDD48(v63, v359, &qword_280497430, &unk_26C46D3D0);
      if (v116((v63 + v115), 1, v113) != 1)
      {
        v203 = v377;
        v204 = v376;
        (*(v377 + 32))(v376, v63 + v115, v113);
        sub_26C431280(&qword_2804975A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        LODWORD(v307) = sub_26C46C1C4();
        v205 = *(v203 + 8);
        v205(v204, v113);
        sub_26C3DE270(v77, &qword_280497430, &unk_26C46D3D0);
        sub_26C3DE270(v79, &qword_280497430, &unk_26C46D3D0);
        v205(v118, v113);
        v110 = v382;
        sub_26C3DE270(v63, &qword_280497430, &unk_26C46D3D0);
        v119 = v378;
        if (v307)
        {
          goto LABEL_42;
        }

LABEL_22:
        v120 = v119[2];
        v121 = v316;
        v307 = (v119 + 2);
        v306 = v120;
        (v120)(v371, Strong + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant);
        v122 = v376;
        sub_26C46BCC4();
        v123 = v375;
        sub_26C46BCC4();
        v124 = sub_26C46BB14();
        v126 = v377 + 8;
        v125 = *(v377 + 8);
        (v125)(v123, v113);
        v359 = v125;
        (v125)(v122, v113);
        v127 = v360;
        sub_26C3DDD48(v110 + v312, v360, &qword_280497430, &unk_26C46D3D0);
        LODWORD(v122) = v310(v127, 1, v113);
        sub_26C3DE270(v127, &qword_280497430, &unk_26C46D3D0);
        if (v122 == 1)
        {
          if (v124)
          {
            v128 = v121;
            if (qword_280497148 != -1)
            {
              swift_once();
            }

            v129 = sub_26C46BFA4();
            __swift_project_value_buffer(v129, qword_280498530);
            v130 = sub_26C46BF84();
            v131 = sub_26C46C404();
            if (os_log_type_enabled(v130, v131))
            {
              v132 = swift_slowAlloc();
              *v132 = 0;
              _os_log_impl(&dword_26C3D6000, v130, v131, "SyncedModel: Requesting ownership. Model is unowned and participant is authority. Succeeding. Calling callback on async queue.", v132, 2u);
              MEMORY[0x26D6A18D0](v132, -1, -1);
            }

            v126 = v330;
            v313(v330, v110 + v311, v113);
            v308(v126, 0, 1, v113);
            v133 = v312;
            v134 = v331;
            sub_26C3DDD48(v110 + v312, v331, &qword_280497430, &unk_26C46D3D0);
            swift_beginAccess();
            sub_26C3E9EB8(v126, v110 + v133);
            swift_endAccess();
            v135 = v332;
            sub_26C3DDD48(v110 + v133, v332, &qword_280497430, &unk_26C46D3D0);
            sub_26C418F90(v134, v135);
            sub_26C3DE270(v135, &qword_280497430, &unk_26C46D3D0);
            sub_26C3DE270(v134, &qword_280497430, &unk_26C46D3D0);
            sub_26C3DE270(v126, &qword_280497430, &unk_26C46D3D0);
            v136 = *(v110 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter);
            v137 = __CFADD__(v136, 1);
            v138 = v136 + 1;
            if (!v137)
            {
              *(v110 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter) = v138;
              sub_26C418080();
              v139 = *(Strong + 40);
              v140 = swift_allocObject();
              v141 = v372;
              *(v140 + 16) = v380;
              *(v140 + 24) = v141;
              v387 = sub_26C430EFC;
              v388 = v140;
              aBlock = MEMORY[0x277D85DD0];
              v384 = 1107296256;
              v385 = sub_26C3DF384;
              v386 = &block_descriptor_94;
              v142 = _Block_copy(&aBlock);
              v143 = v139;

              v144 = v361;
              sub_26C46C0C4();
              v390 = MEMORY[0x277D84F90];
              sub_26C431280(&qword_2804973F8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497400, &qword_26C46D290);
              sub_26C3FBC1C(&qword_280497408, &qword_280497400, &qword_26C46D290, MEMORY[0x277D83970]);
              v145 = v362;
              v146 = v366;
              sub_26C46C484();
              MEMORY[0x26D6A0E60](0, v144, v145, v142);
              _Block_release(v142);

              (*(v365 + 8))(v145, v146);
              (*(v363 + 8))(v144, v364);
              v147 = v378[1];
              (v147)(v371, v128);
              (v147)(v379, v128);
            }

            __break(1u);
            goto LABEL_69;
          }
        }

        else if (v124)
        {
          if (qword_280497148 == -1)
          {
LABEL_32:
            v305 = v126;
            v148 = sub_26C46BFA4();
            __swift_project_value_buffer(v148, qword_280498530);
            v149 = sub_26C46BF84();
            v150 = sub_26C46C404();
            if (os_log_type_enabled(v149, v150))
            {
              v151 = swift_slowAlloc();
              *v151 = 0;
              _os_log_impl(&dword_26C3D6000, v149, v150, "SyncedModel: Requesting ownership. Model is owned and participant is authority. Sending ownership request to current owner.", v151, 2u);
              MEMORY[0x26D6A18D0](v151, -1, -1);
            }

            v366 = *(v110 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type);
            LODWORD(v361) = *(v110 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type + 8);
            v152 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
            swift_beginAccess();
            v153 = v376;
            v154 = v313;
            v313(v376, v110 + v152, v113);
            v154(v375, v110 + v311, v113);
            v155 = v154;
            LODWORD(v363) = *(v110 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter);
            sub_26C46BB44();
            v156 = v358;
            *(v358 + 16) = 0;
            *(v156 + 24) = 1;
            *(v156 + 28) = 0;
            v157 = v355;
            sub_26C46BD14();
            v158 = v153;
            v159 = v157[8];
            v160 = *(v367 + 56);
            v365 = v367 + 56;
            v364 = v160;
            v161 = v369;
            (v160)(v156 + v159, 1, 1, v369);
            v362 = v157[9];
            (v160)(&v362[v156], 1, 1, v161);
            v370 = v157[10];
            (v160)(v156 + v370, 1, 1, v161);
            *v156 = v366;
            *(v156 + 8) = v361;
            v162 = v357;
            v155(v357, v158, v113);
            v163 = v356;
            v155(v356, v162, v113);
            v164 = v373;
            sub_26C40F280(v163, v373);
            v165 = v359;
            (v359)(v162, v113);
            sub_26C3DE270(v156 + v159, &qword_280497458, &unk_26C46D3F0);
            v366 = type metadata accessor for PBUUID;
            sub_26C42B9BC(v164, v156 + v159, type metadata accessor for PBUUID);
            v166 = v161;
            v167 = v364;
            (v364)(v156 + v159, 0, 1, v166);
            v155(v162, v375, v113);
            v155(v163, v162, v113);
            v168 = v373;
            sub_26C40F280(v163, v373);
            v165(v162, v113);
            v169 = v362;
            sub_26C3DE270(&v362[v156], &qword_280497458, &unk_26C46D3F0);
            sub_26C42B9BC(v168, &v169[v156], v366);
            v170 = v369;
            v167(&v169[v156], 0, 1, v369);
            *(v156 + 16) = 0;
            *(v156 + 24) = 1;
            *(v156 + 28) = v363;
            v171 = v368;
            v172 = v313;
            v313(v162, v368, v113);
            v172(v163, v162, v113);
            v173 = v370;
            v174 = v373;
            sub_26C40F280(v163, v373);
            v165(v162, v113);
            v165(v171, v113);
            v175 = v170;
            v165(v375, v113);
            v165(v376, v113);
            sub_26C3DE270(v156 + v173, &qword_280497458, &unk_26C46D3F0);
            sub_26C42B9BC(v174, v156 + v173, v366);
            (v364)(v156 + v173, 0, 1, v170);
            sub_26C42C130(v156, v351, type metadata accessor for OwnershipChangeRequestMessage);
            v176 = v337;
            sub_26C46BAD4();
            v177 = v156 + v173;
            v178 = v336;
            v179 = v367;
            sub_26C3DDD48(v177, v336, &qword_280497458, &unk_26C46D3F0);
            v180 = *(v179 + 48);
            if (v180(v178, 1, v175) == 1)
            {
              v181 = v334;
              *v334 = 0;
              v181[1] = 0;
              sub_26C46BD14();
              v182 = v180(v178, 1, v175);
              v183 = v372;
              v184 = v348;
              v185 = v341;
              if (v182 != 1)
              {
                sub_26C3DE270(v178, &qword_280497458, &unk_26C46D3F0);
              }
            }

            else
            {
              v181 = v334;
              sub_26C42B9BC(v178, v334, type metadata accessor for PBUUID);
              v183 = v372;
              v184 = v348;
              v185 = v341;
            }

            v275 = v333;
            sub_26C40F3CC();
            sub_26C42BA24(v181, type metadata accessor for PBUUID);
            sub_26C42B9BC(v351, v185, type metadata accessor for OwnershipChangeRequestMessage);
            v276 = (v185 + v184[5]);
            *v276 = v380;
            v276[1] = v183;
            (*(v338 + 32))(v185 + v184[6], v176, v339);
            (*(v377 + 32))(v185 + v184[7], v275, v374);
            v277 = v342;
            sub_26C3DDD48(v358 + v370, v342, &qword_280497458, &unk_26C46D3F0);
            if (v180(v277, 1, v175) == 1)
            {
              v278 = v340;
              *v340 = 0;
              v278[1] = 0;

              v279 = v342;
              sub_26C46BD14();
              if (v180(v279, 1, v175) != 1)
              {
                sub_26C3DE270(v279, &qword_280497458, &unk_26C46D3F0);
              }
            }

            else
            {
              v278 = v340;
              sub_26C42B9BC(v277, v340, type metadata accessor for PBUUID);
            }

            v280 = v335;
            sub_26C40F3CC();
            sub_26C42BA24(v278, type metadata accessor for PBUUID);
            v281 = v349;
            sub_26C42C130(v185, v349, type metadata accessor for CachedOwnershipRequest);
            (*(v347 + 56))(v281, 0, 1, v184);
            swift_beginAccess();
            sub_26C3D91B4(v281, v280);
            swift_endAccess();
            v282 = v358;
            v283 = v371;
            sub_26C41C740(v358, v371);

            sub_26C42BA24(v185, type metadata accessor for CachedOwnershipRequest);
            v284 = v378[1];
            v285 = v316;
            (v284)(v283, v316);
            (v284)(v379, v285);
            return sub_26C42BA24(v282, type metadata accessor for OwnershipChangeRequestMessage);
          }

LABEL_69:
          swift_once();
          goto LABEL_32;
        }

        v186 = v121;
        if (qword_280497148 != -1)
        {
          swift_once();
        }

        v187 = v126;
        v188 = sub_26C46BFA4();
        v189 = __swift_project_value_buffer(v188, qword_280498530);
        v190 = v350;
        v306(v350, v379, v121);
        v341 = v189;
        v191 = sub_26C46BF84();
        v192 = sub_26C46C404();
        v193 = os_log_type_enabled(v191, v192);
        v194 = v376;
        v305 = v187;
        if (v193)
        {
          v195 = swift_slowAlloc();
          v196 = swift_slowAlloc();
          aBlock = v196;
          *v195 = 136315138;
          sub_26C46BCC4();
          sub_26C431280(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v197 = sub_26C46C704();
          v198 = v190;
          v200 = v199;
          (v359)(v376, v374);
          (v378[1])(v198, v186);
          v201 = sub_26C3E80A8(v197, v200, &aBlock);
          v194 = v376;

          *(v195 + 4) = v201;
          _os_log_impl(&dword_26C3D6000, v191, v192, "SyncedModel: Requesting ownership. Sending ownership change request to authority: %s", v195, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v196);
          v202 = v196;
          v113 = v374;
          MEMORY[0x26D6A18D0](v202, -1, -1);
          MEMORY[0x26D6A18D0](v195, -1, -1);
        }

        else
        {

          (v378[1])(v190, v186);
        }

        v360 = *(v110 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type);
        LODWORD(v342) = *(v110 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type + 8);
        v218 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
        swift_beginAccess();
        v219 = v313;
        v313(v194, v110 + v218, v113);
        v219(v375, v110 + v311, v113);
        v220 = v219;
        LODWORD(v351) = *(v110 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter);
        sub_26C46BB44();
        v221 = v113;
        v222 = v370;
        *(v370 + 16) = 0;
        *(v222 + 24) = 1;
        *(v222 + 28) = 0;
        v223 = v355;
        sub_26C46BD14();
        v224 = v223[8];
        v225 = *(v367 + 56);
        v377 = v367 + 56;
        v374 = v225;
        v226 = v369;
        (v225)(v222 + v224, 1, 1, v369);
        v227 = v194;
        v350 = v223[9];
        (v225)(&v350[v222], 1, 1, v226);
        v358 = v223[10];
        (v225)(v222 + v358, 1, 1, v226);
        *v222 = v360;
        *(v222 + 8) = v342;
        v228 = v357;
        v220(v357, v227, v221);
        v229 = v356;
        v220(v356, v228, v221);
        v230 = v373;
        sub_26C40F280(v229, v373);
        v231 = v359;
        (v359)(v228, v221);
        sub_26C3DE270(v222 + v224, &qword_280497458, &unk_26C46D3F0);
        v360 = type metadata accessor for PBUUID;
        sub_26C42B9BC(v230, v222 + v224, type metadata accessor for PBUUID);
        v232 = v222 + v224;
        v233 = v374;
        (v374)(v232, 0, 1, v226);
        v220(v228, v375, v221);
        v220(v229, v228, v221);
        v234 = v373;
        sub_26C40F280(v229, v373);
        v231(v228, v221);
        v235 = v350;
        sub_26C3DE270(&v350[v222], &qword_280497458, &unk_26C46D3F0);
        sub_26C42B9BC(v234, &v235[v222], v360);
        v236 = v369;
        v233(&v235[v222], 0, 1, v369);
        *(v222 + 16) = 0;
        *(v222 + 24) = 1;
        *(v222 + 28) = v351;
        v237 = v368;
        v238 = v313;
        v313(v228, v368, v221);
        v238(v229, v228, v221);
        v239 = v358;
        v240 = v373;
        sub_26C40F280(v229, v373);
        v231(v228, v221);
        v241 = v237;
        v242 = v236;
        v231(v241, v221);
        v231(v375, v221);
        v231(v376, v221);
        sub_26C3DE270(v239 + v222, &qword_280497458, &unk_26C46D3F0);
        sub_26C42B9BC(v240, v239 + v222, v360);
        (v374)(v239 + v222, 0, 1, v236);
        v243 = type metadata accessor for SyncMessage.OneOf_Contents(0);
        v244 = *(*(v243 - 8) + 56);
        v245 = v354;
        v244(v354, 1, 1, v243);
        sub_26C46BD14();
        v246 = v353;
        sub_26C42C130(v222, v353, type metadata accessor for OwnershipChangeRequestMessage);
        sub_26C3DE270(v245, &qword_280497650, &unk_26C46D930);
        sub_26C42B9BC(v246, v245, type metadata accessor for OwnershipChangeRequestMessage);
        swift_storeEnumTagMultiPayload();
        v244(v245, 0, 1, v243);
        sub_26C431280(&qword_280497660, type metadata accessor for SyncMessage, &unk_26C47073C);
        v247 = sub_26C46BE64();
        v249 = v248;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497668, &unk_26C46E530);
        v250 = v378;
        v251 = (*(v378 + 80) + 32) & ~*(v378 + 80);
        v252 = swift_allocObject();
        *(v252 + 16) = xmmword_26C46D760;
        v253 = v316;
        v306((v252 + v251), v379, v316);
        v254 = sub_26C3FD100(v252);
        swift_setDeallocating();
        v255 = v250[1];
        v378 = v250 + 1;
        v375 = v255;
        (v255)(v252 + v251, v253);
        swift_deallocClassInstance();
        v256 = v343;
        *v343 = v254;
        v257 = v345;
        v258 = v322;
        (*(v345 + 104))(v256, *MEMORY[0x277CCB268], v322);
        v259 = *(v257 + 16);
        v260 = v344;
        v259(v344 + *(v317 + 20), v256, v258);
        *v260 = v247;
        v260[1] = v249;
        v261 = Strong;
        swift_beginAccess();
        v262 = *(v261 + 16);
        v377 = v247;
        v376 = v249;
        sub_26C3DDDB0(v247, v249);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v261 + 16) = v262;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v262 = sub_26C42BE38(0, v262[2] + 1, 1, v262, &qword_280497B88, &qword_26C46E528, type metadata accessor for SyncedModelManager.MessageWrapper);
          *(Strong + 16) = v262;
        }

        v264 = v348;
        v265 = v367;
        v266 = v326;
        v267 = v358;
        v269 = v262[2];
        v268 = v262[3];
        if (v269 >= v268 >> 1)
        {
          v262 = sub_26C42BE38((v268 > 1), v269 + 1, 1, v262, &qword_280497B88, &qword_26C46E528, type metadata accessor for SyncedModelManager.MessageWrapper);
        }

        v262[2] = v269 + 1;
        sub_26C42B9BC(v344, v262 + ((*(v321 + 80) + 32) & ~*(v321 + 80)) + *(v321 + 72) * v269, type metadata accessor for SyncedModelManager.MessageWrapper);
        *(Strong + 16) = v262;
        swift_endAccess();
        (*(v345 + 8))(v343, v258);
        v270 = v370;
        sub_26C42C130(v370, v314, type metadata accessor for OwnershipChangeRequestMessage);
        sub_26C46BAD4();
        v271 = v267 + v270;
        v272 = v320;
        sub_26C3DDD48(v271, v320, &qword_280497458, &unk_26C46D3F0);
        v273 = *(v265 + 48);
        if (v273(v272, 1, v242) == 1)
        {
          v274 = v319;
          *v319 = 0;
          v274[1] = 0;
          sub_26C46BD14();
          if (v273(v272, 1, v242) != 1)
          {
            sub_26C3DE270(v272, &qword_280497458, &unk_26C46D3F0);
          }
        }

        else
        {
          v274 = v319;
          sub_26C42B9BC(v272, v319, type metadata accessor for PBUUID);
        }

        v286 = v314;
        sub_26C40F3CC();
        sub_26C42BA24(v274, type metadata accessor for PBUUID);
        v287 = (v286 + *(v264 + 20));
        v288 = v372;
        *v287 = v380;
        v287[1] = v288;
        sub_26C3DDD48(v267 + v370, v266, &qword_280497458, &unk_26C46D3F0);
        if (v273(v266, 1, v242) == 1)
        {
          v289 = v323;
          *v323 = 0;
          v289[1] = 0;

          sub_26C46BD14();
          if (v273(v266, 1, v242) != 1)
          {
            sub_26C3DE270(v266, &qword_280497458, &unk_26C46D3F0);
          }
        }

        else
        {
          v289 = v323;
          sub_26C42B9BC(v266, v323, type metadata accessor for PBUUID);
        }

        v290 = v318;
        sub_26C40F3CC();
        sub_26C42BA24(v289, type metadata accessor for PBUUID);
        v291 = v349;
        sub_26C42C130(v314, v349, type metadata accessor for CachedOwnershipRequest);
        (*(v347 + 56))(v291, 0, 1, v264);
        v292 = v382;
        swift_beginAccess();
        sub_26C3D91B4(v291, v290);
        swift_endAccess();
        v293 = *(Strong + 40);
        v294 = v327;
        sub_26C46C0E4();
        v295 = v328;
        sub_26C46C104();
        v380 = *(v329 + 8);
        (v380)(v294, v346);
        v296 = v353;
        sub_26C42C130(v370, v353, type metadata accessor for OwnershipChangeRequestMessage);
        v297 = (*(v324 + 80) + 24) & ~*(v324 + 80);
        v298 = swift_allocObject();
        *(v298 + 16) = v292;
        sub_26C42B9BC(v296, v298 + v297, type metadata accessor for OwnershipChangeRequestMessage);
        v387 = sub_26C430E80;
        v388 = v298;
        aBlock = MEMORY[0x277D85DD0];
        v384 = 1107296256;
        v385 = sub_26C3DF384;
        v386 = &block_descriptor_1;
        v299 = _Block_copy(&aBlock);

        v300 = v361;
        sub_26C46C0C4();
        v389 = MEMORY[0x277D84F90];
        sub_26C431280(&qword_2804973F8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497400, &qword_26C46D290);
        sub_26C3FBC1C(&qword_280497408, &qword_280497400, &qword_26C46D290, MEMORY[0x277D83970]);
        v301 = v362;
        v302 = v366;
        sub_26C46C484();
        MEMORY[0x26D6A0E30](v295, v300, v301, v299);
        _Block_release(v299);

        sub_26C3DDEA8(v377, v376);
        (*(v365 + 8))(v301, v302);
        (*(v363 + 8))(v300, v364);
        (v380)(v295, v346);
        sub_26C42BA24(v314, type metadata accessor for CachedOwnershipRequest);
        v303 = v316;
        v304 = v375;
        (v375)(v371, v316);
        v304(v379, v303);
        sub_26C42BA24(v354, type metadata accessor for SyncMessage);
        sub_26C42BA24(v370, type metadata accessor for OwnershipChangeRequestMessage);
      }

      sub_26C3DE270(v77, &qword_280497430, &unk_26C46D3D0);
      sub_26C3DE270(v79, &qword_280497430, &unk_26C46D3D0);
      (*(v377 + 8))(v118, v113);
    }

    sub_26C3DE270(v63, &qword_280497B78, "n6");
    v119 = v378;
    goto LABEL_22;
  }

  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v93 = sub_26C46BFA4();
  __swift_project_value_buffer(v93, qword_280498530);
  v94 = sub_26C46BF84();
  v95 = sub_26C46C3E4();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    *v96 = 0;
    _os_log_impl(&dword_26C3D6000, v94, v95, "SyncedModel: tried to request ownership before the model is registered. This does nothing.", v96, 2u);
    MEMORY[0x26D6A18D0](v96, -1, -1);
  }

  LOBYTE(aBlock) = 1;
  return (v380)(&aBlock);
}

uint64_t sub_26C428C8C(uint64_t a1, uint64_t a2)
{
  v51 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497308, &unk_26C46D100);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - v8;
  v10 = type metadata accessor for PBUUID(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = (&v42 - v15);
  v50 = sub_26C46BB54();
  v17 = *(v50 - 8);
  v18 = MEMORY[0x28223BE20](v50);
  v45 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v42 - v20;
  v46 = type metadata accessor for CachedOwnershipRequest(0);
  v43 = *(v46 - 8);
  v22 = MEMORY[0x28223BE20](v46);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v44 = &v42 - v25;
  v26 = *(type metadata accessor for OwnershipChangeRequestMessage(0) + 40);
  v47 = a2;
  sub_26C3DDD48(a2 + v26, v9, &qword_280497458, &unk_26C46D3F0);
  v27 = *(v11 + 48);
  if (v27(v9, 1, v10) == 1)
  {
    *v16 = 0;
    v16[1] = 0;
    sub_26C46BD14();
    if (v27(v9, 1, v10) != 1)
    {
      sub_26C3DE270(v9, &qword_280497458, &unk_26C46D3F0);
    }
  }

  else
  {
    sub_26C42B9BC(v9, v16, type metadata accessor for PBUUID);
  }

  sub_26C40F3CC();
  sub_26C42BA24(v16, type metadata accessor for PBUUID);
  v28 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestsAwaitingReply;
  v29 = v51;
  swift_beginAccess();
  v30 = *(v29 + v28);
  if (!*(v30 + 16))
  {
    return (*(v17 + 8))(v21, v50);
  }

  v31 = sub_26C42C210(v21);
  if ((v32 & 1) == 0)
  {

    return (*(v17 + 8))(v21, v50);
  }

  sub_26C42C130(*(v30 + 56) + *(v43 + 72) * v31, v24, type metadata accessor for CachedOwnershipRequest);
  v33 = v21;
  v34 = v50;
  v43 = *(v17 + 8);
  (v43)(v33, v50);

  v35 = v24;
  v36 = v44;
  sub_26C42B9BC(v35, v44, type metadata accessor for CachedOwnershipRequest);
  v37 = v48;
  sub_26C3DDD48(v47 + v26, v48, &qword_280497458, &unk_26C46D3F0);
  if (v27(v37, 1, v10) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    sub_26C46BD14();
    if (v27(v37, 1, v10) != 1)
    {
      sub_26C3DE270(v37, &qword_280497458, &unk_26C46D3F0);
    }
  }

  else
  {
    sub_26C42B9BC(v37, v14, type metadata accessor for PBUUID);
  }

  v39 = v45;
  sub_26C40F3CC();
  sub_26C42BA24(v14, type metadata accessor for PBUUID);
  swift_beginAccess();
  v40 = v49;
  sub_26C42C948(v39, v49);
  (v43)(v39, v34);
  sub_26C3DE270(v40, &qword_280497308, &unk_26C46D100);
  swift_endAccess();
  v41 = *(v36 + *(v46 + 20));
  v52[0] = 2;
  v41(v52);
  return sub_26C42BA24(v36, type metadata accessor for CachedOwnershipRequest);
}

void sub_26C4292A4()
{
  v124 = type metadata accessor for SyncedModelManager.MessageWrapper(0);
  v125 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v128 = (&v112 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = sub_26C46BCF4();
  v126 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v127 = &v112 - v6;
  v135 = type metadata accessor for SyncMessage(0);
  MEMORY[0x28223BE20](v135);
  v139 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for PBUUID(0);
  isa = v145[-1].isa;
  MEMORY[0x28223BE20](v145);
  v132 = (&v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v129 = type metadata accessor for OwnershipChangeBroadcastMessage(0);
  v9 = MEMORY[0x28223BE20](v129);
  v134 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v138 = &v112 - v11;
  v12 = sub_26C46BB54();
  v13 = *(v12 - 1);
  v14 = MEMORY[0x28223BE20](v12);
  v131 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v130 = &v112 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v144 = &v112 - v19;
  MEMORY[0x28223BE20](v18);
  v143 = &v112 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B78, "n6");
  MEMORY[0x28223BE20](v21);
  v23 = &v112 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v136 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v142 = &v112 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v141 = (&v112 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v137 = &v112 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v112 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v112 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B80, &unk_26C46E518);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v112 - v39;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v116 = v5;
    v117 = v2;
    v140 = Strong;
    v42 = type metadata accessor for PendingOwnershipRequest(0);
    (*(*(v42 - 8) + 56))(v40, 1, 1, v42);
    v43 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__pendingOwnershipRequest;
    swift_beginAccess();
    sub_26C3DDCE0(v40, v0 + v43, &qword_280497B80, &unk_26C46E518);
    swift_endAccess();
    v44 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
    swift_beginAccess();
    v120 = v44;
    sub_26C3DDD48(v0 + v44, v37, &qword_280497430, &unk_26C46D3D0);
    v123 = v0;
    v45 = v0 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID;
    v47 = v13 + 16;
    v46 = *(v13 + 16);
    v118 = v45;
    v119 = v46;
    v46(v35);
    v48 = *(v13 + 56);
    v122 = (v13 + 56);
    v121 = v48;
    (v48)(v35, 0, 1, v12);
    v49 = *(v21 + 48);
    sub_26C3DDD48(v37, v23, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DDD48(v35, &v23[v49], &qword_280497430, &unk_26C46D3D0);
    v51 = (v13 + 48);
    v50 = *(v13 + 48);
    v52 = v13;
    if (v50(v23, 1, v12) == 1)
    {
      v114 = v13 + 16;
      v115 = v13;
      sub_26C3DE270(v35, &qword_280497430, &unk_26C46D3D0);
      sub_26C3DE270(v37, &qword_280497430, &unk_26C46D3D0);
      if (v50(&v23[v49], 1, v12) == 1)
      {
        sub_26C3DE270(v23, &qword_280497430, &unk_26C46D3D0);
        goto LABEL_21;
      }
    }

    else
    {
      v57 = v137;
      sub_26C3DDD48(v23, v137, &qword_280497430, &unk_26C46D3D0);
      if (v50(&v23[v49], 1, v12) != 1)
      {
        v114 = v47;
        v62 = v143;
        (*(v52 + 32))(v143, &v23[v49], v12);
        sub_26C431280(&qword_2804975A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v63 = sub_26C46C1C4();
        v115 = v52;
        v64 = *(v52 + 8);
        v64(v62, v12);
        v51 = &unk_26C46D3D0;
        sub_26C3DE270(v35, &qword_280497430, &unk_26C46D3D0);
        sub_26C3DE270(v37, &qword_280497430, &unk_26C46D3D0);
        v64(v57, v12);
        sub_26C3DE270(v23, &qword_280497430, &unk_26C46D3D0);
        if (v63)
        {
LABEL_21:
          if (qword_280497148 != -1)
          {
            swift_once();
          }

          v65 = sub_26C46BFA4();
          v112 = __swift_project_value_buffer(v65, qword_280498530);
          v66 = sub_26C46BF84();
          v67 = sub_26C46C404();
          v68 = os_log_type_enabled(v66, v67);
          v69 = v123;
          v70 = v142;
          v71 = v121;
          if (v68)
          {
            v72 = swift_slowAlloc();
            *v72 = 0;
            _os_log_impl(&dword_26C3D6000, v66, v67, "SyncedModel: Releasing ownership. Broadcasting to all participants.", v72, 2u);
            MEMORY[0x26D6A18D0](v72, -1, -1);
          }

          v73 = v141;
          (v71)(v141, 1, 1, v12);
          v74 = &qword_280497430;
          v75 = &unk_26C46D3D0;
          v76 = v120;
          sub_26C3DDD48(v69 + v120, v70, &qword_280497430, &unk_26C46D3D0);
          swift_beginAccess();
          sub_26C3E9EB8(v73, v69 + v76);
          swift_endAccess();
          v77 = v69 + v76;
          v78 = v136;
          sub_26C3DDD48(v77, v136, &qword_280497430, &unk_26C46D3D0);
          sub_26C418F90(v70, v78);
          sub_26C3DE270(v78, &qword_280497430, &unk_26C46D3D0);
          sub_26C3DE270(v70, &qword_280497430, &unk_26C46D3D0);
          sub_26C3DE270(v73, &qword_280497430, &unk_26C46D3D0);
          v79 = *(v69 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter);
          v80 = __CFADD__(v79, 1);
          v81 = v79 + 1;
          if (v80)
          {
            __break(1u);
          }

          else
          {
            *(v69 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter) = v81;
            v120 = *(v69 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type);
            v113 = *(v69 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type + 8);
            v82 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
            LODWORD(v137) = v81;
            swift_beginAccess();
            v83 = v143;
            v84 = v119;
            v119(v143, v69 + v82, v12);
            v84(v144, v118, v12);
            (v71)(v73, 1, 1, v12);
            v85 = v138;
            *(v138 + 12) = 0;
            *(v85 + 16) = 0;
            v86 = v129;
            sub_26C46BD14();
            v123 = v86[8];
            v87 = *(isa + 7);
            isa = v87;
            v88 = v145;
            (v87)(v85 + v123, 1, 1, v145);
            v136 = v86[9];
            (v87)(v85 + v136, 1, 1, v88);
            (v87)(v85 + v86[10], 1, 1, v88);
            *v85 = v120;
            *(v85 + 8) = v113;
            v89 = v130;
            v84(v130, v83, v12);
            v90 = v131;
            v84(v131, v89, v12);
            v91 = v132;
            sub_26C40F280(v90, v132);
            v129 = *(v115 + 8);
            (v129)(v89, v12);
            v92 = v123;
            sub_26C3DE270(v85 + v123, &qword_280497458, &unk_26C46D3F0);
            v122 = type metadata accessor for PBUUID;
            sub_26C42B9BC(v91, v85 + v92, type metadata accessor for PBUUID);
            v93 = v85 + v92;
            v94 = isa;
            (isa)(v93, 0, 1, v145);
            v84(v89, v144, v12);
            v84(v90, v89, v12);
            sub_26C40F280(v90, v91);
            v95 = v129;
            (v129)(v89, v12);
            v96 = v136;
            sub_26C3DE270(v85 + v136, &qword_280497458, &unk_26C46D3F0);
            sub_26C42B9BC(v91, v85 + v96, v122);
            v94(v85 + v96, 0, 1, v145);
            v98 = v141;
            v97 = v142;
            sub_26C3DDD48(v141, v142, &qword_280497430, &unk_26C46D3D0);
            sub_26C40E104(v97);
            sub_26C3DE270(v98, &qword_280497430, &unk_26C46D3D0);
            (v95)(v144, v12);
            (v95)(v143, v12);
            *(v85 + 12) = v137;
            *(v85 + 16) = 1;
            v99 = type metadata accessor for SyncMessage.OneOf_Contents(0);
            v100 = *(*(v99 - 8) + 56);
            v101 = v139;
            v100(v139, 1, 1, v99);
            sub_26C46BD14();
            v102 = v134;
            sub_26C42C130(v85, v134, type metadata accessor for OwnershipChangeBroadcastMessage);
            sub_26C3DE270(v101, &qword_280497650, &unk_26C46D930);
            sub_26C42B9BC(v102, v101, type metadata accessor for OwnershipChangeBroadcastMessage);
            swift_storeEnumTagMultiPayload();
            v100(v101, 0, 1, v99);
            sub_26C431280(&qword_280497660, type metadata accessor for SyncMessage, &unk_26C47073C);
            v74 = sub_26C46BE64();
            v75 = v103;
            v69 = *MEMORY[0x277CCB260];
            v71 = v126;
            v12 = *(v126 + 104);
            v104 = v127;
            v51 = v117;
            v12(v127, v69, v117);
            v105 = v128;
            v71[2](v128 + *(v124 + 20), v104, v51);
            *v105 = v74;
            v105[1] = v75;
            v106 = v140;
            swift_beginAccess();
            v73 = *(v106 + 16);
            sub_26C3DDDB0(v74, v75);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v106 + 16) = v73;
            if (isUniquelyReferenced_nonNull_native)
            {
LABEL_27:
              v109 = v73[2];
              v108 = v73[3];
              if (v109 >= v108 >> 1)
              {
                v73 = sub_26C42BE38((v108 > 1), v109 + 1, 1, v73, &qword_280497B88, &qword_26C46E528, type metadata accessor for SyncedModelManager.MessageWrapper);
              }

              v73[2] = v109 + 1;
              sub_26C42B9BC(v128, v73 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v109, type metadata accessor for SyncedModelManager.MessageWrapper);
              *(v140 + 16) = v73;
              swift_endAccess();
              v110 = v71[1];
              (v110)(v127, v51);
              v111 = v116;
              v12(v116, v69, v51);
              sub_26C3ECC34(v111);

              sub_26C3DDEA8(v74, v75);
              (v110)(v111, v51);
              sub_26C42BA24(v139, type metadata accessor for SyncMessage);
              sub_26C42BA24(v138, type metadata accessor for OwnershipChangeBroadcastMessage);
              return;
            }
          }

          v73 = sub_26C42BE38(0, v73[2] + 1, 1, v73, &qword_280497B88, &qword_26C46E528, type metadata accessor for SyncedModelManager.MessageWrapper);
          *(v140 + 16) = v73;
          goto LABEL_27;
        }

        goto LABEL_15;
      }

      sub_26C3DE270(v35, &qword_280497430, &unk_26C46D3D0);
      sub_26C3DE270(v37, &qword_280497430, &unk_26C46D3D0);
      (*(v52 + 8))(v57, v12);
    }

    sub_26C3DE270(v23, &qword_280497B78, "n6");
LABEL_15:
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v58 = sub_26C46BFA4();
    __swift_project_value_buffer(v58, qword_280498530);
    v59 = sub_26C46BF84();
    v60 = sub_26C46C404();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_26C3D6000, v59, v60, "SyncedModel: Attempting to release ownership of model you don't currently own.", v61, 2u);
      MEMORY[0x26D6A18D0](v61, -1, -1);
    }

    return;
  }

  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v53 = sub_26C46BFA4();
  __swift_project_value_buffer(v53, qword_280498530);
  v145 = sub_26C46BF84();
  v54 = sub_26C46C404();
  if (os_log_type_enabled(v145, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_26C3D6000, v145, v54, "SyncedModel: Attempting to release ownership before model is attached to group session.", v55, 2u);
    MEMORY[0x26D6A18D0](v55, -1, -1);
  }

  v56 = v145;
}