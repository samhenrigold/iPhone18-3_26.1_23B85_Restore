uint64_t sub_1E5BDC2B4(uint64_t a1)
{
  v4 = (*(*(v1[2] - 8) + 80) + 48) & ~*(*(v1[2] - 8) + 80);
  v5 = v1[4];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5B6D9A0;

  return sub_1E5BDC198(a1, v5, v6, v1 + v4);
}

unint64_t sub_1E5BDC3C4()
{
  result = qword_1EE2C7248;
  if (!qword_1EE2C7248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7248);
  }

  return result;
}

unint64_t sub_1E5BDC41C()
{
  result = qword_1EE2C7250;
  if (!qword_1EE2C7250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7250);
  }

  return result;
}

uint64_t sub_1E5BDC48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5BDC4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5BDC51C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E5BDC564(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E5BDC5D0(uint64_t a1)
{
  v2 = sub_1E5BDC898();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BDC60C(uint64_t a1)
{
  v2 = sub_1E5BDC898();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BDC648(uint64_t a1)
{
  v2 = sub_1E5BDC8EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BDC684(uint64_t a1)
{
  v2 = sub_1E5BDC8EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DynamicLibraryButtonAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0409E8, &qword_1E5C05230);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0409F0, &qword_1E5C05238);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BDC898();
  sub_1E5BF7524();
  sub_1E5BDC8EC();
  sub_1E5BF7394();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1E5BDC898()
{
  result = qword_1ED0409F8;
  if (!qword_1ED0409F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0409F8);
  }

  return result;
}

unint64_t sub_1E5BDC8EC()
{
  result = qword_1ED040A00;
  if (!qword_1ED040A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040A00);
  }

  return result;
}

uint64_t DynamicLibraryButtonAction.hashValue.getter()
{
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](0);
  return sub_1E5BF7504();
}

uint64_t DynamicLibraryButtonAction.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040A08, &qword_1E5C05240);
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040A10, &unk_1E5C05248);
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BDC898();
  sub_1E5BF7514();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_1E5BF7374();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if ((sub_1E5B7FB14() & 1) != 0 || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_1E5BF7284();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770);
    *v16 = &type metadata for DynamicLibraryButtonAction;
    sub_1E5BF72D4();
    sub_1E5BF7274();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6AF8], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_1E5BDC8EC();
  sub_1E5BF72C4();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_1E5BDCD10(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0409E8, &qword_1E5C05230);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0409F0, &qword_1E5C05238);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BDC898();
  sub_1E5BF7524();
  sub_1E5BDC8EC();
  sub_1E5BF7394();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1E5BDCEEC()
{
  result = qword_1ED040A18;
  if (!qword_1ED040A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040A18);
  }

  return result;
}

unint64_t sub_1E5BDCF74()
{
  result = qword_1ED040A20;
  if (!qword_1ED040A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040A20);
  }

  return result;
}

unint64_t sub_1E5BDCFCC()
{
  result = qword_1ED040A28;
  if (!qword_1ED040A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040A28);
  }

  return result;
}

unint64_t sub_1E5BDD024()
{
  result = qword_1ED040A30;
  if (!qword_1ED040A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040A30);
  }

  return result;
}

unint64_t sub_1E5BDD07C()
{
  result = qword_1ED040A38;
  if (!qword_1ED040A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040A38);
  }

  return result;
}

unint64_t sub_1E5BDD0D4()
{
  result = qword_1ED040A40;
  if (!qword_1ED040A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040A40);
  }

  return result;
}

uint64_t RemoveLibraryItemEnvironment.init(resolveBookmark:resolveDownloadStatus:requestRemoveBookmark:cancelDownload:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[4] = a5;
  a9[5] = a6;
  a9[2] = a3;
  a9[3] = a4;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_1E5BDD13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t HorizontalOverflowLayout.init(limit:horizontalSpacing:verticalSpacing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  return result;
}

double HorizontalOverflowLayout.sizeThatFits(proposal:subviews:cache:)(char *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v63) = a2;
  v61 = a1;
  v64 = sub_1E5BF66B4();
  v57 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v53 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040898, &qword_1E5C055A0);
  MEMORY[0x1EEE9AC00](v60);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  v16 = sub_1E5BF66C4();
  v62 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v53 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v53 - v23;
  v25 = *v5;
  v26 = *(v5 + 1);
  v27 = v5[2];
  if (LOBYTE(v63))
  {
    v28 = 10.0;
  }

  else
  {
    v28 = *&v61;
  }

  v66 = *v5;
  v67 = v26;
  v68 = v27;
  sub_1E5BDD850(a5);
  v66 = v25;
  v67 = v26;
  v68 = v27;
  v61 = v21;
  sub_1E5BDD9CC(a5, v21);
  v29 = *(v62 + 16);
  v59 = v24;
  v55 = v62 + 16;
  v54 = v29;
  v29(v18, v24, v16);
  v30 = sub_1E5BDA7A4(&qword_1EE2C63C0, MEMORY[0x1E697E3D0]);
  v56 = v18;
  v53 = v30;
  sub_1E5BF7004();
  v31 = *(v60 + 36);
  sub_1E5BDA7A4(&qword_1EE2C63B8, MEMORY[0x1E697E3D8]);
  sub_1E5BF7144();
  v32 = 0.0;
  if (*&v15[v31] != *&v66)
  {
    v33 = (v57 + 16);
    v63 = v28;
    v34 = (v57 + 8);
    do
    {
      v35 = sub_1E5BF7194();
      v36 = v64;
      (*v33)(v10);
      v35(&v66, 0);
      sub_1E5BF7154();
      LOBYTE(v66) = 0;
      LOBYTE(v65) = 1;
      sub_1E5BF6694();
      v38 = v37;
      (*v34)(v10, v36);
      if (v32 <= v38)
      {
        v32 = v38;
      }

      sub_1E5BF7144();
    }

    while (*&v15[v31] != *&v66);
  }

  sub_1E5B5F804(v15, &qword_1ED040898, &qword_1E5C055A0);
  v54(v56, v61, v16);
  sub_1E5BF7004();
  v39 = *(v60 + 36);
  sub_1E5BF7144();
  v40 = v58;
  if (*&v12[v39] != *&v66)
  {
    v41 = (v57 + 16);
    v42 = (v57 + 8);
    v43 = 0.0;
    v44 = v64;
    do
    {
      v45 = sub_1E5BF7194();
      (*v41)(v40);
      v45(&v66, 0);
      sub_1E5BF7154();
      LOBYTE(v66) = 0;
      LOBYTE(v65) = 1;
      sub_1E5BF6694();
      v47 = v46;
      (*v42)(v40, v44);
      v43 = v43 + v27 + v47;
      sub_1E5BF7144();
    }

    while (*&v12[v39] != *&v66);
  }

  sub_1E5B5F804(v12, &qword_1ED040898, &qword_1E5C055A0);
  v48 = v59;
  sub_1E5BF7104();
  sub_1E5BF7144();
  v49 = sub_1E5BF7134();
  v50 = v61;
  if (v49 > 0)
  {
    sub_1E5BF7104();
    sub_1E5BF7144();
    sub_1E5BF7134();
  }

  sub_1E5BF7104();
  sub_1E5BF7144();
  sub_1E5BF7134();
  v51 = *(v62 + 8);
  v51(v50, v16);
  v51(v48, v16);
  return v28;
}

uint64_t sub_1E5BDD850(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E5BF66C4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*v2 < 1)
  {
    (*(v5 + 16))(v8, a1, v4, v6);
    v11 = 0;
  }

  else
  {
    sub_1E5BDA7A4(&qword_1EE2C63B8, MEMORY[0x1E697E3D8]);
    sub_1E5BF7104();
    sub_1E5BF7144();
    v10 = sub_1E5BF7134();
    (*(v5 + 16))(v8, a1, v4);
    if (v10 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  return sub_1E5BDDD74(v11);
}

void *sub_1E5BDD9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  if (*v3 < 1)
  {
    v9 = sub_1E5BF66C4();
    v10 = *(*(v9 - 8) + 16);

    return v10(a2, a1, v9);
  }

  else
  {
    v7 = sub_1E5BF66C4();
    sub_1E5BDA7A4(&qword_1EE2C63B8, MEMORY[0x1E697E3D8]);
    sub_1E5BF7104();
    sub_1E5BF7144();
    if (sub_1E5BF7134() >= v6)
    {
      result = sub_1E5BF7144();
      if (v11 < v6)
      {
        __break(1u);
      }

      else
      {
        return sub_1E5BF7184();
      }
    }

    else
    {
      return (*(*(v7 - 8) + 16))(a2, a1, v7);
    }
  }

  return result;
}

uint64_t sub_1E5BDDB60(uint64_t a1)
{
  v3 = sub_1E5BF66C4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (*v1 < 1)
  {
    sub_1E5BDA7A4(&qword_1EE2C63B8, MEMORY[0x1E697E3D8]);
    sub_1E5BF7104();
    sub_1E5BF7144();
    return sub_1E5BF7134();
  }

  else
  {
    v10 = *(v1 + 8);
    sub_1E5BDA7A4(&qword_1EE2C63B8, MEMORY[0x1E697E3D8]);
    sub_1E5BF7104();
    sub_1E5BF7144();
    if (sub_1E5BF7134() >= v7)
    {
      v11 = v7;
      v12 = v10;
      sub_1E5BDD9CC(a1, v6);
      sub_1E5BF7104();
      sub_1E5BF7144();
      v9 = sub_1E5BF7134();
      (*(v4 + 8))(v6, v3);
      result = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1E5BDDD74(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = sub_1E5BF66C4();
    sub_1E5BDA7A4(&qword_1EE2C63B8, MEMORY[0x1E697E3D8]);
    sub_1E5BF7104();
    sub_1E5BF7144();
    sub_1E5BF7124();
    if (v4)
    {
      sub_1E5BF7144();
    }

    else
    {
      v6 = v3;
    }

    result = sub_1E5BF7104();
    if (v6 >= v5)
    {
      sub_1E5BF7184();
      return (*(*(v2 - 8) + 8))(v1, v2);
    }
  }

  __break(1u);
  return result;
}

void (*sub_1E5BDDECC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1E5BF65A4();
  return sub_1E5BD9848;
}

void sub_1E5BDDF54(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v102 = sub_1E5BF66B4();
  v88 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v98 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v99 = (&v77 - v13);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040880, &unk_1E5C056B0);
  MEMORY[0x1EEE9AC00](v101);
  v78 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v77 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040888, &qword_1E5C04BB8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v77 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040890, &unk_1E5C056C0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v94 = &v77 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v92 = &v77 - v30;
  v31 = sub_1E5BF66C4();
  v91 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v93 = &v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v77 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v39 = *(v5 + 8);
  v38 = *(v5 + 16);
  v104 = *v5;
  v37 = v104;
  v105 = v39;
  v106 = v38;
  v100 = &v77 - v40;
  sub_1E5BDD850(a1);
  v104 = v37;
  v105 = v39;
  v106 = v38;
  v90 = v35;
  sub_1E5BDD9CC(a1, v35);
  v104 = v37;
  v105 = v39;
  v106 = v38;
  v41 = sub_1E5BDDB60(a1);
  v107.origin.x = a2;
  v107.origin.y = a3;
  v107.size.width = a4;
  v107.size.height = a5;
  Height = CGRectGetHeight(v107);
  if (__OFSUB__(v41, 1))
  {
    goto LABEL_18;
  }

  v43 = Height;
  v87 = v20;
  v108.origin.x = a2;
  v108.origin.y = a3;
  v108.size.width = a4;
  v108.size.height = a5;
  Width = CGRectGetWidth(v108);
  if (__OFSUB__(v37, 1))
  {
LABEL_19:
    __break(1u);
    return;
  }

  v45 = Width;
  v46 = (v43 - v38 * (v41 - 1)) / v41;
  v47 = v91;
  v48 = *(v91 + 16);
  v49 = v92;
  v85 = v91 + 16;
  v84 = v48;
  v48(v92, v100, v31);
  v50 = v49;
  v51 = v94;
  sub_1E5BDA734(v50, v94);
  v52 = *(v47 + 32);
  v83 = v47 + 32;
  v82 = v52;
  v52(v93, v51, v31);
  v81 = sub_1E5BDA7A4(&qword_1EE2C63C0, MEMORY[0x1E697E3D0]);
  sub_1E5BF7004();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040898, &qword_1E5C055A0);
  v53 = *(v80 + 36);
  sub_1E5BDA7A4(&qword_1EE2C63B8, MEMORY[0x1E697E3D8]);
  sub_1E5BF7144();
  v54 = *&v23[v53] == v104;
  v79 = v18;
  v89 = v26;
  v86 = v46;
  if (!v54)
  {
    v56 = 0;
    v97 = (v88 + 16);
    v57 = (v88 + 32);
    v95 = v46;
    v96 = (v45 - v39 * (v37 - 1)) / v37;
    while (1)
    {
      v58 = sub_1E5BF7194();
      v59 = v17;
      v60 = v99;
      v61 = v102;
      (*v97)(v99);
      v58(&v104, 0);
      sub_1E5BF7154();
      v62 = *(v101 + 48);
      *v59 = v56;
      (*v57)(&v59[v62], v60, v61);
      v55 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      v109.origin.x = a2;
      v109.origin.y = a3;
      v109.size.width = a4;
      v109.size.height = a5;
      CGRectGetMinX(v109);
      v110.origin.x = a2;
      v110.origin.y = a3;
      v110.size.width = a4;
      v110.size.height = a5;
      CGRectGetMinY(v110);
      sub_1E5BF6DC4();
      LOBYTE(v104) = 0;
      LOBYTE(v103) = 0;
      sub_1E5BF66A4();
      sub_1E5B5F804(v59, &qword_1ED040880, &unk_1E5C056B0);
      sub_1E5BF7144();
      ++v56;
      v17 = v59;
      if (*&v23[v53] == v104)
      {
        v18 = v79;
        v26 = v89;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v55 = 0;
LABEL_9:
  v63 = *(v18 + 36);
  sub_1E5B5F804(v92, &qword_1ED040890, &unk_1E5C056C0);
  *&v23[v63] = v55;
  sub_1E5B5F804(v23, &qword_1ED040888, &qword_1E5C04BB8);
  v64 = v90;
  v84(v26, v90, v31);
  v65 = v94;
  sub_1E5BDA734(v26, v94);
  v82(v93, v65, v31);
  v66 = v87;
  sub_1E5BF7004();
  v67 = *(v80 + 36);
  sub_1E5BF7144();
  if (*(v66 + v67) != v104)
  {
    v69 = 0;
    v99 = (v88 + 16);
    v97 = (v88 + 32);
    v96 = v86;
    v70 = v78;
    while (1)
    {
      v71 = sub_1E5BF7194();
      v72 = v98;
      v73 = v102;
      (*v99)(v98);
      v71(&v104, 0);
      sub_1E5BF7154();
      v74 = *(v101 + 48);
      *v70 = v69;
      (*v97)(&v70[v74], v72, v73);
      v68 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      v111.origin.x = a2;
      v111.origin.y = a3;
      v111.size.width = a4;
      v111.size.height = a5;
      CGRectGetMinX(v111);
      v112.origin.x = a2;
      v112.origin.y = a3;
      v112.size.width = a4;
      v112.size.height = a5;
      CGRectGetMinY(v112);
      sub_1E5BF7104();
      sub_1E5BF7144();
      sub_1E5BF7134();
      v113.origin.x = a2;
      v113.origin.y = a3;
      v113.size.width = a4;
      v113.size.height = a5;
      CGRectGetWidth(v113);
      sub_1E5BF6DC4();
      LOBYTE(v104) = 0;
      LOBYTE(v103) = 0;
      sub_1E5BF66A4();
      sub_1E5B5F804(v70, &qword_1ED040880, &unk_1E5C056B0);
      sub_1E5BF7144();
      ++v69;
      if (*(v66 + v67) == v104)
      {
        v18 = v79;
        v64 = v90;
        goto LABEL_15;
      }
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v68 = 0;
LABEL_15:
  v75 = *(v18 + 36);
  sub_1E5B5F804(v89, &qword_1ED040890, &unk_1E5C056C0);
  v76 = *(v91 + 8);
  v76(v64, v31);
  *(v66 + v75) = v68;
  sub_1E5B5F804(v66, &qword_1ED040888, &qword_1E5C04BB8);
  v76(v100, v31);
}

unint64_t sub_1E5BDE9C8()
{
  result = qword_1EE2C6D38[0];
  if (!qword_1EE2C6D38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2C6D38);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for HorizontalOverflowLayout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HorizontalOverflowLayout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1E5BDEA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DynamicLibraryButtonFeature(255, *(a1 + 16), *(a1 + 56), a4);
  swift_getWitnessTable();
  sub_1E5BF6E64();
  swift_getWitnessTable();

  return sub_1E5BF6614();
}

uint64_t sub_1E5BDEB3C(uint64_t a1)
{
  swift_getFunctionTypeMetadata0();
  sub_1E5BF6544();
  sub_1E5BF6534();
  return v2;
}

uint64_t sub_1E5BDEB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  *(v19 + 32) = a5;
  *(v19 + 40) = a6;
  *(v19 + 48) = a7;
  *(v19 + 56) = a8;
  *(v19 + 64) = a9;
  *(v19 + 80) = a10;
  *(v19 + 88) = a11;
  *(v19 + 96) = a1;
  *(v19 + 104) = a2;
  swift_getFunctionTypeMetadata1();
  return sub_1E5BF6524();
}

uint64_t (*sub_1E5BDEC6C(uint64_t a1))(char a1)
{
  v2 = *(a1 + 32);
  swift_getFunctionTypeMetadata1();
  sub_1E5BF6544();
  sub_1E5BF6534();
  v3 = swift_allocObject();
  *(v3 + 16) = *(a1 + 16);
  *(v3 + 32) = v2;
  *(v3 + 40) = *(a1 + 40);
  *(v3 + 56) = *(a1 + 56);
  *(v3 + 72) = *(a1 + 72);
  *(v3 + 88) = *(a1 + 88);
  *(v3 + 96) = v5;
  return sub_1E5BE1384;
}

uint64_t sub_1E5BDED34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  *(v19 + 32) = a5;
  *(v19 + 40) = a6;
  *(v19 + 48) = a7;
  *(v19 + 56) = a8;
  *(v19 + 64) = a9;
  *(v19 + 80) = a10;
  *(v19 + 88) = a11;
  *(v19 + 96) = a1;
  *(v19 + 104) = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040A48, &qword_1E5C056D0);
  swift_getFunctionTypeMetadata1();
  return sub_1E5BF6524();
}

uint64_t (*sub_1E5BDEE24(uint64_t a1))(uint64_t a1)
{
  v2 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040A48, &qword_1E5C056D0);
  swift_getFunctionTypeMetadata1();
  sub_1E5BF6544();
  sub_1E5BF6534();
  v3 = swift_allocObject();
  *(v3 + 16) = *(a1 + 16);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 40) = v2;
  v4 = *(a1 + 64);
  *(v3 + 48) = *(a1 + 48);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a1 + 80);
  *(v3 + 96) = v6;
  return sub_1E5BE13BC;
}

uint64_t sub_1E5BDEEEC(uint64_t a1)
{
  swift_getFunctionTypeMetadata0();
  sub_1E5BF6544();
  sub_1E5BF6534();
  return v2;
}

uint64_t DynamicLibraryButton.init(store:bookmarkViewBuilder:bookmarkedViewBuilder:downloadingViewBuilder:downloadedViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, uint64_t a19, uint64_t a20)
{
  v21 = swift_allocObject();
  *(v21 + 16) = a12;
  *(v21 + 24) = a13;
  *(v21 + 32) = a14;
  *(v21 + 40) = a15;
  *(v21 + 48) = a16;
  *(v21 + 56) = a17;
  *(v21 + 64) = a18;
  *(v21 + 80) = a19;
  *(v21 + 88) = a20;
  *(v21 + 96) = a1;
  *(v21 + 104) = a2;
  type metadata accessor for DynamicLibraryButtonFeature(255, a12, a17, v22);

  swift_getWitnessTable();
  sub_1E5BF6E64();
  swift_getWitnessTable();
  *a9 = sub_1E5BF6604();
  *(a9 + 8) = v23;
  *(a9 + 16) = v24 & 1;
  v34 = a12;
  v35 = a13;
  v36 = a14;
  v37 = a15;
  v38 = a16;
  v39 = a17;
  v40 = a18;
  v41 = a19;
  v42 = a20;
  type metadata accessor for DynamicLibraryButton(0, &v34);

  v34 = a3;
  v35 = v25;
  swift_getFunctionTypeMetadata0();
  sub_1E5BF6524();

  sub_1E5BDEB8C(a5, a6, a12, a13, a14, a15, a16, a17, a18, a19, a20);

  sub_1E5BDED34(a7, a8, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  v34 = a10;
  v35 = a11;
  swift_getFunctionTypeMetadata0();
  sub_1E5BF6524();
}

uint64_t DynamicLibraryButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v42 = *(a1 - 8);
  v49 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v44 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(v5 + 40);
  v40 = &v66;
  v52 = *(v5 + 24);
  v51 = *(v5 + 32);
  sub_1E5BF6874();
  v35 = *(a1 + 48);
  v6 = v35;
  sub_1E5BF6874();
  v37 = sub_1E5BF6874();
  v38 = sub_1E5BF6874();
  sub_1E5BF6874();
  v41 = sub_1E5BF6BD4();
  v46 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v34 = &v33 - v7;
  v45 = sub_1E5BF66E4();
  v48 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v39 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v43 = &v33 - v11;
  v36 = *(a1 + 16);
  v10.i64[0] = v36;
  v12 = vzip1q_s64(v10, v52);
  v54 = v51;
  v53 = v12;
  v12.i64[0] = v6;
  v14 = *(a1 + 72);
  v13 = *(a1 + 80);
  v15 = *(a1 + 88);
  v57 = v13;
  v58 = v15;
  v59 = v2;
  v71 = v14;
  v72 = v13;
  v51 = *(a1 + 56);
  v16 = *(a1 + 64);
  v55 = vzip1q_s64(v12, v51);
  v56 = v16;
  WitnessTable = swift_getWitnessTable();
  v70 = v15;
  v17 = swift_getWitnessTable();
  v67 = v14;
  v68 = v17;
  v65 = swift_getWitnessTable();
  *v40 = v51.i64[1];
  v18 = swift_getWitnessTable();
  v63 = v51.i64[1];
  v64 = v18;
  v19 = swift_getWitnessTable();
  sub_1E5BF6BC4();
  v20 = v42;
  v21 = v44;
  (*(v42 + 16))(v44, v2, a1);
  v22 = (*(v20 + 80) + 96) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v36;
  *(v23 + 24) = v52;
  v24 = v35;
  *(v23 + 40) = v47;
  *(v23 + 48) = v24;
  *(v23 + 56) = v51;
  *(v23 + 72) = v14;
  *(v23 + 80) = v13;
  *(v23 + 88) = v15;
  (*(v20 + 32))(v23 + v22, v21, a1);
  v62 = v19;
  v25 = v41;
  v26 = swift_getWitnessTable();
  v27 = v39;
  v28 = v34;
  sub_1E5BF6B44();

  (*(v46 + 8))(v28, v25);
  v60 = v26;
  v61 = MEMORY[0x1E69805D0];
  v29 = v45;
  swift_getWitnessTable();
  v30 = v43;
  sub_1E5B64D48();
  v31 = *(v48 + 8);
  v31(v27, v29);
  sub_1E5B64D48();
  return (v31)(v30, v29);
}

uint64_t sub_1E5BDF82C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, void *a10, void *a11, void *a12)
{
  v266 = a8;
  v267 = a1;
  v263 = a7;
  v261 = a9;
  v271 = a12;
  v226 = *(a6 - 1);
  v272 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v225 = &v221 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v224 = &v221 - v19;
  v230 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v229 = &v221 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v228 = &v221 - v24;
  v264 = v25;
  v26 = sub_1E5BF6874();
  v232 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v231 = &v221 - v27;
  v268 = v28;
  v29 = sub_1E5BF6874();
  v233 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v234 = &v221 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v240 = &v221 - v32;
  v239 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v33);
  v223 = &v221 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v227 = &v221 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v238 = &v221 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v237 = &v221 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v246 = &v221 - v42;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  MEMORY[0x1EEE9AC00](v241);
  v242 = &v221 - v43;
  v260 = v29;
  v44 = sub_1E5BF6874();
  v245 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v244 = &v221 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v243 = &v221 - v47;
  v259 = v48;
  v49 = sub_1E5BF6874();
  v249 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v248 = &v221 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v251 = &v221 - v52;
  v253 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v53);
  v252 = &v221 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v265 = &v221 - v56;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  MEMORY[0x1EEE9AC00](v262);
  v222 = &v221 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v221 = &v221 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v236 = &v221 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v235 = &v221 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v254 = &v221 - v65;
  v269 = a3;
  v258 = v49;
  v66 = sub_1E5BF6874();
  v256 = *(v66 - 8);
  v257 = v66;
  MEMORY[0x1EEE9AC00](v66);
  v255 = &v221 - v67;
  v335[0] = a2;
  v335[1] = a3;
  v335[2] = a4;
  v335[3] = a5;
  v68 = a6;
  v69 = v263;
  v335[4] = a6;
  v335[5] = v263;
  v70 = v266;
  v71 = v271;
  v335[6] = v266;
  v335[7] = v272;
  v335[8] = a11;
  v335[9] = v271;
  v72 = type metadata accessor for DynamicLibraryButton(0, v335);
  sub_1E5BDEA8C(v72, v73, v74, v75);
  v247 = a2;
  v273 = a2;
  v274 = v269;
  v250 = a4;
  v275 = a4;
  v276 = v264;
  v76 = v68;
  v277 = v68;
  v278 = v69;
  v279 = v70;
  v280 = v272;
  v270 = a11;
  v77 = v71;
  v78 = v254;
  v281 = a11;
  v282 = v77;
  swift_getKeyPath();
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      if ((*v78 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v83 = *v78;
      v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F0, &qword_1E5BF7D38) + 48);
      v85 = sub_1E5BF6464();
      (*(*(v85 - 8) + 8))(&v78[v84], v85);
      if (v83 != 1)
      {
LABEL_5:
        v86 = sub_1E5BDEB3C(v72);
        v87 = v252;
        v86();

        v88 = v269;
        v89 = v70;
        sub_1E5B64D48();
        v90 = *(v253 + 8);
        v90(v87, v88);
        sub_1E5B64D48();
        v91 = v272;
        v333 = v272;
        v334 = v270;
        WitnessTable = swift_getWitnessTable();
        v332 = v271;
        v92 = swift_getWitnessTable();
        v329 = v91;
        v330 = v92;
        v93 = v259;
        v94 = swift_getWitnessTable();
        sub_1E5BE15D0(v87, v93, v88, v94, v89);
        v90(v87, v88);
        v90(v265, v88);
LABEL_38:
        v209 = v258;
        v127 = v255;
        v210 = v272;
        v327 = v272;
        v328 = v270;
        v325 = swift_getWitnessTable();
        v326 = v271;
        v211 = swift_getWitnessTable();
        v323 = v210;
        v324 = v211;
        v321 = swift_getWitnessTable();
        v124 = v266;
        v322 = v266;
        v212 = swift_getWitnessTable();
        v213 = v248;
        v214 = v251;
        sub_1E5B64D48();
        sub_1E5BE15D0(v213, v269, v209, v124, v212);
        v215 = *(v249 + 8);
        v215(v213, v209);
        v215(v214, v209);
        goto LABEL_39;
      }

LABEL_7:
      v95 = sub_1E5BDEA8C(v72, v80, v81, v82);
      MEMORY[0x1EEE9AC00](v95);
      v96 = v269;
      *(&v221 - 10) = v247;
      *(&v221 - 9) = v96;
      v97 = v263;
      v98 = v264;
      *(&v221 - 8) = v250;
      *(&v221 - 7) = v98;
      v265 = v76;
      *(&v221 - 6) = v76;
      *(&v221 - 5) = v97;
      v100 = v271;
      v99 = v272;
      *(&v221 - 4) = v70;
      *(&v221 - 3) = v99;
      *(&v221 - 2) = v270;
      *(&v221 - 1) = v100;
      swift_getKeyPath();
      v101 = v242;
      sub_1E5BF6E34();

      v102 = swift_getEnumCaseMultiPayload();
      if (v102 <= 2)
      {
        if (!v102)
        {
          v103 = *v101 | (*(v101 + 4) << 32);
          if ((*(v101 + 5) & 1) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_15;
        }

        if (v102 == 1)
        {
          v103 = *v101 | (*(v101 + 4) << 32);
          v104 = *(v101 + 5);
          v105 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F8, &unk_1E5BF91A0) + 48);
          v106 = sub_1E5BF6464();
          (*(*(v106 - 8) + 8))(v101 + v105, v106);
          if (v104 != 1)
          {
LABEL_11:
            sub_1E5BDEE24(v72);
            LOBYTE(v335[0]) = BYTE4(v103) & 1;
            v108 = *(v107 + 96);
            LODWORD(v335[0]) = v103;
            BYTE4(v335[0]) = BYTE4(v103) & 1;
            v109 = v229;
            v108(v335);

            v110 = v228;
            v111 = v264;
            v112 = v270;
            sub_1E5B64D48();
            v113 = *(v230 + 8);
            v113(v109, v111);
            sub_1E5B64D48();
            v114 = v231;
            v115 = v272;
            sub_1E5BE15D0(v109, v250, v111, v272, v112);
            v297 = v115;
            v298 = v112;
            v116 = v268;
            v117 = swift_getWitnessTable();
            sub_1E5BE14D8(v114, v116, v265, v117, v100);
            (*(v232 + 8))(v114, v116);
            v113(v109, v111);
            v113(v110, v111);
LABEL_35:
            v136 = v233;
            goto LABEL_36;
          }

LABEL_15:
          if (v103)
          {
            v128 = sub_1E5BDEEEC(v72);
            v129 = v225;
            v128();

            v130 = v224;
            v131 = v265;
            sub_1E5B64D48();
            v132 = *(v226 + 8);
            v132(v129, v131);
            sub_1E5B64D48();
            v309 = v272;
            v133 = v270;
            v310 = v270;
            v134 = v268;
            v135 = swift_getWitnessTable();
            sub_1E5BE15D0(v129, v134, v131, v135, v100);
            v132(v129, v131);
            v132(v130, v131);
            v112 = v133;
            v136 = v233;
LABEL_36:
            v196 = v272;
            v307 = v272;
            v308 = v112;
            v305 = swift_getWitnessTable();
            v306 = v100;
            v197 = v260;
            v198 = swift_getWitnessTable();
            v199 = v234;
            v200 = v240;
            sub_1E5B64D48();
            v166 = v243;
            sub_1E5BE15D0(v199, v250, v197, v196, v198);
            v201 = *(v136 + 8);
            v202 = v199;
            v167 = v270;
            v201(v202, v197);
            v201(v200, v197);
            v168 = v269;
LABEL_37:
            v203 = v272;
            v303 = v272;
            v304 = v167;
            v301 = swift_getWitnessTable();
            v302 = v100;
            v204 = swift_getWitnessTable();
            v299 = v203;
            v300 = v204;
            v205 = v259;
            v206 = swift_getWitnessTable();
            v207 = v244;
            sub_1E5B64D48();
            sub_1E5BE14D8(v207, v205, v168, v206, v266);
            v208 = *(v245 + 8);
            v208(v207, v205);
            v208(v166, v205);
            goto LABEL_38;
          }

          sub_1E5BDEC6C(v72);
          v170 = v169;
          v173 = sub_1E5BDEA8C(v72, v169, v171, v172);
          MEMORY[0x1EEE9AC00](v173);
          v174 = v269;
          *(&v221 - 10) = v247;
          *(&v221 - 9) = v174;
          v176 = v264;
          v175 = v265;
          *(&v221 - 8) = v250;
          *(&v221 - 7) = v176;
          *(&v221 - 6) = v175;
          v177 = v266;
          *(&v221 - 5) = v263;
          *(&v221 - 4) = v177;
          v178 = v270;
          *(&v221 - 3) = v272;
          *(&v221 - 2) = v178;
          *(&v221 - 1) = v100;
          swift_getKeyPath();
          v179 = v221;
          sub_1E5BF6E34();

          v180 = v222;
          sub_1E5BE1314(v179, v222);
          v181 = swift_getEnumCaseMultiPayload();
          if (v181 <= 2)
          {
            if (!v181)
            {
              v183 = *v180;
              goto LABEL_34;
            }

            if (v181 == 1)
            {
              v182 = v180;
              v183 = *v180;
              v184 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F0, &qword_1E5BF7D38) + 48);
              v185 = sub_1E5BF6464();
              (*(*(v185 - 8) + 8))(&v182[v184], v185);
LABEL_34:
              v186 = *(v170 + 96);
              LOBYTE(v335[0]) = v183;
              v187 = v223;
              v186(v335);

              v188 = v250;
              v189 = v272;
              sub_1E5B64D48();
              v190 = *(v239 + 8);
              v190(v187, v188);
              v191 = v238;
              sub_1E5B64D48();
              v192 = v231;
              v193 = v270;
              sub_1E5BE14D8(v191, v188, v264, v189, v270);
              v295 = v189;
              v296 = v193;
              v194 = v268;
              v195 = swift_getWitnessTable();
              v100 = v271;
              sub_1E5BE14D8(v192, v194, v265, v195, v271);
              (*(v232 + 8))(v192, v194);
              v190(v191, v188);
              v190(v227, v188);
              v112 = v193;
              goto LABEL_35;
            }

            sub_1E5B5F804(v180, &qword_1ED03E238, &unk_1E5BF8A10);
          }

          v183 = 0;
          goto LABEL_34;
        }

        sub_1E5B5F804(v101, &qword_1ED03E260, &qword_1E5BF9190);
      }

      sub_1E5BDEC6C(v72);
      v138 = v137;
      v141 = sub_1E5BDEA8C(v72, v137, v139, v140);
      MEMORY[0x1EEE9AC00](v141);
      v142 = v269;
      *(&v221 - 10) = v247;
      *(&v221 - 9) = v142;
      v144 = v264;
      v143 = v265;
      *(&v221 - 8) = v250;
      *(&v221 - 7) = v144;
      *(&v221 - 6) = v143;
      v145 = v266;
      *(&v221 - 5) = v263;
      *(&v221 - 4) = v145;
      v146 = v270;
      *(&v221 - 3) = v272;
      *(&v221 - 2) = v146;
      *(&v221 - 1) = v100;
      swift_getKeyPath();
      v147 = v235;
      sub_1E5BF6E34();

      v148 = v236;
      sub_1E5BE1314(v147, v236);
      v149 = swift_getEnumCaseMultiPayload();
      if (v149 > 2)
      {
        v153 = 0;
        v156 = v260;
        v152 = v238;
        v157 = v239;
      }

      else
      {
        v150 = v260;
        v152 = v238;
        v151 = v239;
        if (v149)
        {
          if (v149 == 1)
          {
            v153 = *v148;
            v154 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F0, &qword_1E5BF7D38) + 48);
            v155 = sub_1E5BF6464();
            (*(*(v155 - 8) + 8))(&v148[v154], v155);
          }

          else
          {
            sub_1E5B5F804(v148, &qword_1ED03E238, &unk_1E5BF8A10);
            v153 = 0;
          }
        }

        else
        {
          v153 = *v148;
        }

        v156 = v150;
        v157 = v151;
      }

      v158 = *(v138 + 96);
      LOBYTE(v335[0]) = v153;
      v159 = v237;
      v158(v335);

      v160 = v250;
      v161 = v272;
      sub_1E5B64D48();
      v162 = *(v157 + 8);
      v162(v159, v160);
      sub_1E5B64D48();
      v293 = v161;
      v163 = v270;
      v294 = v270;
      v291 = swift_getWitnessTable();
      v100 = v271;
      v292 = v271;
      v164 = swift_getWitnessTable();
      v165 = v156;
      v166 = v243;
      sub_1E5BE14D8(v152, v160, v165, v161, v164);
      v167 = v163;
      v162(v152, v160);
      v162(v246, v160);
      v168 = v269;
      goto LABEL_37;
    }

    sub_1E5B5F804(v78, &qword_1ED03E238, &unk_1E5BF8A10);
  }

  v118 = sub_1E5BDEB3C(v72);
  v119 = v252;
  v118();

  v120 = v269;
  sub_1E5B64D48();
  v121 = *(v253 + 8);
  v121(v119, v120);
  sub_1E5B64D48();
  v122 = v272;
  v289 = v272;
  v290 = v270;
  v287 = swift_getWitnessTable();
  v288 = v271;
  v123 = swift_getWitnessTable();
  v285 = v122;
  v124 = v70;
  v286 = v123;
  v283 = swift_getWitnessTable();
  v284 = v70;
  v125 = v258;
  v126 = swift_getWitnessTable();
  v127 = v255;
  sub_1E5BE14D8(v119, v120, v125, v124, v126);
  v121(v119, v120);
  v121(v265, v120);
LABEL_39:
  v216 = v272;
  v319 = v272;
  v320 = v270;
  v317 = swift_getWitnessTable();
  v318 = v271;
  v217 = swift_getWitnessTable();
  v315 = v216;
  v316 = v217;
  v313 = swift_getWitnessTable();
  v314 = v124;
  v218 = swift_getWitnessTable();
  v311 = v124;
  v312 = v218;
  v219 = v257;
  swift_getWitnessTable();
  sub_1E5B64D48();
  return (*(v256 + 8))(v127, v219);
}

uint64_t sub_1E5BE0FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v15[6] = a8;
  v16 = a9;
  v17 = a10;
  v10 = type metadata accessor for DynamicLibraryButton(0, v15);
  sub_1E5BDEA8C(v10, v11, v12, v13);
  sub_1E5BF6E44();
}

uint64_t sub_1E5BE101C()
{
  v1 = v0[3];
  v14[0] = v0[2];
  v13 = v14[0];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v9 = v0[10];
  v8 = v0[11];
  v14[1] = v1;
  v14[2] = v2;
  v14[3] = v3;
  v14[4] = v4;
  v14[5] = v5;
  v14[6] = v6;
  v14[7] = v7;
  v14[8] = v9;
  v14[9] = v8;
  v10 = *(type metadata accessor for DynamicLibraryButton(0, v14) - 8);
  *(&v12 + 1) = v9;
  *&v12 = v7;
  return sub_1E5BE0FB4(v0 + ((*(v10 + 80) + 96) & ~*(v10 + 80)), v13, v1, v2, v3, v4, v5, v6, v12, v8);
}

uint64_t sub_1E5BE114C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DynamicLibraryButtonFeature(255, a1[2], a1[7], a4);
  swift_getWitnessTable();
  sub_1E5BF6E64();
  swift_getWitnessTable();
  result = sub_1E5BF6624();
  if (v5 <= 0x3F)
  {
    swift_getFunctionTypeMetadata0();
    result = sub_1E5BF6544();
    if (v6 <= 0x3F)
    {
      swift_getFunctionTypeMetadata1();
      result = sub_1E5BF6544();
      if (v7 <= 0x3F)
      {
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040A48, &qword_1E5C056D0);
        swift_getFunctionTypeMetadata1();
        result = sub_1E5BF6544();
        if (v8 <= 0x3F)
        {
          swift_getFunctionTypeMetadata0();
          result = sub_1E5BF6544();
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E5BE1314(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5BE1384(char a1)
{
  v2 = *(v1 + 96);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1E5BE13BC(uint64_t a1)
{
  v2 = *(v1 + 96);
  v4 = a1;
  v5 = BYTE4(a1) & 1;
  return v2(&v4);
}

uint64_t DynamicLibraryButtonEnvironment.init(resolveBookmark:resolveDownloadStatus:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1E5BE1484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5BE14D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E5BF6854();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return sub_1E5BF6864();
}

uint64_t sub_1E5BE15D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E5BF6854();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return sub_1E5BF6864();
}

uint64_t sub_1E5BE16C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SharingButtonFeature(255, *(a1 + 16), *(a1 + 24), a4);
  swift_getWitnessTable();
  sub_1E5BF6E64();
  swift_getWitnessTable();

  return sub_1E5BF6614();
}

uint64_t ShareLinkPicker.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  type metadata accessor for SharingButtonFeature(255, a3, a4, v11);
  swift_getWitnessTable();
  sub_1E5BF6E64();
  swift_getWitnessTable();
  result = sub_1E5BF6604();
  *a5 = result;
  *(a5 + 8) = v13;
  *(a5 + 16) = v14 & 1;
  return result;
}

uint64_t ShareLinkPicker.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[0] = a1;
  v20[1] = a3;
  swift_getWitnessTable();
  v5 = sub_1E5BF6884();
  WitnessTable = swift_getWitnessTable();
  v28 = v5;
  v29 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_1E5BF6874();
  v7 = sub_1E5BF6BD4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - v12;
  v14 = *(v3 + 16);
  v15 = *v3;
  v21 = *(a2 + 16);
  v22 = v15;
  v23 = v14;
  v24 = v20[0];
  v28 = v5;
  v29 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = WitnessTable;
  v27 = OpaqueTypeConformance2;
  v17 = swift_getWitnessTable();
  sub_1E5BF6BC4();
  v25 = v17;
  swift_getWitnessTable();
  sub_1E5B64D48();
  v18 = *(v8 + 8);
  v18(v10, v7);
  sub_1E5B64D48();
  return (v18)(v13, v7);
}

uint64_t sub_1E5BE1AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v71 = a6;
  v70 = a5;
  v76 = a4;
  v79 = a3;
  v80 = a2;
  v78 = a7;
  v69 = sub_1E5BF6384();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ShareLinkPicker(255, a5, a6, v11);
  swift_getWitnessTable();
  v12 = sub_1E5BF6884();
  WitnessTable = swift_getWitnessTable();
  v88 = v12;
  v89 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v66 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v65 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v64 = &v61 - v17;
  v18 = swift_checkMetadataState();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v61 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040A50, &unk_1E5C06070);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v61 - v26;
  v62 = type metadata accessor for SharingDetail(0);
  MEMORY[0x1EEE9AC00](v62);
  v72 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = OpaqueTypeMetadata2;
  v29 = sub_1E5BF6874();
  v74 = *(v29 - 8);
  v75 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v73 = &v61 - v30;
  v63 = a1;
  v88 = a1;
  v89 = v80;
  v90 = v79 & 1;
  v31 = swift_checkMetadataState();
  sub_1E5BE16C8(v31, v32, v33, v34);
  v81 = v70;
  v82 = v71;
  swift_getKeyPath();
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1E5BE29EC(v27, v72);
    goto LABEL_6;
  }

  v36 = v72;
  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5B5F804(v27, &qword_1ED040A50, &unk_1E5C06070);
LABEL_8:
    sub_1E5B64D48();
    sub_1E5B64D48();
    v88 = v18;
    v89 = WitnessTable;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v55 = v73;
    sub_1E5BE14D8(v21, v18, v77, WitnessTable, OpaqueTypeConformance2);
    v57 = *(v19 + 8);
    v57(v21, v18);
    v57(v24, v18);
    goto LABEL_9;
  }

  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED040A58, &qword_1E5C05940) + 48);
  sub_1E5BE29EC(v27, v36);
  v38 = sub_1E5BF6464();
  (*(*(v38 - 8) + 8))(&v27[v37], v38);
LABEL_6:
  v42 = v77;
  v43 = v63;
  v44 = v80;
  v85 = v63;
  v86 = v80;
  v45 = v79 & 1;
  v87 = v79 & 1;
  sub_1E5BE16C8(v31, v39, v40, v41);
  v46 = swift_allocObject();
  *(v46 + 16) = v43;
  *(v46 + 24) = v44;
  *(v46 + 32) = v45;
  sub_1E5B5F5EC(v43, v44);
  sub_1E5BF6D34();
  v47 = v68;
  v48 = v72;
  v49 = v67;
  v50 = v69;
  (*(v68 + 16))(v67, v72 + *(v62 + 20), v69);
  sub_1E5BE2A5C(v48);
  v51 = v65;
  sub_1E5BF6A54();

  (*(v47 + 8))(v49, v50);
  v88 = v18;
  v89 = WitnessTable;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v64;
  sub_1E5B64D48();
  v54 = *(v66 + 8);
  v54(v51, v42);
  sub_1E5B64D48();
  v55 = v73;
  sub_1E5BE15D0(v51, v18, v42, WitnessTable, v52);
  v54(v51, v42);
  v54(v53, v42);
LABEL_9:
  v88 = v18;
  v89 = WitnessTable;
  v58 = swift_getOpaqueTypeConformance2();
  v83 = WitnessTable;
  v84 = v58;
  v59 = v75;
  swift_getWitnessTable();
  sub_1E5B64D48();
  return (*(v74 + 8))(v55, v59);
}

uint64_t sub_1E5BE2334@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, _BYTE *a5@<X8>)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v52 = a5;
  v5 = *a1;
  v6 = sub_1E5BF6494();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E790, &qword_1E5BF9150);
  MEMORY[0x1EEE9AC00](v49);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v43 - v20;
  v22 = *(v5 + *MEMORY[0x1E6999B70]);
  v23 = *(v22 + 16);
  v24 = *(v22 + 24);
  v53 = v23;
  v54 = v24;
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = (*(v11 + 48))(v21, 1, v10);
  if (result != 1)
  {
    sub_1E5B7AD6C(v21, v18);
    v55 = v46;
    v56 = v47;
    v57 = v48 & 1;
    v28 = type metadata accessor for ShareLinkPicker(0, v23, v24, v27);
    v32 = sub_1E5BE16C8(v28, v29, v30, v31);
    MEMORY[0x1EEE9AC00](v32);
    *(&v43 - 2) = v23;
    *(&v43 - 1) = v24;
    swift_getKeyPath();
    sub_1E5BF6E34();

    v34 = v50;
    v33 = v51;
    (*(v50 + 56))(v15, 0, 1, v51);
    v35 = *(v49 + 48);
    sub_1E5B7ADDC(v18, v9);
    sub_1E5B7ADDC(v15, &v9[v35]);
    v36 = *(v34 + 48);
    if (v36(v9, 1, v33) == 1)
    {
      sub_1E5B5F804(v15, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v18, &qword_1ED03E5E8, &unk_1E5BF9600);
      if (v36(&v9[v35], 1, v33) == 1)
      {
        result = sub_1E5B5F804(v9, &qword_1ED03E5E8, &unk_1E5BF9600);
        v37 = 1;
LABEL_10:
        v26 = v37 & 1;
        goto LABEL_11;
      }
    }

    else
    {
      v38 = v45;
      sub_1E5B7ADDC(v9, v45);
      if (v36(&v9[v35], 1, v33) != 1)
      {
        v39 = &v9[v35];
        v40 = v44;
        (*(v34 + 32))(v44, v39, v33);
        sub_1E5B7AE4C();
        v41 = v38;
        v37 = sub_1E5BF6F14();
        v42 = *(v34 + 8);
        v42(v40, v33);
        sub_1E5B5F804(v15, &qword_1ED03E5E8, &unk_1E5BF9600);
        sub_1E5B5F804(v18, &qword_1ED03E5E8, &unk_1E5BF9600);
        v42(v41, v33);
        result = sub_1E5B5F804(v9, &qword_1ED03E5E8, &unk_1E5BF9600);
        goto LABEL_10;
      }

      sub_1E5B5F804(v15, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v18, &qword_1ED03E5E8, &unk_1E5BF9600);
      (*(v34 + 8))(v38, v33);
    }

    result = sub_1E5B5F804(v9, &qword_1ED03E790, &qword_1E5BF9150);
    v37 = 0;
    goto LABEL_10;
  }

  v26 = 0;
LABEL_11:
  *v52 = v26;
  return result;
}

_BYTE *sub_1E5BE28C4@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

uint64_t View.sharingLinkPicker<A>(store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  ShareLinkPicker.init(store:)(a1, a2, a4, a6, &v17);
  v15 = v17;
  v16 = v18;
  v13 = type metadata accessor for ShareLinkPicker(0, a4, a6, v12);
  MEMORY[0x1E6937280](&v15, a3, v13, a5);
  return sub_1E5B5C0A8(v15, *(&v15 + 1));
}

uint64_t sub_1E5BE29EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharingDetail(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5BE2A5C(uint64_t a1)
{
  v2 = type metadata accessor for SharingDetail(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DynamicLibraryButtonState.init(identifier:locale:isSubscribed:bookmarkState:downloadState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a6 - 8) + 32))(a8, a1, a6);
  v16 = type metadata accessor for DynamicLibraryButtonState(0, a6, a7, v15);
  v17 = v16[9];
  v18 = sub_1E5BF64B4();
  (*(*(v18 - 8) + 32))(a8 + v17, a2, v18);
  sub_1E5B5F8D4(a3, a8 + v16[10], &qword_1ED03E238, &unk_1E5BF8A10);
  sub_1E5B5F8D4(a4, a8 + v16[11], &qword_1ED03E238, &unk_1E5BF8A10);
  return sub_1E5B5F8D4(a5, a8 + v16[12], &qword_1ED03E260, &qword_1E5BF9190);
}

uint64_t static DynamicLibraryButtonState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1E5BF6F14() & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for DynamicLibraryButtonState(0, a3, a4, v8);
  if ((MEMORY[0x1E6936BF0](a1 + *(v9 + 36), a2 + *(v9 + 36)) & 1) == 0 || (sub_1E5BF6DE4() & 1) == 0 || (sub_1E5BF6DE4() & 1) == 0)
  {
    return 0;
  }

  sub_1E5B695CC();

  return sub_1E5BF6DE4();
}

uint64_t sub_1E5BE2E10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7263736275537369 && a2 == 0xEC00000064656269 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xED00006574617453 || (sub_1E5BF7444() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xED00006574617453)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5BF7444();

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

uint64_t sub_1E5BE2FD8(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x7263736275537369;
  v3 = 0x6B72616D6B6F6F62;
  if (a1 != 3)
  {
    v3 = 0x64616F6C6E776F64;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x656C61636F6CLL;
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

uint64_t sub_1E5BE30A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5BE2E10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5BE30D0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E5BE47A0();
  *a2 = result;
  return result;
}

uint64_t sub_1E5BE30FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5BE3150(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t DynamicLibraryButtonState.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  v5 = *(a2 + 24);
  v13 = *(a2 + 16);
  type metadata accessor for DynamicLibraryButtonState.CodingKeys(255, v13, v5, a4);
  swift_getWitnessTable();
  v6 = sub_1E5BF7434();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BF7524();
  v19 = 0;
  v10 = v14;
  sub_1E5BF7424();
  if (!v10)
  {
    v18 = 1;
    sub_1E5BF64B4();
    sub_1E5BBDC78(&qword_1ED03E5C8, MEMORY[0x1E6969778]);
    sub_1E5BF7424();
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
    sub_1E5B6968C(&qword_1ED03E5D0, MEMORY[0x1E6999B20]);
    sub_1E5BF7424();
    v16 = 3;
    sub_1E5BF7424();
    v15 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
    sub_1E5B696FC(&qword_1ED03E5D8, MEMORY[0x1E6999B20]);
    sub_1E5BF7424();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t DynamicLibraryButtonState.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_1E5BF6EF4();
  sub_1E5BF64B4();
  sub_1E5BBDC78(&qword_1ED03E5F0, MEMORY[0x1E6969780]);
  sub_1E5BF6EF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  sub_1E5BF6DF4();
  sub_1E5BF6DF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  sub_1E5B69638();
  return sub_1E5BF6DF4();
}

uint64_t DynamicLibraryButtonState.hashValue.getter(uint64_t a1)
{
  sub_1E5BF74B4();
  DynamicLibraryButtonState.hash(into:)(v3, a1);
  return sub_1E5BF7504();
}

uint64_t DynamicLibraryButtonState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  MEMORY[0x1EEE9AC00](v38);
  v39 = &v36 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  MEMORY[0x1EEE9AC00](v42);
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v36 - v10;
  v48 = sub_1E5BF64B4();
  v45 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v44 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DynamicLibraryButtonState.CodingKeys(255, a2, a3, v14);
  swift_getWitnessTable();
  v52 = sub_1E5BF7384();
  v47 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v16 = &v36 - v15;
  v49 = a2;
  v46 = a3;
  v18 = type metadata accessor for DynamicLibraryButtonState(0, a2, a3, v17);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v36 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v51 = v16;
  v22 = v53;
  sub_1E5BF7514();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v44;
  v24 = v45;
  v36 = v19;
  v53 = v21;
  v25 = v18;
  v26 = v48;
  v27 = v49;
  v58 = 0;
  sub_1E5BF7364();
  (*(v43 + 32))(v53, v50, v27);
  v57 = 1;
  sub_1E5BBDC78(&qword_1ED03E600, MEMORY[0x1E6969790]);
  v28 = v23;
  sub_1E5BF7364();
  v29 = v25;
  (*(v24 + 32))(&v53[v25[9]], v28, v26);
  v56 = 2;
  sub_1E5B6968C(&qword_1ED03E608, MEMORY[0x1E6999B30]);
  v30 = v41;
  v50 = 0;
  sub_1E5BF7364();
  sub_1E5B5F8D4(v30, &v53[v25[10]], &qword_1ED03E238, &unk_1E5BF8A10);
  v55 = 3;
  v31 = v40;
  sub_1E5BF7364();
  sub_1E5B5F8D4(v31, &v53[v25[11]], &qword_1ED03E238, &unk_1E5BF8A10);
  v54 = 4;
  sub_1E5B696FC(&qword_1ED03E610, MEMORY[0x1E6999B30]);
  v32 = v39;
  sub_1E5BF7364();
  (*(v47 + 8))(v51, v52);
  v33 = v53;
  sub_1E5B5F8D4(v32, &v53[v29[12]], &qword_1ED03E260, &qword_1E5BF9190);
  v34 = v36;
  (*(v36 + 16))(v37, v33, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v34 + 8))(v33, v29);
}

uint64_t sub_1E5BE3DD8(uint64_t a1, uint64_t a2)
{
  sub_1E5BF74B4();
  DynamicLibraryButtonState.hash(into:)(v4, a2);
  return sub_1E5BF7504();
}

void sub_1E5BE3E44(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1E5BF64B4();
    if (v2 <= 0x3F)
    {
      sub_1E5B6A458();
      if (v3 <= 0x3F)
      {
        sub_1E5B6A4B0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E5BE3EFC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v42 = sub_1E5BF64B4();
  v8 = *(v42 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1E5BF6464() - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 64);
  if (((v12 + 1) & ~v12) + v13 <= 0x28)
  {
    v14 = 40;
  }

  else
  {
    v14 = ((v12 + 1) & ~v12) + v13;
  }

  if (v14 >= 4)
  {
    v15 = 252;
  }

  else
  {
    v15 = 252 - (1u >> (8 * v14));
  }

  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((v12 + 6) & ~v12) + v13;
  if (v17 <= 0x28)
  {
    v17 = 40;
  }

  v18 = 252 - (1u >> (8 * v17));
  if (v17 >= 4)
  {
    v18 = 252;
  }

  v19 = *(v8 + 80);
  if (v18 > v16)
  {
    v16 = v18;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(v6 + 64) + v19;
  v21 = v12 | 7;
  v22 = *(v8 + 64) + (v12 | 7);
  v23 = v14 + (v12 | 7) + 1;
  if (a2 <= v16)
  {
    goto LABEL_43;
  }

  v24 = v17 + ((v23 + ((v23 + ((v22 + (v20 & ~v19)) & ~v21)) & ~v21)) & ~v21) + 1;
  v25 = 8 * v24;
  if (v24 > 3)
  {
    goto LABEL_22;
  }

  v28 = ((a2 - v16 + ~(-1 << v25)) >> v25) + 1;
  if (HIWORD(v28))
  {
    v26 = *(a1 + v24);
    if (v26)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v28 <= 0xFF)
    {
      if (v28 < 2)
      {
        goto LABEL_43;
      }

LABEL_22:
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_43;
      }

LABEL_30:
      v29 = (v26 - 1) << v25;
      if (v24 > 3)
      {
        v29 = 0;
      }

      if (v17 + ((v23 + ((v23 + ((v22 + (v20 & ~v19)) & ~v21)) & ~v21)) & ~v21) == -1)
      {
        v31 = 0;
      }

      else
      {
        if (v24 <= 3)
        {
          v30 = v17 + ((v23 + ((v23 + ((v22 + (v20 & ~v19)) & ~v21)) & ~v21)) & ~v21) + 1;
        }

        else
        {
          v30 = 4;
        }

        if (v30 > 2)
        {
          if (v30 == 3)
          {
            v31 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v31 = *a1;
          }
        }

        else if (v30 == 1)
        {
          v31 = *a1;
        }

        else
        {
          v31 = *a1;
        }
      }

      return v16 + (v31 | v29) + 1;
    }

    v26 = *(a1 + v24);
    if (*(a1 + v24))
    {
      goto LABEL_30;
    }
  }

LABEL_43:
  if (v7 == v16)
  {
    v32 = *(v6 + 48);
    v33 = a1;
    v34 = v7;
    v35 = v5;

    return v32(v33, v34, v35);
  }

  v33 = ((a1 + v20) & ~v19);
  if (v9 == v16)
  {
    v32 = *(v8 + 48);
    v34 = v9;
    v35 = v42;

    return v32(v33, v34, v35);
  }

  v36 = ~v21;
  v37 = (v33 + v22) & ~v21;
  if (v15 == v16)
  {
    v38 = *(v37 + v14);
    v39 = 256 - v38;
    v40 = v15 > (v38 ^ 0xFFu);
  }

  else
  {
    v41 = *(((v23 + ((v23 + v37) & v36)) & v36) + v17);
    v39 = 256 - v41;
    v40 = v18 > (v41 ^ 0xFFu);
  }

  if (v40)
  {
    return v39;
  }

  else
  {
    return 0;
  }
}

void sub_1E5BE42CC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v48 = *(a4 + 16);
  v7 = *(v48 - 8);
  v47 = v7;
  v8 = *(v7 + 84);
  v46 = sub_1E5BF64B4();
  v9 = *(v46 - 8);
  v49 = v9;
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(sub_1E5BF6464() - 8);
  v13 = *(v12 + 80);
  v14 = *(v12 + 64);
  v15 = ((v13 + 1) & ~v13) + v14;
  if (v15 <= 0x28)
  {
    v15 = 40;
  }

  v16 = 252 - (1u >> (8 * v15));
  if (v15 >= 4)
  {
    v16 = 252;
  }

  if (v16 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v16;
  }

  v18 = ((v13 + 6) & ~v13) + v14;
  if (v18 <= 0x28)
  {
    v18 = 40;
  }

  v19 = 252 - (1u >> (8 * v18));
  if (v18 >= 4)
  {
    v19 = 252;
  }

  if (v19 <= v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = v19;
  }

  v21 = *(v9 + 80);
  v22 = *(v7 + 64) + v21;
  v23 = v13 | 7;
  v24 = *(v9 + 64) + (v13 | 7);
  v25 = (v24 + (v22 & ~v21)) & ~(v13 | 7);
  v26 = v15 + (v13 | 7) + 1;
  v27 = v18 + 1;
  v28 = ((v26 + ((v26 + v25) & ~v23)) & ~v23) + v18 + 1;
  if (a3 <= v20)
  {
    v30 = 0;
    v29 = a1;
  }

  else
  {
    v29 = a1;
    if (v28 <= 3)
    {
      v33 = ((a3 - v20 + ~(-1 << (8 * v28))) >> (8 * v28)) + 1;
      if (HIWORD(v33))
      {
        v30 = 4;
      }

      else
      {
        if (v33 < 0x100)
        {
          v34 = 1;
        }

        else
        {
          v34 = 2;
        }

        if (v33 >= 2)
        {
          v30 = v34;
        }

        else
        {
          v30 = 0;
        }
      }
    }

    else
    {
      v30 = 1;
    }
  }

  if (v20 < a2)
  {
    v31 = ~v20 + a2;
    if (v28 < 4)
    {
      v32 = (v31 >> (8 * v28)) + 1;
      if (v28)
      {
        v35 = v31 & ~(-1 << (8 * v28));
        bzero(v29, v28);
        if (v28 != 3)
        {
          if (v28 == 2)
          {
            *v29 = v35;
            if (v30 > 1)
            {
LABEL_62:
              if (v30 == 2)
              {
                *&v29[v28] = v32;
              }

              else
              {
                *&v29[v28] = v32;
              }

              return;
            }
          }

          else
          {
            *v29 = v31;
            if (v30 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *v29 = v35;
        v29[2] = BYTE2(v35);
      }

      if (v30 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(v29, v28);
      *v29 = v31;
      v32 = 1;
      if (v30 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v30)
    {
      v29[v28] = v32;
    }

    return;
  }

  if (v30 > 1)
  {
    if (v30 != 2)
    {
      *&v29[v28] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

    *&v29[v28] = 0;
  }

  else if (v30)
  {
    v29[v28] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return;
  }

LABEL_45:
  if (v8 == v20)
  {
    v36 = v48;
    v37 = *(v47 + 56);
    v38 = v29;
    v39 = a2;
    v40 = v8;
LABEL_49:

    v37(v38, v39, v40, v36);
    return;
  }

  v38 = (&v29[v22] & ~v21);
  if (v10 == v20)
  {
    v37 = *(v49 + 56);
    v39 = a2;
    v40 = v10;
    v36 = v46;
    goto LABEL_49;
  }

  v41 = ~v23;
  v42 = &v38[v24] & ~v23;
  if (v16 == v20)
  {
    *(v42 + v15) = -a2;
  }

  else
  {
    v43 = (v26 + ((v26 + v42) & v41)) & v41;
    if (v19 >= a2)
    {
      *(v43 + v18) = -a2;
    }

    else
    {
      v44 = ~v19 + a2;
      if (v27 < 4)
      {
        if (v18 != -1)
        {
          v45 = v44 & ~(-1 << (8 * v27));
          bzero(((v26 + ((v26 + v42) & v41)) & v41), v27);
          if (v27 == 3)
          {
            *v43 = v45;
            *(v43 + 2) = BYTE2(v45);
          }

          else if (v27 == 2)
          {
            *v43 = v45;
          }

          else
          {
            *v43 = v44;
          }
        }
      }

      else
      {
        bzero(((v26 + ((v26 + v42) & v41)) & v41), v18 + 1);
        *v43 = v44;
      }
    }
  }
}

__n128 DynamicLibraryButtonFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1E5BF6484();
  v9 = (a4 + *(type metadata accessor for DynamicLibraryButtonFeature(0, a2, a3, v8) + 36));
  result = *a1;
  v11 = *(a1 + 16);
  *v9 = *a1;
  v9[1] = v11;
  return result;
}

uint64_t DynamicLibraryButtonFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v80 = a3;
  v81 = v7;
  v72 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v73 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040B60, &unk_1E5C05BC0);
  v82 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v10 = v51 - v9;
  v11 = *(a5 + 16);
  v74 = *(v11 - 8);
  v12 = v74;
  v78 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v54 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v51 - v17;
  v75 = *(v12 + 16);
  v75(v51 - v17, a2, v11, v16);
  v65 = v12 + 16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
  v61 = v60[12];
  v19 = v60[16];
  v62 = v60[20];
  v56 = &v10[v60[24]];
  v76 = *(a5 + 24);
  v71 = *(v76 + 24);
  v20 = v18;
  v53 = v18;
  sub_1E5BF72B4();
  v85 = 0;
  sub_1E5B6C48C(&v84, v83);
  v70 = sub_1E5B6C4E8();
  sub_1E5BF7254();
  sub_1E5B6C53C(&v84);
  v68 = *MEMORY[0x1E6999B50];
  v21 = v68;
  v67 = sub_1E5BF6E24();
  v22 = *(v67 - 8);
  v66 = *(v22 + 104);
  v69 = v22 + 104;
  v66(&v10[v19], v21, v67);
  v23 = v81;
  v24 = *(v81 + 16);
  v63 = v81 + 16;
  v64 = v24;
  v25 = v73;
  v24(v73, v77, a5);
  v26 = v54;
  v27 = v11;
  (v75)(v54, v20, v11);
  v28 = *(v23 + 80);
  v29 = v23;
  v30 = (v28 + 32) & ~v28;
  v31 = v74;
  v32 = *(v74 + 80);
  v58 = v30;
  v33 = (v72 + v30 + v32) & ~v32;
  v72 = v28 | v32;
  v55 = v33;
  v34 = swift_allocObject();
  v35 = v76;
  *(v34 + 16) = v27;
  *(v34 + 24) = v35;
  v36 = *(v29 + 32);
  v81 = v29 + 32;
  v59 = v36;
  v36(v34 + v30, v25, a5);
  v57 = *(v31 + 32);
  v57(v34 + v33, v26, v27);
  v37 = v56;
  *v56 = &unk_1E5C05BD8;
  *(v37 + 1) = v34;
  sub_1E5B6C8B8(&type metadata for DynamicLibraryButtonAction);
  sub_1E5B6C8BC(v62 + v10);
  LODWORD(v61) = *MEMORY[0x1E6999AD8];
  v38 = *(v82 + 104);
  v82 += 104;
  v62 = v38;
  v38(v10);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040B68, &qword_1E5C05BE0);
  sub_1E5BF7034();
  v51[1] = v60[12];
  v39 = v60[16];
  v52 = v60[20];
  v40 = &v10[v60[24]];
  v41 = v53;
  v42 = v27;
  sub_1E5BF72B4();
  v85 = 5;
  sub_1E5B6C48C(&v84, v83);
  sub_1E5BF7254();
  sub_1E5B6C53C(&v84);
  v66(&v10[v39], v68, v67);
  v43 = v73;
  v44 = a5;
  v64(v73, v77, a5);
  v45 = v26;
  v46 = v41;
  (v75)(v26, v41, v42);
  v47 = v55;
  v48 = swift_allocObject();
  v49 = v76;
  *(v48 + 16) = v42;
  *(v48 + 24) = v49;
  v59(v48 + v58, v43, v44);
  v57(v48 + v47, v45, v42);
  *v40 = &unk_1E5C05BF0;
  *(v40 + 1) = v48;
  sub_1E5B6C8B8(&type metadata for DynamicLibraryButtonAction);
  sub_1E5B6C8BC(&v10[v52]);
  (v62)(v10, v61, v79);
  sub_1E5BF7034();
  return (*(v74 + 8))(v46, v42);
}

uint64_t sub_1E5BE4F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  sub_1E5BF7084();
  v5[6] = sub_1E5BF7074();
  v7 = sub_1E5BF7054();
  v5[7] = v7;
  v5[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E5BE4FEC, v7, v6);
}

uint64_t sub_1E5BE4FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = (v5 + *(type metadata accessor for DynamicLibraryButtonFeature(0, v4[4], v4[5], a4) + 36));
  v10 = (*v6 + **v6);
  v7 = swift_task_alloc();
  v4[9] = v7;
  *v7 = v4;
  v7[1] = sub_1E5BE50F4;
  v8 = v4[3];

  return v10(v8);
}

uint64_t sub_1E5BE50F4()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1E5B71A1C, v3, v2);
}

uint64_t sub_1E5BE5214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for DynamicLibraryButtonFeature(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = (v10 + *(v9 + 64) + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1E5B6E314;

  return sub_1E5BE4F50(a1, v4 + v10, v4 + v11, v7, v8);
}

uint64_t sub_1E5BE535C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  sub_1E5BF7084();
  v5[6] = sub_1E5BF7074();
  v7 = sub_1E5BF7054();
  v5[7] = v7;
  v5[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E5BE53F8, v7, v6);
}

uint64_t sub_1E5BE53F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = v5 + *(type metadata accessor for DynamicLibraryButtonFeature(0, v4[4], v4[5], a4) + 36);
  v10 = (*(v6 + 16) + **(v6 + 16));
  v7 = swift_task_alloc();
  v4[9] = v7;
  *v7 = v4;
  v7[1] = sub_1E5B6C734;
  v8 = v4[3];

  return v10(v8);
}

uint64_t objectdestroyTm_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for DynamicLibraryButtonFeature(0, v5, *(v4 + 24), a4) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v5 - 8);
  v9 = (v7 + *(v6 + 64) + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v4 + v7;
  v11 = sub_1E5BF6494();
  (*(*(v11 - 8) + 8))(v10, v11);

  (*(v8 + 8))(v4 + v9, v5);

  return swift_deallocObject();
}

uint64_t sub_1E5BE5674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for DynamicLibraryButtonFeature(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = (v10 + *(v9 + 64) + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1E5B6D9A0;

  return sub_1E5BE535C(a1, v4 + v10, v4 + v11, v7, v8);
}

unint64_t sub_1E5BE57D0()
{
  result = qword_1ED040B70;
  if (!qword_1ED040B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040B70);
  }

  return result;
}

unint64_t sub_1E5BE5828()
{
  result = qword_1ED040B78;
  if (!qword_1ED040B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040B78);
  }

  return result;
}

uint64_t sub_1E5BE5898(uint64_t a1)
{
  result = sub_1E5BF6494();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for DynamicLibraryButtonEnvironment(319, *(a1 + 16), *(a1 + 24), v3);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E5BE5974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v70 = a4;
  v53 = a3;
  v68 = a5;
  v69 = a1;
  v6 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v63 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v62 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E740, &qword_1E5BF9100);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v66 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v50 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v50 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E738, &unk_1E5BFE1C0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v67 = (&v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v50 - v24;
  v26 = sub_1E5BF6F74();
  MEMORY[0x1EEE9AC00](v26 - 8);
  sub_1E5BF6F64();
  sub_1E5BF6F54();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  v28 = sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0, MEMORY[0x1E6999B78]);
  v29 = v53;
  v58 = v28;
  v59 = v27;
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  sub_1E5B5F8D4(v19, v16, &qword_1ED03E740, &qword_1E5BF9100);
  v30 = *(v21 + 48);
  v64 = v20;
  v60 = v21 + 48;
  v57 = v30;
  if (v30(v16, 1, v20) == 1)
  {
    v31 = type metadata accessor for FutureWorkoutConfirmation(0);
    (*(*(v31 - 8) + 56))(v25, 1, 1, v31);
  }

  else
  {
    sub_1E5B5F8D4(v16, v25, &qword_1ED03E738, &unk_1E5BFE1C0);
  }

  v32 = type metadata accessor for FutureWorkoutConfirmation(0);
  v50 = *(v32 - 8);
  v33 = (*(v50 + 48))(v25, 1, v32);
  v61 = v32;
  if (v33 == 1)
  {
    sub_1E5B5F804(v25, &qword_1ED03E738, &unk_1E5BFE1C0);
  }

  else
  {
    sub_1E5BB10B0();
    sub_1E5BE76D8(v25, type metadata accessor for FutureWorkoutConfirmation);
  }

  sub_1E5BF6F44();

  sub_1E5BF6F54();
  sub_1E5BF6F84();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v34 = qword_1EE2CD210;
  v35 = v70;
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v62 = sub_1E5BF69D4();
  v63 = v36;
  v56 = v37;
  v55 = v38;
  sub_1E5BF6614();
  v39 = swift_allocObject();
  *(v39 + 16) = a2;
  *(v39 + 24) = v29;
  *(v39 + 32) = v35 & 1;
  sub_1E5B5F5EC(a2, v29);
  sub_1E5BF6D34();
  v54 = v71;
  v52 = v72;
  v51 = v73;
  sub_1E5BF6614();
  swift_getKeyPath();
  v40 = v65;
  sub_1E5BF6E34();

  v41 = v40;
  v42 = v66;
  sub_1E5B5F8D4(v41, v66, &qword_1ED03E740, &qword_1E5BF9100);
  if (v57(v42, 1, v64) == 1)
  {
    v43 = v67;
    v44 = (*(v50 + 56))(v67, 1, 1, v61);
  }

  else
  {
    v43 = v67;
    v44 = sub_1E5B5F8D4(v42, v67, &qword_1ED03E738, &unk_1E5BFE1C0);
  }

  v67 = &v50;
  MEMORY[0x1EEE9AC00](v44);
  MEMORY[0x1EEE9AC00](v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040B80, &unk_1E5C05DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F148, &unk_1E5BFB4F0);
  sub_1E5B5FC8C(&qword_1EE2C6308, &qword_1ED040B80, &unk_1E5C05DC0, MEMORY[0x1E697FDF8]);
  sub_1E5B5FC8C(&qword_1EE2C6298, &qword_1ED03F148, &unk_1E5BFB4F0, MEMORY[0x1E6981F48]);
  v46 = v55;
  v47 = v62;
  v48 = v56;
  sub_1E5BF6AE4();

  sub_1E5B7AD08(v47, v48, v46 & 1);

  return sub_1E5B5F804(v43, &qword_1ED03E738, &unk_1E5BFE1C0);
}

uint64_t sub_1E5BE62B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, _BYTE *a4@<X8>)
{
  v46 = a3;
  v47 = a2;
  v45 = a1;
  v50 = a4;
  v4 = sub_1E5BF6494();
  v49 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E790, &qword_1E5BF9150);
  MEMORY[0x1EEE9AC00](v44);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v41 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E738, &unk_1E5BFE1C0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E740, &qword_1E5BF9100);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v41 - v23;
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = (*(v16 + 48))(v24, 1, v15);
  if (result != 1)
  {
    sub_1E5B5F8D4(v24, v21, &qword_1ED03E738, &unk_1E5BFE1C0);
    sub_1E5B5F864(v21, v18, &qword_1ED03E738, &unk_1E5BFE1C0);
    v27 = type metadata accessor for FutureWorkoutConfirmation(0);
    v28 = (*(*(v27 - 8) + 48))(v18, 1, v27);
    v41 = v21;
    if (v28 == 1)
    {
      sub_1E5B5F804(v18, &qword_1ED03E738, &unk_1E5BFE1C0);
      v29 = 1;
      v30 = v48;
      v31 = v49;
    }

    else
    {
      v30 = v48;
      v31 = v49;
      (*(v49 + 16))(v48, v18, v4);
      sub_1E5BE76D8(v18, type metadata accessor for FutureWorkoutConfirmation);
      v29 = 0;
    }

    v32 = *(v31 + 56);
    v32(v30, v29, 1, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
    sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0, MEMORY[0x1E6999B78]);
    sub_1E5BF6614();
    swift_getKeyPath();
    sub_1E5BF6E34();

    v32(v12, 0, 1, v4);
    v33 = *(v44 + 48);
    sub_1E5B5F864(v30, v7, &qword_1ED03E5E8, &unk_1E5BF9600);
    sub_1E5B5F864(v12, &v7[v33], &qword_1ED03E5E8, &unk_1E5BF9600);
    v34 = *(v31 + 48);
    if (v34(v7, 1, v4) == 1)
    {
      sub_1E5B5F804(v12, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v30, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v41, &qword_1ED03E738, &unk_1E5BFE1C0);
      if (v34(&v7[v33], 1, v4) == 1)
      {
        result = sub_1E5B5F804(v7, &qword_1ED03E5E8, &unk_1E5BF9600);
        v35 = 1;
LABEL_13:
        v26 = v35 & 1;
        goto LABEL_14;
      }
    }

    else
    {
      v36 = v43;
      sub_1E5B5F864(v7, v43, &qword_1ED03E5E8, &unk_1E5BF9600);
      if (v34(&v7[v33], 1, v4) != 1)
      {
        v37 = v49;
        v38 = &v7[v33];
        v39 = v42;
        (*(v49 + 32))(v42, v38, v4);
        sub_1E5B7AE4C();
        v35 = sub_1E5BF6F14();
        v40 = *(v37 + 8);
        v40(v39, v4);
        sub_1E5B5F804(v12, &qword_1ED03E5E8, &unk_1E5BF9600);
        sub_1E5B5F804(v30, &qword_1ED03E5E8, &unk_1E5BF9600);
        sub_1E5B5F804(v41, &qword_1ED03E738, &unk_1E5BFE1C0);
        v40(v36, v4);
        result = sub_1E5B5F804(v7, &qword_1ED03E5E8, &unk_1E5BF9600);
        goto LABEL_13;
      }

      sub_1E5B5F804(v12, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v30, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v41, &qword_1ED03E738, &unk_1E5BFE1C0);
      (*(v49 + 8))(v36, v4);
    }

    result = sub_1E5B5F804(v7, &qword_1ED03E790, &qword_1E5BF9150);
    v35 = 0;
    goto LABEL_13;
  }

  v26 = 0;
LABEL_14:
  *v50 = v26;
  return result;
}

uint64_t sub_1E5BE69CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  v48 = a1;
  v54 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E338, &unk_1E5BF89E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v53 = &v44 - v9;
  v10 = type metadata accessor for FutureWorkoutConfirmation(0);
  v45 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v46 = v11;
  v47 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E530, &qword_1E5BF8830);
  v52 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v44 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v49 = &v44 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v55 = &v44 - v21;
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v22 = qword_1EE2CD210;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0, MEMORY[0x1E6999B78]);
  v23 = a4 & 1;
  sub_1E5BF6614();
  swift_getKeyPath();
  v24 = a3;
  sub_1E5BF6E34();

  v56 = sub_1E5BF6FD4();
  v57 = v25;
  v26 = v47;
  sub_1E5BE759C(v48, v47);
  v27 = (*(v45 + 80) + 33) & ~*(v45 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  *(v28 + 24) = v24;
  *(v28 + 32) = a4 & 1;
  sub_1E5BE7600(v26, v28 + v27);
  sub_1E5B5F5EC(a2, v24);
  sub_1E5B81070();
  sub_1E5BF6CA4();
  sub_1E5BF6F24();
  v29 = qword_1EE2CD210;
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v56 = sub_1E5BF6FD4();
  v57 = v30;
  v31 = v53;
  sub_1E5BF65D4();
  v32 = sub_1E5BF65E4();
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  v33 = swift_allocObject();
  *(v33 + 16) = a2;
  *(v33 + 24) = v24;
  *(v33 + 32) = v23;
  sub_1E5B5F5EC(a2, v24);
  v34 = v49;
  sub_1E5BF6C94();
  v35 = v52;
  v36 = *(v52 + 16);
  v37 = v50;
  v38 = v55;
  v36(v50, v55, v14);
  v39 = v51;
  v36(v51, v34, v14);
  v40 = v54;
  v36(v54, v37, v14);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F150, &qword_1E5C05DD0);
  v36(&v40[*(v41 + 48)], v39, v14);
  v42 = *(v35 + 8);
  v42(v34, v14);
  v42(v38, v14);
  v42(v39, v14);
  return (v42)(v37, v14);
}

uint64_t sub_1E5BE7048(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  started = type metadata accessor for StartWorkoutButtonAction(0);
  MEMORY[0x1EEE9AC00](started);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  v8 = type metadata accessor for FutureWorkoutConfirmation(0);
  v9 = *(a4 + *(v8 + 20));
  *v7 = *(a4 + *(v8 + 24));
  v7[1] = v9;
  swift_storeEnumTagMultiPayload();
  sub_1E5BF6E44();

  return sub_1E5BE76D8(v7, type metadata accessor for StartWorkoutButtonAction);
}

uint64_t sub_1E5BE71A4(uint64_t a1, uint64_t a2, char a3)
{
  started = type metadata accessor for StartWorkoutButtonAction(0);
  MEMORY[0x1EEE9AC00](started);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  swift_storeEnumTagMultiPayload();
  sub_1E5BF6E44();

  return sub_1E5BE76D8(v5, type metadata accessor for StartWorkoutButtonAction);
}

uint64_t sub_1E5BE72D4@<X0>(uint64_t a4@<X8>)
{
  v5 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1E5BF6F74();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1E5BF6F64();
  sub_1E5BF6F54();
  sub_1E5BB13AC();
  sub_1E5BF6F44();

  sub_1E5BF6F54();
  sub_1E5BF6F84();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a4 = result;
  *(a4 + 8) = v10;
  *(a4 + 16) = v11 & 1;
  *(a4 + 24) = v12;
  return result;
}

uint64_t sub_1E5BE759C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FutureWorkoutConfirmation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5BE7600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FutureWorkoutConfirmation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5BE7664()
{
  v1 = *(type metadata accessor for FutureWorkoutConfirmation(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = v0 + ((*(v1 + 80) + 33) & ~*(v1 + 80));

  return sub_1E5BE7048(v2, v3, v4, v5);
}

uint64_t sub_1E5BE76D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AccountButtonEnvironment.makeAccountChangedStream.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AccountButtonEnvironment.makeUserContactChangedStream.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AccountButtonEnvironment.fetchUserContact.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AccountButtonEnvironment.showUserProfile.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t AccountButtonEnvironment.init(makeAccountChangedStream:makeUserContactChangedStream:fetchUserContact:showUserProfile:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t SharingButton.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  type metadata accessor for SharingButtonFeature(255, a3, a4, v11);
  swift_getWitnessTable();
  sub_1E5BF6E64();
  swift_getWitnessTable();
  result = sub_1E5BF6604();
  *a5 = result;
  *(a5 + 8) = v13;
  *(a5 + 16) = v14 & 1;
  return result;
}

uint64_t sub_1E5BE790C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5BF6BE4();
  *a1 = result;
  return result;
}

uint64_t sub_1E5BE794C(uint64_t a1)
{
  v3 = sub_1E5BF66D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E1E0, "ܳ");
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13[-v9];
  LOBYTE(v9) = *(v1 + 16);
  v11 = *v1;
  v14 = *(a1 + 16);
  v15 = v11;
  v16 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3C0, &qword_1E5BFE810);
  sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810, MEMORY[0x1E697D658]);
  sub_1E5BF6C84();
  (*(v4 + 104))(v6, *MEMORY[0x1E697E6E8], v3);
  sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
  sub_1E5BF6A74();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1E5BE7BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a6;
  v11 = sub_1E5BF64B4();
  v32 = *(v11 - 8);
  v33 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v41 = a2;
  LOBYTE(v42) = a3 & 1;
  v18 = type metadata accessor for SharingButton(0, a4, a5, v17);
  sub_1E5BE16C8(v18, v19, v20, v21);
  v35 = a4;
  v36 = a5;
  swift_getKeyPath();
  sub_1E5BF6E34();

  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v37 = a1;
  v38 = a2;
  v39 = a3 & 1;
  v22 = qword_1EE2CD210;
  v26 = sub_1E5BE16C8(v18, v23, v24, v25);
  MEMORY[0x1EEE9AC00](v26);
  *(&v31 - 2) = a4;
  *(&v31 - 1) = a5;
  swift_getKeyPath();
  sub_1E5BF6E34();

  v27 = (*(a5 + 32))(v22, v13, a4, a5);
  v29 = v28;

  (*(v32 + 8))(v13, v33);
  (*(v31 + 8))(v16, a4);
  v42 = v27;
  v43 = v29;
  sub_1E5BF6C24();
}

uint64_t SharingButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  sub_1E5BE7FB4(v4, v5, v6, v7, v8, a2);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  *(v9 + 48) = v6;
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040B88, &qword_1E5C05E60) + 36));
  *v10 = sub_1E5BE8B14;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;

  return sub_1E5B5F5EC(v4, v5);
}

uint64_t sub_1E5BE7FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v98 = a6;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E1E0, "ܳ");
  v78 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v77 = &v75 - v11;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040BE8, &qword_1E5C05F90);
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v75 - v12;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040BF0, &qword_1E5C05F98);
  v80 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v79 = &v75 - v13;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040A50, &unk_1E5C06070);
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v75 - v14;
  v15 = type metadata accessor for SharingDetail(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v76 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040BE0, &qword_1E5C05F88);
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v84 = &v75 - v17;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040BD0, &qword_1E5C05F80);
  MEMORY[0x1EEE9AC00](v97);
  v92 = &v75 - v18;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040BF8, &qword_1E5C05FA0);
  MEMORY[0x1EEE9AC00](v95);
  v20 = &v75 - v19;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040BC0, &qword_1E5C05F78);
  MEMORY[0x1EEE9AC00](v96);
  v22 = &v75 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v75 - v24;
  v26 = a1;
  v101 = a1;
  v102 = a2;
  v94 = a2;
  v88 = a3;
  v27 = a3 & 1;
  v103 = a3 & 1;
  v29 = type metadata accessor for SharingButton(0, a4, a5, v28);
  sub_1E5BE16C8(v29, v30, v31, v32);
  v89 = a4;
  v90 = a5;
  v99 = a4;
  v100 = a5;
  swift_getKeyPath();
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      if ((*v25 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v37 = *v25;
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F0, &qword_1E5BF7D38) + 48);
      v39 = sub_1E5BF6464();
      (*(*(v39 - 8) + 8))(&v25[v38], v39);
      if (v37 != 1)
      {
LABEL_5:
        v40 = 1;
        v42 = v92;
        v41 = v93;
LABEL_18:
        (*(v91 + 56))(v42, v40, 1, v41);
        sub_1E5B5F864(v42, v20, &qword_1ED040BD0, &qword_1E5C05F80);
        swift_storeEnumTagMultiPayload();
        sub_1E5BE8D00();
        sub_1E5BE8E28();
        sub_1E5BF6864();
        v54 = v42;
        v55 = &qword_1ED040BD0;
        v56 = &qword_1E5C05F80;
        return sub_1E5B5F804(v54, v55, v56);
      }

LABEL_7:
      v101 = v26;
      v102 = v94;
      v43 = v88 & 1;
      v103 = v88 & 1;
      v44 = sub_1E5BE16C8(v29, v34, v35, v36);
      MEMORY[0x1EEE9AC00](v44);
      v45 = v90;
      *(&v75 - 2) = v89;
      *(&v75 - 1) = v45;
      swift_getKeyPath();
      v46 = v82;
      sub_1E5BF6E34();

      v47 = swift_getEnumCaseMultiPayload();
      if (v47 <= 2)
      {
        if (!v47)
        {
          v49 = v76;
          sub_1E5BE29EC(v46, v76);
          goto LABEL_14;
        }

        if (v47 == 1)
        {
          v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED040A58, &qword_1E5C05940) + 48);
          v49 = v76;
          sub_1E5BE29EC(v46, v76);
          v50 = sub_1E5BF6464();
          (*(*(v50 - 8) + 8))(v46 + v48, v50);
LABEL_14:
          v57 = swift_allocObject();
          v58 = v90;
          *(v57 + 16) = v89;
          *(v57 + 24) = v58;
          v59 = v94;
          *(v57 + 32) = v26;
          *(v57 + 40) = v59;
          *(v57 + 48) = v88 & 1;
          MEMORY[0x1EEE9AC00](v57);
          *(&v75 - 6) = v61;
          *(&v75 - 5) = v60;
          *(&v75 - 4) = v26;
          *(&v75 - 3) = v62;
          *(&v75 - 16) = v63;
          *(&v75 - 1) = v49;
          sub_1E5B5F5EC(v26, v62);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3C0, &qword_1E5BFE810);
          v64 = v49;
          sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810, MEMORY[0x1E697D658]);
          v65 = v77;
          sub_1E5BF6C84();
          v66 = v78;
          v67 = v87;
          (*(v78 + 16))(v85, v65, v87);
          swift_storeEnumTagMultiPayload();
          v68 = sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
          v101 = v67;
          v102 = v68;
          swift_getOpaqueTypeConformance2();
          v69 = v84;
          sub_1E5BF6864();
          (*(v66 + 8))(v65, v67);
          sub_1E5BE2A5C(v64);
LABEL_17:
          v42 = v92;
          sub_1E5B5BAB8(v69, v92);
          v40 = 0;
          v41 = v93;
          goto LABEL_18;
        }

        sub_1E5B5F804(v46, &qword_1ED040A50, &unk_1E5C06070);
      }

      v101 = v26;
      v102 = v94;
      v103 = v43;
      v70 = v79;
      sub_1E5BE794C(v29);
      v71 = v80;
      v72 = v86;
      (*(v80 + 16))(v85, v70, v86);
      swift_storeEnumTagMultiPayload();
      v73 = sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
      v101 = v87;
      v102 = v73;
      swift_getOpaqueTypeConformance2();
      v69 = v84;
      sub_1E5BF6864();
      (*(v71 + 8))(v70, v72);
      goto LABEL_17;
    }

    sub_1E5B5F804(v25, &qword_1ED03E238, &unk_1E5BF8A10);
  }

  v101 = v26;
  v102 = v94;
  v103 = v27;
  sub_1E5BE794C(v29);
  KeyPath = swift_getKeyPath();
  v52 = swift_allocObject();
  *(v52 + 16) = 1;
  v53 = &v22[*(v96 + 36)];
  *v53 = KeyPath;
  v53[1] = sub_1E5B5F78C;
  v53[2] = v52;
  sub_1E5B5F864(v22, v20, &qword_1ED040BC0, &qword_1E5C05F78);
  swift_storeEnumTagMultiPayload();
  sub_1E5BE8D00();
  sub_1E5BE8E28();
  sub_1E5BF6864();
  v54 = v22;
  v55 = &qword_1ED040BC0;
  v56 = &qword_1E5C05F78;
  return sub_1E5B5F804(v54, v55, v56);
}

uint64_t sub_1E5BE8AB0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = type metadata accessor for SharingButton(0, a4, a5, a4);
  sub_1E5BE16C8(v6, v7, v8, v9);
  sub_1E5BF6E44();
}

unint64_t sub_1E5BE8B64()
{
  result = qword_1ED040B90;
  if (!qword_1ED040B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040B88, &qword_1E5C05E60);
    sub_1E5BE8BF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040B90);
  }

  return result;
}

unint64_t sub_1E5BE8BF0()
{
  result = qword_1ED040B98;
  if (!qword_1ED040B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040BA0, &qword_1E5C05F68);
    sub_1E5BE8C74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040B98);
  }

  return result;
}

unint64_t sub_1E5BE8C74()
{
  result = qword_1ED040BA8;
  if (!qword_1ED040BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040BB0, &qword_1E5C05F70);
    sub_1E5BE8D00();
    sub_1E5BE8E28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040BA8);
  }

  return result;
}

unint64_t sub_1E5BE8D00()
{
  result = qword_1ED040BB8;
  if (!qword_1ED040BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040BC0, &qword_1E5C05F78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E1E0, "ܳ");
    sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
    swift_getOpaqueTypeConformance2();
    sub_1E5B5FC8C(&qword_1ED03E2A0, &qword_1ED03E2A8, &qword_1E5BF7CE8, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040BB8);
  }

  return result;
}

unint64_t sub_1E5BE8E28()
{
  result = qword_1ED040BC8;
  if (!qword_1ED040BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040BD0, &qword_1E5C05F80);
    sub_1E5BE8EAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040BC8);
  }

  return result;
}

unint64_t sub_1E5BE8EAC()
{
  result = qword_1ED040BD8;
  if (!qword_1ED040BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040BE0, &qword_1E5C05F88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E1E0, "ܳ");
    sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040BD8);
  }

  return result;
}

uint64_t objectdestroy_2Tm_0()
{
  sub_1E5BE2AB8(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t SharingDetail.init(localizedTitle:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for SharingDetail(0) + 20);
  v7 = sub_1E5BF6384();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t static SharingDetail.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1E5BF7444() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SharingDetail(0);

  return sub_1E5BF6374();
}

uint64_t sub_1E5BE919C()
{
  if (*v0)
  {
    return 7107189;
  }

  else
  {
    return 0x657A696C61636F6CLL;
  }
}

uint64_t sub_1E5BE91DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657A696C61636F6CLL && a2 == 0xEE00656C74695464;
  if (v6 || (sub_1E5BF7444() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5BF7444();

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

uint64_t sub_1E5BE92C0(uint64_t a1)
{
  v2 = sub_1E5BE94F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BE92FC(uint64_t a1)
{
  v2 = sub_1E5BE94F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SharingDetail.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040C00, &qword_1E5C06060);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BE94F0();
  sub_1E5BF7524();
  v8[15] = 0;
  sub_1E5BF73E4();
  if (!v1)
  {
    type metadata accessor for SharingDetail(0);
    v8[14] = 1;
    sub_1E5BF6384();
    sub_1E5BEB6D0(&qword_1ED03ECB8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1E5BF7424();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E5BE94F0()
{
  result = qword_1ED040C08;
  if (!qword_1ED040C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040C08);
  }

  return result;
}

uint64_t SharingDetail.hash(into:)(uint64_t a1)
{
  sub_1E5BF6FE4();
  type metadata accessor for SharingDetail(0);
  sub_1E5BF6384();
  sub_1E5BEB6D0(&qword_1ED03ECC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  return sub_1E5BF6EF4();
}

uint64_t SharingDetail.hashValue.getter()
{
  sub_1E5BF74B4();
  sub_1E5BF6FE4();
  type metadata accessor for SharingDetail(0);
  sub_1E5BF6384();
  sub_1E5BEB6D0(&qword_1ED03ECC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1E5BF6EF4();
  return sub_1E5BF7504();
}

uint64_t SharingDetail.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = sub_1E5BF6384();
  v16 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040C10, &qword_1E5C06068);
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v15 - v6;
  v8 = type metadata accessor for SharingDetail(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BE94F0();
  sub_1E5BF7514();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v12 = v18;
  v11 = v19;
  v22 = 0;
  *v10 = sub_1E5BF7324();
  v10[1] = v13;
  v21 = 1;
  sub_1E5BEB6D0(&qword_1ED03ECD0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  sub_1E5BF7364();
  (*(v12 + 8))(v7, v20);
  (*(v16 + 32))(v10 + *(v15 + 20), v5, v11);
  sub_1E5BE9BAC(v10, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E5BE2A5C(v10);
}

uint64_t sub_1E5BE99D4()
{
  sub_1E5BF74B4();
  sub_1E5BF6FE4();
  sub_1E5BF6384();
  sub_1E5BEB6D0(&qword_1ED03ECC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1E5BF6EF4();
  return sub_1E5BF7504();
}

uint64_t sub_1E5BE9A7C(uint64_t a1)
{
  sub_1E5BF6FE4();
  sub_1E5BF6384();
  sub_1E5BEB6D0(&qword_1ED03ECC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  return sub_1E5BF6EF4();
}

uint64_t sub_1E5BE9B08(uint64_t a1)
{
  sub_1E5BF74B4();
  sub_1E5BF6FE4();
  sub_1E5BF6384();
  sub_1E5BEB6D0(&qword_1ED03ECC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1E5BF6EF4();
  return sub_1E5BF7504();
}

uint64_t sub_1E5BE9BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharingDetail(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5BE9C10(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_1E5BF7444() & 1) == 0)
  {
    return 0;
  }

  return sub_1E5BF6374();
}

uint64_t SharingButtonState.init(identifier:locale:presentationContextKey:shareLinkPicker:isEntitled:loadState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9@<X7>)
{
  (*(*(a7 - 8) + 32))(a8, a1, a7);
  v18 = type metadata accessor for SharingButtonState(0, a7, a9, v17);
  v19 = v18[9];
  v20 = sub_1E5BF64B4();
  (*(*(v20 - 8) + 32))(a8 + v19, a2, v20);
  v21 = v18[10];
  v22 = sub_1E5BF6494();
  (*(*(v22 - 8) + 32))(a8 + v21, a3, v22);
  sub_1E5B5F8D4(a4, a8 + v18[12], &qword_1ED03E5C0, &unk_1E5BF8A20);
  sub_1E5B5F8D4(a5, a8 + v18[11], &qword_1ED03E238, &unk_1E5BF8A10);
  return sub_1E5B5F8D4(a6, a8 + v18[13], &qword_1ED040A50, &unk_1E5C06070);
}

uint64_t sub_1E5BE9F6C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E5C077D0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C7469746E457369 && a2 == 0xEA00000000006465 || (sub_1E5BF7444() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E694C6572616873 && a2 == 0xEF72656B6369506BLL || (sub_1E5BF7444() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065)
  {

    return 5;
  }

  else
  {
    v5 = sub_1E5BF7444();

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

uint64_t sub_1E5BEA18C(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x6C7469746E457369;
  v3 = 0x6E694C6572616873;
  if (a1 != 4)
  {
    v3 = 0x7461745364616F6CLL;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x656C61636F6CLL;
  if (a1 != 1)
  {
    v4 = 0xD000000000000016;
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

uint64_t sub_1E5BEA268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5BE9F6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5BEA298(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5BEA2EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SharingButtonState.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v13[0] = a2;
  v13[1] = v5;
  type metadata accessor for SharingButtonState.CodingKeys(255, v5, v6, a4);
  swift_getWitnessTable();
  v7 = sub_1E5BF7434();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BF7524();
  v19 = 0;
  v11 = v13[3];
  sub_1E5BF7424();
  if (!v11)
  {
    v18 = 1;
    sub_1E5BF64B4();
    sub_1E5BEB6D0(&qword_1ED03E5C8, MEMORY[0x1E6969770], MEMORY[0x1E6969778]);
    sub_1E5BF7424();
    v17 = 2;
    sub_1E5BF6494();
    sub_1E5BEB6D0(&qword_1EE2C7AF0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1E5BF7424();
    v16 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
    sub_1E5B6968C(&qword_1ED03E5D0, MEMORY[0x1E6999B20]);
    sub_1E5BF7424();
    v15 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
    sub_1E5B69774(&qword_1ED03E5E0, &protocol conformance descriptor for ModalPresentation<A>);
    sub_1E5BF7424();
    v14 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040A50, &unk_1E5C06070);
    sub_1E5BEB03C(&qword_1ED040C18, MEMORY[0x1E6999B20]);
    sub_1E5BF7424();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t SharingButtonState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040A50, &unk_1E5C06070);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v34 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v34 - v9;
  v48 = sub_1E5BF6494();
  v43 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1E5BF64B4();
  v44 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v46 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SharingButtonState.CodingKeys(255, a2, a3, v14);
  swift_getWitnessTable();
  v55 = sub_1E5BF7384();
  v49 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v16 = &v34 - v15;
  v52 = a2;
  v50 = a3;
  v18 = type metadata accessor for SharingButtonState(0, a2, a3, v17);
  v19 = *(v18 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v54 = v16;
  v22 = v56;
  sub_1E5BF7514();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v46;
  v24 = v47;
  v35 = v19;
  v56 = v21;
  v25 = v51;
  v26 = v48;
  v62 = 0;
  v27 = v52;
  sub_1E5BF7364();
  (*(v45 + 32))(v56, v53, v27);
  v61 = 1;
  sub_1E5BEB6D0(&qword_1ED03E600, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
  sub_1E5BF7364();
  (*(v44 + 32))(&v56[v18[9]], v23, v25);
  v60 = 2;
  sub_1E5BEB6D0(&qword_1EE2C7AE0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v53 = 0;
  sub_1E5BF7364();
  (*(v43 + 32))(&v56[v18[10]], v24, v26);
  v59 = 3;
  sub_1E5B6968C(&qword_1ED03E608, MEMORY[0x1E6999B30]);
  v28 = v41;
  sub_1E5BF7364();
  sub_1E5B5F8D4(v28, &v56[v18[11]], &qword_1ED03E238, &unk_1E5BF8A10);
  v58 = 4;
  sub_1E5B69774(qword_1ED03E618, &protocol conformance descriptor for ModalPresentation<A>);
  v29 = v39;
  sub_1E5BF7364();
  sub_1E5B5F8D4(v29, &v56[v18[12]], &qword_1ED03E5C0, &unk_1E5BF8A20);
  v57 = 5;
  sub_1E5BEB03C(&qword_1ED040C30, MEMORY[0x1E6999B30]);
  v30 = v37;
  sub_1E5BF7364();
  (*(v49 + 8))(v54, v55);
  v31 = v56;
  sub_1E5B5F8D4(v30, &v56[v18[13]], &qword_1ED040A50, &unk_1E5C06070);
  v32 = v35;
  (*(v35 + 16))(v36, v31, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v32 + 8))(v31, v18);
}

uint64_t sub_1E5BEB03C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040A50, &unk_1E5C06070);
    sub_1E5BEB6D0(&qword_1ED040C20, type metadata accessor for SharingDetail, &protocol conformance descriptor for SharingDetail);
    sub_1E5BEB6D0(&qword_1ED040C28, type metadata accessor for SharingDetail, &protocol conformance descriptor for SharingDetail);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SharingButtonState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1E5BF6F14() & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for SharingButtonState(0, a3, a4, v8);
  if ((MEMORY[0x1E6936BF0](a1 + *(v9 + 36), a2 + *(v9 + 36)) & 1) == 0 || (sub_1E5BF6474() & 1) == 0 || (sub_1E5BF6DE4() & 1) == 0 || (sub_1E5B65C60(a1 + *(v9 + 48), a2 + *(v9 + 48)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SharingDetail(0);
  sub_1E5BEB6D0(qword_1EE2C77D8, type metadata accessor for SharingDetail, &protocol conformance descriptor for SharingDetail);

  return sub_1E5BF6DE4();
}

uint64_t SharingButtonState.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5BF6494();
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v22 = &v20 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v20 - v13;
  sub_1E5BF6EF4();
  sub_1E5BF64B4();
  sub_1E5BEB6D0(&qword_1ED03E5F0, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1E5BF6EF4();
  sub_1E5BEB6D0(&qword_1EE2C7AE8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5BF6EF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  sub_1E5BF6DF4();
  sub_1E5B5F864(v2 + *(a2 + 48), v14, &qword_1ED03E5C0, &unk_1E5BF8A20);
  if ((*(v7 + 48))(v14, 1, v6) == 1)
  {
    MEMORY[0x1E6937C10](0);
  }

  else
  {
    v15 = v14;
    v16 = v22;
    sub_1E5B5F8D4(v15, v22, &qword_1ED03E5E8, &unk_1E5BF9600);
    MEMORY[0x1E6937C10](1);
    sub_1E5B5F864(v16, v9, &qword_1ED03E5E8, &unk_1E5BF9600);
    v17 = v23;
    if ((*(v23 + 48))(v9, 1, v4) == 1)
    {
      sub_1E5BF74D4();
    }

    else
    {
      v18 = v21;
      (*(v17 + 32))(v21, v9, v4);
      sub_1E5BF74D4();
      sub_1E5BF6EF4();
      (*(v17 + 8))(v18, v4);
    }

    sub_1E5B5F804(v16, &qword_1ED03E5E8, &unk_1E5BF9600);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040A50, &unk_1E5C06070);
  sub_1E5BEB6D0(qword_1ED040C38, type metadata accessor for SharingDetail, &protocol conformance descriptor for SharingDetail);
  return sub_1E5BF6DF4();
}

uint64_t sub_1E5BEB6D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SharingButtonState.hashValue.getter(uint64_t a1)
{
  sub_1E5BF74B4();
  SharingButtonState.hash(into:)(v3, a1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BEB768(uint64_t a1, uint64_t a2)
{
  sub_1E5BF74B4();
  SharingButtonState.hash(into:)(v4, a2);
  return sub_1E5BF7504();
}

void sub_1E5BEB844(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1E5BF64B4();
    if (v2 <= 0x3F)
    {
      sub_1E5BF6494();
      if (v3 <= 0x3F)
      {
        sub_1E5B6A458();
        if (v4 <= 0x3F)
        {
          sub_1E5B6A50C(319);
          if (v5 <= 0x3F)
          {
            sub_1E5BEC5C0(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1E5BEB92C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v59 = *(*(a3 + 16) - 8);
  v3 = *(v59 + 84);
  v58 = *(sub_1E5BF64B4() - 8);
  v54 = v3;
  v53 = *(v58 + 84);
  if (v53 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = *(v58 + 84);
  }

  v52 = sub_1E5BF6494();
  v56 = *(v52 - 8);
  v5 = *(v56 + 84);
  if (v5 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = *(v56 + 84);
  }

  v7 = *(sub_1E5BF6464() - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  if (((v8 + 1) & ~v8) + v9 <= 0x28)
  {
    v10 = 40;
  }

  else
  {
    v10 = ((v8 + 1) & ~v8) + v9;
  }

  v11 = 252 - (1u >> (8 * v10));
  if (v10 >= 4)
  {
    v11 = 252;
  }

  v51 = v11;
  if (v11 <= v6)
  {
    v11 = v6;
  }

  v12 = v5 - 1;
  if (!v5)
  {
    v12 = 0;
  }

  v13 = v12 - 1;
  v49 = v13;
  if (v5 < 2)
  {
    v13 = 0;
  }

  v50 = v13;
  if (v13 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(sub_1E5BF6384() - 8);
  v16 = *(v15 + 80);
  result = a2;
  v18 = ((v16 + 16) & ~v16) + *(v15 + 64);
  if (((v18 + v8) & ~v8) + v9 > v18)
  {
    v18 = ((v18 + v8) & ~v8) + v9;
  }

  if (v18 <= 0x28)
  {
    v19 = 40;
  }

  else
  {
    v19 = v18;
  }

  if (v19 >= 4)
  {
    v20 = 252;
  }

  else
  {
    v20 = 252 - (1u >> (8 * v19));
  }

  if (v20 <= v14)
  {
    v21 = v14;
  }

  else
  {
    v21 = v20;
  }

  v22 = *(v58 + 80);
  v23 = *(v58 + 64);
  v24 = *(v56 + 80);
  v25 = *(v56 + 64);
  if (v5)
  {
    v26 = v5 < 2;
  }

  else
  {
    v26 = 2;
  }

  if (!a2)
  {
    return result;
  }

  v27 = *(v59 + 64) + v22;
  v28 = v8 | 7;
  v29 = v25 + (v8 | 7);
  v30 = v10 + v24 + 1;
  v31 = v8 | 7 | v16;
  v32 = a1;
  if (a2 > v21)
  {
    v33 = v19 + ((v26 + v31 + v25 + ((v30 + ((v29 + ((v23 + v24 + (v27 & ~v22)) & ~v24)) & ~v28)) & ~v24)) & ~v31) + 1;
    v34 = 8 * v33;
    if (v33 > 3)
    {
      goto LABEL_38;
    }

    v36 = ((a2 - v21 + ~(-1 << v34)) >> v34) + 1;
    if (HIWORD(v36))
    {
      v35 = *(a1 + v33);
      if (v35)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v36 <= 0xFF)
      {
        if (v36 < 2)
        {
          goto LABEL_58;
        }

LABEL_38:
        v35 = *(a1 + v33);
        if (!*(a1 + v33))
        {
          goto LABEL_58;
        }

LABEL_45:
        v37 = (v35 - 1) << v34;
        if (v33 > 3)
        {
          v37 = 0;
        }

        if (v33)
        {
          if (v33 <= 3)
          {
            v38 = v33;
          }

          else
          {
            v38 = 4;
          }

          if (v38 > 2)
          {
            if (v38 == 3)
            {
              v39 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v39 = *a1;
            }
          }

          else if (v38 == 1)
          {
            v39 = *a1;
          }

          else
          {
            v39 = *a1;
          }
        }

        else
        {
          v39 = 0;
        }

        return v21 + (v39 | v37) + 1;
      }

      v35 = *(a1 + v33);
      if (*(a1 + v33))
      {
        goto LABEL_45;
      }
    }
  }

LABEL_58:
  if (v54 == v21)
  {
    v40 = *(v59 + 48);

    return v40(v32);
  }

  v32 = ((a1 + v27) & ~v22);
  if (v53 == v21)
  {
    v40 = *(v58 + 48);
    goto LABEL_66;
  }

  v41 = ~v24;
  v32 = ((v32 + v23 + v24) & ~v24);
  if (v5 == v21)
  {
    v40 = *(v56 + 48);
LABEL_66:

    return v40(v32);
  }

  v42 = (v32 + v29) & ~v28;
  if (v51 == v21)
  {
    v43 = *(v42 + v10);
    v44 = 256 - v43;
    v45 = v51 > (v43 ^ 0xFFu);
    goto LABEL_82;
  }

  v46 = (v30 + v42) & v41;
  if (v50 != v21)
  {
    v48 = *(((v31 + (v5 < 2) + v25 + (v5 == 0) + v46) & ~v31) + v19);
    v44 = 256 - v48;
    v45 = v20 > (v48 ^ 0xFFu);
LABEL_82:
    if (v45)
    {
      return v44;
    }

    else
    {
      return 0;
    }
  }

  result = 0;
  if (v5 >= 2 && v49)
  {
    v47 = (*(v56 + 48))(v46, v5, v52);
    if (v47 >= 3)
    {
      return v47 - 2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1E5BEBEB0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v62 = *(*(a4 + 16) - 8);
  v4 = *(v62 + 84);
  v61 = *(sub_1E5BF64B4() - 8);
  v59 = v4;
  v58 = *(v61 + 84);
  if (v58 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = *(v61 + 84);
  }

  v60 = *(sub_1E5BF6494() - 8);
  v6 = *(v60 + 84);
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(v60 + 84);
  }

  v8 = *(sub_1E5BF6464() - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  if (((v9 + 1) & ~v9) + v10 <= 0x28)
  {
    v11 = 40;
  }

  else
  {
    v11 = ((v9 + 1) & ~v9) + v10;
  }

  v12 = 252 - (1u >> (8 * v11));
  if (v11 >= 4)
  {
    v12 = 252;
  }

  v57 = v12;
  if (v12 <= v7)
  {
    v12 = v7;
  }

  v13 = v6 - 1;
  if (!v6)
  {
    v13 = 0;
  }

  v55 = v13;
  v14 = v13 - 1;
  v15 = v6 < 2;
  if (v6 < 2)
  {
    v14 = 0;
  }

  v56 = v14;
  if (v14 <= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = v6;
  v18 = 0;
  v19 = *(sub_1E5BF6384() - 8);
  v20 = *(v19 + 80);
  v21 = ((v20 + 16) & ~v20) + *(v19 + 64);
  if (((v21 + v9) & ~v9) + v10 > v21)
  {
    v21 = ((v21 + v9) & ~v9) + v10;
  }

  if (v21 <= 0x28)
  {
    v21 = 40;
  }

  v22 = 252 - (1u >> (8 * v21));
  if (v21 >= 4)
  {
    v22 = 252;
  }

  if (v22 <= v16)
  {
    v23 = v16;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(v61 + 80);
  v25 = *(v62 + 64) + v24;
  v26 = *(v61 + 64);
  v27 = *(v60 + 80);
  v28 = *(v60 + 64);
  v29 = v28 + (v9 | 7);
  v30 = v11 + v27 + 1;
  v31 = v9 | 7 | v20;
  if (v17)
  {
    v32 = v15;
  }

  else
  {
    v32 = v15 + 1;
  }

  v33 = v21 + 1;
  v34 = ((v32 + v31 + v28 + ((v30 + ((v29 + ((v26 + v27 + (v25 & ~v24)) & ~v27)) & ~(v9 | 7))) & ~v27)) & ~v31) + v21 + 1;
  if (a3 > v23)
  {
    v18 = 1;
    if (v34 <= 3)
    {
      v35 = ((a3 - v23 + ~(-1 << (8 * v34))) >> (8 * v34)) + 1;
      v36 = HIWORD(v35);
      if (v35 < 0x100)
      {
        v37 = 1;
      }

      else
      {
        v37 = 2;
      }

      if (v35 >= 2)
      {
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      if (v36)
      {
        v18 = 4;
      }

      else
      {
        v18 = v38;
      }
    }
  }

  if (v23 < a2)
  {
    v39 = ~v23 + a2;
    if (v34 < 4)
    {
      v40 = (v39 >> (8 * v34)) + 1;
      if (v34)
      {
        v42 = v18;
        v43 = v39 & ~(-1 << (8 * v34));
        bzero(a1, v34);
        if (v34 == 3)
        {
          *a1 = v43;
          a1[2] = BYTE2(v43);
        }

        else if (v34 == 2)
        {
          *a1 = v43;
        }

        else
        {
          *a1 = v39;
        }

        v18 = v42;
      }
    }

    else
    {
      bzero(a1, v34);
      *a1 = v39;
      v40 = 1;
    }

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        *&a1[v34] = v40;
      }

      else
      {
        *&a1[v34] = v40;
      }
    }

    else if (v18)
    {
      a1[v34] = v40;
    }

    return;
  }

  v41 = a1;
  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v34] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_58;
    }

    *&a1[v34] = 0;
  }

  else if (v18)
  {
    a1[v34] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_58;
  }

  if (!a2)
  {
    return;
  }

LABEL_58:
  if (v59 == v23)
  {
    v44 = *(v62 + 56);
    v45 = a2;
    goto LABEL_68;
  }

  v41 = (&a1[v25] & ~v24);
  if (v58 == v23)
  {
    v44 = *(v61 + 56);
    v45 = a2;

    goto LABEL_63;
  }

  v46 = ~v27;
  v41 = (&v41[v26 + v27] & ~v27);
  if (v17 == v23)
  {
    v44 = *(v60 + 56);
    v45 = a2;
LABEL_68:

LABEL_63:
    v44(v41, v45);
    return;
  }

  v47 = &v41[v29] & ~(v9 | 7);
  if (v57 == v23)
  {
    *(v47 + v11) = -a2;
    return;
  }

  v48 = ((v30 + v47) & v46);
  if (v56 == v23)
  {
    if (v17)
    {
      if (a2 + 1 <= v55)
      {
        if (a2 == -1 || v17 == 1)
        {
          return;
        }

        v44 = *(v60 + 56);
        v45 = a2 + 2;
        v41 = ((v30 + v47) & v46);
        goto LABEL_68;
      }

      if (v28 <= 3)
      {
        v49 = ~(-1 << (8 * v28));
      }

      else
      {
        v49 = -1;
      }

      if (!v28)
      {
        return;
      }

      v50 = v49 & (a2 - v55);
      if (v28 <= 3)
      {
        v51 = v28;
      }

      else
      {
        v51 = 4;
      }

      bzero(((v30 + v47) & v46), v28);
      if (v51 <= 2)
      {
        if (v51 != 1)
        {
          goto LABEL_109;
        }

        goto LABEL_119;
      }
    }

    else
    {
      v52 = (v28 + 2);
      if (v52 <= 3)
      {
        v53 = ~(-1 << (8 * v52));
      }

      else
      {
        v53 = -1;
      }

      if (!v52)
      {
        return;
      }

      v50 = v53 & (a2 - 1);
      if (v52 <= 3)
      {
        v51 = v52;
      }

      else
      {
        v51 = 4;
      }

      bzero(((v30 + v47) & v46), v52);
      if (v51 <= 2)
      {
        if (v51 != 1)
        {
LABEL_109:
          *v48 = v50;
          return;
        }

LABEL_119:
        *v48 = v50;
        return;
      }
    }

    if (v51 == 3)
    {
      *v48 = v50;
      v48[2] = BYTE2(v50);
    }

    else
    {
      *v48 = v50;
    }

    return;
  }

  v48 = (&v48[v31 + v15 + v28 + (v17 == 0)] & ~v31);
  if (v22 >= a2)
  {
    v48[v21] = -a2;
    return;
  }

  v50 = ~v22 + a2;
  if (v33 >= 4)
  {
    bzero(v48, v33);
    *v48 = v50;
    return;
  }

  if (v21 != -1)
  {
    v54 = v50 & ~(-1 << (8 * v33));
    bzero(v48, v33);
    if (v33 == 3)
    {
      *v48 = v54;
      v48[2] = BYTE2(v54);
      return;
    }

    if (v33 == 2)
    {
      *v48 = v54;
      return;
    }

    goto LABEL_119;
  }
}

void sub_1E5BEC5C0(uint64_t a1)
{
  if (!qword_1EE2C6288)
  {
    type metadata accessor for SharingDetail(255);
    sub_1E5BEB6D0(qword_1EE2C77D8, type metadata accessor for SharingDetail, &protocol conformance descriptor for SharingDetail);
    v1 = sub_1E5BF6E04();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2C6288);
    }
  }
}

unint64_t sub_1E5BEC668()
{
  result = qword_1ED040CC0;
  if (!qword_1ED040CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040CC0);
  }

  return result;
}

unint64_t sub_1E5BEC714()
{
  result = qword_1ED040CC8;
  if (!qword_1ED040CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040CC8);
  }

  return result;
}

unint64_t sub_1E5BEC76C()
{
  result = qword_1ED040CD0;
  if (!qword_1ED040CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040CD0);
  }

  return result;
}

uint64_t static LabelStyle<>.expandable<A>(_:axis:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v10);
  (*(v9 + 32))(a5, v12, a3);
  result = type metadata accessor for ExpandableLabelStyle(0, a3, a4, v13);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t ExpandableLabelStyle.init(_:axis:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for ExpandableLabelStyle(0, a3, a4, v9);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_1E5BEC954@<X0>(uint64_t a1@<X8>)
{
  sub_1E5BF6734();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040CD8, &qword_1E5C06490);
  *(a1 + *(result + 36)) = 2;
  return result;
}

uint64_t sub_1E5BEC998(uint64_t a1, uint64_t a2)
{
  v3 = 0x7FF0000000000000;
  if (*(v2 + *(a1 + 36)) != 2)
  {
    v4 = sub_1E5BF6934();
    if (v4 != sub_1E5BF6934())
    {
      return 0;
    }
  }

  return v3;
}

uint64_t ExpandableLabelStyle.makeBody(configuration:)(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v4 = sub_1E5BF6894();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040CE0, &qword_1E5C06498);
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v9 = &v32[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040CE8, &qword_1E5C064A0);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v32[-v11];
  v12 = *(a2 + 16);
  v13 = sub_1E5BECF14();
  v14 = *(a2 + 24);
  *&v48 = v10;
  *(&v48 + 1) = v12;
  v38 = v12;
  v37 = v13;
  *&v49 = v13;
  *(&v49 + 1) = v14;
  v36 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v41 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v33 = &v32[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v17);
  v34 = &v32[-v19];
  (*(v5 + 16))(v7, v43, v4, v18);
  v35 = v9;
  sub_1E5BF6C34();
  sub_1E5BEC998(a2, 0);
  v43 = v2;
  sub_1E5BEC998(a2, 1);
  sub_1E5BF6D84();
  sub_1E5BF6704();
  v20 = v39;
  (*(v40 + 32))(v39, v35, v42);
  v21 = (v20 + *(v10 + 36));
  v22 = v53;
  v21[4] = v52;
  v21[5] = v22;
  v21[6] = v54;
  v23 = v49;
  *v21 = v48;
  v21[1] = v23;
  v24 = v51;
  v21[2] = v50;
  v21[3] = v24;
  v25 = v33;
  v26 = v38;
  v27 = v37;
  v28 = v36;
  sub_1E5BF6A34();
  sub_1E5BED004(v20);
  v44 = v10;
  v45 = v26;
  v46 = v27;
  v47 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v34;
  sub_1E5B64D48();
  v30 = *(v41 + 8);
  v30(v25, OpaqueTypeMetadata2);
  sub_1E5B64D48();
  return (v30)(v29, OpaqueTypeMetadata2);
}

unint64_t sub_1E5BECF14()
{
  result = qword_1EE2C6388;
  if (!qword_1EE2C6388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040CE8, &qword_1E5C064A0);
    sub_1E5BECFA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6388);
  }

  return result;
}

unint64_t sub_1E5BECFA0()
{
  result = qword_1EE2C62D8;
  if (!qword_1EE2C62D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040CE0, &qword_1E5C06498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C62D8);
  }

  return result;
}

uint64_t sub_1E5BED004(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040CE8, &qword_1E5C064A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E5BED0B4(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1E5BED4D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E5BED13C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
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

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
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
      if (v5 >= 0xFD)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      v16 = v15 >= 2;
      v17 = v15 - 2;
      if (!v16)
      {
        v17 = -1;
      }

      if (v17 + 1 >= 2)
      {
        return v17;
      }

      else
      {
        return 0;
      }
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

unsigned int *sub_1E5BED2AC(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFD)
      {
        *(result + v8) = a2 + 2;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

void sub_1E5BED4D4()
{
  if (!qword_1EE2C62E0)
  {
    v0 = sub_1E5BF71F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C62E0);
    }
  }
}

uint64_t ViewStackButton.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_1E5B62F34;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t ViewStackButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = sub_1E5BF66D4();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E1E0, "ܳ");
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040BF0, &qword_1E5C05F98);
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v33 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040CF0, &qword_1E5C06518);
  MEMORY[0x1EEE9AC00](v43);
  v9 = &v33 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040CF8, &qword_1E5C06520);
  MEMORY[0x1EEE9AC00](v42);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFC8, &qword_1E5BFB9C0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v33 - v13);
  v16 = *v1;
  v15 = *(v1 + 8);
  v17 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFB0, &qword_1E5BFAE48);
  sub_1E5B5FC8C(&qword_1ED03EFB8, &qword_1ED03EFB0, &qword_1E5BFAE48, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v19 = *v14;
      if (*v14 < 1)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v19 = *v14;
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFD0, &qword_1E5BFAE80) + 48);
      v21 = sub_1E5BF6464();
      (*(*(v21 - 8) + 8))(v14 + v20, v21);
      if (v19 < 1)
      {
LABEL_5:
        v22 = 1;
        v24 = v40;
        v23 = v41;
LABEL_8:
        (*(v24 + 56))(v9, v22, 1, v23);
        sub_1E5B5BD40(v9, v11);
        swift_storeEnumTagMultiPayload();
        sub_1E5BEDBDC();
        sub_1E5BF6864();
        return sub_1E5B5BDB0(v9);
      }

LABEL_7:
      v25 = swift_allocObject();
      *(v25 + 16) = v16;
      *(v25 + 24) = v15;
      *(v25 + 32) = v17;
      MEMORY[0x1EEE9AC00](v25);
      *(&v33 - 4) = v19;
      *(&v33 - 3) = v16;
      *(&v33 - 2) = v15;
      *(&v33 - 8) = v17;
      sub_1E5B5F5EC(v16, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3C0, &qword_1E5BFE810);
      sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810, MEMORY[0x1E697D658]);
      v26 = v34;
      sub_1E5BF6C84();
      v28 = v37;
      v27 = v38;
      v29 = v39;
      (*(v38 + 104))(v37, *MEMORY[0x1E697E6E8], v39);
      sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
      v30 = v33;
      v31 = v36;
      sub_1E5BF6A74();
      (*(v27 + 8))(v28, v29);
      (*(v35 + 8))(v26, v31);
      v24 = v40;
      v23 = v41;
      (*(v40 + 32))(v9, v30, v41);
      v22 = 0;
      goto LABEL_8;
    }

    sub_1E5BEDE20(v14);
  }

  swift_storeEnumTagMultiPayload();
  sub_1E5BEDBDC();
  return sub_1E5BF6864();
}

unint64_t sub_1E5BEDBDC()
{
  result = qword_1ED040D00;
  if (!qword_1ED040D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040CF0, &qword_1E5C06518);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E1E0, "ܳ");
    sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040D00);
  }

  return result;
}

uint64_t sub_1E5BEDCD0(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFB0, &qword_1E5BFAE48);
  sub_1E5B5FC8C(&qword_1ED03EFB8, &qword_1ED03EFB0, &qword_1E5BFAE48, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  sub_1E5BF6E44();
}

uint64_t sub_1E5BEDE20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFC8, &qword_1E5BFB9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5BEDEA4@<X0>(uint64_t a5@<X8>)
{
  v6 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1E5BF6F74();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1E5BF6F64();
  sub_1E5BF6F54();
  sub_1E5BF6F34();
  sub_1E5BF6F54();
  sub_1E5BF6F84();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFB0, &qword_1E5BFAE48);
  sub_1E5B5FC8C(&qword_1ED03EFB8, &qword_1ED03EFB0, &qword_1E5BFAE48, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a5 = result;
  *(a5 + 8) = v11;
  *(a5 + 16) = v12 & 1;
  *(a5 + 24) = v13;
  return result;
}

uint64_t sub_1E5BEE130@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5BF6C04();
  *a1 = result;
  return result;
}

unint64_t sub_1E5BEE174()
{
  result = qword_1ED040D08;
  if (!qword_1ED040D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040D10, &qword_1E5C06628);
    sub_1E5BEDBDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040D08);
  }

  return result;
}

uint64_t SampleContentModalPresentation.init(store:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t SampleContentModalPresentation.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040D18, &qword_1E5C06650);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040D20, &qword_1E5C06658) + 36);
  *v9 = sub_1E5BD8968;
  *(v9 + 8) = v7;
  *(v9 + 16) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040D28, &qword_1E5C06660) + 36);
  *v11 = sub_1E5BD8968;
  *(v11 + 8) = v10;
  *(v11 + 16) = 0;
  return swift_retain_n();
}

uint64_t sub_1E5BEE344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040D18, &qword_1E5C06650);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040D20, &qword_1E5C06658) + 36);
  *v9 = sub_1E5BD8FF8;
  *(v9 + 8) = v7;
  *(v9 + 16) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040D28, &qword_1E5C06660) + 36);
  *v11 = sub_1E5BD8FF8;
  *(v11 + 8) = v10;
  *(v11 + 16) = 0;
  return swift_retain_n();
}

uint64_t View.sampleContentModalPresentation(store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a1;
  v7[1] = a2;

  MEMORY[0x1E6937280](v7, a3, &type metadata for SampleContentModalPresentation, a4);
}

unint64_t sub_1E5BEE504()
{
  result = qword_1ED040D30;
  if (!qword_1ED040D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040D28, &qword_1E5C06660);
    sub_1E5BEE590();
    sub_1E5BEE6D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040D30);
  }

  return result;
}

unint64_t sub_1E5BEE590()
{
  result = qword_1ED040D38;
  if (!qword_1ED040D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040D20, &qword_1E5C06658);
    sub_1E5BEE61C();
    sub_1E5BEE680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040D38);
  }

  return result;
}

unint64_t sub_1E5BEE61C()
{
  result = qword_1ED040D40;
  if (!qword_1ED040D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040D18, &qword_1E5C06650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040D40);
  }

  return result;
}

unint64_t sub_1E5BEE680()
{
  result = qword_1ED040D48;
  if (!qword_1ED040D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040D48);
  }

  return result;
}

unint64_t sub_1E5BEE6D4()
{
  result = qword_1ED040D50;
  if (!qword_1ED040D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040D50);
  }

  return result;
}

unint64_t sub_1E5BEE728()
{
  result = qword_1ED040D58;
  if (!qword_1ED040D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040D58);
  }

  return result;
}

uint64_t sub_1E5BEE794(uint64_t a1)
{
  v2 = sub_1E5BEED1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BEE7D0(uint64_t a1)
{
  v2 = sub_1E5BEED1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BEE80C()
{
  if (*v0)
  {
    return 0x726174617661;
  }

  else
  {
    return 0x6C6F686563616C70;
  }
}

uint64_t sub_1E5BEE84C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564;
  if (v6 || (sub_1E5BF7444() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726174617661 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5BF7444();

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

uint64_t sub_1E5BEE928(uint64_t a1)
{
  v2 = sub_1E5BEECC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BEE964(uint64_t a1)
{
  v2 = sub_1E5BEECC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BEE9A0(uint64_t a1)
{
  v2 = sub_1E5BEED70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BEE9DC(uint64_t a1)
{
  v2 = sub_1E5BEED70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccountButtonStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040D60, &qword_1E5C06700);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040D68, &qword_1E5C06708);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040D70, &qword_1E5C06710);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BEECC8();
  sub_1E5BF7524();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1E5BEED1C();
    v14 = v18;
    sub_1E5BF7394();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1E5BEED70();
    sub_1E5BF7394();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1E5BEECC8()
{
  result = qword_1ED040D78;
  if (!qword_1ED040D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040D78);
  }

  return result;
}

unint64_t sub_1E5BEED1C()
{
  result = qword_1ED040D80;
  if (!qword_1ED040D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040D80);
  }

  return result;
}

unint64_t sub_1E5BEED70()
{
  result = qword_1ED040D88;
  if (!qword_1ED040D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040D88);
  }

  return result;
}

uint64_t AccountButtonStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040D90, &qword_1E5C06718);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040D98, &qword_1E5C06720);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040DA0, &unk_1E5C06728);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BEECC8();
  v12 = v31;
  sub_1E5BF7514();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1E5BF7374();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1E5B7FB0C();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1E5BF7284();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770);
      *v22 = &type metadata for AccountButtonStyle;
      sub_1E5BF72D4();
      sub_1E5BF7274();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1E5BEED1C();
        sub_1E5BF72C4();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1E5BEED70();
        sub_1E5BF72C4();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t AccountButtonStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](v1);
  return sub_1E5BF7504();
}

unint64_t sub_1E5BEF328()
{
  result = qword_1ED040DA8;
  if (!qword_1ED040DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040DA8);
  }

  return result;
}

unint64_t sub_1E5BEF3C0()
{
  result = qword_1ED040DB0;
  if (!qword_1ED040DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040DB0);
  }

  return result;
}

unint64_t sub_1E5BEF418()
{
  result = qword_1ED040DB8;
  if (!qword_1ED040DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040DB8);
  }

  return result;
}

unint64_t sub_1E5BEF470()
{
  result = qword_1ED040DC0;
  if (!qword_1ED040DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040DC0);
  }

  return result;
}

unint64_t sub_1E5BEF4C8()
{
  result = qword_1ED040DC8;
  if (!qword_1ED040DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040DC8);
  }

  return result;
}

unint64_t sub_1E5BEF520()
{
  result = qword_1ED040DD0;
  if (!qword_1ED040DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040DD0);
  }

  return result;
}

unint64_t sub_1E5BEF578()
{
  result = qword_1ED040DD8;
  if (!qword_1ED040DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040DD8);
  }

  return result;
}

unint64_t sub_1E5BEF5D0()
{
  result = qword_1ED040DE0;
  if (!qword_1ED040DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040DE0);
  }

  return result;
}

BOOL sub_1E5BEF624(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](v3);
  v4 = sub_1E5BF7504();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t StackButton.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_1E5B62F34;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_1E5BEF750(uint64_t result, char a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a2 & 1) == 0 && a3 != 4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E98, &qword_1E5C06BE8);
    sub_1E5B5FC8C(&qword_1ED040EA0, &qword_1ED040E98, &qword_1E5C06BE8, MEMORY[0x1E6999B78]);
    sub_1E5BF6614();
    sub_1E5BF6E44();
  }

  return v6;
}

uint64_t sub_1E5BEF834@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v35) = a5;
  v34 = a1;
  v36 = a6;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040F00, &qword_1E5C06CF8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v27 - v9;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040F08, &qword_1E5C06D00);
  MEMORY[0x1EEE9AC00](v27);
  v28 = &v27 - v10;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040EF8, &qword_1E5C06CC0);
  MEMORY[0x1EEE9AC00](v31);
  v29 = &v27 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040EE8, &qword_1E5C06CB8);
  MEMORY[0x1EEE9AC00](v12);
  v33 = &v27 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040F10, &qword_1E5C06D08);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3C0, &qword_1E5BFE810);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v27 - v19;
  v37 = a3;
  v38 = a4;
  v39 = v35 & 1;
  if (a2)
  {
    sub_1E5BF6C24();
    (*(v18 + 16))(v16, v20, v17);
    swift_storeEnumTagMultiPayload();
    sub_1E5BF2B98();
    sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810, MEMORY[0x1E697D658]);
    sub_1E5BF6864();
    return (*(v18 + 8))(v20, v17);
  }

  else
  {
    v35 = v14;
    v22 = (v18 + 16);
    if (v34 == 52)
    {
      sub_1E5BF6C24();
      (*v22)(v28, v20, v17);
      swift_storeEnumTagMultiPayload();
      sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810, MEMORY[0x1E697D658]);
      v26 = v29;
      sub_1E5BF6864();
      sub_1E5B5F864(v26, v32, &qword_1ED040EF8, &qword_1E5C06CC0);
      swift_storeEnumTagMultiPayload();
      sub_1E5BF2BC8();
      v25 = v33;
      sub_1E5BF6864();
      sub_1E5B5F804(v26, &qword_1ED040EF8, &qword_1E5C06CC0);
      v23 = v16;
    }

    else
    {
      v23 = v16;
      if (v34 == 37)
      {
        sub_1E5BF6C24();
        (*v22)(v28, v20, v17);
        swift_storeEnumTagMultiPayload();
        sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810, MEMORY[0x1E697D658]);
        v24 = v29;
        sub_1E5BF6864();
        sub_1E5B5F864(v24, v32, &qword_1ED040EF8, &qword_1E5C06CC0);
        swift_storeEnumTagMultiPayload();
        sub_1E5BF2BC8();
        v25 = v33;
        sub_1E5BF6864();
        sub_1E5B5F804(v24, &qword_1ED040EF8, &qword_1E5C06CC0);
      }

      else
      {
        sub_1E5BF6C24();
        (*v22)(v32, v20, v17);
        swift_storeEnumTagMultiPayload();
        sub_1E5BF2BC8();
        sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810, MEMORY[0x1E697D658]);
        v25 = v33;
        sub_1E5BF6864();
      }
    }

    (*(v18 + 8))(v20, v17);
    sub_1E5B5F864(v25, v23, &qword_1ED040EE8, &qword_1E5C06CB8);
    swift_storeEnumTagMultiPayload();
    sub_1E5BF2B98();
    sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810, MEMORY[0x1E697D658]);
    sub_1E5BF6864();
    return sub_1E5B5F804(v25, &qword_1ED040EE8, &qword_1E5C06CB8);
  }
}

uint64_t sub_1E5BF002C@<X0>(uint64_t a4@<X8>)
{
  v5 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E98, &qword_1E5C06BE8);
  sub_1E5B5FC8C(&qword_1ED040EA0, &qword_1ED040E98, &qword_1E5C06BE8, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t sub_1E5BF0220@<X0>(uint64_t a4@<X8>)
{
  v5 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E98, &qword_1E5C06BE8);
  sub_1E5B5FC8C(&qword_1ED040EA0, &qword_1ED040E98, &qword_1E5C06BE8, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t sub_1E5BF0414(uint64_t a1, uint64_t a2, char a3, unsigned __int8 a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E98, &qword_1E5C06BE8);
  sub_1E5B5FC8C(&qword_1ED040EA0, &qword_1ED040E98, &qword_1E5C06BE8, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  sub_1E5BF6E44();
}

uint64_t sub_1E5BF04E4@<X0>(uint64_t a4@<X8>)
{
  v5 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E98, &qword_1E5C06BE8);
  sub_1E5B5FC8C(&qword_1ED040EA0, &qword_1ED040E98, &qword_1E5C06BE8, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t sub_1E5BF06D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5BF6C04();
  *a1 = result;
  return result;
}

uint64_t sub_1E5BF0718@<X0>(uint64_t a4@<X8>)
{
  v5 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E98, &qword_1E5C06BE8);
  sub_1E5B5FC8C(&qword_1ED040EA0, &qword_1ED040E98, &qword_1E5C06BE8, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t StackButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  sub_1E5BF09C8(v3, v4, v5, a1);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040DE8, &qword_1E5C06AB0) + 36));
  *v7 = sub_1E5BF2314;
  v7[1] = v6;
  v7[2] = 0;
  v7[3] = 0;

  return sub_1E5B5F5EC(v3, v4);
}

uint64_t sub_1E5BF09C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v143 = a4;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E90, &qword_1E5C06BE0);
  v112 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v111 = &v104 - v7;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040EA8, &qword_1E5C06BF0);
  MEMORY[0x1EEE9AC00](v113);
  v115 = &v104 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E338, &unk_1E5BF89E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v108 = &v104 - v10;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E1E0, "ܳ");
  v110 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v109 = &v104 - v11;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E80, &qword_1E5C06BD8);
  MEMORY[0x1EEE9AC00](v122);
  v116 = &v104 - v12;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040EB0, &qword_1E5C06BF8);
  MEMORY[0x1EEE9AC00](v119);
  v120 = &v104 - v13;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E70, &qword_1E5C06BD0);
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v121 = &v104 - v14;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E60, &qword_1E5C06BC8);
  MEMORY[0x1EEE9AC00](v133);
  v125 = &v104 - v15;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040EB8, &qword_1E5C06C00);
  MEMORY[0x1EEE9AC00](v129);
  v132 = &v104 - v16;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E30, &qword_1E5C06BB0);
  v127 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v126 = &v104 - v17;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  MEMORY[0x1EEE9AC00](v130);
  v19 = &v104 - v18;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E50, &qword_1E5C06BC0);
  v135 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v131 = &v104 - v20;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E40, &qword_1E5C06BB8);
  MEMORY[0x1EEE9AC00](v142);
  v136 = &v104 - v21;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040EC0, &qword_1E5C06C08);
  MEMORY[0x1EEE9AC00](v139);
  v141 = &v104 - v22;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E20, &qword_1E5C06BA8);
  MEMORY[0x1EEE9AC00](v140);
  v24 = &v104 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  MEMORY[0x1EEE9AC00](v25);
  v118 = &v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v104 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E98, &qword_1E5C06BE8);
  sub_1E5B5FC8C(&qword_1ED040EA0, &qword_1ED040E98, &qword_1E5C06BE8, MEMORY[0x1E6999B78]);
  v128 = a3;
  v30 = a3 & 1;
  v138 = a1;
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      if ((*v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v32 = *v29;
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F0, &qword_1E5BF7D38) + 48);
      v34 = sub_1E5BF6464();
      (*(*(v34 - 8) + 8))(&v29[v33], v34);
      if (v32 != 1)
      {
LABEL_5:
        v35 = 1;
        v36 = v141;
        v24 = v136;
        v37 = v137;
LABEL_32:
        (*(v135 + 56))(v24, v35, 1, v37);
        v52 = &qword_1ED040E40;
        v53 = &qword_1E5C06BB8;
        sub_1E5B5F864(v24, v36, &qword_1ED040E40, &qword_1E5C06BB8);
        swift_storeEnumTagMultiPayload();
        sub_1E5BF259C();
        sub_1E5BF2680();
        goto LABEL_33;
      }

LABEL_7:
      v38 = v138;
      sub_1E5BF6614();
      swift_getKeyPath();
      sub_1E5BF6E34();

      v39 = swift_getEnumCaseMultiPayload();
      if (v39 <= 2)
      {
        if (!v39)
        {
          v54 = *(v19 + 1);
          v105 = *v19;
          v107 = v54;
          v55 = *(v19 + 3);
          v104 = *(v19 + 2);
          v130 = v55;
          v106 = *(v19 + 4);
          v42 = v19[40];
LABEL_14:
          sub_1E5BF6614();
          swift_getKeyPath();
          sub_1E5BF6E34();

          v56 = sub_1E5BEF624(v42, v144);

          if (!v56)
          {

            v60 = 1;
            v36 = v141;
            v61 = v125;
LABEL_30:
            (*(v123 + 56))(v61, v60, 1, v124);
            sub_1E5B5F864(v61, v132, &qword_1ED040E60, &qword_1E5C06BC8);
            swift_storeEnumTagMultiPayload();
            sub_1E5B5FC8C(&qword_1ED040E28, &qword_1ED040E30, &qword_1E5C06BB0, MEMORY[0x1E697D680]);
            sub_1E5BF2730();
            v67 = v131;
            sub_1E5BF6864();
            sub_1E5B5F804(v61, &qword_1ED040E60, &qword_1E5C06BC8);
            goto LABEL_31;
          }

          sub_1E5BF6614();
          swift_getKeyPath();
          v57 = v118;
          sub_1E5BF6E34();

          v58 = swift_getEnumCaseMultiPayload();
          if (v58 > 1)
          {
            if (v58 == 2)
            {

              sub_1E5B5F804(v57, &qword_1ED03E238, &unk_1E5BF8A10);
              v59 = v121;
            }

            else
            {
              v59 = v121;
            }

            v80 = swift_allocObject();
            *(v80 + 16) = 0;
            *(v80 + 24) = 1025;
            v81 = v138;
            *(v80 + 32) = v138;
            *(v80 + 40) = a2;
            *(v80 + 48) = v128 & 1;
            MEMORY[0x1EEE9AC00](v81);
            *(&v104 - 6) = 0;
            *(&v104 - 40) = 1;
            *(&v104 - 4) = v82;
            *(&v104 - 3) = v83;
            LOBYTE(v103) = v84;
            sub_1E5B5F5EC(v82, v83);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040ED0, &qword_1E5C06CB0);
            sub_1E5BF2AE8(&qword_1ED040ED8, &qword_1ED040ED0, &qword_1E5C06CB0, sub_1E5BF2B98);
            v85 = v126;
            sub_1E5BF6C84();
            v86 = v127;
            v87 = v134;
            (*(v127 + 16))(v120, v85, v134);
            swift_storeEnumTagMultiPayload();
            sub_1E5B5FC8C(&qword_1ED040E28, &qword_1ED040E30, &qword_1E5C06BB0, MEMORY[0x1E697D680]);
            sub_1E5BF2890();
            sub_1E5BF6864();
            (*(v86 + 8))(v85, v87);
            goto LABEL_29;
          }

          if (v58)
          {
            v88 = *v57;
            v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F0, &qword_1E5BF7D38) + 48);
            v90 = sub_1E5BF6464();
            (*(*(v90 - 8) + 8))(&v57[v89], v90);
            v69 = v42;
            if (v88 != 1)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v68 = *v57;
            v69 = v42;
            if ((v68 & 1) == 0)
            {
LABEL_23:
              v70 = v106;
              v144 = v106;
              swift_getKeyPath();
              v71 = swift_allocObject();
              v72 = v138;
              *(v71 + 16) = v138;
              *(v71 + 24) = a2;
              *(v71 + 32) = v128 & 1;
              v73 = v107;
              *(v71 + 40) = v105;
              *(v71 + 48) = v73;
              v74 = v130;
              *(v71 + 56) = v104;
              *(v71 + 64) = v74;
              *(v71 + 72) = v70;
              *(v71 + 80) = v69;
              sub_1E5B5F5EC(v72, a2);

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FB98, &qword_1E5BFFC50);
              sub_1E5B5FC8C(&qword_1ED040EC8, &qword_1ED03FB98, &qword_1E5BFFC50, MEMORY[0x1E69E6338]);
              v75 = MEMORY[0x1E697D680];
              v103 = sub_1E5B5FC8C(&qword_1ED040E28, &qword_1ED040E30, &qword_1E5C06BB0, MEMORY[0x1E697D680]);
              v76 = v111;
              sub_1E5BF6D44();
              v77 = v112;
              v78 = v117;
              (*(v112 + 16))(v115, v76, v117);
              swift_storeEnumTagMultiPayload();
              sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", v75);
              sub_1E5BF2948();
              v79 = v116;
              sub_1E5BF6864();
              (*(v77 + 8))(v76, v78);
LABEL_28:
              sub_1E5B5F864(v79, v120, &qword_1ED040E80, &qword_1E5C06BD8);
              swift_storeEnumTagMultiPayload();
              sub_1E5B5FC8C(&qword_1ED040E28, &qword_1ED040E30, &qword_1E5C06BB0, MEMORY[0x1E697D680]);
              sub_1E5BF2890();
              v59 = v121;
              sub_1E5BF6864();
              sub_1E5B5F804(v79, &qword_1ED040E80, &qword_1E5C06BD8);
LABEL_29:
              v36 = v141;
              v61 = v125;
              sub_1E5B5F8D4(v59, v125, &qword_1ED040E70, &qword_1E5C06BD0);
              v60 = 0;
              goto LABEL_30;
            }
          }

          v91 = v108;
          sub_1E5BF65C4();
          v92 = sub_1E5BF65E4();
          (*(*(v92 - 8) + 56))(v91, 0, 1, v92);
          v93 = swift_allocObject();
          v94 = v138;
          *(v93 + 16) = v138;
          *(v93 + 24) = a2;
          *(v93 + 32) = v128 & 1;
          *(v93 + 33) = v69;
          MEMORY[0x1EEE9AC00](v94);
          *(&v104 - 4) = v95;
          *(&v104 - 3) = a2;
          LOBYTE(v103) = v96;
          sub_1E5B5F5EC(v95, v97);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3C0, &qword_1E5BFE810);
          sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810, MEMORY[0x1E697D658]);
          v98 = v109;
          sub_1E5BF6C74();
          v99 = v110;
          v100 = v114;
          (*(v110 + 16))(v115, v98, v114);
          swift_storeEnumTagMultiPayload();
          sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
          sub_1E5BF2948();
          v79 = v116;
          sub_1E5BF6864();
          (*(v99 + 8))(v98, v100);
          goto LABEL_28;
        }

        if (v39 == 1)
        {
          v40 = *(v19 + 1);
          v105 = *v19;
          v107 = v40;
          v41 = *(v19 + 3);
          v104 = *(v19 + 2);
          v130 = v41;
          v106 = *(v19 + 4);
          v42 = v19[40];
          v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E970, &qword_1E5BFD440) + 48);
          v44 = sub_1E5BF6464();
          (*(*(v44 - 8) + 8))(&v19[v43], v44);
          goto LABEL_14;
        }

        sub_1E5B5F804(v19, &qword_1ED03E950, &unk_1E5BF95F0);
      }

      v62 = swift_allocObject();
      *(v62 + 16) = 0;
      *(v62 + 24) = 1025;
      *(v62 + 32) = v38;
      *(v62 + 40) = a2;
      *(v62 + 48) = v128 & 1;
      MEMORY[0x1EEE9AC00](v62);
      *(&v104 - 6) = 0;
      *(&v104 - 40) = 1;
      *(&v104 - 4) = v38;
      *(&v104 - 3) = a2;
      LOBYTE(v103) = v63;
      sub_1E5B5F5EC(v38, a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040ED0, &qword_1E5C06CB0);
      sub_1E5BF2AE8(&qword_1ED040ED8, &qword_1ED040ED0, &qword_1E5C06CB0, sub_1E5BF2B98);
      v64 = v126;
      sub_1E5BF6C84();
      v65 = v127;
      v66 = v134;
      (*(v127 + 16))(v132, v64, v134);
      swift_storeEnumTagMultiPayload();
      sub_1E5B5FC8C(&qword_1ED040E28, &qword_1ED040E30, &qword_1E5C06BB0, MEMORY[0x1E697D680]);
      sub_1E5BF2730();
      v67 = v131;
      sub_1E5BF6864();
      (*(v65 + 8))(v64, v66);
      v36 = v141;
LABEL_31:
      v101 = v67;
      v24 = v136;
      sub_1E5B5F8D4(v101, v136, &qword_1ED040E50, &qword_1E5C06BC0);
      v35 = 0;
      v37 = v137;
      goto LABEL_32;
    }

    sub_1E5B5F804(v29, &qword_1ED03E238, &unk_1E5BF8A10);
  }

  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = 1025;
  v46 = v138;
  *(v45 + 32) = v138;
  *(v45 + 40) = a2;
  *(v45 + 48) = v30;
  MEMORY[0x1EEE9AC00](v46);
  *(&v104 - 6) = 0;
  *(&v104 - 40) = 1;
  *(&v104 - 4) = v47;
  *(&v104 - 3) = a2;
  LOBYTE(v103) = v30;
  sub_1E5B5F5EC(v47, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040ED0, &qword_1E5C06CB0);
  sub_1E5BF2AE8(&qword_1ED040ED8, &qword_1ED040ED0, &qword_1E5C06CB0, sub_1E5BF2B98);
  sub_1E5BF6C84();
  KeyPath = swift_getKeyPath();
  v49 = swift_allocObject();
  *(v49 + 16) = 1;
  v50 = v141;
  v51 = &v24[*(v140 + 36)];
  *v51 = KeyPath;
  v51[1] = sub_1E5BF2CE4;
  v51[2] = v49;
  v52 = &qword_1ED040E20;
  v53 = &qword_1E5C06BA8;
  sub_1E5B5F864(v24, v50, &qword_1ED040E20, &qword_1E5C06BA8);
  swift_storeEnumTagMultiPayload();
  sub_1E5BF259C();
  sub_1E5BF2680();
LABEL_33:
  sub_1E5BF6864();
  return sub_1E5B5F804(v24, v52, v53);
}

uint64_t sub_1E5BF212C(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *a1;
  v9 = *(a5 + 40);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = 0;
  *(v10 + 25) = v9;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  *(v10 + 48) = a4 & 1;
  sub_1E5B5F5EC(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040ED0, &qword_1E5C06CB0);
  sub_1E5BF2AE8(&qword_1ED040ED8, &qword_1ED040ED0, &qword_1E5C06CB0, sub_1E5BF2B98);
  return sub_1E5BF6C84();
}

uint64_t sub_1E5BF2254(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040E98, &qword_1E5C06BE8);
  sub_1E5B5FC8C(&qword_1ED040EA0, &qword_1ED040E98, &qword_1E5C06BE8, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  sub_1E5BF6E44();
}

uint64_t sub_1E5BF233C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  sub_1E5BF09C8(v3, v4, v5, a1);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040DE8, &qword_1E5C06AB0) + 36));
  *v7 = sub_1E5BF2D5C;
  v7[1] = v6;
  v7[2] = 0;
  v7[3] = 0;

  return sub_1E5B5F5EC(v3, v4);
}

unint64_t sub_1E5BF2400()
{
  result = qword_1ED040DF0;
  if (!qword_1ED040DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040DE8, &qword_1E5C06AB0);
    sub_1E5BF248C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040DF0);
  }

  return result;
}

unint64_t sub_1E5BF248C()
{
  result = qword_1ED040DF8;
  if (!qword_1ED040DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040E00, &qword_1E5C06B98);
    sub_1E5BF2510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040DF8);
  }

  return result;
}

unint64_t sub_1E5BF2510()
{
  result = qword_1ED040E08;
  if (!qword_1ED040E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040E10, &qword_1E5C06BA0);
    sub_1E5BF259C();
    sub_1E5BF2680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040E08);
  }

  return result;
}

unint64_t sub_1E5BF259C()
{
  result = qword_1ED040E18;
  if (!qword_1ED040E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040E20, &qword_1E5C06BA8);
    sub_1E5B5FC8C(&qword_1ED040E28, &qword_1ED040E30, &qword_1E5C06BB0, MEMORY[0x1E697D680]);
    sub_1E5B5FC8C(&qword_1ED03E2A0, &qword_1ED03E2A8, &qword_1E5BF7CE8, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040E18);
  }

  return result;
}

unint64_t sub_1E5BF2680()
{
  result = qword_1ED040E38;
  if (!qword_1ED040E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040E40, &qword_1E5C06BB8);
    sub_1E5BF27E0(&qword_1ED040E48, &qword_1ED040E50, &qword_1E5C06BC0, sub_1E5BF2730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040E38);
  }

  return result;
}

unint64_t sub_1E5BF2730()
{
  result = qword_1ED040E58;
  if (!qword_1ED040E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040E60, &qword_1E5C06BC8);
    sub_1E5BF27E0(&qword_1ED040E68, &qword_1ED040E70, &qword_1E5C06BD0, sub_1E5BF2890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040E58);
  }

  return result;
}

uint64_t sub_1E5BF27E0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_1E5B5FC8C(&qword_1ED040E28, &qword_1ED040E30, &qword_1E5C06BB0, MEMORY[0x1E697D680]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5BF2890()
{
  result = qword_1ED040E78;
  if (!qword_1ED040E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040E80, &qword_1E5C06BD8);
    sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
    sub_1E5BF2948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040E78);
  }

  return result;
}

unint64_t sub_1E5BF2948()
{
  result = qword_1ED040E88;
  if (!qword_1ED040E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040E90, &qword_1E5C06BE0);
    sub_1E5B5FC8C(&qword_1ED040E28, &qword_1ED040E30, &qword_1E5C06BB0, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040E88);
  }

  return result;
}

uint64_t objectdestroy_2Tm_1(uint64_t a1)
{
  sub_1E5B5C0A8(*(v1 + 16), *(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_1E5BF2AE8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810, MEMORY[0x1E697D658]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5BF2BC8()
{
  result = qword_1ED040EF0;
  if (!qword_1ED040EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040EF8, &qword_1E5C06CC0);
    sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810, MEMORY[0x1E697D658]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040EF0);
  }

  return result;
}

uint64_t sub_1E5BF2C78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5BF67C4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E5BF2D7C()
{
  if (*v0)
  {
    return 0x656D7269666E6F63;
  }

  else
  {
    return 0x4F6D7269666E6F63;
  }
}

uint64_t sub_1E5BF2DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4F6D7269666E6F63 && a2 == 0xEF6563697665446ELL;
  if (v6 || (sub_1E5BF7444() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D7269666E6F63 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5BF7444();

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

uint64_t sub_1E5BF2EB4(uint64_t a1)
{
  v2 = sub_1E5BF3348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BF2EF0(uint64_t a1)
{
  v2 = sub_1E5BF3348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BF2F2C(uint64_t a1)
{
  v2 = sub_1E5BF33F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BF2F68(uint64_t a1)
{
  v2 = sub_1E5BF33F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BF2FA4(uint64_t a1)
{
  v2 = sub_1E5BF339C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BF2FE0(uint64_t a1)
{
  v2 = sub_1E5BF339C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CreatePlanHandoffAlertIconState.hashValue.getter(char a1)
{
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](a1 & 1);
  return sub_1E5BF7504();
}

uint64_t CreatePlanHandoffAlertIconState.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040F18, &qword_1E5C06D30);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040F20, &qword_1E5C06D38);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040F28, &qword_1E5C06D40);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BF3348();
  sub_1E5BF7524();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1E5BF339C();
    sub_1E5BF7394();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1E5BF33F0();
    sub_1E5BF7394();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_1E5BF3348()
{
  result = qword_1ED040F30;
  if (!qword_1ED040F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040F30);
  }

  return result;
}

unint64_t sub_1E5BF339C()
{
  result = qword_1ED040F38;
  if (!qword_1ED040F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040F38);
  }

  return result;
}

unint64_t sub_1E5BF33F0()
{
  result = qword_1ED040F40;
  if (!qword_1ED040F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040F40);
  }

  return result;
}

uint64_t sub_1E5BF3460@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E5BF34AC(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_1E5BF34AC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040F88, &qword_1E5C070C0);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040F90, &qword_1E5C070C8);
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040F98, &qword_1E5C070D0);
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BF3348();
  v11 = v26;
  sub_1E5BF7514();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_1E5BF7374();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_1E5B7FB0C();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_1E5BF7284();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770);
    *v19 = &type metadata for CreatePlanHandoffAlertIconState;
    sub_1E5BF72D4();
    sub_1E5BF7274();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
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
    sub_1E5BF339C();
    sub_1E5BF72C4();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_1E5BF33F0();
    sub_1E5BF72C4();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v31 & 1;
}

unint64_t sub_1E5BF396C()
{
  result = qword_1ED040F48;
  if (!qword_1ED040F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040F48);
  }

  return result;
}

unint64_t sub_1E5BF3A04()
{
  result = qword_1ED040F50;
  if (!qword_1ED040F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040F50);
  }

  return result;
}

unint64_t sub_1E5BF3A5C()
{
  result = qword_1ED040F58;
  if (!qword_1ED040F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040F58);
  }

  return result;
}

unint64_t sub_1E5BF3AB4()
{
  result = qword_1ED040F60;
  if (!qword_1ED040F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040F60);
  }

  return result;
}

unint64_t sub_1E5BF3B0C()
{
  result = qword_1ED040F68;
  if (!qword_1ED040F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040F68);
  }

  return result;
}

unint64_t sub_1E5BF3B64()
{
  result = qword_1ED040F70;
  if (!qword_1ED040F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040F70);
  }

  return result;
}

unint64_t sub_1E5BF3BBC()
{
  result = qword_1ED040F78;
  if (!qword_1ED040F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040F78);
  }

  return result;
}

unint64_t sub_1E5BF3C14()
{
  result = qword_1ED040F80;
  if (!qword_1ED040F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040F80);
  }

  return result;
}

uint64_t ActionContext.identifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(a1 + 16);
  if (EnumCaseMultiPayload != 1)
  {
    return (*(*(v9 - 8) + 32))(a2, v6, *(a1 + 16));
  }

  v10 = *(a1 + 24);
  v11 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(v9 - 8) + 32))(a2, v6, v9);
  return (*(*(v10 - 8) + 8))(&v6[v11], v10);
}

uint64_t static ActionContext.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a1;
  v62 = a2;
  v60 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v54 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = v52 - v7;
  v63 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v58 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v52[1] = v13;
  v53 = v52 - v12;
  v64[0] = v14;
  v64[1] = v15;
  v57 = v15;
  v64[2] = v16;
  v64[3] = v17;
  v55 = v18;
  v64[4] = v18;
  v64[5] = v19;
  v64[6] = v20;
  v64[7] = v13;
  v21 = type metadata accessor for ActionContext(0, v64);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v52 - v26;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v29 = *(TupleTypeMetadata2 - 8);
  v30 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v32 = v52 - v31;
  v34 = v52 + *(v33 + 48) - v31;
  v56 = v22;
  v35 = *(v22 + 16);
  v35(v52 - v31, v61, v21, v30);
  (v35)(v34, v62, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (v35)(v24, v32, v21);
    v36 = v57;
    v37 = *(swift_getTupleTypeMetadata2() + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v38 = v63;
      (*(v63 + 32))(v58, v34, a3);
      v39 = *(v60 + 32);
      v39(v59, &v24[v37], v36);
      v40 = &v34[v37];
      v41 = v54;
      v39(v54, v40, v36);
      v42 = v58;
      v43 = sub_1E5BF6F14();
      v44 = *(v38 + 8);
      v44(v24, a3);
      if (v43)
      {
        v45 = sub_1E5BF6F14();
        v46 = *(v60 + 8);
        v46(v41, v36);
        v46(v59, v36);
        v44(v58, a3);
      }

      else
      {
        v50 = *(v60 + 8);
        v50(v41, v36);
        v50(v59, v36);
        v44(v42, a3);
        v45 = 0;
      }

      goto LABEL_11;
    }

    (*(v60 + 8))(&v24[v37], v36);
  }

  else
  {
    (v35)(v27, v32, v21);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v47 = v63;
      v48 = v53;
      (*(v63 + 32))(v53, v34, a3);
      v45 = sub_1E5BF6F14();
      v49 = *(v47 + 8);
      v49(v48, a3);
      v49(v27, a3);
LABEL_11:
      v29 = v56;
      goto LABEL_12;
    }

    v24 = v27;
  }

  (*(v63 + 8))(v24, a3);
  v45 = 0;
  v21 = TupleTypeMetadata2;
LABEL_12:
  (*(v29 + 8))(v32, v21);
  return v45 & 1;
}

uint64_t sub_1E5BF43B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E5BF7444();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E5BF44FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5BF4550(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5BF45A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5BC595C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E5BF45F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5B600CC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E5BF4630(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5BF4684(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5BF47A4(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void, void, void, void, void, void, void))
{
  sub_1E5BF74B4();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], a2[8], a2[9]);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BF4850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5BF43B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5BF4898@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9]);
  *a3 = result;
  return result;
}

uint64_t sub_1E5BF48DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5BF4930(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ActionContext.encode(to:)(void *a1, void *a2)
{
  v58 = a1;
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v9 = a2[9];
  v66 = a2[8];
  v67 = v5;
  v68 = v4;
  v69 = v3;
  v70 = v5;
  v71 = v6;
  v10 = v5;
  v76 = v6;
  v72 = v7;
  v73 = v8;
  v74 = v66;
  v75 = v9;
  v62 = v9;
  v54 = type metadata accessor for ActionContext.StateCodingKeys(255, &v68);
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1E5BF7434();
  v56 = *(v11 - 8);
  v57 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v45 - v12;
  v52 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v4;
  v69 = v3;
  v70 = v10;
  v71 = v6;
  v72 = v7;
  v73 = v8;
  v15 = v66;
  v74 = v66;
  v75 = v9;
  v16 = type metadata accessor for ActionContext.IdentifierCodingKeys(255, &v68);
  v17 = swift_getWitnessTable();
  v49 = v16;
  v47 = v17;
  v51 = sub_1E5BF7434();
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v45 - v18;
  v59 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v61 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v46 = &v45 - v22;
  v23 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v4;
  v69 = v3;
  v64 = v3;
  v70 = v67;
  v71 = v76;
  v72 = v7;
  v73 = v8;
  v74 = v15;
  v75 = v62;
  type metadata accessor for ActionContext.CodingKeys(255, &v68);
  swift_getWitnessTable();
  v67 = sub_1E5BF7434();
  v62 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v28 = &v45 - v27;
  __swift_project_boxed_opaque_existential_1(v58, v58[3]);
  sub_1E5BF7524();
  (*(v23 + 16))(v26, v60, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = v64;
    v30 = *(swift_getTupleTypeMetadata2() + 48);
    v31 = v59;
    (*(v59 + 32))(v61, v26, v4);
    v32 = v52;
    v33 = &v26[v30];
    v34 = v55;
    (*(v52 + 32))(v55, v33, v29);
    LOBYTE(v68) = 1;
    sub_1E5BF7394();
    LOBYTE(v68) = 0;
    v35 = v57;
    v36 = v63;
    sub_1E5BF7424();
    v37 = v31;
    if (v36)
    {
      (*(v56 + 8))(v65, v35);
      (*(v32 + 8))(v34, v64);
    }

    else
    {
      LOBYTE(v68) = 1;
      v44 = v64;
      sub_1E5BF7424();
      (*(v56 + 8))(v65, v35);
      (*(v32 + 8))(v34, v44);
    }

    (*(v37 + 8))(v61, v4);
    return (*(v62 + 8))(v28, v67);
  }

  else
  {
    v38 = v59;
    v39 = v46;
    (*(v59 + 32))(v46, v26, v4);
    LOBYTE(v68) = 0;
    v40 = v48;
    v41 = v67;
    sub_1E5BF7394();
    v42 = v51;
    sub_1E5BF7424();
    (*(v50 + 8))(v40, v42);
    (*(v38 + 8))(v39, v4);
    return (*(v62 + 8))(v28, v41);
  }
}

uint64_t ActionContext.hash(into:)(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v2, a2, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v10 + 32))(v13, v17, v9);
    (*(v5 + 32))(v7, &v17[v19], v4);
    MEMORY[0x1E6937C10](1);
    sub_1E5BF6EF4();
    sub_1E5BF6EF4();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    MEMORY[0x1E6937C10](0);
    sub_1E5BF6EF4();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t ActionContext.hashValue.getter(void *a1)
{
  sub_1E5BF74B4();
  ActionContext.hash(into:)(v3, a1);
  return sub_1E5BF7504();
}

uint64_t ActionContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v90 = a1;
  v73 = a9;
  *&v84 = a2;
  *(&v84 + 1) = a3;
  *&v85 = a4;
  *(&v85 + 1) = a5;
  v86 = a6;
  v87 = a7;
  v88 = a8;
  v89 = a10;
  v70 = type metadata accessor for ActionContext.StateCodingKeys(255, &v84);
  WitnessTable = swift_getWitnessTable();
  v65 = sub_1E5BF7384();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v77 = &v58 - v17;
  *&v84 = a2;
  *(&v84 + 1) = a3;
  *&v85 = a4;
  *(&v85 + 1) = a5;
  v79 = a5;
  v86 = a6;
  v87 = a7;
  v88 = a8;
  v89 = a10;
  v18 = type metadata accessor for ActionContext.IdentifierCodingKeys(255, &v84);
  v19 = swift_getWitnessTable();
  v69 = v18;
  v68 = v19;
  v63 = sub_1E5BF7384();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v75 = &v58 - v20;
  *&v84 = a2;
  *(&v84 + 1) = a3;
  *&v85 = a4;
  *(&v85 + 1) = a5;
  v86 = a6;
  v87 = a7;
  v21 = a6;
  v88 = a8;
  v89 = a10;
  type metadata accessor for ActionContext.CodingKeys(255, &v84);
  v80 = swift_getWitnessTable();
  v76 = sub_1E5BF7384();
  v78 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v23 = &v58 - v22;
  v66 = a2;
  *&v84 = a2;
  *(&v84 + 1) = a3;
  v60 = a3;
  v67 = a4;
  *&v85 = a4;
  *(&v85 + 1) = v79;
  v86 = v21;
  v87 = a7;
  v61 = a7;
  v88 = a8;
  v89 = a10;
  v24 = v90;
  v74 = type metadata accessor for ActionContext(0, &v84);
  v72 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v58 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v58 - v31;
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  v79 = v23;
  v33 = v81;
  sub_1E5BF7514();
  if (v33)
  {
    v34 = v24;
  }

  else
  {
    v80 = v29;
    v81 = v26;
    v35 = v75;
    v59 = v32;
    v37 = v76;
    v36 = v77;
    v38 = v79;
    *&v82 = sub_1E5BF7374();
    sub_1E5BF7044();
    swift_getWitnessTable();
    *&v84 = sub_1E5BF7224();
    *(&v84 + 1) = v39;
    *&v85 = v40;
    *(&v85 + 1) = v41;
    sub_1E5BF7214();
    swift_getWitnessTable();
    sub_1E5BF7164();
    v42 = v82;
    if (v82 == 2 || (v58 = v84, v82 = v84, v83 = v85, (sub_1E5BF7174() & 1) == 0))
    {
      v45 = sub_1E5BF7284();
      swift_allocError();
      v46 = v38;
      v48 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770);
      *v48 = v74;
      sub_1E5BF72D4();
      sub_1E5BF7274();
      (*(*(v45 - 8) + 104))(v48, *MEMORY[0x1E69E6AF8], v45);
      swift_willThrow();
      (*(v78 + 8))(v46, v37);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v42)
      {
        LOBYTE(v82) = 1;
        sub_1E5BF72C4();
        v43 = v73;
        LOBYTE(v82) = 0;
        v44 = v65;
        sub_1E5BF7364();
        swift_getTupleTypeMetadata2();
        LOBYTE(v82) = 1;
        sub_1E5BF7364();
        (*(v64 + 8))(v36, v44);
        (*(v78 + 8))(v38, v37);
        swift_unknownObjectRelease();
        v53 = v81;
        v54 = v74;
        swift_storeEnumTagMultiPayload();
        v55 = v72;
      }

      else
      {
        LOBYTE(v82) = 0;
        v50 = v35;
        sub_1E5BF72C4();
        v43 = v73;
        v55 = v72;
        v53 = v80;
        v51 = v63;
        sub_1E5BF7364();
        v52 = v78;
        (*(v62 + 8))(v50, v51);
        (*(v52 + 8))(v38, v37);
        swift_unknownObjectRelease();
        v54 = v74;
        swift_storeEnumTagMultiPayload();
      }

      v56 = *(v55 + 32);
      v57 = v59;
      v56(v59, v53, v54);
      v56(v43, v57, v54);
    }

    v34 = v90;
  }

  return __swift_destroy_boxed_opaque_existential_1(v34);
}

uint64_t sub_1E5BF5E24(uint64_t a1, void *a2)
{
  sub_1E5BF74B4();
  ActionContext.hash(into:)(v4, a2);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BF5EC0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (((v3 + *(*(*(a3 + 24) - 8) + 80)) & ~*(*(*(a3 + 24) - 8) + 80)) + *(*(*(a3 + 24) - 8) + 64) <= v3)
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v4 = ((v3 + *(*(*(a3 + 24) - 8) + 80)) & ~*(*(*(a3 + 24) - 8) + 80)) + *(*(*(a3 + 24) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 < 2)
    {
LABEL_26:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_26;
  }

LABEL_15:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1E5BF6024(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = ((v5 + *(*(*(a4 + 24) - 8) + 80)) & ~*(*(*(a4 + 24) - 8) + 80)) + *(*(*(a4 + 24) - 8) + 64);
  if (v6 <= v5)
  {
    v6 = *(*(*(a4 + 16) - 8) + 64);
  }

  v7 = v6 + 1;
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 254) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v7 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v6 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_39:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v6] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_24;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}