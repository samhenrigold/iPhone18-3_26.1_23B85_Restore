uint64_t sub_260FCC034(uint64_t a1)
{
  v2 = sub_260FD2EB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260FCC070(uint64_t a1)
{
  v2 = sub_260FD2EB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdMSAccount.Credential.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64338, &qword_2610C0888);
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v37 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64340, &qword_2610C0890);
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v32 = &v30 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64348, &qword_2610C0898);
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64350, &qword_2610C08A0);
  v31 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64358, &qword_2610C08A8);
  v42 = *(v18 - 8);
  v43 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v30 - v20;
  v22 = v2[1];
  v40 = *v2;
  v41 = v22;
  v23 = *(v2 + 72);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FD2E60();
  sub_2610BD5F4();
  if (v23 <= 1)
  {
    if (v23)
    {
      LOBYTE(v44) = 2;
      sub_260FD2F08();
      v13 = v32;
      v24 = v43;
      sub_2610BD234();
      v26 = v36;
      sub_2610BD274();
      v27 = v35;
    }

    else
    {
      LOBYTE(v44) = 1;
      sub_260FD2F5C();
      v24 = v43;
      sub_2610BD234();
      v44 = v40;
      v45 = v41;
      v25 = *(v2 + 2);
      v46 = *(v2 + 1);
      v47 = v25;
      v48 = *(v2 + 3);
      v49 = v2[8];
      sub_260FD2FB0();
      v26 = v34;
      sub_2610BD2A4();
      v27 = v33;
    }

    goto LABEL_7;
  }

  if (v23 == 2)
  {
    LOBYTE(v44) = 3;
    sub_260FD2EB4();
    v13 = v37;
    v24 = v43;
    sub_2610BD234();
    v26 = v39;
    sub_2610BD274();
    v27 = v38;
LABEL_7:
    (*(v27 + 8))(v13, v26);
    return (*(v42 + 8))(v21, v24);
  }

  LOBYTE(v44) = 0;
  sub_260FD3004();
  v29 = v43;
  sub_2610BD234();
  (*(v31 + 8))(v17, v14);
  return (*(v42 + 8))(v21, v29);
}

uint64_t IdMSAccount.Credential.hash(into:)(uint64_t a1)
{
  if (*(v1 + 72) > 1u)
  {
    if (*(v1 + 72) != 2)
    {
      return MEMORY[0x2666F7E40](0);
    }

    v3 = 3;
  }

  else
  {
    if (!*(v1 + 72))
    {
      v4 = *(v1 + 64);
      MEMORY[0x2666F7E40](1);
      sub_2610BCA54();
      sub_2610BCA54();
      sub_2610BCA54();
      sub_2610BCA54();
      return MEMORY[0x2666F7E70](v4);
    }

    v3 = 2;
  }

  MEMORY[0x2666F7E40](v3);

  return sub_2610BCA54();
}

uint64_t IdMSAccount.Credential.hashValue.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_2610BD514();
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      MEMORY[0x2666F7E40](0);
      return sub_2610BD574();
    }

    v3 = 3;
    goto LABEL_7;
  }

  if (v2)
  {
    v3 = 2;
LABEL_7:
    MEMORY[0x2666F7E40](v3);
    sub_2610BCA54();
    return sub_2610BD574();
  }

  MEMORY[0x2666F7E40](1);
  sub_2610BCA54();
  sub_2610BCA54();
  sub_2610BCA54();
  sub_2610BCA54();
  MEMORY[0x2666F7E70](v1);
  return sub_2610BD574();
}

uint64_t IdMSAccount.Credential.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64390, &qword_2610C08B0);
  v70 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v3);
  v73 = &v62 - v4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64398, &qword_2610C08B8);
  v69 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v5);
  v72 = &v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE643A0, &qword_2610C08C0);
  v67 = *(v7 - 8);
  v68 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v62 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE643A8, &qword_2610C08C8);
  v65 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v62 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE643B0, &unk_2610C08D0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v62 - v18;
  v20 = a1[3];
  v81 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_260FD2E60();
  v21 = v75;
  sub_2610BD5D4();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v81);
  }

  v22 = v14;
  v63 = v11;
  v23 = v10;
  v25 = v72;
  v24 = v73;
  v64 = 0;
  v26 = v74;
  v75 = v16;
  v27 = v19;
  v28 = sub_2610BD214();
  v29 = v28;
  v30 = *(v28 + 16);
  if (!v30 || ((v31 = *(v28 + 32), v30 == 1) ? (v32 = v31 == 4) : (v32 = 1), v32))
  {
    v33 = v15;
    v34 = sub_2610BCFF4();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE643B8, &qword_2610C4650);
    *v36 = &type metadata for IdMSAccount.Credential;
    sub_2610BD174();
    sub_2610BCFE4();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
    swift_willThrow();
    (*(v75 + 8))(v27, v33);
    goto LABEL_9;
  }

  if (*(v28 + 32) <= 1u)
  {
    if (!*(v28 + 32))
    {
      LOBYTE(v76) = 0;
      sub_260FD3004();
      v38 = v64;
      sub_2610BD164();
      v64 = v38;
      if (v38)
      {
        (*(v75 + 8))(v27, v15);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_0Tm(v81);
      }

      (*(v65 + 8))(v22, v63);
      (*(v75 + 8))(v27, v15);
      swift_unknownObjectRelease();
      v47 = 0;
      v48 = 0uLL;
      v49 = 3;
      v50 = 0uLL;
      v51 = 0uLL;
      v52 = 0uLL;
      goto LABEL_25;
    }

    LOBYTE(v76) = 1;
    sub_260FD2F5C();
    v43 = v23;
    v44 = v64;
    sub_2610BD164();
    if (!v44)
    {
      sub_260FD3058();
      v56 = v68;
      sub_2610BD1E4();
      (*(v67 + 8))(v43, v56);
      (*(v75 + 8))(v27, v15);
      swift_unknownObjectRelease();
      v64 = 0;
      v49 = 0;
      v47 = v76;
      v48 = v77;
      v50 = v78;
      v51 = v79;
      v52 = v80;
LABEL_25:
      v42 = v71;
      goto LABEL_27;
    }

    (*(v75 + 8))(v27, v15);
LABEL_9:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v81);
  }

  v39 = v75;
  if (v31 == 2)
  {
    LOBYTE(v76) = 2;
    sub_260FD2F08();
    v40 = v27;
    v41 = v64;
    sub_2610BD164();
    v42 = v71;
    if (v41)
    {
      (*(v39 + 8))(v40, v15);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0Tm(v81);
    }

    v68 = v29;
    v53 = v15;
    v54 = v66;
    v55 = sub_2610BD1B4();
    v64 = 0;
    v47 = v55;
    v59 = v58;
    (*(v69 + 8))(v25, v54);
    (*(v39 + 8))(v40, v53);
    swift_unknownObjectRelease();
    *&v48 = v59;
    v49 = 1;
  }

  else
  {
    LOBYTE(v76) = 3;
    sub_260FD2EB4();
    v45 = v27;
    v46 = v64;
    sub_2610BD164();
    v42 = v71;
    if (v46)
    {
      (*(v39 + 8))(v45, v15);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0Tm(v81);
    }

    v68 = v29;
    v72 = v15;
    v57 = sub_2610BD1B4();
    v64 = 0;
    v47 = v57;
    v61 = v60;
    (*(v70 + 8))(v24, v26);
    (*(v39 + 8))(v45, v72);
    swift_unknownObjectRelease();
    *&v48 = v61;
    v49 = 2;
  }

LABEL_27:
  *v42 = v47;
  *(v42 + 8) = v48;
  *(v42 + 24) = v50;
  *(v42 + 40) = v51;
  *(v42 + 56) = v52;
  *(v42 + 72) = v49;
  return __swift_destroy_boxed_opaque_existential_0Tm(v81);
}

uint64_t sub_260FCD090()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
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

uint64_t sub_260FCD0C4()
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

uint64_t sub_260FCD0F8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
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

uint64_t sub_260FCD164(uint64_t a1)
{
  if (*(v1 + 72) > 1u)
  {
    if (*(v1 + 72) != 2)
    {
      return MEMORY[0x2666F7E40](0);
    }

    v3 = 3;
  }

  else
  {
    if (!*(v1 + 72))
    {
      v4 = *(v1 + 64);
      MEMORY[0x2666F7E40](1);
      sub_2610BCA54();
      sub_2610BCA54();
      sub_2610BCA54();
      sub_2610BCA54();
      return MEMORY[0x2666F7E70](v4);
    }

    v3 = 2;
  }

  MEMORY[0x2666F7E40](v3);

  return sub_2610BCA54();
}

uint64_t sub_260FCD290(uint64_t a1)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  sub_2610BD514();
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      MEMORY[0x2666F7E40](0);
      return sub_2610BD574();
    }

    v4 = 3;
    goto LABEL_7;
  }

  if (v3)
  {
    v4 = 2;
LABEL_7:
    MEMORY[0x2666F7E40](v4);
    sub_2610BCA54();
    return sub_2610BD574();
  }

  MEMORY[0x2666F7E40](1);
  sub_2610BCA54();
  sub_2610BCA54();
  sub_2610BCA54();
  sub_2610BCA54();
  MEMORY[0x2666F7E70](v2);
  return sub_2610BD574();
}

uint64_t sub_260FCD3A4()
{
  v1 = 0x74726F6873;
  if (*v0 != 1)
  {
    v1 = 1819047270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_260FCD3EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_260FD378C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_260FCD414(uint64_t a1)
{
  v2 = sub_260FD30AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260FCD450(uint64_t a1)
{
  v2 = sub_260FD30AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_260FCD48C()
{
  if (*v0)
  {
    return 1953718636;
  }

  else
  {
    return 0x7473726966;
  }
}

uint64_t sub_260FCD4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7473726966 && a2 == 0xE500000000000000;
  if (v6 || (sub_2610BD384() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1953718636 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2610BD384();

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

uint64_t sub_260FCD594(uint64_t a1)
{
  v2 = sub_260FD3100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260FCD5D0(uint64_t a1)
{
  v2 = sub_260FD3100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_260FCD60C(uint64_t a1)
{
  v2 = sub_260FD31A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260FCD648(uint64_t a1)
{
  v2 = sub_260FD31A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_260FCD684()
{
  sub_2610BD514();
  MEMORY[0x2666F7E40](0);
  return sub_2610BD574();
}

uint64_t sub_260FCD6C8(uint64_t a1)
{
  sub_2610BD514();
  MEMORY[0x2666F7E40](0);
  return sub_2610BD574();
}

uint64_t sub_260FCD708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2610BD384();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_260FCD788(uint64_t a1)
{
  v2 = sub_260FD3154();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260FCD7C4(uint64_t a1)
{
  v2 = sub_260FD3154();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdMSAccount.Name.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE643C8, &qword_2610C08E0);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v33 = v29 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE643D0, &qword_2610C08E8);
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE643D8, &qword_2610C08F0);
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE643E0, &qword_2610C08F8);
  v38 = *(v14 - 8);
  v39 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v17 = v29 - v16;
  v18 = *v1;
  v36 = v1[1];
  v37 = v18;
  v19 = v1[2];
  v29[1] = v1[3];
  v29[2] = v19;
  v20 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FD30AC();
  sub_2610BD5F4();
  if (!v20)
  {
    v42 = 1;
    sub_260FD3154();
    v22 = v39;
    sub_2610BD234();
    v23 = v32;
    sub_2610BD274();
    v25 = *(v31 + 8);
    v26 = v9;
LABEL_8:
    v25(v26, v23);
    return (*(v38 + 8))(v17, v22);
  }

  if (v20 != 1)
  {
    v41 = 0;
    sub_260FD31A8();
    v27 = v39;
    sub_2610BD234();
    (*(v30 + 8))(v13, v10);
    return (*(v38 + 8))(v17, v27);
  }

  v45 = 2;
  sub_260FD3100();
  v21 = v33;
  v22 = v39;
  sub_2610BD234();
  v44 = 0;
  v23 = v35;
  v24 = v40;
  sub_2610BD274();
  if (!v24)
  {
    v43 = 1;
    sub_2610BD274();
    v25 = *(v34 + 8);
    v26 = v21;
    goto LABEL_8;
  }

  (*(v34 + 8))(v21, v23);
  return (*(v38 + 8))(v17, v22);
}

uint64_t IdMSAccount.Name.hash(into:)(uint64_t a1)
{
  if (*(v1 + 32))
  {
    if (*(v1 + 32) != 1)
    {
      return MEMORY[0x2666F7E40](0);
    }

    MEMORY[0x2666F7E40](2);
    sub_2610BCA54();
  }

  else
  {
    MEMORY[0x2666F7E40](1);
  }

  return sub_2610BCA54();
}

uint64_t IdMSAccount.Name.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_2610BD514();
  if (v1)
  {
    if (v1 == 1)
    {
      MEMORY[0x2666F7E40](2);
      sub_2610BCA54();
      sub_2610BCA54();
    }

    else
    {
      MEMORY[0x2666F7E40](0);
    }
  }

  else
  {
    MEMORY[0x2666F7E40](1);
    sub_2610BCA54();
  }

  return sub_2610BD574();
}

uint64_t IdMSAccount.Name.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64408, &qword_2610C0900);
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v3);
  v58 = &v51 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64410, &qword_2610C0908);
  v54 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v5);
  v7 = &v51 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64418, &qword_2610C0910);
  v57 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64420, &qword_2610C0918);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v51 - v15;
  v17 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_260FD30AC();
  v18 = v59;
  sub_2610BD5D4();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v60);
  }

  v19 = v57;
  v20 = v58;
  v51 = 0;
  v59 = v13;
  v21 = sub_2610BD214();
  v22 = *(v21 + 16);
  if (!v22 || ((v23 = *(v21 + 32), v22 == 1) ? (v24 = v23 == 3) : (v24 = 1), v24))
  {
    v25 = v12;
    v26 = sub_2610BCFF4();
    swift_allocError();
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE643B8, &qword_2610C4650);
    *v28 = &type metadata for IdMSAccount.Name;
    sub_2610BD174();
    sub_2610BCFE4();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
    swift_willThrow();
    (*(v59 + 8))(v16, v25);
  }

  else
  {
    if (*(v21 + 32))
    {
      v57 = v21;
      if (v23 == 1)
      {
        v62 = 1;
        sub_260FD3154();
        v30 = v7;
        v31 = v51;
        sub_2610BD164();
        v32 = v56;
        v33 = v59;
        if (!v31)
        {
          v34 = v52;
          v35 = sub_2610BD1B4();
          v42 = v41;
          v51 = 0;
          v43 = v35;
          (*(v54 + 8))(v30, v34);
          (*(v33 + 8))(v16, v12);
          swift_unknownObjectRelease();
          v44 = v43;
          v45 = 0;
          v46 = 0;
          v47 = 0;
LABEL_23:
          *v32 = v44;
          *(v32 + 8) = v42;
          *(v32 + 16) = v45;
          *(v32 + 24) = v46;
          *(v32 + 32) = v47;
          return __swift_destroy_boxed_opaque_existential_0Tm(v60);
        }

        goto LABEL_20;
      }

      v65 = 2;
      sub_260FD3100();
      v37 = v20;
      v38 = v51;
      sub_2610BD164();
      v33 = v59;
      if (v38)
      {
LABEL_20:
        (*(v33 + 8))(v16, v12);
        goto LABEL_9;
      }

      v64 = 0;
      v39 = v53;
      v40 = sub_2610BD1B4();
      v42 = v48;
      v44 = v40;
      v54 = v12;
      v63 = 1;
      v49 = sub_2610BD1B4();
      v51 = 0;
      v45 = v49;
      v46 = v50;
      (*(v55 + 8))(v37, v39);
      (*(v33 + 8))(v16, v54);
      swift_unknownObjectRelease();
      v47 = 1;
LABEL_22:
      v32 = v56;
      goto LABEL_23;
    }

    v61 = 0;
    sub_260FD31A8();
    v36 = v51;
    sub_2610BD164();
    v45 = v36;
    if (!v36)
    {
      v51 = 0;
      (*(v19 + 8))(v11, v8);
      (*(v59 + 8))(v16, v12);
      swift_unknownObjectRelease();
      v44 = 0;
      v42 = 0;
      v46 = 0;
      v47 = 2;
      goto LABEL_22;
    }

    (*(v59 + 8))(v16, v12);
  }

LABEL_9:
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0Tm(v60);
}

uint64_t sub_260FCE4D4()
{
  v1 = *(v0 + 32);
  sub_2610BD514();
  if (v1)
  {
    if (v1 == 1)
    {
      MEMORY[0x2666F7E40](2);
      sub_2610BCA54();
      sub_2610BCA54();
    }

    else
    {
      MEMORY[0x2666F7E40](0);
    }
  }

  else
  {
    MEMORY[0x2666F7E40](1);
    sub_2610BCA54();
  }

  return sub_2610BD574();
}

uint64_t sub_260FCE590(uint64_t a1)
{
  if (*(v1 + 32))
  {
    if (*(v1 + 32) != 1)
    {
      return MEMORY[0x2666F7E40](0);
    }

    MEMORY[0x2666F7E40](2);
    sub_2610BCA54();
  }

  else
  {
    MEMORY[0x2666F7E40](1);
  }

  return sub_2610BCA54();
}

uint64_t sub_260FCE64C(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_2610BD514();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x2666F7E40](2);
      sub_2610BCA54();
      sub_2610BCA54();
    }

    else
    {
      MEMORY[0x2666F7E40](0);
    }
  }

  else
  {
    MEMORY[0x2666F7E40](1);
    sub_2610BCA54();
  }

  return sub_2610BD574();
}

uint64_t IdMSAccount.ID.altDsid.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IdMSAccount.ID.altDsid.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IdMSAccount.ID.username.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IdMSAccount.ID.username.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t IdMSAccount.ID.dsid.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t IdMSAccount.ID.dsid.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall IdMSAccount.ID.init(altDsid:username:dsid:)(ProximityAppleIDSetup::IdMSAccount::ID *__return_ptr retstr, Swift::String altDsid, Swift::String_optional username, Swift::String_optional dsid)
{
  retstr->altDsid = altDsid;
  retstr->username = username;
  retstr->dsid = dsid;
}

uint64_t sub_260FCE8AC()
{
  v1 = 0x656D616E72657375;
  if (*v0 != 1)
  {
    v1 = 1684632420;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64697344746C61;
  }
}

uint64_t sub_260FCE900@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_260FD38A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_260FCE928(uint64_t a1)
{
  v2 = sub_260FD31FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260FCE964(uint64_t a1)
{
  v2 = sub_260FD31FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdMSAccount.ID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64428, &qword_2610C0920);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v12 - v6;
  v8 = v1[2];
  v12[3] = v1[3];
  v12[4] = v8;
  v9 = v1[4];
  v12[1] = v1[5];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FD31FC();
  sub_2610BD5F4();
  v15 = 0;
  v10 = v12[5];
  sub_2610BD274();
  if (v10)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v14 = 1;
  sub_2610BD244();
  v13 = 2;
  sub_2610BD244();
  return (*(v4 + 8))(v7, v3);
}

uint64_t IdMSAccount.ID.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  sub_2610BCA54();
  if (!v2)
  {
    sub_2610BD534();
    if (v3)
    {
      goto LABEL_3;
    }

    return sub_2610BD534();
  }

  sub_2610BD534();
  sub_2610BCA54();
  if (!v3)
  {
    return sub_2610BD534();
  }

LABEL_3:
  sub_2610BD534();

  return sub_2610BCA54();
}

uint64_t IdMSAccount.ID.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  sub_2610BD514();
  sub_2610BCA54();
  if (!v1)
  {
    sub_2610BD534();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_2610BD534();
    return sub_2610BD574();
  }

  sub_2610BD534();
  sub_2610BCA54();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_2610BD534();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t IdMSAccount.ID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64438, &qword_2610C0928);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FD31FC();
  sub_2610BD5D4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v28 = 0;
  v10 = sub_2610BD1B4();
  v12 = v11;
  v25 = v10;
  v27 = 1;
  v13 = sub_2610BD184();
  v15 = v14;
  v24 = v13;
  v26 = 2;
  v16 = sub_2610BD184();
  v19 = v18;
  v20 = *(v6 + 8);
  v23 = v16;
  v20(v9, v5);
  v21 = v24;
  *a2 = v25;
  a2[1] = v12;
  a2[2] = v21;
  a2[3] = v15;
  a2[4] = v23;
  a2[5] = v19;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_260FCEF84(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  sub_2610BCA54();
  if (!v2)
  {
    sub_2610BD534();
    if (v3)
    {
      goto LABEL_3;
    }

    return sub_2610BD534();
  }

  sub_2610BD534();
  sub_2610BCA54();
  if (!v3)
  {
    return sub_2610BD534();
  }

LABEL_3:
  sub_2610BD534();

  return sub_2610BCA54();
}

uint64_t sub_260FCF040(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  sub_2610BD514();
  sub_2610BCA54();
  if (!v2)
  {
    sub_2610BD534();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_2610BD534();
    return sub_2610BD574();
  }

  sub_2610BD534();
  sub_2610BCA54();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_2610BD534();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t IdMSAccount.AnisettePackage.machineID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IdMSAccount.AnisettePackage.oneTimePassword.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IdMSAccount.AnisettePackage.init(machineID:oneTimePassword:routingInfo:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

BOOL static IdMSAccount.AnisettePackage.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_2610BD384()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_2610BD384()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_260FCF218()
{
  v1 = 0x50656D6954656E6FLL;
  if (*v0 != 1)
  {
    v1 = 0x49676E6974756F72;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49656E696863616DLL;
  }
}

uint64_t sub_260FCF28C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_260FD39B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_260FCF2B4(uint64_t a1)
{
  v2 = sub_260FD3250();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260FCF2F0(uint64_t a1)
{
  v2 = sub_260FD3250();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdMSAccount.AnisettePackage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64440, &qword_2610C0930);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v11 - v6;
  v8 = v1[2];
  v11[1] = v1[3];
  v11[2] = v8;
  v11[0] = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FD3250();
  sub_2610BD5F4();
  v14 = 0;
  v9 = v11[3];
  sub_2610BD274();
  if (v9)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v13 = 1;
  sub_2610BD274();
  v12 = 2;
  sub_2610BD2C4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t IdMSAccount.AnisettePackage.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_2610BCA54();
  sub_2610BCA54();
  return MEMORY[0x2666F7E70](v2);
}

uint64_t IdMSAccount.AnisettePackage.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_2610BD514();
  sub_2610BCA54();
  sub_2610BCA54();
  MEMORY[0x2666F7E70](v1);
  return sub_2610BD574();
}

uint64_t IdMSAccount.AnisettePackage.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64450, &qword_2610C0938);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FD3250();
  sub_2610BD5D4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v23 = 0;
  v10 = sub_2610BD1B4();
  v12 = v11;
  v20 = v10;
  v22 = 1;
  v18 = sub_2610BD1B4();
  v19 = v13;
  v21 = 2;
  v14 = sub_2610BD204();
  (*(v6 + 8))(v9, v5);
  v15 = v19;
  *a2 = v20;
  a2[1] = v12;
  a2[2] = v18;
  a2[3] = v15;
  a2[4] = v14;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

BOOL sub_260FCF854(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_2610BD384()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_2610BD384()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_260FCF8F0()
{
  v1 = *(v0 + 32);
  sub_2610BD514();
  sub_2610BCA54();
  sub_2610BCA54();
  MEMORY[0x2666F7E70](v1);
  return sub_2610BD574();
}

uint64_t sub_260FCF970(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_2610BCA54();
  sub_2610BCA54();
  return MEMORY[0x2666F7E70](v2);
}

uint64_t sub_260FCF9C4(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_2610BD514();
  sub_2610BCA54();
  sub_2610BCA54();
  MEMORY[0x2666F7E70](v2);
  return sub_2610BD574();
}

uint64_t IdMSAccount.DeviceInfo.deviceIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IdMSAccount.DeviceInfo.deviceIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IdMSAccount.DeviceInfo.serverFriendlyDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IdMSAccount.DeviceInfo.serverFriendlyDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

ProximityAppleIDSetup::IdMSAccount::DeviceInfo __swiftcall IdMSAccount.DeviceInfo.init(deviceIdentifier:serverFriendlyDescription:)(Swift::String deviceIdentifier, Swift::String serverFriendlyDescription)
{
  *v2 = deviceIdentifier;
  v2[1] = serverFriendlyDescription;
  result.serverFriendlyDescription = serverFriendlyDescription;
  result.deviceIdentifier = deviceIdentifier;
  return result;
}

uint64_t static IdMSAccount.DeviceInfo.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_2610BD384(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_2610BD384();
    }
  }

  return result;
}

uint64_t sub_260FCFC00()
{
  v1 = *v0;
  sub_2610BD514();
  MEMORY[0x2666F7E40](v1);
  return sub_2610BD574();
}

uint64_t sub_260FCFC48(uint64_t a1)
{
  v2 = *v1;
  sub_2610BD514();
  MEMORY[0x2666F7E40](v2);
  return sub_2610BD574();
}

unint64_t sub_260FCFC8C()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_260FCFCCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002610D2AF0 == a2 || (sub_2610BD384() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002610D2B10 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2610BD384();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_260FCFDB0(uint64_t a1)
{
  v2 = sub_260FD32A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260FCFDEC(uint64_t a1)
{
  v2 = sub_260FD32A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdMSAccount.DeviceInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64458, &qword_2610C0940);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FD32A4();
  sub_2610BD5F4();
  v13 = 0;
  v9 = v11[3];
  sub_2610BD274();
  if (!v9)
  {
    v12 = 1;
    sub_2610BD274();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t IdMSAccount.DeviceInfo.hash(into:)(uint64_t a1)
{
  sub_2610BCA54();

  return sub_2610BCA54();
}

uint64_t IdMSAccount.DeviceInfo.hashValue.getter()
{
  sub_2610BD514();
  sub_2610BCA54();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t IdMSAccount.DeviceInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64468, &qword_2610C0948);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FD32A4();
  sub_2610BD5D4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v20 = 0;
  v10 = sub_2610BD1B4();
  v12 = v11;
  v18 = v10;
  v19 = 1;
  v13 = sub_2610BD1B4();
  v15 = v14;
  (*(v6 + 8))(v9, v5);
  *a2 = v18;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v15;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_260FD02A4(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_2610BD384(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_2610BD384();
    }
  }

  return result;
}

uint64_t sub_260FD0348()
{
  sub_2610BD514();
  sub_2610BCA54();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_260FD03B0(uint64_t a1)
{
  sub_2610BCA54();

  return sub_2610BCA54();
}

uint64_t sub_260FD0400(uint64_t a1)
{
  sub_2610BD514();
  sub_2610BCA54();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t IdMSAccount.Credential.CompanionKeyEnvelope.continuationKey.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IdMSAccount.Credential.CompanionKeyEnvelope.passwordResetKey.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IdMSAccount.Credential.CompanionKeyEnvelope.anisettePackage.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  *a1 = v1[4];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
}

__n128 IdMSAccount.Credential.CompanionKeyEnvelope.init(continuationKey:passwordResetKey:anisettePackage:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = *a5;
  v7 = *(a5 + 16);
  v8 = *(a5 + 32);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = result;
  *(a6 + 48) = v7;
  *(a6 + 64) = v8;
  return result;
}

unint64_t sub_260FD052C()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6574746573696E61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x61756E69746E6F63;
  }
}

uint64_t sub_260FD05A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_260FD3AE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_260FD05CC(uint64_t a1)
{
  v2 = sub_260FD32F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260FD0608(uint64_t a1)
{
  v2 = sub_260FD32F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdMSAccount.Credential.CompanionKeyEnvelope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64470, &qword_2610C0950);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v17 - v6;
  v8 = v1[2];
  v23 = v1[3];
  v24 = v8;
  v9 = v1[4];
  v21 = v1[5];
  v22 = v9;
  v10 = v1[6];
  v19 = v1[7];
  v20 = v10;
  v18 = v1[8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FD32F8();
  sub_2610BD5F4();
  LOBYTE(v26) = 0;
  v11 = v25;
  sub_2610BD274();
  if (!v11)
  {
    v14 = v20;
    v13 = v21;
    v15 = v22;
    v16 = v19;
    LOBYTE(v26) = 1;
    sub_2610BD274();
    v26 = v15;
    v27 = v13;
    v28 = v14;
    v29 = v16;
    v30 = v18;
    v31 = 2;
    sub_260FD334C();

    sub_2610BD2A4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t IdMSAccount.Credential.CompanionKeyEnvelope.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 64);
  sub_2610BCA54();
  sub_2610BCA54();
  sub_2610BCA54();
  sub_2610BCA54();
  return MEMORY[0x2666F7E70](v2);
}

uint64_t IdMSAccount.Credential.CompanionKeyEnvelope.hashValue.getter()
{
  v1 = *(v0 + 64);
  sub_2610BD514();
  sub_2610BCA54();
  sub_2610BCA54();
  sub_2610BCA54();
  sub_2610BCA54();
  MEMORY[0x2666F7E70](v1);
  return sub_2610BD574();
}

uint64_t IdMSAccount.Credential.CompanionKeyEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64488, &qword_2610C0958);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v25 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FD32F8();
  sub_2610BD5D4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v35[0]) = 0;
  v10 = sub_2610BD1B4();
  v12 = v11;
  v29 = a2;
  v13 = v10;
  LOBYTE(v35[0]) = 1;
  v14 = sub_2610BD1B4();
  *(&v28 + 1) = v15;
  *&v28 = v14;
  v45 = 2;
  sub_260FD33A0();
  sub_2610BD1E4();
  (*(v6 + 8))(v9, v5);
  v27 = v42;
  v16 = v43;
  v26 = *(&v42 + 1);
  v17 = *(&v43 + 1);
  v18 = v44;
  *&v30 = v13;
  *(&v30 + 1) = v12;
  v19 = v28;
  v31 = v28;
  v32 = v42;
  v33 = v43;
  v34 = v44;
  v20 = v29;
  *(v29 + 64) = v44;
  v22 = v31;
  v21 = v32;
  *v20 = v30;
  v20[1] = v22;
  v23 = v33;
  v20[2] = v21;
  v20[3] = v23;
  sub_260FD33F4(&v30, v35);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v35[0] = v13;
  v35[1] = v12;
  v36 = v19;
  v37 = v27;
  v38 = v26;
  v39 = v16;
  v40 = v17;
  v41 = v18;
  return sub_260FD342C(v35);
}

uint64_t sub_260FD0D0C()
{
  v1 = *(v0 + 64);
  sub_2610BD514();
  sub_2610BCA54();
  sub_2610BCA54();
  sub_2610BCA54();
  sub_2610BCA54();
  MEMORY[0x2666F7E70](v1);
  return sub_2610BD574();
}

uint64_t sub_260FD0DC4(uint64_t a1)
{
  v2 = *(v1 + 64);
  sub_2610BCA54();
  sub_2610BCA54();
  sub_2610BCA54();
  sub_2610BCA54();
  return MEMORY[0x2666F7E70](v2);
}

uint64_t sub_260FD0E50(uint64_t a1)
{
  v2 = *(v1 + 64);
  sub_2610BD514();
  sub_2610BCA54();
  sub_2610BCA54();
  sub_2610BCA54();
  sub_2610BCA54();
  MEMORY[0x2666F7E70](v2);
  return sub_2610BD574();
}

id IdMSAccount.AnisettePackage.into()()
{
  v1 = *(v0 + 32);
  v2 = [objc_allocWithZone(MEMORY[0x277CF0160]) init];
  v3 = sub_2610BC9D4();
  [v2 setMachineID_];

  v4 = sub_2610BC9D4();
  [v2 setOneTimePassword_];

  [v2 setRoutingInfo_];
  return v2;
}

id IdMSAccount.into(with:)(void *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = sub_2610BC9D4();
  v6 = [a1 authKitAccountWithAltDSID_];

  if (!v6)
  {
    sub_260FD345C();
    swift_allocError();
    *v7 = v4;
    v7[1] = v3;
    swift_willThrow();
  }

  return v6;
}

void ACAccount.into(with:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  ACAccount.id(with:)(a1, v57);
  if (v3)
  {
    return;
  }

  v7 = v57[1];
  v6 = v57[0];
  v48 = v59;
  v49 = v58;
  v8 = [a1 givenNameForAccount_];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  v53 = sub_2610BCA04();
  v11 = v10;

  v12 = [a1 familyNameForAccount_];
  if (!v12)
  {

LABEL_6:
    v53 = 0;
    v11 = 0;
    v14 = 0;
    v47 = 0;
    v16 = 2;
    goto LABEL_7;
  }

  v13 = v12;
  v14 = sub_2610BCA04();
  v47 = v15;

  v16 = 1;
LABEL_7:
  v46 = v16;
  v17 = [a1 servicesUsingAccount_];
  if (v17)
  {
    v43 = v14;
    v44 = v7;
    v45 = v6;
    v18 = v17;
    v19 = sub_2610BCD04();

    v20 = 1 << *(v19 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v19 + 56);
    v23 = (v20 + 63) >> 6;

    v24 = 0;
    v50 = MEMORY[0x277D84F90];
    while (1)
    {
      v25 = v24;
      if (!v22)
      {
        break;
      }

LABEL_15:
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      sub_260FA9708(*(v19 + 48) + 40 * (v26 | (v24 << 6)), v57);
      if (swift_dynamicCast())
      {
        v60 = v56;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_260FD1C38(0, *(v50 + 2) + 1, 1, v50);
        }

        v28 = *(v50 + 2);
        v27 = *(v50 + 3);
        v29 = v28 + 1;
        if (v28 >= v27 >> 1)
        {
          v54 = v28 + 1;
          v51 = *(v50 + 2);
          v30 = sub_260FD1C38((v27 > 1), v28 + 1, 1, v50);
          v29 = v54;
          v28 = v51;
          v50 = v30;
        }

        *(v50 + 2) = v29;
        *&v50[8 * v28 + 32] = v60;
      }
    }

    while (1)
    {
      v24 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        return;
      }

      if (v24 >= v23)
      {
        break;
      }

      v22 = *(v19 + 56 + 8 * v24);
      ++v25;
      if (v22)
      {
        goto LABEL_15;
      }
    }

    v31 = *(v50 + 2);
    if (v31)
    {
      v32 = (v50 + 32);
      v33 = *MEMORY[0x277CED1A0];
      v52 = *MEMORY[0x277CED1A8];
      v55 = *MEMORY[0x277CED1B8];
      v60 = *MEMORY[0x277CED1B0];
      v34 = *MEMORY[0x277CED1C0];
      v35 = MEMORY[0x277D84F90];
      while (1)
      {
        v37 = *v32++;
        v36 = v37;
        if (v37 > 4)
        {
          if (v36 == 5)
          {
            v38 = v52;
LABEL_35:
            v39 = v38;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = sub_260FD1B10(0, v35[2] + 1, 1, v35);
            }

            v41 = v35[2];
            v40 = v35[3];
            if (v41 >= v40 >> 1)
            {
              v35 = sub_260FD1B10((v40 > 1), v41 + 1, 1, v35);
            }

            v35[2] = v41 + 1;
            v35[v41 + 4] = v39;
            goto LABEL_24;
          }

          v38 = v60;
          if (v36 == 6)
          {
            goto LABEL_35;
          }

          v38 = v33;
          if (v36 == 7)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v38 = v33;
          if (v36 == 1)
          {
            goto LABEL_35;
          }

          v38 = v34;
          if (v36 == 2)
          {
            goto LABEL_35;
          }

          v38 = v55;
          if (v36 == 4)
          {
            goto LABEL_35;
          }
        }

LABEL_24:
        if (!--v31)
        {
          goto LABEL_41;
        }
      }
    }

    v35 = MEMORY[0x277D84F90];
LABEL_41:

    v7 = v44;
    v6 = v45;
    v14 = v43;
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
  }

  v42 = sub_260FA97B8(v35);

  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v49;
  *(a2 + 32) = v48;
  *(a2 + 48) = v53;
  *(a2 + 56) = v11;
  *(a2 + 64) = v14;
  *(a2 + 72) = v47;
  *(a2 + 80) = v46;
  *(a2 + 88) = v42;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0;
  *(a2 + 168) = 3;
}

void ACAccount.id(with:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = [v3 accountType];
  if (!v6)
  {
    __break(1u);
    goto LABEL_26;
  }

  v7 = v6;
  v8 = [v6 identifier];

  if (!v8)
  {
    sub_2610BCA04();
    goto LABEL_11;
  }

  v9 = sub_2610BCA04();
  v11 = v10;

  v12 = sub_2610BCA04();
  if (!v11)
  {
LABEL_11:

LABEL_12:
    v16 = [v3 accountType];
    if (v16)
    {
      v17 = v16;
LABEL_14:
      sub_260FD3C14();
      swift_allocError();
      *v18 = v17;
      swift_willThrow();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (v9 == v12 && v11 == v13)
  {

    goto LABEL_16;
  }

  v15 = sub_2610BD384();

  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  v19 = [a1 altDSIDForAccount_];
  if (!v19)
  {
    v17 = 0;
    goto LABEL_14;
  }

  v20 = v19;
  v21 = sub_2610BCA04();
  v23 = v22;

  v24 = [a1 DSIDForAccount_];
  if (v24)
  {
    v25 = v24;
    v26 = [v25 stringValue];
    v27 = sub_2610BCA04();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v30 = [v3 username];
  if (v30)
  {
    v31 = v30;
    v32 = sub_2610BCA04();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  *a2 = v21;
  a2[1] = v23;
  a2[2] = v32;
  a2[3] = v34;
  a2[4] = v27;
  a2[5] = v29;
}

void ACAccount.name(with:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = [a1 givenNameForAccount_];
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = v6;
  v8 = sub_2610BCA04();
  v10 = v9;

  v11 = [a1 familyNameForAccount_];
  if (!v11)
  {

LABEL_5:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v16 = 2;
    goto LABEL_6;
  }

  v12 = v11;
  v13 = sub_2610BCA04();
  v15 = v14;

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v13;
  *(a2 + 24) = v15;
  v16 = 1;
LABEL_6:
  *(a2 + 32) = v16;
}

id AKAnisetteData.into()@<X0>(uint64_t *a1@<X8>)
{
  result = [v1 machineID];
  if (result)
  {
    v4 = result;
    v5 = sub_2610BCA04();
    v7 = v6;

    result = [v1 oneTimePassword];
    if (result)
    {
      v8 = result;
      v9 = sub_2610BCA04();
      v11 = v10;

      result = [v1 routingInfo];
      *a1 = v5;
      a1[1] = v7;
      a1[2] = v9;
      a1[3] = v11;
      a1[4] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void __swiftcall AKDevice.into()(ProximityAppleIDSetup::IdMSAccount::DeviceInfo_optional *__return_ptr retstr)
{
  v2 = v1;
  v4 = [v1 uniqueDeviceIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2610BCA04();
    v8 = v7;

    v9 = [v2 serverFriendlyDescription];
    if (v9)
    {
      v10 = v9;
      v11 = sub_2610BCA04();
      v13 = v12;

      retstr->value.deviceIdentifier._countAndFlagsBits = v6;
      retstr->value.deviceIdentifier._object = v8;
      retstr->value.serverFriendlyDescription._countAndFlagsBits = v11;
      retstr->value.serverFriendlyDescription._object = v13;
      return;
    }
  }

  retstr->value.deviceIdentifier = 0u;
  retstr->value.serverFriendlyDescription = 0u;
}

id IdMSAccount.DeviceInfo.into(with:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CF0218]) init];
  [v0 setLinkType_];
  v1 = sub_2610BC9D4();
  [v0 setUniqueDeviceIdentifier_];

  v2 = sub_2610BC9D4();
  [v0 setServerFriendlyDescription_];

  return v0;
}

void *sub_260FD1B10(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64680, &qword_2610C2288);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AIDAServiceType(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_260FD1C38(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64688, &qword_2610C2290);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_260FD1D3C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64670, &qword_2610C2278);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_260FD1E40(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64678, &qword_2610C2280);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_260FD1F4C(__int128 *a1, uint64_t a2)
{
  sub_2610BD574();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = 0; v5; v7 ^= v13)
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(a2 + 48) + ((v9 << 9) | (8 * v10)));
    sub_2610BCA04();
    sub_2610BD514();
    v12 = v11;
    sub_2610BCA54();
    v13 = sub_2610BD574();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x2666F7E40](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

BOOL _s21ProximityAppleIDSetup11IdMSAccountV10CredentialO20CompanionKeyEnvelopeV2eeoiySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v15 = a1[6];
  v16 = a1[7];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v10 = a2[7];
  v13 = a2[8];
  v14 = a1[8];
  return (*a1 == *a2 && a1[1] == a2[1] || (sub_2610BD384() & 1) != 0) && (v2 == v6 && v4 == v7 || (sub_2610BD384() & 1) != 0) && (v3 == v8 && v5 == v9 || (sub_2610BD384() & 1) != 0) && (v15 == v11 && v16 == v10 || (sub_2610BD384() & 1) != 0) && v14 == v13;
}

uint64_t _s21ProximityAppleIDSetup11IdMSAccountV10CredentialO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v23 = *(a1 + 32);
  *v24 = v2;
  *&v24[9] = *(a1 + 57);
  v4 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v4;
  v5 = *(a2 + 48);
  v6 = *(a2 + 16);
  *&v25[32] = *(a2 + 32);
  *&v25[48] = v5;
  *&v25[57] = *(a2 + 57);
  v7 = *(a2 + 16);
  *v25 = *a2;
  *&v25[16] = v7;
  *(v27 + 9) = *(a1 + 57);
  v8 = *(a1 + 48);
  v26[2] = v23;
  v27[0] = v8;
  v26[0] = v22[0];
  v26[1] = v3;
  *&v28[9] = *(a2 + 57);
  v9 = *(a2 + 48);
  v27[4] = *&v25[32];
  *v28 = v9;
  v27[2] = *v25;
  v27[3] = v6;
  if (v24[24] > 1u)
  {
    if (v24[24] == 2)
    {
      if (v25[72] == 2)
      {
LABEL_9:
        if (v22[0] != *v25)
        {
          v13 = sub_2610BD384();
          goto LABEL_16;
        }

        sub_260FCACF4(v25, v21);
        sub_260FCACF4(v22, v21);
        goto LABEL_14;
      }
    }

    else if (v25[72] == 3)
    {
      v14 = vorrq_s8(vorrq_s8(*&v25[8], *&v25[40]), vorrq_s8(*&v25[24], *&v25[56]));
      if (!(*&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)) | *v25))
      {
LABEL_14:
        sub_260FD5D3C(v26);
        v15 = 1;
        return v15 & 1;
      }
    }
  }

  else
  {
    if (!v24[24])
    {
      if (!v25[72])
      {
        v19[0] = v22[0];
        v10 = *(a1 + 32);
        v19[1] = *(a1 + 16);
        v19[2] = v10;
        v19[3] = *(a1 + 48);
        v20 = *(a1 + 64);
        v11 = *(a2 + 48);
        v17[2] = *(a2 + 32);
        v17[3] = v11;
        v18 = *(a2 + 64);
        v12 = *(a2 + 16);
        v17[0] = *a2;
        v17[1] = v12;
        v13 = _s21ProximityAppleIDSetup11IdMSAccountV10CredentialO20CompanionKeyEnvelopeV2eeoiySbAG_AGtFZ_0(v19, v17);
LABEL_16:
        v15 = v13;
        sub_260FCACF4(v25, v21);
        sub_260FCACF4(v22, v21);
        sub_260FD5D3C(v26);
        return v15 & 1;
      }

      goto LABEL_13;
    }

    if (v25[72] == 1)
    {
      goto LABEL_9;
    }
  }

LABEL_13:
  sub_260FCACF4(v25, v21);
  sub_260FCACF4(v22, v21);
  sub_260FD5D3C(v26);
  v15 = 0;
  return v15 & 1;
}

uint64_t _s21ProximityAppleIDSetup11IdMSAccountV2IDV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2610BD384() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v6 || (v2 != v7 || v4 != v6) && (sub_2610BD384() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v3 == v9 && v5 == v8 || (sub_2610BD384() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t _s21ProximityAppleIDSetup11IdMSAccountV4NameO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      v18 = *a1;
      if (v3 == v8 && v2 == v7)
      {
        sub_260FCAB24(v18, v2, v10, v9, 0);
        sub_260FCAB24(v3, v2, v5, v4, 0);
        sub_260FCABD0(v3, v2, v5, v4, 0);
        v13 = v3;
        v14 = v2;
        v15 = v10;
        v16 = v9;
        v17 = 0;
        goto LABEL_28;
      }

      v20 = sub_2610BD384();
      sub_260FCAB24(v8, v7, v10, v9, 0);
      sub_260FCAB24(v3, v2, v5, v4, 0);
      sub_260FCABD0(v3, v2, v5, v4, 0);
      v21 = v8;
      v22 = v7;
      v23 = v10;
      v24 = v9;
      v25 = 0;
LABEL_25:
      sub_260FCABD0(v21, v22, v23, v24, v25);
      return v20 & 1;
    }

    goto LABEL_22;
  }

  if (v6 != 1)
  {
    if (v11 == 2 && (v7 | v8 | v10 | v9) == 0)
    {
      sub_260FCABD0(*a1, v2, v5, v4, 2);
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 2;
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  if (v11 != 1)
  {
LABEL_22:
    sub_260FCAB24(*a2, *(a2 + 8), v10, v9, v11);
    sub_260FCAB24(v3, v2, v5, v4, v6);
    sub_260FCABD0(v3, v2, v5, v4, v6);
    v27 = v8;
    v28 = v7;
    v29 = v10;
    v30 = v9;
    v31 = v11;
LABEL_23:
    sub_260FCABD0(v27, v28, v29, v30, v31);
    return 0;
  }

  v12 = v3 == v8 && v2 == v7;
  if (!v12 && (sub_2610BD384() & 1) == 0)
  {
    sub_260FCAB24(v8, v7, v10, v9, 1);
    sub_260FCAB24(v3, v2, v5, v4, 1);
    sub_260FCABD0(v3, v2, v5, v4, 1);
    v27 = v8;
    v28 = v7;
    v29 = v10;
    v30 = v9;
    v31 = 1;
    goto LABEL_23;
  }

  if (v5 != v10 || v4 != v9)
  {
    v20 = sub_2610BD384();
    sub_260FCAB24(v8, v7, v10, v9, 1);
    sub_260FCAB24(v3, v2, v5, v4, 1);
    sub_260FCABD0(v3, v2, v5, v4, 1);
    v21 = v8;
    v22 = v7;
    v23 = v10;
    v24 = v9;
    v25 = 1;
    goto LABEL_25;
  }

  sub_260FCAB24(v8, v7, v5, v4, 1);
  sub_260FCAB24(v3, v2, v5, v4, 1);
  sub_260FCABD0(v3, v2, v5, v4, 1);
  v13 = v8;
  v14 = v7;
  v15 = v5;
  v16 = v4;
  v17 = 1;
LABEL_28:
  sub_260FCABD0(v13, v14, v15, v16, v17);
  return 1;
}

uint64_t _s21ProximityAppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[5];
  v28 = a1[7];
  v29 = a1[6];
  v26 = a1[9];
  v27 = a1[8];
  v25 = *(a1 + 80);
  v19 = a1[11];
  v6 = *(a1 + 9);
  v46 = *(a1 + 8);
  v47[0] = v6;
  *(v47 + 9) = *(a1 + 153);
  v7 = *(a1 + 7);
  v44 = *(a1 + 6);
  v45 = v7;
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[5];
  v23 = a2[7];
  v24 = a2[6];
  v21 = a2[9];
  v22 = a2[8];
  v20 = *(a2 + 80);
  v18 = a2[11];
  v12 = *(a2 + 9);
  v50 = *(a2 + 8);
  v51[0] = v12;
  *(v51 + 9) = *(a2 + 153);
  v13 = *(a2 + 7);
  v48 = *(a2 + 6);
  v49 = v13;
  *&v41 = v2;
  *(&v41 + 1) = v3;
  *&v42[8] = *(a1 + 3);
  *v42 = v4;
  *&v42[24] = v5;
  *&v38 = v8;
  *(&v38 + 1) = v9;
  *&v39[8] = *(a2 + 3);
  *v39 = v10;
  *&v39[24] = v11;
  v14 = _s21ProximityAppleIDSetup11IdMSAccountV2IDV2eeoiySbAE_AEtFZ_0(&v41, &v38);

  if (v14 & 1) != 0 && (*&v41 = v29, *(&v41 + 1) = v28, *v42 = v27, *&v42[8] = v26, v42[16] = v25, *&v38 = v24, *(&v38 + 1) = v23, *v39 = v22, *&v39[8] = v21, v39[16] = v20, sub_260FCAB24(v29, v28, v27, v26, v25), sub_260FCAB24(v24, v23, v22, v21, v20), v15 = _s21ProximityAppleIDSetup11IdMSAccountV4NameO2eeoiySbAE_AEtFZ_0(&v41, &v38), sub_260FCABD0(v38, *(&v38 + 1), *v39, *&v39[8], v39[16]), sub_260FCABD0(v41, *(&v41 + 1), *v42, *&v42[8], v42[16]), (v15) && (sub_260FCAE28(v19, v18))
  {
    v36 = v46;
    v37[0] = v47[0];
    *(v37 + 9) = *(v47 + 9);
    v34 = v44;
    v35 = v45;
    v32 = v50;
    v33[0] = v51[0];
    *(v33 + 9) = *(v51 + 9);
    v30 = v48;
    v31 = v49;
    sub_260FCACF4(&v44, &v41);
    sub_260FCACF4(&v48, &v41);
    v16 = _s21ProximityAppleIDSetup11IdMSAccountV10CredentialO2eeoiySbAE_AEtFZ_0(&v34, &v30);
    *&v39[16] = v32;
    v40[0] = v33[0];
    *(v40 + 9) = *(v33 + 9);
    v38 = v30;
    *v39 = v31;
    sub_260FCAD8C(&v38);
    *&v42[16] = v36;
    v43[0] = v37[0];
    *(v43 + 9) = *(v37 + 9);
    v41 = v34;
    *v42 = v35;
    sub_260FCAD8C(&v41);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

unint64_t sub_260FD2B24()
{
  result = qword_27FE642D0;
  if (!qword_27FE642D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE642D0);
  }

  return result;
}

unint64_t sub_260FD2B78()
{
  result = qword_27FE642D8;
  if (!qword_27FE642D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE642D8);
  }

  return result;
}

unint64_t sub_260FD2BCC()
{
  result = qword_27FE642E0;
  if (!qword_27FE642E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE642E0);
  }

  return result;
}

unint64_t sub_260FD2C20()
{
  result = qword_27FE64300;
  if (!qword_27FE64300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64300);
  }

  return result;
}

unint64_t sub_260FD2C74()
{
  result = qword_27FE64310;
  if (!qword_27FE64310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64310);
  }

  return result;
}

unint64_t sub_260FD2CC8()
{
  result = qword_27FE64318;
  if (!qword_27FE64318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64318);
  }

  return result;
}

uint64_t sub_260FD2D1C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE642E8, &qword_2610C0878);
    sub_260FD5CF8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_260FD2DA4()
{
  result = qword_27FE64330;
  if (!qword_27FE64330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64330);
  }

  return result;
}

unint64_t sub_260FD2E60()
{
  result = qword_27FE64360;
  if (!qword_27FE64360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64360);
  }

  return result;
}

unint64_t sub_260FD2EB4()
{
  result = qword_27FE64368;
  if (!qword_27FE64368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64368);
  }

  return result;
}

unint64_t sub_260FD2F08()
{
  result = qword_27FE64370;
  if (!qword_27FE64370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64370);
  }

  return result;
}

unint64_t sub_260FD2F5C()
{
  result = qword_27FE64378;
  if (!qword_27FE64378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64378);
  }

  return result;
}

unint64_t sub_260FD2FB0()
{
  result = qword_27FE64380;
  if (!qword_27FE64380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64380);
  }

  return result;
}

unint64_t sub_260FD3004()
{
  result = qword_27FE64388;
  if (!qword_27FE64388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64388);
  }

  return result;
}

unint64_t sub_260FD3058()
{
  result = qword_27FE643C0;
  if (!qword_27FE643C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE643C0);
  }

  return result;
}

unint64_t sub_260FD30AC()
{
  result = qword_27FE643E8;
  if (!qword_27FE643E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE643E8);
  }

  return result;
}

unint64_t sub_260FD3100()
{
  result = qword_27FE643F0;
  if (!qword_27FE643F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE643F0);
  }

  return result;
}

unint64_t sub_260FD3154()
{
  result = qword_27FE643F8;
  if (!qword_27FE643F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE643F8);
  }

  return result;
}

unint64_t sub_260FD31A8()
{
  result = qword_27FE64400;
  if (!qword_27FE64400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64400);
  }

  return result;
}

unint64_t sub_260FD31FC()
{
  result = qword_27FE64430;
  if (!qword_27FE64430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64430);
  }

  return result;
}

unint64_t sub_260FD3250()
{
  result = qword_27FE64448;
  if (!qword_27FE64448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64448);
  }

  return result;
}

unint64_t sub_260FD32A4()
{
  result = qword_27FE64460;
  if (!qword_27FE64460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64460);
  }

  return result;
}

unint64_t sub_260FD32F8()
{
  result = qword_27FE64478;
  if (!qword_27FE64478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64478);
  }

  return result;
}

unint64_t sub_260FD334C()
{
  result = qword_27FE64480;
  if (!qword_27FE64480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64480);
  }

  return result;
}

unint64_t sub_260FD33A0()
{
  result = qword_27FE64490;
  if (!qword_27FE64490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64490);
  }

  return result;
}

unint64_t sub_260FD345C()
{
  result = qword_27FE64498;
  if (!qword_27FE64498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64498);
  }

  return result;
}

uint64_t sub_260FD34B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2610BD384() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_2610BD384() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365636976726573 && a2 == 0xE800000000000000 || (sub_2610BD384() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61)
  {

    return 3;
  }

  else
  {
    v6 = sub_2610BD384();

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

uint64_t sub_260FD3614(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_2610BD384() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F696E61706D6F63 && a2 == 0xED00007379654B6ELL || (sub_2610BD384() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002610D2AD0 == a2 || (sub_2610BD384() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7773736150776172 && a2 == 0xEB0000000064726FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_2610BD384();

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

uint64_t sub_260FD378C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_2610BD384() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74726F6873 && a2 == 0xE500000000000000 || (sub_2610BD384() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1819047270 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2610BD384();

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

uint64_t sub_260FD38A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64697344746C61 && a2 == 0xE700000000000000;
  if (v4 || (sub_2610BD384() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D616E72657375 && a2 == 0xE800000000000000 || (sub_2610BD384() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684632420 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2610BD384();

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

uint64_t sub_260FD39B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49656E696863616DLL && a2 == 0xE900000000000044;
  if (v4 || (sub_2610BD384() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x50656D6954656E6FLL && a2 == 0xEF64726F77737361 || (sub_2610BD384() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49676E6974756F72 && a2 == 0xEB000000006F666ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_2610BD384();

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

uint64_t sub_260FD3AE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61756E69746E6F63 && a2 == 0xEF79654B6E6F6974;
  if (v4 || (sub_2610BD384() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002610D2B30 == a2 || (sub_2610BD384() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574746573696E61 && a2 == 0xEF6567616B636150)
  {

    return 2;
  }

  else
  {
    v6 = sub_2610BD384();

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

unint64_t sub_260FD3C14()
{
  result = qword_27FE644A0;
  if (!qword_27FE644A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE644A0);
  }

  return result;
}

unint64_t sub_260FD3CA8()
{
  result = qword_27FE644A8;
  if (!qword_27FE644A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE644A8);
  }

  return result;
}

unint64_t sub_260FD3CFC()
{
  result = qword_27FE64B80;
  if (!qword_27FE64B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B80);
  }

  return result;
}

unint64_t sub_260FD3D50()
{
  result = qword_27FE644B0;
  if (!qword_27FE644B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE644B0);
  }

  return result;
}

unint64_t sub_260FD3DA8()
{
  result = qword_27FE644B8;
  if (!qword_27FE644B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE644B8);
  }

  return result;
}

unint64_t sub_260FD3E3C()
{
  result = qword_27FE644C0;
  if (!qword_27FE644C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE644C0);
  }

  return result;
}

unint64_t sub_260FD3E94()
{
  result = qword_27FE644C8;
  if (!qword_27FE644C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE644C8);
  }

  return result;
}

unint64_t sub_260FD3F28()
{
  result = qword_27FE644D0;
  if (!qword_27FE644D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE644D0);
  }

  return result;
}

unint64_t sub_260FD3F80()
{
  result = qword_27FE644D8;
  if (!qword_27FE644D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE644D8);
  }

  return result;
}

unint64_t sub_260FD4014()
{
  result = qword_27FE644E0;
  if (!qword_27FE644E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE644E0);
  }

  return result;
}

unint64_t sub_260FD406C()
{
  result = qword_27FE644E8;
  if (!qword_27FE644E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE644E8);
  }

  return result;
}

unint64_t sub_260FD4100()
{
  result = qword_27FE644F0;
  if (!qword_27FE644F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE644F0);
  }

  return result;
}

unint64_t sub_260FD4158()
{
  result = qword_27FE644F8;
  if (!qword_27FE644F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE644F8);
  }

  return result;
}

unint64_t sub_260FD41EC()
{
  result = qword_27FE64500;
  if (!qword_27FE64500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64500);
  }

  return result;
}

unint64_t sub_260FD4240()
{
  result = qword_27FE64508;
  if (!qword_27FE64508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64508);
  }

  return result;
}

unint64_t sub_260FD4294()
{
  result = qword_27FE64510;
  if (!qword_27FE64510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64510);
  }

  return result;
}

unint64_t sub_260FD42EC()
{
  result = qword_27FE64518;
  if (!qword_27FE64518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64518);
  }

  return result;
}

uint64_t sub_260FD4380(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_260FD43D4()
{
  result = qword_27FE64520;
  if (!qword_27FE64520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64520);
  }

  return result;
}

unint64_t sub_260FD442C()
{
  result = qword_27FE64528;
  if (!qword_27FE64528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64528);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21ProximityAppleIDSetup11IdMSAccountV4NameO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_21ProximityAppleIDSetup11IdMSAccountV10CredentialO(uint64_t a1)
{
  if ((*(a1 + 72) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 72) & 3;
  }
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_260FD44F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 169))
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

uint64_t sub_260FD453C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 169) = 1;
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

    *(result + 169) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_260FD45DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 73))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 72);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_260FD4624(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_260FD467C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    LOBYTE(a2) = 3;
  }

  *(result + 72) = a2;
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_260FD46CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_260FD4714(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_260FD475C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
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

uint64_t sub_260FD479C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_260FD47E4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_260FD4854(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_260FD489C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_260FD4900(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_260FD4948(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_260FD49BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_260FD4A04(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_260FD4A70(uint64_t a1, int a2)
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

uint64_t sub_260FD4AB8(uint64_t result, int a2, int a3)
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

uint64_t sub_260FD4B04(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_260FD4B54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_260FD4BA8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FAFamilyMemberProxiedAuthModes(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FAFamilyMemberProxiedAuthModes(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PASProtoAccount.AgeRange(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PASProtoAccount.AgeRange(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_260FD4F3C()
{
  result = qword_27FE64530;
  if (!qword_27FE64530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64530);
  }

  return result;
}

unint64_t sub_260FD4F94()
{
  result = qword_27FE64538;
  if (!qword_27FE64538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64538);
  }

  return result;
}

unint64_t sub_260FD4FEC()
{
  result = qword_27FE64540;
  if (!qword_27FE64540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64540);
  }

  return result;
}

unint64_t sub_260FD5044()
{
  result = qword_27FE64548;
  if (!qword_27FE64548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64548);
  }

  return result;
}

unint64_t sub_260FD509C()
{
  result = qword_27FE64550;
  if (!qword_27FE64550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64550);
  }

  return result;
}

unint64_t sub_260FD50F4()
{
  result = qword_27FE64558;
  if (!qword_27FE64558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64558);
  }

  return result;
}

unint64_t sub_260FD514C()
{
  result = qword_27FE64560;
  if (!qword_27FE64560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64560);
  }

  return result;
}

unint64_t sub_260FD51A4()
{
  result = qword_27FE64568;
  if (!qword_27FE64568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64568);
  }

  return result;
}

unint64_t sub_260FD51FC()
{
  result = qword_27FE64570;
  if (!qword_27FE64570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64570);
  }

  return result;
}

unint64_t sub_260FD5254()
{
  result = qword_27FE64578;
  if (!qword_27FE64578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64578);
  }

  return result;
}

unint64_t sub_260FD52AC()
{
  result = qword_27FE64580;
  if (!qword_27FE64580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64580);
  }

  return result;
}

unint64_t sub_260FD5304()
{
  result = qword_27FE64588;
  if (!qword_27FE64588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64588);
  }

  return result;
}

unint64_t sub_260FD535C()
{
  result = qword_27FE64590;
  if (!qword_27FE64590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64590);
  }

  return result;
}

unint64_t sub_260FD53B4()
{
  result = qword_27FE64598;
  if (!qword_27FE64598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64598);
  }

  return result;
}

unint64_t sub_260FD540C()
{
  result = qword_27FE645A0;
  if (!qword_27FE645A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE645A0);
  }

  return result;
}

unint64_t sub_260FD5464()
{
  result = qword_27FE645A8;
  if (!qword_27FE645A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE645A8);
  }

  return result;
}

unint64_t sub_260FD54BC()
{
  result = qword_27FE645B0;
  if (!qword_27FE645B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE645B0);
  }

  return result;
}

unint64_t sub_260FD5514()
{
  result = qword_27FE645B8;
  if (!qword_27FE645B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE645B8);
  }

  return result;
}

unint64_t sub_260FD556C()
{
  result = qword_27FE645C0;
  if (!qword_27FE645C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE645C0);
  }

  return result;
}

unint64_t sub_260FD55C4()
{
  result = qword_27FE645C8;
  if (!qword_27FE645C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE645C8);
  }

  return result;
}

unint64_t sub_260FD561C()
{
  result = qword_27FE645D0;
  if (!qword_27FE645D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE645D0);
  }

  return result;
}

unint64_t sub_260FD5674()
{
  result = qword_27FE645D8;
  if (!qword_27FE645D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE645D8);
  }

  return result;
}

unint64_t sub_260FD56CC()
{
  result = qword_27FE645E0;
  if (!qword_27FE645E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE645E0);
  }

  return result;
}

unint64_t sub_260FD5724()
{
  result = qword_27FE645E8;
  if (!qword_27FE645E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE645E8);
  }

  return result;
}

unint64_t sub_260FD577C()
{
  result = qword_27FE645F0;
  if (!qword_27FE645F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE645F0);
  }

  return result;
}

unint64_t sub_260FD57D4()
{
  result = qword_27FE645F8;
  if (!qword_27FE645F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE645F8);
  }

  return result;
}

unint64_t sub_260FD582C()
{
  result = qword_27FE64600;
  if (!qword_27FE64600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64600);
  }

  return result;
}

unint64_t sub_260FD5884()
{
  result = qword_27FE64608;
  if (!qword_27FE64608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64608);
  }

  return result;
}

unint64_t sub_260FD58DC()
{
  result = qword_27FE64610;
  if (!qword_27FE64610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64610);
  }

  return result;
}

unint64_t sub_260FD5934()
{
  result = qword_27FE64618;
  if (!qword_27FE64618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64618);
  }

  return result;
}

unint64_t sub_260FD598C()
{
  result = qword_27FE64620;
  if (!qword_27FE64620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64620);
  }

  return result;
}

unint64_t sub_260FD59E4()
{
  result = qword_27FE64628;
  if (!qword_27FE64628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64628);
  }

  return result;
}

unint64_t sub_260FD5A3C()
{
  result = qword_27FE64630;
  if (!qword_27FE64630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64630);
  }

  return result;
}

unint64_t sub_260FD5A94()
{
  result = qword_27FE64638;
  if (!qword_27FE64638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64638);
  }

  return result;
}

unint64_t sub_260FD5AEC()
{
  result = qword_27FE64640;
  if (!qword_27FE64640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64640);
  }

  return result;
}

unint64_t sub_260FD5B44()
{
  result = qword_27FE64648;
  if (!qword_27FE64648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64648);
  }

  return result;
}

unint64_t sub_260FD5B9C()
{
  result = qword_27FE64650;
  if (!qword_27FE64650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64650);
  }

  return result;
}

unint64_t sub_260FD5BF4()
{
  result = qword_27FE64658;
  if (!qword_27FE64658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64658);
  }

  return result;
}

unint64_t sub_260FD5C4C()
{
  result = qword_27FE64660;
  if (!qword_27FE64660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64660);
  }

  return result;
}

unint64_t sub_260FD5CA4()
{
  result = qword_27FE64668;
  if (!qword_27FE64668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64668);
  }

  return result;
}

uint64_t sub_260FD5CF8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AIDAServiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_260FD5D3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64690, qword_2610C2298);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of PASFlowPresenter.stepDidRequestReset(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_260FBF860;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PASFlowPresenter.stepDidRequestCancel(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_260FBF860;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PASFlowPresenter.handleReset()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FB6DB4;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PASSourceFlowPresenter.flowDidComplete(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBF860;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PASTargetFlowPresenter.performAIDASignIn(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBCD00;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PASTargetFlowPresenter.proximitySetupSelectedAccountType(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBF874;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PASTargetFlowPresenter.setupPasscodeAndBiometric()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF874;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PASTargetFlowPresenter.flowDidComplete(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBF860;

  return v9(a1, a2, a3);
}

unint64_t PASError.errorUserInfo.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v3;
  v4 = sub_2610BC434();
  *(inited + 72) = MEMORY[0x277D837D0];
  if (!v5)
  {
    v4 = sub_2610BD304();
  }

  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FD6C78(inited + 32);
  return v6;
}

uint64_t PASError<>.description.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getDynamicType();
  v4 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  sub_2610BCA94();
  MEMORY[0x2666F7380]();

  return v4;
}

uint64_t PASFlowStepRepairFamilyError.code.getter()
{
  if (*v0 == 1)
  {
    return 1700;
  }

  else
  {
    return 1701;
  }
}

uint64_t PASFlowStepProxiedTermsError.code.getter()
{
  if (*(v0 + 8) == 1)
  {
    return qword_2610C23B0[*v0];
  }

  else
  {
    return 2201;
  }
}

uint64_t V1CommandError.code.getter()
{
  if (!*(v0 + 40))
  {
    return 10001;
  }

  if (*(v0 + 40) == 1)
  {
    return 10002;
  }

  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3] | v0[4];
  if (!(v5 | *v0 | v4 | v3))
  {
    return 10000;
  }

  v6 = v5 | v4 | v3;
  if (v2 == 1 && !v6)
  {
    return 10003;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v2 == 2;
  }

  if (v7)
  {
    return 10004;
  }

  else
  {
    return 10005;
  }
}

uint64_t sub_260FD6A00()
{
  if (*v0)
  {
    return 1201;
  }

  else
  {
    return 1200;
  }
}

uint64_t sub_260FD6A14()
{
  if (*v0)
  {
    return 2501;
  }

  else
  {
    return 2500;
  }
}

uint64_t sub_260FD6A38()
{
  if (*v0)
  {
    return 2601;
  }

  else
  {
    return 2600;
  }
}

uint64_t sub_260FD6A4C()
{
  v1 = *(v0 + 32);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      return 1003;
    }

    else if (v1 == 4)
    {
      return 1004;
    }

    else
    {
      v4 = *(v0 + 8);
      v5 = *(v0 + 16) | *(v0 + 24);
      if (v5 | v4)
      {
        v6 = 0;
      }

      else
      {
        v6 = *v0 == 1;
      }

      v7 = 1006;
      if (!v6)
      {
        v7 = 1007;
      }

      if (v5 | *v0 | v4)
      {
        return v7;
      }

      else
      {
        return 1005;
      }
    }
  }

  else
  {
    v2 = 1001;
    if (v1 != 1)
    {
      v2 = 1002;
    }

    if (*(v0 + 32))
    {
      return v2;
    }

    else
    {
      return 1000;
    }
  }
}

uint64_t sub_260FD6AF4()
{
  if (*v0)
  {
    return 1501;
  }

  else
  {
    return 1500;
  }
}

uint64_t sub_260FD6B38()
{
  if (!*(v0 + 40))
  {
    return 10001;
  }

  if (*(v0 + 40) == 1)
  {
    return 10002;
  }

  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3] | v0[4];
  if (!(v5 | *v0 | v4 | v3))
  {
    return 10000;
  }

  v6 = v5 | v4 | v3;
  if (v2 == 1 && !v6)
  {
    return 10003;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v2 == 2;
  }

  if (v7)
  {
    return 10004;
  }

  else
  {
    return 10005;
  }
}

uint64_t sub_260FD6BB8()
{
  if (*(v0 + 16))
  {
    return 1101;
  }

  else
  {
    return 1100;
  }
}

uint64_t sub_260FD6BF4()
{
  if (*v0)
  {
    return 2701;
  }

  else
  {
    return 2700;
  }
}

uint64_t sub_260FD6C08()
{
  if (*(v0 + 8) == 1)
  {
    return qword_2610C23B0[*v0];
  }

  else
  {
    return 2201;
  }
}

uint64_t sub_260FD6C30()
{
  if (*v0)
  {
    return 3101;
  }

  else
  {
    return 3100;
  }
}

uint64_t sub_260FD6C54()
{
  if (*v0)
  {
    return 11001;
  }

  else
  {
    return 11002;
  }
}

uint64_t sub_260FD6C78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63C30, &unk_2610BEE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_260FD6D1C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2610BC854();
}

uint64_t sub_260FD6DB4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64798, &unk_2610C2610);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646A0, &qword_2610C2438);
  sub_2610BC824();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t PASFlowStepProtoAccountPicker.canAddMembers.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  return v1;
}

uint64_t sub_260FD6FAC@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  *a2 = v4;
  return result;
}

uint64_t sub_260FD702C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2610BC854();
}

uint64_t sub_260FD70BC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64790, &qword_2610C7710);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC824();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t sub_260FD7254(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  return v3;
}

uint64_t sub_260FD72D4@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  *a4 = v6;
  return result;
}

uint64_t sub_260FD7350(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2610BC854();
}

uint64_t PASFlowStepProtoAccountPicker.selectedPresentable.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2610BC854();
}

uint64_t (*PASFlowStepProtoAccountPicker.selectedPresentable.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2610BC834();
  return sub_260FD74E0;
}

void sub_260FD74E0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_260FD7564(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_2610BC814();
  return swift_endAccess();
}

uint64_t sub_260FD75DC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_2610BC814();
  return swift_endAccess();
}

uint64_t sub_260FD7658(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646C0, &qword_2610C24E0);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646B8, &qword_2610C24D8);
  sub_2610BC824();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t PASFlowStepProtoAccountPicker.$selectedPresentable.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646C0, &qword_2610C24E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646B8, &qword_2610C24D8);
  sub_2610BC824();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*PASFlowStepProtoAccountPicker.$selectedPresentable.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646C0, &qword_2610C24E0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker__selectedPresentable;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646B8, &qword_2610C24D8);
  sub_2610BC814();
  swift_endAccess();
  return sub_260FD7A84;
}

void sub_260FD7A84(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_2610BC824();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_2610BC824();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_260FD7BEC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker__analyticsProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63AD0, qword_2610C7BC0);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63AD0, qword_2610C7BC0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9EB74(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63AD0, qword_2610C7BC0);
  swift_endAccess();
}

uint64_t sub_260FD7D28()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker____lazy_storage___analytics;
  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker____lazy_storage___analytics))
  {
    v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker____lazy_storage___analytics);
  }

  else
  {
    sub_260FD7BEC(v6);
    v3 = v7;
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v2 = (*(v4 + 8))(&type metadata for PickerAnalyticsEvent, &off_28738B258, v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_260FD7DF0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker__accountProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63C70, &unk_2610C0780);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63C70, &unk_2610C0780);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9D258(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63C70, &unk_2610C0780);
  swift_endAccess();
}

uint64_t sub_260FD7F2C(void *a1, uint64_t (*a2)(void))
{
  v4 = *(v2 + *a1);
  swift_beginAccess();
  if (*(v4 + 16))
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v6 = qword_27FE637E0;

    if (v6 != -1)
    {
      swift_once();
    }

    v5 = a2();
    *(v4 + 16) = v5;
    *(v4 + 24) = v7;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v5;
}

uint64_t sub_260FD8008@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker__lockProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &unk_27FE63B90, &unk_2610BED50);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &unk_27FE63B90, &unk_2610BED50);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9FF64(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &unk_27FE63B90, &unk_2610BED50);
  swift_endAccess();
}

uint64_t sub_260FD8144@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker____lazy_storage___fetchLock;
  swift_beginAccess();
  sub_260FA9918(v1 + v3, &v7, &qword_27FE64740, &qword_2610C2530);
  if (v8)
  {
    return sub_260F98E14(&v7, a1);
  }

  sub_260FA9980(&v7, &qword_27FE64740, &qword_2610C2530);
  sub_260FD8008(&v7);
  v5 = v8;
  v6 = v9;
  __swift_project_boxed_opaque_existential_1(&v7, v8);
  (*(v6 + 8))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  sub_260FA99E0(a1, &v7);
  swift_beginAccess();
  sub_260FC3844(&v7, v1 + v3, &qword_27FE64740, &qword_2610C2530);
  return swift_endAccess();
}

uint64_t PASFlowStepProtoAccountPicker.__allocating_init(delegate:dataSource:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = sub_260FDD26C(a1, a2, v9, v3, v7, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  return v10;
}

uint64_t PASFlowStepProtoAccountPicker.init(delegate:dataSource:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  MEMORY[0x28223BE20](v9, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_260FDCE10(a1, a2, v11, v3, v7, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  return v13;
}

uint64_t PASFlowStepProtoAccountPicker.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_260FDCCC8(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t PASFlowStepProtoAccountPicker.prepareForPresentation()()
{
  v1[5] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646C8, &qword_2610C24F0);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646D0, &qword_2610C24F8);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = sub_2610BCC74();
  v1[13] = sub_2610BCC64();
  v4 = swift_task_alloc();
  v1[14] = v4;
  *v4 = v1;
  v4[1] = sub_260FD85B8;

  return sub_26104582C();
}

uint64_t sub_260FD85B8()
{
  *(*v1 + 120) = v0;

  v3 = sub_2610BCBF4();
  if (v0)
  {
    v4 = sub_260FD895C;
  }

  else
  {
    v4 = sub_260FD8714;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_260FD8714()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];

  sub_260FD7F2C(&OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker__deviceProvider, sub_260F9D764);
  v8 = v7;
  ObjectType = swift_getObjectType();
  (*(v8 + 48))(ObjectType, v8);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646D8, &qword_2610C2500);
  sub_260FDD378(&qword_27FE646E0, &qword_27FE646C8, &qword_2610C24F0, MEMORY[0x277CBCEC8]);
  sub_2610BC874();
  (*(v6 + 8))(v3, v5);
  sub_260FDD378(&qword_27FE646E8, &qword_27FE646D0, &qword_2610C24F8, MEMORY[0x277CBCB10]);

  sub_2610BC8A4();

  (*(v2 + 8))(v1, v4);
  swift_beginAccess();
  sub_2610BC7D4();
  swift_endAccess();

  v10 = v0[1];

  return v10();
}

uint64_t sub_260FD895C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260FD8A04(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v7[0] = 0xD000000000000015;
  v7[1] = 0x80000002610D1820;
  v5 = (*(v4 + 24))(v7, v3, v4);

  if (v5)
  {
    *(a2 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker_supportedAuthModes) = &unk_2873832B8;
  }

  return result;
}

uint64_t PASFlowStepProtoAccountPicker.fetchPresentables(using:)(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v3 = sub_2610BCC34();
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();
  sub_2610BCC74();
  v2[39] = sub_2610BCC64();
  v5 = sub_2610BCBF4();
  v2[40] = v5;
  v2[41] = v4;

  return MEMORY[0x2822009F8](sub_260FD8BC0, v5, v4);
}

uint64_t sub_260FD8BC0()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[42] = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepProtoAccountPicker fetchPresentables", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  sub_260FD8144((v0 + 2));
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v9 = (*(v6 + 8) + **(v6 + 8));
  v7 = swift_task_alloc();
  v0[43] = v7;
  *v7 = v0;
  v7[1] = sub_260FD8DB0;

  return v9(v5, v6);
}

uint64_t sub_260FD8DB0(char a1)
{
  v2 = *v1;
  *(*v1 + 451) = a1;

  v3 = *(v2 + 328);
  v4 = *(v2 + 320);

  return MEMORY[0x2822009F8](sub_260FD8ED8, v4, v3);
}

uint64_t sub_260FD8ED8()
{
  v1 = *(v0 + 451);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  if (v1 == 1)
  {
    sub_260FD8144(v0 + 56);
    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v2);
    v10 = (*(v3 + 16) + **(v3 + 16));
    v4 = swift_task_alloc();
    *(v0 + 352) = v4;
    *v4 = v0;
    v4[1] = sub_260FD90D0;

    return v10(v2, v3);
  }

  else
  {

    v6 = sub_2610BC794();
    v7 = sub_2610BCD64();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_260F97000, v6, v7, "PASFlowStepProtoAccountPicker fetchPresentables called again!", v8, 2u);
      MEMORY[0x2666F8720](v8, -1, -1);
    }

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_260FD90D0()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 328);
  v4 = *(v2 + 320);
  if (v0)
  {
    v5 = sub_260FDA450;
  }

  else
  {
    v5 = sub_260FD920C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_260FD920C()
{
  v20 = v0;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  sub_260FD7F2C(&OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker__targetAccountOptionsProvider, sub_260F9CD6C);
  v2 = v1;
  ObjectType = swift_getObjectType();
  (*(v2 + 8))(ObjectType, v2);
  swift_unknownObjectRelease();
  v4 = v0[20];
  if (v4)
  {
    v5 = v0[21];
    __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
    (*(v5 + 8))(&v19, v4, v5);
    v6 = v19;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
    if (v6 == 1)
    {
      v7 = (v0[35] + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker_dataSource);
      v8 = v7[3];
      v9 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v8);
      v17 = (*(v9 + 8) + **(v9 + 8));
      v10 = swift_task_alloc();
      v0[46] = v10;
      *v10 = v0;
      v10[1] = sub_260FD950C;

      return v17(v8, v9);
    }
  }

  else
  {
    sub_260FA9980((v0 + 17), &qword_27FE63CF0, &qword_2610C2510);
  }

  v12 = (v0[35] + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker_dataSource);
  v13 = v12[3];
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v18 = (*(v14 + 16) + **(v14 + 16));
  v15 = swift_task_alloc();
  v0[49] = v15;
  *v15 = v0;
  v15[1] = sub_260FD9B78;
  v16 = v0[34];

  return v18(v16, v13, v14);
}

uint64_t sub_260FD950C(char a1, uint64_t a2)
{
  v5 = *v3;
  *(v5 + 376) = a2;
  *(v5 + 384) = v2;

  if (v2)
  {
    v6 = *(v5 + 320);
    v7 = *(v5 + 328);
    v8 = sub_260FDA78C;
  }

  else
  {
    *(v5 + 452) = a1 & 1;
    v6 = *(v5 + 320);
    v7 = *(v5 + 328);
    v8 = sub_260FD9638;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_260FD9638()
{
  v16 = v0;
  v1 = *(v0 + 452);
  v2 = *(v0 + 376);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 449) = v1;

  sub_2610BC854();
  if (v2 >> 62)
  {
    v3 = sub_2610BD0E4();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v15 = MEMORY[0x277D84F90];
      v4 = &v15;
      sub_2610BD044();
      if (v3 < 0)
      {
        __break(1u);
        goto LABEL_26;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = 0;
        do
        {
          v6 = v5 + 1;
          v7 = MEMORY[0x2666F78E0]();
          type metadata accessor for PASPickerPresentable();
          *(swift_allocObject() + 16) = v7;
          sub_2610BD024();
          sub_2610BD054();
          sub_2610BD064();
          sub_2610BD034();
          v5 = v6;
        }

        while (v3 != v6);
      }

      else
      {
        v8 = (*(v0 + 376) + 32);
        type metadata accessor for PASPickerPresentable();
        do
        {
          v9 = *v8++;
          *(swift_allocObject() + 16) = v9;

          sub_2610BD024();
          sub_2610BD054();
          sub_2610BD064();
          sub_2610BD034();
          --v3;
        }

        while (v3);
      }

      v10 = v15;
      goto LABEL_13;
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_13:
  v15 = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  if ((*(v0 + 450) & 1) == 0)
  {
    goto LABEL_18;
  }

  if (v10 >> 62)
  {
    if (!sub_2610BD0E4())
    {
      goto LABEL_18;
    }
  }

  else if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

  type metadata accessor for PASPickerPresentable();
  *(swift_allocObject() + 16) = 0x8000000000000000;
  MEMORY[0x2666F7430]();
  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    sub_2610BCBA4();
    v10 = v15;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 264) = v10;

    sub_2610BC854();
LABEL_18:
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 256) = v10;

    sub_2610BC854();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2610BC844();

    v4 = *(v0 + 232);
    if (!v4)
    {
      goto LABEL_28;
    }

    v3 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
      break;
    }

    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

LABEL_21:
    if ((v4 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x2666F78E0](0, v4);
      goto LABEL_24;
    }

    if (*(v3 + 16))
    {
      v11 = *(v4 + 32);

LABEL_24:

      goto LABEL_29;
    }

    __break(1u);
LABEL_42:
    sub_2610BCB64();
  }

LABEL_26:
  if (sub_2610BD0E4())
  {
    goto LABEL_21;
  }

LABEL_27:

LABEL_28:
  v11 = 0;
LABEL_29:
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 240) = v11;

  sub_2610BC854();
  *(v0 + 416) = sub_260FD7D28();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  v12 = *(v0 + 248);
  if (v12)
  {
    if (v12 >> 62)
    {
      v13 = sub_2610BD0E4();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v13 = -1;
  }

  *(v0 + 424) = v13;

  return MEMORY[0x2822009F8](sub_260FD9F8C, 0, 0);
}

uint64_t sub_260FD9B78(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 400) = v1;

  if (v1)
  {
    v5 = v4[40];
    v6 = v4[41];
    v7 = sub_260FDAAC0;
  }

  else
  {
    v4[51] = a1;
    v5 = v4[40];
    v6 = v4[41];
    v7 = sub_260FD9CA0;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_260FD9CA0()
{
  v1 = *(v0 + 408);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 448) = 0;

  sub_2610BC854();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE664E0, &unk_2610CC230);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2610C23D0;
  type metadata accessor for PASPickerPresentable();
  v3 = swift_allocObject();
  *(v3 + 16) = v1 | 0x4000000000000000;
  *(v2 + 32) = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 224) = v2;

  sub_2610BC854();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  v6 = *(v0 + 232);
  if (!v6)
  {
    goto LABEL_10;
  }

  if (v6 >> 62)
  {
    v7 = sub_2610BD0E4();
    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
LABEL_9:

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x2666F78E0](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x2822009F8](v7, v4, v5);
    }

    v8 = *(v6 + 32);
  }

LABEL_11:
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 240) = v8;

  sub_2610BC854();
  *(v0 + 416) = sub_260FD7D28();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  v9 = *(v0 + 248);
  if (v9)
  {
    if (v9 >> 62)
    {
      v10 = sub_2610BD0E4();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v10 = -1;
  }

  *(v0 + 424) = v10;
  v7 = sub_260FD9F8C;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v7, v4, v5);
}

uint64_t sub_260FD9F8C()
{
  v1 = *(v0 + 424);
  *(v0 + 200) = &type metadata for PickerAnalyticsEvent;
  *(v0 + 208) = &off_28738B258;
  *(v0 + 176) = v1;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  v2 = swift_task_alloc();
  *(v0 + 432) = v2;
  *v2 = v0;
  v2[1] = sub_260FDA050;

  return sub_261047C34(v0 + 176, 0, 0);
}

void sub_260FDA050()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 22);
    v3 = v2[40];
    v4 = v2[41];

    MEMORY[0x2822009F8](sub_260FDA190, v3, v4);
  }
}

uint64_t sub_260FDA190()
{
  sub_260FD8144((v0 + 12));
  v1 = v0[15];
  v2 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[55] = v3;
  *v3 = v0;
  v3[1] = sub_260FDA2C0;

  return v5(v1, v2);
}

uint64_t sub_260FDA2C0()
{
  v1 = *v0;

  v2 = *(v1 + 328);
  v3 = *(v1 + 320);

  return MEMORY[0x2822009F8](sub_260FDA3E0, v3, v2);
}

uint64_t sub_260FDA3E0()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260FDA450()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v1 = *(v0 + 360);
  *(v0 + 216) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
  if (swift_dynamicCast())
  {

    v3 = sub_2610BC794();
    v4 = sub_2610BCD84();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_260F97000, v3, v4, "PASFlowStepProtoAccountPicker fetchPresentables task was cancelled", v5, 2u);
      MEMORY[0x2666F8720](v5, -1, -1);
    }

    v7 = *(v0 + 296);
    v6 = *(v0 + 304);
    v8 = *(v0 + 288);

    (*(v7 + 8))(v6, v8);
    v9 = *(v0 + 216);
  }

  else
  {

    v10 = v1;
    v11 = sub_2610BC794();
    v12 = sub_2610BCD64();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      v15 = v1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_260F97000, v11, v12, "PASFlowStepProtoAccountPicker fetchPresentables failed with error %{public}@", v13, 0xCu);
      sub_260FA9980(v14, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v14, -1, -1);
      MEMORY[0x2666F8720](v13, -1, -1);
    }

    v17 = *(v0 + 280);

    v18 = *(v17 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker_error);
    *(v17 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker_error) = v1;

    v19 = v1;
    sub_2610439BC();
    v9 = v1;
  }

  sub_260FD8144(v0 + 96);
  v20 = *(v0 + 120);
  v21 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v20);
  v24 = (*(v21 + 24) + **(v21 + 24));
  v22 = swift_task_alloc();
  *(v0 + 440) = v22;
  *v22 = v0;
  v22[1] = sub_260FDA2C0;

  return v24(v20, v21);
}

uint64_t sub_260FDA78C()
{
  v1 = *(v0 + 384);
  *(v0 + 216) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
  if (swift_dynamicCast())
  {

    v3 = sub_2610BC794();
    v4 = sub_2610BCD84();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_260F97000, v3, v4, "PASFlowStepProtoAccountPicker fetchPresentables task was cancelled", v5, 2u);
      MEMORY[0x2666F8720](v5, -1, -1);
    }

    v7 = *(v0 + 296);
    v6 = *(v0 + 304);
    v8 = *(v0 + 288);

    (*(v7 + 8))(v6, v8);
    v9 = *(v0 + 216);
  }

  else
  {

    v10 = v1;
    v11 = sub_2610BC794();
    v12 = sub_2610BCD64();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      v15 = v1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_260F97000, v11, v12, "PASFlowStepProtoAccountPicker fetchPresentables failed with error %{public}@", v13, 0xCu);
      sub_260FA9980(v14, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v14, -1, -1);
      MEMORY[0x2666F8720](v13, -1, -1);
    }

    v17 = *(v0 + 280);

    v18 = *(v17 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker_error);
    *(v17 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker_error) = v1;

    v19 = v1;
    sub_2610439BC();
    v9 = v1;
  }

  sub_260FD8144(v0 + 96);
  v20 = *(v0 + 120);
  v21 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v20);
  v24 = (*(v21 + 24) + **(v21 + 24));
  v22 = swift_task_alloc();
  *(v0 + 440) = v22;
  *v22 = v0;
  v22[1] = sub_260FDA2C0;

  return v24(v20, v21);
}

uint64_t sub_260FDAAC0()
{
  v1 = *(v0 + 400);
  *(v0 + 216) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
  if (swift_dynamicCast())
  {

    v3 = sub_2610BC794();
    v4 = sub_2610BCD84();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_260F97000, v3, v4, "PASFlowStepProtoAccountPicker fetchPresentables task was cancelled", v5, 2u);
      MEMORY[0x2666F8720](v5, -1, -1);
    }

    v7 = *(v0 + 296);
    v6 = *(v0 + 304);
    v8 = *(v0 + 288);

    (*(v7 + 8))(v6, v8);
    v9 = *(v0 + 216);
  }

  else
  {

    v10 = v1;
    v11 = sub_2610BC794();
    v12 = sub_2610BCD64();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      v15 = v1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_260F97000, v11, v12, "PASFlowStepProtoAccountPicker fetchPresentables failed with error %{public}@", v13, 0xCu);
      sub_260FA9980(v14, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v14, -1, -1);
      MEMORY[0x2666F8720](v13, -1, -1);
    }

    v17 = *(v0 + 280);

    v18 = *(v17 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker_error);
    *(v17 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker_error) = v1;

    v19 = v1;
    sub_2610439BC();
    v9 = v1;
  }

  sub_260FD8144(v0 + 96);
  v20 = *(v0 + 120);
  v21 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v20);
  v24 = (*(v21 + 24) + **(v21 + 24));
  v22 = swift_task_alloc();
  *(v0 + 440) = v22;
  *v22 = v0;
  v22[1] = sub_260FDA2C0;

  return v24(v20, v21);
}

void PASFlowStepProtoAccountPicker.setError(error:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker_error);
  *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker_error) = a1;

  v4 = a1;

  sub_2610439BC();
}

Swift::Void __swiftcall PASFlowStepProtoAccountPicker.continueWithSelectedAccount()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v16 - v2;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v4 = sub_2610BC7B4();
  __swift_project_value_buffer(v4, qword_27FE65900);
  v5 = sub_2610BC794();
  v6 = sub_2610BCD84();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_260F97000, v5, v6, "PASFlowStepProtoAccountPicker continueWithSelectedAccount", v7, 2u);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  v8 = sub_260FD7D28();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  if (v17)
  {
    if (v17 >> 62)
    {
      v9 = sub_2610BD0E4();
    }

    else
    {
      v9 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v9 = -1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  v10 = v17;
  v11 = sub_2610BCC94();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  LOBYTE(v17) = 1;
  v12 = qword_27FE63820;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_27FE65948;
  v14 = sub_260FDD5A4(&qword_27FE646F8, type metadata accessor for PASAnalyticsActor.PASAnalyticsActorType, &protocol conformance descriptor for PASAnalyticsActor.PASAnalyticsActorType);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  *(v15 + 32) = v8;
  *(v15 + 40) = v9;
  *(v15 + 48) = v10;
  *(v15 + 56) = v17;

  sub_261042434(0, 0, v3, &unk_2610C2520, v15);

  sub_2610439BC();
}

uint64_t PASFlowStepProtoAccountPicker.createNewAccount()()
{
  v1[9] = v0;
  sub_2610BCC74();
  v1[10] = sub_2610BCC64();
  v3 = sub_2610BCBF4();
  v1[11] = v3;
  v1[12] = v2;

  return MEMORY[0x2822009F8](sub_260FDB234, v3, v2);
}

uint64_t sub_260FDB234()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepProtoAccountPicker createNewAccount", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v0[7] = 0;

  sub_2610BC854();
  v0[13] = sub_260FD7D28();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  v5 = v0[8];
  if (v5)
  {
    if (v5 >> 62)
    {
      v6 = sub_2610BD0E4();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v6 = -1;
  }

  v0[14] = v6;

  return MEMORY[0x2822009F8](sub_260FDB42C, 0, 0);
}

uint64_t sub_260FDB42C()
{
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 40) = &type metadata for PickerAnalyticsEvent;
  *(v0 + 48) = &off_28738B258;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_260FDB4F4;

  return sub_261047C34(v0 + 16, 0, 0);
}

void sub_260FDB4F4()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 2);
    v3 = v2[11];
    v4 = v2[12];

    MEMORY[0x2822009F8](sub_260FDB634, v3, v4);
  }
}

uint64_t sub_260FDB634()
{

  sub_2610439BC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t PASFlowStepProtoAccountPicker.nextStep()(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker_error);
  if (v2)
  {
    swift_willThrow();
    v3 = v2;
  }

  else
  {
    v4 = v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = *(v4 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2610BC844();

    sub_260FDB890(v13[0], v1, v13);

    type metadata accessor for PASFlowStepSendSelectedAccount(0);
    v7 = swift_allocObject();
    v8 = OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount__messageSessionProvider;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
    v9 = swift_allocObject();
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 0;
    *(v7 + v8) = v9;
    v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount__deviceProvider;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v7 + v10) = v11;
    *(v7 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount_isSignInForSelfSupported) = 0;
    sub_260FDD49C(v13, v7 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount_familyMemberSelection);
    v1 = sub_26104DC44(Strong, v6);
    swift_unknownObjectRelease();
    sub_260FDD4F8(v13);
    sub_260FDD5A4(&qword_27FE64700, type metadata accessor for PASFlowStepSendSelectedAccount, &protocol conformance descriptor for PASSourceFlowStepBase);
  }

  return v1;
}

id sub_260FDB890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v18 = sub_2610BC7B4();
    __swift_project_value_buffer(v18, qword_27FE65900);
    v19 = sub_2610BC794();
    v20 = sub_2610BCD84();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_260F97000, v19, v20, "PASFlowStepProtoAccountPicker pickerSelection createAccount, setting Family Member context for family repair request", v21, 2u);
      MEMORY[0x2666F8720](v21, -1, -1);
    }

    sub_260FD7DF0(&v53);
    v22 = v54;
    v23 = v55;
    __swift_project_boxed_opaque_existential_1(&v53, v54);
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    v24 = type metadata accessor for PASAccountContext.FamilyMember();
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v48 = v24;
    v49 = &protocol witness table for PASAccountContext.FamilyMember;
    v47[0] = v25;
    (v23[5])(&v50, v47, v22, v23);
    sub_260FA9980(&v50, &unk_27FE656B0, &unk_2610BFCE0);
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    __swift_destroy_boxed_opaque_existential_0Tm(&v53);
    result = [objc_opt_self() defaultStore];
    if (result)
    {
      v26 = result;
      v54 = sub_260FA9AB4(0, &qword_27FE63CC8, 0x277CB8F48);
      v55 = &off_28738B470;
      *&v53 = v26;
      result = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
      if (result)
      {
        v27 = result;
        *(&v51 + 1) = sub_260FA9AB4(0, &unk_27FE63D10, 0x277CF0178);
        v52 = &protocol witness table for AKAppleIDAuthenticationController;
        *&v50 = v27;
        v28 = type metadata accessor for FACreateChildProxiedAuthController();
        v29 = swift_allocObject();
        sub_260F98E14(&v53, v29 + 16);
        result = sub_260F98E14(&v50, v29 + 56);
        v17 = 0;
        *(a3 + 24) = v28;
        *(a3 + 32) = &off_28738AEB8;
        *a3 = v29;
        goto LABEL_26;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v4 = *(a1 + 16);
  if (!(v4 >> 62))
  {
    *a3 = v4;
    v30 = *(a2 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker_supportedAuthModes);
    v31 = objc_opt_self();
    swift_retain_n();

    result = [v31 defaultStore];
    if (result)
    {
      v32 = result;
      v54 = sub_260FA9AB4(0, &qword_27FE63CC8, 0x277CB8F48);
      v55 = &off_28738B470;
      *&v53 = v32;
      result = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
      if (!result)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v33 = sub_26106872C(v4, &v53, result, v30);
      *(a3 + 32) = type metadata accessor for FAFamilyMemberProxiedAuthController();
      *(a3 + 40) = &off_28738B510;

      *(a3 + 8) = v33;
      v17 = 1;
LABEL_26:
      *(a3 + 48) = v17;
      return result;
    }

    goto LABEL_29;
  }

  if (v4 >> 62 == 1)
  {
    v5 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    v6 = qword_27FE63808;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_2610BC7B4();
    __swift_project_value_buffer(v7, qword_27FE65900);
    v8 = sub_2610BC794();
    v9 = sub_2610BCD64();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_260F97000, v8, v9, "PASFlowStepProtoAccountPicker nextStep has a localAccount which should not happen. Proceed with caution!", v10, 2u);
      MEMORY[0x2666F8720](v10, -1, -1);
    }

    *a3 = v5;
    v11 = type metadata accessor for PASPersonalSourceAuthController();
    v12 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
    v13 = swift_allocObject();
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0;
    v12[2] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
    v14 = swift_allocObject();
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0;
    v12[3] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63860, &unk_2610C2CE0);
    v15 = swift_allocObject();
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    *(v15 + 48) = 0;
    v12[4] = v15;
    *(a3 + 32) = v11;
    *(a3 + 40) = &off_28738AC20;

    *(a3 + 8) = v12;
    v17 = 2;
    goto LABEL_26;
  }

  v34 = qword_27FE63808;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = sub_2610BC7B4();
  __swift_project_value_buffer(v35, qword_27FE65900);
  v36 = sub_2610BC794();
  v37 = sub_2610BCD84();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_260F97000, v36, v37, "PASFlowStepProtoAccountPicker pickerSelection createAccount, setting Family Member context for family repair request", v38, 2u);
    MEMORY[0x2666F8720](v38, -1, -1);
  }

  sub_260FD7DF0(&v53);
  v39 = v54;
  v40 = v55;
  __swift_project_boxed_opaque_existential_1(&v53, v54);
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v41 = type metadata accessor for PASAccountContext.FamilyMember();
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  v48 = v41;
  v49 = &protocol witness table for PASAccountContext.FamilyMember;
  v47[0] = v42;
  (v40[5])(&v50, v47, v39, v40);
  sub_260FA9980(&v50, &unk_27FE656B0, &unk_2610BFCE0);
  __swift_destroy_boxed_opaque_existential_0Tm(v47);
  __swift_destroy_boxed_opaque_existential_0Tm(&v53);
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    goto LABEL_30;
  }

  v43 = result;
  v54 = sub_260FA9AB4(0, &qword_27FE63CC8, 0x277CB8F48);
  v55 = &off_28738B470;
  *&v53 = v43;
  result = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
  if (result)
  {
    v44 = result;
    *(&v51 + 1) = sub_260FA9AB4(0, &unk_27FE63D10, 0x277CF0178);
    v52 = &protocol witness table for AKAppleIDAuthenticationController;
    *&v50 = v44;
    v45 = type metadata accessor for FACreateChildProxiedAuthController();
    v46 = swift_allocObject();
    sub_260F98E14(&v53, v46 + 16);
    sub_260F98E14(&v50, v46 + 56);
    *(a3 + 24) = v45;
    *(a3 + 32) = &off_28738AEB8;

    v17 = 0;
    *a3 = v46;
    goto LABEL_26;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_260FDC008()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker__presentables;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646A0, &qword_2610C2438);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker__canAddMembers;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker__selectedPresentable;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646B8, &qword_2610C24D8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker____lazy_storage___fetchLock, &qword_27FE64740, &qword_2610C2530);

  v7 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker_dataSource);

  return __swift_destroy_boxed_opaque_existential_0Tm(v7);
}

uint64_t PASFlowStepProtoAccountPicker.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker__presentables;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646A0, &qword_2610C2438);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker__canAddMembers;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker__selectedPresentable;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646B8, &qword_2610C24D8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker____lazy_storage___fetchLock, &qword_27FE64740, &qword_2610C2530);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker_dataSource));
  return v0;
}

uint64_t PASFlowStepProtoAccountPicker.__deallocating_deinit()
{
  v0 = PASFlowStepProtoAccountPicker.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_260FDC3EC(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_260FDC44C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t (*sub_260FDC4C0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2666F78E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_260FDC540;
  }

  __break(1u);
  return result;
}

uint64_t *sub_260FDC548(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2666F78E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_260FDD958;
  }

  __break(1u);
  return result;
}

uint64_t sub_260FDC5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = *a5;
  *(v5 + 88) = *(a5 + 16);
  if (qword_27FE63820 != -1)
  {
    swift_once();
  }

  v6 = qword_27FE65948;

  return MEMORY[0x2822009F8](sub_260FDC670, v6, 0);
}

uint64_t sub_260FDC670()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  *(v0 + 40) = &type metadata for PickerAnalyticsEvent;
  *(v0 + 48) = &off_28738B258;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v1;
  sub_260FDD834(v2, v3, v1);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_260FDC73C;

  return sub_261047C34(v0 + 16, 0, 0);
}

void sub_260FDC73C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v4 = *(v3 + 8);

    v4();
  }
}

uint64_t sub_260FDC870(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v41 = a1;
  v42 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646B8, &qword_2610C24D8);
  v6 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v7);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646A0, &qword_2610C2438);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v39 - v18;
  v44[3] = &type metadata for PASFamilyMemberPickerDataSource;
  v44[4] = &protocol witness table for PASFamilyMemberPickerDataSource;
  v20 = swift_allocObject();
  v43 = 0;
  v44[0] = v20;
  v21 = a3[3];
  v20[3] = a3[2];
  v20[4] = v21;
  v20[5] = a3[4];
  v22 = a3[1];
  v20[1] = *a3;
  v20[2] = v22;
  v23 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker__presentables;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64770, &qword_2610C25B0);
  sub_2610BC804();
  (*(v16 + 32))(a4 + v23, v19, v15);
  v24 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker__canAddMembers;
  LOBYTE(v43) = 0;
  sub_2610BC804();
  (*(v11 + 32))(a4 + v24, v14, v10);
  v25 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker__selectedPresentable;
  v43 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64788, &qword_2610C25B8);
  sub_2610BC804();
  (*(v6 + 32))(a4 + v25, v9, v40);
  v26 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker__analyticsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65450, &unk_2610C7CC0);
  v27 = swift_allocObject();
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0u;
  *(v27 + 48) = 0;
  *(a4 + v26) = v27;
  *(a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker____lazy_storage___analytics) = 0;
  v28 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(a4 + v28) = v29;
  v30 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v31 = swift_allocObject();
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0u;
  *(v31 + 48) = 0;
  *(a4 + v30) = v31;
  v32 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker__targetAccountOptionsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE648E0, &qword_2610BEEC0);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(a4 + v32) = v33;
  v34 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker__lockProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE647A8, &unk_2610C2630);
  v35 = swift_allocObject();
  *(v35 + 16) = 0u;
  *(v35 + 32) = 0u;
  *(v35 + 48) = 0;
  *(a4 + v34) = v35;
  v36 = a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker____lazy_storage___fetchLock;
  *v36 = 0u;
  *(v36 + 16) = 0u;
  *(v36 + 32) = 0;
  *(a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker_error) = 0;
  *(a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker_supportedAuthModes) = &unk_2873831D0;
  sub_260FA99E0(v44, a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker_dataSource);
  v37 = sub_26104DC44(v41, v42);
  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  return v37;
}

uint64_t sub_260FDCCC8(uint64_t a1, uint64_t a2)
{
  v11[5] = type metadata accessor for PASFamilyMemberImageProvider();
  v11[6] = &protocol witness table for PASFamilyMemberImageProvider;
  v11[2] = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  v11[7] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE647A0, &unk_2610C2620);
  v5 = swift_allocObject();
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0;
  v11[8] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63860, &unk_2610C2CE0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0;
  v11[9] = v6;
  v11[0] = sub_2610807B0;
  v11[1] = 0;
  type metadata accessor for PASFlowStepProtoAccountPicker(0);
  v7 = swift_allocObject();
  sub_260FDD844(v11, v10);
  v8 = sub_260FDC870(a1, a2, v10, v7);
  sub_260FDD8A0(v11);
  return v8;
}

uint64_t sub_260FDCE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a6;
  v41 = a3;
  v43 = a1;
  v44 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646B8, &qword_2610C24D8);
  v8 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v9);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646A0, &qword_2610C2438);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v39 - v20;
  v46[3] = a5;
  v46[4] = v40;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, v41, a5);
  v23 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker__presentables;
  v45 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64770, &qword_2610C25B0);
  sub_2610BC804();
  (*(v18 + 32))(a4 + v23, v21, v17);
  v24 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker__canAddMembers;
  LOBYTE(v45) = 0;
  sub_2610BC804();
  (*(v13 + 32))(a4 + v24, v16, v12);
  v25 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker__selectedPresentable;
  v45 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64788, &qword_2610C25B8);
  sub_2610BC804();
  (*(v8 + 32))(a4 + v25, v11, v42);
  v26 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker__analyticsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65450, &unk_2610C7CC0);
  v27 = swift_allocObject();
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0u;
  *(v27 + 48) = 0;
  *(a4 + v26) = v27;
  *(a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker____lazy_storage___analytics) = 0;
  v28 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(a4 + v28) = v29;
  v30 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v31 = swift_allocObject();
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0u;
  *(v31 + 48) = 0;
  *(a4 + v30) = v31;
  v32 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker__targetAccountOptionsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE648E0, &qword_2610BEEC0);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(a4 + v32) = v33;
  v34 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker__lockProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE647A8, &unk_2610C2630);
  v35 = swift_allocObject();
  *(v35 + 16) = 0u;
  *(v35 + 32) = 0u;
  *(v35 + 48) = 0;
  *(a4 + v34) = v35;
  v36 = a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker____lazy_storage___fetchLock;
  *v36 = 0u;
  *(v36 + 16) = 0u;
  *(v36 + 32) = 0;
  *(a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker_error) = 0;
  *(a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker_supportedAuthModes) = &unk_287383290;
  sub_260FA99E0(v46, a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepProtoAccountPicker_dataSource);
  v37 = sub_26104DC44(v43, v44);
  __swift_destroy_boxed_opaque_existential_0Tm(v46);
  return v37;
}

uint64_t sub_260FDD26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a3, a5);
  return sub_260FDCE10(a1, a2, v13, v14, a5, a6);
}

uint64_t sub_260FDD378(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_260FDD3C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_260FDD3D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FB6DB4;

  return sub_260FDC5C8(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_260FDD54C(uint64_t a1)
{
  result = sub_260FDD5A4(&qword_27FE64750, type metadata accessor for PASFlowStepProtoAccountPicker, &protocol conformance descriptor for PASSourceFlowStepBase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_260FDD5A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PASFlowStepProtoAccountPicker(uint64_t a1)
{
  result = qword_27FE64758;
  if (!qword_27FE64758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_260FDD640(uint64_t a1)
{
  sub_260FC5678(319, &qword_27FE64768, &qword_27FE64770, &qword_2610C25B0);
  if (v1 <= 0x3F)
  {
    sub_260FDD7E4();
    if (v2 <= 0x3F)
    {
      sub_260FC5678(319, &qword_27FE64780, &qword_27FE64788, &qword_2610C25B8);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_260FDD7E4()
{
  if (!qword_27FE64778)
  {
    v0 = sub_2610BC864();
    if (!v1)
    {
      atomic_store(v0, &qword_27FE64778);
    }
  }
}

uint64_t sub_260FDD834(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *PASAccountContextExtension.flowStepAllSetContext.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_flowStepAllSetContext);
  v2 = v1;
  return v1;
}

uint64_t PASAccountContextExtension.description.getter()
{
  sub_2610BCF84();
  MEMORY[0x2666F7380](60, 0xE100000000000000);
  swift_getObjectType();
  v1 = sub_2610BD634();
  MEMORY[0x2666F7380](v1);

  MEMORY[0x2666F7380](8250, 0xE200000000000000);
  sub_2610BD0A4();
  MEMORY[0x2666F7380](0xD000000000000015, 0x80000002610D2C80);
  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresCDP))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresCDP))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x2666F7380](v2, v3);

  MEMORY[0x2666F7380](0xD00000000000001ELL, 0x80000002610D2CA0);
  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresManateeRepair))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresManateeRepair))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x2666F7380](v4, v5);

  MEMORY[0x2666F7380](0xD00000000000001CLL, 0x80000002610D2CC0);
  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresFamilyRepair))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresFamilyRepair))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x2666F7380](v6, v7);

  MEMORY[0x2666F7380](0xD00000000000002BLL, 0x80000002610D2CE0);
  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_showPrivacyDisclosureOnSourceDevice))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_showPrivacyDisclosureOnSourceDevice))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x2666F7380](v8, v9);

  MEMORY[0x2666F7380](0xD000000000000033, 0x80000002610D2D10);
  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_showPasscodeBiometricsRequestOnTargetDevice))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_showPasscodeBiometricsRequestOnTargetDevice))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x2666F7380](v10, v11);

  MEMORY[0x2666F7380](0xD00000000000001DLL, 0x80000002610D2D50);
  v12 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_flowStepAllSetContext);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE647E8, &unk_2610C2640);
  v13 = sub_2610BCA34();
  MEMORY[0x2666F7380](v13);

  MEMORY[0x2666F7380](4095264, 0xE300000000000000);
  return 0;
}

uint64_t PASAccountContextExtension.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_260FAC380(a1, v11);
  if (v12)
  {
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresCDP) == v10[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresCDP] && *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresManateeRepair) == v10[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresManateeRepair] && *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresFamilyRepair) == v10[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresFamilyRepair] && *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_showPrivacyDisclosureOnSourceDevice) == v10[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_showPrivacyDisclosureOnSourceDevice] && *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_showPasscodeBiometricsRequestOnTargetDevice) == v10[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_showPasscodeBiometricsRequestOnTargetDevice])
      {
        v5 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_flowStepAllSetContext);
        v6 = *&v10[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_flowStepAllSetContext];
        if (!v5)
        {
          v9 = v6;

          if (!v6)
          {
            v3 = 1;
            return v3 & 1;
          }

          goto LABEL_10;
        }

        if (v6)
        {
          type metadata accessor for PASFlowStepAllSetContext();
          v7 = v6;
          v8 = v5;
          v3 = sub_2610BCE24();

          return v3 & 1;
        }
      }
    }
  }

  else
  {
    sub_260FAC3F0(v11);
  }

LABEL_10:
  v3 = 0;
  return v3 & 1;
}

uint64_t PASAccountContextExtension.hash.getter()
{
  sub_2610BD584();
  sub_2610BD534();
  sub_2610BD534();
  sub_2610BD534();
  sub_2610BD534();
  sub_2610BD534();
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_flowStepAllSetContext);
  sub_2610BD534();
  if (v1)
  {
    v2 = v1;
    sub_2610BCE34();
  }

  return sub_2610BD564();
}

uint64_t static PASAccountContextExtension.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FE647B0 = a1;
  return result;
}

Swift::Void __swiftcall PASAccountContextExtension.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresCDP);
  v4 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeBool:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresManateeRepair);
  v6 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeBool:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresFamilyRepair);
  v8 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeBool:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_showPrivacyDisclosureOnSourceDevice);
  v10 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeBool:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_showPasscodeBiometricsRequestOnTargetDevice);
  v12 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeBool:v11 forKey:v12];

  v13 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_flowStepAllSetContext);
  v14 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];
}

id PASAccountContextExtension.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_260FDEED8(a1);

  return v4;
}

id PASAccountContextExtension.init(coder:)(void *a1)
{
  v2 = sub_260FDEED8(a1);

  return v2;
}

id PASAccountContextExtension.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PASAccountContextExtension.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_260FDE5C8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_flowStepAllSetContext);
  v2 = v1;
  return v1;
}

uint64_t sub_260FDE5FC()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_requiresCDP;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_260FDE640(char a1)
{
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_requiresCDP;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_260FDE6F0()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_requiresManateeRepair;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_260FDE734(char a1)
{
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_requiresManateeRepair;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_260FDE7E4()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_requiresFamilyRepair;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_260FDE828(char a1)
{
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_requiresFamilyRepair;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_260FDE8D8()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_showPrivacyDisclosureOnSourceDevice;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_260FDE91C(char a1)
{
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_showPrivacyDisclosureOnSourceDevice;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_260FDE9CC()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_showPasscodeBiometricsRequestOnTargetDevice;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_260FDEA10(char a1)
{
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_showPasscodeBiometricsRequestOnTargetDevice;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_260FDEAC0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_flowStepAllSetContext;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_260FDEB20()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_flowStepAllSetContext;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_260FDEB6C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_flowStepAllSetContext;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_260FDEC24()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_requiresCDP;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_requiresManateeRepair;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_requiresFamilyRepair;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v7 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_showPrivacyDisclosureOnSourceDevice;
  swift_beginAccess();
  v8 = *(v0 + v7);
  v9 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_showPasscodeBiometricsRequestOnTargetDevice;
  swift_beginAccess();
  v10 = *(v0 + v9);
  v11 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_flowStepAllSetContext;
  swift_beginAccess();
  v12 = *(v0 + v11);
  v13 = type metadata accessor for PASAccountContextExtension();
  v14 = objc_allocWithZone(v13);
  v14[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresCDP] = v2;
  v14[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresManateeRepair] = v4;
  v14[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresFamilyRepair] = v6;
  v14[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_showPrivacyDisclosureOnSourceDevice] = v8;
  v14[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_showPasscodeBiometricsRequestOnTargetDevice] = v10;
  *&v14[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_flowStepAllSetContext] = v12;
  v17.receiver = v14;
  v17.super_class = v13;
  v15 = v12;
  return objc_msgSendSuper2(&v17, sel_init);
}

id PASAccountContextExtensionBuilder.init()()
{
  v0[OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_requiresCDP] = 0;
  v0[OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_requiresManateeRepair] = 0;
  v0[OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_requiresFamilyRepair] = 0;
  v0[OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_showPrivacyDisclosureOnSourceDevice] = 0;
  v0[OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_showPasscodeBiometricsRequestOnTargetDevice] = 0;
  *&v0[OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_flowStepAllSetContext] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASAccountContextExtensionBuilder();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PASAccountContextExtensionBuilder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASAccountContextExtensionBuilder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_260FDEED8(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_2610BC9D4();
  v6 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresCDP] = v6;
  v7 = sub_2610BC9D4();
  v8 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresManateeRepair] = v8;
  v9 = sub_2610BC9D4();
  v10 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresFamilyRepair] = v10;
  v11 = sub_2610BC9D4();
  v12 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_showPrivacyDisclosureOnSourceDevice] = v12;
  v13 = sub_2610BC9D4();
  v14 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_showPasscodeBiometricsRequestOnTargetDevice] = v14;
  type metadata accessor for PASFlowStepAllSetContext();
  *&v2[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_flowStepAllSetContext] = sub_2610BCE14();
  v16.receiver = v2;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t keypath_get_5Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_6Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_260FDF608(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE648C0, &qword_2610BEDD8);
    v2 = sub_2610BD114();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_260FA3F5C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_260FA6A84(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_260FA6A84(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_260FA6A84(v31, v32);
    result = sub_2610BCF04();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_260FA6A84(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_260FDF8D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE648C0, &qword_2610BEDD8);
    v2 = sub_2610BD114();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_260FA6A84(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_260FA6A84(v29, v30);
    result = sub_2610BCF04();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_260FA6A84(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_260FDFB9C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE648C0, &qword_2610BEDD8);
    v2 = sub_2610BD114();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_260FA6A84(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_260FA6A84(v29, v30);
    result = sub_2610BCF04();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_260FA6A84(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_260FDFE64(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C28, &unk_2610C2CD0);
    v2 = sub_2610BD114();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
        swift_dynamicCast();
        sub_260FA6A84(&v22, v24);
        sub_260FA6A84(v24, v25);
        sub_260FA6A84(v25, &v23);
        result = sub_260FA5FBC(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0Tm(v11);
          result = sub_260FA6A84(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_260FA6A84(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t PASAuthResults.dsid.getter()
{
  v1 = *v0;
  v2 = sub_2610BCA04();
  v4 = sub_260FC8360(v2, v3, v1);

  return v4;
}

uint64_t PASCodableAuthResults.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BD5C4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    sub_260FE4B78();
    sub_2610BD3B4();
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    sub_260FA9AB4(0, &qword_27FE64840, 0x277CCAAC8);
    sub_260FA9AB4(0, &qword_27FE64848, 0x277CBEAC0);
    v5 = sub_2610BCD94();
    if (v5 && (v18[0] = 0, v6 = v5, sub_2610BC904(), v6, (v7 = v18[0]) != 0))
    {
      v18[0] = sub_260FA8A9C(MEMORY[0x277D84F90]);

      sub_260FE4DD0(v8, v18, sub_260FE618C, 0, v7);
      swift_bridgeObjectRelease_n();
      v9 = sub_260FE0410(v18[0]);
      sub_260FAC46C(v16, v17);

      *a2 = v9;
    }

    else
    {
      if (qword_27FE63808 != -1)
      {
        swift_once();
      }

      v10 = sub_2610BC7B4();
      __swift_project_value_buffer(v10, qword_27FE65900);
      v11 = sub_2610BC794();
      v12 = sub_2610BCD64();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_260F97000, v11, v12, "PASAuthResults failed to init from decoder", v13, 2u);
        MEMORY[0x2666F8720](v13, -1, -1);
      }

      sub_260FE4BCC();
      swift_allocError();
      *v14 = 1;
      swift_willThrow();
      sub_260FAC46C(v16, v17);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_260FE0410(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v38 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_260FA3F5C(*(a1 + 56) + 32 * v12, v37);
    *&v36 = v15;
    *(&v36 + 1) = v14;
    v33 = v36;
    v34 = v37[0];
    v35 = v37[1];
    sub_260FA3F5C(&v34, v30);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
    if (swift_dynamicCast())
    {
      v16 = v31;
      if (!v31)
      {
        goto LABEL_17;
      }

      v32[0] = v34;
      v32[1] = v35;
      v31 = v33;
      v17 = *(v2 + 16);
      if (*(v2 + 24) <= v17)
      {
        sub_261097F74(v17 + 1, 1);
        v2 = v38;
      }

      v18 = v31;
      sub_2610BD514();
      v39 = *(&v18 + 1);
      sub_2610BCA54();
      result = sub_2610BD574();
      v19 = v2 + 64;
      v20 = -1 << *(v2 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (++v22 != v25 || (v24 & 1) == 0)
        {
          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = *(v19 + 8 * v22);
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v28 = (*(v2 + 48) + 16 * v23);
      v29 = v39;
      *v28 = v18;
      v28[1] = v29;
      *(*(v2 + 56) + 8 * v23) = v16;
      ++*(v2 + 16);
      result = __swift_destroy_boxed_opaque_existential_0Tm(v32);
    }

    else
    {
      *&v31 = 0;
LABEL_17:
      result = sub_260FA9980(&v33, qword_27FE648E8, &qword_2610C2CF0);
    }
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

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t PASCodableAuthResults.encode(to:)(void *a1)
{
  v11[5] = *MEMORY[0x277D85DE8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BD5E4();
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
  v2 = sub_2610BC8F4();
  v10[0] = 0;
  v3 = [v1 archivedDataWithRootObject:v2 requiringSecureCoding:1 error:v10];

  v4 = v10[0];
  if (v3)
  {
    v5 = sub_2610BC534();
    v7 = v6;

    v10[0] = v5;
    v10[1] = v7;
    __swift_mutable_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_260FE50F4();
    sub_2610BD3E4();
    sub_260FAC46C(v5, v7);
  }

  else
  {
    v8 = v4;
    sub_2610BC4F4();

    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v11);
}

uint64_t static PASCodableAuthResults.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_260FA9AB4(0, &qword_27FE64CE0, 0x277D82BB8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
  v2 = sub_2610BC8F4();
  v3 = sub_2610BC8F4();
  v4 = sub_2610BCE24();

  return v4 & 1;
}

uint64_t static PASAuthResults.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_260FA9AB4(0, &qword_27FE64CE0, 0x277D82BB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
  v2 = sub_2610BC8F4();
  v3 = sub_2610BC8F4();
  v4 = sub_2610BCE24();

  return v4 & 1;
}

uint64_t PASCodableAuthResults.hashValue.getter()
{
  sub_2610BD514();
  PASAuthResults.hash(into:)(v1);
  return sub_2610BD574();
}

uint64_t sub_260FE0AD8(uint64_t *a1, uint64_t *a2)
{
  sub_260FA9AB4(0, &qword_27FE64CE0, 0x277D82BB8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
  v2 = sub_2610BC8F4();
  v3 = sub_2610BC8F4();
  v4 = sub_2610BCE24();

  return v4 & 1;
}

uint64_t sub_260FE0BC4()
{
  sub_2610BD514();
  PASAuthResults.hash(into:)(v1);
  return sub_2610BD574();
}

uint64_t sub_260FE0C44(uint64_t a1)
{
  sub_2610BD514();
  PASAuthResults.hash(into:)(v2);
  return sub_2610BD574();
}

uint64_t PASAuthResults.init(dictionary:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v7 = sub_260FA8A9C(MEMORY[0x277D84F90]);

  sub_260FE4DD0(v4, &v7, sub_260FE618C, 0, a1);
  swift_bridgeObjectRelease_n();
  v5 = sub_260FE0410(v7);

  *a2 = v5;
  return result;
}

uint64_t sub_260FE0D44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_260FA9708(a1, v7);
  if (swift_dynamicCast())
  {
    result = v5;
    v4 = v6;
  }

  else
  {
    result = sub_2610BCEF4();
  }

  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t PASAuthResults.hash(into:)(uint64_t a1)
{
  v2 = *v1 + 64;
  v3 = 1 << *(*v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*v1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        swift_unknownObjectRetain();
        sub_2610BCA54();
        objc_opt_self();
        swift_dynamicCastObjCClassUnconditional();
        sub_2610BCE34();
        swift_unknownObjectRelease();
      }

      while (v5);
      continue;
    }
  }
}

NSDictionary __swiftcall PASAuthResults.asAKAuthResults()()
{
  sub_260FDF8D0(*v0);
  v1 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
  v2 = sub_2610BC8F4();

  v3 = [v1 initWithDictionary_];

  return v3;
}

uint64_t PASAuthResults.acceptingTerms(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v6 = sub_2610BC7B4();
  __swift_project_value_buffer(v6, qword_27FE65900);

  v7 = sub_2610BC794();
  v8 = sub_2610BCD84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 141558274;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2080;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64868, &unk_2610C26F0);
    v11 = sub_2610BCA34();
    v13 = sub_260FA5970(v11, v12, &v20);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_260F97000, v7, v8, "PASAuthResults acceptingTerms %{mask.hash}s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x2666F8720](v10, -1, -1);
    MEMORY[0x2666F8720](v9, -1, -1);
  }

  v20 = v5;
  v14 = sub_2610BCA04();
  v16 = v15;
  if (a1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F70, &qword_2610BF440);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
    if (swift_dynamicCast())
    {
      v17 = v19;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {

    v17 = 0;
  }

  result = sub_260FAD814(v17, v14, v16);
  *a2 = v20;
  return result;
}

uint64_t PASAuthResults.hashValue.getter()
{
  v2[9] = *v0;
  sub_2610BD514();
  PASAuthResults.hash(into:)(v2);
  return sub_2610BD574();
}

uint64_t sub_260FE1230(uint64_t *a1, uint64_t *a2)
{
  sub_260FA9AB4(0, &qword_27FE64CE0, 0x277D82BB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
  v2 = sub_2610BC8F4();
  v3 = sub_2610BC8F4();
  v4 = sub_2610BCE24();

  return v4 & 1;
}

uint64_t sub_260FE12F8()
{
  v2[9] = *v0;
  sub_2610BD514();
  PASAuthResults.hash(into:)(v2);
  return sub_2610BD574();
}

uint64_t sub_260FE1348(uint64_t a1)
{
  v3[9] = *v1;
  sub_2610BD514();
  PASAuthResults.hash(into:)(v3);
  return sub_2610BD574();
}

uint64_t sub_260FE13B4(void *a1)
{
  v2 = *v1;
  v3 = sub_2610BCA04();
  v5 = sub_260FC7FF8(v3, v4, v2);

  return v5;
}

uint64_t sub_260FE141C()
{
  v1 = *v0;
  v2 = sub_2610BCA04();
  v4 = sub_260FC8360(v2, v3, v1);

  return v4;
}

uint64_t sub_260FE148C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *v3;
  v5 = sub_2610BCA04();
  v7 = sub_260FC7FF8(v5, v6, v4);

  return v7;
}

uint64_t PASAuthResults.toParsable()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F90, &unk_2610BF4C0);
  *a1 = v3;
}

uint64_t static PASAuthResults.parseObject(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_260FA3F5C(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F90, &unk_2610BF4C0);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}