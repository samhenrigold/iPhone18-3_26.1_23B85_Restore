uint64_t WorkoutProgramPreview.hashValue.getter()
{
  sub_24B75C6D8();
  if (*(v0 + 8))
  {
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  type metadata accessor for WorkoutProgramPreview(0);
  sub_24B75B108();
  sub_24B6A7218(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B75C2C8();
  return sub_24B75C718();
}

uint64_t sub_24B6FC774()
{
  sub_24B75C6D8();
  if (*(v0 + 8))
  {
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  sub_24B75B108();
  sub_24B6A7218(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B75C2C8();
  return sub_24B75C718();
}

uint64_t sub_24B6FC854(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  sub_24B75B108();
  sub_24B6A7218(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  return sub_24B75C2C8();
}

uint64_t sub_24B6FC91C(uint64_t a1)
{
  sub_24B75C6D8();
  if (*(v1 + 8))
  {
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  sub_24B75B108();
  sub_24B6A7218(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B75C2C8();
  return sub_24B75C718();
}

uint64_t sub_24B6FCA40(void *a1, void *a2, uint64_t a3)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (v5)
    {
      v6 = *a1 == *a2 && v4 == v5;
      if (v6 || (sub_24B75C6B8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:

  return sub_24B75B0F8();
}

unint64_t sub_24B6FCB20()
{
  result = qword_27F034FF8;
  if (!qword_27F034FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034FF8);
  }

  return result;
}

unint64_t sub_24B6FCB78()
{
  result = qword_27F035000;
  if (!qword_27F035000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035000);
  }

  return result;
}

unint64_t sub_24B6FCBD0()
{
  result = qword_27F035008;
  if (!qword_27F035008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035008);
  }

  return result;
}

uint64_t WorkoutProgram.detail.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutProgram(0) + 20);
  v4 = sub_24B75AFE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutProgram.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutProgram(0) + 24));

  return v1;
}

uint64_t WorkoutProgram.links.getter()
{
  type metadata accessor for WorkoutProgram(0);
}

uint64_t WorkoutProgram.sharingURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutProgram(0) + 36);
  v4 = sub_24B75B108();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutProgram.summary.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutProgram(0) + 44);
  v4 = sub_24B75AFE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutProgram.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutProgram(0) + 48);
  v4 = sub_24B75AFE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutProgram.workoutIdentifiers.getter()
{
  type metadata accessor for WorkoutProgram(0);
}

uint64_t WorkoutProgram.init(artworkDescriptor:detail:identifier:links:preview:sharingURL:subtitle:summary:title:workoutIdentifiers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_24B6B8DE8(a1, a9, &qword_27F035010, &unk_24B761E40);
  v17 = type metadata accessor for WorkoutProgram(0);
  v18 = v17[5];
  v19 = sub_24B75AFE8();
  v20 = *(*(v19 - 8) + 32);
  v20(a9 + v18, a2, v19);
  v21 = (a9 + v17[6]);
  *v21 = a3;
  v21[1] = a4;
  *(a9 + v17[7]) = a5;
  sub_24B6B8DE8(a6, a9 + v17[8], &qword_27F035018, &qword_24B7670C0);
  v22 = v17[9];
  v23 = sub_24B75B108();
  (*(*(v23 - 8) + 32))(a9 + v22, a7, v23);
  sub_24B6B8DE8(a8, a9 + v17[10], &qword_27F034508, &qword_24B761E50);
  v20(a9 + v17[11], a10, v19);
  result = (v20)(a9 + v17[12], a11, v19);
  *(a9 + v17[13]) = a12;
  return result;
}

unint64_t sub_24B6FD134(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7972616D6D7573;
    v6 = 0x656C746974;
    if (a1 != 8)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x55676E6972616873;
    if (a1 != 5)
    {
      v7 = 0x656C746974627573;
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
    v1 = 0x6C6961746564;
    v2 = 0x696669746E656469;
    v3 = 0x736B6E696CLL;
    if (a1 != 3)
    {
      v3 = 0x77656976657270;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000011;
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

uint64_t sub_24B6FD27C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B6FEFD0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B6FD2B0(uint64_t a1)
{
  v2 = sub_24B6FD800();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6FD2EC(uint64_t a1)
{
  v2 = sub_24B6FD800();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutProgram.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035020, &qword_24B761E58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6FD800();
  sub_24B75C738();
  LOBYTE(v13) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035010, &unk_24B761E40);
  sub_24B6FE3EC(&qword_27F035030, MEMORY[0x277D09DB8]);
  sub_24B75C6A8();
  if (!v2)
  {
    v9 = type metadata accessor for WorkoutProgram(0);
    LOBYTE(v13) = 1;
    sub_24B75AFE8();
    sub_24B6A8070(&qword_27F035038, MEMORY[0x277CC8C40], MEMORY[0x277CC8C48]);
    sub_24B75C6A8();
    LOBYTE(v13) = 2;
    sub_24B75C678();
    v13 = *(v3 + v9[7]);
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035040, &qword_24B761E60);
    sub_24B6FE43C(&qword_27F035048, &qword_27F035050, &protocol conformance descriptor for WorkoutProgramLinkAnnotation, MEMORY[0x277D83948]);
    sub_24B75C6A8();
    v11 = v9[8];
    LOBYTE(v13) = 4;
    type metadata accessor for WorkoutProgramPreview(0);
    sub_24B6A8070(&qword_27F035058, type metadata accessor for WorkoutProgramPreview, &protocol conformance descriptor for WorkoutProgramPreview);
    sub_24B75C668();
    v11 = v9[9];
    LOBYTE(v13) = 5;
    sub_24B75B108();
    sub_24B6A8070(&qword_27F0341E0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_24B75C6A8();
    LOBYTE(v13) = 6;
    sub_24B75C668();
    LOBYTE(v13) = 7;
    sub_24B75C6A8();
    LOBYTE(v13) = 8;
    sub_24B75C6A8();
    v13 = *(v3 + v9[13]);
    v12 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035060, &qword_24B761E68);
    sub_24B6FE4D8(&qword_27F035068, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_24B75C6A8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24B6FD800()
{
  result = qword_27F035028;
  if (!qword_27F035028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035028);
  }

  return result;
}

uint64_t WorkoutProgram.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034508, &qword_24B761E50);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v47 - v4;
  v5 = sub_24B75B108();
  v6 = *(v5 - 8);
  v57 = v5;
  v58 = v6;
  MEMORY[0x28223BE20](v5);
  v56 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035018, &qword_24B7670C0);
  MEMORY[0x28223BE20](v8 - 8);
  v62 = &v47 - v9;
  v10 = sub_24B75AFE8();
  v59 = *(v10 - 8);
  v60 = v10;
  MEMORY[0x28223BE20](v10);
  v53 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v54 = &v47 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035010, &unk_24B761E40);
  MEMORY[0x28223BE20](v17);
  v61 = &v47 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035070, &qword_24B761E70);
  v63 = *(v19 - 8);
  v64 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v47 - v20;
  v22 = type metadata accessor for WorkoutProgram(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6FD800();
  v65 = v21;
  v25 = v66;
  sub_24B75C728();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v62;
  v50 = v22;
  v51 = a1;
  v66 = v24;
  LOBYTE(v68) = 0;
  sub_24B6FE3EC(&qword_27F035078, MEMORY[0x277D09DC0]);
  v27 = v61;
  sub_24B75C618();
  v28 = v66;
  sub_24B6B8DE8(v27, v66, &qword_27F035010, &unk_24B761E40);
  LOBYTE(v68) = 1;
  v29 = sub_24B6A8070(&qword_27F035080, MEMORY[0x277CC8C40], MEMORY[0x277CC8C60]);
  v30 = v60;
  sub_24B75C618();
  v49 = v29;
  v31 = v16;
  v32 = v28;
  v34 = v59 + 32;
  v33 = *(v59 + 32);
  v33(v32 + v50[5], v31, v30);
  LOBYTE(v68) = 2;
  v61 = 0;
  v35 = sub_24B75C5E8();
  v47 = v34;
  v48 = v33;
  v36 = v50;
  v37 = (v32 + v50[6]);
  *v37 = v35;
  v37[1] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035040, &qword_24B761E60);
  v67 = 3;
  sub_24B6FE43C(&qword_27F035088, &qword_27F035090, &protocol conformance descriptor for WorkoutProgramLinkAnnotation, MEMORY[0x277D83978]);
  sub_24B75C618();
  v39 = v32;
  *(v32 + v36[7]) = v68;
  type metadata accessor for WorkoutProgramPreview(0);
  LOBYTE(v68) = 4;
  sub_24B6A8070(&qword_27F035098, type metadata accessor for WorkoutProgramPreview, &protocol conformance descriptor for WorkoutProgramPreview);
  sub_24B75C5D8();
  sub_24B6B8DE8(v26, v32 + v36[8], &qword_27F035018, &qword_24B7670C0);
  LOBYTE(v68) = 5;
  sub_24B6A8070(&qword_27F0341F8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  v41 = v56;
  v40 = v57;
  sub_24B75C618();
  (*(v58 + 32))(v39 + v36[9], v41, v40);
  LOBYTE(v68) = 6;
  v42 = v55;
  sub_24B75C5D8();
  sub_24B6B8DE8(v42, v39 + v36[10], &qword_27F034508, &qword_24B761E50);
  LOBYTE(v68) = 7;
  v43 = v54;
  sub_24B75C618();
  v48(v39 + v50[11], v43, v30);
  LOBYTE(v68) = 8;
  v44 = v53;
  sub_24B75C618();
  v48(v39 + v50[12], v44, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035060, &qword_24B761E68);
  v67 = 9;
  sub_24B6FE4D8(&qword_27F0350A0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_24B75C618();
  (*(v63 + 8))(v65, v64);
  v45 = v66;
  *&v66[v50[13]] = v68;
  sub_24B6FE544(v45, v52);
  __swift_destroy_boxed_opaque_existential_1(v51);
  return sub_24B6FF310(v45, type metadata accessor for WorkoutProgram);
}

uint64_t sub_24B6FE3EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035010, &unk_24B761E40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B6FE43C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035040, &qword_24B761E60);
    sub_24B6A8070(a2, type metadata accessor for WorkoutProgramLinkAnnotation, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B6FE4D8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035060, &qword_24B761E68);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B6FE544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutProgram(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s20FitnessProductDetail14WorkoutProgramV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B75AFE8();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034508, &qword_24B761E50);
  MEMORY[0x28223BE20](v6 - 8);
  v53 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0350C0, &qword_24B762068);
  MEMORY[0x28223BE20](v8);
  v54 = &v51 - v9;
  v10 = type metadata accessor for WorkoutProgramPreview(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035018, &qword_24B7670C0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v51 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0350C8, &unk_24B762070);
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - v18;
  type metadata accessor for WorkoutProgramArtwork(0);
  sub_24B6A8070(qword_2810F7048, type metadata accessor for WorkoutProgramArtwork, &protocol conformance descriptor for WorkoutProgramArtwork);
  if ((sub_24B75B2A8() & 1) == 0)
  {
    goto LABEL_28;
  }

  v20 = type metadata accessor for WorkoutProgram(0);
  if ((sub_24B75AF58() & 1) == 0)
  {
    goto LABEL_28;
  }

  v21 = v20[6];
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  if ((v22 != *v24 || v23 != v24[1]) && (sub_24B75C6B8() & 1) == 0)
  {
    goto LABEL_28;
  }

  if ((sub_24B707E48(*(a1 + v20[7]), *(a2 + v20[7])) & 1) == 0)
  {
    goto LABEL_28;
  }

  v51 = v20;
  v25 = v20[8];
  v26 = *(v17 + 48);
  sub_24B6B9D34(a1 + v25, v19, &qword_27F035018, &qword_24B7670C0);
  v27 = a2 + v25;
  v28 = v26;
  sub_24B6B9D34(v27, &v19[v26], &qword_27F035018, &qword_24B7670C0);
  v29 = *(v11 + 48);
  if (v29(v19, 1, v10) == 1)
  {
    if (v29(&v19[v28], 1, v10) == 1)
    {
      sub_24B6B9CD4(v19, &qword_27F035018, &qword_24B7670C0);
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  sub_24B6B9D34(v19, v16, &qword_27F035018, &qword_24B7670C0);
  if (v29(&v19[v28], 1, v10) == 1)
  {
    sub_24B6FF310(v16, type metadata accessor for WorkoutProgramPreview);
LABEL_16:
    v37 = &qword_27F0350C8;
    v38 = &unk_24B762070;
LABEL_26:
    v42 = v19;
LABEL_27:
    sub_24B6B9CD4(v42, v37, v38);
    goto LABEL_28;
  }

  sub_24B6FF370(&v19[v28], v13);
  v39 = v16[1];
  v40 = v13[1];
  if (!v39)
  {
    if (!v40)
    {
      goto LABEL_22;
    }

LABEL_25:
    sub_24B6FF310(v13, type metadata accessor for WorkoutProgramPreview);
    sub_24B6FF310(v16, type metadata accessor for WorkoutProgramPreview);
    v37 = &qword_27F035018;
    v38 = &qword_24B7670C0;
    goto LABEL_26;
  }

  if (!v40 || (*v16 != *v13 || v39 != v40) && (sub_24B75C6B8() & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_22:
  v41 = sub_24B75B0F8();
  sub_24B6FF310(v13, type metadata accessor for WorkoutProgramPreview);
  sub_24B6FF310(v16, type metadata accessor for WorkoutProgramPreview);
  sub_24B6B9CD4(v19, &qword_27F035018, &qword_24B7670C0);
  if ((v41 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  v30 = v51;
  if ((sub_24B75B0F8() & 1) == 0)
  {
    goto LABEL_28;
  }

  v31 = v30[10];
  v32 = *(v8 + 48);
  v33 = v54;
  sub_24B6B9D34(a1 + v31, v54, &qword_27F034508, &qword_24B761E50);
  sub_24B6B9D34(a2 + v31, v33 + v32, &qword_27F034508, &qword_24B761E50);
  v35 = v55;
  v34 = v56;
  v36 = *(v55 + 48);
  if (v36(v33, 1, v56) != 1)
  {
    v45 = v53;
    sub_24B6B9D34(v33, v53, &qword_27F034508, &qword_24B761E50);
    if (v36(v33 + v32, 1, v34) != 1)
    {
      v46 = v33 + v32;
      v47 = v52;
      (*(v35 + 32))(v52, v46, v34);
      sub_24B6A8070(&qword_27F0350D0, MEMORY[0x277CC8C40], MEMORY[0x277CC8C58]);
      v48 = sub_24B75C2D8();
      v49 = *(v35 + 8);
      v49(v47, v34);
      v49(v45, v34);
      sub_24B6B9CD4(v33, &qword_27F034508, &qword_24B761E50);
      if ((v48 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_34;
    }

    (*(v35 + 8))(v45, v34);
    goto LABEL_32;
  }

  if (v36(v33 + v32, 1, v34) != 1)
  {
LABEL_32:
    v37 = &qword_27F0350C0;
    v38 = &qword_24B762068;
    v42 = v33;
    goto LABEL_27;
  }

  sub_24B6B9CD4(v33, &qword_27F034508, &qword_24B761E50);
LABEL_34:
  v50 = v51;
  if (sub_24B75AF58() & 1) != 0 && (sub_24B75AF58())
  {
    v43 = sub_24B708070(*(a1 + v50[13]), *(a2 + v50[13]));
    return v43 & 1;
  }

LABEL_28:
  v43 = 0;
  return v43 & 1;
}

uint64_t getEnumTagSinglePayload for WorkoutProgram.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutProgram.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B6FEECC()
{
  result = qword_27F0350A8;
  if (!qword_27F0350A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0350A8);
  }

  return result;
}

unint64_t sub_24B6FEF24()
{
  result = qword_27F0350B0;
  if (!qword_27F0350B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0350B0);
  }

  return result;
}

unint64_t sub_24B6FEF7C()
{
  result = qword_27F0350B8;
  if (!qword_27F0350B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0350B8);
  }

  return result;
}

uint64_t sub_24B6FEFD0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000024B76BD90 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6961746564 && a2 == 0xE600000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736B6E696CLL && a2 == 0xE500000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x77656976657270 && a2 == 0xE700000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x55676E6972616873 && a2 == 0xEA00000000004C52 || (sub_24B75C6B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B76BDF0 == a2)
  {

    return 9;
  }

  else
  {
    v5 = sub_24B75C6B8();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_24B6FF310(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B6FF370(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutProgramPreview(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t EditorialDetailState.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EditorialDetailState.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EditorialDetailState(0) + 24);
  v4 = sub_24B75B1F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EditorialDetailState.loadState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for EditorialDetailState(0) + 28);

  return sub_24B6FF55C(a1, v3);
}

uint64_t sub_24B6FF55C(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for EditorialDetailLoadState(0);
  (*(*(State - 8) + 40))(a2, a1, State);
  return a2;
}

uint64_t EditorialDetailState.init(identifier:layout:loadState:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for EditorialDetailState(0);
  sub_24B700564(a3, &a6[v10[5]], type metadata accessor for EditorialDetailLayout);
  sub_24B700564(a4, &a6[v10[7]], type metadata accessor for EditorialDetailLoadState);
  v11 = v10[6];
  v12 = sub_24B75B1F8();
  v13 = *(*(v12 - 8) + 32);

  return v13(&a6[v11], a5, v12);
}

uint64_t sub_24B6FF6E8()
{
  v1 = 0x696669746E656469;
  v2 = 0x656C61636F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x7461745364616F6CLL;
  }

  if (*v0)
  {
    v1 = 0x74756F79616CLL;
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

uint64_t sub_24B6FF764@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B7007FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B6FF78C(uint64_t a1)
{
  v2 = sub_24B6FFAA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6FF7C8(uint64_t a1)
{
  v2 = sub_24B6FFAA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditorialDetailState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0350D8, &qword_24B762080);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6FFAA8();
  sub_24B75C738();
  v8[15] = 0;
  sub_24B75C678();
  if (!v1)
  {
    type metadata accessor for EditorialDetailState(0);
    v8[14] = 1;
    type metadata accessor for EditorialDetailLayout(0);
    sub_24B700674(&qword_27F0350E8, type metadata accessor for EditorialDetailLayout, &protocol conformance descriptor for EditorialDetailLayout);
    sub_24B75C6A8();
    v8[13] = 2;
    sub_24B75B1F8();
    sub_24B700674(&qword_27F033EC8, MEMORY[0x277CC9788], MEMORY[0x277CC9790]);
    sub_24B75C6A8();
    v8[12] = 3;
    type metadata accessor for EditorialDetailLoadState(0);
    sub_24B700674(&qword_27F0350F0, type metadata accessor for EditorialDetailLoadState, &protocol conformance descriptor for EditorialDetailLoadState);
    sub_24B75C6A8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24B6FFAA8()
{
  result = qword_27F0350E0;
  if (!qword_27F0350E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0350E0);
  }

  return result;
}

uint64_t EditorialDetailState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  State = type metadata accessor for EditorialDetailLoadState(0);
  MEMORY[0x28223BE20](State);
  v26 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24B75B1F8();
  v5 = *(v4 - 8);
  v28 = v4;
  v29 = v5;
  MEMORY[0x28223BE20](v4);
  v27 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EditorialDetailLayout(0);
  MEMORY[0x28223BE20](v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0350F8, &qword_24B762088);
  v30 = *(v10 - 8);
  v31 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v23 - v11;
  v13 = type metadata accessor for EditorialDetailState(0);
  MEMORY[0x28223BE20](v13);
  v15 = (v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6FFAA8();
  v32 = v12;
  v16 = v33;
  sub_24B75C728();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = 0;
  v17 = v15;
  *v15 = sub_24B75C5E8();
  v15[1] = v18;
  v33 = v18;
  v36 = 1;
  sub_24B700674(&qword_27F035100, type metadata accessor for EditorialDetailLayout, &protocol conformance descriptor for EditorialDetailLayout);
  sub_24B75C618();
  sub_24B700564(v9, v15 + v13[5], type metadata accessor for EditorialDetailLayout);
  v35 = 2;
  sub_24B700674(&qword_27F033EF8, MEMORY[0x277CC9788], MEMORY[0x277CC97A8]);
  v19 = v27;
  v20 = v28;
  v23[1] = 0;
  sub_24B75C618();
  (*(v29 + 32))(v17 + v13[6], v19, v20);
  v34 = 3;
  sub_24B700674(&qword_27F035108, type metadata accessor for EditorialDetailLoadState, &protocol conformance descriptor for EditorialDetailLoadState);
  v21 = v26;
  sub_24B75C618();
  (*(v30 + 8))(v32, v31);
  sub_24B700564(v21, v17 + v13[7], type metadata accessor for EditorialDetailLoadState);
  sub_24B700094(v17, v24, type metadata accessor for EditorialDetailState);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B7005CC(v17, type metadata accessor for EditorialDetailState);
}

uint64_t sub_24B700094(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t EditorialDetailState.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for EditorialDetailContent(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for EditorialDetailLoadState(0);
  MEMORY[0x28223BE20](State - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B75C358();
  v10 = type metadata accessor for EditorialDetailState(0);
  v11 = v1 + *(v10 + 20);
  sub_24B75B308();
  sub_24B700674(&qword_27F035110, MEMORY[0x277D096F0], MEMORY[0x277D09700]);
  sub_24B75C2C8();
  v12 = type metadata accessor for EditorialDetailLayout(0);
  MEMORY[0x24C2489B0](*(v11 + *(v12 + 20)));
  sub_24B75B1F8();
  sub_24B700674(&qword_27F035118, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  sub_24B75C2C8();
  sub_24B700094(v2 + *(v10 + 28), v9, type metadata accessor for EditorialDetailLoadState);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
  v14 = (*(*(v13 - 8) + 48))(v9, 2, v13);
  if (v14)
  {
    if (v14 == 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    return MEMORY[0x24C2489B0](v15);
  }

  else
  {
    sub_24B700564(v9, v6, type metadata accessor for EditorialDetailContent);
    MEMORY[0x24C2489B0](0);
    EditorialDetailContent.hash(into:)(a1);
    return sub_24B7005CC(v6, type metadata accessor for EditorialDetailContent);
  }
}

uint64_t EditorialDetailState.hashValue.getter()
{
  sub_24B75C6D8();
  EditorialDetailState.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t sub_24B7003FC()
{
  sub_24B75C6D8();
  EditorialDetailState.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t sub_24B700440(uint64_t a1)
{
  sub_24B75C6D8();
  EditorialDetailState.hash(into:)(v2);
  return sub_24B75C718();
}

uint64_t _s20FitnessProductDetail09EditorialC5StateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24B75C6B8() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for EditorialDetailState(0);
  v6 = v5[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  if ((MEMORY[0x24C2475B0](a1 + v6, a2 + v6) & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for EditorialDetailLayout(0);
  if (v7[*(v9 + 20)] != v8[*(v9 + 20)] || (MEMORY[0x24C2474B0](a1 + v5[6], a2 + v5[6]) & 1) == 0)
  {
    return 0;
  }

  v10 = v5[7];

  return _s20FitnessProductDetail09EditorialC9LoadStateO2eeoiySbAC_ACtFZ_0(a1 + v10, a2 + v10);
}

uint64_t sub_24B700564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B7005CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B700674(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24B7006F8()
{
  result = qword_27F035130;
  if (!qword_27F035130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035130);
  }

  return result;
}

unint64_t sub_24B700750()
{
  result = qword_27F035138;
  if (!qword_27F035138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035138);
  }

  return result;
}

unint64_t sub_24B7007A8()
{
  result = qword_27F035140;
  if (!qword_27F035140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035140);
  }

  return result;
}

uint64_t sub_24B7007FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065)
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

uint64_t EditorialArtwork.init(backgroundColor:templateURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24B6B8DE8(a1, a3, &qword_27F034120, &unk_24B75E1E0);
  v5 = type metadata accessor for EditorialArtwork(0);
  return sub_24B6B8DE8(a2, a3 + *(v5 + 20), &qword_27F034118, &qword_24B75E1D8);
}

uint64_t sub_24B700A44(uint64_t a1)
{
  v2 = sub_24B700CBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B700A80(uint64_t a1)
{
  v2 = sub_24B700CBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditorialArtwork.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035148, &qword_24B7622A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B700CBC();
  sub_24B75C738();
  v8[15] = 0;
  sub_24B75B298();
  sub_24B6A6F0C(&qword_27F0341D8, MEMORY[0x277D09D68], MEMORY[0x277D09D70]);
  sub_24B75C668();
  if (!v1)
  {
    type metadata accessor for EditorialArtwork(0);
    v8[14] = 1;
    sub_24B75B108();
    sub_24B6A6F0C(&qword_27F0341E0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_24B75C668();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24B700CBC()
{
  result = qword_27F035150;
  if (!qword_27F035150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035150);
  }

  return result;
}

uint64_t EditorialArtwork.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = &v19 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035158, &qword_24B7622A8);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v19 - v9;
  v11 = type metadata accessor for EditorialArtwork(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B700CBC();
  sub_24B75C728();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v11;
  v14 = v13;
  v15 = v22;
  sub_24B75B298();
  v26 = 0;
  sub_24B6A6F0C(&qword_27F0341F0, MEMORY[0x277D09D68], MEMORY[0x277D09D88]);
  v16 = v23;
  v17 = v24;
  sub_24B75C5D8();
  sub_24B6B8DE8(v16, v14, &qword_27F034120, &unk_24B75E1E0);
  sub_24B75B108();
  v25 = 1;
  sub_24B6A6F0C(&qword_27F0341F8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_24B75C5D8();
  (*(v15 + 8))(v10, v17);
  sub_24B6B8DE8(v6, v14 + *(v20 + 20), &qword_27F034118, &qword_24B75E1D8);
  sub_24B7010C0(v14, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B701124(v14);
}

uint64_t sub_24B7010C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialArtwork(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B701124(uint64_t a1)
{
  v2 = type metadata accessor for EditorialArtwork(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EditorialArtwork.hash(into:)(uint64_t a1)
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
    sub_24B6A6F0C(&qword_27F034128, MEMORY[0x277D09D68], MEMORY[0x277D09D78]);
    sub_24B75C2C8();
    (*(v9 + 8))(v11, v8);
  }

  v15 = type metadata accessor for EditorialArtwork(0);
  sub_24B6B9D34(v2 + *(v15 + 20), v7, &qword_27F034118, &qword_24B75E1D8);
  v17 = v22;
  v16 = v23;
  if ((*(v22 + 48))(v7, 1, v23) == 1)
  {
    return sub_24B75C6F8();
  }

  v19 = v21;
  (*(v17 + 32))(v21, v7, v16);
  sub_24B75C6F8();
  sub_24B6A6F0C(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B75C2C8();
  return (*(v17 + 8))(v19, v16);
}

uint64_t EditorialArtwork.hashValue.getter()
{
  sub_24B75C6D8();
  EditorialArtwork.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t sub_24B70159C()
{
  sub_24B75C6D8();
  EditorialArtwork.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t sub_24B7015E0(uint64_t a1)
{
  sub_24B75C6D8();
  EditorialArtwork.hash(into:)(v2);
  return sub_24B75C718();
}

BOOL _s20FitnessProductDetail16EditorialArtworkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B75B108();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v38 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034218, &unk_24B761640);
  MEMORY[0x28223BE20](v40);
  v41 = &v38 - v8;
  v9 = sub_24B75B298();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034220, &unk_24B75E810);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v38 - v17;
  v20 = *(v19 + 56);
  v42 = a1;
  sub_24B6B9D34(a1, &v38 - v17, &qword_27F034120, &unk_24B75E1E0);
  v43 = a2;
  sub_24B6B9D34(a2, &v18[v20], &qword_27F034120, &unk_24B75E1E0);
  v21 = *(v10 + 48);
  if (v21(v18, 1, v9) != 1)
  {
    sub_24B6B9D34(v18, v15, &qword_27F034120, &unk_24B75E1E0);
    if (v21(&v18[v20], 1, v9) != 1)
    {
      (*(v10 + 32))(v12, &v18[v20], v9);
      sub_24B6A6F0C(&qword_27F034230, MEMORY[0x277D09D68], MEMORY[0x277D09D80]);
      v25 = sub_24B75C2D8();
      v26 = *(v10 + 8);
      v26(v12, v9);
      v26(v15, v9);
      sub_24B6B9CD4(v18, &qword_27F034120, &unk_24B75E1E0);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v10 + 8))(v15, v9);
LABEL_6:
    v22 = &qword_27F034220;
    v23 = &unk_24B75E810;
    v24 = v18;
LABEL_14:
    sub_24B6B9CD4(v24, v22, v23);
    return 0;
  }

  if (v21(&v18[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_24B6B9CD4(v18, &qword_27F034120, &unk_24B75E1E0);
LABEL_8:
  v27 = *(type metadata accessor for EditorialArtwork(0) + 20);
  v28 = v41;
  v29 = *(v40 + 48);
  sub_24B6B9D34(v42 + v27, v41, &qword_27F034118, &qword_24B75E1D8);
  sub_24B6B9D34(v43 + v27, v28 + v29, &qword_27F034118, &qword_24B75E1D8);
  v31 = v44;
  v30 = v45;
  v32 = *(v44 + 48);
  if (v32(v28, 1, v45) == 1)
  {
    if (v32(v28 + v29, 1, v30) == 1)
    {
      sub_24B6B9CD4(v28, &qword_27F034118, &qword_24B75E1D8);
      return 1;
    }

    goto LABEL_13;
  }

  v33 = v39;
  sub_24B6B9D34(v28, v39, &qword_27F034118, &qword_24B75E1D8);
  if (v32(v28 + v29, 1, v30) == 1)
  {
    (*(v31 + 8))(v33, v30);
LABEL_13:
    v22 = &qword_27F034218;
    v23 = &unk_24B761640;
    v24 = v28;
    goto LABEL_14;
  }

  v35 = v38;
  (*(v31 + 32))(v38, v28 + v29, v30);
  sub_24B6A6F0C(&qword_27F034228, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v36 = sub_24B75C2D8();
  v37 = *(v31 + 8);
  v37(v35, v30);
  v37(v33, v30);
  sub_24B6B9CD4(v28, &qword_27F034118, &qword_24B75E1D8);
  return (v36 & 1) != 0;
}

unint64_t sub_24B701C8C()
{
  result = qword_27F035160;
  if (!qword_27F035160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035160);
  }

  return result;
}

unint64_t sub_24B701CE4()
{
  result = qword_27F035168;
  if (!qword_27F035168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035168);
  }

  return result;
}

unint64_t sub_24B701D3C()
{
  result = qword_27F035170;
  if (!qword_27F035170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035170);
  }

  return result;
}

uint64_t sub_24B701DBC@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_24B75B898();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = sub_24B75B8B8();
  v27 = *(v8 - 8);
  v9 = v27;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  sub_24B75B8C8();
  sub_24B75B8A8();
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  v16 = *(v2 + 16);
  v16(v4, v7, v1);
  v17 = v28;
  v15(v28, v11, v8);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035180, &qword_24B762580) + 48)];
  v19 = v25;
  v16(v18, v4, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v4, v22);
  return (v23)(v11, v8);
}

uint64_t sub_24B70204C@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  *a2 = sub_24B75B6B8();
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035178, &qword_24B762578);
  return sub_24B701DBC((a2 + *(v5 + 44)));
}

unint64_t sub_24B7020AC()
{
  result = qword_27F035188;
  if (!qword_27F035188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035190, &qword_24B762588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035188);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutScheduleBannerLabelStyle(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24B7021DC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v5 = sub_24B75BEE8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035198, &qword_24B762628);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0351A0, &qword_24B762630);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = v27 - v15;
  *v12 = sub_24B75B6B8();
  *(v12 + 1) = 0x4024000000000000;
  v12[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0351A8, &qword_24B762638);
  sub_24B7024C0(v3, &v12[*(v17 + 44)]);
  v18 = sub_24B75B9A8();
  v19 = &v12[*(v10 + 44)];
  *v19 = v18;
  *(v19 + 8) = xmmword_24B762590;
  *(v19 + 24) = xmmword_24B762590;
  v19[40] = 0;
  sub_24B75C168();
  sub_24B75B5C8();
  sub_24B6B8DE8(v12, v16, &qword_27F035198, &qword_24B762628);
  v20 = &v16[*(v14 + 44)];
  v21 = v27[5];
  *(v20 + 4) = v27[4];
  *(v20 + 5) = v21;
  *(v20 + 6) = v27[6];
  v22 = v27[1];
  *v20 = v27[0];
  *(v20 + 1) = v22;
  v23 = v27[3];
  *(v20 + 2) = v27[2];
  *(v20 + 3) = v23;
  (*(v6 + 104))(v8, *MEMORY[0x277CE0EE0], v5);
  v24 = sub_24B75BF48();
  LOBYTE(v8) = sub_24B75B9A8();
  sub_24B6B8DE8(v16, a3, &qword_27F0351A0, &qword_24B762630);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0351B0, &qword_24B762640);
  v26 = a3 + *(result + 36);
  *v26 = v24;
  *(v26 + 8) = v8;
  return result;
}

uint64_t sub_24B7024C0@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v41 = a1;
  v47 = a2;
  v2 = sub_24B75BAE8();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  v43 = &v40[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0351B8, &qword_24B762648);
  MEMORY[0x28223BE20](v42);
  v46 = &v40[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v40[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0351C0, &qword_24B762650);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v40[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0351C8, &qword_24B762658);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v40[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0351D0, &qword_24B762660);
  MEMORY[0x28223BE20](v15);
  v17 = &v40[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v40[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v40[-v22];
  sub_24B75B8A8();
  v24 = sub_24B75BA68();
  (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
  v25 = sub_24B75BAA8();
  sub_24B6B9CD4(v10, &qword_27F0351C0, &qword_24B762650);
  KeyPath = swift_getKeyPath();
  v27 = &v14[*(v12 + 44)];
  *v27 = KeyPath;
  v27[1] = v25;
  if (v41)
  {
    v28 = sub_24B75BF18();
  }

  else
  {
    v28 = sub_24B75BF38();
  }

  v29 = v28;
  sub_24B6B8DE8(v14, v20, &qword_27F0351C8, &qword_24B762658);
  *&v20[*(v15 + 36)] = v29;
  sub_24B6B8DE8(v20, v23, &qword_27F0351D0, &qword_24B762660);
  sub_24B75B8C8();
  sub_24B75BA28();
  v31 = v43;
  v30 = v44;
  v32 = v45;
  (*(v44 + 104))(v43, *MEMORY[0x277CE0A10], v45);
  v33 = sub_24B75BB28();

  (*(v30 + 8))(v31, v32);
  v34 = swift_getKeyPath();
  v35 = &v7[*(v42 + 36)];
  *v35 = v34;
  v35[1] = v33;
  sub_24B6B9D34(v23, v17, &qword_27F0351D0, &qword_24B762660);
  v36 = v46;
  sub_24B6B9D34(v7, v46, &qword_27F0351B8, &qword_24B762648);
  v37 = v47;
  sub_24B6B9D34(v17, v47, &qword_27F0351D0, &qword_24B762660);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0351D8, &qword_24B762698);
  sub_24B6B9D34(v36, v37 + *(v38 + 48), &qword_27F0351B8, &qword_24B762648);
  sub_24B6B9CD4(v7, &qword_27F0351B8, &qword_24B762648);
  sub_24B6B9CD4(v23, &qword_27F0351D0, &qword_24B762660);
  sub_24B6B9CD4(v36, &qword_27F0351B8, &qword_24B762648);
  return sub_24B6B9CD4(v17, &qword_27F0351D0, &qword_24B762660);
}

uint64_t sub_24B70297C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B75B658();
  *a1 = result;
  return result;
}

unint64_t sub_24B7029D4()
{
  result = qword_27F0351E0;
  if (!qword_27F0351E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0351B0, &qword_24B762640);
    sub_24B702A8C();
    sub_24B6C743C(&qword_27F0346C8, &qword_27F034590, &qword_24B75F930, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0351E0);
  }

  return result;
}

unint64_t sub_24B702A8C()
{
  result = qword_27F0351E8;
  if (!qword_27F0351E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0351A0, &qword_24B762630);
    sub_24B702B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0351E8);
  }

  return result;
}

unint64_t sub_24B702B18()
{
  result = qword_27F0351F0;
  if (!qword_27F0351F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035198, &qword_24B762628);
    sub_24B6C743C(&qword_27F0351F8, &qword_27F035200, &unk_24B7626A0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0351F0);
  }

  return result;
}

uint64_t sub_24B702BE0(uint64_t a1)
{
  v2 = sub_24B7031D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B702C1C(uint64_t a1)
{
  v2 = sub_24B7031D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B702C58()
{
  if (*v0)
  {
    return 0x7463697274736572;
  }

  else
  {
    return 0x6465776F6C6C61;
  }
}

uint64_t sub_24B702C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6465776F6C6C61 && a2 == 0xE700000000000000;
  if (v6 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7463697274736572 && a2 == 0xEA00000000006465)
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

uint64_t sub_24B702D7C(uint64_t a1)
{
  v2 = sub_24B703128();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B702DB8(uint64_t a1)
{
  v2 = sub_24B703128();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B702DF4(uint64_t a1)
{
  v2 = sub_24B70317C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B702E30(uint64_t a1)
{
  v2 = sub_24B70317C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SampleContentPlaybackRestriction.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035208, &qword_24B7626B0);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035210, &qword_24B7626B8);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035218, &qword_24B7626C0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B703128();
  sub_24B75C738();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_24B70317C();
    sub_24B75C638();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_24B7031D0();
    sub_24B75C638();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_24B703128()
{
  result = qword_27F035220;
  if (!qword_27F035220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035220);
  }

  return result;
}

unint64_t sub_24B70317C()
{
  result = qword_27F035228;
  if (!qword_27F035228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035228);
  }

  return result;
}

unint64_t sub_24B7031D0()
{
  result = qword_27F035230;
  if (!qword_27F035230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035230);
  }

  return result;
}

uint64_t SampleContentPlaybackRestriction.hashValue.getter(char a1)
{
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](a1 & 1);
  return sub_24B75C718();
}

uint64_t sub_24B7032B0@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B7032FC(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_24B7032FC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035270, &qword_24B762A40);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035278, &qword_24B762A48);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035280, &unk_24B762A50);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B703128();
  v11 = v26;
  sub_24B75C728();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_24B75C628();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_24B6B9E04();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_24B75C568();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0);
    *v19 = &type metadata for SampleContentPlaybackRestriction;
    sub_24B75C5A8();
    sub_24B75C558();
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
    sub_24B70317C();
    sub_24B75C598();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_24B7031D0();
    sub_24B75C598();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v31 & 1;
}

unint64_t sub_24B703800()
{
  result = qword_27F035238;
  if (!qword_27F035238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035238);
  }

  return result;
}

unint64_t sub_24B703858()
{
  result = qword_27F035240;
  if (!qword_27F035240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035240);
  }

  return result;
}

unint64_t sub_24B7038B0()
{
  result = qword_27F035248;
  if (!qword_27F035248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035248);
  }

  return result;
}

unint64_t sub_24B703908()
{
  result = qword_27F035250;
  if (!qword_27F035250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035250);
  }

  return result;
}

unint64_t sub_24B703960()
{
  result = qword_27F035258;
  if (!qword_27F035258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035258);
  }

  return result;
}

unint64_t sub_24B7039B8()
{
  result = qword_27F035260;
  if (!qword_27F035260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035260);
  }

  return result;
}

unint64_t sub_24B703A10()
{
  result = qword_27F035268;
  if (!qword_27F035268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035268);
  }

  return result;
}

uint64_t sub_24B703A68()
{
  v1 = 0x676E696863746566;
  if (*v0 != 1)
  {
    v1 = 1701602409;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656863746566;
  }
}

uint64_t sub_24B703ABC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B7059C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B703AE4(uint64_t a1)
{
  v2 = sub_24B70533C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B703B20(uint64_t a1)
{
  v2 = sub_24B70533C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B703B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_24B703BFC(uint64_t a1)
{
  v2 = sub_24B70549C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B703C38(uint64_t a1)
{
  v2 = sub_24B70549C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B703C74(uint64_t a1)
{
  v2 = sub_24B705448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B703CB0(uint64_t a1)
{
  v2 = sub_24B705448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B703CEC(uint64_t a1)
{
  v2 = sub_24B7053F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B703D28(uint64_t a1)
{
  v2 = sub_24B7053F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditorialDetailLoadState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035288, &qword_24B762A60);
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x28223BE20](v2);
  v32 = &v25 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035290, &qword_24B762A68);
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  v27 = &v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035298, &qword_24B762A70);
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v26 = type metadata accessor for EditorialDetailContent(0);
  MEMORY[0x28223BE20](v26);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for EditorialDetailLoadState(0);
  MEMORY[0x28223BE20](State - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0352A0, &unk_24B762A78);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B70533C();
  sub_24B75C738();
  sub_24B705390(v35, v13);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
  v19 = (*(*(v18 - 8) + 48))(v13, 2, v18);
  if (v19)
  {
    if (v19 == 1)
    {
      v37 = 1;
      sub_24B705448();
      v20 = v27;
      sub_24B75C638();
      v22 = v28;
      v21 = v29;
    }

    else
    {
      v38 = 2;
      sub_24B7053F4();
      v20 = v32;
      sub_24B75C638();
      v22 = v33;
      v21 = v34;
    }

    (*(v22 + 8))(v20, v21);
    return (*(v15 + 8))(v17, v14);
  }

  else
  {
    sub_24B7054F0(v13, v10, type metadata accessor for EditorialDetailContent);
    v36 = 0;
    sub_24B70549C();
    sub_24B75C638();
    sub_24B7055A0(&qword_27F0352C8, type metadata accessor for EditorialDetailContent, &protocol conformance descriptor for EditorialDetailContent);
    v23 = v31;
    sub_24B75C6A8();
    (*(v30 + 8))(v8, v23);
    sub_24B705B40(v10, type metadata accessor for EditorialDetailContent);
    return (*(v15 + 8))(v17, v14);
  }
}

uint64_t EditorialDetailLoadState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0352D0, &qword_24B762A88);
  v50 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0352D8, &qword_24B762A90);
  v5 = *(v4 - 8);
  v47 = v4;
  v48 = v5;
  MEMORY[0x28223BE20](v4);
  v51 = &v45 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0352E0, &qword_24B762A98);
  v49 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0352E8, &unk_24B762AA0);
  v56 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - v10;
  State = type metadata accessor for EditorialDetailLoadState(0);
  MEMORY[0x28223BE20](State);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  v18 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24B70533C();
  v19 = v57;
  sub_24B75C728();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v58);
  }

  v20 = State;
  v45 = v14;
  v46 = v17;
  v21 = v52;
  v22 = v53;
  v57 = 0;
  v23 = v54;
  v24 = v55;
  v25 = sub_24B75C628();
  v26 = (2 * *(v25 + 16)) | 1;
  v59 = v25;
  v60 = v25 + 32;
  v61 = 0;
  v62 = v26;
  v27 = sub_24B6B9E08();
  if (v27 == 3 || v61 != v62 >> 1)
  {
    v31 = v11;
    v32 = sub_24B75C568();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0);
    *v34 = v20;
    sub_24B75C5A8();
    sub_24B75C558();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
    swift_willThrow();
    (*(v56 + 8))(v31, v9);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v58);
  }

  if (v27)
  {
    if (v27 == 1)
    {
      v63 = 1;
      sub_24B705448();
      v28 = v51;
      v29 = v57;
      sub_24B75C598();
      v30 = v56;
      if (v29)
      {
        goto LABEL_11;
      }

      (*(v48 + 8))(v28, v47);
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
      v40 = v46;
      (*(*(v39 - 8) + 56))(v46, 1, 2, v39);
    }

    else
    {
      v63 = 2;
      sub_24B7053F4();
      v37 = v57;
      sub_24B75C598();
      v38 = v56;
      if (v37)
      {
        goto LABEL_11;
      }

      (*(v50 + 8))(v22, v23);
      (*(v38 + 8))(v11, v9);
      swift_unknownObjectRelease();
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
      v40 = v46;
      (*(*(v44 - 8) + 56))(v46, 2, 2, v44);
    }

    v43 = v24;
  }

  else
  {
    v63 = 0;
    sub_24B70549C();
    v36 = v57;
    sub_24B75C598();
    if (v36)
    {
LABEL_11:
      (*(v56 + 8))(v11, v9);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v58);
    }

    type metadata accessor for EditorialDetailContent(0);
    sub_24B7055A0(&qword_27F0352F0, type metadata accessor for EditorialDetailContent, &protocol conformance descriptor for EditorialDetailContent);
    v41 = v45;
    sub_24B75C618();
    (*(v49 + 8))(v8, v21);
    (*(v56 + 8))(v11, v9);
    swift_unknownObjectRelease();
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
    (*(*(v42 - 8) + 56))(v41, 0, 2, v42);
    v40 = v46;
    sub_24B7054F0(v41, v46, type metadata accessor for EditorialDetailLoadState);
    v43 = v24;
  }

  sub_24B7054F0(v40, v43, type metadata accessor for EditorialDetailLoadState);
  return __swift_destroy_boxed_opaque_existential_1(v58);
}

uint64_t EditorialDetailLoadState.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for EditorialDetailContent(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for EditorialDetailLoadState(0);
  MEMORY[0x28223BE20](State - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B705390(v2, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
  v11 = (*(*(v10 - 8) + 48))(v9, 2, v10);
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    return MEMORY[0x24C2489B0](v12);
  }

  else
  {
    sub_24B7054F0(v9, v6, type metadata accessor for EditorialDetailContent);
    MEMORY[0x24C2489B0](0);
    EditorialDetailContent.hash(into:)(a1);
    return sub_24B705B40(v6, type metadata accessor for EditorialDetailContent);
  }
}

uint64_t EditorialDetailLoadState.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for EditorialDetailContent(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for EditorialDetailLoadState(0);
  MEMORY[0x28223BE20](State - 8);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B75C6D8();
  sub_24B705390(v1, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
  v9 = (*(*(v8 - 8) + 48))(v7, 2, v8);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    MEMORY[0x24C2489B0](v10);
  }

  else
  {
    sub_24B7054F0(v7, v4, type metadata accessor for EditorialDetailContent);
    MEMORY[0x24C2489B0](0);
    EditorialDetailContent.hash(into:)(v13);
    sub_24B705B40(v4, type metadata accessor for EditorialDetailContent);
  }

  return sub_24B75C718();
}

uint64_t sub_24B704D84(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for EditorialDetailContent(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B705390(v2, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
  v11 = (*(*(v10 - 8) + 48))(v9, 2, v10);
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    return MEMORY[0x24C2489B0](v12);
  }

  else
  {
    sub_24B7054F0(v9, v6, type metadata accessor for EditorialDetailContent);
    MEMORY[0x24C2489B0](0);
    EditorialDetailContent.hash(into:)(a1);
    return sub_24B705B40(v6, type metadata accessor for EditorialDetailContent);
  }
}

uint64_t sub_24B704EF0(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for EditorialDetailContent(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B75C6D8();
  sub_24B705390(v2, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
  v10 = (*(*(v9 - 8) + 48))(v8, 2, v9);
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    MEMORY[0x24C2489B0](v11);
  }

  else
  {
    sub_24B7054F0(v8, v5, type metadata accessor for EditorialDetailContent);
    MEMORY[0x24C2489B0](0);
    EditorialDetailContent.hash(into:)(v14);
    sub_24B705B40(v5, type metadata accessor for EditorialDetailContent);
  }

  return sub_24B75C718();
}

uint64_t _s20FitnessProductDetail09EditorialC9LoadStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialDetailContent(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for EditorialDetailLoadState(0);
  MEMORY[0x28223BE20](State - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035350, &qword_24B762F48);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v14 = *(v13 + 56);
  sub_24B705390(a1, &v20 - v11);
  sub_24B705390(a2, &v12[v14]);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
  v16 = *(*(v15 - 8) + 48);
  v17 = v16(v12, 2, v15);
  if (!v17)
  {
    sub_24B705390(v12, v9);
    if (!v16(&v12[v14], 2, v15))
    {
      sub_24B7054F0(&v12[v14], v6, type metadata accessor for EditorialDetailContent);
      v18 = _s20FitnessProductDetail09EditorialC7ContentV2eeoiySbAC_ACtFZ_0(v9, v6);
      sub_24B705B40(v6, type metadata accessor for EditorialDetailContent);
      sub_24B705B40(v9, type metadata accessor for EditorialDetailContent);
      sub_24B705B40(v12, type metadata accessor for EditorialDetailLoadState);
      return v18 & 1;
    }

    sub_24B705B40(v9, type metadata accessor for EditorialDetailContent);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v12[v14], 2, v15) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v12[v14], 2, v15) != 2)
  {
LABEL_9:
    sub_24B705AD8(v12);
    v18 = 0;
    return v18 & 1;
  }

  sub_24B705B40(v12, type metadata accessor for EditorialDetailLoadState);
  v18 = 1;
  return v18 & 1;
}

unint64_t sub_24B70533C()
{
  result = qword_27F0352A8;
  if (!qword_27F0352A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0352A8);
  }

  return result;
}

uint64_t sub_24B705390(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for EditorialDetailLoadState(0);
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
}

unint64_t sub_24B7053F4()
{
  result = qword_27F0352B0;
  if (!qword_27F0352B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0352B0);
  }

  return result;
}

unint64_t sub_24B705448()
{
  result = qword_27F0352B8;
  if (!qword_27F0352B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0352B8);
  }

  return result;
}

unint64_t sub_24B70549C()
{
  result = qword_27F0352C0;
  if (!qword_27F0352C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0352C0);
  }

  return result;
}

uint64_t sub_24B7054F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B7055A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24B705654()
{
  result = qword_27F035300;
  if (!qword_27F035300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035300);
  }

  return result;
}

unint64_t sub_24B7056AC()
{
  result = qword_27F035308;
  if (!qword_27F035308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035308);
  }

  return result;
}

unint64_t sub_24B705704()
{
  result = qword_27F035310;
  if (!qword_27F035310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035310);
  }

  return result;
}

unint64_t sub_24B70575C()
{
  result = qword_27F035318;
  if (!qword_27F035318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035318);
  }

  return result;
}

unint64_t sub_24B7057B4()
{
  result = qword_27F035320;
  if (!qword_27F035320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035320);
  }

  return result;
}

unint64_t sub_24B70580C()
{
  result = qword_27F035328;
  if (!qword_27F035328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035328);
  }

  return result;
}

unint64_t sub_24B705864()
{
  result = qword_27F035330;
  if (!qword_27F035330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035330);
  }

  return result;
}

unint64_t sub_24B7058BC()
{
  result = qword_27F035338;
  if (!qword_27F035338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035338);
  }

  return result;
}

unint64_t sub_24B705914()
{
  result = qword_27F035340;
  if (!qword_27F035340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035340);
  }

  return result;
}

unint64_t sub_24B70596C()
{
  result = qword_27F035348;
  if (!qword_27F035348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035348);
  }

  return result;
}

uint64_t sub_24B7059C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656863746566 && a2 == 0xE700000000000000;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701602409 && a2 == 0xE400000000000000)
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

uint64_t sub_24B705AD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035350, &qword_24B762F48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B705B40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id static UIColor.keyTint.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
}

uint64_t sub_24B705BF0()
{
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];

  return sub_24B75BED8();
}

__n128 WorkoutDetailLayout.contentMargins.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

double WorkoutDetailLayout.sectionDensityFactor.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 8) = result;
  *(a1 + 16) = v3;
  return result;
}

double WorkoutDetailLayout.init(contentMargins:dynamicTypeSize:sectionDensityFactor:sizeClass:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, double *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a3;
  result = a3[1];
  v8 = *(a3 + 2);
  v9 = *a4;
  v5 = *(a1 + 32);
  v10 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v10;
  *(a5 + 32) = v5;
  *(a5 + 33) = a2;
  *(a5 + 40) = v6;
  *(a5 + 48) = result;
  *(a5 + 56) = v8;
  *(a5 + 64) = v9;
  return result;
}

unint64_t sub_24B705CD0()
{
  v1 = 0x4D746E65746E6F63;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x73616C43657A6973;
  }

  if (*v0)
  {
    v1 = 0x5463696D616E7964;
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

uint64_t sub_24B705D6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B706B58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B705D94(uint64_t a1)
{
  v2 = sub_24B706624();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B705DD0(uint64_t a1)
{
  v2 = sub_24B706624();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutDetailLayout.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035358, &qword_24B762F70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = *(v3 + 32);
  v21 = *(v3 + 33);
  v10 = *(v3 + 5);
  v11 = *(v3 + 6);
  v19 = *(v3 + 7);
  v20 = v10;
  v18 = *(v3 + 64);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B706624();
  sub_24B75C738();
  v12 = *v3;
  v24 = v3[1];
  v23 = v12;
  v25 = v9;
  v22 = 0;
  sub_24B706678();
  sub_24B75C668();
  if (!v2)
  {
    v14 = v19;
    v13 = v20;
    v15 = v18;
    LOBYTE(v23) = v21;
    v22 = 1;
    sub_24B7066CC();
    sub_24B75C6A8();
    *&v23 = v13;
    *(&v23 + 1) = v11;
    *&v24 = v14;
    v22 = 2;
    sub_24B706720();
    sub_24B75C6A8();
    LOBYTE(v23) = v15;
    v22 = 3;
    sub_24B706774();
    sub_24B75C6A8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t WorkoutDetailLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035388, &qword_24B762F78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B706624();
  sub_24B75C728();
  if (!v2)
  {
    v19 = 0;
    sub_24B7067C8();
    sub_24B75C5D8();
    v17 = v20;
    v18 = v21;
    v23 = v22;
    v19 = 1;
    sub_24B70681C();
    sub_24B75C618();
    v9 = v20;
    v19 = 2;
    sub_24B706870();
    sub_24B75C618();
    v11 = v20;
    v16 = v21;
    v19 = 3;
    sub_24B7068C4();
    sub_24B75C618();
    (*(v6 + 8))(v8, v5);
    v12 = v20;
    v13 = v23;
    v14 = v18;
    *a2 = v17;
    *(a2 + 16) = v14;
    *(a2 + 32) = v13;
    *(a2 + 33) = v9;
    *(a2 + 40) = v11;
    *(a2 + 56) = v16;
    *(a2 + 64) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t WorkoutDetailLayout.hash(into:)()
{
  v1 = *(v0 + 33);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  sub_24B6BB698();
  MEMORY[0x24C2489B0](v1);
  MEMORY[0x24C2489B0](v2);
  v6 = 0.0;
  if (v3 != 0.0)
  {
    v6 = v3;
  }

  MEMORY[0x24C2489D0](*&v6);
  MEMORY[0x24C2489B0](v4);
  return MEMORY[0x24C2489B0](v5);
}

uint64_t WorkoutDetailLayout.hashValue.getter()
{
  v1 = *(v0 + 33);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  sub_24B75C6D8();
  sub_24B6BB698();
  MEMORY[0x24C2489B0](v1);
  MEMORY[0x24C2489B0](v2);
  v6 = 0.0;
  if (v3 != 0.0)
  {
    v6 = v3;
  }

  MEMORY[0x24C2489D0](*&v6);
  MEMORY[0x24C2489B0](v4);
  MEMORY[0x24C2489B0](v5);
  return sub_24B75C718();
}

uint64_t sub_24B7064A0(uint64_t a1)
{
  v2 = *(v1 + 33);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  sub_24B75C6D8();
  sub_24B6BB698();
  MEMORY[0x24C2489B0](v2);
  MEMORY[0x24C2489B0](v3);
  v7 = 0.0;
  if (v4 != 0.0)
  {
    v7 = v4;
  }

  MEMORY[0x24C2489D0](*&v7);
  MEMORY[0x24C2489B0](v5);
  MEMORY[0x24C2489B0](v6);
  return sub_24B75C718();
}

BOOL _s20FitnessProductDetail07WorkoutC6LayoutV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 33);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((*(a2 + 32) & 1) != 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), xmmword_24B762F60)) & 0xF) != 0)
    {
      return result;
    }
  }

  v10 = v3 == *(a2 + 33) && v4 == *(a2 + 40);
  if (v5 != *(a2 + 48))
  {
    v10 = 0;
  }

  if (v6 != *(a2 + 56))
  {
    v10 = 0;
  }

  return v7 == *(a2 + 64) && v10;
}

unint64_t sub_24B706624()
{
  result = qword_27F035360;
  if (!qword_27F035360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035360);
  }

  return result;
}

unint64_t sub_24B706678()
{
  result = qword_27F035368;
  if (!qword_27F035368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035368);
  }

  return result;
}

unint64_t sub_24B7066CC()
{
  result = qword_27F035370;
  if (!qword_27F035370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035370);
  }

  return result;
}

unint64_t sub_24B706720()
{
  result = qword_27F035378;
  if (!qword_27F035378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035378);
  }

  return result;
}

unint64_t sub_24B706774()
{
  result = qword_27F035380;
  if (!qword_27F035380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035380);
  }

  return result;
}

unint64_t sub_24B7067C8()
{
  result = qword_27F035390;
  if (!qword_27F035390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035390);
  }

  return result;
}

unint64_t sub_24B70681C()
{
  result = qword_27F035398;
  if (!qword_27F035398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035398);
  }

  return result;
}

unint64_t sub_24B706870()
{
  result = qword_27F0353A0;
  if (!qword_27F0353A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0353A0);
  }

  return result;
}

unint64_t sub_24B7068C4()
{
  result = qword_27F0353A8;
  if (!qword_27F0353A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0353A8);
  }

  return result;
}

unint64_t sub_24B70691C()
{
  result = qword_27F0353B0;
  if (!qword_27F0353B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0353B0);
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24B706994(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 65))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 64);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24B7069D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_24B706A54()
{
  result = qword_27F0353B8;
  if (!qword_27F0353B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0353B8);
  }

  return result;
}

unint64_t sub_24B706AAC()
{
  result = qword_27F0353C0;
  if (!qword_27F0353C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0353C0);
  }

  return result;
}

unint64_t sub_24B706B04()
{
  result = qword_27F0353C8;
  if (!qword_27F0353C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0353C8);
  }

  return result;
}

uint64_t sub_24B706B58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5463696D616E7964 && a2 == 0xEF657A6953657079 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B76BE10 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73616C43657A6973 && a2 == 0xE900000000000073)
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

uint64_t sub_24B706CDC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B706D38(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 72);
    for (i = (a2 + 40); ; i += 6)
    {
      v5 = *(v3 - 4);
      v6 = *(v3 - 3);
      v8 = *(v3 - 2);
      v7 = *(v3 - 1);
      v9 = *v3;
      v10 = *i;
      v11 = i[1];
      v13 = i[2];
      v12 = i[3];
      v14 = i[4];
      if (v5)
      {
        if (!v10)
        {
          return 0;
        }

        if (*(v3 - 5) != *(i - 1) || v5 != v10)
        {
          v21 = *v3;
          v15 = i[4];
          v16 = sub_24B75C6B8();
          v14 = v15;
          v9 = v21;
          if ((v16 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v10)
      {
        return 0;
      }

      if (v6 != v11 || v8 != v13)
      {
        v17 = v9;
        v18 = v14;
        v19 = sub_24B75C6B8();
        v14 = v18;
        v9 = v17;
        if ((v19 & 1) == 0)
        {
          break;
        }
      }

      if ((v7 != v12 || v9 != v14) && (sub_24B75C6B8() & 1) == 0)
      {
        break;
      }

      v3 += 6;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_24B706E90(uint64_t a1, uint64_t a2)
{
  v86 = sub_24B75B108();
  v90 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v79 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  MEMORY[0x28223BE20](v5 - 8);
  v84 = &v67 - v6;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034218, &unk_24B761640);
  MEMORY[0x28223BE20](v85);
  v88 = &v67 - v7;
  v8 = sub_24B75B298();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  MEMORY[0x28223BE20](v12 - 8);
  v80 = &v67 - v13;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034220, &unk_24B75E810);
  MEMORY[0x28223BE20](v87);
  v15 = &v67 - v14;
  v91 = type metadata accessor for WorkoutDetailMusicTrack(0);
  MEMORY[0x28223BE20](v91);
  v17 = (&v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v21 = (&v67 - v20);
  v22 = *(a1 + 16);
  if (v22 == *(a2 + 16))
  {
    if (!v22 || a1 == a2)
    {
      return 1;
    }

    v70 = v11;
    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = a1 + v23;
    v25 = a2 + v23;
    v26 = (v9 + 48);
    v69 = (v9 + 32);
    v71 = (v9 + 8);
    v77 = (v90 + 48);
    v67 = (v90 + 32);
    v68 = (v90 + 8);
    v72 = *(v19 + 72);
    v73 = (v9 + 48);
    v74 = v8;
    v75 = v15;
    v78 = v17;
    v76 = &v67 - v20;
    while (1)
    {
      v82 = v24;
      sub_24B70EF78(v24, v21, type metadata accessor for WorkoutDetailMusicTrack);
      v83 = v22;
      v81 = v25;
      sub_24B70EF78(v25, v17, type metadata accessor for WorkoutDetailMusicTrack);
      v30 = *v21 == *v17 && v21[1] == v17[1];
      v31 = v88;
      if (!v30 && (sub_24B75C6B8() & 1) == 0)
      {
        break;
      }

      v32 = v91[5];
      v33 = v17 + v32;
      v34 = *(v87 + 48);
      v89 = v21 + v32;
      sub_24B6B9D34(v21 + v32, v15, &qword_27F034120, &unk_24B75E1E0);
      v90 = v33;
      sub_24B6B9D34(v33, &v15[v34], &qword_27F034120, &unk_24B75E1E0);
      v35 = *v26;
      if ((*v26)(v15, 1, v8) == 1)
      {
        if (v35(&v15[v34], 1, v8) != 1)
        {
          goto LABEL_35;
        }

        sub_24B6B9CD4(v15, &qword_27F034120, &unk_24B75E1E0);
        v17 = v78;
      }

      else
      {
        v36 = v80;
        sub_24B6B9D34(v15, v80, &qword_27F034120, &unk_24B75E1E0);
        if (v35(&v15[v34], 1, v8) == 1)
        {
          (*v71)(v36, v8);
LABEL_35:
          sub_24B6B9CD4(v15, &qword_27F034220, &unk_24B75E810);
          v17 = v78;
          break;
        }

        v37 = &v15[v34];
        v38 = v36;
        v39 = v70;
        (*v69)(v70, v37, v8);
        sub_24B6A80B8(&qword_27F034230, MEMORY[0x277D09D68], MEMORY[0x277D09D80]);
        v40 = sub_24B75C2D8();
        v41 = *v71;
        (*v71)(v39, v8);
        v42 = v38;
        v15 = v75;
        v41(v42, v8);
        sub_24B6B9CD4(v15, &qword_27F034120, &unk_24B75E1E0);
        v17 = v78;
        if ((v40 & 1) == 0)
        {
          break;
        }
      }

      v43 = type metadata accessor for WorkoutDetailArtwork(0);
      v44 = *(v43 + 20);
      v45 = *(v85 + 48);
      sub_24B6B9D34(&v89[v44], v31, &qword_27F034118, &qword_24B75E1D8);
      sub_24B6B9D34(v90 + v44, v31 + v45, &qword_27F034118, &qword_24B75E1D8);
      v46 = *v77;
      v47 = v86;
      if ((*v77)(v31, 1, v86) == 1)
      {
        if (v46(v31 + v45, 1, v47) != 1)
        {
          goto LABEL_37;
        }

        sub_24B6B9CD4(v31, &qword_27F034118, &qword_24B75E1D8);
        v8 = v74;
        v21 = v76;
      }

      else
      {
        sub_24B6B9D34(v31, v84, &qword_27F034118, &qword_24B75E1D8);
        if (v46(v31 + v45, 1, v47) == 1)
        {
          (*v68)(v84, v47);
LABEL_37:
          sub_24B6B9CD4(v31, &qword_27F034218, &unk_24B761640);
          v21 = v76;
          break;
        }

        v48 = v31 + v45;
        v49 = v84;
        v50 = v79;
        (*v67)(v79, v48, v47);
        sub_24B6A80B8(&qword_27F034228, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
        v51 = sub_24B75C2D8();
        v52 = *v68;
        v53 = v50;
        v15 = v75;
        (*v68)(v53, v47);
        v52(v49, v47);
        sub_24B6B9CD4(v88, &qword_27F034118, &qword_24B75E1D8);
        v8 = v74;
        v21 = v76;
        if ((v51 & 1) == 0)
        {
          break;
        }
      }

      v54 = *(v43 + 24);
      v55 = &v89[v54];
      v56 = *&v89[v54 + 8];
      v57 = (v90 + v54);
      if ((*v55 != *v57 || v56 != v57[1]) && (sub_24B75C6B8() & 1) == 0)
      {
        break;
      }

      sub_24B75B2D8();
      v58 = MEMORY[0x277D09E00];
      sub_24B6A80B8(&qword_27F034B48, MEMORY[0x277D09E00], MEMORY[0x277D09E18]);
      sub_24B6A80B8(&qword_2810F7AC8, v58, MEMORY[0x277D09E20]);
      v26 = v73;
      if ((sub_24B75B338() & 1) == 0 || *(v21 + v91[7]) != *(v17 + v91[7]))
      {
        break;
      }

      v59 = v91[8];
      v60 = *(v21 + v59);
      v61 = *(v21 + v59 + 8);
      v62 = (v17 + v59);
      if ((v60 != *v62 || v61 != v62[1]) && (sub_24B75C6B8() & 1) == 0)
      {
        break;
      }

      v63 = v91[9];
      v64 = *(v21 + v63);
      v65 = *(v21 + v63 + 8);
      v66 = (v17 + v63);
      if (v64 == *v66 && v65 == v66[1])
      {
        sub_24B70EFE0(v17, type metadata accessor for WorkoutDetailMusicTrack);
        sub_24B70EFE0(v21, type metadata accessor for WorkoutDetailMusicTrack);
        v28 = v83;
      }

      else
      {
        v27 = sub_24B75C6B8();
        sub_24B70EFE0(v17, type metadata accessor for WorkoutDetailMusicTrack);
        sub_24B70EFE0(v21, type metadata accessor for WorkoutDetailMusicTrack);
        v28 = v83;
        if ((v27 & 1) == 0)
        {
          return 0;
        }
      }

      v25 = v81 + v72;
      v24 = v82 + v72;
      result = 1;
      v22 = v28 - 1;
      if (!v22)
      {
        return result;
      }
    }

    sub_24B70EFE0(v17, type metadata accessor for WorkoutDetailMusicTrack);
    sub_24B70EFE0(v21, type metadata accessor for WorkoutDetailMusicTrack);
  }

  return 0;
}

uint64_t sub_24B7078B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutDetailArtwork(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v60 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0340C8, &qword_24B75DFB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v56 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034138, &unk_24B7634A0);
  MEMORY[0x28223BE20](v62);
  v11 = &v56 - v10;
  v61 = type metadata accessor for WorkoutDetailTrainer(0);
  MEMORY[0x28223BE20](v61);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
    return 0;
  }

  if (!v18 || a1 == a2)
  {
    return 1;
  }

  v59 = v4;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = (v5 + 48);
  v23 = *(v15 + 72);
  v57 = v9;
  v58 = v23;
  v24 = &qword_27F0340C8;
  v25 = &qword_24B75DFB0;
  v26 = v61;
  v56 = &v56 - v16;
  while (1)
  {
    v63 = v20;
    sub_24B70EF78(v20, v17, type metadata accessor for WorkoutDetailTrainer);
    v64 = v21;
    v65 = v18;
    sub_24B70EF78(v21, v13, type metadata accessor for WorkoutDetailTrainer);
    v29 = *(v62 + 48);
    sub_24B6B9D34(v17, v11, v24, v25);
    sub_24B6B9D34(v13, &v11[v29], v24, v25);
    v30 = *v22;
    v31 = v25;
    v32 = v24;
    v33 = v59;
    if ((*v22)(v11, 1, v59) != 1)
    {
      break;
    }

    if (v30(&v11[v29], 1, v33) != 1)
    {
      goto LABEL_29;
    }

    v24 = v32;
    v34 = v32;
    v25 = v31;
    sub_24B6B9CD4(v11, v34, v31);
    v35 = v65;
LABEL_12:
    v41 = v26[5];
    v42 = &v17[v41];
    v43 = *&v17[v41 + 8];
    v44 = &v13[v41];
    v45 = *(v44 + 1);
    if (v43)
    {
      if (!v45)
      {
        goto LABEL_30;
      }

      v46 = *v42 == *v44 && v43 == v45;
      if (!v46 && (sub_24B75C6B8() & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else if (v45)
    {
      goto LABEL_30;
    }

    v47 = v26[6];
    v48 = *&v17[v47];
    v49 = *&v17[v47 + 8];
    v50 = &v13[v47];
    if ((v48 != *v50 || v49 != *(v50 + 1)) && (sub_24B75C6B8() & 1) == 0)
    {
      goto LABEL_30;
    }

    v51 = v26[7];
    v52 = *&v17[v51];
    v53 = *&v17[v51 + 8];
    v54 = &v13[v51];
    if (v52 == *v54 && v53 == *(v54 + 1))
    {
      sub_24B70EFE0(v13, type metadata accessor for WorkoutDetailTrainer);
      sub_24B70EFE0(v17, type metadata accessor for WorkoutDetailTrainer);
      v28 = v64;
    }

    else
    {
      v27 = sub_24B75C6B8();
      sub_24B70EFE0(v13, type metadata accessor for WorkoutDetailTrainer);
      sub_24B70EFE0(v17, type metadata accessor for WorkoutDetailTrainer);
      v28 = v64;
      if ((v27 & 1) == 0)
      {
        return 0;
      }
    }

    v21 = v28 + v58;
    v20 = v63 + v58;
    v18 = v35 - 1;
    if (!v18)
    {
      return 1;
    }
  }

  v36 = v57;
  sub_24B6B9D34(v11, v57, v32, v31);
  if (v30(&v11[v29], 1, v33) != 1)
  {
    v37 = v22;
    v38 = v60;
    sub_24B6BBFC4(&v11[v29], v60);
    v39 = static WorkoutDetailArtwork.== infix(_:_:)(v36, v38);
    v40 = v38;
    v22 = v37;
    sub_24B70EFE0(v40, type metadata accessor for WorkoutDetailArtwork);
    sub_24B70EFE0(v36, type metadata accessor for WorkoutDetailArtwork);
    sub_24B6B9CD4(v11, v32, v31);
    v17 = v56;
    v26 = v61;
    v24 = v32;
    v25 = v31;
    v35 = v65;
    if ((v39 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_12;
  }

  sub_24B70EFE0(v36, type metadata accessor for WorkoutDetailArtwork);
  v17 = v56;
LABEL_29:
  sub_24B6B9CD4(v11, &qword_27F034138, &unk_24B7634A0);
LABEL_30:
  sub_24B70EFE0(v13, type metadata accessor for WorkoutDetailTrainer);
  sub_24B70EFE0(v17, type metadata accessor for WorkoutDetailTrainer);
  return 0;
}

uint64_t sub_24B707E48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutProgramLinkAnnotation(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_16:
    v17 = 0;
    return v17 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_24B70EF78(v13, v10, type metadata accessor for WorkoutProgramLinkAnnotation);
      sub_24B70EF78(v14, v6, type metadata accessor for WorkoutProgramLinkAnnotation);
      if (*v10 != *v6)
      {
        break;
      }

      v16 = *(v10 + 1) == *(v6 + 1) && *(v10 + 2) == *(v6 + 2);
      if (!v16 && (sub_24B75C6B8() & 1) == 0)
      {
        break;
      }

      v17 = sub_24B75B0F8();
      sub_24B70EFE0(v6, type metadata accessor for WorkoutProgramLinkAnnotation);
      sub_24B70EFE0(v10, type metadata accessor for WorkoutProgramLinkAnnotation);
      if (v17)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_24B70EFE0(v6, type metadata accessor for WorkoutProgramLinkAnnotation);
    sub_24B70EFE0(v10, type metadata accessor for WorkoutProgramLinkAnnotation);
    goto LABEL_16;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_24B708070(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_24B75C6B8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t WorkoutDetail.accessibility.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B75AFE8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WorkoutDetail.activityTypes.getter()
{
  type metadata accessor for WorkoutDetail(0);
}

uint64_t type metadata accessor for WorkoutDetail(uint64_t a1)
{
  result = qword_2810F7968;
  if (!qword_2810F7968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutDetail.audioHintLanguages.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutDetail(0) + 24);
  v4 = sub_24B75AFE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutDetail.audioLanguages.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutDetail(0) + 28);
  v4 = sub_24B75AFE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutDetail.contributors.getter()
{
  type metadata accessor for WorkoutDetail(0);
}

uint64_t WorkoutDetail.description.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutDetail(0) + 48);
  v4 = sub_24B75AFE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutDetail.descriptionShorthand.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutDetail(0) + 52);
  v4 = sub_24B75AFE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutDetail.detail.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutDetail(0) + 56);
  v4 = sub_24B75AFE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutDetail.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutDetail(0) + 60));

  return v1;
}

uint64_t WorkoutDetail.musicPlaylistIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutDetail(0) + 68));

  return v1;
}

uint64_t WorkoutDetail.musicTracks.getter()
{
  type metadata accessor for WorkoutDetail(0);
}

uint64_t WorkoutDetail.previewStreamingProgramIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutDetail(0) + 84));

  return v1;
}

uint64_t WorkoutDetail.sampleContentIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutDetail(0) + 88));

  return v1;
}

uint64_t WorkoutDetail.sharingURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutDetail(0) + 92);
  v4 = sub_24B75B108();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutDetail.streamingURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutDetail(0) + 96);
  v4 = sub_24B75B108();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutDetail.streamingProgramIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutDetail(0) + 100));

  return v1;
}

uint64_t WorkoutDetail.subtitleLanguages.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutDetail(0) + 104);
  v4 = sub_24B75AFE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutDetail.summary.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutDetail(0) + 108);
  v4 = sub_24B75AFE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutDetail.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutDetail(0) + 112);
  v4 = sub_24B75AFE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutDetail.trainers.getter()
{
  type metadata accessor for WorkoutDetail(0);
}

uint64_t WorkoutDetail.bookmarkStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WorkoutDetail(0);
  *a1 = *(v1 + *(result + 120));
  return result;
}

uint64_t WorkoutDetail.bookmarkStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for WorkoutDetail(0);
  *(v1 + *(result + 120)) = v2;
  return result;
}

uint64_t WorkoutDetail.downloadStatus.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for WorkoutDetail(0);
  v4 = (v1 + *(result + 124));
  v5 = *v4;
  v6 = *(v4 + 4);
  LOBYTE(v4) = *(v4 + 10);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 10) = v4;
  return result;
}

uint64_t WorkoutDetail.downloadStatus.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 10);
  result = type metadata accessor for WorkoutDetail(0);
  v6 = v1 + *(result + 124);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 10) = v4;
  return result;
}

uint64_t WorkoutDetail.init(accessibility:activityTypes:audioHintLanguages:audioLanguages:artwork:artworkCropCode:bookmarkStatus:completedCount:contributors:description:descriptionShorthand:detail:downloadStatus:identifier:mediaType:musicPlaylistIdentifier:musicPlaylistURL:musicTracks:previewStreamingURL:previewStreamingProgramIdentifier:sampleContentIdentifier:sharingURL:streamingURL:streamingProgramIdentifier:subtitleLanguages:summary:title:trainers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v51 = *a7;
  v57 = *a14;
  v55 = *(a14 + 10);
  v56 = *(a14 + 4);
  v38 = type metadata accessor for WorkoutDetail(0);
  v39 = a9 + v38[31];
  *v39 = 0;
  *(v39 + 8) = 0;
  *(v39 + 10) = 1;
  v40 = sub_24B75AFE8();
  v41 = *(*(v40 - 8) + 32);
  v41(a9, a1, v40);
  *(a9 + v38[5]) = a2;
  v41(a9 + v38[6], a3, v40);
  v41(a9 + v38[7], a4, v40);
  sub_24B6BBFC4(a5, a9 + v38[8]);
  sub_24B6B8DE8(a6, a9 + v38[9], &qword_27F034600, &unk_24B75F9A0);
  *(a9 + v38[30]) = v51;
  *(a9 + v38[10]) = a8;
  *(a9 + v38[11]) = a10;
  v41(a9 + v38[12], a11, v40);
  v41(a9 + v38[13], a12, v40);
  v41(a9 + v38[14], a13, v40);
  v42 = (a9 + v38[15]);
  *v42 = a15;
  v42[1] = a16;
  *v39 = v57;
  *(v39 + 8) = v56;
  *(v39 + 10) = v55;
  *(a9 + v38[16]) = a17;
  v43 = (a9 + v38[17]);
  *v43 = a18;
  v43[1] = a19;
  sub_24B6B8DE8(a20, a9 + v38[18], &qword_27F034118, &qword_24B75E1D8);
  *(a9 + v38[19]) = a21;
  sub_24B6B8DE8(a22, a9 + v38[20], &qword_27F034118, &qword_24B75E1D8);
  v44 = (a9 + v38[21]);
  *v44 = a23;
  v44[1] = a24;
  v45 = (a9 + v38[22]);
  *v45 = a25;
  v45[1] = a26;
  v46 = v38[23];
  v47 = sub_24B75B108();
  v48 = *(*(v47 - 8) + 32);
  v48(a9 + v46, a27, v47);
  v48(a9 + v38[24], a28, v47);
  v49 = (a9 + v38[25]);
  *v49 = a29;
  v49[1] = a30;
  v41(a9 + v38[26], a31, v40);
  v41(a9 + v38[27], a32, v40);
  result = (v41)(a9 + v38[28], a33, v40);
  *(a9 + v38[29]) = a34;
  return result;
}

unint64_t sub_24B708F74(char a1)
{
  result = 0x6269737365636361;
  switch(a1)
  {
    case 1:
      result = 0x7974697669746361;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x6E614C6F69647561;
      break;
    case 4:
      result = 0x6B726F77747261;
      break;
    case 5:
      result = 0x436B726F77747261;
      break;
    case 6:
      result = 0x6574656C706D6F63;
      break;
    case 7:
      result = 0x75626972746E6F63;
      break;
    case 8:
      result = 0x7470697263736564;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x6C6961746564;
      break;
    case 11:
      result = 0x696669746E656469;
      break;
    case 12:
      result = 0x707954616964656DLL;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0x617254636973756DLL;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0xD000000000000021;
      break;
    case 18:
      result = 0xD000000000000017;
      break;
    case 19:
      result = 0x55676E6972616873;
      break;
    case 20:
      result = 0x6E696D6165727473;
      break;
    case 21:
      result = 0xD00000000000001ALL;
      break;
    case 22:
      result = 0xD000000000000011;
      break;
    case 23:
      result = 0x7972616D6D7573;
      break;
    case 24:
      result = 0x656C746974;
      break;
    case 25:
      result = 0x7372656E69617274;
      break;
    case 26:
      result = 0x6B72616D6B6F6F62;
      break;
    case 27:
      result = 0x64616F6C6E776F64;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24B7092E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B70E6B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B709314(uint64_t a1)
{
  v2 = sub_24B709CE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B709350(uint64_t a1)
{
  v2 = sub_24B709CE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutDetail.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0353D0, &qword_24B7631A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B709CE8();
  sub_24B75C738();
  LOBYTE(v17) = 0;
  sub_24B75AFE8();
  sub_24B6A80B8(&qword_27F035038, MEMORY[0x277CC8C40], MEMORY[0x277CC8C48]);
  sub_24B75C6A8();
  if (!v2)
  {
    v9 = type metadata accessor for WorkoutDetail(0);
    v17 = *(v3 + v9[5]);
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0353E0, &qword_24B7631A8);
    sub_24B70C114(&qword_27F0353E8, MEMORY[0x277D83E90], MEMORY[0x277D83948]);
    sub_24B75C6A8();
    LOBYTE(v17) = 2;
    sub_24B75C6A8();
    LOBYTE(v17) = 3;
    sub_24B75C6A8();
    v16 = v9[8];
    LOBYTE(v17) = 4;
    type metadata accessor for WorkoutDetailArtwork(0);
    sub_24B6A80B8(&qword_27F0340E0, type metadata accessor for WorkoutDetailArtwork, &protocol conformance descriptor for WorkoutDetailArtwork);
    sub_24B75C6A8();
    v16 = v9[9];
    LOBYTE(v17) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034600, &unk_24B75F9A0);
    sub_24B70C180(&qword_27F034AF8, MEMORY[0x277D0A880]);
    sub_24B75C6A8();
    LOBYTE(v17) = 6;
    sub_24B75C698();
    v17 = *(v3 + v9[11]);
    v20 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0353F0, &qword_24B7631B0);
    sub_24B70C268(&qword_27F0353F8, sub_24B709D3C, MEMORY[0x277D83948]);
    sub_24B75C6A8();
    LOBYTE(v17) = 8;
    sub_24B75C6A8();
    LOBYTE(v17) = 9;
    sub_24B75C6A8();
    LOBYTE(v17) = 10;
    sub_24B75C6A8();
    LOBYTE(v17) = 11;
    sub_24B75C678();
    LOBYTE(v17) = *(v3 + v9[16]);
    v20 = 12;
    sub_24B709D90();
    sub_24B75C668();
    LOBYTE(v17) = 13;
    sub_24B75C648();
    v16 = v9[18];
    LOBYTE(v17) = 14;
    v10 = sub_24B75B108();
    v15 = sub_24B6A80B8(&qword_27F0341E0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    v16 = v10;
    sub_24B75C668();
    v17 = *(v3 + v9[19]);
    v20 = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035410, &unk_24B7631B8);
    sub_24B70C388(&qword_27F035418, &qword_27F035420, &protocol conformance descriptor for WorkoutDetailMusicTrack, MEMORY[0x277D83948]);
    sub_24B75C6A8();
    LOBYTE(v17) = 16;
    sub_24B75C668();
    LOBYTE(v17) = 17;
    sub_24B75C648();
    LOBYTE(v17) = 18;
    sub_24B75C648();
    LOBYTE(v17) = 19;
    sub_24B75C6A8();
    LOBYTE(v17) = 20;
    sub_24B75C6A8();
    LOBYTE(v17) = 21;
    sub_24B75C648();
    LOBYTE(v17) = 22;
    sub_24B75C6A8();
    LOBYTE(v17) = 23;
    sub_24B75C6A8();
    LOBYTE(v17) = 24;
    sub_24B75C6A8();
    v17 = *(v3 + v9[29]);
    v20 = 25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034990, &qword_24B75FD50);
    sub_24B709DE4(&qword_27F035428, &qword_27F035430, &protocol conformance descriptor for WorkoutDetailTrainer, MEMORY[0x277D83948]);
    sub_24B75C6A8();
    LOBYTE(v17) = *(v3 + v9[30]);
    v20 = 26;
    sub_24B709E80();
    sub_24B75C6A8();
    v11 = (v3 + v9[31]);
    v12 = *v11;
    v13 = *(v11 + 4);
    LOBYTE(v11) = *(v11 + 10);
    v17 = v12;
    v18 = v13;
    v19 = v11;
    v20 = 27;
    sub_24B709ED4();
    sub_24B75C668();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24B709CE8()
{
  result = qword_27F0353D8;
  if (!qword_27F0353D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0353D8);
  }

  return result;
}

unint64_t sub_24B709D3C()
{
  result = qword_27F035400;
  if (!qword_27F035400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035400);
  }

  return result;
}

unint64_t sub_24B709D90()
{
  result = qword_27F035408;
  if (!qword_27F035408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035408);
  }

  return result;
}

uint64_t sub_24B709DE4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034990, &qword_24B75FD50);
    sub_24B6A80B8(a2, type metadata accessor for WorkoutDetailTrainer, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B709E80()
{
  result = qword_27F035438;
  if (!qword_27F035438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035438);
  }

  return result;
}

unint64_t sub_24B709ED4()
{
  result = qword_27F035440;
  if (!qword_27F035440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035440);
  }

  return result;
}

uint64_t WorkoutDetail.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v3 = sub_24B75B108();
  v124 = *(v3 - 8);
  v125 = v3;
  MEMORY[0x28223BE20](v3);
  v113 = v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v111 = v102 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  MEMORY[0x28223BE20](v7 - 8);
  v109 = v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v116 = v102 - v10;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034600, &unk_24B75F9A0);
  MEMORY[0x28223BE20](v121);
  v120 = v102 - v11;
  v123 = type metadata accessor for WorkoutDetailArtwork(0);
  MEMORY[0x28223BE20](v123);
  v122 = v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_24B75AFE8();
  v126 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v114 = v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v112 = v102 - v15;
  MEMORY[0x28223BE20](v16);
  v110 = v102 - v17;
  MEMORY[0x28223BE20](v18);
  v117 = v102 - v19;
  MEMORY[0x28223BE20](v20);
  v118 = v102 - v21;
  MEMORY[0x28223BE20](v22);
  v119 = v102 - v23;
  MEMORY[0x28223BE20](v24);
  v127 = v102 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = v102 - v27;
  MEMORY[0x28223BE20](v29);
  v129 = v102 - v30;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035448, &qword_24B7631C8);
  v128 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v32 = v102 - v31;
  v33 = type metadata accessor for WorkoutDetail(0);
  MEMORY[0x28223BE20](v33);
  v35 = v102 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = &v35[*(v36 + 124)];
  *v37 = 0;
  *(v37 + 4) = 0;
  v37[10] = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B709CE8();
  v132 = v32;
  v38 = v133;
  sub_24B75C728();
  if (v38)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = v127;
  v106 = v37;
  v108 = a1;
  v107 = v33;
  v133 = v35;
  LOBYTE(v134) = 0;
  v40 = sub_24B6A80B8(&qword_27F035080, MEMORY[0x277CC8C40], MEMORY[0x277CC8C60]);
  v41 = v131;
  sub_24B75C618();
  v43 = v41;
  v44 = v126 + 32;
  v45 = *(v126 + 32);
  v45(v133, v129, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0353E0, &qword_24B7631A8);
  v137 = 1;
  sub_24B70C114(&qword_27F035450, MEMORY[0x277D83EB0], MEMORY[0x277D83978]);
  sub_24B75C618();
  v104 = v44;
  v103 = v45;
  v46 = v107;
  *&v133[v107[5]] = v134;
  LOBYTE(v134) = 2;
  v105 = 0;
  sub_24B75C618();
  v47 = v103;
  v103(&v133[v46[6]], v28, v43);
  LOBYTE(v134) = 3;
  sub_24B75C618();
  v102[1] = v40;
  v47(&v133[v46[7]], v39, v43);
  LOBYTE(v134) = 4;
  sub_24B6A80B8(&qword_27F0340F0, type metadata accessor for WorkoutDetailArtwork, &protocol conformance descriptor for WorkoutDetailArtwork);
  v48 = v122;
  sub_24B75C618();
  sub_24B6BBFC4(v48, &v133[v46[8]]);
  LOBYTE(v134) = 5;
  sub_24B70C180(&qword_27F034B18, MEMORY[0x277D0A888]);
  v49 = v120;
  sub_24B75C618();
  sub_24B6B8DE8(v49, &v133[v46[9]], &qword_27F034600, &unk_24B75F9A0);
  LOBYTE(v134) = 6;
  *&v133[v46[10]] = sub_24B75C608();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0353F0, &qword_24B7631B0);
  v137 = 7;
  sub_24B70C268(&qword_27F035458, sub_24B70C2E0, MEMORY[0x277D83978]);
  sub_24B75C618();
  v129 = 0;
  *&v133[v107[11]] = v134;
  LOBYTE(v134) = 8;
  v58 = v119;
  v59 = v129;
  v60 = v130;
  sub_24B75C618();
  v129 = v59;
  if (v59)
  {
    (*(v128 + 8))(v132, v60);
    v61 = 0;
    LODWORD(v112) = 0;
    LODWORD(v113) = 0;
    LODWORD(v114) = 0;
    LODWORD(v115) = 0;
    LODWORD(v116) = 0;
    LODWORD(v117) = 0;
    LODWORD(v118) = 0;
    LODWORD(v119) = 0;
    LODWORD(v120) = 0;
    LODWORD(v121) = 0;
    LODWORD(v122) = 0;
    LODWORD(v123) = 0;
    LODWORD(v127) = 0;
    LODWORD(v128) = 0;
    LODWORD(v130) = 0;
    LODWORD(v132) = 0;
    v62 = &v138;
LABEL_49:
    *(v62 - 64) = 1;
    goto LABEL_5;
  }

  v47(&v133[v107[12]], v58, v131);
  LOBYTE(v134) = 9;
  v63 = v129;
  sub_24B75C618();
  v129 = v63;
  if (v63)
  {
    (*(v128 + 8))(v132, v130);
    LODWORD(v112) = 0;
    LODWORD(v113) = 0;
    LODWORD(v114) = 0;
    LODWORD(v115) = 0;
    LODWORD(v116) = 0;
    LODWORD(v117) = 0;
    LODWORD(v118) = 0;
    LODWORD(v119) = 0;
    LODWORD(v120) = 0;
    LODWORD(v121) = 0;
    LODWORD(v122) = 0;
    LODWORD(v123) = 0;
    LODWORD(v127) = 0;
    LODWORD(v128) = 0;
    LODWORD(v130) = 0;
    LODWORD(v132) = 0;
    LODWORD(v111) = 1;
    v61 = 1;
  }

  else
  {
    v103(&v133[v107[13]], v118, v131);
    LOBYTE(v134) = 10;
    v64 = v129;
    sub_24B75C618();
    v129 = v64;
    if (v64)
    {
      (*(v128 + 8))(v132, v130);
      LODWORD(v113) = 0;
      LODWORD(v114) = 0;
      LODWORD(v115) = 0;
      LODWORD(v116) = 0;
      LODWORD(v117) = 0;
      LODWORD(v118) = 0;
      LODWORD(v119) = 0;
      LODWORD(v120) = 0;
      LODWORD(v121) = 0;
      LODWORD(v122) = 0;
      LODWORD(v123) = 0;
      LODWORD(v127) = 0;
      LODWORD(v128) = 0;
      LODWORD(v130) = 0;
      LODWORD(v132) = 0;
      LODWORD(v111) = 1;
      v61 = 1;
      v62 = &v139;
      goto LABEL_49;
    }

    v103(&v133[v107[14]], v117, v131);
    LOBYTE(v134) = 11;
    v65 = v129;
    v66 = sub_24B75C5E8();
    v129 = v65;
    if (v65)
    {
      (*(v128 + 8))(v132, v130);
      LODWORD(v114) = 0;
      LODWORD(v115) = 0;
      LODWORD(v116) = 0;
      LODWORD(v117) = 0;
      LODWORD(v118) = 0;
      LODWORD(v119) = 0;
      LODWORD(v120) = 0;
      LODWORD(v121) = 0;
      LODWORD(v122) = 0;
      LODWORD(v123) = 0;
      LODWORD(v127) = 0;
      LODWORD(v128) = 0;
      LODWORD(v130) = 0;
      LODWORD(v132) = 0;
      LODWORD(v111) = 1;
      v61 = 1;
      LODWORD(v112) = 1;
      v62 = &v140;
      goto LABEL_49;
    }

    v68 = &v133[v107[15]];
    *v68 = v66;
    v68[1] = v67;
    v137 = 12;
    sub_24B70C334();
    v69 = v129;
    sub_24B75C5D8();
    v129 = v69;
    if (v69 || (v133[v107[16]] = v134, LOBYTE(v134) = 13, v70 = v129, v71 = sub_24B75C5B8(), (v129 = v70) != 0))
    {
      (*(v128 + 8))(v132, v130);
      LODWORD(v115) = 0;
      LODWORD(v116) = 0;
      LODWORD(v117) = 0;
      LODWORD(v118) = 0;
      LODWORD(v119) = 0;
      LODWORD(v120) = 0;
      LODWORD(v121) = 0;
      LODWORD(v122) = 0;
      LODWORD(v123) = 0;
      LODWORD(v127) = 0;
      LODWORD(v128) = 0;
      LODWORD(v130) = 0;
      LODWORD(v132) = 0;
      LODWORD(v111) = 1;
      v61 = 1;
      LODWORD(v112) = 1;
      LODWORD(v113) = 1;
      v62 = &v141;
      goto LABEL_49;
    }

    v73 = &v133[v107[17]];
    *v73 = v71;
    v73[1] = v72;
    LOBYTE(v134) = 14;
    sub_24B6A80B8(&qword_27F0341F8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    v74 = v129;
    sub_24B75C5D8();
    v129 = v74;
    if (v74)
    {
      (*(v128 + 8))(v132, v130);
      LODWORD(v116) = 0;
      LODWORD(v117) = 0;
      LODWORD(v118) = 0;
      LODWORD(v119) = 0;
      LODWORD(v120) = 0;
      LODWORD(v121) = 0;
      LODWORD(v122) = 0;
      LODWORD(v123) = 0;
      LODWORD(v127) = 0;
      LODWORD(v128) = 0;
      LODWORD(v130) = 0;
      LODWORD(v132) = 0;
      LODWORD(v111) = 1;
      v61 = 1;
      LODWORD(v112) = 1;
      LODWORD(v113) = 1;
      LODWORD(v114) = 1;
      LODWORD(v115) = 1;
    }

    else
    {
      sub_24B6B8DE8(v116, &v133[v107[18]], &qword_27F034118, &qword_24B75E1D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035410, &unk_24B7631B8);
      v137 = 15;
      sub_24B70C388(&qword_27F035470, &qword_27F035478, &protocol conformance descriptor for WorkoutDetailMusicTrack, MEMORY[0x277D83978]);
      v75 = v129;
      sub_24B75C618();
      v129 = v75;
      if (v75)
      {
        (*(v128 + 8))(v132, v130);
        LODWORD(v117) = 0;
        LODWORD(v118) = 0;
        LODWORD(v119) = 0;
        LODWORD(v120) = 0;
        LODWORD(v121) = 0;
        LODWORD(v122) = 0;
        LODWORD(v123) = 0;
        LODWORD(v127) = 0;
        LODWORD(v128) = 0;
        LODWORD(v130) = 0;
        LODWORD(v132) = 0;
        LODWORD(v111) = 1;
        v61 = 1;
        LODWORD(v112) = 1;
        LODWORD(v113) = 1;
        LODWORD(v114) = 1;
        LODWORD(v115) = 1;
        LODWORD(v116) = 1;
      }

      else
      {
        *&v133[v107[19]] = v134;
        LOBYTE(v134) = 16;
        v76 = v129;
        sub_24B75C5D8();
        v129 = v76;
        if (v76)
        {
          (*(v128 + 8))(v132, v130);
          LODWORD(v118) = 0;
          LODWORD(v119) = 0;
          LODWORD(v120) = 0;
          LODWORD(v121) = 0;
          LODWORD(v122) = 0;
          LODWORD(v123) = 0;
          LODWORD(v127) = 0;
          LODWORD(v128) = 0;
          LODWORD(v130) = 0;
          LODWORD(v132) = 0;
          LODWORD(v111) = 1;
          v61 = 1;
          LODWORD(v112) = 1;
          LODWORD(v113) = 1;
          LODWORD(v114) = 1;
          LODWORD(v115) = 1;
          LODWORD(v116) = 1;
          LODWORD(v117) = 1;
        }

        else
        {
          sub_24B6B8DE8(v109, &v133[v107[20]], &qword_27F034118, &qword_24B75E1D8);
          LOBYTE(v134) = 17;
          v77 = v129;
          v78 = sub_24B75C5B8();
          v129 = v77;
          if (v77)
          {
            (*(v128 + 8))(v132, v130);
            LODWORD(v119) = 0;
            LODWORD(v120) = 0;
            LODWORD(v121) = 0;
            LODWORD(v122) = 0;
            LODWORD(v123) = 0;
            LODWORD(v127) = 0;
            LODWORD(v128) = 0;
            LODWORD(v130) = 0;
            LODWORD(v132) = 0;
            LODWORD(v111) = 1;
            v61 = 1;
            LODWORD(v112) = 1;
            LODWORD(v113) = 1;
            LODWORD(v114) = 1;
            LODWORD(v115) = 1;
            LODWORD(v116) = 1;
            LODWORD(v117) = 1;
            LODWORD(v118) = 1;
          }

          else
          {
            v80 = &v133[v107[21]];
            *v80 = v78;
            v80[1] = v79;
            LOBYTE(v134) = 18;
            v81 = v129;
            v82 = sub_24B75C5B8();
            v129 = v81;
            if (v81)
            {
              (*(v128 + 8))(v132, v130);
              LODWORD(v120) = 0;
              LODWORD(v121) = 0;
              LODWORD(v122) = 0;
              LODWORD(v123) = 0;
              LODWORD(v127) = 0;
              LODWORD(v128) = 0;
              LODWORD(v130) = 0;
              LODWORD(v132) = 0;
              LODWORD(v111) = 1;
              v61 = 1;
              LODWORD(v112) = 1;
              LODWORD(v113) = 1;
              LODWORD(v114) = 1;
              LODWORD(v115) = 1;
              LODWORD(v116) = 1;
              LODWORD(v117) = 1;
              LODWORD(v118) = 1;
              LODWORD(v119) = 1;
            }

            else
            {
              v84 = &v133[v107[22]];
              *v84 = v82;
              v84[1] = v83;
              LOBYTE(v134) = 19;
              v85 = v129;
              sub_24B75C618();
              v129 = v85;
              if (v85)
              {
                (*(v128 + 8))(v132, v130);
                LODWORD(v121) = 0;
                LODWORD(v122) = 0;
                LODWORD(v123) = 0;
                LODWORD(v127) = 0;
                LODWORD(v128) = 0;
                LODWORD(v130) = 0;
                LODWORD(v132) = 0;
                LODWORD(v111) = 1;
                v61 = 1;
                LODWORD(v112) = 1;
                LODWORD(v113) = 1;
                LODWORD(v114) = 1;
                LODWORD(v115) = 1;
                LODWORD(v116) = 1;
                LODWORD(v117) = 1;
                LODWORD(v118) = 1;
                LODWORD(v119) = 1;
                LODWORD(v120) = 1;
              }

              else
              {
                v86 = *(v124 + 32);
                v86(&v133[v107[23]], v111, v125);
                LOBYTE(v134) = 20;
                v87 = v129;
                sub_24B75C618();
                v129 = v87;
                if (v87)
                {
                  (*(v128 + 8))(v132, v130);
                  LODWORD(v122) = 0;
                  LODWORD(v123) = 0;
                  LODWORD(v127) = 0;
                  LODWORD(v128) = 0;
                  LODWORD(v130) = 0;
                  LODWORD(v132) = 0;
                  LODWORD(v111) = 1;
                  v61 = 1;
                  LODWORD(v112) = 1;
                  LODWORD(v113) = 1;
                  LODWORD(v114) = 1;
                  LODWORD(v115) = 1;
                  LODWORD(v116) = 1;
                  LODWORD(v117) = 1;
                  LODWORD(v118) = 1;
                  LODWORD(v119) = 1;
                  LODWORD(v120) = 1;
                  LODWORD(v121) = 1;
                }

                else
                {
                  v86(&v133[v107[24]], v113, v125);
                  LOBYTE(v134) = 21;
                  v88 = v129;
                  v89 = sub_24B75C5B8();
                  v129 = v88;
                  if (v88)
                  {
                    (*(v128 + 8))(v132, v130);
                    LODWORD(v123) = 0;
                    LODWORD(v127) = 0;
                    LODWORD(v128) = 0;
                    LODWORD(v130) = 0;
                    LODWORD(v132) = 0;
                    LODWORD(v111) = 1;
                    v61 = 1;
                    LODWORD(v112) = 1;
                    LODWORD(v113) = 1;
                    LODWORD(v114) = 1;
                    LODWORD(v115) = 1;
                    LODWORD(v116) = 1;
                    LODWORD(v117) = 1;
                    LODWORD(v118) = 1;
                    LODWORD(v119) = 1;
                    LODWORD(v120) = 1;
                    LODWORD(v121) = 1;
                    LODWORD(v122) = 1;
                  }

                  else
                  {
                    v91 = &v133[v107[25]];
                    *v91 = v89;
                    v91[1] = v90;
                    LOBYTE(v134) = 22;
                    v92 = v129;
                    sub_24B75C618();
                    v129 = v92;
                    if (v92)
                    {
                      (*(v128 + 8))(v132, v130);
                      LODWORD(v127) = 0;
                      LODWORD(v128) = 0;
                      LODWORD(v130) = 0;
                      LODWORD(v132) = 0;
                      LODWORD(v111) = 1;
                      v61 = 1;
                      LODWORD(v112) = 1;
                      LODWORD(v113) = 1;
                      LODWORD(v114) = 1;
                      LODWORD(v115) = 1;
                      LODWORD(v116) = 1;
                      LODWORD(v117) = 1;
                      LODWORD(v118) = 1;
                      LODWORD(v119) = 1;
                      LODWORD(v120) = 1;
                      LODWORD(v121) = 1;
                      LODWORD(v122) = 1;
                      LODWORD(v123) = 1;
                    }

                    else
                    {
                      v103(&v133[v107[26]], v110, v131);
                      LOBYTE(v134) = 23;
                      v93 = v129;
                      sub_24B75C618();
                      v129 = v93;
                      if (v93)
                      {
                        (*(v128 + 8))(v132, v130);
                        LODWORD(v128) = 0;
                        LODWORD(v130) = 0;
                        LODWORD(v132) = 0;
                        LODWORD(v111) = 1;
                        v61 = 1;
                        LODWORD(v112) = 1;
                        LODWORD(v113) = 1;
                        LODWORD(v114) = 1;
                        LODWORD(v115) = 1;
                        LODWORD(v116) = 1;
                        LODWORD(v117) = 1;
                        LODWORD(v118) = 1;
                        LODWORD(v119) = 1;
                        LODWORD(v120) = 1;
                        LODWORD(v121) = 1;
                        LODWORD(v122) = 1;
                        LODWORD(v123) = 1;
                        LODWORD(v127) = 1;
                      }

                      else
                      {
                        v103(&v133[v107[27]], v112, v131);
                        LOBYTE(v134) = 24;
                        v94 = v129;
                        sub_24B75C618();
                        v129 = v94;
                        if (v94)
                        {
                          (*(v128 + 8))(v132, v130);
                          LODWORD(v130) = 0;
                          LODWORD(v132) = 0;
                          LODWORD(v111) = 1;
                          v61 = 1;
                          LODWORD(v112) = 1;
                          LODWORD(v113) = 1;
                          LODWORD(v114) = 1;
                          LODWORD(v115) = 1;
                          LODWORD(v116) = 1;
                          LODWORD(v117) = 1;
                          LODWORD(v118) = 1;
                          LODWORD(v119) = 1;
                          LODWORD(v120) = 1;
                          LODWORD(v121) = 1;
                          LODWORD(v122) = 1;
                          LODWORD(v123) = 1;
                          LODWORD(v127) = 1;
                          LODWORD(v128) = 1;
                        }

                        else
                        {
                          v103(&v133[v107[28]], v114, v131);
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034990, &qword_24B75FD50);
                          v137 = 25;
                          sub_24B709DE4(&qword_27F035480, &qword_27F035488, &protocol conformance descriptor for WorkoutDetailTrainer, MEMORY[0x277D83978]);
                          v95 = v129;
                          sub_24B75C618();
                          v129 = v95;
                          if (v95)
                          {
                            (*(v128 + 8))(v132, v130);
                            LODWORD(v132) = 0;
                            LODWORD(v111) = 1;
                            v61 = 1;
                            LODWORD(v112) = 1;
                            LODWORD(v113) = 1;
                            LODWORD(v114) = 1;
                            LODWORD(v115) = 1;
                            LODWORD(v116) = 1;
                            LODWORD(v117) = 1;
                            LODWORD(v118) = 1;
                            LODWORD(v119) = 1;
                            LODWORD(v120) = 1;
                            LODWORD(v121) = 1;
                            LODWORD(v122) = 1;
                            LODWORD(v123) = 1;
                            LODWORD(v127) = 1;
                            LODWORD(v128) = 1;
                            LODWORD(v130) = 1;
                          }

                          else
                          {
                            *&v133[v107[29]] = v134;
                            v137 = 26;
                            sub_24B70C424();
                            v96 = v129;
                            sub_24B75C618();
                            v129 = v96;
                            if (!v96)
                            {
                              v133[v107[30]] = v134;
                              v137 = 27;
                              sub_24B70C478();
                              v97 = v129;
                              sub_24B75C5D8();
                              v129 = v97;
                              if (!v97)
                              {
                                (*(v128 + 8))(v132, v130);
                                v98 = v133;
                                v99 = v135;
                                v100 = v136;
                                v101 = v106;
                                *v106 = v134;
                                *(v101 + 4) = v99;
                                v101[10] = v100;
                                sub_24B70EF78(v98, v115, type metadata accessor for WorkoutDetail);
                                __swift_destroy_boxed_opaque_existential_1(v108);
                                return sub_24B70EFE0(v98, type metadata accessor for WorkoutDetail);
                              }
                            }

                            (*(v128 + 8))(v132, v130);
                            LODWORD(v111) = 1;
                            v61 = 1;
                            LODWORD(v112) = 1;
                            LODWORD(v113) = 1;
                            LODWORD(v114) = 1;
                            LODWORD(v115) = 1;
                            LODWORD(v116) = 1;
                            LODWORD(v117) = 1;
                            LODWORD(v118) = 1;
                            LODWORD(v119) = 1;
                            LODWORD(v120) = 1;
                            LODWORD(v121) = 1;
                            LODWORD(v122) = 1;
                            LODWORD(v123) = 1;
                            LODWORD(v127) = 1;
                            LODWORD(v128) = 1;
                            LODWORD(v130) = 1;
                            LODWORD(v132) = 1;
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
    }
  }

LABEL_5:
  v50 = v105;
  __swift_destroy_boxed_opaque_existential_1(v108);
  v51 = *(v126 + 8);
  v51(v133, v131);
  if (!v50)
  {
  }

  v51(&v133[v107[6]], v131);
  v55 = v107;
  v51(&v133[v107[7]], v131);
  sub_24B70EFE0(&v133[v55[8]], type metadata accessor for WorkoutDetailArtwork);
  result = sub_24B6B9CD4(&v133[v55[9]], &qword_27F034600, &unk_24B75F9A0);
  v56 = v124;
  if (v111)
  {
    v52 = v133;

    v53 = v125;
    if (v61)
    {
      goto LABEL_23;
    }

LABEL_9:
    v54 = v131;
    if (!v112)
    {
      goto LABEL_24;
    }

LABEL_10:
    result = (v51)(&v52[v55[13]], v54);
    if (v113)
    {
      goto LABEL_25;
    }

LABEL_11:
    if (!v114)
    {
      goto LABEL_26;
    }

LABEL_12:

    if (v115)
    {
      goto LABEL_27;
    }

LABEL_13:
    if (!v116)
    {
      goto LABEL_28;
    }

LABEL_14:
    result = sub_24B6B9CD4(&v52[v55[18]], &qword_27F034118, &qword_24B75E1D8);
    if (v117)
    {
      goto LABEL_29;
    }

LABEL_15:
    if (!v118)
    {
      goto LABEL_30;
    }

LABEL_16:
    result = sub_24B6B9CD4(&v52[v55[20]], &qword_27F034118, &qword_24B75E1D8);
    if (v119)
    {
      goto LABEL_31;
    }

LABEL_17:
    if (!v120)
    {
      goto LABEL_32;
    }

LABEL_18:

    if (v121)
    {
      goto LABEL_33;
    }

    goto LABEL_19;
  }

  v53 = v125;
  v52 = v133;
  if (!v61)
  {
    goto LABEL_9;
  }

LABEL_23:
  v54 = v131;
  result = (v51)(&v52[v55[12]], v131);
  if (v112)
  {
    goto LABEL_10;
  }

LABEL_24:
  if (!v113)
  {
    goto LABEL_11;
  }

LABEL_25:
  result = (v51)(&v52[v55[14]], v54);
  if (v114)
  {
    goto LABEL_12;
  }

LABEL_26:
  if (!v115)
  {
    goto LABEL_13;
  }

LABEL_27:

  if (v116)
  {
    goto LABEL_14;
  }

LABEL_28:
  if (!v117)
  {
    goto LABEL_15;
  }

LABEL_29:

  if (v118)
  {
    goto LABEL_16;
  }

LABEL_30:
  if (!v119)
  {
    goto LABEL_17;
  }

LABEL_31:

  if (v120)
  {
    goto LABEL_18;
  }

LABEL_32:
  if (v121)
  {
LABEL_33:
    v57 = *(v56 + 8);
    result = v57(&v52[v55[23]], v53);
    if (v122)
    {
      result = v57(&v52[v55[24]], v53);
LABEL_35:
      if ((v123 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_19:
  if (v122)
  {
    result = (*(v56 + 8))(&v52[v55[24]], v53);
    goto LABEL_35;
  }

LABEL_41:
  if (!v123)
  {
LABEL_36:
    if (v127)
    {
      goto LABEL_37;
    }

    goto LABEL_43;
  }

LABEL_42:

  if (v127)
  {
LABEL_37:
    result = (v51)(&v52[v55[26]], v54);
    if ((v128 & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_44;
  }

LABEL_43:
  if (!v128)
  {
LABEL_38:
    if (v130)
    {
      goto LABEL_39;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = (v51)(&v52[v55[27]], v54);
  if (v130)
  {
LABEL_39:
    result = (v51)(&v52[v55[28]], v54);
    if (v132)
    {
    }

    return result;
  }

LABEL_45:
  if (v132)
  {
  }

  return result;
}

uint64_t sub_24B70C114(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0353E0, &qword_24B7631A8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B70C180(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034600, &unk_24B75F9A0);
    v4 = MEMORY[0x277D09E00];
    sub_24B6A80B8(&qword_27F034B00, MEMORY[0x277D09E00], MEMORY[0x277D09E28]);
    sub_24B6A80B8(&qword_27F034B08, v4, MEMORY[0x277D09E08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B70C268(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0353F0, &qword_24B7631B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B70C2E0()
{
  result = qword_27F035460;
  if (!qword_27F035460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035460);
  }

  return result;
}

unint64_t sub_24B70C334()
{
  result = qword_27F035468;
  if (!qword_27F035468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035468);
  }

  return result;
}

uint64_t sub_24B70C388(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035410, &unk_24B7631B8);
    sub_24B6A80B8(a2, type metadata accessor for WorkoutDetailMusicTrack, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B70C424()
{
  result = qword_27F035490;
  if (!qword_27F035490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035490);
  }

  return result;
}

unint64_t sub_24B70C478()
{
  result = qword_27F035498;
  if (!qword_27F035498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035498);
  }

  return result;
}

uint64_t WorkoutDetail.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WorkoutDetailMusicTrack(0);
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_24B75B108();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  MEMORY[0x28223BE20](v8 - 8);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v44 = &v38 - v11;
  v12 = sub_24B75AFE8();
  v46 = sub_24B6A80B8(&qword_27F0354A0, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
  sub_24B75C2C8();
  v13 = type metadata accessor for WorkoutDetail(0);
  v14 = *(v1 + v13[5]);
  MEMORY[0x24C2489B0](*(v14 + 16));
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = (v14 + 32);
    do
    {
      v17 = *v16++;
      MEMORY[0x24C2489B0](v17);
      --v15;
    }

    while (v15);
  }

  sub_24B75C2C8();
  sub_24B75C2C8();
  WorkoutDetailArtwork.hash(into:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034600, &unk_24B75F9A0);
  sub_24B6A80B8(&qword_27F034B20, MEMORY[0x277D09E00], MEMORY[0x277D09E10]);
  sub_24B75B328();
  MEMORY[0x24C2489B0](*(v1 + v13[10]));
  sub_24B70D574(a1, *(v1 + v13[11]));
  sub_24B75C2C8();
  sub_24B75C2C8();
  sub_24B75C2C8();
  sub_24B75C358();
  v18 = *(v1 + v13[16]);
  sub_24B75C6F8();
  if (v18 != 4)
  {
    MEMORY[0x24C2489B0](v18);
  }

  v19 = v45;
  v43 = v12;
  if (*(v1 + v13[17] + 8))
  {
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  v20 = v44;
  sub_24B6B9D34(v2 + v13[18], v44, &qword_27F034118, &qword_24B75E1D8);
  v21 = v47;
  v39 = *(v19 + 48);
  v40 = v19 + 48;
  if (v39(v20, 1, v47) == 1)
  {
    sub_24B75C6F8();
  }

  else
  {
    v22 = v42;
    (*(v19 + 32))(v42, v20, v21);
    sub_24B75C6F8();
    sub_24B6A80B8(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_24B75C2C8();
    (*(v19 + 8))(v22, v21);
  }

  v23 = v13[19];
  v44 = v2;
  v24 = *(v2 + v23);
  MEMORY[0x24C2489B0](*(v24 + 16));
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = v24 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v27 = *(v38 + 72);
    do
    {
      sub_24B70EF78(v26, v6, type metadata accessor for WorkoutDetailMusicTrack);
      sub_24B6A80B8(&qword_27F034780, type metadata accessor for WorkoutDetailMusicTrack, &protocol conformance descriptor for WorkoutDetailMusicTrack);
      sub_24B75C2C8();
      sub_24B70EFE0(v6, type metadata accessor for WorkoutDetailMusicTrack);
      v26 += v27;
      --v25;
    }

    while (v25);
  }

  v28 = v44;
  v29 = v41;
  sub_24B6B9D34(v44 + v13[20], v41, &qword_27F034118, &qword_24B75E1D8);
  v30 = v47;
  if (v39(v29, 1, v47) == 1)
  {
    sub_24B75C6F8();
  }

  else
  {
    v31 = v45;
    v32 = v42;
    (*(v45 + 32))(v42, v29, v30);
    sub_24B75C6F8();
    sub_24B6A80B8(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_24B75C2C8();
    (*(v31 + 8))(v32, v30);
  }

  if (*(v28 + v13[21] + 8))
  {
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  if (*(v28 + v13[22] + 8))
  {
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  sub_24B6A80B8(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B75C2C8();
  sub_24B75C2C8();
  if (*(v28 + v13[25] + 8))
  {
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  sub_24B75C2C8();
  sub_24B75C2C8();
  sub_24B75C2C8();
  sub_24B70CE70(a1, *(v28 + v13[29]));
  MEMORY[0x24C2489B0](*(v28 + v13[30]));
  v33 = v28 + v13[31];
  if (*(v33 + 10) == 1)
  {
    return sub_24B75C6F8();
  }

  v35 = *v33;
  v36 = *(v33 + 8);
  sub_24B75C6F8();
  if ((v36 & 0x100) != 0)
  {
    return MEMORY[0x24C2489B0](1);
  }

  MEMORY[0x24C2489B0](0);
  if (v36)
  {
    return sub_24B75C6F8();
  }

  sub_24B75C6F8();
  if ((v35 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v37 = v35;
  }

  else
  {
    v37 = 0;
  }

  return MEMORY[0x24C2489D0](v37);
}

uint64_t WorkoutDetail.hashValue.getter()
{
  sub_24B75C6D8();
  WorkoutDetail.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t sub_24B70CDEC()
{
  sub_24B75C6D8();
  WorkoutDetail.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t sub_24B70CE30(uint64_t a1)
{
  sub_24B75C6D8();
  WorkoutDetail.hash(into:)(v2);
  return sub_24B75C718();
}

uint64_t sub_24B70CE70(uint64_t a1, uint64_t a2)
{
  v3 = sub_24B75B108();
  v45 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v30 - v6;
  v7 = sub_24B75B298();
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  MEMORY[0x28223BE20](v9 - 8);
  v38 = &v30 - v10;
  v11 = type metadata accessor for WorkoutDetailArtwork(0);
  v37 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0340C8, &qword_24B75DFB0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - v15;
  v17 = type metadata accessor for WorkoutDetailTrainer(0);
  v36 = *(v17 - 1);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a2;
  v21 = *(a2 + 16);
  result = MEMORY[0x24C2489B0](v21, v18);
  if (v21)
  {
    v23 = v17[6];
    v44 = &v20[v17[5]];
    v43 = &v20[v23];
    v42 = &v20[v17[7]];
    v24 = v41 + ((v36[80] + 32) & ~v36[80]);
    v25 = (v37 + 6);
    v37 = (v40 + 48);
    v33 = (v40 + 32);
    v32 = (v40 + 8);
    v40 = *(v36 + 9);
    v41 = v25;
    v36 = v45 + 48;
    v30 = (v45 + 8);
    v31 = (v45 + 32);
    v45 = v20;
    do
    {
      sub_24B70EF78(v24, v20, type metadata accessor for WorkoutDetailTrainer);
      sub_24B6B9D34(v20, v16, &qword_27F0340C8, &qword_24B75DFB0);
      if ((*v41)(v16, 1, v11) == 1)
      {
        sub_24B75C6F8();
      }

      else
      {
        sub_24B6BBFC4(v16, v13);
        sub_24B75C6F8();
        v26 = v38;
        sub_24B6B9D34(v13, v38, &qword_27F034120, &unk_24B75E1E0);
        if ((*v37)(v26, 1, v7) == 1)
        {
          sub_24B75C6F8();
        }

        else
        {
          v27 = v34;
          (*v33)(v34, v26, v7);
          sub_24B75C6F8();
          sub_24B6A80B8(&qword_27F034128, MEMORY[0x277D09D68], MEMORY[0x277D09D78]);
          sub_24B75C2C8();
          (*v32)(v27, v7);
        }

        v28 = v39;
        sub_24B6B9D34(&v13[*(v11 + 20)], v39, &qword_27F034118, &qword_24B75E1D8);
        if ((*v36)(v28, 1, v3) == 1)
        {
          sub_24B75C6F8();
        }

        else
        {
          v29 = v35;
          (*v31)(v35, v28, v3);
          sub_24B75C6F8();
          sub_24B6A80B8(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
          sub_24B75C2C8();
          (*v30)(v29, v3);
        }

        sub_24B75C358();
        sub_24B70EFE0(v13, type metadata accessor for WorkoutDetailArtwork);
      }

      if (*(v44 + 1))
      {
        sub_24B75C6F8();
        sub_24B75C358();
      }

      else
      {
        sub_24B75C6F8();
      }

      sub_24B75C358();
      sub_24B75C358();
      v20 = v45;
      result = sub_24B70EFE0(v45, type metadata accessor for WorkoutDetailTrainer);
      v24 += v40;
      --v21;
    }

    while (v21);
  }

  return result;
}

uint64_t sub_24B70D574(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x24C2489B0](v3);
  if (v3)
  {
    v5 = a2 + 72;
    do
    {
      if (*(v5 - 32))
      {
        sub_24B75C6F8();

        sub_24B75C358();
      }

      else
      {
        sub_24B75C6F8();
      }

      sub_24B75C358();
      sub_24B75C358();

      v5 += 48;
      --v3;
    }

    while (v3);
  }

  return result;
}

BOOL _s20FitnessProductDetail07WorkoutC0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B75B108();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v67[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v67[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v67[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034218, &unk_24B761640);
  MEMORY[0x28223BE20](v14);
  v16 = &v67[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v19 = &v67[-v18];
  if ((sub_24B75AF58() & 1) == 0)
  {
    return 0;
  }

  v73 = v5;
  v20 = type metadata accessor for WorkoutDetail(0);
  if ((sub_24B706CDC(*(a1 + v20[5]), *(a2 + v20[5])) & 1) == 0)
  {
    return 0;
  }

  if ((sub_24B75AF58() & 1) == 0)
  {
    return 0;
  }

  if ((sub_24B75AF58() & 1) == 0)
  {
    return 0;
  }

  if ((_s20FitnessProductDetail07WorkoutC7ArtworkV2eeoiySbAC_ACtFZ_0(a1 + v20[8], a2 + v20[8]) & 1) == 0)
  {
    return 0;
  }

  v72 = v20[9];
  v71 = sub_24B75B2D8();
  v69 = v20;
  v21 = MEMORY[0x277D09E00];
  v70 = sub_24B6A80B8(&qword_27F034B48, MEMORY[0x277D09E00], MEMORY[0x277D09E18]);
  sub_24B6A80B8(&qword_2810F7AC8, v21, MEMORY[0x277D09E20]);
  if ((sub_24B75B338() & 1) == 0)
  {
    return 0;
  }

  v22 = v69;
  if (*(a1 + v69[10]) != *(a2 + v69[10]) || (sub_24B706D38(*(a1 + v69[11]), *(a2 + v69[11])) & 1) == 0 || (sub_24B75AF58() & 1) == 0 || (sub_24B75AF58() & 1) == 0 || (sub_24B75AF58() & 1) == 0)
  {
    return 0;
  }

  v23 = v22[15];
  v24 = *(a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  if ((v24 != *v26 || v25 != v26[1]) && (sub_24B75C6B8() & 1) == 0)
  {
    return 0;
  }

  v27 = v22[16];
  v28 = *(a1 + v27);
  v29 = *(a2 + v27);
  if (v28 == 4)
  {
    if (v29 != 4)
    {
      return 0;
    }
  }

  else if (v28 != v29)
  {
    return 0;
  }

  v30 = v22[17];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = v33[1];
  if (v32)
  {
    if (!v34 || (*v31 != *v33 || v32 != v34) && (sub_24B75C6B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v34)
  {
    return 0;
  }

  v72 = v22[18];
  v35 = *(v14 + 48);
  sub_24B6B9D34(v72 + a1, v19, &qword_27F034118, &qword_24B75E1D8);
  v71 = v35;
  sub_24B6B9D34(v72 + a2, &v35[v19], &qword_27F034118, &qword_24B75E1D8);
  v36 = v73 + 48;
  v72 = *(v73 + 48);
  v37 = v72(v19, 1, v4);
  v70 = v36;
  if (v37 == 1)
  {
    if (v72(&v71[v19], 1, v4) == 1)
    {
      sub_24B6B9CD4(v19, &qword_27F034118, &qword_24B75E1D8);
      goto LABEL_34;
    }

LABEL_31:
    v38 = v19;
LABEL_32:
    sub_24B6B9CD4(v38, &qword_27F034218, &unk_24B761640);
    return 0;
  }

  sub_24B6B9D34(v19, v13, &qword_27F034118, &qword_24B75E1D8);
  if (v72(&v71[v19], 1, v4) == 1)
  {
    (*(v73 + 8))(v13, v4);
    goto LABEL_31;
  }

  v39 = v73;
  (*(v73 + 32))(v7, &v71[v19], v4);
  sub_24B6A80B8(&qword_27F034228, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v68 = sub_24B75C2D8();
  v71 = *(v39 + 8);
  (v71)(v7, v4);
  (v71)(v13, v4);
  sub_24B6B9CD4(v19, &qword_27F034118, &qword_24B75E1D8);
  if ((v68 & 1) == 0)
  {
    return 0;
  }

LABEL_34:
  if ((sub_24B706E90(*(a1 + v69[19]), *(a2 + v69[19])) & 1) == 0)
  {
    return 0;
  }

  v40 = v69[20];
  v41 = *(v14 + 48);
  sub_24B6B9D34(a1 + v40, v16, &qword_27F034118, &qword_24B75E1D8);
  sub_24B6B9D34(a2 + v40, &v16[v41], &qword_27F034118, &qword_24B75E1D8);
  if (v72(v16, 1, v4) == 1)
  {
    if (v72(&v16[v41], 1, v4) == 1)
    {
      sub_24B6B9CD4(v16, &qword_27F034118, &qword_24B75E1D8);
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  sub_24B6B9D34(v16, v10, &qword_27F034118, &qword_24B75E1D8);
  if (v72(&v16[v41], 1, v4) == 1)
  {
    (*(v73 + 8))(v10, v4);
LABEL_40:
    v38 = v16;
    goto LABEL_32;
  }

  v42 = v73;
  (*(v73 + 32))(v7, &v16[v41], v4);
  sub_24B6A80B8(&qword_27F034228, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v43 = sub_24B75C2D8();
  v44 = *(v42 + 8);
  v44(v7, v4);
  v44(v10, v4);
  sub_24B6B9CD4(v16, &qword_27F034118, &qword_24B75E1D8);
  if ((v43 & 1) == 0)
  {
    return 0;
  }

LABEL_42:
  v45 = v69[21];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 8);
  v48 = (a2 + v45);
  v49 = v48[1];
  if (v47)
  {
    if (!v49 || (*v46 != *v48 || v47 != v49) && (sub_24B75C6B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v49)
  {
    return 0;
  }

  v50 = v69[22];
  v51 = (a1 + v50);
  v52 = *(a1 + v50 + 8);
  v53 = (a2 + v50);
  v54 = v53[1];
  if (v52)
  {
    if (!v54 || (*v51 != *v53 || v52 != v54) && (sub_24B75C6B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v54)
  {
    return 0;
  }

  if ((sub_24B75B0F8() & 1) == 0 || (sub_24B75B0F8() & 1) == 0)
  {
    return 0;
  }

  v55 = v69[25];
  v56 = (a1 + v55);
  v57 = *(a1 + v55 + 8);
  v58 = (a2 + v55);
  v59 = v58[1];
  if (v57)
  {
    if (!v59 || (*v56 != *v58 || v57 != v59) && (sub_24B75C6B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v59)
  {
    return 0;
  }

  if ((sub_24B75AF58() & 1) == 0 || (sub_24B75AF58() & 1) == 0 || (sub_24B75AF58() & 1) == 0 || (sub_24B7078B8(*(a1 + v69[29]), *(a2 + v69[29])) & 1) == 0 || *(a1 + v69[30]) != *(a2 + v69[30]))
  {
    return 0;
  }

  v60 = v69[31];
  v61 = a1 + v60;
  v62 = *(a1 + v60 + 10);
  v63 = a2 + v60;
  LOBYTE(v64) = *(v63 + 10);
  if ((v62 & 1) == 0)
  {
    if (*(v63 + 10))
    {
      return 0;
    }

    v66 = *(v61 + 8);
    v64 = *(v63 + 8);
    if ((v66 & 0x100) != 0)
    {
      return (*(v63 + 8) & 0x100) != 0;
    }

    if ((*(v63 + 8) & 0x100) != 0)
    {
      return 0;
    }

    if ((v66 & 1) == 0)
    {
      return (v64 & 1) == 0 && *v61 == *v63;
    }
  }

  return (v64 & 1) != 0;
}

void sub_24B70E084(uint64_t a1)
{
  sub_24B75AFE8();
  if (v1 <= 0x3F)
  {
    sub_24B70E408(319, &qword_2810F6930, MEMORY[0x277D83E88], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for WorkoutDetailArtwork(319);
      if (v3 <= 0x3F)
      {
        sub_24B6EDC80(319);
        if (v4 <= 0x3F)
        {
          sub_24B70E408(319, &qword_2810F6950, &type metadata for WorkoutDetailContributor, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            sub_24B70E408(319, qword_2810F77D8, &type metadata for WorkoutDetailContentMediaType, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_24B70E408(319, &qword_2810F6960, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_24B70E3A4(319, &qword_2810F7AF8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_24B70E3A4(319, &qword_2810F6958, type metadata accessor for WorkoutDetailMusicTrack, MEMORY[0x277D83940]);
                  if (v9 <= 0x3F)
                  {
                    sub_24B75B108();
                    if (v10 <= 0x3F)
                    {
                      sub_24B70E3A4(319, &qword_2810F6948, type metadata accessor for WorkoutDetailTrainer, MEMORY[0x277D83940]);
                      if (v11 <= 0x3F)
                      {
                        sub_24B70E408(319, qword_2810F73A0, &type metadata for DownloadStatus, MEMORY[0x277D83D88]);
                        if (v12 <= 0x3F)
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
  }
}

void sub_24B70E3A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24B70E408(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for WorkoutDetail.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutDetail.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B70E5AC()
{
  result = qword_27F0354A8;
  if (!qword_27F0354A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0354A8);
  }

  return result;
}

unint64_t sub_24B70E604()
{
  result = qword_27F0354B0;
  if (!qword_27F0354B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0354B0);
  }

  return result;
}

unint64_t sub_24B70E65C()
{
  result = qword_27F0354B8;
  if (!qword_27F0354B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0354B8);
  }

  return result;
}

uint64_t sub_24B70E6B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6269737365636361 && a2 == 0xED00007974696C69;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xED00007365707954 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B76BE30 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E614C6F69647561 && a2 == 0xEE00736567617567 || (sub_24B75C6B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x436B726F77747261 && a2 == 0xEF65646F43706F72 || (sub_24B75C6B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xEE00746E756F4364 || (sub_24B75C6B8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x75626972746E6F63 && a2 == 0xEC00000073726F74 || (sub_24B75C6B8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_24B75C6B8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B76BE50 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6C6961746564 && a2 == 0xE600000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B75C6B8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065 || (sub_24B75C6B8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024B76BE70 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024B76BE90 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x617254636973756DLL && a2 == 0xEB00000000736B63 || (sub_24B75C6B8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B76BEB0 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000021 && 0x800000024B76BED0 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024B76BF00 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x55676E6972616873 && a2 == 0xEA00000000004C52 || (sub_24B75C6B8() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6E696D6165727473 && a2 == 0xEC0000004C525567 || (sub_24B75C6B8() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000024B76BDD0 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024B76BF20 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x7372656E69617274 && a2 == 0xE800000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xEE00737574617453 || (sub_24B75C6B8() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEE00737574617453)
  {

    return 27;
  }

  else
  {
    v6 = sub_24B75C6B8();

    if (v6)
    {
      return 27;
    }

    else
    {
      return 28;
    }
  }
}

uint64_t sub_24B70EF78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B70EFE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void WorkoutDetailContentMargins.init(top:leading:bottom:trailing:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a4;
  a1[1] = a3;
  a1[2] = a2;
  a1[3] = a5;
}

uint64_t sub_24B70F06C(uint64_t a1)
{
  v2 = sub_24B70F300();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B70F0A8(uint64_t a1)
{
  v2 = sub_24B70F300();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutDetailContentMargins.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0354C0, &qword_24B7634B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v9 = *v1;
  v8 = v1[1];
  v11 = v1[2];
  v10 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B70F300();
  sub_24B75C738();
  v14 = v9;
  HIBYTE(v13) = 0;
  sub_24B6F1D10();
  sub_24B75C6A8();
  if (!v2)
  {
    v14 = v8;
    HIBYTE(v13) = 1;
    sub_24B75C6A8();
    v14 = v11;
    HIBYTE(v13) = 2;
    sub_24B75C6A8();
    v14 = v10;
    HIBYTE(v13) = 3;
    sub_24B75C6A8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24B70F300()
{
  result = qword_27F0354C8;
  if (!qword_27F0354C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0354C8);
  }

  return result;
}

uint64_t WorkoutDetailContentMargins.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0354D0, &qword_24B7634B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B70F300();
  sub_24B75C728();
  if (!v2)
  {
    HIBYTE(v14) = 0;
    sub_24B6F1FC4();
    sub_24B75C618();
    v9 = v15;
    HIBYTE(v14) = 1;
    sub_24B75C618();
    v10 = v15;
    HIBYTE(v14) = 2;
    sub_24B75C618();
    v12 = v15;
    HIBYTE(v14) = 3;
    sub_24B75C618();
    (*(v6 + 8))(v8, v5);
    v13 = v15;
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v12;
    a2[3] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t WorkoutDetailContentMargins.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x24C2489D0](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x24C2489D0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x24C2489D0](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x24C2489D0](*&v7);
}

uint64_t WorkoutDetailContentMargins.hashValue.getter()
{
  sub_24B75C6D8();
  WorkoutDetailContentMargins.hash(into:)();
  return sub_24B75C718();
}

uint64_t sub_24B70F6B4()
{
  sub_24B75C6D8();
  WorkoutDetailContentMargins.hash(into:)();
  return sub_24B75C718();
}

uint64_t sub_24B70F704(uint64_t a1)
{
  sub_24B75C6D8();
  WorkoutDetailContentMargins.hash(into:)();
  return sub_24B75C718();
}

unint64_t sub_24B70F750()
{
  result = qword_27F0354D8;
  if (!qword_27F0354D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0354D8);
  }

  return result;
}

unint64_t sub_24B70F7C8()
{
  result = qword_27F0354E0;
  if (!qword_27F0354E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0354E0);
  }

  return result;
}

unint64_t sub_24B70F820()
{
  result = qword_27F0354E8;
  if (!qword_27F0354E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0354E8);
  }

  return result;
}

unint64_t sub_24B70F878()
{
  result = qword_27F0354F0;
  if (!qword_27F0354F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0354F0);
  }

  return result;
}

uint64_t EditorialDetailFeature.environment.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_24B70F90C(v7, &v6);
}

__n128 EditorialDetailFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t EditorialDetailFeature.dispose(localState:sharedState:)(uint64_t a1)
{
  v2 = *(type metadata accessor for EditorialDetailState(0) + 28);
  sub_24B711BA8(a1 + v2, type metadata accessor for EditorialDetailLoadState);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 2, 2, v3);
}

uint64_t EditorialDetailFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v106 = a3;
  v107 = a2;
  v6 = type metadata accessor for EditorialDetailContent(0);
  MEMORY[0x28223BE20](v6 - 8);
  v97 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035350, &qword_24B762F48);
  MEMORY[0x28223BE20](v100);
  v102 = &v96 - v8;
  State = type metadata accessor for EditorialDetailLoadState(0);
  MEMORY[0x28223BE20](State - 8);
  v98 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v103 = &v96 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0354F8, &qword_24B7636E0);
  MEMORY[0x28223BE20](v13 - 8);
  v101 = &v96 - v14;
  v15 = sub_24B75B108();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034480, &qword_24B75F678);
  v104 = *(v22 - 8);
  v105 = v22;
  MEMORY[0x28223BE20](v22);
  v99 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v96 - v25;
  v27 = type metadata accessor for EditorialDetailAction(0);
  MEMORY[0x28223BE20](v27);
  v29 = (&v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = v4[1];
  v109 = *v4;
  v110 = v30;
  v31 = v4[3];
  v111 = v4[2];
  v112 = v31;
  sub_24B711B40(a4, v29, type metadata accessor for EditorialDetailAction);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result == 3)
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034438, &qword_24B760C80);
      v58 = v57[16];
      v59 = v57[20];
      v60 = &v26[v57[24]];
      v108[0] = 1;
      sub_24B7106CC();
      sub_24B75C508();
      sub_24B75C3F8();
      v61 = *MEMORY[0x277D04400];
      v62 = sub_24B75C208();
      (*(*(v62 - 8) + 104))(&v26[v58], v61, v62);
      v63 = swift_allocObject();
      v64 = v110;
      v63[1] = v109;
      v63[2] = v64;
      v65 = v112;
      v63[3] = v111;
      v63[4] = v65;
      *v60 = &unk_24B763718;
      *(v60 + 1) = v63;
      v66 = *MEMORY[0x277D043E8];
      v67 = sub_24B75C1F8();
      (*(*(v67 - 8) + 104))(&v26[v59], v66, v67);
      v69 = v104;
      v68 = v105;
      (*(v104 + 104))(v26, *MEMORY[0x277D043B0], v105);
      v70 = v106;
      v71 = *v106;
      sub_24B711658(&v109, v108);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = sub_24B6C45A8(0, v71[2] + 1, 1, v71);
      }

      v73 = v71[2];
      v72 = v71[3];
      if (v73 >= v72 >> 1)
      {
        v71 = sub_24B6C45A8((v72 > 1), v73 + 1, 1, v71);
      }

      v71[2] = v73 + 1;
      result = (*(v69 + 32))(v71 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v73, v26, v68);
      goto LABEL_29;
    }

    if (result == 4)
    {
      return result;
    }

    v44 = *(type metadata accessor for EditorialDetailState(0) + 28);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
    v46 = *(v45 - 8);
    v47 = *(v46 + 56);
    v48 = v103;
    v47(v103, 2, 2, v45);
    v49 = *(v100 + 48);
    v50 = v107;
    v51 = v102;
    sub_24B711B40(v107 + v44, v102, type metadata accessor for EditorialDetailLoadState);
    sub_24B711B40(v48, v51 + v49, type metadata accessor for EditorialDetailLoadState);
    v52 = *(v46 + 48);
    v53 = v52(v51, 2, v45);
    if (v53)
    {
      if (v53 == 1)
      {
        sub_24B711BA8(v48, type metadata accessor for EditorialDetailLoadState);
        if (v52(v51 + v49, 2, v45) == 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_24B711BA8(v48, type metadata accessor for EditorialDetailLoadState);
        if (v52(v51 + v49, 2, v45) == 2)
        {
LABEL_24:
          sub_24B711BA8(v51, type metadata accessor for EditorialDetailLoadState);
          sub_24B711BA8(v50 + v44, type metadata accessor for EditorialDetailLoadState);
          v47(v50 + v44, 1, 2, v45);
          v79 = *v50;
          v78 = v50[1];
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034438, &qword_24B760C80);
          v81 = v80[16];
          v82 = v80[20];
          v83 = v99;
          v84 = &v99[v80[24]];
          v108[0] = 0;
          sub_24B7106CC();

          sub_24B75C508();
          sub_24B75C3F8();
          v85 = *MEMORY[0x277D04400];
          v86 = sub_24B75C208();
          (*(*(v86 - 8) + 104))(&v83[v81], v85, v86);
          v87 = swift_allocObject();
          v88 = v110;
          *(v87 + 16) = v109;
          *(v87 + 32) = v88;
          v89 = v112;
          *(v87 + 48) = v111;
          *(v87 + 64) = v89;
          *(v87 + 80) = v79;
          *(v87 + 88) = v78;
          *v84 = &unk_24B7636F0;
          *(v84 + 1) = v87;
          v90 = *MEMORY[0x277D043E8];
          v91 = sub_24B75C1F8();
          (*(*(v91 - 8) + 104))(&v83[v82], v90, v91);
          v93 = v104;
          v92 = v105;
          (*(v104 + 104))(v83, *MEMORY[0x277D043B0], v105);
          v70 = v106;
          v71 = *v106;
          sub_24B711658(&v109, v108);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v71 = sub_24B6C45A8(0, v71[2] + 1, 1, v71);
          }

          v95 = v71[2];
          v94 = v71[3];
          if (v95 >= v94 >> 1)
          {
            v71 = sub_24B6C45A8((v94 > 1), v95 + 1, 1, v71);
          }

          v71[2] = v95 + 1;
          result = (*(v93 + 32))(v71 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v95, v99, v92);
LABEL_29:
          *v70 = v71;
          return result;
        }
      }
    }

    else
    {
      v74 = v98;
      sub_24B711B40(v51, v98, type metadata accessor for EditorialDetailLoadState);
      if (!v52(v51 + v49, 2, v45))
      {
        v75 = v51 + v49;
        v76 = v97;
        sub_24B711734(v75, v97);
        v77 = _s20FitnessProductDetail09EditorialC7ContentV2eeoiySbAC_ACtFZ_0(v74, v76);
        sub_24B711BA8(v76, type metadata accessor for EditorialDetailContent);
        sub_24B711BA8(v103, type metadata accessor for EditorialDetailLoadState);
        sub_24B711BA8(v74, type metadata accessor for EditorialDetailContent);
        if ((v77 & 1) == 0)
        {
          return sub_24B711BA8(v51, type metadata accessor for EditorialDetailLoadState);
        }

        goto LABEL_24;
      }

      sub_24B711BA8(v103, type metadata accessor for EditorialDetailLoadState);
      sub_24B711BA8(v74, type metadata accessor for EditorialDetailContent);
    }

    return sub_24B6B9CD4(v51, &qword_27F035350, &qword_24B762F48);
  }

  if (result)
  {
    if (result == 1)
    {
      v33 = *v29;
      v106 = v29[1];
      v107 = v33;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035508, &qword_24B767B70) + 48);
      v105 = *(v16 + 32);
      v105(v21, v29 + v34, v15);
      v35 = sub_24B75C418();
      v36 = v101;
      (*(*(v35 - 8) + 56))(v101, 1, 1, v35);
      (*(v16 + 16))(v18, v21, v15);
      sub_24B75C3E8();
      sub_24B711658(&v109, v108);
      v37 = sub_24B75C3D8();
      v38 = (*(v16 + 80) + 112) & ~*(v16 + 80);
      v39 = swift_allocObject();
      v40 = MEMORY[0x277D85700];
      *(v39 + 16) = v37;
      *(v39 + 24) = v40;
      v41 = v110;
      *(v39 + 32) = v109;
      *(v39 + 48) = v41;
      v42 = v112;
      *(v39 + 64) = v111;
      *(v39 + 80) = v42;
      v43 = v106;
      *(v39 + 96) = v107;
      *(v39 + 104) = v43;
      v105(v39 + v38, v18, v15);
      sub_24B710CD4(0, 0, v36, &unk_24B763708, v39);
    }

    else
    {
      (*(v16 + 32))(v21, v29, v15);
      (v111)(v21);
    }

    return (*(v16 + 8))(v21, v15);
  }

  else
  {
    v54 = *(type metadata accessor for EditorialDetailState(0) + 28);
    v55 = v107;
    sub_24B711BA8(v107 + v54, type metadata accessor for EditorialDetailLoadState);
    sub_24B711734(v29, v55 + v54);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
    return (*(*(v56 - 8) + 56))(v55 + v54, 0, 2, v56);
  }
}

unint64_t sub_24B7106CC()
{
  result = qword_27F035500;
  if (!qword_27F035500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035500);
  }

  return result;
}

uint64_t sub_24B710720(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_24B75C3E8();
  v2[3] = sub_24B75C3D8();
  v6 = (*(a2 + 16) + **(a2 + 16));
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24B710828;

  return v6();
}

uint64_t sub_24B710828()
{
  *(*v1 + 40) = v0;

  v3 = sub_24B75C3C8();
  if (v0)
  {
    v4 = sub_24B7109E8;
  }

  else
  {
    v4 = sub_24B710984;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_24B710984()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B7109E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B710A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_24B75C3E8();
  v7[3] = sub_24B75C3D8();
  v14 = (*(a4 + 48) + **(a4 + 48));
  v12 = swift_task_alloc();
  v7[4] = v12;
  *v12 = v7;
  v12[1] = sub_24B710B78;

  return v14(a5, a6, a7);
}

uint64_t sub_24B710B78()
{
  *(*v1 + 40) = v0;

  v3 = sub_24B75C3C8();
  if (v0)
  {
    v4 = sub_24B711C08;
  }

  else
  {
    v4 = sub_24B711C0C;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_24B710CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0354F8, &qword_24B7636E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_24B711AD0(a3, v22 - v9);
  v11 = sub_24B75C418();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_24B6B9CD4(v10, &qword_27F0354F8, &qword_24B7636E0);
  }

  else
  {
    sub_24B75C408();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_24B75C3C8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_24B75C338() + 32;

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

      sub_24B6B9CD4(a3, &qword_27F0354F8, &qword_24B7636E0);

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

  sub_24B6B9CD4(a3, &qword_27F0354F8, &qword_24B7636E0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_24B710F70(uint64_t a1, int **a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v5[2] = a1;
  v5[3] = type metadata accessor for EditorialDetailAction(0);
  v5[4] = swift_task_alloc();
  type metadata accessor for EditorialDetailContent(0);
  v9 = swift_task_alloc();
  v5[5] = v9;
  v5[6] = sub_24B75C3E8();
  v5[7] = sub_24B75C3D8();
  v12 = (*a2 + **a2);
  v10 = swift_task_alloc();
  v5[8] = v10;
  *v10 = v5;
  v10[1] = sub_24B711100;

  return v12(v9, a3, a4);
}

uint64_t sub_24B711100()
{
  v2 = *v1;
  v2[9] = v0;

  v4 = sub_24B75C3C8();
  v2[10] = v4;
  v2[11] = v3;
  if (v0)
  {
    v5 = sub_24B711534;
  }

  else
  {
    v5 = sub_24B711260;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B711260()
{
  sub_24B711B40(v0[5], v0[4], type metadata accessor for EditorialDetailContent);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[12] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035528, &unk_24B763860);
  *v1 = v0;
  v1[1] = sub_24B711348;
  v3 = v0[4];

  return MEMORY[0x282159B08](v3, v2);
}

uint64_t sub_24B711348()
{
  v1 = *v0;
  v2 = *(*v0 + 32);

  sub_24B711BA8(v2, type metadata accessor for EditorialDetailAction);
  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_24B7114A0, v4, v3);
}

uint64_t sub_24B7114A0()
{
  v1 = *(v0 + 40);

  sub_24B711BA8(v1, type metadata accessor for EditorialDetailContent);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B711534()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B7115AC(uint64_t a1)
{
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B6C412C;

  return sub_24B710F70(a1, (v1 + 16), v4, v5, v7);
}

uint64_t sub_24B711694(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for EditorialDetailState(0) + 28);
  sub_24B711BA8(a2 + v3, type metadata accessor for EditorialDetailLoadState);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2 + v3, 2, 2, v4);
}

uint64_t sub_24B711734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialDetailContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B711798(uint64_t a1)
{
  v4 = *(sub_24B75B108() - 8);
  v5 = (*(v4 + 80) + 112) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[12];
  v9 = v1[13];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24B6F3D84;

  return sub_24B710A4C(a1, v6, v7, (v1 + 4), v8, v9, v1 + v5);
}

uint64_t sub_24B7118A0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B6F3D84;

  return sub_24B710720(a1, v1 + 16);
}

uint64_t sub_24B711A10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24B711A7C()
{
  result = qword_27F035520;
  if (!qword_27F035520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035520);
  }

  return result;
}

uint64_t sub_24B711AD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0354F8, &qword_24B7636E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B711B40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B711BA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 WorkoutDetailFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t sub_24B711C24(uint64_t a1)
{
  v2 = sub_24B75B108();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WorkoutDetailFeature.TaskIdentifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B712F1C(v1, v8, type metadata accessor for WorkoutDetailFeature.TaskIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035538, &qword_24B763898);
      (*(v3 + 32))(v5, &v8[*(v12 + 48)], v2);
      MEMORY[0x24C2489B0](2);
      sub_24B75C358();
    }

    else
    {
      (*(v3 + 32))(v5, v8, v2);
      MEMORY[0x24C2489B0](1);
    }

    sub_24B713B04(&qword_27F034130, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_24B75C2C8();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v10 = 3;
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v10 = 4;
LABEL_8:
      MEMORY[0x24C2489B0](v10);
      sub_24B75C358();
    }

    return MEMORY[0x24C2489B0](0);
  }
}

uint64_t sub_24B711E98()
{
  sub_24B75C6D8();
  sub_24B711C24(v1);
  return sub_24B75C718();
}

uint64_t sub_24B711EDC(uint64_t a1)
{
  sub_24B75C6D8();
  sub_24B711C24(v2);
  return sub_24B75C718();
}

uint64_t WorkoutDetailFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, void (*a2)(uint64_t, char *, uint64_t), uint64_t *a3, char *a4)
{
  v137 = a3;
  v138 = a4;
  v126 = a2;
  v129 = sub_24B75B108();
  v134 = *(v129 - 8);
  v5 = *(v134 + 64);
  MEMORY[0x28223BE20](v129);
  v127 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v128 = &v119 - v7;
  MEMORY[0x28223BE20](v8);
  v125 = &v119 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v119 - v11;
  v133 = type metadata accessor for WorkoutDetailFeature.TaskIdentifier(0);
  MEMORY[0x28223BE20](v133);
  v14 = (&v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = &v119 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v119 - v19;
  MEMORY[0x28223BE20](v21);
  v132 = &v119 - v22;
  MEMORY[0x28223BE20](v23);
  v124 = &v119 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034470, &unk_24B763870);
  v135 = *(v25 - 8);
  v136 = v25;
  MEMORY[0x28223BE20](v25);
  v131 = &v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v119 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v119 - v31;
  MEMORY[0x28223BE20](v33);
  v130 = &v119 - v34;
  v35 = type metadata accessor for WorkoutDetailAction(0);
  MEMORY[0x28223BE20](v35);
  v37 = &v119 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v4[1];
  v140 = *v4;
  v141 = v38;
  v39 = v4[3];
  v142 = v4[2];
  v143 = v39;
  sub_24B712F1C(v138, v37, type metadata accessor for WorkoutDetailAction);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    v131 = v17;
    v63 = v29;
    v138 = v12;
    v64 = v128;
    v65 = v129;
    if (result)
    {
      v123 = *v37;
      v97 = v123;
      v120 = *(v37 + 1);
      v98 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0347A8, &qword_24B75FB50) + 48);
      v99 = v134;
      v100 = *(v134 + 32);
      v125 = (v134 + 32);
      v126 = v100;
      v101 = v65;
      v100(v64, &v37[v98], v65);
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034438, &qword_24B760C80);
      v130 = v102[12];
      v122 = v102[16];
      v138 = v102[20];
      v124 = &v63[v102[24]];
      v103 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035538, &qword_24B763898) + 48);
      v104 = v131;
      *v131 = v97;
      v105 = v120;
      *(v104 + 8) = v120;
      v106 = v99 + 16;
      v121 = *(v99 + 16);
      v121(v104 + v103, v64, v101);
      swift_storeEnumTagMultiPayload();
      sub_24B712F1C(v104, v132, type metadata accessor for WorkoutDetailFeature.TaskIdentifier);
      sub_24B713B04(&qword_27F035530, type metadata accessor for WorkoutDetailFeature.TaskIdentifier, &unk_24B7639BC);

      sub_24B75C508();
      sub_24B712F84(v104);
      v107 = *MEMORY[0x277D043F0];
      v108 = sub_24B75C208();
      (*(*(v108 - 8) + 104))(&v63[v122], v107, v108);
      v109 = v127;
      v121(v127, v64, v101);
      v110 = (*(v106 + 64) + 96) & ~*(v106 + 64);
      v111 = swift_allocObject();
      v112 = v141;
      *(v111 + 16) = v140;
      *(v111 + 32) = v112;
      v113 = v143;
      *(v111 + 48) = v142;
      *(v111 + 64) = v113;
      *(v111 + 80) = v123;
      *(v111 + 88) = v105;
      v126(v111 + v110, v109, v101);
      v114 = v124;
      *v124 = &unk_24B7638A8;
      *(v114 + 1) = v111;
      sub_24B71350C(&v140, v139);
      sub_24B75C3F8();
      v115 = *MEMORY[0x277D043E8];
      v116 = sub_24B75C1F8();
      (*(*(v116 - 8) + 104))(&v138[v63], v115, v116);
      v56 = v135;
      v55 = v136;
      (*(v135 + 104))(v63, *MEMORY[0x277D043B0], v136);
      v57 = v137;
      v58 = *v137;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_24B6C45CC(0, v58[2] + 1, 1, v58);
      }

      v60 = v58[2];
      v117 = v58[3];
      v61 = v60 + 1;
      v118 = v134;
      if (v60 >= v117 >> 1)
      {
        v58 = sub_24B6C45CC((v117 > 1), v60 + 1, 1, v58);
      }

      v82 = *(v118 + 8);
    }

    else
    {
      v66 = v134;
      v128 = *(v134 + 32);
      v67 = v138;
      (v128)(v138, v37, v129);
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034438, &qword_24B760C80);
      v130 = v68[12];
      v126 = v68[16];
      v131 = v68[20];
      v63 = v32;
      v127 = &v32[v68[24]];
      v69 = *(v66 + 16);
      v69(v20, v67, v65);
      swift_storeEnumTagMultiPayload();
      sub_24B712F1C(v20, v132, type metadata accessor for WorkoutDetailFeature.TaskIdentifier);
      sub_24B713B04(&qword_27F035530, type metadata accessor for WorkoutDetailFeature.TaskIdentifier, &unk_24B7639BC);
      sub_24B75C508();
      sub_24B712F84(v20);
      v70 = *MEMORY[0x277D043F0];
      v71 = sub_24B75C208();
      (*(*(v71 - 8) + 104))(v126 + v63, v70, v71);
      v72 = v125;
      v69(v125, v67, v65);
      v73 = (*(v66 + 80) + 80) & ~*(v66 + 80);
      v74 = swift_allocObject();
      v75 = v141;
      v74[1] = v140;
      v74[2] = v75;
      v76 = v143;
      v74[3] = v142;
      v74[4] = v76;
      (v128)(v74 + v73, v72, v65);
      v77 = v127;
      *v127 = &unk_24B7638B8;
      *(v77 + 1) = v74;
      sub_24B71350C(&v140, v139);
      sub_24B75C3F8();
      v78 = *MEMORY[0x277D043E8];
      v79 = sub_24B75C1F8();
      (*(*(v79 - 8) + 104))(&v63[v131], v78, v79);
      v56 = v135;
      v55 = v136;
      (*(v135 + 104))(v63, *MEMORY[0x277D043B0], v136);
      v57 = v137;
      v58 = *v137;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_24B6C45CC(0, v58[2] + 1, 1, v58);
      }

      v60 = v58[2];
      v80 = v58[3];
      v61 = v60 + 1;
      v81 = v134;
      if (v60 >= v80 >> 1)
      {
        v58 = sub_24B6C45CC((v80 > 1), v60 + 1, 1, v58);
      }

      v82 = *(v81 + 8);
    }

    v82();
  }

  else
  {
    if (result == 2)
    {
      v84 = *v37;
      v83 = *(v37 + 1);
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034438, &qword_24B760C80);
      v86 = v85[16];
      v138 = v85[20];
      v87 = v131;
      v88 = (v131 + v85[24]);
      *v14 = v84;
      v14[1] = v83;
      swift_storeEnumTagMultiPayload();
      sub_24B712F1C(v14, v132, type metadata accessor for WorkoutDetailFeature.TaskIdentifier);
      sub_24B713B04(&qword_27F035530, type metadata accessor for WorkoutDetailFeature.TaskIdentifier, &unk_24B7639BC);

      sub_24B75C508();
      sub_24B712F84(v14);
      v89 = *MEMORY[0x277D043F0];
      v90 = sub_24B75C208();
      (*(*(v90 - 8) + 104))(v87 + v86, v89, v90);
      v91 = swift_allocObject();
      v92 = v141;
      *(v91 + 16) = v140;
      *(v91 + 32) = v92;
      v93 = v143;
      *(v91 + 48) = v142;
      *(v91 + 64) = v93;
      *(v91 + 80) = v84;
      *(v91 + 88) = v83;
      *v88 = &unk_24B763888;
      v88[1] = v91;
      sub_24B71350C(&v140, v139);
      sub_24B75C3F8();
      v94 = *MEMORY[0x277D043E8];
      v95 = sub_24B75C1F8();
      (*(*(v95 - 8) + 104))(&v138[v87], v94, v95);
      v56 = v135;
      v55 = v136;
      (*(v135 + 104))(v87, *MEMORY[0x277D043B0], v136);
      v57 = v137;
      v58 = *v137;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_24B6C45CC(0, v58[2] + 1, 1, v58);
      }

      v60 = v58[2];
      v96 = v58[3];
      v61 = v60 + 1;
      if (v60 >= v96 >> 1)
      {
        v58 = sub_24B6C45CC((v96 > 1), v60 + 1, 1, v58);
      }

      v62 = &v145;
    }

    else
    {
      if (result != 3)
      {
        return result;
      }

      v41 = *(v126 + 1);
      v138 = *v126;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034438, &qword_24B760C80);
      v43 = v42[16];
      v44 = v42[20];
      v45 = v130;
      v46 = &v130[v42[24]];
      v47 = v124;
      swift_storeEnumTagMultiPayload();
      sub_24B712F1C(v47, v132, type metadata accessor for WorkoutDetailFeature.TaskIdentifier);
      sub_24B713B04(&qword_27F035530, type metadata accessor for WorkoutDetailFeature.TaskIdentifier, &unk_24B7639BC);

      sub_24B75C508();
      sub_24B712F84(v47);
      v48 = *MEMORY[0x277D043F0];
      v49 = sub_24B75C208();
      (*(*(v49 - 8) + 104))(&v45[v43], v48, v49);
      v50 = *MEMORY[0x277D043E0];
      v51 = sub_24B75C1F8();
      (*(*(v51 - 8) + 104))(&v45[v44], v50, v51);
      v52 = swift_allocObject();
      v53 = v141;
      *(v52 + 16) = v140;
      *(v52 + 32) = v53;
      v54 = v143;
      *(v52 + 48) = v142;
      *(v52 + 64) = v54;
      *(v52 + 80) = v138;
      *(v52 + 88) = v41;
      *v46 = &unk_24B7638C8;
      *(v46 + 1) = v52;
      sub_24B71350C(&v140, v139);
      sub_24B75C3F8();
      v56 = v135;
      v55 = v136;
      (*(v135 + 104))(v45, *MEMORY[0x277D043B0], v136);
      v57 = v137;
      v58 = *v137;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_24B6C45CC(0, v58[2] + 1, 1, v58);
      }

      v60 = v58[2];
      v59 = v58[3];
      v61 = v60 + 1;
      if (v60 >= v59 >> 1)
      {
        v58 = sub_24B6C45CC((v59 > 1), v60 + 1, 1, v58);
      }

      v62 = &v144;
    }

    v63 = *(v62 - 32);
  }

  v58[2] = v61;
  result = (*(v56 + 32))(v58 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v60, v63, v55);
  *v57 = v58;
  return result;
}

uint64_t type metadata accessor for WorkoutDetailFeature.TaskIdentifier(uint64_t a1)
{
  result = qword_27F035558;
  if (!qword_27F035558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B712F1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B712F84(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutDetailFeature.TaskIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B712FE0(uint64_t a1, int **a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_24B75C3E8();
  v4[3] = sub_24B75C3D8();
  v10 = (*a2 + **a2);
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_24B710B78;

  return v10(a3, a4);
}

uint64_t sub_24B713100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_24B75C3E8();
  v3[3] = sub_24B75C3D8();
  v8 = (*(a2 + 16) + **(a2 + 16));
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_24B710828;

  return v8(a3);
}

uint64_t sub_24B713214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_24B75C3E8();
  v5[3] = sub_24B75C3D8();
  v12 = (*(a2 + 32) + **(a2 + 32));
  v10 = swift_task_alloc();
  v5[4] = v10;
  *v10 = v5;
  v10[1] = sub_24B710B78;

  return v12(a3, a4, a5);
}

uint64_t sub_24B713340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_24B75C3E8();
  v4[3] = sub_24B75C3D8();
  v10 = (*(a2 + 48) + **(a2 + 48));
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_24B710B78;

  return v10(a3, a4);
}

uint64_t sub_24B713460(uint64_t a1)
{
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B6F3D84;

  return sub_24B713340(a1, v1 + 16, v4, v5);
}

uint64_t sub_24B71354C(uint64_t a1)
{
  v4 = *(sub_24B75B108() - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B6F3D84;

  return sub_24B713214(a1, v1 + 16, v6, v7, v1 + v5);
}

uint64_t sub_24B71363C(uint64_t a1)
{
  v4 = *(sub_24B75B108() - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B6C412C;

  return sub_24B713100(a1, v1 + 16, v1 + v5);
}

uint64_t objectdestroyTm_0()
{

  return swift_deallocObject();
}

uint64_t sub_24B713770(uint64_t a1)
{
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B6F3D84;

  return sub_24B712FE0(a1, (v1 + 16), v4, v5);
}

void sub_24B713954(uint64_t a1)
{
  sub_24B75B108();
  if (v1 <= 0x3F)
  {
    sub_24B7139F0(319);
    if (v2 <= 0x3F)
    {
      sub_24B713A5C();
      if (v3 <= 0x3F)
      {
        sub_24B713A8C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_24B7139F0(uint64_t a1)
{
  if (!qword_27F035568)
  {
    sub_24B75B108();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F035568);
    }
  }
}

uint64_t sub_24B713A5C()
{
  result = qword_27F035570;
  if (!qword_27F035570)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F035570);
  }

  return result;
}

uint64_t sub_24B713A8C()
{
  result = qword_27F035578;
  if (!qword_27F035578)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F035578);
  }

  return result;
}

uint64_t sub_24B713B04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B713B4C(char *a1, char *a2)
{
  v64 = a1;
  v65 = a2;
  v2 = sub_24B75B108();
  v62 = *(v2 - 8);
  v63 = v2;
  MEMORY[0x28223BE20](v2);
  v61 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v58 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v58 - v8;
  v10 = type metadata accessor for WorkoutDetailFeature.TaskIdentifier(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v58 - v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v58 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v58 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035588, &unk_24B763A00);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v58 - v23;
  v26 = (&v58 + *(v25 + 56) - v23);
  sub_24B712F1C(v64, &v58 - v23, type metadata accessor for WorkoutDetailFeature.TaskIdentifier);
  sub_24B712F1C(v65, v26, type metadata accessor for WorkoutDetailFeature.TaskIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v32 = v9;
    v33 = v61;
    v34 = v62;
    v65 = v6;
    v35 = v63;
    if (EnumCaseMultiPayload)
    {
      v64 = v24;
      sub_24B712F1C(v24, v18, type metadata accessor for WorkoutDetailFeature.TaskIdentifier);
      v41 = *v18;
      v40 = *(v18 + 1);
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035538, &qword_24B763898) + 48);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v34 + 8))(&v18[v42], v35);

        v24 = v64;
        goto LABEL_32;
      }

      v43 = v26[1];
      v59 = *v26;
      v60 = v41;
      v44 = *(v34 + 32);
      v45 = &v18[v42];
      v46 = v35;
      v44(v65, v45, v35);
      v44(v33, v26 + v42, v35);
      if (v60 == v59 && v40 == v43)
      {

        v49 = v64;
      }

      else
      {
        v48 = sub_24B75C6B8();

        v49 = v64;
        if ((v48 & 1) == 0)
        {
          v50 = *(v34 + 8);
          v50(v33, v46);
          v50(v65, v46);
          sub_24B712F84(v49);
          goto LABEL_33;
        }
      }

      v55 = v65;
      v51 = sub_24B75B0F8();
      v56 = *(v34 + 8);
      v56(v33, v46);
      v56(v55, v46);
      v54 = v49;
    }

    else
    {
      sub_24B712F1C(v24, v21, type metadata accessor for WorkoutDetailFeature.TaskIdentifier);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v34 + 8))(v21, v35);
LABEL_32:
        sub_24B714160(v24);
        goto LABEL_33;
      }

      v52 = v35;
      (*(v34 + 32))(v32, v26, v35);
      v51 = sub_24B75B0F8();
      v53 = *(v34 + 8);
      v53(v32, v52);
      v53(v21, v52);
      v54 = v24;
    }

    sub_24B712F84(v54);
    return v51 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_36;
      }

      goto LABEL_32;
    }

    sub_24B712F1C(v24, v12, type metadata accessor for WorkoutDetailFeature.TaskIdentifier);
    v29 = *v12;
    v28 = v12[1];
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      if (v29 != *v26 || v28 != v26[1])
      {
        v31 = sub_24B75C6B8();

        if (v31)
        {
          goto LABEL_36;
        }

        goto LABEL_20;
      }

      goto LABEL_35;
    }

    goto LABEL_21;
  }

  sub_24B712F1C(v24, v15, type metadata accessor for WorkoutDetailFeature.TaskIdentifier);
  v37 = *v15;
  v36 = v15[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_21:

    goto LABEL_32;
  }

  if (v37 == *v26 && v36 == v26[1])
  {
LABEL_35:

    goto LABEL_36;
  }

  v39 = sub_24B75C6B8();

  if (v39)
  {
LABEL_36:
    sub_24B712F84(v24);
    v51 = 1;
    return v51 & 1;
  }

LABEL_20:
  sub_24B712F84(v24);
LABEL_33:
  v51 = 0;
  return v51 & 1;
}

uint64_t sub_24B714160(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035588, &unk_24B763A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B7141CC()
{
  v1 = 0x676E696863746566;
  if (*v0 != 1)
  {
    v1 = 0x64656863746566;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701602409;
  }
}

uint64_t sub_24B714220@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B7160DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B714248(uint64_t a1)
{
  v2 = sub_24B715A58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B714284(uint64_t a1)
{
  v2 = sub_24B715A58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7142C0(uint64_t a1)
{
  v2 = sub_24B715B10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7142FC(uint64_t a1)
{
  v2 = sub_24B715B10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B714338(uint64_t a1)
{
  v2 = sub_24B715B64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B714374(uint64_t a1)
{
  v2 = sub_24B715B64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7143B0(uint64_t a1)
{
  v2 = sub_24B715BB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7143EC(uint64_t a1)
{
  v2 = sub_24B715BB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutContextMenuPreviewLoadState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035590, &qword_24B763A10);
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x28223BE20](v2);
  v32 = &v26 - v3;
  v4 = type metadata accessor for WorkoutContextMenuPreviewContent(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035598, &qword_24B763A18);
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v28 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0355A0, &qword_24B763A20);
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  State = type metadata accessor for WorkoutContextMenuPreviewLoadState(0);
  MEMORY[0x28223BE20](State - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0355A8, &qword_24B763A28);
  v15 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v17 = &v26 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B715A58();
  sub_24B75C738();
  sub_24B715AAC(v35, v14);
  v18 = (*(v5 + 48))(v14, 2, v4);
  if (v18)
  {
    if (v18 == 1)
    {
      v37 = 0;
      sub_24B715BB8();
      v19 = v36;
      sub_24B75C638();
      (*(v26 + 8))(v11, v27);
    }

    else
    {
      v38 = 1;
      sub_24B715B64();
      v25 = v28;
      v19 = v36;
      sub_24B75C638();
      (*(v29 + 8))(v25, v30);
    }

    return (*(v15 + 8))(v17, v19);
  }

  else
  {
    v35 = type metadata accessor for WorkoutContextMenuPreviewContent;
    v20 = v31;
    sub_24B715C0C(v14, v31, type metadata accessor for WorkoutContextMenuPreviewContent);
    v39 = 2;
    sub_24B715B10();
    v21 = v32;
    v22 = v36;
    sub_24B75C638();
    sub_24B715CBC(&qword_27F034378, type metadata accessor for WorkoutContextMenuPreviewContent, &protocol conformance descriptor for WorkoutContextMenuPreviewContent);
    v23 = v34;
    sub_24B75C6A8();
    (*(v33 + 8))(v21, v23);
    sub_24B7161F4(v20, v35);
    return (*(v15 + 8))(v17, v22);
  }
}

uint64_t WorkoutContextMenuPreviewLoadState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0355D0, &qword_24B763A30);
  v4 = *(v3 - 8);
  v51 = v3;
  v52 = v4;
  MEMORY[0x28223BE20](v3);
  v56 = &v46 - v5;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0355D8, &qword_24B763A38);
  v55 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v54 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0355E0, &qword_24B763A40);
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0355E8, &qword_24B763A48);
  v57 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  State = type metadata accessor for WorkoutContextMenuPreviewLoadState(0);
  MEMORY[0x28223BE20](State);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - v17;
  v19 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24B715A58();
  v20 = v58;
  sub_24B75C728();
  if (!v20)
  {
    v46 = v15;
    v47 = v18;
    v22 = v54;
    v21 = v55;
    v23 = v56;
    v58 = 0;
    v24 = sub_24B75C628();
    v25 = (2 * *(v24 + 16)) | 1;
    v60 = v24;
    v61 = v24 + 32;
    v62 = 0;
    v63 = v25;
    v26 = sub_24B6B9E08();
    v27 = v12;
    if (v26 == 3 || v62 != v63 >> 1)
    {
      v30 = sub_24B75C568();
      swift_allocError();
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0);
      *v32 = State;
      sub_24B75C5A8();
      sub_24B75C558();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84160], v30);
      swift_willThrow();
    }

    else if (v26)
    {
      if (v26 == 1)
      {
        v64 = 1;
        sub_24B715B64();
        v28 = v58;
        sub_24B75C598();
        v29 = v57;
        if (v28)
        {
          (*(v57 + 8))(v12, v10);
LABEL_10:
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_1(v59);
        }

        (*(v21 + 8))(v22, v50);
        (*(v29 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v44 = type metadata accessor for WorkoutContextMenuPreviewContent(0);
        v36 = v47;
        (*(*(v44 - 8) + 56))(v47, 2, 2, v44);
        goto LABEL_18;
      }

      v64 = 2;
      sub_24B715B10();
      v37 = v23;
      v38 = v58;
      sub_24B75C598();
      v39 = v57;
      if (!v38)
      {
        v40 = v53;
        v41 = type metadata accessor for WorkoutContextMenuPreviewContent(0);
        sub_24B715CBC(&qword_27F034398, type metadata accessor for WorkoutContextMenuPreviewContent, &protocol conformance descriptor for WorkoutContextMenuPreviewContent);
        v42 = v46;
        v43 = v51;
        sub_24B75C618();
        (*(v52 + 8))(v37, v43);
        (*(v39 + 8))(v27, v10);
        swift_unknownObjectRelease();
        (*(*(v41 - 8) + 56))(v42, 0, 2, v41);
        v36 = v47;
        sub_24B715C0C(v42, v47, type metadata accessor for WorkoutContextMenuPreviewLoadState);
        v45 = v40;
LABEL_19:
        sub_24B715C0C(v36, v45, type metadata accessor for WorkoutContextMenuPreviewLoadState);
        return __swift_destroy_boxed_opaque_existential_1(v59);
      }
    }

    else
    {
      v64 = 0;
      sub_24B715BB8();
      v34 = v58;
      sub_24B75C598();
      if (!v34)
      {
        (*(v48 + 8))(v9, v49);
        (*(v57 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v35 = type metadata accessor for WorkoutContextMenuPreviewContent(0);
        v36 = v47;
        (*(*(v35 - 8) + 56))(v47, 1, 2, v35);
LABEL_18:
        v45 = v53;
        goto LABEL_19;
      }
    }

    (*(v57 + 8))(v27, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t WorkoutContextMenuPreviewLoadState.hash(into:)(uint64_t a1)
{
  v39 = a1;
  v1 = sub_24B75AFE8();
  v2 = *(v1 - 8);
  v36 = v1;
  v37 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034508, &qword_24B761E50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C0, &unk_24B763A50);
  v35 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344E8, &unk_24B76A050);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v32 - v15;
  v17 = type metadata accessor for WorkoutContextMenuPreviewContent(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for WorkoutContextMenuPreviewLoadState(0);
  MEMORY[0x28223BE20](State - 8);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B715AAC(v38, v23);
  v24 = (*(v18 + 48))(v23, 2, v17);
  if (v24)
  {
    return MEMORY[0x24C2489B0](v24 != 1);
  }

  v33 = v10;
  v34 = v7;
  v38 = v4;
  v25 = v36;
  sub_24B715C0C(v23, v20, type metadata accessor for WorkoutContextMenuPreviewContent);
  MEMORY[0x24C2489B0](2);
  sub_24B6B9D34(v20, v16, &qword_27F0344E8, &unk_24B76A050);
  if ((*(v35 + 48))(v16, 1, v11) == 1)
  {
    sub_24B75C6F8();
  }

  else
  {
    sub_24B6C7484(v16, v13);
    sub_24B75C6F8();
    sub_24B75B2B8();
    sub_24B6B9CD4(v13, &qword_27F0344C0, &unk_24B763A50);
  }

  v27 = v38;
  v28 = v33;
  sub_24B6B9D34(&v20[*(v17 + 20)], v33, &qword_27F034508, &qword_24B761E50);
  v29 = v37;
  v30 = *(v37 + 48);
  if (v30(v28, 1, v25) == 1)
  {
    sub_24B75C6F8();
  }

  else
  {
    (*(v29 + 32))(v27, v28, v25);
    sub_24B75C6F8();
    sub_24B715CBC(&qword_27F0354A0, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
    sub_24B75C2C8();
    (*(v29 + 8))(v27, v25);
  }

  v31 = v34;
  sub_24B6B9D34(&v20[*(v17 + 24)], v34, &qword_27F034508, &qword_24B761E50);
  if (v30(v31, 1, v25) == 1)
  {
    sub_24B75C6F8();
  }

  else
  {
    (*(v29 + 32))(v27, v31, v25);
    sub_24B75C6F8();
    sub_24B715CBC(&qword_27F0354A0, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
    sub_24B75C2C8();
    (*(v29 + 8))(v27, v25);
  }

  return sub_24B7161F4(v20, type metadata accessor for WorkoutContextMenuPreviewContent);
}

uint64_t WorkoutContextMenuPreviewLoadState.hashValue.getter()
{
  sub_24B75C6D8();
  WorkoutContextMenuPreviewLoadState.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t sub_24B71570C()
{
  sub_24B75C6D8();
  WorkoutContextMenuPreviewLoadState.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t sub_24B715750(uint64_t a1)
{
  sub_24B75C6D8();
  WorkoutContextMenuPreviewLoadState.hash(into:)(v2);
  return sub_24B75C718();
}

BOOL _s20FitnessProductDetail34WorkoutContextMenuPreviewLoadStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutContextMenuPreviewContent(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for WorkoutContextMenuPreviewLoadState(0);
  MEMORY[0x28223BE20](State - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035648, &qword_24B763EF8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_24B715AAC(a1, &v20 - v12);
  sub_24B715AAC(a2, &v13[v15]);
  v16 = *(v5 + 48);
  v17 = v16(v13, 2, v4);
  if (!v17)
  {
    sub_24B715AAC(v13, v10);
    if (!v16(&v13[v15], 2, v4))
    {
      sub_24B715C0C(&v13[v15], v7, type metadata accessor for WorkoutContextMenuPreviewContent);
      v18 = _s20FitnessProductDetail32WorkoutContextMenuPreviewContentV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_24B7161F4(v7, type metadata accessor for WorkoutContextMenuPreviewContent);
      sub_24B7161F4(v10, type metadata accessor for WorkoutContextMenuPreviewContent);
      sub_24B7161F4(v13, type metadata accessor for WorkoutContextMenuPreviewLoadState);
      return v18;
    }

    sub_24B7161F4(v10, type metadata accessor for WorkoutContextMenuPreviewContent);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v13[v15], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v13[v15], 2, v4) != 2)
  {
LABEL_9:
    sub_24B6B9CD4(v13, &qword_27F035648, &qword_24B763EF8);
    return 0;
  }

  sub_24B7161F4(v13, type metadata accessor for WorkoutContextMenuPreviewLoadState);
  return 1;
}

unint64_t sub_24B715A58()
{
  result = qword_27F0355B0;
  if (!qword_27F0355B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0355B0);
  }

  return result;
}

uint64_t sub_24B715AAC(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for WorkoutContextMenuPreviewLoadState(0);
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
}

unint64_t sub_24B715B10()
{
  result = qword_27F0355B8;
  if (!qword_27F0355B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0355B8);
  }

  return result;
}

unint64_t sub_24B715B64()
{
  result = qword_27F0355C0;
  if (!qword_27F0355C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0355C0);
  }

  return result;
}

unint64_t sub_24B715BB8()
{
  result = qword_27F0355C8;
  if (!qword_27F0355C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0355C8);
  }

  return result;
}

uint64_t sub_24B715C0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B715CBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24B715D70()
{
  result = qword_27F0355F8;
  if (!qword_27F0355F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0355F8);
  }

  return result;
}

unint64_t sub_24B715DC8()
{
  result = qword_27F035600;
  if (!qword_27F035600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035600);
  }

  return result;
}

unint64_t sub_24B715E20()
{
  result = qword_27F035608;
  if (!qword_27F035608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035608);
  }

  return result;
}

unint64_t sub_24B715E78()
{
  result = qword_27F035610;
  if (!qword_27F035610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035610);
  }

  return result;
}

unint64_t sub_24B715ED0()
{
  result = qword_27F035618;
  if (!qword_27F035618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035618);
  }

  return result;
}

unint64_t sub_24B715F28()
{
  result = qword_27F035620;
  if (!qword_27F035620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035620);
  }

  return result;
}

unint64_t sub_24B715F80()
{
  result = qword_27F035628;
  if (!qword_27F035628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035628);
  }

  return result;
}

unint64_t sub_24B715FD8()
{
  result = qword_27F035630;
  if (!qword_27F035630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035630);
  }

  return result;
}

unint64_t sub_24B716030()
{
  result = qword_27F035638;
  if (!qword_27F035638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035638);
  }

  return result;
}

unint64_t sub_24B716088()
{
  result = qword_27F035640;
  if (!qword_27F035640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035640);
  }

  return result;
}

uint64_t sub_24B7160DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v3 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000)
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

uint64_t sub_24B7161F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24B716254()
{
  v1 = *v0;
  v2 = 0x6F43646564616F6CLL;
  v3 = 0xD000000000000015;
  if (v1 != 4)
  {
    v3 = 0x6570704177656976;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 != 1)
  {
    v2 = 0x7070615465726F6DLL;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_24B716334@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B7194B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B71635C(uint64_t a1)
{
  v2 = sub_24B717254();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B716398(uint64_t a1)
{
  v2 = sub_24B717254();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7163D4(uint64_t a1)
{
  v2 = sub_24B7174B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B716410(uint64_t a1)
{
  v2 = sub_24B7174B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B71644C(uint64_t a1)
{
  v2 = sub_24B71745C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B716488(uint64_t a1)
{
  v2 = sub_24B71745C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7164C4(uint64_t a1)
{
  v2 = sub_24B717408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B716500(uint64_t a1)
{
  v2 = sub_24B717408();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B71653C()
{
  if (*v0)
  {
    return 7107189;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_24B716574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
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

uint64_t sub_24B716658(uint64_t a1)
{
  v2 = sub_24B7173B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B716694(uint64_t a1)
{
  v2 = sub_24B7173B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7166D0(uint64_t a1)
{
  v2 = sub_24B717360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B71670C(uint64_t a1)
{
  v2 = sub_24B717360();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B716748(uint64_t a1)
{
  v2 = sub_24B71730C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B716784(uint64_t a1)
{
  v2 = sub_24B71730C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditorialDetailAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035650, &qword_24B763F00);
  v62 = *(v2 - 8);
  v63 = v2;
  MEMORY[0x28223BE20](v2);
  v61 = &v51 - v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035658, &qword_24B763F08);
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v64 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035660, &qword_24B763F10);
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x28223BE20](v5);
  v68 = &v51 - v6;
  v7 = sub_24B75B108();
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x28223BE20](v7);
  v60 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = &v51 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035668, &qword_24B763F18);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v54 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035670, &qword_24B763F20);
  v58 = *(v12 - 8);
  v59 = v12;
  MEMORY[0x28223BE20](v12);
  v55 = &v51 - v13;
  v53 = type metadata accessor for EditorialDetailContent(0);
  MEMORY[0x28223BE20](v53);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035678, &qword_24B763F28);
  v52 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - v17;
  v19 = type metadata accessor for EditorialDetailAction(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035680, &unk_24B763F30);
  v73 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v23 = &v51 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B717254();
  v76 = v23;
  sub_24B75C738();
  sub_24B7172A8(v75, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v78 = 0;
      sub_24B7174B0();
      v40 = v76;
      v39 = v77;
      sub_24B75C638();
      (*(v52 + 8))(v18, v16);
      return (*(v73 + 8))(v40, v39);
    }

    if (EnumCaseMultiPayload == 4)
    {
      v80 = 2;
      sub_24B717408();
      v33 = v54;
      v35 = v76;
      v34 = v77;
      sub_24B75C638();
      (*(v56 + 8))(v33, v57);
    }

    else
    {
      v85 = 5;
      sub_24B71730C();
      v49 = v61;
      v35 = v76;
      v34 = v77;
      sub_24B75C638();
      (*(v62 + 8))(v49, v63);
    }

    v47 = *(v73 + 8);
    v48 = v35;
    return v47(v48, v34);
  }

  if (!EnumCaseMultiPayload)
  {
    sub_24B718234(v21, v15, type metadata accessor for EditorialDetailContent);
    v79 = 1;
    sub_24B71745C();
    v36 = v55;
    v30 = v76;
    v29 = v77;
    sub_24B75C638();
    sub_24B6A7260(&qword_27F0352C8, type metadata accessor for EditorialDetailContent, &protocol conformance descriptor for EditorialDetailContent);
    v37 = v59;
    sub_24B75C6A8();
    (*(v58 + 8))(v36, v37);
    sub_24B719738(v15, type metadata accessor for EditorialDetailContent);
    return (*(v73 + 8))(v30, v29);
  }

  if (EnumCaseMultiPayload != 1)
  {
    v42 = v71;
    v41 = v72;
    v43 = v60;
    (*(v71 + 32))();
    v84 = 4;
    sub_24B717360();
    v44 = v64;
    v45 = v76;
    v34 = v77;
    sub_24B75C638();
    sub_24B6A7260(&qword_27F0341E0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    v46 = v67;
    sub_24B75C6A8();
    (*(v65 + 8))(v44, v46);
    (*(v42 + 8))(v43, v41);
    v47 = *(v73 + 8);
    v48 = v45;
    return v47(v48, v34);
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035508, &qword_24B767B70);
  v26 = v71;
  v27 = v66;
  (*(v71 + 32))(v66, &v21[*(v25 + 48)], v72);
  v83 = 3;
  sub_24B7173B4();
  v28 = v68;
  v30 = v76;
  v29 = v77;
  sub_24B75C638();
  v82 = 0;
  v31 = v70;
  v32 = v74;
  sub_24B75C648();
  if (v32)
  {

    (*(v69 + 8))(v28, v31);
    (*(v26 + 8))(v27, v72);
    return (*(v73 + 8))(v30, v29);
  }

  v81 = 1;
  sub_24B6A7260(&qword_27F0341E0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
  v50 = v72;
  sub_24B75C6A8();
  (*(v69 + 8))(v28, v31);
  (*(v26 + 8))(v27, v50);
  return (*(v73 + 8))(v76, v77);
}

uint64_t type metadata accessor for EditorialDetailAction(uint64_t a1)
{
  result = qword_27F035700;
  if (!qword_27F035700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24B717254()
{
  result = qword_27F035688;
  if (!qword_27F035688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035688);
  }

  return result;
}

uint64_t sub_24B7172A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialDetailAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B71730C()
{
  result = qword_27F035690;
  if (!qword_27F035690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035690);
  }

  return result;
}