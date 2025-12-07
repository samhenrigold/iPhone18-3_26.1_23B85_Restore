uint64_t sub_255D9948C@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6628, &unk_255E3E120);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  sub_255D98968((&v10 - v6));
  sub_255D3957C(v7, v5, &qword_27F7E6628, &unk_255E3E120);
  sub_255D4CC48();
  v8 = sub_255E3A038();
  result = sub_255D395E4(v7, &qword_27F7E6628, &unk_255E3E120);
  *a1 = v8;
  return result;
}

unint64_t sub_255D995F4()
{
  result = qword_27F7E78B8;
  if (!qword_27F7E78B8)
  {
    result = swift_getWitnessTable(aE_3, &type metadata for HStackView, v0, v1);
    atomic_store(result, &qword_27F7E78B8);
  }

  return result;
}

uint64_t sub_255D99648@<X0>(uint64_t *a1@<X8>)
{
  v14 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6650, &unk_255E3E130);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = *(v1 + 32);
  *(&v14 - v6) = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6660, &qword_255E4D0F0);
  v15 = v8;
  KeyPath = swift_getKeyPath();

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
  v11 = sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0, MEMORY[0x277D83980]);
  sub_255E3A0E8(&v15, KeyPath, sub_255D5F848, 0, v10, MEMORY[0x277CE11C8], v11, MEMORY[0x277D837E0], MEMORY[0x277CE11C0]);
  sub_255D3957C(v7, v5, &qword_27F7E6650, &unk_255E3E130);
  sub_255D38950(&qword_27F7E6658, &qword_27F7E6650, &unk_255E3E130, MEMORY[0x277CE11A8]);
  v12 = sub_255E3A038();
  result = sub_255D395E4(v7, &qword_27F7E6650, &unk_255E3E130);
  *v14 = v12;
  return result;
}

uint64_t sub_255D99850@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6660, &qword_255E4D0F0);
  v7 = v2;
  KeyPath = swift_getKeyPath();

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
  v5 = sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0, MEMORY[0x277D83980]);
  return sub_255E3A0E8(&v7, KeyPath, sub_255D5F848, 0, v4, MEMORY[0x277CE11C8], v5, MEMORY[0x277D837E0], MEMORY[0x277CE11C0]);
}

double sub_255D9995C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_255D9B958(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

unint64_t sub_255D999E8()
{
  result = qword_27F7E78C0;
  if (!qword_27F7E78C0)
  {
    result = swift_getWitnessTable(aA_8, &type metadata for ZStackView, v0, v1);
    atomic_store(result, &qword_27F7E78C0);
  }

  return result;
}

uint64_t sub_255D99A48()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D99B28(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D99BF4(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255D99CD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D9C1C8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255D99D00(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE900000000000074;
  v6 = 0x6E656D6E67696C61;
  v7 = 0xE500000000000000;
  v8 = 0x7377656976;
  if (v2 != 3)
  {
    v8 = 0x695664656E6E6970;
    v7 = 0xEB00000000737765;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x676E6963617073;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_255D99D9C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6E656D6E67696C61;
  v4 = 0x7377656976;
  if (v1 != 3)
  {
    v4 = 0x695664656E6E6970;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E6963617073;
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

unint64_t sub_255D99E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255D9C1C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255D99E5C(uint64_t a1)
{
  v2 = sub_255D9B7FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D99E98(uint64_t a1)
{
  v2 = sub_255D9B7FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D99ED4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7920, &unk_255E4D0C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v23 - v4;
  v6 = sub_255E393D8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - v11;
  v13 = v1[5];
  v14 = v1[7];
  v37 = v1[6];
  v38 = v14;
  v39 = *(v1 + 16);
  v15 = v1[3];
  v33 = v1[2];
  v34 = v15;
  v35 = v1[4];
  v36 = v13;
  v16 = v1[1];
  v31 = *v1;
  v32 = v16;
  v17 = *(v1 + 88);
  v41 = *(v1 + 72);
  v42[0] = v17;
  *(v42 + 9) = *(v1 + 97);
  v40 = *(v1 + 56);
  if (BYTE8(v41) == 254)
  {
    (*(v7 + 56))(v5, 1, 1, v6);
    LODWORD(v28) = 0;
    sub_255D9B784(&qword_27F7E71A8, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
    sub_255E3AE98();
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      sub_255D395E4(v5, &qword_27F7E7920, &unk_255E4D0C0);
    }
  }

  else
  {
    v28 = *(v1 + 56);
    *&v29 = *(v1 + 9);
    *(&v29 + 1) = *(&v41 + 1);
    v30[0] = *(v1 + 88);
    *(v30 + 9) = *(v1 + 97);
    if (!*(&v38 + 1))
    {
      v22 = *(v1 + 72);
      v25 = *(v1 + 56);
      v26 = v22;
      v27[0] = *(v1 + 88);
      *(v27 + 9) = *(v1 + 97);
      sub_255D736B4(&v25, &v24);
      type metadata accessor for RemoteStateStore(0);
      sub_255D9B784(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
      result = sub_255E38CB8();
      __break(1u);
      return result;
    }

    sub_255D3957C(&v40, &v25, &qword_27F7E7928, &unk_255E4D0D0);

    sub_255D72C00(v18, v5);

    v25 = v28;
    v26 = v29;
    v27[0] = v30[0];
    *(v27 + 9) = *(v30 + 9);
    sub_255D736EC(&v25);
    (*(v7 + 56))(v5, 0, 1, v6);
    (*(v7 + 32))(v12, v5, v6);
  }

  v23[1] = a1;
  if (v32 <= 1u)
  {
    if (v32)
    {
      v19 = sub_255E390F8();
    }

    else
    {
      v19 = sub_255E39108();
    }
  }

  else if (v32 == 2)
  {
    v19 = sub_255E39118();
  }

  else if (v32 == 3)
  {
    v19 = sub_255E390D8();
  }

  else
  {
    v19 = sub_255E390E8();
  }

  v23[0] = v19;
  v20 = (*(v7 + 16))(v10, v12, v6);
  MEMORY[0x28223BE20](v20);
  v23[-2] = &v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6700, &unk_255E53840);
  sub_255D6FC70();
  sub_255E38828();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_255D9A3C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6680, &qword_255E3E170);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  sub_255D99ED4(&v11 - v7);
  (*(v3 + 16))(v6, v8, v2);
  sub_255D38950(&qword_27F7E6688, &qword_27F7E6680, &qword_255E3E170, MEMORY[0x277CDF340]);
  v9 = sub_255E3A038();
  result = (*(v3 + 8))(v8, v2);
  *a1 = v9;
  return result;
}

unint64_t sub_255D9A57C()
{
  result = qword_27F7E78C8;
  if (!qword_27F7E78C8)
  {
    result = swift_getWitnessTable(asc_255E4CFEC, &type metadata for LazyVStackView, v0, v1);
    atomic_store(result, &qword_27F7E78C8);
  }

  return result;
}

uint64_t sub_255D9A5D0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7920, &unk_255E4D0C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v23 - v4;
  v6 = sub_255E393D8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - v11;
  v13 = v1[5];
  v14 = v1[7];
  v37 = v1[6];
  v38 = v14;
  v39 = *(v1 + 16);
  v15 = v1[3];
  v33 = v1[2];
  v34 = v15;
  v35 = v1[4];
  v36 = v13;
  v16 = v1[1];
  v31 = *v1;
  v32 = v16;
  v17 = *(v1 + 88);
  v41 = *(v1 + 72);
  v42[0] = v17;
  *(v42 + 9) = *(v1 + 97);
  v40 = *(v1 + 56);
  if (BYTE8(v41) == 254)
  {
    (*(v7 + 56))(v5, 1, 1, v6);
    LODWORD(v28) = 0;
    sub_255D9B784(&qword_27F7E71A8, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
    sub_255E3AE98();
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      sub_255D395E4(v5, &qword_27F7E7920, &unk_255E4D0C0);
    }
  }

  else
  {
    v28 = *(v1 + 56);
    *&v29 = *(v1 + 9);
    *(&v29 + 1) = *(&v41 + 1);
    v30[0] = *(v1 + 88);
    *(v30 + 9) = *(v1 + 97);
    if (!*(&v38 + 1))
    {
      v22 = *(v1 + 72);
      v25 = *(v1 + 56);
      v26 = v22;
      v27[0] = *(v1 + 88);
      *(v27 + 9) = *(v1 + 97);
      sub_255D736B4(&v25, &v24);
      type metadata accessor for RemoteStateStore(0);
      sub_255D9B784(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
      result = sub_255E38CB8();
      __break(1u);
      return result;
    }

    sub_255D3957C(&v40, &v25, &qword_27F7E7928, &unk_255E4D0D0);

    sub_255D72C00(v18, v5);

    v25 = v28;
    v26 = v29;
    v27[0] = v30[0];
    *(v27 + 9) = *(v30 + 9);
    sub_255D736EC(&v25);
    (*(v7 + 56))(v5, 0, 1, v6);
    (*(v7 + 32))(v12, v5, v6);
  }

  v23[1] = a1;
  if (v32 <= 1u)
  {
    if (v32)
    {
      v19 = sub_255E38E08();
    }

    else
    {
      v19 = sub_255E38DE8();
    }
  }

  else if (v32 == 2)
  {
    v19 = sub_255E38DF8();
  }

  else if (v32 == 3)
  {
    v19 = sub_255E38DD8();
  }

  else
  {
    v19 = sub_255E38DC8();
  }

  v23[0] = v19;
  v20 = (*(v7 + 16))(v10, v12, v6);
  MEMORY[0x28223BE20](v20);
  v23[-2] = &v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6700, &unk_255E53840);
  sub_255D6FC70();
  sub_255E38818();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_255D9AA70(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 40);
  KeyPath = swift_getKeyPath();

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
  v5 = sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0, MEMORY[0x277D83980]);
  return sub_255E3A0E8(&v7, KeyPath, a2, 0, v4, MEMORY[0x277CE11C8], v5, MEMORY[0x277D837E0], MEMORY[0x277CE11C0]);
}

uint64_t sub_255D9ABA4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void, void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v54 = a4;
  v55 = a5;
  v56 = a3;
  v57 = a2;
  v6 = sub_255E385D8();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7930, &unk_255E4D0E0);
  v60 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  type metadata accessor for RemoteStateStore(0);
  sub_255D9B784(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  v105 = sub_255E38CC8();
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D9B7FC();
  v14 = v61;
  sub_255E3AE28();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 254;
    v79 = 0;
    v80 = 0;
    v78 = 0;
    LOBYTE(v81) = 0;
    sub_255D395E4(&v74, &qword_27F7E7928, &unk_255E4D0D0);
  }

  else
  {
    v15 = v8;
    v16 = a1;
    LOBYTE(v74) = 0;
    v17 = sub_255E3AB88();
    if (v18)
    {
      v53 = v17;
      v20 = v11;
      v61 = v18;
    }

    else
    {
      v20 = v11;
      sub_255E385C8();
      v53 = sub_255E385B8();
      v61 = v21;
      (*(v58 + 8))(v15, v59);
    }

    LOBYTE(v65) = 1;
    sub_255D9B850();
    v22 = v9;
    v23 = v20;
    sub_255E3ABA8();
    v24 = v74;
    v103 = v75;
    LOBYTE(v74) = 2;
    v25 = sub_255E3AB88();
    v59 = v24;
    if (v26)
    {
      v27 = v57(v25);
      if (v27 == 5)
      {
        v28 = 1;
      }

      else
      {
        v28 = v27;
      }
    }

    else
    {
      v28 = 1;
    }

    LODWORD(v58) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C10, &qword_255E57E50);
    LOBYTE(v65) = 3;
    sub_255D5F038();
    sub_255E3ABA8();
    if (v74)
    {
      v29 = v74;
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
    }

    v30 = v22;
    v31 = sub_255D48968(v29);

    v92 = 4;
    sub_255D9B8A4();
    sub_255E3ABA8();
    (*(v60 + 8))(v23, v30);
    v32 = v93;
    v33 = v94;
    v49 = v94;
    v50 = v93;
    v34 = v95;
    v48 = v95;
    v46 = v96;
    v60 = v97;
    v57 = v98;
    v52 = v99;
    v51 = v100;
    memset(v62, 0, sizeof(v62));
    v63 = 254;
    memset(v64, 0, sizeof(v64));
    sub_255D395E4(v62, &qword_27F7E7928, &unk_255E4D0D0);
    *&v65 = v53;
    *(&v65 + 1) = v61;
    LOBYTE(v66) = v58;
    *(&v66 + 1) = v104[0];
    DWORD1(v66) = *(v104 + 3);
    *(&v66 + 1) = v59;
    v47 = v103;
    LOBYTE(v67) = v103;
    *(&v67 + 1) = *v102;
    DWORD1(v67) = *&v102[3];
    *(&v67 + 1) = v31;
    *&v68 = MEMORY[0x277D84F90];
    *(&v68 + 1) = v32;
    *&v69 = v33;
    *(&v69 + 1) = v34;
    v35 = v46;
    *&v70 = v46;
    *(&v70 + 1) = v60;
    *&v71 = v57;
    *(&v71 + 1) = v52;
    LOBYTE(v72) = v51;
    *(&v72 + 1) = *v101;
    DWORD1(v72) = *&v101[3];
    v36 = v105;
    *(&v72 + 1) = v105;
    v73 = v13;
    v37 = v65;
    v38 = v66;
    v39 = v68;
    v41 = v55;
    v40 = v56;
    *(v55 + 32) = v67;
    *(v41 + 48) = v39;
    *v41 = v37;
    *(v41 + 16) = v38;
    v42 = v69;
    v43 = v70;
    v44 = v71;
    v45 = v72;
    *(v41 + 128) = v13;
    *(v41 + 96) = v44;
    *(v41 + 112) = v45;
    *(v41 + 64) = v42;
    *(v41 + 80) = v43;
    v40(&v65, &v74);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    v74 = v53;
    v75 = v61;
    LOBYTE(v76) = v58;
    *(&v76 + 1) = v104[0];
    HIDWORD(v76) = *(v104 + 3);
    v77 = v59;
    LOBYTE(v78) = v47;
    *(&v78 + 1) = *v102;
    HIDWORD(v78) = *&v102[3];
    v79 = v31;
    v80 = MEMORY[0x277D84F90];
    v81 = v50;
    v82 = v49;
    v83 = v48;
    v84 = v35;
    v85 = v60;
    v86 = v57;
    v87 = v52;
    v88 = v51;
    *&v89[3] = *&v101[3];
    *v89 = *v101;
    v90 = v36;
    v91 = v13;
    return v54(&v74);
  }
}

uint64_t sub_255D9B238@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6698, &qword_255E3E178);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  sub_255D9A5D0(&v11 - v7);
  (*(v3 + 16))(v6, v8, v2);
  sub_255D38950(&qword_27F7E66A0, &qword_27F7E6698, &qword_255E3E178, MEMORY[0x277CDF330]);
  v9 = sub_255E3A038();
  result = (*(v3 + 8))(v8, v2);
  *a1 = v9;
  return result;
}

uint64_t sub_255D9B3EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  a4(a1, a2, a3);
  a5();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_255D9B45C()
{
  result = qword_27F7E78D0;
  if (!qword_27F7E78D0)
  {
    result = swift_getWitnessTable(byte_255E4CFD0, &type metadata for LazyHStackView, v0, v1);
    atomic_store(result, &qword_27F7E78D0);
  }

  return result;
}

unint64_t sub_255D9B4B0(uint64_t a1)
{
  result = sub_255D9B4D8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D9B4D8()
{
  result = qword_27F7E78D8;
  if (!qword_27F7E78D8)
  {
    result = swift_getWitnessTable(byte_255E4CF3C, &type metadata for LazyHStackView, v0, v1);
    atomic_store(result, &qword_27F7E78D8);
  }

  return result;
}

unint64_t sub_255D9B52C(uint64_t a1)
{
  result = sub_255D9B554();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D9B554()
{
  result = qword_27F7E78E0;
  if (!qword_27F7E78E0)
  {
    result = swift_getWitnessTable(aQ_3, &type metadata for LazyVStackView, v0, v1);
    atomic_store(result, &qword_27F7E78E0);
  }

  return result;
}

unint64_t sub_255D9B5A8(uint64_t a1)
{
  result = sub_255D9B5D0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D9B5D0()
{
  result = qword_27F7E78E8;
  if (!qword_27F7E78E8)
  {
    result = swift_getWitnessTable(byte_255E4CDF4, &type metadata for ZStackView, v0, v1);
    atomic_store(result, &qword_27F7E78E8);
  }

  return result;
}

unint64_t sub_255D9B624(uint64_t a1)
{
  result = sub_255D9B64C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D9B64C()
{
  result = qword_27F7E78F0;
  if (!qword_27F7E78F0)
  {
    result = swift_getWitnessTable(byte_255E4CD50, &type metadata for HStackView, v0, v1);
    atomic_store(result, &qword_27F7E78F0);
  }

  return result;
}

unint64_t sub_255D9B6A0(uint64_t a1)
{
  result = sub_255D9B6C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D9B6C8()
{
  result = qword_27F7E78F8;
  if (!qword_27F7E78F8)
  {
    result = swift_getWitnessTable(asc_255E4CCAC, &type metadata for VStackView, v0, v1);
    atomic_store(result, &qword_27F7E78F8);
  }

  return result;
}

uint64_t sub_255D9B71C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_255D9B784(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_255D9B7FC()
{
  result = qword_27F7E7938;
  if (!qword_27F7E7938)
  {
    result = swift_getWitnessTable(byte_255E4D368, &type metadata for LazyStackViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7938);
  }

  return result;
}

unint64_t sub_255D9B850()
{
  result = qword_27F7E7940;
  if (!qword_27F7E7940)
  {
    result = swift_getWitnessTable(MEMORY[0x277D85080], MEMORY[0x277D85048], v0, v1);
    atomic_store(result, &qword_27F7E7940);
  }

  return result;
}

unint64_t sub_255D9B8A4()
{
  result = qword_27F7E7948;
  if (!qword_27F7E7948)
  {
    result = swift_getWitnessTable(aIf, &type metadata for PinnedScrollableViewsOptions, v0, v1);
    atomic_store(result, &qword_27F7E7948);
  }

  return result;
}

double sub_255D9B958@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v38 = a2;
  v3 = sub_255E385D8();
  v36 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7950, &qword_255E4D0F8);
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  type metadata accessor for RemoteStateStore(0);
  sub_255D9B784(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  v40 = sub_255E38CC8();
  v10 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D9BE14();
  v11 = v39;
  sub_255E3AE28();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    return result;
  }

  v35 = v10;
  v39 = a1;
  v13 = v37;
  v12 = v38;
  LOBYTE(v45) = 0;
  v14 = sub_255E3AB88();
  if (v15)
  {
    *&v34 = v14;
    *(&v34 + 1) = v15;
  }

  else
  {
    sub_255E385C8();
    *&v34 = sub_255E385B8();
    *(&v34 + 1) = v17;
    (*(v36 + 8))(v5, v3);
  }

  v18 = v12;
  LOBYTE(v41) = 2;
  sub_255D9BE68();
  sub_255E3ABA8();
  v19 = v13;
  if (v45 <= 4u)
  {
    if (v45 > 1u)
    {
      if (v45 == 2)
      {
        v20 = sub_255E3A248();
      }

      else if (v45 == 3)
      {
        v20 = sub_255E3A208();
      }

      else
      {
        v20 = sub_255E3A218();
      }

      goto LABEL_25;
    }

    if (v45)
    {
      v20 = sub_255E3A238();
      goto LABEL_25;
    }

LABEL_17:
    v20 = sub_255E3A228();
    goto LABEL_25;
  }

  if (v45 > 6u)
  {
    if (v45 == 7)
    {
      v20 = sub_255E3A1E8();
      goto LABEL_25;
    }

    if (v45 == 8)
    {
      v20 = sub_255E3A1F8();
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v45 == 5)
  {
    v20 = sub_255E3A1C8();
  }

  else
  {
    v20 = sub_255E3A1D8();
  }

LABEL_25:
  v22 = v20;
  v23 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C10, &qword_255E57E50);
  LOBYTE(v45) = 3;
  sub_255D5F038();
  sub_255E3ABA8();
  if (v52)
  {
    v24 = v52;
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v25 = v8;
  v26 = v19;
  v27 = sub_255D48968(v24);

  (*(v26 + 8))(v25, v6);
  v28 = v34;
  v41 = v34;
  *&v42 = v22;
  *(&v42 + 1) = v23;
  *&v43 = v27;
  v29 = v40;
  *(&v43 + 1) = MEMORY[0x277D84F90];
  *&v44 = v40;
  v30 = v35;
  *(&v44 + 1) = v35;
  sub_255D4CDFC(&v41, &v45);
  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  v45 = v28;
  v46 = v22;
  v47 = v23;
  v48 = v27;
  v49 = MEMORY[0x277D84F90];
  v50 = v29;
  v51 = v30;
  sub_255D9BEBC(&v45);
  v31 = v42;
  *v18 = v41;
  v18[1] = v31;
  result = *&v43;
  v32 = v44;
  v18[2] = v43;
  v18[3] = v32;
  return result;
}

unint64_t sub_255D9BE14()
{
  result = qword_27F7E7958;
  if (!qword_27F7E7958)
  {
    result = swift_getWitnessTable(byte_255E4D318, &type metadata for StackViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7958);
  }

  return result;
}

unint64_t sub_255D9BE68()
{
  result = qword_27F7E7960;
  if (!qword_27F7E7960)
  {
    result = swift_getWitnessTable(asc_255E59DE4, &type metadata for AlignmentType, v0, v1);
    atomic_store(result, &qword_27F7E7960);
  }

  return result;
}

unint64_t sub_255D9BF70()
{
  result = qword_27F7E7968;
  if (!qword_27F7E7968)
  {
    result = swift_getWitnessTable(byte_255E4D200, &type metadata for LazyStackViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7968);
  }

  return result;
}

unint64_t sub_255D9BFC8()
{
  result = qword_27F7E7970;
  if (!qword_27F7E7970)
  {
    result = swift_getWitnessTable(byte_255E4D2F0, &type metadata for StackViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7970);
  }

  return result;
}

unint64_t sub_255D9C020()
{
  result = qword_27F7E7978;
  if (!qword_27F7E7978)
  {
    result = swift_getWitnessTable(aY_7, &type metadata for StackViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7978);
  }

  return result;
}

unint64_t sub_255D9C078()
{
  result = qword_27F7E7980;
  if (!qword_27F7E7980)
  {
    result = swift_getWitnessTable(byte_255E4D250, &type metadata for StackViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7980);
  }

  return result;
}

unint64_t sub_255D9C0D0()
{
  result = qword_27F7E7988;
  if (!qword_27F7E7988)
  {
    result = swift_getWitnessTable(aI_2, &type metadata for LazyStackViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7988);
  }

  return result;
}

unint64_t sub_255D9C128()
{
  result = qword_27F7E7990;
  if (!qword_27F7E7990)
  {
    result = swift_getWitnessTable(aY_8, &type metadata for LazyStackViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7990);
  }

  return result;
}

unint64_t sub_255D9C17C(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255D9C1C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

__n128 __swift_memcpy177_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_255D9C264(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 177))
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

uint64_t sub_255D9C2AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255D9C34C(uint64_t a1)
{
  v5 = *(a1 + 16);
  KeyPath = swift_getKeyPath();

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
  v3 = sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0, MEMORY[0x277D83980]);
  return sub_255E3A0E8(&v5, KeyPath, sub_255D5D978, 0, v2, MEMORY[0x277CE11C8], v3, MEMORY[0x277D837E0], MEMORY[0x277CE11C0]);
}

uint64_t sub_255D9C450(uint64_t a1)
{
  v2 = sub_255D9F098();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D9C48C(uint64_t a1)
{
  v2 = sub_255D9F098();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D9C4C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E67E8, &qword_255E4DB90);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = v2[5];
  v16 = *v2;
  v17 = *(v2 + 1);
  v18 = *(v2 + 3);
  v19 = v12;
  v13 = sub_255D4DAD0();
  (*(v13 + 24))(a1, v13);
  (*(v6 + 16))(v9, v11, v5);
  sub_255D38950(&qword_27F7E67F0, &qword_27F7E67E8, &qword_255E4DB90, MEMORY[0x277CDDA18]);
  v14 = sub_255E3A038();
  result = (*(v6 + 8))(v11, v5);
  *a2 = v14;
  return result;
}

uint64_t sub_255D9C680()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7A20, &qword_255E4DB98);
  sub_255E39FB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6700, &unk_255E53840);
  sub_255D38950(&qword_27F7E7A28, &qword_27F7E6160, &unk_255E4DBA0, MEMORY[0x277D83960]);
  sub_255D38950(&qword_27F7E7A30, &qword_27F7E6160, &unk_255E4DBA0, MEMORY[0x277D83980]);
  sub_255D38950(&qword_27F7E7A38, &qword_27F7E6160, &unk_255E4DBA0, MEMORY[0x277D83990]);
  sub_255D6FC70();
  sub_255D6F180();
  return sub_255E38AF8();
}

double sub_255D9C810@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_255D9ED48(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

unint64_t sub_255D9C89C()
{
  result = qword_27F7E7998;
  if (!qword_27F7E7998)
  {
    result = swift_getWitnessTable(aQ_4, &type metadata for NavigationStackView, v0, v1);
    atomic_store(result, &qword_27F7E7998);
  }

  return result;
}

uint64_t sub_255D9C8F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 2003134838;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 2003134838;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255D9C984()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D9C9F4(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D9CA50(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

void sub_255D9CAC8(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 2003134838;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255D9CAF4()
{
  if (*v0)
  {
    return 2003134838;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_255D9CB28(uint64_t a1)
{
  v2 = sub_255D9ECBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D9CB64(uint64_t a1)
{
  v2 = sub_255D9ECBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D9CBA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_255E385D8();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7A10, &qword_255E4DB88);
  v21 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v27[5] = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255D9EB74(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  v22 = sub_255E38CC8();
  v27[6] = v22;
  v27[7] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D9ECBC();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v11 = v20;
    LOBYTE(v23) = 0;
    v12 = sub_255E3AB88();
    v15 = v13;
    if (!v13)
    {
      sub_255E385C8();
      v16 = sub_255E385B8();
      v15 = v17;
      (*(v19 + 8))(v6, v4);
      v12 = v16;
    }

    v26[0] = v12;
    v26[1] = v15;
    v28 = 1;
    v24 = &type metadata for ViewContent;
    v25 = sub_255D44794();
    *&v23 = swift_allocObject();
    sub_255D447E8();
    sub_255E3ABC8();
    (*(v21 + 8))(v9, v7);
    sub_255D34630(&v23, v27);
    sub_255D4DC70(v26, v11);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_255D9ED10(v26);
  }
}

uint64_t sub_255D9CF00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6808, &qword_255E3E1F0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = sub_255D4DB78();
  (*(v11 + 24))(a1, v11);
  (*(v5 + 16))(v8, v10, v4);
  sub_255D38950(&qword_27F7E6810, &qword_27F7E6808, &qword_255E3E1F0, MEMORY[0x277CDD978]);
  v12 = sub_255E3A038();
  result = (*(v5 + 8))(v10, v4);
  *a2 = v12;
  return result;
}

unint64_t sub_255D9D13C()
{
  result = qword_27F7E79A0;
  if (!qword_27F7E79A0)
  {
    result = swift_getWitnessTable(byte_255E4DADC, &type metadata for NavigatingView, v0, v1);
    atomic_store(result, &qword_27F7E79A0);
  }

  return result;
}

uint64_t sub_255D9D190()
{
  v1 = sub_255E38D48();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  if (*(v0 + 176) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_255E3A858();
    v7 = sub_255E39598();
    sub_255E38678();

    sub_255E38D38();
    swift_getAtKeyPath();
    sub_255D38130(v6, v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v6;
}

uint64_t sub_255D9D2F0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6858, &qword_255E3E210);
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v37 = &v36 - v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E79C8, &unk_255E4DB20);
  MEMORY[0x28223BE20](v39);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6848, &qword_255E3E208);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + 32);
  v14 = *(v1 + 40);
  *&v41 = v11;
  *(&v41 + 1) = v12;
  v42 = v13;
  LOBYTE(v43) = v14;
  if (*(v1 + 128))
  {
    sub_255D3E5A8(v11, v12, v13, v14);

    v16 = StringResolvable.resolved(with:)(v15);
    v18 = v17;
    sub_255D38060(v41, *(&v41 + 1), v42, v43);

    sub_255D3957C(v2 + 48, &v41, &qword_27F7E6558, &qword_255E3DD80);
    if (v43)
    {
      sub_255D34630(&v41, v46);
      v44 = v16;
      v45 = v18;
      sub_255D9D954(v46, v2, &v41);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E79D0, &qword_255E4DB30);
      sub_255D9EA04();
      sub_255D6EEE8();
      sub_255E389D8();
      (*(v8 + 16))(v6, v10, v7);
      swift_storeEnumTagMultiPayload();
      v19 = MEMORY[0x277CDD938];
      sub_255D38950(&qword_27F7E6840, &qword_27F7E6848, &qword_255E3E208, MEMORY[0x277CDD938]);
      sub_255D38950(&qword_27F7E6850, &qword_27F7E6858, &qword_255E3E210, v19);
      sub_255E39258();
      (*(v8 + 8))(v10, v7);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6838, &qword_255E3E200);
      (*(*(v20 - 8) + 56))(a1, 0, 1, v20);
      return __swift_destroy_boxed_opaque_existential_1Tm(v46);
    }

    else
    {
      v36 = a1;
      sub_255D395E4(&v41, &qword_27F7E6558, &qword_255E3DD80);
      v22 = *(v2 + 120);
      if (v22 == 255)
      {

        v27 = v36;
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6838, &qword_255E3E200);
        return (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
      }

      else
      {
        v23 = *(v2 + 104);
        v24 = *(v2 + 112);
        v25 = *(v2 + 96);

        sub_255DDEBF8(v26, v25, v23, v24, v22 & 1, &v41);

        v29 = v41;
        *&v41 = v16;
        *(&v41 + 1) = v18;
        v46[0] = v29;
        sub_255D6EEE8();
        sub_255D7D39C();
        sub_255D7B41C();
        sub_255D6F180();

        v30 = v37;
        sub_255E389E8();
        v31 = v38;
        v32 = v40;
        (*(v38 + 16))(v6, v30, v40);
        swift_storeEnumTagMultiPayload();
        v33 = MEMORY[0x277CDD938];
        sub_255D38950(&qword_27F7E6840, &qword_27F7E6848, &qword_255E3E208, MEMORY[0x277CDD938]);
        sub_255D38950(&qword_27F7E6850, &qword_27F7E6858, &qword_255E3E210, v33);
        v34 = v36;
        sub_255E39258();

        (*(v31 + 8))(v30, v32);
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6838, &qword_255E3E200);
        return (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
      }
    }
  }

  else
  {
    sub_255D3E5A8(v11, v12, v13, v14);
    type metadata accessor for RemoteStateStore(0);
    sub_255D9EB74(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

uint64_t sub_255D9D954@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 24))(v5, v6);
  v8 = a2[16];
  if (v8)
  {
    v9 = v7;
    type metadata accessor for RemoteStateStore(0);
    sub_255D9EB74(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);

    v10 = sub_255E386C8();
    v11 = a2[18];
    if (v11)
    {
      v12 = v10;
      type metadata accessor for LocalStateStore(0);
      sub_255D9EB74(&qword_27F7E5EF8, type metadata accessor for LocalStateStore);

      v13 = sub_255E386C8();
      sub_255D9D190();
      v15 = v14;
      KeyPath = swift_getKeyPath();
      type metadata accessor for AnyWeakDataSource();
      v17 = swift_allocObject();
      *(v17 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v17 + 24) = v15;
      swift_unknownObjectWeakAssign();
      result = swift_unknownObjectRelease();
      *a3 = v9;
      a3[1] = v12;
      a3[2] = v8;
      a3[3] = v13;
      a3[4] = v11;
      a3[5] = KeyPath;
      a3[6] = v17;
      a3[7] = &off_2867E3ED8;
      return result;
    }

    type metadata accessor for LocalStateStore(0);
    v19 = &qword_27F7E5EF8;
    v20 = type metadata accessor for LocalStateStore;
  }

  else
  {
    type metadata accessor for RemoteStateStore(0);
    v19 = &qword_27F7E5EF0;
    v20 = type metadata accessor for RemoteStateStore;
  }

  sub_255D9EB74(v19, v20);
  result = sub_255E38CB8();
  __break(1u);
  return result;
}

uint64_t sub_255D9DB60()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D9DC14(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D9DCB4(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255D9DD64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D9F434(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255D9DD94(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xEB000000006E6F69;
  v5 = 0x74616E6974736564;
  if (*v1 != 2)
  {
    v5 = 0x65756C6176;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x656C746974;
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

uint64_t sub_255D9DE04()
{
  v1 = 25705;
  v2 = 0x74616E6974736564;
  if (*v0 != 2)
  {
    v2 = 0x65756C6176;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
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

unint64_t sub_255D9DE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255D9F434(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255D9DE98(uint64_t a1)
{
  v2 = sub_255D9EBC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D9DED4(uint64_t a1)
{
  v2 = sub_255D9EBC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D9DF10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_255E385D8();
  v36 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7A00, &qword_255E4DB80);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  memset(v48, 0, sizeof(v48));
  v49 = 0;
  v50 = MEMORY[0x277D84F90];
  v52 = 0;
  v51 = 0uLL;
  v53 = -1;
  type metadata accessor for RemoteStateStore(0);
  sub_255D9EB74(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
  *&v39 = sub_255E38CC8();
  v54 = v39;
  v55 = v10;
  type metadata accessor for LocalStateStore(0);
  sub_255D9EB74(&qword_27F7E5EF8, type metadata accessor for LocalStateStore);
  v38 = sub_255E38CC8();
  v56 = v38;
  v57 = v11;
  KeyPath = swift_getKeyPath();
  v58 = KeyPath;
  v59 = 0;
  v60 = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D9EBC8();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_255D395E4(v48, &qword_27F7E6558, &qword_255E3DD80);
    sub_255D5C2F4(v51, *(&v51 + 1), v52, v53);
  }

  v12 = v36;
  v13 = v4;
  v33 = a1;
  v14 = v35;
  LOBYTE(v40) = 0;
  v15 = sub_255E3AB88();
  v18 = v16;
  if (!v16)
  {
    sub_255E385C8();
    v19 = sub_255E385B8();
    v18 = v20;
    (*(v12 + 8))(v6, v13);
    v15 = v19;
  }

  v44[0] = v15;
  v44[1] = v18;
  v61 = 1;
  sub_255D3EA0C();
  sub_255E3ABC8();
  v36 = v18;
  v45 = v40;
  v46 = v41;
  v47 = v42;
  LOBYTE(v40) = 2;
  if (sub_255E3ABE8())
  {
    v61 = 2;
    v42 = &type metadata for ViewContent;
    v43 = sub_255D44794();
    *&v40 = swift_allocObject();
    sub_255D447E8();
    sub_255E3ABC8();
    (*(v14 + 8))(v9, v7);
    sub_255D9EC4C(&v40, v48);
  }

  else
  {
    v21 = v9;
    v22 = v7;
    LOBYTE(v40) = 3;
    if ((sub_255E3ABE8() & 1) == 0)
    {
      v23 = v21;
      if (qword_27F7E5E80 != -1)
      {
        swift_once();
      }

      v24 = sub_255E386A8();
      __swift_project_value_buffer(v24, qword_27F8152D8);
      v25 = sub_255E38688();
      v26 = sub_255E3A848();
      v27 = os_log_type_enabled(v25, v26);
      v28 = v34;
      if (v27)
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_255D2E000, v25, v26, "NavigationLinkView did not recieve a destination or value", v29, 2u);
        MEMORY[0x259C4F9E0](v29, -1, -1);
      }

      (*(v14 + 8))(v23, v22);
      goto LABEL_17;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
    v61 = 3;
    sub_255D38950(&qword_27F7E6BA0, &qword_27F7E6B80, &unk_255E56600, protocol conformance descriptor for Referenceable<A>);
    sub_255E3ABC8();
    (*(v14 + 8))(v21, v7);
    v39 = v40;
    v30 = v41;
    v31 = v42;
    sub_255D5C2F4(v51, *(&v51 + 1), v52, v53);
    v51 = v39;
    v52 = v30;
    v53 = v31;
  }

  v28 = v34;
LABEL_17:
  v32 = v33;
  sub_255D4DED8(v44, v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  return sub_255D9EC1C(v44);
}

uint64_t sub_255D9E664@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6820, &qword_255E3E1F8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  sub_255D9D2F0((&v10 - v6));
  sub_255D3957C(v7, v5, &qword_27F7E6820, &qword_255E3E1F8);
  sub_255D4DCCC();
  v8 = sub_255E3A038();
  result = sub_255D395E4(v7, &qword_27F7E6820, &qword_255E3E1F8);
  *a1 = v8;
  return result;
}

uint64_t sub_255D9E7CC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  a4(a1, a2, a3);
  a5();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_255D9E83C()
{
  result = qword_27F7E79A8;
  if (!qword_27F7E79A8)
  {
    result = swift_getWitnessTable(byte_255E4DAC0, &type metadata for NavigationLinkView, v0, v1);
    atomic_store(result, &qword_27F7E79A8);
  }

  return result;
}

unint64_t sub_255D9E890(uint64_t a1)
{
  result = sub_255D9E8B8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D9E8B8()
{
  result = qword_27F7E79B0;
  if (!qword_27F7E79B0)
  {
    result = swift_getWitnessTable(byte_255E4DA2C, &type metadata for NavigationLinkView, v0, v1);
    atomic_store(result, &qword_27F7E79B0);
  }

  return result;
}

unint64_t sub_255D9E90C(uint64_t a1)
{
  result = sub_255D9E934();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D9E934()
{
  result = qword_27F7E79B8;
  if (!qword_27F7E79B8)
  {
    result = swift_getWitnessTable(byte_255E4D988, &type metadata for NavigatingView, v0, v1);
    atomic_store(result, &qword_27F7E79B8);
  }

  return result;
}

unint64_t sub_255D9E988(uint64_t a1)
{
  result = sub_255D9E9B0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D9E9B0()
{
  result = qword_27F7E79C0;
  if (!qword_27F7E79C0)
  {
    result = swift_getWitnessTable(asc_255E4D8E4, &type metadata for NavigationStackView, v0, v1);
    atomic_store(result, &qword_27F7E79C0);
  }

  return result;
}

unint64_t sub_255D9EA04()
{
  result = qword_27F7E79D8;
  if (!qword_27F7E79D8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E79D0, &qword_255E4DB30);
    v4[0] = sub_255D9EABC();
    v4[1] = sub_255D38950(&qword_27F7E79F0, &qword_27F7E79F8, &qword_255E4DB48, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27F7E79D8);
  }

  return result;
}

unint64_t sub_255D9EABC()
{
  result = qword_27F7E79E0;
  if (!qword_27F7E79E0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E79E8, &unk_255E4DB38);
    v4[0] = sub_255D3849C();
    v4[1] = sub_255D38950(&qword_27F7E5FA8, &qword_27F7E5FB0, &unk_255E3BA20, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27F7E79E0);
  }

  return result;
}

uint64_t sub_255D9EB74(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    v4 = a2(255);
    result = swift_getWitnessTable(protocol conformance descriptor for StateDict<A, B>, v4);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_255D9EBC8()
{
  result = qword_27F7E7A08;
  if (!qword_27F7E7A08)
  {
    result = swift_getWitnessTable(byte_255E4DF6C, &type metadata for NavigationLinkView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7A08);
  }

  return result;
}

uint64_t sub_255D9EC4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6558, &qword_255E3DD80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_255D9ECBC()
{
  result = qword_27F7E7A18;
  if (!qword_27F7E7A18)
  {
    result = swift_getWitnessTable(asc_255E4DF1C, &type metadata for NavigatingView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7A18);
  }

  return result;
}

uint64_t sub_255D9ED48@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v4 = sub_255E385D8();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7A40, &unk_255E4DBE0);
  v32 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v37 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
  sub_255E39F98();
  v10 = v35;
  v11 = v36;
  v12 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_255D9F098();
  sub_255E3AE28();
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  else
  {
    v13 = v6;
    v29 = v10;
    v15 = v32;
    v14 = v33;
    LOBYTE(v35) = 0;
    v16 = sub_255E3AB88();
    v19 = v18;
    v28 = v11;
    v20 = v15;
    if (v18)
    {
      v27 = v16;
    }

    else
    {
      sub_255E385C8();
      v27 = sub_255E385B8();
      v19 = v21;
      (*(v30 + 8))(v13, v31);
    }

    v22 = v14;
    v23 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C10, &qword_255E57E50);
    LOBYTE(v37) = 1;
    sub_255D5F038();
    v24 = v7;
    sub_255E3ABC8();
    v25 = sub_255D48968(v35);

    (*(v20 + 8))(v9, v24);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v34);
    *v22 = v27;
    v22[1] = v19;
    v22[2] = v25;
    v22[3] = v23;
    v26 = v28;
    v22[4] = v29;
    v22[5] = v26;
  }

  return result;
}

unint64_t sub_255D9F098()
{
  result = qword_27F7E7A48;
  if (!qword_27F7E7A48)
  {
    result = swift_getWitnessTable(asc_255E4DECC, &type metadata for NavigationStackView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7A48);
  }

  return result;
}

unint64_t sub_255D9F120()
{
  result = qword_27F7E7A50;
  if (!qword_27F7E7A50)
  {
    result = swift_getWitnessTable(byte_255E4DCC4, &type metadata for NavigationLinkView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7A50);
  }

  return result;
}

unint64_t sub_255D9F178()
{
  result = qword_27F7E7A58;
  if (!qword_27F7E7A58)
  {
    result = swift_getWitnessTable(byte_255E4DDB4, &type metadata for NavigatingView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7A58);
  }

  return result;
}

unint64_t sub_255D9F1D0()
{
  result = qword_27F7E7A60;
  if (!qword_27F7E7A60)
  {
    result = swift_getWitnessTable(asc_255E4DEA4, &type metadata for NavigationStackView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7A60);
  }

  return result;
}

unint64_t sub_255D9F228()
{
  result = qword_27F7E7A68;
  if (!qword_27F7E7A68)
  {
    result = swift_getWitnessTable(byte_255E4DDDC, &type metadata for NavigationStackView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7A68);
  }

  return result;
}

unint64_t sub_255D9F280()
{
  result = qword_27F7E7A70;
  if (!qword_27F7E7A70)
  {
    result = swift_getWitnessTable(byte_255E4DE04, &type metadata for NavigationStackView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7A70);
  }

  return result;
}

unint64_t sub_255D9F2D8()
{
  result = qword_27F7E7A78;
  if (!qword_27F7E7A78)
  {
    result = swift_getWitnessTable(byte_255E4DCEC, &type metadata for NavigatingView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7A78);
  }

  return result;
}

unint64_t sub_255D9F330()
{
  result = qword_27F7E7A80;
  if (!qword_27F7E7A80)
  {
    result = swift_getWitnessTable(byte_255E4DD14, &type metadata for NavigatingView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7A80);
  }

  return result;
}

unint64_t sub_255D9F388()
{
  result = qword_27F7E7A88;
  if (!qword_27F7E7A88)
  {
    result = swift_getWitnessTable(byte_255E4DBFC, &type metadata for NavigationLinkView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7A88);
  }

  return result;
}

unint64_t sub_255D9F3E0()
{
  result = qword_27F7E7A90;
  if (!qword_27F7E7A90)
  {
    result = swift_getWitnessTable(byte_255E4DC24, &type metadata for NavigationLinkView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7A90);
  }

  return result;
}

unint64_t sub_255D9F434(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255D9F480(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_255D9F4C8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_255D9F524@<X0>(char *a2@<X8>)
{
  v3 = sub_255E3AB48();

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

uint64_t sub_255D9F584@<X0>(char *a3@<X8>)
{
  v4 = sub_255E3AB48();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_255D9F5E8(uint64_t a1)
{
  v2 = sub_255D9F984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D9F624(uint64_t a1)
{
  v2 = sub_255D9F984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D9F660@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7AA0, &qword_255E4E048);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  v15 = MEMORY[0x277D84F90];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D9F984();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16 = 1;
  sub_255D65E28();
  sub_255E3ABC8();
  (*(v6 + 8))(v8, v5);
  v13[0] = *&v10[8];
  v13[1] = v11;
  v14 = v12;
  sub_255D9F9D8(v13, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_255D9FA10(v13);
}

uint64_t sub_255D9F814@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_255D65E7C(v2, v10);
  v5 = v11;
  v6 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v7 = (*(v6 + 16))(a1, v5, v6);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v10);
  v9 = MEMORY[0x277CE0F60];
  a2[3] = MEMORY[0x277CE0F78];
  a2[4] = v9;
  *a2 = v7;
  return result;
}

uint64_t sub_255D9F8C4(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

unint64_t sub_255D9F908(uint64_t a1)
{
  result = sub_255D9F930();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D9F930()
{
  result = qword_27F7E7A98;
  if (!qword_27F7E7A98)
  {
    result = swift_getWitnessTable(asc_255E4E000, &type metadata for ColorShapeStyle, v0, v1);
    atomic_store(result, &qword_27F7E7A98);
  }

  return result;
}

unint64_t sub_255D9F984()
{
  result = qword_27F7E7AA8;
  if (!qword_27F7E7AA8)
  {
    result = swift_getWitnessTable(byte_255E4E14C, &type metadata for ColorShapeStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7AA8);
  }

  return result;
}

unint64_t sub_255D9FA54()
{
  result = qword_27F7E7AB0;
  if (!qword_27F7E7AB0)
  {
    result = swift_getWitnessTable(byte_255E4E124, &type metadata for ColorShapeStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7AB0);
  }

  return result;
}

unint64_t sub_255D9FAAC()
{
  result = qword_27F7E7AB8;
  if (!qword_27F7E7AB8)
  {
    result = swift_getWitnessTable(aE_4, &type metadata for ColorShapeStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7AB8);
  }

  return result;
}

unint64_t sub_255D9FB04()
{
  result = qword_27F7E7AC0;
  if (!qword_27F7E7AC0)
  {
    result = swift_getWitnessTable(aU_4, &type metadata for ColorShapeStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7AC0);
  }

  return result;
}

uint64_t type metadata accessor for ResizableImageModifier(uint64_t a1)
{
  result = qword_27F7E7AC8;
  if (!qword_27F7E7AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255D9FBCC(uint64_t a1)
{
  result = sub_255E39EB8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_255D9FC48(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x68637465727473;
  }

  else
  {
    v3 = 1701603700;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x68637465727473;
  }

  else
  {
    v5 = 1701603700;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255D9FCE8()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D9FD64(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D9FDCC(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

void sub_255D9FE50(uint64_t *a1@<X8>)
{
  v2 = 1701603700;
  if (*v1)
  {
    v2 = 0x68637465727473;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255D9FF44()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D9FFFC(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255DA00A0(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255DA0154@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255DA0F40(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255DA0184(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7368564;
  v4 = 0xE600000000000000;
  v5 = 0x6D6F74746F62;
  if (*v1 != 2)
  {
    v5 = 0x676E696C69617274;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x676E696461656CLL;
    v2 = 0xE700000000000000;
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

uint64_t sub_255DA02A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7465736E49706163;
  }

  else
  {
    v3 = 0x676E697A69736572;
  }

  if (v2)
  {
    v4 = 0xEC00000065646F4DLL;
  }

  else
  {
    v4 = 0xE900000000000073;
  }

  if (*a2)
  {
    v5 = 0x7465736E49706163;
  }

  else
  {
    v5 = 0x676E697A69736572;
  }

  if (*a2)
  {
    v6 = 0xE900000000000073;
  }

  else
  {
    v6 = 0xEC00000065646F4DLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255DA035C()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DA03EC(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255DA0468(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

void sub_255DA0500(uint64_t *a1@<X8>)
{
  v2 = 0x676E697A69736572;
  if (*v1)
  {
    v2 = 0x7465736E49706163;
  }

  v3 = 0xEC00000065646F4DLL;
  if (*v1)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255DA054C()
{
  if (*v0)
  {
    return 0x7465736E49706163;
  }

  else
  {
    return 0x676E697A69736572;
  }
}

uint64_t sub_255DA0594@<X0>(char *a3@<X8>)
{
  v4 = sub_255E3AB48();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_255DA05F8(uint64_t a1)
{
  v2 = sub_255DA0B50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DA0634(uint64_t a1)
{
  v2 = sub_255DA0B50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DA0670@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7AE0, &qword_255E4E210);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v30 - v5;
  v6 = sub_255E39EB8();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7AE8, &qword_255E4E218);
  v35 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v10 = &v30 - v9;
  v11 = type metadata accessor for ResizableImageModifier(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DA0B50();
  sub_255E3AE28();
  if (v2)
  {
    v21 = a1;
  }

  else
  {
    v32 = v11;
    v33 = v13;
    v14 = a1;
    v16 = v35;
    v15 = v36;
    v31 = v8;
    v17 = v37;
    v18 = v38;
    v42 = 1;
    sub_255DA0BA4();
    v19 = v39;
    sub_255E3ABA8();
    v20 = v33;
    *v33 = 0u;
    v20[1] = 0u;
    v40 = 0;
    sub_255DA0BF8();
    sub_255E3ABA8();
    (*(v16 + 8))(v10, v19);
    if (v41 == 2)
    {
      v23 = v17;
      (*(v15 + 56))(v18, 1, 1, v17);
      v24 = v31;
      (*(v15 + 104))(v31, *MEMORY[0x277CE0FE0], v23);
      v25 = *(v15 + 32);
    }

    else
    {
      if (v41)
      {
        v26 = MEMORY[0x277CE0FE0];
      }

      else
      {
        v26 = MEMORY[0x277CE0FD8];
      }

      v23 = v17;
      (*(v15 + 104))(v18, *v26, v17);
      (*(v15 + 56))(v18, 0, 1, v17);
      v25 = *(v15 + 32);
      v24 = v31;
      v25(v31, v18, v23);
    }

    v27 = v14;
    v29 = v33;
    v28 = v34;
    v25(v33 + *(v32 + 20), v24, v23);
    sub_255DA0C4C(v29, v28);
    v21 = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v21);
}

unint64_t sub_255DA0AD0(uint64_t a1)
{
  result = sub_255DA0AF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DA0AF8()
{
  result = qword_27F7E7AD8;
  if (!qword_27F7E7AD8)
  {
    v3 = type metadata accessor for ResizableImageModifier(255);
    result = swift_getWitnessTable(aA_9, v3, v0, v1);
    atomic_store(result, &qword_27F7E7AD8);
  }

  return result;
}

unint64_t sub_255DA0B50()
{
  result = qword_27F7E7AF0;
  if (!qword_27F7E7AF0)
  {
    result = swift_getWitnessTable(asc_255E4E51C, &type metadata for ResizableImageModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7AF0);
  }

  return result;
}

unint64_t sub_255DA0BA4()
{
  result = qword_27F7E7AF8;
  if (!qword_27F7E7AF8)
  {
    result = swift_getWitnessTable(byte_255E4E4F4, &type metadata for EdgeInsetsName, v0, v1);
    atomic_store(result, &qword_27F7E7AF8);
  }

  return result;
}

unint64_t sub_255DA0BF8()
{
  result = qword_27F7E7B00;
  if (!qword_27F7E7B00)
  {
    result = swift_getWitnessTable(asc_255E4E4CC, &type metadata for ResizingModeName, v0, v1);
    atomic_store(result, &qword_27F7E7B00);
  }

  return result;
}

uint64_t sub_255DA0C4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResizableImageModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_255DA0CE4()
{
  result = qword_27F7E7B08;
  if (!qword_27F7E7B08)
  {
    result = swift_getWitnessTable(byte_255E4E314, &type metadata for ResizableImageModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7B08);
  }

  return result;
}

unint64_t sub_255DA0D3C()
{
  result = qword_27F7E7B10;
  if (!qword_27F7E7B10)
  {
    result = swift_getWitnessTable(byte_255E4E3DC, &type metadata for EdgeInsetsName, v0, v1);
    atomic_store(result, &qword_27F7E7B10);
  }

  return result;
}

unint64_t sub_255DA0D94()
{
  result = qword_27F7E7B18;
  if (!qword_27F7E7B18)
  {
    result = swift_getWitnessTable(asc_255E4E4A4, &type metadata for ResizingModeName, v0, v1);
    atomic_store(result, &qword_27F7E7B18);
  }

  return result;
}

unint64_t sub_255DA0DEC()
{
  result = qword_27F7E7B20;
  if (!qword_27F7E7B20)
  {
    result = swift_getWitnessTable(aU_5, &type metadata for ResizableImageModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7B20);
  }

  return result;
}

unint64_t sub_255DA0E44()
{
  result = qword_27F7E7B28;
  if (!qword_27F7E7B28)
  {
    result = swift_getWitnessTable(aE_5, &type metadata for ResizableImageModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7B28);
  }

  return result;
}

unint64_t sub_255DA0E98()
{
  result = qword_27F7E7B30;
  if (!qword_27F7E7B30)
  {
    result = swift_getWitnessTable(asc_255E4E364, &type metadata for EdgeInsetsName, v0, v1);
    atomic_store(result, &qword_27F7E7B30);
  }

  return result;
}

unint64_t sub_255DA0EEC()
{
  result = qword_27F7E7B38;
  if (!qword_27F7E7B38)
  {
    result = swift_getWitnessTable(aU_6, &type metadata for ResizingModeName, v0, v1);
    atomic_store(result, &qword_27F7E7B38);
  }

  return result;
}

unint64_t sub_255DA0F40(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_255DA0FC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_255DA1008(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255DA1088@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7B50, &qword_255E4EA70);
  MEMORY[0x28223BE20](v69);
  v70 = v54 - v4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E69E0, &unk_255E3E290);
  v62 = *(v67 - 8);
  v5 = MEMORY[0x28223BE20](v67);
  v57 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v54 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7B58, &qword_255E4EA78);
  MEMORY[0x28223BE20](v63);
  v65 = v54 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7B60, &qword_255E4EA80);
  MEMORY[0x28223BE20](v59);
  v11 = v54 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E69C0, &qword_255E3E280);
  MEMORY[0x28223BE20](v64);
  v61 = v54 - v12;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E69D0, &qword_255E3E288);
  v56 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v14 = v54 - v13;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E69B0, &qword_255E3E278);
  MEMORY[0x28223BE20](v68);
  v66 = v54 - v15;
  v16 = *(v1 + 176);
  if (v16)
  {
    v17 = *(v1 + 128);
    v19 = *(v2 + 112);
    v18 = *(v2 + 120);
    v20 = *(v2 + 104);

    sub_255DBFDEC(v21, v20, v19, v18, v17, &v74);

    v22 = v75;
    v58 = v74;
    v23 = v76;
    v24 = *(v2 + 48);
    v54[1] = a1;
    v55 = v75;
    if (v24 > 0xFD)
    {
      sub_255D3957C(v2 + 136, &v71, &qword_27F7E6558, &qword_255E3DD80);
      if (v73)
      {
        v28 = sub_255D34630(&v71, &v74);
        v57 = v54;
        *&v71 = v58;
        *(&v71 + 1) = v22;
        v72 = v23;
        v29 = MEMORY[0x28223BE20](v28);
        v30 = MEMORY[0x28223BE20](v29);
        MEMORY[0x28223BE20](v30);
        v56 = v23 & 0x1FFFFFFFFFFFFFFFLL;

        v54[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E66F0, &unk_255E3E190);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6700, &unk_255E53840);
        sub_255D4D230(&qword_27F7E66E8, &qword_27F7E66F0, &unk_255E3E190, MEMORY[0x277CE1550]);
        sub_255D6F180();
        sub_255D4D230(&qword_27F7E66F8, &qword_27F7E6700, &unk_255E53840, MEMORY[0x277CE1290]);
        sub_255E3A008();
        v31 = v62;
        v32 = v67;
        (*(v62 + 16))(v11, v8, v67);
        swift_storeEnumTagMultiPayload();
        v33 = MEMORY[0x277CDF038];
        sub_255D38950(&qword_27F7E69C8, &qword_27F7E69D0, &qword_255E3E288, MEMORY[0x277CDF038]);
        sub_255D38950(&qword_27F7E69D8, &qword_27F7E69E0, &unk_255E3E290, v33);
        v34 = v61;
        sub_255E39258();
        sub_255D3957C(v34, v65, &qword_27F7E69C0, &qword_255E3E280);
        swift_storeEnumTagMultiPayload();
        sub_255D4ECE0();
        v49 = v66;
        sub_255E39258();
        sub_255D395E4(v34, &qword_27F7E69C0, &qword_255E3E280);
        (*(v31 + 8))(v8, v32);
        __swift_destroy_boxed_opaque_existential_1Tm(&v74);
      }

      else
      {
        v35 = sub_255D395E4(&v71, &qword_27F7E6558, &qword_255E3DD80);
        MEMORY[0x28223BE20](v35);
        *&v71 = v58;
        *(&v71 + 1) = v22;
        v72 = v23;
        sub_255D3957C(v2 + 56, &v74, &qword_27F7E6558, &qword_255E3DD80);
        v36 = v77;
        if (v77)
        {
          v37 = v78;
          __swift_project_boxed_opaque_existential_1(&v74, v77);
          v38 = v23;
          v39 = *(v37 + 24);
          v56 = v38 & 0x1FFFFFFFFFFFFFFFLL;

          v40 = v39(v36, v37);
          __swift_destroy_boxed_opaque_existential_1Tm(&v74);
        }

        else
        {
          v56 = v23 & 0x1FFFFFFFFFFFFFFFLL;

          sub_255D395E4(&v74, &qword_27F7E6558, &qword_255E3DD80);
          v40 = 0;
        }

        v74 = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E66F0, &unk_255E3E190);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6700, &unk_255E53840);
        sub_255D4D230(&qword_27F7E66E8, &qword_27F7E66F0, &unk_255E3E190, MEMORY[0x277CE1550]);
        sub_255D6F180();
        sub_255D4D230(&qword_27F7E66F8, &qword_27F7E6700, &unk_255E53840, MEMORY[0x277CE1290]);
        v50 = v57;
        sub_255E39FF8();
        v51 = v62;
        v52 = v67;
        (*(v62 + 16))(v65, v50, v67);
        swift_storeEnumTagMultiPayload();
        sub_255D4ECE0();
        sub_255D38950(&qword_27F7E69D8, &qword_27F7E69E0, &unk_255E3E290, MEMORY[0x277CDF038]);
        v49 = v66;
        sub_255E39258();
        (*(v51 + 8))(v50, v52);
      }
    }

    else
    {
      v54[0] = v76;
      v26 = *(v2 + 32);
      v25 = *(v2 + 40);
      v74 = *(v2 + 24);
      v27 = v74;
      v75 = v26;
      v76 = v25;
      LOBYTE(v77) = v24;

      sub_255D94C04(v27, v26, v25, v24);
      v41 = StringResolvable.resolved(with:)(v16);
      v43 = v42;
      sub_255D38060(v74, v75, v76, v77);

      *&v71 = v41;
      *(&v71 + 1) = v43;
      v74 = v58;
      v75 = v55;
      v76 = v54[0];
      MEMORY[0x28223BE20](v44);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6700, &unk_255E53840);
      sub_255D6F180();
      sub_255D4D230(&qword_27F7E66F8, &qword_27F7E6700, &unk_255E53840, MEMORY[0x277CE1290]);
      sub_255D6EEE8();
      sub_255E3A018();
      v45 = v56;
      v46 = v60;
      (*(v56 + 16))(v11, v14, v60);
      swift_storeEnumTagMultiPayload();
      v47 = MEMORY[0x277CDF038];
      sub_255D38950(&qword_27F7E69C8, &qword_27F7E69D0, &qword_255E3E288, MEMORY[0x277CDF038]);
      sub_255D38950(&qword_27F7E69D8, &qword_27F7E69E0, &unk_255E3E290, v47);
      v48 = v61;
      sub_255E39258();
      sub_255D3957C(v48, v65, &qword_27F7E69C0, &qword_255E3E280);
      swift_storeEnumTagMultiPayload();
      sub_255D4ECE0();
      v49 = v66;
      sub_255E39258();
      sub_255D395E4(v48, &qword_27F7E69C0, &qword_255E3E280);
      (*(v45 + 8))(v14, v46);
    }

    sub_255D3957C(v49, v70, &qword_27F7E69B0, &qword_255E3E278);
    swift_storeEnumTagMultiPayload();
    sub_255D4EC28();
    sub_255E39258();

    return sub_255D395E4(v49, &qword_27F7E69B0, &qword_255E3E278);
  }

  else
  {
    type metadata accessor for RemoteStateStore(0);
    sub_255DA2D14();
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

uint64_t sub_255DA1F28(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 96);
  KeyPath = swift_getKeyPath();

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
  v5 = sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0, MEMORY[0x277D83980]);
  return sub_255E3A0E8(&v7, KeyPath, a2, 0, v4, MEMORY[0x277CE11C8], v5, MEMORY[0x277D837E0], MEMORY[0x277CE11C0]);
}

uint64_t sub_255DA2008@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_255D3957C(a1 + 56, v7, &qword_27F7E6558, &qword_255E3DD80);
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v5 = (*(v4 + 24))(v3, v4);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    result = sub_255D395E4(v7, &qword_27F7E6558, &qword_255E3DD80);
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_255DA20D0(uint64_t a1)
{
  sub_255E3A578();
}

unint64_t sub_255DA21BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255DA3080(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255DA21EC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE700000000000000;
  v6 = 0x746E65746E6F63;
  v7 = 0xE90000000000006ELL;
  v8 = 0x6F697463656C6573;
  if (v2 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x8000000255E65870;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x656C746974;
  if (v2 != 1)
  {
    v9 = 0x6C6562616CLL;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_255DA22A0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x746E65746E6F63;
  v4 = 0x6F697463656C6573;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x6C6562616CLL;
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

unint64_t sub_255DA2350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255DA3080(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255DA2384(uint64_t a1)
{
  v2 = sub_255DA2DA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DA23C0(uint64_t a1)
{
  v2 = sub_255DA2DA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DA23FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_255E385D8();
  v43 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7B68, &qword_255E4EAB0);
  v42 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  v57[2] = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255DA2D14();
  v44 = sub_255E38CC8();
  v75 = v44;
  v76 = v9;
  v10 = a1[3];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_255DA2DA4();
  v11 = v45;
  sub_255E3AE28();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v77);
  }

  else
  {
    v12 = v42;
    v13 = v43;
    LOBYTE(v46) = 0;
    v14 = sub_255E3AB88();
    if (!v15)
    {
      v17 = v5;
      sub_255E385C8();
      v45 = sub_255E385B8();
      v19 = v18;
      (*(v13 + 8))(v17, v3);
      v15 = v19;
      v14 = v45;
    }

    v57[0] = v14;
    v57[1] = v15;
    v45 = v15;
    v56 = 1;
    sub_255D3EA0C();
    v20 = v6;
    sub_255E3ABA8();
    v21 = v12;
    v22 = MEMORY[0x277D84F90];
    v58 = v46;
    v59 = v47;
    v60 = BYTE8(v47);
    v56 = 2;
    v23 = sub_255D447E8();
    sub_255E3ABA8();
    if (*(&v46 + 1))
    {
      v24 = sub_255D44794();
      v25 = swift_allocObject();
      v26 = v53;
      *(v25 + 112) = v52;
      *(v25 + 128) = v26;
      *(v25 + 144) = v54;
      *(v25 + 160) = v55;
      v27 = v49;
      *(v25 + 48) = v48;
      *(v25 + 64) = v27;
      v28 = v51;
      *(v25 + 80) = v50;
      *(v25 + 96) = v28;
      v29 = v47;
      *(v25 + 16) = v46;
      *(v25 + 32) = v29;
      v30 = &type metadata for ViewContent;
    }

    else
    {
      sub_255D395E4(&v46, &qword_27F7E6C20, &qword_255E58D80);
      v25 = 0;
      v30 = 0;
      v24 = 0;
    }

    v61 = v25;
    v62 = 0;
    v63 = 0;
    v64 = v30;
    v65 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C10, &qword_255E57E50);
    v56 = 3;
    sub_255D5F038();
    sub_255E3ABA8();
    v43 = v23;
    if (v46)
    {
      v31 = v46;
    }

    else
    {
      v31 = v22;
    }

    v32 = sub_255D48968(v31);

    v66 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
    v56 = 4;
    sub_255D38950(&qword_27F7E6BA0, &qword_27F7E6B80, &unk_255E56600, protocol conformance descriptor for Referenceable<A>);
    sub_255E3ABC8();
    v67 = v46;
    v68 = v47;
    v69 = BYTE8(v47);
    v56 = 5;
    sub_255E3ABA8();
    if (*(&v46 + 1))
    {
      v33 = sub_255D44794();
      v34 = swift_allocObject();
      v35 = v53;
      *(v34 + 112) = v52;
      *(v34 + 128) = v35;
      *(v34 + 144) = v54;
      *(v34 + 160) = v55;
      v36 = v49;
      *(v34 + 48) = v48;
      *(v34 + 64) = v36;
      v37 = v51;
      *(v34 + 80) = v50;
      *(v34 + 96) = v37;
      v38 = v47;
      *(v34 + 16) = v46;
      *(v34 + 32) = v38;
      (*(v21 + 8))(v8, v20);
      v39 = &type metadata for ViewContent;
    }

    else
    {
      (*(v21 + 8))(v8, v6);
      sub_255D395E4(&v46, &qword_27F7E6C20, &qword_255E58D80);
      v33 = 0;
      v39 = 0;
      v34 = 0;
    }

    v70 = v34;
    v71 = 0;
    v72 = 0;
    v73 = v39;
    v74 = v33;
    sub_255D4EE14(v57, v41);
    __swift_destroy_boxed_opaque_existential_1Tm(v77);
    return sub_255DA2DF8(v57);
  }
}

uint64_t sub_255DA2AAC@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6998, &qword_255E3E270);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  sub_255DA1088((&v10 - v6));
  sub_255D3957C(v7, v5, &qword_27F7E6998, &qword_255E3E270);
  sub_255D4EB9C();
  v8 = sub_255E3A038();
  result = sub_255D395E4(v7, &qword_27F7E6998, &qword_255E3E270);
  *a1 = v8;
  return result;
}

uint64_t sub_255DA2BE8(uint64_t a1, uint64_t a2)
{
  sub_255DA2C44();
  sub_255D4EDC0();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_255DA2C44()
{
  result = qword_27F7E7B40;
  if (!qword_27F7E7B40)
  {
    result = swift_getWitnessTable(byte_255E4EA50, &type metadata for PickerView, v0, v1);
    atomic_store(result, &qword_27F7E7B40);
  }

  return result;
}

unint64_t sub_255DA2C98(uint64_t a1)
{
  result = sub_255DA2CC0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255DA2CC0()
{
  result = qword_27F7E7B48;
  if (!qword_27F7E7B48)
  {
    result = swift_getWitnessTable(aM_5, &type metadata for PickerView, v0, v1);
    atomic_store(result, &qword_27F7E7B48);
  }

  return result;
}

unint64_t sub_255DA2D14()
{
  result = qword_27F7E5EF0;
  if (!qword_27F7E5EF0)
  {
    v3 = type metadata accessor for RemoteStateStore(255);
    result = swift_getWitnessTable(protocol conformance descriptor for StateDict<A, B>, v3, v0, v1);
    atomic_store(result, &qword_27F7E5EF0);
  }

  return result;
}

unint64_t sub_255DA2DA4()
{
  result = qword_27F7E7B70;
  if (!qword_27F7E7B70)
  {
    result = swift_getWitnessTable(aU_7, &type metadata for PickerView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7B70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PickerView.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PickerView.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_255DA2F7C()
{
  result = qword_27F7E7B78;
  if (!qword_27F7E7B78)
  {
    result = swift_getWitnessTable(asc_255E4EB8C, &type metadata for PickerView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7B78);
  }

  return result;
}

unint64_t sub_255DA2FD4()
{
  result = qword_27F7E7B80;
  if (!qword_27F7E7B80)
  {
    result = swift_getWitnessTable(byte_255E4EAC4, &type metadata for PickerView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7B80);
  }

  return result;
}

unint64_t sub_255DA302C()
{
  result = qword_27F7E7B88;
  if (!qword_27F7E7B88)
  {
    result = swift_getWitnessTable(byte_255E4EAEC, &type metadata for PickerView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7B88);
  }

  return result;
}

unint64_t sub_255DA3080(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255DA30DC@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  LODWORD(v104) = a2;
  v105 = a1;
  v112 = a5;
  v7 = sub_255E38DB8();
  v95 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v94 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_255DA463C(&qword_27F7E7B98, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
  v124 = a3;
  v125 = v7;
  v111 = v7;
  v126 = a4;
  v127 = v9;
  v117 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v97 = *(OpaqueTypeMetadata2 - 8);
  v11 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v96 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v101 = &v88 - v13;
  v14 = sub_255E38C98();
  v91 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v90 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_255DA463C(&qword_27F7E7BA0, MEMORY[0x277CDDBD0], MEMORY[0x277CDDBC8]);
  v124 = a3;
  v125 = v14;
  v115 = v16;
  v116 = v14;
  v126 = a4;
  v127 = v16;
  v17 = swift_getOpaqueTypeMetadata2();
  v93 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v92 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v99 = &v88 - v20;
  v21 = sub_255E38E88();
  v22 = sub_255DA463C(&qword_27F7E7BA8, MEMORY[0x277CDDE68], MEMORY[0x277CDDE58]);
  v118 = a3;
  v124 = a3;
  v125 = v21;
  v113 = a4;
  v114 = v22;
  v126 = a4;
  v127 = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  v98 = v17;
  v24 = sub_255E39268();
  v102 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v100 = &v88 - v25;
  v26 = swift_checkMetadataState();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v88 - v29;
  v89 = *(v23 - 8);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v88 - v34;
  v109 = v24;
  v110 = OpaqueTypeMetadata2;
  v108 = sub_255E39268();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v88 - v36;
  v103 = v26;
  if (v104)
  {
    if (v104 == 1)
    {
      v37 = v90;
      sub_255E38C88();
      v38 = v92;
      v39 = v118;
      v40 = v116;
      v41 = v113;
      v42 = v115;
      sub_255E39918();
      (*(v91 + 8))(v37, v40);
      v124 = v39;
      v125 = v40;
      v126 = v41;
      v127 = v42;
      v104 = MEMORY[0x277CDE720];
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v44 = v98;
      sub_255D4F130();
      v105 = *(v93 + 8);
      v105(v38, v44);
      sub_255D4F130();
      v124 = v39;
      v125 = v26;
      v126 = v41;
      v127 = v114;
      v45 = swift_getOpaqueTypeConformance2();
      v46 = v100;
      sub_255D3F908(v38, v23, v44);
      v120[0] = v45;
      v120[1] = OpaqueTypeConformance2;
      v47 = v109;
      swift_getWitnessTable(MEMORY[0x277CE0340], v109, v120);
      v48 = v111;
      v124 = v39;
      v125 = v111;
      v126 = v41;
      v127 = v117;
      swift_getOpaqueTypeConformance2();
      v49 = v106;
      v50 = v47;
      v51 = v47;
      v52 = v41;
      sub_255D3F810(v46, v50);
      (*(v102 + 8))(v46, v51);
      v53 = v38;
      v54 = v114;
      v55 = v105;
      v105(v53, v44);
      v55(v99, v44);
      v56 = v115;
    }

    else
    {
      v70 = v94;
      sub_255E38DA8();
      v71 = v96;
      v73 = v117;
      v72 = v118;
      v48 = v111;
      v52 = v113;
      sub_255E39918();
      (*(v95 + 8))(v70, v48);
      v124 = v72;
      v125 = v48;
      v126 = v52;
      v127 = v73;
      swift_getOpaqueTypeConformance2();
      v74 = v110;
      sub_255D4F130();
      v105 = *(v97 + 8);
      v105(v71, v74);
      sub_255D4F130();
      v124 = v118;
      v125 = v26;
      v54 = v114;
      v126 = v52;
      v127 = v114;
      v75 = swift_getOpaqueTypeConformance2();
      v56 = v115;
      v124 = v118;
      v125 = v116;
      v126 = v52;
      v127 = v115;
      v76 = swift_getOpaqueTypeConformance2();
      v123[0] = v75;
      v123[1] = v76;
      v51 = v109;
      swift_getWitnessTable(MEMORY[0x277CE0340], v109, v123);
      v77 = v106;
      sub_255D3F908(v71, v51, v74);
      v78 = v105;
      v105(v71, v74);
      v79 = v74;
      v49 = v77;
      v78(v101, v79);
    }
  }

  else
  {
    sub_255E38E78();
    v57 = v118;
    v58 = v113;
    v59 = v114;
    sub_255E39918();
    (*(v27 + 8))(v30, v26);
    v124 = v57;
    v125 = v26;
    v126 = v58;
    v127 = v59;
    v60 = swift_getOpaqueTypeConformance2();
    sub_255D4F130();
    v105 = *(v89 + 8);
    v105(v33, v23);
    sub_255D4F130();
    v124 = v57;
    v125 = v116;
    v126 = v58;
    v127 = v115;
    v61 = swift_getOpaqueTypeConformance2();
    v62 = v100;
    sub_255D3F810(v33, v23);
    v119[0] = v60;
    v119[1] = v61;
    v51 = v109;
    swift_getWitnessTable(MEMORY[0x277CE0340], v109, v119);
    v48 = v111;
    v124 = v118;
    v125 = v111;
    v63 = v113;
    v126 = v113;
    v127 = v117;
    swift_getOpaqueTypeConformance2();
    v64 = v106;
    sub_255D3F810(v62, v51);
    v65 = v62;
    v54 = v114;
    (*(v102 + 8))(v65, v51);
    v66 = v33;
    v49 = v64;
    v67 = v105;
    v105(v66, v23);
    v68 = v35;
    v56 = v115;
    v69 = v23;
    v52 = v63;
    v67(v68, v69);
  }

  v80 = v118;
  v124 = v118;
  v125 = v103;
  v126 = v52;
  v127 = v54;
  v81 = swift_getOpaqueTypeConformance2();
  v124 = v80;
  v125 = v116;
  v126 = v52;
  v127 = v56;
  v82 = swift_getOpaqueTypeConformance2();
  v122[0] = v81;
  v122[1] = v82;
  v83 = MEMORY[0x277CE0340];
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CE0340], v51, v122);
  v124 = v80;
  v125 = v48;
  v126 = v52;
  v127 = v117;
  v85 = swift_getOpaqueTypeConformance2();
  v121[0] = WitnessTable;
  v121[1] = v85;
  v86 = v108;
  swift_getWitnessTable(v83, v108, v121);
  sub_255D4F130();
  return (*(v107 + 8))(v49, v86);
}

uint64_t sub_255DA3DE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E6F74747562;
  if (v2 != 1)
  {
    v3 = 0x686374697773;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6974616D6F747561;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE900000000000063;
  }

  v6 = 0x6E6F74747562;
  if (*a2 != 1)
  {
    v6 = 0x686374697773;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6974616D6F747561;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE900000000000063;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();
  }

  return v9 & 1;
}

uint64_t sub_255DA3EDC()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DA3F7C(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255DA4008(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255DA40A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255DA4A7C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255DA40D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000063;
  v4 = 0x6E6F74747562;
  if (v2 != 1)
  {
    v4 = 0x686374697773;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6974616D6F747561;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_255DA41E0@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_255E3AB48();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_255DA4234@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_255E3AB48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_255DA428C(uint64_t a1)
{
  v2 = sub_255DA4800();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DA42C8(uint64_t a1)
{
  v2 = sub_255DA4800();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DA4304@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  v17 = *v2;
  v16 = __swift_project_boxed_opaque_existential_1(a1, v3);
  sub_255E38E88();
  sub_255DA463C(&qword_27F7E7BA8, MEMORY[0x277CDDE68], MEMORY[0x277CDDE58]);
  swift_getOpaqueTypeMetadata2();
  v14 = sub_255E38C98();
  v5 = sub_255DA463C(&qword_27F7E7BA0, MEMORY[0x277CDDBD0], MEMORY[0x277CDDBC8]);
  swift_getOpaqueTypeMetadata2();
  v6 = sub_255E39268();
  v13 = sub_255E38DB8();
  v7 = sub_255DA463C(&qword_27F7E7B98, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
  swift_getOpaqueTypeMetadata2();
  v8 = sub_255E39268();
  a2[3] = v8;
  v20 = v3;
  v21 = v14;
  v22 = v4;
  v23 = v5;
  v19[0] = swift_getOpaqueTypeConformance2();
  v19[1] = swift_getOpaqueTypeConformance2();
  v9 = MEMORY[0x277CE0340];
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CE0340], v6, v19);
  v20 = v3;
  v21 = v13;
  v22 = v4;
  v23 = v7;
  v18[0] = WitnessTable;
  v18[1] = swift_getOpaqueTypeConformance2();
  a2[4] = swift_getWitnessTable(v9, v8, v18);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_255DA30DC(v16, v17, v3, v4, boxed_opaque_existential_1);
}

uint64_t sub_255DA4594@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_255DA4684(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_255DA45C0(uint64_t a1)
{
  result = sub_255DA45E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DA45E8()
{
  result = qword_27F7E7B90;
  if (!qword_27F7E7B90)
  {
    result = swift_getWitnessTable(aW, &type metadata for ToggleStyleModifier, v0, v1);
    atomic_store(result, &qword_27F7E7B90);
  }

  return result;
}

uint64_t sub_255DA463C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255DA4684(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7BB0, &qword_255E4EC88);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DA4800();
  sub_255E3AE28();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return 0;
  }

  else
  {
    sub_255DA4854();
    sub_255E3ABA8();
    (*(v4 + 8))(v6, v3);
    if (v10 == 3)
    {
      v8 = 0;
    }

    else
    {
      v8 = v10;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v8;
  }
}

unint64_t sub_255DA4800()
{
  result = qword_27F7E7BB8;
  if (!qword_27F7E7BB8)
  {
    result = swift_getWitnessTable(byte_255E4EE94, &type metadata for ToggleStyleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7BB8);
  }

  return result;
}

unint64_t sub_255DA4854()
{
  result = qword_27F7E7BC0;
  if (!qword_27F7E7BC0)
  {
    result = swift_getWitnessTable(byte_255E4EE6C, &type metadata for ToggleStyleString, v0, v1);
    atomic_store(result, &qword_27F7E7BC0);
  }

  return result;
}

unint64_t sub_255DA48CC()
{
  result = qword_27F7E7BC8;
  if (!qword_27F7E7BC8)
  {
    result = swift_getWitnessTable(aU_8, &type metadata for ToggleStyleString, v0, v1);
    atomic_store(result, &qword_27F7E7BC8);
  }

  return result;
}

unint64_t sub_255DA4924()
{
  result = qword_27F7E7BD0;
  if (!qword_27F7E7BD0)
  {
    result = swift_getWitnessTable(byte_255E4EE44, &type metadata for ToggleStyleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7BD0);
  }

  return result;
}

unint64_t sub_255DA497C()
{
  result = qword_27F7E7BD8;
  if (!qword_27F7E7BD8)
  {
    result = swift_getWitnessTable(asc_255E4ED7C, &type metadata for ToggleStyleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7BD8);
  }

  return result;
}

unint64_t sub_255DA49D4()
{
  result = qword_27F7E7BE0;
  if (!qword_27F7E7BE0)
  {
    result = swift_getWitnessTable(a5_4, &type metadata for ToggleStyleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7BE0);
  }

  return result;
}

unint64_t sub_255DA4A28()
{
  result = qword_27F7E7BE8;
  if (!qword_27F7E7BE8)
  {
    result = swift_getWitnessTable(aW_0, &type metadata for ToggleStyleString, v0, v1);
    atomic_store(result, &qword_27F7E7BE8);
  }

  return result;
}

unint64_t sub_255DA4A7C(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void sub_255DA4AC8(int a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v85 = a3;
  v84 = a1;
  v88 = 0xEF79786F72507765;
  v87 = 0x69566C6C6F726373;
  v6 = sub_255E3A3B8();
  v82 = *(v6 - 8);
  v83 = v6;
  MEMORY[0x28223BE20](v6);
  v80 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_255E3A3D8();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v78 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7C00, &qword_255E4EF80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v73 - v10;
  v86 = sub_255E38B18();
  v12 = *(v86 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v86);
  v77 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v73 - v15;
  v17 = *(v3 + 40);
  if (v17 <= 0xFD)
  {
    v18 = &v73 - v15;
    v19 = v12;
    v20 = *(v3 + 24);
    v21 = *(v3 + 32);
    *&aBlock = *(v3 + 16);
    *(&aBlock + 1) = v20;
    *&v97 = v21;
    BYTE8(v97) = v17;
    sub_255D3E5A8(aBlock, v20, v21, v17);
    v22 = StringResolvable.resolved(with:)(a2);
    v24 = v23;
    sub_255D38060(aBlock, *(&aBlock + 1), v97, BYTE8(v97));
    v87 = v22;
    v88 = v24;
    v12 = v19;
    v16 = v18;
  }

  v25 = *(v4 + 136);
  if ((v25 & 0xFE) == 0x7E)
  {
    v26 = 0.0;
    v27 = 0;
    v28 = 1;
  }

  else
  {
    v29 = *(v4 + 96);
    v91 = *(v4 + 80);
    v92 = v29;
    v93 = *(v4 + 112);
    *&v94 = *(v4 + 128);
    *(&v94 + 1) = v25;
    v95[0] = *(v4 + 144);
    *(v95 + 9) = *(v4 + 153);
    aBlock = v91;
    v97 = v29;
    v98 = v93;
    v99 = v94;
    v100 = v25;
    *(v101 + 9) = *(v4 + 153);
    v101[0] = *(v4 + 144);
    sub_255D647DC(&aBlock, v89);
    v30 = sub_255D60484(a2);
    v32 = v31;
    v89[2] = v93;
    v89[3] = v94;
    v90[0] = v95[0];
    *(v90 + 9) = *(v95 + 9);
    v89[0] = v91;
    v89[1] = v92;
    sub_255D64744(v89);
    v28 = 0;
    v26 = v30;
    v27 = v32;
  }

  v33 = *(v4 + 72);
  if (v33 > 0xFD)
  {

    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v38 = sub_255E386A8();
    __swift_project_value_buffer(v38, qword_27F8152D8);
    v39 = sub_255E38688();
    v40 = sub_255E3A848();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_14;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_255D2E000, v39, v40, "ScrollAction: unable to resolve scrollToId", v41, 2u);
    goto LABEL_13;
  }

  v75 = v27;
  v76 = v28;
  v34 = v26;
  v35 = *(v4 + 56);
  v36 = *(v4 + 64);
  *&aBlock = *(v4 + 48);
  *(&aBlock + 1) = v35;
  *&v97 = v36;
  BYTE8(v97) = v33;
  sub_255D3E5A8(aBlock, v35, v36, v33);
  v37 = StringResolvable.resolved(with:)(a2);
  v43 = v42;
  v74 = v37;
  sub_255D38060(aBlock, *(&aBlock + 1), v97, BYTE8(v97));
  v44 = v88;
  _s6LiftUI15LocalStateStoreCyypSgSScig_0(v87, v88, &aBlock);
  if (!*(&v97 + 1))
  {

    sub_255D395E4(&aBlock, &qword_27F7E7C08, &qword_255E4EF88);
    (*(v12 + 56))(v11, 1, 1, v86);
    goto LABEL_19;
  }

  v45 = v86;
  v46 = swift_dynamicCast();
  (*(v12 + 56))(v11, v46 ^ 1u, 1, v45);
  if ((*(v12 + 48))(v11, 1, v45) == 1)
  {

LABEL_19:
    sub_255D395E4(v11, &qword_27F7E7C00, &qword_255E4EF80);
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v47 = sub_255E386A8();
    __swift_project_value_buffer(v47, qword_27F8152D8);

    v39 = sub_255E38688();
    v48 = sub_255E3A848();

    if (!os_log_type_enabled(v39, v48))
    {

      goto LABEL_14;
    }

    v41 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&aBlock = v49;
    *v41 = 136315138;
    v50 = sub_255D378C0(v87, v44, &aBlock);

    *(v41 + 4) = v50;
    _os_log_impl(&dword_255D2E000, v39, v48, "ScrollAction: unable to resolve ScrollViewProxy at key %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x259C4F9E0](v49, -1, -1);
LABEL_13:
    MEMORY[0x259C4F9E0](v41, -1, -1);
LABEL_14:

    return;
  }

  v51 = v12;
  v52 = v12 + 32;
  v53 = *(v12 + 32);
  v53(v16, v11, v45);
  v88 = v53;
  if (v84)
  {
    if ([objc_opt_self() isMainThread])
    {
      *&aBlock = v74;
      *(&aBlock + 1) = v43;
      sub_255E38B08();
      (*(v51 + 8))(v16, v45);

      return;
    }

    v54 = v52;
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v55 = sub_255E386A8();
    __swift_project_value_buffer(v55, qword_27F8152D8);
    v56 = sub_255E38688();
    v57 = sub_255E3A848();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_255D2E000, v56, v57, "Synchronous call to ScrollAction is not on main thread, running async on main thread.", v58, 2u);
      MEMORY[0x259C4F9E0](v58, -1, -1);
    }

    v45 = v86;
    v52 = v54;
  }

  v85 = v52;
  sub_255DA5ED4();
  v87 = sub_255E3A878();
  v59 = *(v51 + 16);
  v73 = v51;
  v60 = v77;
  v59(v77, v16, v45);
  v61 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v62 = (v13 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  v88(v63 + v61, v60, v45);
  v64 = (v63 + v62);
  v65 = v75;
  *v64 = v74;
  v64[1] = v43;
  v66 = v63 + ((v62 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v66 = v34;
  *(v66 + 8) = v65;
  *(v66 + 16) = v76;
  *&v98 = sub_255DA5F20;
  *(&v98 + 1) = v63;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v97 = sub_255D5D0C8;
  *(&v97 + 1) = &block_descriptor_0;
  v67 = _Block_copy(&aBlock);

  v68 = v78;
  sub_255E3A3C8();
  *&aBlock = MEMORY[0x277D84F90];
  sub_255DA5FF8(&qword_27F7E6AE0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6AE8, &qword_255E3E938);
  sub_255DA6040();
  v69 = v16;
  v70 = v80;
  v71 = v83;
  sub_255E3A928();
  v72 = v87;
  MEMORY[0x259C4EBE0](0, v68, v70, v67);
  _Block_release(v67);

  (*(v82 + 8))(v70, v71);
  (*(v79 + 8))(v68, v81);
  (*(v73 + 8))(v69, v86);
}

uint64_t sub_255DA559C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x79654B61746164;
  if (v2 != 1)
  {
    v4 = 0x726F68636E61;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x79654B61746164;
  if (*a2 != 1)
  {
    v8 = 0x726F68636E61;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255DA5690()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DA5724(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255DA57A4(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255DA5834@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255DA62A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255DA5864(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x79654B61746164;
  if (v2 != 1)
  {
    v5 = 0x726F68636E61;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255DA58B4()
{
  v1 = 0x79654B61746164;
  if (*v0 != 1)
  {
    v1 = 0x726F68636E61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

unint64_t sub_255DA5900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255DA62A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255DA5928(uint64_t a1)
{
  v2 = sub_255DA60A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DA5964(uint64_t a1)
{
  v2 = sub_255DA60A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t *sub_255DA59A0(void *a1)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7C10, &qword_255E4EF90);
  v4 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v6 = &v16 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DA60A4();
  sub_255E3AE28();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v7 = v4;
    v23 = 0;
    sub_255D3EA0C();
    v8 = v17;
    sub_255E3ABA8();
    v9 = v19;
    v10 = BYTE8(v19);
    *(v1 + 48) = v18;
    *(v1 + 64) = v9;
    *(v1 + 72) = v10;
    v23 = 1;
    sub_255E3ABA8();
    v11 = v19;
    v12 = BYTE8(v19);
    *(v1 + 16) = v18;
    *(v1 + 32) = v11;
    *(v1 + 40) = v12;
    v23 = 2;
    sub_255D653AC();
    sub_255E3ABA8();
    (*(v7 + 8))(v6, v8);
    v14 = v21;
    *(v1 + 112) = v20;
    *(v1 + 128) = v14;
    *(v1 + 144) = v22[0];
    *(v1 + 153) = *(v22 + 9);
    v15 = v19;
    *(v1 + 80) = v18;
    *(v1 + 96) = v15;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_255DA5C7C()
{
  sub_255D64814(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_255D64814(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  sub_255DA60F8(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));

  return swift_deallocClassInstance();
}

uint64_t sub_255DA5D24(unint64_t a1, uint64_t a2)
{
  sub_255DA4AC8(0, a1, a2);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t *sub_255DA5DCC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_255DA59A0(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_255DA5E24(uint64_t a1, uint64_t a2)
{
  result = sub_255DA5FF8(&qword_27F7E7BF0, a2, type metadata accessor for ScrollAction, byte_255E4EF14);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_255DA5E7C(uint64_t a1, uint64_t a2)
{
  result = sub_255DA5FF8(&qword_27F7E7BF8, a2, type metadata accessor for ScrollAction, a5_15);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DA5ED4()
{
  result = qword_27F7E6AD8;
  if (!qword_27F7E6AD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7E6AD8);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_255DA5FF8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_255DA6040()
{
  result = qword_27F7E6AF0;
  if (!qword_27F7E6AF0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6AE8, &qword_255E3E938);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v3, v0, v1);
    atomic_store(result, &qword_27F7E6AF0);
  }

  return result;
}

unint64_t sub_255DA60A4()
{
  result = qword_27F7E7C18;
  if (!qword_27F7E7C18)
  {
    result = swift_getWitnessTable(byte_255E4F094, &type metadata for ScrollAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7C18);
  }

  return result;
}

void sub_255DA60F8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if ((a8 & 0xFE) != 0x7ELL)
  {
    sub_255D64814(a1, a2, a3, a4);
    sub_255D647C8(a5, a6, a7, a8);

    sub_255D647C8(a9, a10, a11, a12);
  }
}

unint64_t sub_255DA61A4()
{
  result = qword_27F7E7C20;
  if (!qword_27F7E7C20)
  {
    result = swift_getWitnessTable(asc_255E4F06C, &type metadata for ScrollAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7C20);
  }

  return result;
}

unint64_t sub_255DA61FC()
{
  result = qword_27F7E7C28;
  if (!qword_27F7E7C28)
  {
    result = swift_getWitnessTable(byte_255E4EFA4, &type metadata for ScrollAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7C28);
  }

  return result;
}

unint64_t sub_255DA6254()
{
  result = qword_27F7E7C30;
  if (!qword_27F7E7C30)
  {
    result = swift_getWitnessTable(asc_255E4EFCC, &type metadata for ScrollAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7C30);
  }

  return result;
}

unint64_t sub_255DA62A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255DA6304@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7C48, &qword_255E4F240);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DA67D0();
  sub_255E3AE28();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E62E0, &qword_255E3C940);
    sub_255D65400();
    sub_255E3ABC8();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = v14;
    *a2 = v12;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255DA6498()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255DA650C(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255DA6560@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_255E3AB48();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_255DA65F0@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_255E3AB48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_255DA6648(uint64_t a1)
{
  v2 = sub_255DA67D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DA6684(uint64_t a1)
{
  v2 = sub_255DA67D0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_255DA66D8(uint64_t a1)
{
  result = sub_255DA6700();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DA6700()
{
  result = qword_27F7E7C38;
  if (!qword_27F7E7C38)
  {
    result = swift_getWitnessTable(aM_6, &type metadata for StrokeModifier, v0, v1);
    atomic_store(result, &qword_27F7E7C38);
  }

  return result;
}

unint64_t sub_255DA6754(uint64_t a1)
{
  result = sub_255DA677C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DA677C()
{
  result = qword_27F7E7C40;
  if (!qword_27F7E7C40)
  {
    result = swift_getWitnessTable(asc_255E4F1E0, &type metadata for StrokeModifier, v0, v1);
    atomic_store(result, &qword_27F7E7C40);
  }

  return result;
}

unint64_t sub_255DA67D0()
{
  result = qword_27F7E7C50;
  if (!qword_27F7E7C50)
  {
    result = swift_getWitnessTable(byte_255E4F344, &type metadata for StrokeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7C50);
  }

  return result;
}

unint64_t sub_255DA6838()
{
  result = qword_27F7E7C58;
  if (!qword_27F7E7C58)
  {
    result = swift_getWitnessTable(byte_255E4F31C, &type metadata for StrokeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7C58);
  }

  return result;
}

unint64_t sub_255DA6890()
{
  result = qword_27F7E7C60;
  if (!qword_27F7E7C60)
  {
    result = swift_getWitnessTable(aM_7, &type metadata for StrokeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7C60);
  }

  return result;
}

unint64_t sub_255DA68E8()
{
  result = qword_27F7E7C68;
  if (!qword_27F7E7C68)
  {
    result = swift_getWitnessTable(asc_255E4F27C, &type metadata for StrokeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7C68);
  }

  return result;
}

uint64_t sub_255DA695C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7C90, &qword_255E4F7D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v50 = &v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7C98, &qword_255E4F7D8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v46 - v12;
  v14 = *(v1 + 96);
  v49 = v6;
  if (v14 <= 0xFD)
  {
    v16 = a1;
    v17 = &v46 - v12;
    v18 = *(v1 + 72);
    v19 = *(v1 + 80);
    v20 = *(v1 + 88);
    *&v56 = v18;
    *(&v56 + 1) = v19;
    *&v57 = v20;
    BYTE8(v57) = v14;
    if (!*(v1 + 104))
    {
LABEL_32:
      sub_255D3E5A8(v18, v19, v20, v14);
LABEL_33:
      type metadata accessor for RemoteStateStore(0);
      sub_255DA854C(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
      result = sub_255E38CB8();
      __break(1u);
      return result;
    }

    sub_255D94C04(v18, v19, v20, v14);

    v4 = StringResolvable.resolved(with:)(v21);
    v15 = v22;
    sub_255D38060(v56, *(&v56 + 1), v57, BYTE8(v57));

    v13 = v17;
    a1 = v16;
    v6 = v49;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v23 = v4;
  }

  else
  {
    v23 = 0;
  }

  if (v15)
  {
    v24 = v15;
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  v25 = sub_255DA835C(v23, v24);
  if (v25 <= 1)
  {
    if (v25)
    {
      sub_255E387C8();
    }

    else
    {
      sub_255E387A8();
    }
  }

  else if (v25 == 2)
  {
    sub_255E387D8();
  }

  else
  {
    if (v25 != 3)
    {
      v26 = sub_255E387E8();
      (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
      goto LABEL_21;
    }

    sub_255E387B8();
  }

  v27 = sub_255E387E8();
  (*(*(v27 - 8) + 56))(v13, 0, 1, v27);
LABEL_21:
  v48 = v13;
  sub_255DA83A8(v13, v11);
  sub_255D4D8B8(v2, &v56);
  v28 = swift_allocObject();
  *(v28 + 144) = v64;
  v29 = v63;
  *(v28 + 112) = v62;
  *(v28 + 128) = v29;
  v30 = v59;
  *(v28 + 48) = v58;
  *(v28 + 64) = v30;
  v31 = v61;
  *(v28 + 80) = v60;
  *(v28 + 96) = v31;
  v32 = v57;
  *(v28 + 16) = v56;
  *(v28 + 32) = v32;
  MEMORY[0x28223BE20](v28);
  *(&v46 - 2) = v2;
  sub_255E39FC8();
  v33 = sub_255D48A94(v2[3]);
  v34 = v2[13];
  if (!v34)
  {
    goto LABEL_33;
  }

  v35 = v2[15];
  if (!v35)
  {
    type metadata accessor for LocalStateStore(0);
    sub_255DA854C(&qword_27F7E5EF8, type metadata accessor for LocalStateStore, protocol conformance descriptor for StateDict<A, B>);

    v18 = sub_255E38CB8();
    __break(1u);
    goto LABEL_32;
  }

  v36 = v33;
  v54 = v5;
  v55 = sub_255DA8480();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v53);
  (*(v6 + 16))(boxed_opaque_existential_1, v50, v5);
  v38 = *(v36 + 16);
  if (v38)
  {
    v46 = v5;
    v47 = a1;
    v39 = v36 + 32;

    do
    {
      sub_255D3CE1C(v39, &v56);
      v40 = *(&v57 + 1);
      v41 = v58;
      __swift_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
      (*(v41 + 16))(v51, &v53, v34, v35, v40, v41);
      __swift_destroy_boxed_opaque_existential_1Tm(&v56);
      sub_255D34630(v51, v52);
      __swift_destroy_boxed_opaque_existential_1Tm(&v53);
      sub_255D34630(v52, &v53);
      v39 += 40;
      --v38;
    }

    while (v38);

    v5 = v46;
    a1 = v47;
  }

  else
  {
  }

  (*(v49 + 8))(v50, v5);
  sub_255D34630(&v53, &v56);
  v42 = *(&v57 + 1);
  v43 = v58;
  __swift_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
  v44 = View.anyView.getter(v42, v43);
  sub_255DA84E4(v48);
  result = __swift_destroy_boxed_opaque_existential_1Tm(&v56);
  *a1 = v44;
  return result;
}

uint64_t sub_255DA6F78(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = a1[13];
  if (v5)
  {
    v6 = a1[15];
    if (v6)
    {
      v7 = a1[3];
      v8 = sub_255E3A778();
      (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
      v9 = swift_allocObject();
      v9[2] = 0;
      v9[3] = 0;
      v9[4] = v7;
      v9[5] = v5;
      v9[6] = v6;

      sub_255D52540(0, 0, v4, &unk_255E5A580, v9);
    }
  }

  else
  {
    type metadata accessor for RemoteStateStore(0);
    sub_255DA854C(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
    sub_255E38CB8();
    __break(1u);
  }

  type metadata accessor for LocalStateStore(0);
  sub_255DA854C(&qword_27F7E5EF8, type metadata accessor for LocalStateStore, protocol conformance descriptor for StateDict<A, B>);

  result = sub_255E38CB8();
  __break(1u);
  return result;
}

uint64_t sub_255DA7184()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DA7230(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255DA72C8(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255DA7370@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255DA889C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255DA73A0(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE500000000000000;
  v5 = 0x6C6562616CLL;
  if (*v1 != 2)
  {
    v5 = 1701605234;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x736E6F69746361;
    v2 = 0xE700000000000000;
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

uint64_t sub_255DA7408()
{
  v1 = 25705;
  v2 = 0x6C6562616CLL;
  if (*v0 != 2)
  {
    v2 = 1701605234;
  }

  if (*v0)
  {
    v1 = 0x736E6F69746361;
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

unint64_t sub_255DA746C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255DA889C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255DA7494(uint64_t a1)
{
  v2 = sub_255DA85E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DA74D0(uint64_t a1)
{
  v2 = sub_255DA85E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DA750C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_255E385D8();
  v34 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7CB8, &qword_255E4F7E8);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v45[2] = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255DA854C(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  v37 = sub_255E38CC8();
  v49 = v37;
  v50 = v10;
  type metadata accessor for LocalStateStore(0);
  sub_255DA854C(&qword_27F7E5EF8, type metadata accessor for LocalStateStore, protocol conformance descriptor for StateDict<A, B>);
  v36 = sub_255E38CC8();
  v51 = v36;
  v52 = v11;
  v12 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_255DA85E8();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
LABEL_4:
  }

  v13 = v34;
  v14 = v4;
  v15 = MEMORY[0x277D84F90];
  LOBYTE(v40) = 0;
  v16 = sub_255E3AB88();
  v18 = v7;
  if (!v17)
  {
    sub_255E385C8();
    v20 = sub_255E385B8();
    v22 = v21;
    (*(v13 + 8))(v6, v14);
    v17 = v22;
    v16 = v20;
  }

  v45[0] = v16;
  v45[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7428, &qword_255E480C0);
  LOBYTE(v40) = 1;
  sub_255D7B658();
  sub_255E3ABC8();
  v23 = 0;
  v24 = v35;
  v25 = v53;
  v26 = *(v53 + 16);
  if (v26)
  {
    v34 = 0;
    v32 = v18;
    v44 = v15;
    sub_255DE5EF0(0, v26, 0);
    v27 = v44;
    v28 = v25 + 32;
    do
    {
      sub_255D7B730(v28, v39);
      sub_255D34630(v39, &v40);
      v44 = v27;
      v30 = *(v27 + 16);
      v29 = *(v27 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_255DE5EF0((v29 > 1), v30 + 1, 1);
        v27 = v44;
      }

      *(v27 + 16) = v30 + 1;
      sub_255D34630(&v40, v27 + 40 * v30 + 32);
      v28 += 40;
      --v26;
    }

    while (v26);

    v18 = v32;
    v24 = v35;
    v23 = v34;
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  v45[3] = v27;
  LOBYTE(v39[0]) = 2;
  v42 = &type metadata for ViewContent;
  v43 = sub_255D44794();
  *&v40 = swift_allocObject();
  sub_255D447E8();
  sub_255E3ABC8();
  v31 = v33;
  if (v23)
  {
    (*(v24 + 8))(v9, v18);
    __swift_deallocate_boxed_opaque_existential_1(&v40);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);

    goto LABEL_4;
  }

  sub_255D34630(&v40, v46);
  LOBYTE(v39[0]) = 3;
  sub_255D3EA0C();
  sub_255E3ABA8();
  (*(v24 + 8))(v9, v18);
  *&v46[40] = v40;
  v47 = v41;
  v48 = v42;
  sub_255D4D8B8(v45, v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  return sub_255DA863C(v45);
}

uint64_t sub_255DA7B48@<X0>(uint64_t *a1@<X8>)
{
  sub_255DA695C(&v3);
  result = sub_255E3A038();
  *a1 = result;
  return result;
}

unint64_t sub_255DA7BF8()
{
  result = qword_27F7E7C70;
  if (!qword_27F7E7C70)
  {
    result = swift_getWitnessTable(byte_255E4F7B0, &type metadata for ButtonView, v0, v1);
    atomic_store(result, &qword_27F7E7C70);
  }

  return result;
}

uint64_t sub_255DA7C4C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_255E3AB48();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_255DA7CA0@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_255E3AB48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_255DA7CF8(uint64_t a1)
{
  v2 = sub_255DA8594();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DA7D34(uint64_t a1)
{
  v2 = sub_255DA8594();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DA7D70@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_255E38808();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  sub_255E387F8();
  (*(v3 + 16))(v6, v8, v2);
  sub_255DA854C(&qword_27F7E69F0, MEMORY[0x277CDD680], MEMORY[0x277CDD678]);
  v9 = sub_255E3A038();
  result = (*(v3 + 8))(v8, v2);
  *a1 = v9;
  return result;
}

void *sub_255DA7ECC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_255DA8100(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_255DA7F44(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  a4(a1, a2, a3);
  a5();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_255DA7FB4()
{
  result = qword_27F7E7C78;
  if (!qword_27F7E7C78)
  {
    result = swift_getWitnessTable(byte_255E4F794, &type metadata for EditButtonView, v0, v1);
    atomic_store(result, &qword_27F7E7C78);
  }

  return result;
}

unint64_t sub_255DA8008(uint64_t a1)
{
  result = sub_255DA8030();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255DA8030()
{
  result = qword_27F7E7C80;
  if (!qword_27F7E7C80)
  {
    result = swift_getWitnessTable(asc_255E4F700, &type metadata for EditButtonView, v0, v1);
    atomic_store(result, &qword_27F7E7C80);
  }

  return result;
}

unint64_t sub_255DA8084(uint64_t a1)
{
  result = sub_255DA80AC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255DA80AC()
{
  result = qword_27F7E7C88;
  if (!qword_27F7E7C88)
  {
    result = swift_getWitnessTable(byte_255E4F65C, &type metadata for ButtonView, v0, v1);
    atomic_store(result, &qword_27F7E7C88);
  }

  return result;
}

void *sub_255DA8100(void *a1)
{
  v3 = sub_255E385D8();
  v15 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7CA8, &qword_255E4F7E0);
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DA8594();
  sub_255E3AE28();
  if (!v1)
  {
    v10 = v16;
    v14 = v3;
    v11 = sub_255E3AB88();
    if (v12)
    {
      v9 = v11;
    }

    else
    {
      sub_255E385C8();
      v9 = sub_255E385B8();
      (*(v15 + 8))(v5, v14);
    }

    (*(v10 + 8))(v8, v6);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

unint64_t sub_255DA835C(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255DA83A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7C98, &qword_255E4F7D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255DA8420@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[7];
  v5 = v3[8];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v4);
  result = (*(v5 + 24))(v4, v5);
  *a1 = result;
  return result;
}

unint64_t sub_255DA8480()
{
  result = qword_27F7E7CA0;
  if (!qword_27F7E7CA0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7C90, &qword_255E4F7D0);
    result = swift_getWitnessTable(MEMORY[0x277CDF028], v3, v0, v1);
    atomic_store(result, &qword_27F7E7CA0);
  }

  return result;
}

uint64_t sub_255DA84E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7C98, &qword_255E4F7D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255DA854C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_255DA8594()
{
  result = qword_27F7E7CB0;
  if (!qword_27F7E7CB0)
  {
    result = swift_getWitnessTable(byte_255E4FA2C, &type metadata for EditButtonView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7CB0);
  }

  return result;
}

unint64_t sub_255DA85E8()
{
  result = qword_27F7E7CC0;
  if (!qword_27F7E7CC0)
  {
    result = swift_getWitnessTable(aM_8, &type metadata for ButtonView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7CC0);
  }

  return result;
}

unint64_t sub_255DA8690()
{
  result = qword_27F7E7CC8;
  if (!qword_27F7E7CC8)
  {
    result = swift_getWitnessTable(byte_255E4F8C4, &type metadata for EditButtonView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7CC8);
  }

  return result;
}

unint64_t sub_255DA86E8()
{
  result = qword_27F7E7CD0;
  if (!qword_27F7E7CD0)
  {
    result = swift_getWitnessTable(byte_255E4F9B4, &type metadata for ButtonView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7CD0);
  }

  return result;
}

unint64_t sub_255DA8740()
{
  result = qword_27F7E7CD8;
  if (!qword_27F7E7CD8)
  {
    result = swift_getWitnessTable(byte_255E4F8EC, &type metadata for ButtonView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7CD8);
  }

  return result;
}

unint64_t sub_255DA8798()
{
  result = qword_27F7E7CE0;
  if (!qword_27F7E7CE0)
  {
    result = swift_getWitnessTable(aUX, &type metadata for ButtonView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7CE0);
  }

  return result;
}

unint64_t sub_255DA87F0()
{
  result = qword_27F7E7CE8;
  if (!qword_27F7E7CE8)
  {
    result = swift_getWitnessTable(byte_255E4F7FC, &type metadata for EditButtonView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7CE8);
  }

  return result;
}

unint64_t sub_255DA8848()
{
  result = qword_27F7E7CF0;
  if (!qword_27F7E7CF0)
  {
    result = swift_getWitnessTable(byte_255E4F824, &type metadata for EditButtonView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7CF0);
  }

  return result;
}

unint64_t sub_255DA889C(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ButtonBorderShapeModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[17])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ButtonBorderShapeModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_255DA8994@<X0>(uint64_t (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, int a3@<W2>, unsigned __int8 a4@<W3>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v122 = a6;
  v103 = a3;
  v102[1] = a2;
  v113 = a1;
  v118 = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7D00, &unk_255E4FB00);
  v8 = sub_255E38AE8();
  v9 = sub_255E39268();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E66F0, &unk_255E3E190);
  v11 = sub_255E39268();
  v106 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v105 = v102 - v13;
  v107 = *(v9 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v104 = v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v108 = v102 - v16;
  v116 = v17;
  v117 = v9;
  v18 = sub_255E39268();
  v110 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v109 = v102 - v19;
  v20 = sub_255E38C78();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = *(v8 - 8);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v119 = v102 - v28;
  v120 = v10;
  v115 = v18;
  v29 = sub_255E39268();
  v30 = MEMORY[0x28223BE20](v29);
  v114 = v102 - v31;
  v111 = v32;
  v112 = v30;
  if (a4 <= 1u)
  {
    if (a4)
    {
      sub_255E38C58();
      v75 = v122;
      sub_255E39A28();
      (*(v21 + 8))(v24, v20);
      v76 = sub_255DAA3D4();
      v130[0] = v75;
      v130[1] = v76;
      WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v8, v130);
      sub_255D4F130();
      v78 = *(v121 + 8);
      v121 += 8;
      v113 = v78;
      v78(v27, v8);
      sub_255D4F130();
      v79 = v108;
      sub_255D3F908(v27, v8, v8);
      v129[0] = WitnessTable;
      v129[1] = WitnessTable;
      v54 = MEMORY[0x277CE0340];
      v55 = v117;
      v80 = swift_getWitnessTable(MEMORY[0x277CE0340], v117, v129);
      v106 = sub_255D4FC94();
      v128[0] = v80;
      v128[1] = v106;
      v57 = v116;
      v81 = swift_getWitnessTable(v54, v116, v128);
      v59 = v109;
      sub_255D3F810(v79, v55);
      (*(v107 + 8))(v79, v55);
      v127[0] = v80;
      v127[1] = v81;
      v60 = v127;
    }

    else
    {
      sub_255E38C68();
      v49 = v122;
      sub_255E39A28();
      (*(v21 + 8))(v24, v20);
      v50 = sub_255DAA3D4();
      v126[0] = v49;
      v126[1] = v50;
      v51 = swift_getWitnessTable(MEMORY[0x277CDFAD8], v8, v126);
      sub_255D4F130();
      v52 = *(v121 + 8);
      v121 += 8;
      v113 = v52;
      v52(v27, v8);
      sub_255D4F130();
      v53 = v108;
      sub_255D3F810(v27, v8);
      v125[0] = v51;
      v125[1] = v51;
      v54 = MEMORY[0x277CE0340];
      v55 = v117;
      v56 = swift_getWitnessTable(MEMORY[0x277CE0340], v117, v125);
      v106 = sub_255D4FC94();
      v124[0] = v56;
      v124[1] = v106;
      v57 = v116;
      v58 = swift_getWitnessTable(v54, v116, v124);
      v59 = v109;
      sub_255D3F810(v53, v55);
      (*(v107 + 8))(v53, v55);
      v123[0] = v56;
      v123[1] = v58;
      v60 = v123;
    }

    v47 = v115;
    swift_getWitnessTable(v54, v115, v60);
    v48 = v114;
    sub_255D3F810(v59, v47);
    (*(v110 + 8))(v59, v47);
    v82 = v27;
    v40 = v55;
    v44 = v57;
    v83 = v113;
    v113(v82, v8);
    v83(v119, v8);
  }

  else if (a4 == 2)
  {
    if (v103)
    {
      sub_255E38C38();
      v61 = v122;
      sub_255E39A28();
      (*(v21 + 8))(v24, v20);
      v62 = sub_255DAA3D4();
      v136[0] = v61;
      v136[1] = v62;
      swift_getWitnessTable(MEMORY[0x277CDFAD8], v8, v136);
      v63 = v119;
      sub_255D4F130();
      v64 = *(v121 + 8);
      v64(v27, v8);
      sub_255D4F130();
      sub_255D3F908(v27, v8, v8);
    }

    else
    {
      sub_255E38C28();
      v61 = v122;
      sub_255E39A28();
      (*(v21 + 8))(v24, v20);
      v84 = sub_255DAA3D4();
      v131[0] = v61;
      v131[1] = v84;
      swift_getWitnessTable(MEMORY[0x277CDFAD8], v8, v131);
      v63 = v119;
      sub_255D4F130();
      v64 = *(v121 + 8);
      v64(v27, v8);
      sub_255D4F130();
      sub_255D3F810(v27, v8);
    }

    v64(v27, v8);
    v64(v63, v8);
    v85 = sub_255DAA3D4();
    v135[0] = v61;
    v135[1] = v85;
    v134[0] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v8, v135);
    v134[1] = v134[0];
    v86 = MEMORY[0x277CE0340];
    v40 = v117;
    v87 = swift_getWitnessTable(MEMORY[0x277CE0340], v117, v134);
    v88 = v108;
    sub_255D4F130();
    v89 = sub_255D4FC94();
    v90 = v105;
    sub_255D3F810(v88, v40);
    v133[0] = v87;
    v133[1] = v89;
    v44 = v116;
    v91 = swift_getWitnessTable(v86, v116, v133);
    v92 = v109;
    sub_255D3F908(v90, v40, v44);
    (*(v106 + 8))(v90, v44);
    v132[0] = v87;
    v132[1] = v91;
    v47 = v115;
    swift_getWitnessTable(v86, v115, v132);
    v48 = v114;
    sub_255D3F810(v92, v47);
    (*(v110 + 8))(v92, v47);
    v93 = *(v107 + 8);
    v93(v108, v40);
    v93(v104, v40);
  }

  else if (a4 == 3)
  {
    sub_255E38C48();
    v33 = v122;
    sub_255E39A28();
    (*(v21 + 8))(v24, v20);
    v34 = sub_255DAA3D4();
    v140[0] = v33;
    v140[1] = v34;
    v35 = swift_getWitnessTable(MEMORY[0x277CDFAD8], v8, v140);
    v36 = v119;
    sub_255D4F130();
    v37 = *(v121 + 8);
    v37(v27, v8);
    sub_255D4F130();
    v38 = sub_255DA989C(v27, v8, v35);
    v37(v27, v8);
    v37(v36, v8);
    v121 = v38;
    v149 = v38;
    v139[0] = v35;
    v139[1] = v35;

    v39 = MEMORY[0x277CE0340];
    v40 = v117;
    v41 = swift_getWitnessTable(MEMORY[0x277CE0340], v117, v139);
    v42 = sub_255D4FC94();
    v43 = v105;
    sub_255D3F908(&v149, v40, v120);
    v138[0] = v41;
    v138[1] = v42;
    v44 = v116;
    v45 = swift_getWitnessTable(v39, v116, v138);
    v46 = v109;
    sub_255D3F908(v43, v40, v44);
    (*(v106 + 8))(v43, v44);
    v137[0] = v41;
    v137[1] = v45;
    v47 = v115;
    swift_getWitnessTable(v39, v115, v137);
    v48 = v114;
    sub_255D3F810(v46, v47);

    (*(v110 + 8))(v46, v47);
  }

  else
  {
    sub_255E38C68();
    v65 = v122;
    sub_255E39A28();
    (*(v21 + 8))(v24, v20);
    v66 = sub_255DAA3D4();
    v150[0] = v65;
    v150[1] = v66;
    v67 = swift_getWitnessTable(MEMORY[0x277CDFAD8], v8, v150);
    v68 = v119;
    sub_255D4F130();
    v69 = *(v121 + 8);
    v69(v27, v8);
    sub_255D4F130();
    v70 = sub_255DA989C(v27, v8, v67);
    v69(v27, v8);
    v69(v68, v8);
    v148[1] = v67;
    v149 = v70;
    v148[0] = v67;
    v71 = MEMORY[0x277CE0340];
    v40 = v117;
    v72 = swift_getWitnessTable(MEMORY[0x277CE0340], v117, v148);
    v73 = sub_255D4FC94();
    v147[0] = v72;
    v147[1] = v73;
    v44 = v116;
    v74 = swift_getWitnessTable(v71, v116, v147);
    v146[0] = v72;
    v146[1] = v74;
    v47 = v115;
    swift_getWitnessTable(v71, v115, v146);
    v48 = v114;
    sub_255D3F908(&v149, v47, v120);
  }

  v94 = sub_255DAA3D4();
  v145[0] = v122;
  v145[1] = v94;
  v144[0] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v8, v145);
  v144[1] = v144[0];
  v95 = MEMORY[0x277CE0340];
  v96 = swift_getWitnessTable(MEMORY[0x277CE0340], v40, v144);
  v97 = sub_255D4FC94();
  v143[0] = v96;
  v143[1] = v97;
  v98 = swift_getWitnessTable(v95, v44, v143);
  v142[0] = v96;
  v142[1] = v98;
  v141[0] = swift_getWitnessTable(v95, v47, v142);
  v141[1] = v97;
  v99 = v95;
  v100 = v112;
  swift_getWitnessTable(v99, v112, v141);
  sub_255D4F130();
  return (*(v111 + 8))(v48, v100);
}

uint64_t sub_255DA989C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_255E3A038();
}

uint64_t sub_255DA9970()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DA9A60(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255DA9B3C(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255DA9C28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255DAA894(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255DA9C58(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000063;
  v4 = 0x6974616D6F747561;
  v5 = 0x8000000255E658C0;
  v6 = 0xD000000000000010;
  v7 = 0xE600000000000000;
  v8 = 0x656C63726963;
  if (v2 != 3)
  {
    v8 = 0x6F426E6F74747562;
    v7 = 0xEC00000072656472;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656C7573706163;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_255DA9DB4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x737569646172;
  }

  else
  {
    v3 = 0x6570616873;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x737569646172;
  }

  else
  {
    v5 = 0x6570616873;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255DA9E54()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DA9ED0(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255DA9F38(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DA9FB0@<X0>(char *a2@<X8>)
{
  v3 = sub_255E3AB48();

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

void sub_255DAA010(uint64_t *a1@<X8>)
{
  v2 = 0x6570616873;
  if (*v1)
  {
    v2 = 0x737569646172;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255DAA048()
{
  if (*v0)
  {
    return 0x737569646172;
  }

  else
  {
    return 0x6570616873;
  }
}

uint64_t sub_255DAA07C@<X0>(char *a3@<X8>)
{
  v4 = sub_255E3AB48();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_255DAA0E0(uint64_t a1)
{
  v2 = sub_255DAA618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DAA11C(uint64_t a1)
{
  v2 = sub_255DAA618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DAA158@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = *(v2 + 8);
  v4 = a1[4];
  v16 = *v2;
  v17 = *(v2 + 16);
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7D00, &unk_255E4FB00);
  v5 = sub_255E38AE8();
  v6 = sub_255E39268();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E66F0, &unk_255E3E190);
  v7 = sub_255E39268();
  v8 = sub_255E39268();
  v9 = sub_255E39268();
  a2[3] = v9;
  v23[0] = v4;
  v23[1] = sub_255DAA3D4();
  v22[0] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v5, v23);
  v22[1] = v22[0];
  v10 = MEMORY[0x277CE0340];
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CE0340], v6, v22);
  v12 = sub_255D4FC94();
  v21[0] = WitnessTable;
  v21[1] = v12;
  v20[0] = WitnessTable;
  v20[1] = swift_getWitnessTable(v10, v7, v21);
  v19[0] = swift_getWitnessTable(v10, v8, v20);
  v19[1] = v12;
  a2[4] = swift_getWitnessTable(v10, v9, v19);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_255DA8994(v15, v18, v17, v16, v4, boxed_opaque_existential_1);
}

uint64_t sub_255DAA320@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_255DAA438(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

unint64_t sub_255DAA358(uint64_t a1)
{
  result = sub_255DAA380();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DAA380()
{
  result = qword_27F7E7CF8;
  if (!qword_27F7E7CF8)
  {
    result = swift_getWitnessTable(aM_9, &type metadata for ButtonBorderShapeModifier, v0, v1);
    atomic_store(result, &qword_27F7E7CF8);
  }

  return result;
}

unint64_t sub_255DAA3D4()
{
  result = qword_27F7E7D08;
  if (!qword_27F7E7D08)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7D00, &unk_255E4FB00);
    result = swift_getWitnessTable(MEMORY[0x277CE0868], v3, v0, v1);
    atomic_store(result, &qword_27F7E7D08);
  }

  return result;
}

uint64_t sub_255DAA438(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7D10, &qword_255E4FB10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-v4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DAA618();
  sub_255E3AE28();
  v8[30] = 0;
  sub_255DAA66C();
  sub_255E3ABC8();
  v6 = v8[31];
  v8[15] = 1;
  sub_255D9B850();
  sub_255E3ABA8();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

unint64_t sub_255DAA618()
{
  result = qword_27F7E7D18;
  if (!qword_27F7E7D18)
  {
    result = swift_getWitnessTable(byte_255E4FD28, &type metadata for ButtonBorderShapeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7D18);
  }

  return result;
}

unint64_t sub_255DAA66C()
{
  result = qword_27F7E7D20;
  if (!qword_27F7E7D20)
  {
    result = swift_getWitnessTable(asc_255E4FD00, &type metadata for ButtonBorderShapeType, v0, v1);
    atomic_store(result, &qword_27F7E7D20);
  }

  return result;
}

unint64_t sub_255DAA6E4()
{
  result = qword_27F7E7D28;
  if (!qword_27F7E7D28)
  {
    result = swift_getWitnessTable(byte_255E4FBE8, &type metadata for ButtonBorderShapeType, v0, v1);
    atomic_store(result, &qword_27F7E7D28);
  }

  return result;
}

unint64_t sub_255DAA73C()
{
  result = qword_27F7E7D30;
  if (!qword_27F7E7D30)
  {
    result = swift_getWitnessTable(byte_255E4FCD8, &type metadata for ButtonBorderShapeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7D30);
  }

  return result;
}

unint64_t sub_255DAA794()
{
  result = qword_27F7E7D38;
  if (!qword_27F7E7D38)
  {
    result = swift_getWitnessTable(byte_255E4FC10, &type metadata for ButtonBorderShapeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7D38);
  }

  return result;
}

unint64_t sub_255DAA7EC()
{
  result = qword_27F7E7D40;
  if (!qword_27F7E7D40)
  {
    result = swift_getWitnessTable(byte_255E4FC38, &type metadata for ButtonBorderShapeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7D40);
  }

  return result;
}

unint64_t sub_255DAA840()
{
  result = qword_27F7E7D48;
  if (!qword_27F7E7D48)
  {
    result = swift_getWitnessTable(a1_2, &type metadata for ButtonBorderShapeType, v0, v1);
    atomic_store(result, &qword_27F7E7D48);
  }

  return result;
}

unint64_t sub_255DAA894(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255DAA900(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_255DAA95C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_255DAA9C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_255DAAA10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_255DAAA74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 57))
  {
    return (*a1 + 125);
  }

  v3 = (*(a1 + 24) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 24) >> 1) & 0x1F));
  v4 = v3 ^ 0x7F;
  v5 = 126 - v3;
  if (v4 >= 0x7D)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_255DAAAD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = ((a2 ^ 0x7F) >> 1) & 0xFE | ((a2 ^ 0x7F) << 6);
    }
  }

  return result;
}

double sub_255DAAB58(unint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 72);
  v16 = *(v1 + 64);
  v7 = *(v1 + 80);
  v19 = *(v1 + 104);
  v20 = *(v1 + 96);
  v18 = *(v1 + 112);
  v8 = *(v1 + 56);
  v9 = *(v1 + 88);
  v17 = *(v1 + 120);
  v21 = *v1;
  v22 = *(v1 + 8);
  v23 = *(v1 + 16);
  v24 = *(v1 + 24);
  sub_255D612A0(*v1, v22, v23, v24);
  sub_255D8F6FC(a1);
  v11 = v10;
  v13 = v12;
  sub_255D4CB98(v21, v22, v23, v24);
  if (v13)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v11;
  }

  sub_255D612A0(v3, v4, v5, v8);
  sub_255D8F6FC(a1);
  sub_255D4CB98(v3, v4, v5, v8);
  sub_255D612A0(v16, v6, v7, v9);
  sub_255D8F6FC(a1);
  sub_255D4CB98(v16, v6, v7, v9);
  sub_255D612A0(v20, v19, v18, v17);
  sub_255D8F6FC(a1);
  sub_255D4CB98(v20, v19, v18, v17);
  return v14;
}

uint64_t sub_255DAAD2C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    sub_255DADA54();
    sub_255E3ACB8();
    *v6 = *v13;
    *&v6[9] = *&v13[9];
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    a2[4] = v11;
    a2[5] = v12;
    a2[6] = *v6;
    *(a2 + 105) = *&v13[9];
    *a2 = v7;
    a2[1] = v8;
    a2[2] = v9;
    a2[3] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255DAAE58@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = v3[4];
  v7 = v3[6];
  v25[5] = v3[5];
  v26[0] = v7;
  *(v26 + 9) = *(v3 + 105);
  v8 = v3[1];
  v25[0] = *v3;
  v25[1] = v8;
  v9 = v3[3];
  v25[2] = v3[2];
  v25[3] = v9;
  v25[4] = v6;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DAD734(v25, v27);
  v11 = sub_255DAAB58(a2);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v3[5];
  v27[4] = v3[4];
  v27[5] = v18;
  v28[0] = v3[6];
  *(v28 + 9) = *(v3 + 105);
  v19 = v3[1];
  v27[0] = *v3;
  v27[1] = v19;
  v20 = v3[3];
  v27[2] = v3[2];
  v27[3] = v20;
  sub_255DAD76C(v27);
  *&v23[2] = v11;
  v23[3] = v13;
  v23[4] = v15;
  v23[5] = v17;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7D80, &unk_255E51260);
  v21 = sub_255E38AE8();
  a3[3] = v21;
  v23[0] = v10;
  v23[1] = sub_255D38950(&qword_27F7E7D88, &qword_27F7E7D80, &unk_255E51260, MEMORY[0x277CE04A0]);
  a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v21, v23);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39968();
}

uint64_t sub_255DAB014@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7E68, &qword_255E51E40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DADFE0();
  sub_255E3AE28();
  if (!v2)
  {
    v42 = 0;
    sub_255D64774();
    sub_255E3ABA8();
    v9 = v38;
    if (v40 >= 0xFEu)
    {
      v9 = 0;
    }

    v37 = v9;
    if (v40 >= 0xFEu)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(&v38 + 1);
    }

    v36 = v10;
    if (v40 >= 0xFEu)
    {
      v11 = 0;
    }

    else
    {
      v11 = v39;
    }

    v35 = v11;
    if (v40 >= 0xFEu)
    {
      v12 = 0;
    }

    else
    {
      v12 = v40;
    }

    v41 = v12;
    v42 = 1;
    sub_255E3ABA8();
    v13 = v38;
    if (v40 >= 0xFEu)
    {
      v13 = 0;
    }

    v34 = v13;
    if (v40 >= 0xFEu)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(&v38 + 1);
    }

    v33 = v14;
    if (v40 >= 0xFEu)
    {
      v15 = 0;
    }

    else
    {
      v15 = v39;
    }

    v32 = v15;
    if (v40 >= 0xFEu)
    {
      v16 = 0;
    }

    else
    {
      v16 = v40;
    }

    v31 = v16;
    v42 = 2;
    sub_255E3ABA8();
    v17 = v38;
    if (v40 >= 0xFEu)
    {
      v17 = 0;
    }

    v30 = v17;
    if (v40 >= 0xFEu)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(&v38 + 1);
    }

    v29 = v18;
    if (v40 >= 0xFEu)
    {
      v19 = 0;
    }

    else
    {
      v19 = v39;
    }

    v28 = v19;
    if (v40 >= 0xFEu)
    {
      v20 = 0;
    }

    else
    {
      v20 = v40;
    }

    v42 = 3;
    sub_255E3ABA8();
    (*(v6 + 8))(v8, v5);
    v21 = v40;
    if (v40 < 0xFEu)
    {
      v23 = v38;
      v22 = v39;
    }

    else
    {
      v22 = 0;
      v21 = 0;
      v23 = 0uLL;
    }

    v24 = v36;
    *a2 = v37;
    *(a2 + 8) = v24;
    *(a2 + 16) = v35;
    *(a2 + 24) = v41;
    v25 = v33;
    *(a2 + 32) = v34;
    *(a2 + 40) = v25;
    *(a2 + 48) = v32;
    *(a2 + 56) = v31;
    v26 = v29;
    *(a2 + 64) = v30;
    *(a2 + 72) = v26;
    *(a2 + 80) = v28;
    *(a2 + 88) = v20;
    *(a2 + 96) = v23;
    *(a2 + 112) = v22;
    *(a2 + 120) = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_255DAB39C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255DAE14C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_255DAB3CC()
{
  v1 = 7368564;
  v2 = 0x6D6F74746F62;
  if (*v0 != 2)
  {
    v2 = 0x676E696C69617274;
  }

  if (*v0)
  {
    v1 = 0x676E696461656CLL;
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

unint64_t sub_255DAB43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255DAE14C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255DAB464(uint64_t a1)
{
  v2 = sub_255DADFE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DAB4A0(uint64_t a1)
{
  v2 = sub_255DADFE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DAB4F4@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  v6 = *(v3 + 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  v14 = *(v3 + 48);
  v15 = *(v3 + 40);
  v11 = *(v3 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v9 <= 0xFD)
  {
    v16 = v7;
    v17 = v6;
    v18 = v8;
    v19 = v9;
    sub_255D3E5A8(v7, v6, v8, v9);
    StringResolvable.resolved(with:)(a2);
    if (v4)
    {
      return sub_255D38060(v16, v17, v18, v19);
    }

    sub_255D38060(v7, v6, v8, v9);
  }

  sub_255E3AB48();

  if (v11 <= 0xFD)
  {
    v16 = v10;
    v17 = v15;
    v18 = v14;
    v19 = v11;
    sub_255D3E5A8(v10, v15, v14, v11);
    StringResolvable.resolved(with:)(a2);
    if (v4)
    {
      return sub_255D38060(v16, v17, v18, v19);
    }

    sub_255D38060(v10, v15, v14, v11);
  }

  v13 = sub_255E3AB48();

  if (v13 == 2)
  {
    goto LABEL_12;
  }

  if (v13 == 1)
  {
    sub_255E388F8();
    goto LABEL_14;
  }

  if (v13)
  {
LABEL_12:
    sub_255E388D8();
  }

  else
  {
    sub_255E388E8();
  }

LABEL_14:
  a3[3] = swift_getOpaqueTypeMetadata2();
  a3[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39A18();
}

uint64_t sub_255DAB748()
{
  if (*v0)
  {
    return 0x7365676465;
  }

  else
  {
    return 0x696C696269736976;
  }
}

uint64_t sub_255DAB784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696C696269736976 && a2 == 0xEA00000000007974;
  if (v6 || (sub_255E3AC68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7365676465 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();

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

uint64_t sub_255DAB864(uint64_t a1)
{
  v2 = sub_255DAD998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DAB8A0(uint64_t a1)
{
  v2 = sub_255DAD998();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DAB8DC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7DF0, &qword_255E512A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DAD998();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v22) = 0;
  sub_255D3EA0C();
  sub_255E3ABA8();
  v9 = v25;
  v20 = v26;
  v21 = v27;
  v36 = v28;
  v37 = 1;
  sub_255E3ABA8();
  (*(v6 + 8))(v8, v5);
  v19 = v33;
  v10 = v34;
  v18 = *(&v33 + 1);
  v11 = v35;
  v12 = v9;
  v13 = v20;
  *&v22 = v9;
  *(&v22 + 1) = v20;
  v14 = v21;
  *&v23 = v21;
  LOBYTE(v9) = v36;
  BYTE8(v23) = v36;
  *v24 = v33;
  *&v24[16] = v34;
  v24[24] = v35;
  v15 = v23;
  *a2 = v22;
  a2[1] = v15;
  a2[2] = *v24;
  *(a2 + 41) = *&v24[9];
  sub_255DAD9EC(&v22, &v25);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v9;
  v29 = v19;
  v30 = v18;
  v31 = v10;
  v32 = v11;
  return sub_255DADA24(&v25);
}

uint64_t sub_255DABBD4@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v81 = a3;
  v7 = sub_255E38BE8();
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x28223BE20](v7);
  v71 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_255E38B98();
  v69 = *(v9 - 8);
  v70 = v9;
  MEMORY[0x28223BE20](v9);
  v68 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_255E393A8();
  v66 = *(v11 - 8);
  v67 = v11;
  MEMORY[0x28223BE20](v11);
  v65 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_255E389B8();
  v63 = *(v13 - 8);
  v64 = v13;
  MEMORY[0x28223BE20](v13);
  v62 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_255E38A18();
  v60 = *(v15 - 8);
  v61 = v15;
  MEMORY[0x28223BE20](v15);
  v59 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_255E38B48();
  v75 = *(v17 - 8);
  v76 = v17;
  MEMORY[0x28223BE20](v17);
  v74 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v3 + 8);
  v20 = *(v3 + 16);
  v22 = *(v3 + 32);
  v21 = *(v3 + 40);
  v23 = *(v3 + 48);
  v24 = *(v3 + 56);
  v25 = *(v3 + 24);
  v77 = *v3;
  v78 = v19;
  v79 = v20;
  LOBYTE(v80) = v25;
  sub_255D3E5A8(v77, v19, v20, v25);
  v26 = StringResolvable.resolved(with:)(a2);
  if (v4)
  {

    sub_255D38060(v77, v78, v79, v80);
    v28 = 0;
    v29 = 0xE000000000000000;
  }

  else
  {
    v30 = v26;
    v31 = v27;
    sub_255D38060(v77, v78, v79, v80);
    v29 = v31;
    v28 = v30;
  }

  v32 = sub_255DAD79C(v28, v29);
  if (v32 == 7)
  {
    v33 = 0;
  }

  else
  {
    v33 = v32;
  }

  sub_255DDF1BC(a2, v22, v21, v23, v24);
  v35 = a1[3];
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v35);
  if (v33 <= 2u)
  {
    if (v33 > 1u)
    {
      v36 = v68;
      sub_255E38B88();
      v37 = v70;
      v77 = v35;
      v78 = v70;
      v48 = MEMORY[0x277CDDAC8];
      v79 = v34;
      v80 = MEMORY[0x277CDDAC8];
      OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
      v50 = v81;
      v81[3] = OpaqueTypeMetadata2;
      v77 = v35;
      v78 = v37;
      v79 = v34;
      v80 = v48;
      v50[4] = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(v50);
      sub_255E39D08();
      v41 = v69;
    }

    else
    {
      v36 = v74;
      sub_255E38B38();
      v37 = v76;
      v77 = v35;
      v78 = v76;
      v42 = MEMORY[0x277CDDA78];
      v79 = v34;
      v80 = MEMORY[0x277CDDA78];
      v43 = swift_getOpaqueTypeMetadata2();
      v44 = v81;
      v81[3] = v43;
      v77 = v35;
      v78 = v37;
      v79 = v34;
      v80 = v42;
      v44[4] = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(v44);
      sub_255E39D08();
      v41 = v75;
    }
  }

  else if (v33 > 4u)
  {
    if (v33 == 5)
    {
      v36 = v59;
      sub_255E38A08();
      v37 = v61;
      v77 = v35;
      v78 = v61;
      v45 = MEMORY[0x277CDD980];
      v79 = v34;
      v80 = MEMORY[0x277CDD980];
      v46 = swift_getOpaqueTypeMetadata2();
      v47 = v81;
      v81[3] = v46;
      v77 = v35;
      v78 = v37;
      v79 = v34;
      v80 = v45;
      v47[4] = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(v47);
      sub_255E39D08();
      v41 = v60;
    }

    else
    {
      v36 = v71;
      sub_255E38BD8();
      v37 = v73;
      v77 = v35;
      v78 = v73;
      v54 = MEMORY[0x277CDDB48];
      v79 = v34;
      v80 = MEMORY[0x277CDDB48];
      v55 = swift_getOpaqueTypeMetadata2();
      v56 = v81;
      v81[3] = v55;
      v77 = v35;
      v78 = v37;
      v79 = v34;
      v80 = v54;
      v56[4] = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(v56);
      sub_255E39D08();
      v41 = v72;
    }
  }

  else if (v33 == 3)
  {
    v36 = v62;
    sub_255E389A8();
    v37 = v64;
    v77 = v35;
    v78 = v64;
    v38 = MEMORY[0x277CDD8F0];
    v79 = v34;
    v80 = MEMORY[0x277CDD8F0];
    v39 = swift_getOpaqueTypeMetadata2();
    v40 = v81;
    v81[3] = v39;
    v77 = v35;
    v78 = v37;
    v79 = v34;
    v80 = v38;
    v40[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(v40);
    sub_255E39D08();
    v41 = v63;
  }

  else
  {
    v36 = v65;
    sub_255E39398();
    v37 = v67;
    v77 = v35;
    v78 = v67;
    v51 = MEMORY[0x277CDE0D0];
    v79 = v34;
    v80 = MEMORY[0x277CDE0D0];
    v52 = swift_getOpaqueTypeMetadata2();
    v53 = v81;
    v81[3] = v52;
    v77 = v35;
    v78 = v37;
    v79 = v34;
    v80 = v51;
    v53[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(v53);
    sub_255E39D08();
    v41 = v66;
  }

  return (*(v41 + 8))(v36, v37);
}

uint64_t sub_255DAC3BC()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0x656C797473;
  }
}

uint64_t sub_255DAC3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v6 || (sub_255E3AC68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000255E65E30 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();

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

uint64_t sub_255DAC4D8(uint64_t a1)
{
  v2 = sub_255DAD8DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DAC514(uint64_t a1)
{
  v2 = sub_255DAD8DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DAC550@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7DE0, &unk_255E51298);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DAD8DC();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v26) = 0;
  sub_255D3EA0C();
  sub_255E3ABC8();
  v22 = v29;
  v24 = v30;
  v23 = v31;
  LODWORD(v25) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64C8, &qword_255E3D940);
  LOBYTE(v29) = 1;
  sub_255D38950(&qword_27F7E64D0, &qword_27F7E64C8, &qword_255E3D940, protocol conformance descriptor for Referenceable<A>);
  sub_255E3ABA8();
  (*(v6 + 8))(v8, v5);
  v10 = v22;
  v11 = v24;
  v12 = v23;
  v13 = v25;
  v14 = v40;
  if (v40 == 255)
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
  }

  else
  {
    v16 = v38;
    v15 = v39;
    v17 = v37;
  }

  v25 = v15;
  *&v26 = v22;
  v18 = v14 & 1;
  v41 = v14 & 1;
  *(&v26 + 1) = v24;
  *&v27 = v23;
  BYTE8(v27) = v13;
  *v28 = v17;
  *&v28[8] = v16;
  *&v28[16] = v15;
  v28[24] = v14 & 1;
  v19 = v27;
  *a2 = v26;
  a2[1] = v19;
  a2[2] = *v28;
  *(a2 + 41) = *&v28[9];
  v20 = v11;
  sub_255DAD930(&v26, &v29);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v29 = v10;
  v30 = v20;
  v31 = v12;
  v32 = v13;
  v33 = v17;
  v34 = v16;
  v35 = v25;
  v36 = v18;
  return sub_255DAD968(&v29);
}

uint64_t sub_255DAC898@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D4FB3C(v2, v10);
  v5 = v11;
  if (v11)
  {
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v5 = (*(v6 + 24))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    sub_255D4FBAC(v10);
  }

  v10[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7D90, &unk_255E51270);
  v7 = sub_255E38AE8();
  a2[3] = v7;
  v9[0] = v4;
  v9[1] = sub_255D38950(&qword_27F7E7D98, &qword_27F7E7D90, &unk_255E51270, MEMORY[0x277CE04A0]);
  a2[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v7, v9);
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_255E39A38();
}

uint64_t sub_255DACA14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    *(&v8 + 1) = &type metadata for ViewContent;
    v9 = sub_255D44794();
    *&v7 = swift_allocObject();
    sub_255D447E8();
    sub_255E3ACB8();
    v11 = v7;
    v12 = v8;
    v13 = v9;
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    v5 = v12;
    *a2 = v11;
    *(a2 + 16) = v5;
    *(a2 + 32) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255DACB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x676E6963617073 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255E3AC68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255DACC1C(uint64_t a1)
{
  v2 = sub_255DAD888();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DACC58(uint64_t a1)
{
  v2 = sub_255DAD888();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DACC94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7DD0, &qword_255E51290);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DAD888();
  sub_255E3AE28();
  if (!v2)
  {
    sub_255D64774();
    sub_255E3ABC8();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = v14;
    *a2 = v12;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255DACE14@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *v3;
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  v9 = a1[4];
  v10 = *(v3 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16[2] = v6;
  v16[3] = v7;
  v16[4] = v8;
  v17 = v10;
  sub_255D612A0(v6, v7, v8, v10);
  sub_255D8F6FC(a2);
  sub_255D4CB98(v6, v7, v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7DA0, &unk_255E538D0);
  v11 = sub_255E38AE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7DA8, &qword_255E51280);
  v12 = sub_255E38AE8();
  a3[3] = v12;
  v16[0] = v9;
  v16[1] = sub_255D38950(&qword_27F7E7DB0, &qword_27F7E7DA0, &unk_255E538D0, MEMORY[0x277CE04A0]);
  v13 = MEMORY[0x277CDFAD8];
  v15[0] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v11, v16);
  v15[1] = sub_255D38950(&qword_27F7E7DB8, &qword_27F7E7DA8, &qword_255E51280, MEMORY[0x277CE0868]);
  a3[4] = swift_getWitnessTable(v13, v12, v15);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39A58();
}

uint64_t sub_255DAD010@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v9 = *v3;
  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  sub_255D3E5A8(*v3, v10, v11, v12);
  StringResolvable.resolved(with:)(a2);
  if (v4)
  {
    return sub_255D38060(v9, v10, v11, v12);
  }

  sub_255D38060(v9, v10, v11, v12);
  sub_255E3AB48();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3[3] = swift_getOpaqueTypeMetadata2();
  a3[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39B28();
}

uint64_t sub_255DAD194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255E3AC68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255DAD224(uint64_t a1)
{
  v2 = sub_255DAD834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DAD260(uint64_t a1)
{
  v2 = sub_255DAD834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DAD29C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7DC0, &qword_255E51288);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DAD834();
  sub_255E3AE28();
  if (!v2)
  {
    sub_255D3EA0C();
    sub_255E3ABC8();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = v14;
    *a2 = v12;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_255DAD44C(uint64_t a1)
{
  result = sub_255DAD474();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DAD474()
{
  result = qword_27F7E7D50;
  if (!qword_27F7E7D50)
  {
    result = swift_getWitnessTable(aY_9, &type metadata for ScrollContentBackgroundModifier, v0, v1);
    atomic_store(result, &qword_27F7E7D50);
  }

  return result;
}

unint64_t sub_255DAD4C8(uint64_t a1)
{
  result = sub_255DAD4F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DAD4F0()
{
  result = qword_27F7E7D58;
  if (!qword_27F7E7D58)
  {
    result = swift_getWitnessTable(byte_255E51168, &type metadata for ListSectionSpacingModifier, v0, v1);
    atomic_store(result, &qword_27F7E7D58);
  }

  return result;
}

unint64_t sub_255DAD544(uint64_t a1)
{
  result = sub_255DAD56C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DAD56C()
{
  result = qword_27F7E7D60;
  if (!qword_27F7E7D60)
  {
    result = swift_getWitnessTable(aAP, &type metadata for ListRowBackgroundModifier, v0, v1);
    atomic_store(result, &qword_27F7E7D60);
  }

  return result;
}

unint64_t sub_255DAD5C0(uint64_t a1)
{
  result = sub_255DAD5E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DAD5E8()
{
  result = qword_27F7E7D68;
  if (!qword_27F7E7D68)
  {
    result = swift_getWitnessTable(byte_255E51118, &type metadata for ListStyleModifier, v0, v1);
    atomic_store(result, &qword_27F7E7D68);
  }

  return result;
}

unint64_t sub_255DAD63C(uint64_t a1)
{
  result = sub_255DAD664();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DAD664()
{
  result = qword_27F7E7D70;
  if (!qword_27F7E7D70)
  {
    result = swift_getWitnessTable(byte_255E510F0, &type metadata for ListRowSeparatorModifier, v0, v1);
    atomic_store(result, &qword_27F7E7D70);
  }

  return result;
}

unint64_t sub_255DAD6B8(uint64_t a1)
{
  result = sub_255DAD6E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DAD6E0()
{
  result = qword_27F7E7D78;
  if (!qword_27F7E7D78)
  {
    result = swift_getWitnessTable(aA_10, &type metadata for ListRowInsetsModifier, v0, v1);
    atomic_store(result, &qword_27F7E7D78);
  }

  return result;
}

unint64_t sub_255DAD79C(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255DAD7E8(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255DAD834()
{
  result = qword_27F7E7DC8;
  if (!qword_27F7E7DC8)
  {
    result = swift_getWitnessTable(a9_1, &type metadata for ScrollContentBackgroundModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7DC8);
  }

  return result;
}

unint64_t sub_255DAD888()
{
  result = qword_27F7E7DD8;
  if (!qword_27F7E7DD8)
  {
    result = swift_getWitnessTable(byte_255E51DA0, &type metadata for ListSectionSpacingModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7DD8);
  }

  return result;
}

unint64_t sub_255DAD8DC()
{
  result = qword_27F7E7DE8;
  if (!qword_27F7E7DE8)
  {
    result = swift_getWitnessTable(asc_255E51D50, &type metadata for ListStyleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7DE8);
  }

  return result;
}

unint64_t sub_255DAD998()
{
  result = qword_27F7E7DF8;
  if (!qword_27F7E7DF8)
  {
    result = swift_getWitnessTable(asc_255E51D00, &type metadata for ListRowSeparatorModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7DF8);
  }

  return result;
}

unint64_t sub_255DADA54()
{
  result = qword_27F7E7E00;
  if (!qword_27F7E7E00)
  {
    result = swift_getWitnessTable(a1_3, &type metadata for EdgeInsetsResolvable, v0, v1);
    atomic_store(result, &qword_27F7E7E00);
  }

  return result;
}

uint64_t sub_255DADAE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 121))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 24) & 0x7E | (*(a1 + 24) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_255DADB38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

unint64_t sub_255DADBC4()
{
  result = qword_27F7E7E08;
  if (!qword_27F7E7E08)
  {
    result = swift_getWitnessTable(aA_11, &type metadata for ScrollContentBackgroundModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7E08);
  }

  return result;
}

unint64_t sub_255DADC1C()
{
  result = qword_27F7E7E10;
  if (!qword_27F7E7E10)
  {
    result = swift_getWitnessTable(byte_255E51B40, &type metadata for ListSectionSpacingModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7E10);
  }

  return result;
}

unint64_t sub_255DADC74()
{
  result = qword_27F7E7E18;
  if (!qword_27F7E7E18)
  {
    result = swift_getWitnessTable(aF4, &type metadata for ListStyleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7E18);
  }

  return result;
}

unint64_t sub_255DADCCC()
{
  result = qword_27F7E7E20;
  if (!qword_27F7E7E20)
  {
    result = swift_getWitnessTable(byte_255E51CB0, &type metadata for ListRowSeparatorModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7E20);
  }

  return result;
}

unint64_t sub_255DADD24()
{
  result = qword_27F7E7E28;
  if (!qword_27F7E7E28)
  {
    result = swift_getWitnessTable(byte_255E51C20, &type metadata for ListRowSeparatorModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7E28);
  }

  return result;
}

unint64_t sub_255DADD7C()
{
  result = qword_27F7E7E30;
  if (!qword_27F7E7E30)
  {
    result = swift_getWitnessTable(byte_255E51C48, &type metadata for ListRowSeparatorModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7E30);
  }

  return result;
}

unint64_t sub_255DADDD4()
{
  result = qword_27F7E7E38;
  if (!qword_27F7E7E38)
  {
    result = swift_getWitnessTable(a9_2, &type metadata for ListStyleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7E38);
  }

  return result;
}

unint64_t sub_255DADE2C()
{
  result = qword_27F7E7E40;
  if (!qword_27F7E7E40)
  {
    result = swift_getWitnessTable(aI_3, &type metadata for ListStyleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7E40);
  }

  return result;
}

unint64_t sub_255DADE84()
{
  result = qword_27F7E7E48;
  if (!qword_27F7E7E48)
  {
    result = swift_getWitnessTable(byte_255E51AB0, &type metadata for ListSectionSpacingModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7E48);
  }

  return result;
}

unint64_t sub_255DADEDC()
{
  result = qword_27F7E7E50;
  if (!qword_27F7E7E50)
  {
    result = swift_getWitnessTable(byte_255E51AD8, &type metadata for ListSectionSpacingModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7E50);
  }

  return result;
}

unint64_t sub_255DADF34()
{
  result = qword_27F7E7E58;
  if (!qword_27F7E7E58)
  {
    result = swift_getWitnessTable(byte_255E519F8, &type metadata for ScrollContentBackgroundModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7E58);
  }

  return result;
}

unint64_t sub_255DADF8C()
{
  result = qword_27F7E7E60;
  if (!qword_27F7E7E60)
  {
    result = swift_getWitnessTable(byte_255E51A20, &type metadata for ScrollContentBackgroundModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7E60);
  }

  return result;
}

unint64_t sub_255DADFE0()
{
  result = qword_27F7E7E70;
  if (!qword_27F7E7E70)
  {
    result = swift_getWitnessTable(byte_255E51F38, &type metadata for EdgeInsetsResolvable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7E70);
  }

  return result;
}

unint64_t sub_255DAE048()
{
  result = qword_27F7E7E78;
  if (!qword_27F7E7E78)
  {
    result = swift_getWitnessTable(byte_255E51F10, &type metadata for EdgeInsetsResolvable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7E78);
  }

  return result;
}

unint64_t sub_255DAE0A0()
{
  result = qword_27F7E7E80;
  if (!qword_27F7E7E80)
  {
    result = swift_getWitnessTable(aY_10, &type metadata for EdgeInsetsResolvable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7E80);
  }

  return result;
}

unint64_t sub_255DAE0F8()
{
  result = qword_27F7E7E88;
  if (!qword_27F7E7E88)
  {
    result = swift_getWitnessTable(aI_4, &type metadata for EdgeInsetsResolvable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7E88);
  }

  return result;
}

unint64_t sub_255DAE14C(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255DAE1BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255DAE204(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_255DAE25C@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7E98, &qword_255E52218);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = *(v2 + 8);
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  v23 = *v2;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  sub_255D3E5A8(v23, v9, v10, v11);
  v12 = StringResolvable.resolved(with:)(a1);
  if (v3)
  {
    return sub_255D38060(v23, v24, v25, v26);
  }

  v15 = v12;
  v16 = v13;
  sub_255D38060(v23, v24, v25, v26);
  v17 = sub_255DAE8E0(v15, v16);
  if (v17 <= 2)
  {
    if (v17)
    {
      if (v17 == 1)
      {
        sub_255E3A178();
      }

      else
      {
        sub_255E3A168();
      }
    }

    else
    {
      sub_255E3A148();
    }

    goto LABEL_15;
  }

  if (v17 <= 4)
  {
    if (v17 == 3)
    {
      sub_255E3A158();
    }

    else
    {
      sub_255E3A138();
    }

    goto LABEL_15;
  }

  if (v17 == 5)
  {
    sub_255E3A188();
LABEL_15:
    v18 = sub_255E3A198();
    (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
    goto LABEL_16;
  }

  v18 = sub_255E3A198();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
LABEL_16:
  sub_255E3A198();
  v19 = MEMORY[0x277CE1320];
  a2[3] = v18;
  a2[4] = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  v21 = *(v18 - 8);
  v22 = *(v21 + 48);
  if (v22(v8, 1, v18) != 1)
  {
    return (*(v21 + 32))(boxed_opaque_existential_1, v8, v18);
  }

  sub_255E3A178();
  result = (v22)(v8, 1, v18);
  if (result != 1)
  {
    return sub_255DAE92C(v8);
  }

  return result;
}

uint64_t sub_255DAE530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C6169726574616DLL && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255E3AC68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255DAE5B8(uint64_t a1)
{
  v2 = sub_255DAE994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DAE5F4(uint64_t a1)
{
  v2 = sub_255DAE994();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DAE630@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7EA0, &qword_255E52220);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DAE994();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  sub_255D3EA0C();
  sub_255E3ABC8();
  (*(v6 + 8))(v8, v5);
  v9 = v14[0];
  v10 = v14[1];
  v11 = v14[2];
  v12 = v15;
  *a2 = v14[0];
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = MEMORY[0x277D84F90];
  sub_255D3E5A8(v9, v10, v11, v12);

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  sub_255D38060(v9, v10, v11, v12);
}

uint64_t sub_255DAE820(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

unint64_t sub_255DAE864(uint64_t a1)
{
  result = sub_255DAE88C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DAE88C()
{
  result = qword_27F7E7E90;
  if (!qword_27F7E7E90)
  {
    result = swift_getWitnessTable(a5_5, &type metadata for MaterialShapeStyle, v0, v1);
    atomic_store(result, &qword_27F7E7E90);
  }

  return result;
}

unint64_t sub_255DAE8E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255DAE92C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7E98, &qword_255E52218);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255DAE994()
{
  result = qword_27F7E7EA8;
  if (!qword_27F7E7EA8)
  {
    result = swift_getWitnessTable(asc_255E522EC, &type metadata for MaterialShapeStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7EA8);
  }

  return result;
}

unint64_t sub_255DAE9FC()
{
  result = qword_27F7E7EB0;
  if (!qword_27F7E7EB0)
  {
    result = swift_getWitnessTable(byte_255E522C4, &type metadata for MaterialShapeStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7EB0);
  }

  return result;
}

unint64_t sub_255DAEA54()
{
  result = qword_27F7E7EB8;
  if (!qword_27F7E7EB8)
  {
    result = swift_getWitnessTable(aM_10, &type metadata for MaterialShapeStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7EB8);
  }

  return result;
}

unint64_t sub_255DAEAAC()
{
  result = qword_27F7E7EC0;
  if (!qword_27F7E7EC0)
  {
    result = swift_getWitnessTable(asc_255E5225C, &type metadata for MaterialShapeStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7EC0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_6LiftUI17ShapeStyleContent_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy83_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 79) = *(a2 + 79);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_255DAEB48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 83))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 82);
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

uint64_t sub_255DAEB90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 82) = 0;
    *(result + 80) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 83) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 83) = 0;
    }

    if (a2)
    {
      *(result + 82) = -a2;
    }
  }

  return result;
}

uint64_t sub_255DAEC00@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v150 = a2;
  sub_255DB03F4(v4, &v142);
  if (!v149)
  {
    v24 = *(&v142 + 1);
    v23 = v142;
    v25 = v143;
    v26 = BYTE8(v143);
    sub_255D34630(&v144, &v133);
    if (v26 <= 0xFD)
    {
      v109 = a4;
      v139 = __PAIR128__(v24, v23);
      *&v140 = v25;
      BYTE8(v140) = v26;
      sub_255D3E5A8(v23, v24, v25, v26);
      v35 = v23;
      v36 = StringResolvable.resolved(with:)(v150);
      if (v5)
      {
        sub_255D38060(v139, *(&v139 + 1), v140, BYTE8(v140));
        sub_255D64814(v23, v24, v25, v26);
        v38 = &v133;
        return __swift_destroy_boxed_opaque_existential_1Tm(v38);
      }

      v53 = v36;
      v54 = v37;
      sub_255D38060(v139, *(&v139 + 1), v140, BYTE8(v140));
      v28 = v54;
      v27 = v53;
      v23 = v35;
      a4 = v109;
    }

    else
    {
      v27 = 0;
      v28 = 0xE000000000000000;
    }

    v55 = sub_255E0C470(v27, v28);
    v110 = v5;
    LODWORD(v108) = v26;
    v106 = v24;
    v107 = v25;
    v105 = v23;
    v56 = a4;
    if (v55 > 4)
    {
      if (v55 <= 6)
      {
        if (v55 == 5)
        {
          v57 = sub_255E3A1C8();
        }

        else
        {
          v57 = sub_255E3A1D8();
        }
      }

      else if (v55 == 7)
      {
        v57 = sub_255E3A1E8();
      }

      else
      {
        if (v55 != 8)
        {
          v91 = a1[4];
          v104 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          v150 = &v103;
          MEMORY[0x28223BE20](v104);
          v103 = sub_255E3A228();
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7EF8, &qword_255E528D0);
          v92 = sub_255E38AE8();
          a4[3] = v92;
          v93 = sub_255D38950(&qword_27F7E7F00, &qword_27F7E7EF8, &qword_255E528D0, MEMORY[0x277CE0328]);
          v112[0] = v91;
          v112[1] = v93;
          a4[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v92, v112);
          __swift_allocate_boxed_opaque_existential_1(a4);
          sub_255E39858();
          sub_255D64814(v105, v106, v107, v108);
LABEL_76:
          v86 = &v133;
          return __swift_destroy_boxed_opaque_existential_1Tm(v86);
        }

        v57 = sub_255E3A1F8();
      }
    }

    else if (v55 <= 1)
    {
      if (v55)
      {
        v57 = sub_255E3A238();
      }

      else
      {
        v57 = sub_255E3A228();
      }
    }

    else if (v55 == 2)
    {
      v57 = sub_255E3A248();
    }

    else if (v55 == 3)
    {
      v57 = sub_255E3A208();
    }

    else
    {
      v57 = sub_255E3A218();
    }

    v150 = v57;
    v104 = v58;
    v94 = a1[4];
    v95 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v103 = &v103;
    MEMORY[0x28223BE20](v95);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7EF8, &qword_255E528D0);
    v96 = sub_255E38AE8();
    v56[3] = v96;
    v97 = sub_255D38950(&qword_27F7E7F00, &qword_27F7E7EF8, &qword_255E528D0, MEMORY[0x277CE0328]);
    v111[0] = v94;
    v111[1] = v97;
    v56[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v96, v111);
    __swift_allocate_boxed_opaque_existential_1(v56);
    sub_255E39858();
    sub_255D64814(v105, v106, v107, v108);
    goto LABEL_76;
  }

  if (v149 == 1)
  {
    v9 = v148;
    v139 = v142;
    v140 = v143;
    v141 = v144;
    sub_255D34630(&v145, v136);
    sub_255DB042C(&v139, &v133);
    v109 = a4;
    if (v135)
    {
      if (v9 == 2)
      {
        sub_255D34630(&v133, &v130);
        v10 = a1[4];
        v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        v12 = v131;
        v13 = v132;
        __swift_project_boxed_opaque_existential_1(&v130, v131);
        sub_255DEBAD8(v150, v12, v13, &v127);
        if (!v5)
        {
          v108 = v10;
          v110 = v129;
          v14 = v128;
          v107 = __swift_project_boxed_opaque_existential_1(&v127, v128);
          v15 = v137;
          v16 = v138;
          __swift_project_boxed_opaque_existential_1(v136, v137);
          (*(v16 + 48))(&v126, v150, a3, v15, v16);
          v125 = v126;
          v17 = sub_255D3D6B0();
          v121 = v14;
          v122 = &type metadata for AnyShape;
          v123 = v110;
          v124 = v17;
          v18 = sub_255E394B8();
          v19 = sub_255E38AE8();
          v150 = v11;
          v20 = v19;
          v21 = v109;
          v109[3] = v19;
          WitnessTable = swift_getWitnessTable(MEMORY[0x277CE0710], v18);
          v119[0] = v108;
          v119[1] = WitnessTable;
          v21[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v20, v119);
          __swift_allocate_boxed_opaque_existential_1(v21);
LABEL_51:
          sub_255E39878();

          sub_255D395E4(&v139, &qword_27F7E7ED0, &qword_255E528B8);
          __swift_destroy_boxed_opaque_existential_1Tm(&v127);
          goto LABEL_52;
        }
      }

      else
      {
        sub_255D34630(&v133, &v130);
        v46 = a1[4];
        v47 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        v48 = v131;
        v49 = v132;
        __swift_project_boxed_opaque_existential_1(&v130, v131);
        sub_255DEBAD8(v150, v48, v49, &v127);
        if (!v5)
        {
          v110 = v129;
          v107 = v47;
          v108 = v128;
          v106 = __swift_project_boxed_opaque_existential_1(&v127, v128);
          v66 = v137;
          v67 = v138;
          __swift_project_boxed_opaque_existential_1(v136, v137);
          (*(v67 + 48))(&v126, v150, a3, v66, v67);
          v125 = v126;
          v68 = sub_255D3D6B0();
          v121 = v108;
          v122 = &type metadata for AnyShape;
          v123 = v110;
          v124 = v68;
          v69 = sub_255E394B8();
          v70 = v46;
          v71 = sub_255E38AE8();
          v72 = v109;
          v109[3] = v71;
          v120[0] = v70;
          v120[1] = swift_getWitnessTable(MEMORY[0x277CE0710], v69);
          v72[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v71, v120);
          __swift_allocate_boxed_opaque_existential_1(v72);
          goto LABEL_51;
        }
      }

      sub_255D395E4(&v139, &qword_27F7E7ED0, &qword_255E528B8);
LABEL_52:
      __swift_destroy_boxed_opaque_existential_1Tm(&v130);
      goto LABEL_53;
    }

    v41 = a1[3];
    v110 = a1[4];
    v108 = __swift_project_boxed_opaque_existential_1(a1, v41);
    v43 = v137;
    v42 = v138;
    __swift_project_boxed_opaque_existential_1(v136, v137);
    if (v9 == 2)
    {
      (*(v42 + 48))(&v130, v150, a3, v43, v42);
      if (!v5)
      {
        v127 = v130;
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7ED8, &qword_255E528C0);
        v44 = sub_255E38AE8();
        v45 = v109;
        v109[3] = v44;
        v117[0] = v110;
        v117[1] = sub_255D38950(&qword_27F7E7EE0, &qword_27F7E7ED8, &qword_255E528C0, MEMORY[0x277CE0710]);
        v45[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v44, v117);
        __swift_allocate_boxed_opaque_existential_1(v45);
        sub_255D3D6B0();
LABEL_22:
        sub_255E39848();
      }
    }

    else
    {
      (*(v42 + 48))(&v130, v150, a3, v43, v42);
      if (!v5)
      {
        v127 = v130;
        v50 = v110;
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7ED8, &qword_255E528C0);
        v51 = sub_255E38AE8();
        v52 = v109;
        v109[3] = v51;
        v118[0] = v50;
        v118[1] = sub_255D38950(&qword_27F7E7EE0, &qword_27F7E7ED8, &qword_255E528C0, MEMORY[0x277CE0710]);
        v52[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v51, v118);
        __swift_allocate_boxed_opaque_existential_1(v52);
        sub_255D3D6B0();
        goto LABEL_22;
      }
    }

    sub_255D395E4(&v139, &qword_27F7E7ED0, &qword_255E528B8);
LABEL_53:
    v38 = v136;
    return __swift_destroy_boxed_opaque_existential_1Tm(v38);
  }

  v110 = v5;
  v29 = *(&v145 + 1);
  v30 = v146;
  v31 = v147;
  v139 = v142;
  v140 = v143;
  v32 = v145;
  v141 = v144;
  if (v147 <= 0xFDu)
  {
    v133 = v145;
    v134 = v146;
    LOBYTE(v135) = v147;
    sub_255D3E5A8(v145, *(&v145 + 1), v146, v147);
    v39 = StringResolvable.resolved(with:)(v150);
    if (v110)
    {
      sub_255D64814(v32, v29, v30, v31);
      sub_255D38060(v133, *(&v133 + 1), v134, v135);
      return sub_255D395E4(&v139, &qword_27F7E7ED0, &qword_255E528B8);
    }

    v59 = v39;
    v60 = a4;
    v61 = v31;
    v62 = v32;
    v63 = v40;
    sub_255D38060(v133, *(&v133 + 1), v134, v135);
    v34 = v63;
    v32 = v62;
    v31 = v61;
    a4 = v60;
    v33 = v59;
  }

  else
  {
    v33 = 0;
    v34 = 0xE000000000000000;
  }

  v64 = sub_255D73434(v33, v34);
  v106 = v30;
  v107 = v32;
  v108 = v29;
  if (v64 <= 3)
  {
    if (v64 > 1)
    {
      if (v64 == 2)
      {
        v65 = sub_255E39608();
      }

      else
      {
        v65 = sub_255E39628();
      }
    }

    else if (v64)
    {
      v65 = sub_255E39618();
    }

    else
    {
      v65 = sub_255E395F8();
    }

    goto LABEL_58;
  }

  if (v64 <= 5)
  {
    if (v64 == 4)
    {
      v65 = sub_255E395E8();
    }

    else
    {
      v65 = sub_255E395D8();
    }

    goto LABEL_58;
  }

  if (v64 == 6)
  {
    v65 = sub_255E39638();
LABEL_58:
    LODWORD(v105) = v65;
    v74 = a4;
    sub_255DB042C(&v139, &v133);
    if (v135)
    {
      sub_255D34630(&v133, v136);
      v75 = a1[4];
      v76 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v77 = v137;
      v78 = v138;
      __swift_project_boxed_opaque_existential_1(v136, v137);
      sub_255DEBAD8(v150, v77, v78, &v130);
      if (v110)
      {
        sub_255D395E4(&v139, &qword_27F7E7ED0, &qword_255E528B8);
        sub_255D64814(v107, v108, v106, v31);
      }

      else
      {
        v150 = v76;
        v103 = v132;
        v104 = __swift_project_boxed_opaque_existential_1(&v130, v131);
        v84 = sub_255E394C8();
        v85 = sub_255E38AE8();
        v74[3] = v85;
        v116[0] = v75;
        v116[1] = swift_getWitnessTable(MEMORY[0x277CE0728], v84, v103, v104, v105);
        v74[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v85, v116);
        __swift_allocate_boxed_opaque_existential_1(v74);
        sub_255E39868();
        sub_255D64814(v107, v108, v106, v31);
        sub_255D395E4(&v139, &qword_27F7E7ED0, &qword_255E528B8);
        __swift_destroy_boxed_opaque_existential_1Tm(&v130);
      }

      v86 = v136;
      return __swift_destroy_boxed_opaque_existential_1Tm(v86);
    }

    v79 = a1[4];
    v150 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7EE8, &qword_255E528C8);
    v80 = sub_255E38AE8();
    a4[3] = v80;
    v114[0] = v79;
    v114[1] = sub_255D38950(&qword_27F7E7EF0, &qword_27F7E7EE8, &qword_255E528C8, MEMORY[0x277CE0728]);
    a4[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v80, v114);
    __swift_allocate_boxed_opaque_existential_1(a4);
    sub_255E39838();
    v81 = v107;
    v82 = v108;
    v83 = v106;
    goto LABEL_62;
  }

  sub_255DB042C(&v139, &v133);
  if (!v135)
  {
    v98 = a1[4];
    v150 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    LODWORD(v105) = sub_255E395E8();
    v99 = a4;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7EE8, &qword_255E528C8);
    v100 = sub_255E38AE8();
    v99[3] = v100;
    v113[0] = v98;
    v113[1] = sub_255D38950(&qword_27F7E7EF0, &qword_27F7E7EE8, &qword_255E528C8, MEMORY[0x277CE0728]);
    v99[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v100, v113);
    __swift_allocate_boxed_opaque_existential_1(v99);
    sub_255E39838();
    v81 = v107;
    v82 = v108;
    v83 = v30;
LABEL_62:
    sub_255D64814(v81, v82, v83, v31);
    return sub_255D395E4(&v139, &qword_27F7E7ED0, &qword_255E528B8);
  }

  sub_255D34630(&v133, v136);
  v87 = a1[4];
  v88 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v89 = v137;
  v90 = v138;
  __swift_project_boxed_opaque_existential_1(v136, v137);
  sub_255DEBAD8(v150, v89, v90, &v130);
  if (v110)
  {
    sub_255D395E4(&v139, &qword_27F7E7ED0, &qword_255E528B8);
    sub_255D64814(v107, v108, v106, v31);
  }

  else
  {
    v104 = v87;
    v150 = __swift_project_boxed_opaque_existential_1(&v130, v131);
    LODWORD(v110) = sub_255E395E8();
    v101 = sub_255E394C8();
    v105 = v88;
    v102 = sub_255E38AE8();
    a4[3] = v102;
    v115[0] = v104;
    v115[1] = swift_getWitnessTable(MEMORY[0x277CE0728], v101);
    a4[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v102, v115);
    __swift_allocate_boxed_opaque_existential_1(a4);
    sub_255E39868();
    sub_255D64814(v107, v108, v106, v31);
    sub_255D395E4(&v139, &qword_27F7E7ED0, &qword_255E528B8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v130);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v136);
}

uint64_t sub_255DAFCA4()
{
  v1 = *v0;
  v2 = 0x746E65746E6F63;
  v3 = 0x656C797473;
  v4 = 0xD000000000000014;
  if (v1 != 4)
  {
    v4 = 0x6C7974536C6C6966;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E656D6E67696C61;
  if (v1 != 1)
  {
    v5 = 0x6570616873;
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

uint64_t sub_255DAFD60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_255DB082C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_255DAFD88(uint64_t a1)
{
  v2 = sub_255DB04A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DAFDC4(uint64_t a1)
{
  v2 = sub_255DB04A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DAFE00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F08, &qword_255E528D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v9 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_255DB04A0();
  sub_255E3AE28();
  if (!v2)
  {
    LOBYTE(v20) = 0;
    if (sub_255E3ABE8())
    {
      LOBYTE(v33) = 0;
      sub_255D447E8();
      sub_255E3ABC8();
      v31[0] = 1;
      sub_255D3EA0C();
      sub_255E3ABA8();
      v36 = v33;
      *&v37 = v34;
      BYTE8(v37) = BYTE8(v34);
      *&v38[24] = &type metadata for ViewContent;
      *v39 = sub_255D44794();
      v10 = swift_allocObject();
      *v38 = v10;
      v11 = v27;
      *(v10 + 112) = v26;
      *(v10 + 128) = v11;
      *(v10 + 144) = v28;
      *(v10 + 160) = v29;
      v12 = v23;
      *(v10 + 48) = v22;
      *(v10 + 64) = v12;
      v13 = v25;
      *(v10 + 80) = v24;
      *(v10 + 96) = v13;
      v14 = v21;
      *(v10 + 16) = v20;
      *(v10 + 32) = v14;
      (*(v6 + 8))(v8, v5);
      v39[18] = 0;
    }

    else
    {
      LOBYTE(v20) = 2;
      if (sub_255E3ABE8())
      {
        v31[0] = 2;
        sub_255DB059C();
        sub_255E3ABC8();
        sub_255D34630(&v33, &v20);
        v31[0] = 5;
        sub_255DB05F0();
        sub_255E3ABA8();
        v15 = v33;
        v30 = 3;
        sub_255DB04F4();
        sub_255E3ABA8();
        (*(v6 + 8))(v8, v5);
        if (v32)
        {
          sub_255D3CE1C(v31, &v33);
          sub_255DB0548(v31);
        }

        else
        {
          sub_255D395E4(v31, &qword_27F7E7F20, &qword_255E528E0);
          v33 = 0u;
          v34 = 0u;
          v35 = 0;
        }

        v36 = v33;
        v37 = v34;
        *v38 = v35;
        sub_255D34630(&v20, &v38[8]);
        *&v39[16] = v15;
        v17 = 1;
      }

      else
      {
        v31[0] = 3;
        sub_255DB04F4();
        sub_255E3ABA8();
        if (*(&v34 + 1))
        {
          sub_255D3CE1C(&v33, &v20);
          sub_255DB0548(&v33);
        }

        else
        {
          sub_255D395E4(&v33, &qword_27F7E7F20, &qword_255E528E0);
          v20 = 0u;
          v21 = 0u;
          *&v22 = 0;
        }

        v31[0] = 4;
        sub_255D3EA0C();
        sub_255E3ABA8();
        (*(v6 + 8))(v8, v5);
        v36 = v20;
        v37 = v21;
        *&v38[8] = v33;
        *v38 = v22;
        *&v38[24] = v34;
        v39[0] = BYTE8(v34);
        v17 = 2;
      }

      v39[18] = v17;
    }

    v18 = *&v38[16];
    *(a2 + 32) = *v38;
    *(a2 + 48) = v18;
    *(a2 + 64) = *v39;
    *(a2 + 79) = *&v39[15];
    v19 = v37;
    *a2 = v36;
    *(a2 + 16) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v40);
}