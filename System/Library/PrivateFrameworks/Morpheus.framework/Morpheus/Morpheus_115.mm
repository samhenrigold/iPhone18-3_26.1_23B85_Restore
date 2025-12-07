uint64_t storeEnumTagSinglePayload for FunctionDef.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25A8FA79C()
{
  result = qword_27FA04C48;
  if (!qword_27FA04C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04C48);
  }

  return result;
}

unint64_t sub_25A8FA7F4()
{
  result = qword_27FA04C50;
  if (!qword_27FA04C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04C50);
  }

  return result;
}

unint64_t sub_25A8FA84C()
{
  result = qword_27FA04C58;
  if (!qword_27FA04C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04C58);
  }

  return result;
}

unint64_t sub_25A8FA8A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_25A9988C8();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25A8FA8EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 7894115;
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
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 7894115;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
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
    v8 = sub_25A9989E8();
  }

  return v8 & 1;
}

uint64_t sub_25A8FA980()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8FA9F0(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A8FAA4C(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8FAAB8@<X0>(char *a2@<X8>)
{
  v3 = sub_25A9988C8();

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

void sub_25A8FAB18(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 7894115;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A8FAB44()
{
  if (*v0)
  {
    return 7894115;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_25A8FAB6C@<X0>(char *a3@<X8>)
{
  v4 = sub_25A9988C8();

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

uint64_t sub_25A8FABD0(uint64_t a1)
{
  v2 = sub_25A8FB3FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A8FAC0C(uint64_t a1)
{
  v2 = sub_25A8FB3FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8FAC94(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04C60, "<;\a");
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A8FB3FC();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for Name();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v12[0]) = 0;
    *(v1 + 40) = sub_25A9988F8();
    *(v1 + 48) = v10;
    v13 = 1;
    sub_25A872ED0();
    sub_25A998938();
    *(v1 + 56) = v12[0];
    sub_25A872F24(a1, v12);
    v3 = sub_25A8963D8(v12);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

void sub_25A8FAECC(uint64_t a1@<X8>)
{
  v2 = v1;
  if (*(v1 + 56))
  {
    if (*(v1 + 56) != 1)
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return;
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v1 + 32);
      ObjectType = swift_getObjectType();
      v6 = *(v1 + 40);
      v7 = *(v1 + 48);
      v8 = *(v4 + 40);

      v9 = v8(v6, v7, ObjectType, v4);

      *(a1 + 24) = &type metadata for Store;
      v10 = swift_allocObject();
      *a1 = v10;
      v10[5] = type metadata accessor for LexicalContext();
      v10[6] = &protocol witness table for LexicalContext;
      v10[2] = v9;
      v12 = *(v1 + 40);
      v11 = *(v1 + 48);
      v10[10] = MEMORY[0x277D837D0];

      swift_unknownObjectRelease();
      v10[7] = v12;
      v10[8] = v11;
LABEL_8:
      *(a1 + 32) = 0;
      return;
    }

    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v18 = sub_25A997BD8();
    __swift_project_value_buffer(v18, qword_27FA0FCE8);

    v19 = sub_25A997BB8();
    v20 = sub_25A9983A8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = v2[2];

      _os_log_impl(&dword_25A232000, v19, v20, "Name> ParentBlock not found. line %ld", v21, 0xCu);
      MEMORY[0x25F852800](v21, -1, -1);
    }

    else
    {
    }

    v30 = 21;
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v1 + 32);
      v14 = swift_getObjectType();
      v15 = *(v1 + 40);
      v16 = *(v1 + 48);
      v17 = *(v13 + 48);

      v17(&v32, v15, v16, v14, v13);
      swift_unknownObjectRelease();

      if (*(&v33 + 1))
      {
        sub_25A872D74(&v32, v34);
        sub_25A872D74(v34, a1);
        goto LABEL_8;
      }
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
    }

    sub_25A872D84(&v32);
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v22 = sub_25A997BD8();
    __swift_project_value_buffer(v22, qword_27FA0FCE8);

    v23 = sub_25A997BB8();
    v24 = sub_25A9983A8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v34[0] = v26;
      *v25 = 136315394;
      v27 = v2[5];
      v28 = v2[6];

      v29 = sub_25A98CC90(v27, v28, v34);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2048;
      *(v25 + 14) = v2[2];

      _os_log_impl(&dword_25A232000, v23, v24, "Name> Id %s not found. line %ld", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x25F852800](v26, -1, -1);
      MEMORY[0x25F852800](v25, -1, -1);
    }

    else
    {
    }

    v30 = 20;
  }

  sub_25A874F54();
  swift_allocError();
  *v31 = v30;
  swift_willThrow();
}

uint64_t sub_25A8FB320()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_25A8FB358()
{
  sub_25A872F88(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_25A8FB3BC()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

unint64_t sub_25A8FB3FC()
{
  result = qword_27FA04C68;
  if (!qword_27FA04C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04C68);
  }

  return result;
}

unint64_t sub_25A8FB464()
{
  result = qword_27FA04C70;
  if (!qword_27FA04C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04C70);
  }

  return result;
}

unint64_t sub_25A8FB4BC()
{
  result = qword_27FA04C78;
  if (!qword_27FA04C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04C78);
  }

  return result;
}

unint64_t sub_25A8FB514()
{
  result = qword_27FA04C80;
  if (!qword_27FA04C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04C80);
  }

  return result;
}

uint64_t sub_25A8FB568(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x65756C6176;
  if (v2 != 1)
  {
    v4 = 7894115;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1920234593;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x65756C6176;
  if (*a2 != 1)
  {
    v8 = 7894115;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1920234593;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A8FB64C()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8FB6DC(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A8FB758(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

unint64_t sub_25A8FB7E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25A8FC6D8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25A8FB814(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65756C6176;
  if (v2 != 1)
  {
    v5 = 7894115;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1920234593;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25A8FB860()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 7894115;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1920234593;
  }
}

unint64_t sub_25A8FB8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25A8FC6D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25A8FB8D0(uint64_t a1)
{
  v2 = sub_25A8FC56C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A8FB90C(uint64_t a1)
{
  v2 = sub_25A8FC56C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8FB994(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04C90, &unk_25A9FA8B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A8FC56C();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for Attribute();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v13[0]) = 0;
    *(v1 + 40) = sub_25A9988F8();
    *(v1 + 48) = v10;
    *(v1 + 56) = sub_25A910D68(v8, 1);
    *(v1 + 64) = v11;
    v14 = 2;
    sub_25A872ED0();
    sub_25A998938();
    *(v1 + 72) = v13[0];
    sub_25A872F24(a1, v13);
    v3 = sub_25A8963D8(v13);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A8FBC10@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = *(v1 + 64);
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v1 + 32);
  v10 = *(v6 + 48);
  swift_unknownObjectRetain();
  v10(Strong, v9, ObjectType, v6);
  result = swift_unknownObjectRelease();
  if (*(v1 + 72))
  {
    if (*(v1 + 72) != 1)
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return result;
    }

    v12 = *(v1 + 64);
    v13 = swift_getObjectType();
    v14 = *(v12 + 64);
    swift_unknownObjectRetain();
    v14(v68, v13, v12);
    result = swift_unknownObjectRelease();
    if (v3)
    {
      return result;
    }

    sub_25A911910(&v69);
    sub_25A872CE0(v68);
    if (v70)
    {
      sub_25A87817C(&v69, v71);
      *(a1 + 24) = &type metadata for Store;
      v15 = swift_allocObject();
      *a1 = v15;
      sub_25A872F24(v71, (v15 + 2));
      v17 = v4[5];
      v16 = v4[6];
      v15[10] = MEMORY[0x277D837D0];
      v15[7] = v17;
      v15[8] = v16;

      result = __swift_destroy_boxed_opaque_existential_0Tm(v71);
      *(a1 + 32) = 0;
      return result;
    }

    sub_25A878194(&v69, &qword_27FA04C88, &unk_25A9FA8A0);
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v32 = sub_25A997BD8();
    __swift_project_value_buffer(v32, qword_27FA0FCE8);
    swift_retain_n();
    v33 = sub_25A997BB8();
    v34 = sub_25A9983A8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v71[0] = v36;
      *v35 = 136315394;
      v37 = *(v1 + 56);
      swift_getObjectType();
      *&v69 = v37;
      v38 = sub_25A998968();
      v40 = sub_25A98CC90(v38, v39, v71);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2048;
      v41 = v4[2];

      *(v35 + 14) = v41;

      _os_log_impl(&dword_25A232000, v33, v34, "Attribute> %s is not Storable. line %ld", v35, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x25F852800](v36, -1, -1);
      MEMORY[0x25F852800](v35, -1, -1);
    }

    else
    {
    }

    sub_25A874F54();
    swift_allocError();
    v66 = 13;
    goto LABEL_27;
  }

  v18 = *(v1 + 64);
  v19 = swift_getObjectType();
  v20 = *(v18 + 64);
  swift_unknownObjectRetain();
  v20(v68, v19, v18);
  result = swift_unknownObjectRelease();
  if (v3)
  {
    return result;
  }

  sub_25A9119DC(&v69);
  sub_25A872CE0(v68);
  if (!v70)
  {
    sub_25A878194(&v69, &qword_27FA045E0, &qword_25A9F8790);
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v42 = sub_25A997BD8();
    __swift_project_value_buffer(v42, qword_27FA0FCE8);
    swift_retain_n();
    v43 = sub_25A997BB8();
    v44 = sub_25A9983A8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v71[0] = v46;
      *v45 = 136315394;
      v47 = *(v1 + 56);
      swift_getObjectType();
      *&v69 = v47;
      v48 = sub_25A998968();
      v50 = sub_25A98CC90(v48, v49, v71);

      *(v45 + 4) = v50;
      *(v45 + 12) = 2048;
      v51 = v4[2];

      *(v45 + 14) = v51;

      _os_log_impl(&dword_25A232000, v43, v44, "Attribute> %s is not Attributable. line %ld", v45, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      MEMORY[0x25F852800](v46, -1, -1);
      MEMORY[0x25F852800](v45, -1, -1);
    }

    else
    {
    }

    sub_25A874F54();
    swift_allocError();
    v66 = 10;
LABEL_27:
    *v65 = v66;
    return swift_willThrow();
  }

  sub_25A87817C(&v69, v71);
  v21 = v72;
  v22 = v73;
  __swift_project_boxed_opaque_existential_1(v71, v72);
  v23 = *(v1 + 40);
  v24 = *(v1 + 48);
  v25 = *(v22 + 16);

  v26 = v25(v23, v24, v21, v22);

  if (v26)
  {
    v27 = v72;
    v28 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    v30 = v4[5];
    v29 = v4[6];
    v31 = *(v28 + 8);

    v31(v30, v29, v27, v28);

    *(a1 + 32) = 0;
  }

  else
  {
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v52 = sub_25A997BD8();
    __swift_project_value_buffer(v52, qword_27FA0FCE8);
    swift_retain_n();
    v53 = sub_25A997BB8();
    v54 = sub_25A9983A8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *&v69 = v56;
      *v55 = 136315650;
      v57 = v4[7];
      swift_getObjectType();
      v68[0] = v57;
      v58 = sub_25A998968();
      v60 = sub_25A98CC90(v58, v59, &v69);

      *(v55 + 4) = v60;
      *(v55 + 12) = 2080;
      v62 = v4[5];
      v61 = v4[6];

      v63 = sub_25A98CC90(v62, v61, &v69);

      *(v55 + 14) = v63;
      *(v55 + 22) = 2048;
      v64 = v4[2];

      *(v55 + 24) = v64;

      _os_log_impl(&dword_25A232000, v53, v54, "Attribute> %s does not have attribute %s. line %ld", v55, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25F852800](v56, -1, -1);
      MEMORY[0x25F852800](v55, -1, -1);
    }

    else
    {
    }

    sub_25A874F54();
    swift_allocError();
    *v67 = 11;
    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v71);
}

uint64_t sub_25A8FC408()
{
  swift_getObjectType();
  sub_25A9989B8();
  MEMORY[0x25F850290](46, 0xE100000000000000);
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  MEMORY[0x25F850290](v2, v1);

  return 0;
}

uint64_t sub_25A8FC4A0()
{
  sub_25A872F88(v0 + 24);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_25A8FC52C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

unint64_t sub_25A8FC56C()
{
  result = qword_27FA04C98;
  if (!qword_27FA04C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04C98);
  }

  return result;
}

unint64_t sub_25A8FC5D4()
{
  result = qword_27FA04CA0;
  if (!qword_27FA04CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04CA0);
  }

  return result;
}

unint64_t sub_25A8FC62C()
{
  result = qword_27FA04CA8;
  if (!qword_27FA04CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04CA8);
  }

  return result;
}

unint64_t sub_25A8FC684()
{
  result = qword_27FA04CB0;
  if (!qword_27FA04CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04CB0);
  }

  return result;
}

unint64_t sub_25A8FC6D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_25A9988C8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25A8FC724(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x746567726174;
  if (v2 != 1)
  {
    v4 = 2036625250;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x65636E6575716573;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x746567726174;
  if (*a2 != 1)
  {
    v8 = 2036625250;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x65636E6575716573;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A8FC810()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8FC8A8(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A8FC92C(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

unint64_t sub_25A8FC9C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25A8FDE78(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25A8FC9F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x746567726174;
  if (v2 != 1)
  {
    v5 = 2036625250;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65636E6575716573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25A8FCA44()
{
  v1 = 0x746567726174;
  if (*v0 != 1)
  {
    v1 = 2036625250;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65636E6575716573;
  }
}

unint64_t sub_25A8FCA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25A8FDE78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25A8FCABC(uint64_t a1)
{
  v2 = sub_25A8FDD0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A8FCAF8(uint64_t a1)
{
  v2 = sub_25A8FDD0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8FCB80(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04CD0, &unk_25A9FBDC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A8FDD0C();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for Each();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[5] = sub_25A90E62C(v8, 0);
    v1[6] = v10;
    v1[7] = sub_25A90E62C(v8, 1);
    v1[8] = v11;
    v14 = 2;
    type metadata accessor for LexicalBlock();
    sub_25A8E119C();
    sub_25A998938();
    v1[9] = v13[0];
    sub_25A872F24(a1, v13);
    v3 = sub_25A8963D8(v13);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A8FCDFC@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = v1[6];
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = v1[4];
  v10 = *(v6 + 48);
  swift_unknownObjectRetain();
  v10(Strong, v9, ObjectType, v6);
  swift_unknownObjectRelease();
  v11 = v1[8];
  v12 = swift_getObjectType();
  v13 = swift_unknownObjectWeakLoadStrong();
  v14 = v1[4];
  v15 = *(v11 + 48);
  swift_unknownObjectRetain();
  v15(v13, v14, v12, v11);
  swift_unknownObjectRelease();
  v16 = v1[9];
  swift_unknownObjectWeakLoadStrong();
  v17 = v1[4];
  swift_beginAccess();
  *(v16 + 32) = v17;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v18 = v1[6];
  v19 = swift_getObjectType();
  v20 = *(v18 + 64);
  swift_unknownObjectRetain();
  v20(&v68, v19, v18);
  if (v3)
  {
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  sub_25A9119F0(&v73);
  sub_25A872CE0(&v68);
  if (!*(&v74 + 1))
  {
    sub_25A878194(&v73, &qword_27FA04CB8, &unk_25A9FDC50);
    v28 = v1[6];
    v29 = swift_getObjectType();
    v30 = *(v28 + 64);
    swift_unknownObjectRetain();
    v30(&v73, v29, v28);
    swift_unknownObjectRelease();
    sub_25A896580(&v68);
    sub_25A872CE0(&v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04758, &unk_25A9F9B90);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
      sub_25A878194(&v73, &qword_27FA04750, "jN\a");
      v24 = 0;
      goto LABEL_6;
    }

    sub_25A87817C(&v73, &v76);
    v31 = *(&v77 + 1);
    v32 = v78;
    __swift_project_boxed_opaque_existential_1(&v76, *(&v77 + 1));
    (v32[1])(&v65, v31, v32);
    v33 = v66;
    v34 = v67;
    __swift_project_boxed_opaque_existential_1(&v65, v66);
    (*(*(v34 + 8) + 8))(&v71, 0x5F5F726574695F5FLL, 0xE800000000000000, v33);
    if (v72)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
      if ((swift_dynamicCast() & 1) == 0)
      {
        v70 = 0;
        v68 = 0u;
        v69 = 0u;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v65);
      if (*(&v69 + 1))
      {
        sub_25A87817C(&v68, &v73);
        v35 = *(&v74 + 1);
        v36 = v75;
        __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_25A9F8D90;
        v38 = *(&v77 + 1);
        v39 = __swift_project_boxed_opaque_existential_1(&v76, *(&v77 + 1));
        *(v37 + 56) = v38;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v37 + 32));
        (*(*(v38 - 8) + 16))(boxed_opaque_existential_0, v39, v38);
        v41 = sub_25A92BDB4(MEMORY[0x277D84F90]);
        (*(v36 + 16))(&v68, v37, v41, v35, v36);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04CC0, &qword_25A9FAA38);
        if (swift_dynamicCast())
        {
          v24 = v65;
          __swift_destroy_boxed_opaque_existential_0Tm(&v73);
          goto LABEL_5;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(&v73);
LABEL_32:
        __swift_destroy_boxed_opaque_existential_0Tm(&v76);
        v24 = 0;
        goto LABEL_6;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(&v65);
      sub_25A878194(&v71, &qword_27FA04458, &unk_25A9F7FB0);
      v68 = 0u;
      v69 = 0u;
      v70 = 0;
    }

    sub_25A878194(&v68, &qword_27FA04760, &unk_25A9F9BB0);
    goto LABEL_32;
  }

  sub_25A87817C(&v73, &v76);
  v22 = *(&v77 + 1);
  v23 = v78;
  __swift_project_boxed_opaque_existential_1(&v76, *(&v77 + 1));
  v24 = (v23[2])(v22, v23);
LABEL_5:
  __swift_destroy_boxed_opaque_existential_0Tm(&v76);
LABEL_6:
  v25 = v1[8];
  v26 = swift_getObjectType();
  v27 = *(v25 + 64);
  swift_unknownObjectRetain();
  v27(&v76, v26, v25);
  swift_unknownObjectRelease();
  sub_25A896580(&v68);
  sub_25A872CE0(&v76);
  if (v24)
  {
    sub_25A9988A8();
    if (!v66)
    {
LABEL_26:
      __swift_destroy_boxed_opaque_existential_0Tm(&v68);

      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return result;
    }

    v79 = v24;
    while (1)
    {
      v42 = a1;
      sub_25A872D74(&v65, &v71);
      v43 = type metadata accessor for LexicalContext();
      v44 = swift_allocObject();
      v44[2] = 0x6E776F6E6B6E55;
      v44[3] = 0xE700000000000000;
      v45 = MEMORY[0x277D84F90];
      v46 = sub_25A98E540(MEMORY[0x277D84F90]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04620, &unk_25A9FDA10);
      v47 = swift_allocObject();
      *(v47 + 16) = MEMORY[0x277D84F98];
      swift_beginAccess();
      *(v47 + 16) = v46;
      v44[4] = v47;
      v44[5] = sub_25A98E67C(v45);
      *(&v77 + 1) = v43;
      v78 = &protocol witness table for LexicalContext;
      *&v76 = v44;

      sub_25A932654(&v71, &v68, &v76);
      __swift_destroy_boxed_opaque_existential_0Tm(&v76);
      swift_beginAccess();

      sub_25A936C50(v48);
      v50 = v49;

      sub_25A8FD864(v50);
      v52 = v51;

      sub_25A87A7AC(v52);

      sub_25A87A380(1, &v76);

      __swift_destroy_boxed_opaque_existential_0Tm(&v71);
      LOBYTE(v75) = v78;
      v73 = v76;
      v74 = v77;
      if (v78 == 2)
      {
        a1 = v42;
        if (v73 == 1 && !(v74 | *(&v74 + 1) | *(&v73 + 1)))
        {
          goto LABEL_26;
        }
      }

      else
      {
        a1 = v42;
        if (v78 == 1)
        {
          __swift_destroy_boxed_opaque_existential_0Tm(&v68);

          v64 = v74;
          *v42 = v73;
          *(v42 + 16) = v64;
          *(v42 + 32) = 1;
          return result;
        }
      }

      sub_25A872CE0(&v73);
      sub_25A9988A8();
      if (!v66)
      {
        goto LABEL_26;
      }
    }
  }

  if (qword_27FA043C0 != -1)
  {
    swift_once();
  }

  v53 = sub_25A997BD8();
  __swift_project_value_buffer(v53, qword_27FA0FCE8);
  swift_retain_n();
  v54 = sub_25A997BB8();
  v55 = sub_25A9983A8();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *&v76 = v57;
    *v56 = 136315394;
    v58 = v1[5];
    swift_getObjectType();
    *&v73 = v58;
    v59 = sub_25A998968();
    v61 = sub_25A98CC90(v59, v60, &v76);

    *(v56 + 4) = v61;
    *(v56 + 12) = 2048;
    v62 = v4[2];

    *(v56 + 14) = v62;

    _os_log_impl(&dword_25A232000, v54, v55, "Each> %s did not return iterator. line %ld", v56, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v57);
    MEMORY[0x25F852800](v57, -1, -1);
    MEMORY[0x25F852800](v56, -1, -1);
  }

  else
  {
  }

  sub_25A874F54();
  swift_allocError();
  *v63 = 40;
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_0Tm(&v68);
}

void sub_25A8FD864(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04CC8, &unk_25A9FDC30);
    v2 = sub_25A998888();
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

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        sub_25A874FB0(*(a1 + 48) + 40 * v13, v28);
        sub_25A87500C(*(a1 + 56) + 32 * v13, v29 + 8);
        v26[0] = v29[0];
        v26[1] = v29[1];
        v27 = v30;
        v25[2] = v28[0];
        v25[3] = v28[1];
        swift_dynamicCast();
        sub_25A872D74((v26 + 8), v22);
        sub_25A872D74(v22, v24);
        sub_25A872D74(v24, v25);
        sub_25A872D74(v25, &v23);
        v14 = sub_25A8F3600(v20, v21);
        if (v15)
        {
          v8 = (v2[6] + 16 * v14);
          *v8 = v20;
          v8[1] = v21;
          v9 = v14;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0Tm(v10);
          sub_25A872D74(&v23, v10);
          v7 = v11;
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

          *(v2 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
          v16 = (v2[6] + 16 * v14);
          *v16 = v20;
          v16[1] = v21;
          sub_25A872D74(&v23, (v2[7] + 32 * v14));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_21;
          }

          v2[2] = v19;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_25A8FDAF4()
{
  sub_25A9985F8();

  swift_getObjectType();
  v0 = sub_25A998968();
  MEMORY[0x25F850290](v0);

  MEMORY[0x25F850290](544106784, 0xE400000000000000);
  swift_getObjectType();
  v1 = sub_25A998968();
  MEMORY[0x25F850290](v1);

  MEMORY[0x25F850290](686880, 0xE300000000000000);

  v2 = sub_25A87A5A4();
  v4 = v3;

  v5 = sub_25A985514(v2, v4);
  v7 = v6;

  MEMORY[0x25F850290](v5, v7);

  MEMORY[0x25F850290](32010, 0xE200000000000000);
  return 544370534;
}

uint64_t sub_25A8FDC40()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_25A8FDC78()
{
  sub_25A872F88(v0 + 24);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_25A8FDD0C()
{
  result = qword_27FA04CD8;
  if (!qword_27FA04CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04CD8);
  }

  return result;
}

unint64_t sub_25A8FDD74()
{
  result = qword_27FA04CE0;
  if (!qword_27FA04CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04CE0);
  }

  return result;
}

unint64_t sub_25A8FDDCC()
{
  result = qword_27FA04CE8;
  if (!qword_27FA04CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04CE8);
  }

  return result;
}

unint64_t sub_25A8FDE24()
{
  result = qword_27FA04CF0;
  if (!qword_27FA04CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04CF0);
  }

  return result;
}

unint64_t sub_25A8FDE78(uint64_t a1, uint64_t a2)
{
  v2 = sub_25A9988C8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25A8FDEC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 2036625250;
  if (v2 != 1)
  {
    v5 = 0x65736C65726FLL;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1953719668;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 2036625250;
  if (*a2 != 1)
  {
    v8 = 0x65736C65726FLL;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1953719668;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A8FDFA4()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8FE034(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A8FE0B0(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

unint64_t sub_25A8FE13C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25A8FEBB4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25A8FE16C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 2036625250;
  if (v2 != 1)
  {
    v5 = 0x65736C65726FLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1953719668;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25A8FE1B8()
{
  v1 = 2036625250;
  if (*v0 != 1)
  {
    v1 = 0x65736C65726FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1953719668;
  }
}

unint64_t sub_25A8FE200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25A8FEBB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25A8FE228(uint64_t a1)
{
  v2 = sub_25A8FEA48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A8FE264(uint64_t a1)
{
  v2 = sub_25A8FEA48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8FE2EC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04CF8, "\\7\a");
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-1] - v7;
  v1[8] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A8FEA48();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);

    type metadata accessor for While();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[5] = sub_25A90E6CC(v8, 0);
    v1[6] = v10;
    v13 = 1;
    type metadata accessor for LexicalBlock();
    sub_25A8E119C();
    sub_25A998938();
    v1[7] = v12[0];
    v13 = 2;
    sub_25A998938();
    v1[8] = v12[0];

    sub_25A872F24(a1, v12);
    v3 = sub_25A8963D8(v12);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A8FE588@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = v1[6];
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = v1[4];
  v10 = *(v6 + 48);
  swift_unknownObjectRetain();
  v10(Strong, v9, ObjectType, v6);
  swift_unknownObjectRelease();
  v11 = v1[8];
  if (v11)
  {
    swift_unknownObjectWeakLoadStrong();
    v12 = v1[4];
    swift_beginAccess();
    *(v11 + 32) = v12;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  v13 = v1[7];
  swift_unknownObjectWeakLoadStrong();
  v14 = v1[4];
  swift_beginAccess();
  *(v13 + 32) = v14;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v15 = v1[6];
  v16 = swift_getObjectType();
  v17 = *(v15 + 64);
  swift_unknownObjectRetain();
  v17(v29, v16, v15);
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    v19 = sub_25A911AC4();
    result = sub_25A872CE0(v29);
    if (v19 != 2 && (v19 & 1) != 0)
    {
      while (1)
      {

        sub_25A87A380(1, v29);

        sub_25A872C84(v29, &v26);
        if (v28 == 2)
        {
          if (v26 == 1 && !(v27 | *(&v27 + 1) | *(&v26 + 1)))
          {
            result = sub_25A872CE0(v29);
            *a1 = 0u;
            *(a1 + 16) = 0u;
            *(a1 + 32) = 0;
            return result;
          }
        }

        else if (v28 == 1)
        {
          result = sub_25A872CE0(v29);
          v23 = v27;
          *a1 = v26;
          *(a1 + 16) = v23;
          *(a1 + 32) = 1;
          return result;
        }

        sub_25A872CE0(&v26);
        v20 = v4[6];
        v21 = swift_getObjectType();
        v22 = *(v20 + 64);
        swift_unknownObjectRetain();
        v22(&v26, v21, v20);
        sub_25A872CE0(v29);
        swift_unknownObjectRelease();
        sub_25A872C84(&v26, v24);
        if (!v25)
        {
          break;
        }

        sub_25A872CE0(v24);
        v25 = v28;
        v24[0] = v26;
        v24[1] = v27;
        if (v28 == 1)
        {
          goto LABEL_19;
        }

        result = sub_25A872CE0(v24);
LABEL_8:
        LOBYTE(v24[0]) = 2;
LABEL_9:
        if ((v24[0] & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      sub_25A872CE0(&v26);
LABEL_19:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
      result = swift_dynamicCast();
      if (result)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

LABEL_21:
    if (v4[8])
    {

      sub_25A87A380(1, v29);
      sub_25A872CE0(v29);
    }

    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_25A8FE930()
{
  swift_getObjectType();
  v0 = sub_25A998968();
  MEMORY[0x25F850290](v0);

  MEMORY[0x25F850290](686880, 0xE300000000000000);

  v1 = sub_25A87A5A4();
  v3 = v2;

  v4 = sub_25A985514(v1, v3);
  v6 = v5;

  MEMORY[0x25F850290](v4, v6);

  MEMORY[0x25F850290](32010, 0xE200000000000000);
  return 0x20656C696877;
}

unint64_t sub_25A8FEA48()
{
  result = qword_27FA04D00;
  if (!qword_27FA04D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D00);
  }

  return result;
}

unint64_t sub_25A8FEAB0()
{
  result = qword_27FA04D08;
  if (!qword_27FA04D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D08);
  }

  return result;
}

unint64_t sub_25A8FEB08()
{
  result = qword_27FA04D10;
  if (!qword_27FA04D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D10);
  }

  return result;
}

unint64_t sub_25A8FEB60()
{
  result = qword_27FA04D18;
  if (!qword_27FA04D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D18);
  }

  return result;
}

unint64_t sub_25A8FEBB4(uint64_t a1, uint64_t a2)
{
  v2 = sub_25A9988C8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25A8FEC00()
{
  sub_25A998B18();
  sub_25A997D58();
  return sub_25A998B38();
}

uint64_t sub_25A8FEC5C(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();
  return sub_25A998B38();
}

uint64_t sub_25A8FECA4@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_25A9988C8();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_25A8FED1C@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_25A9988C8();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_25A8FED74(uint64_t a1)
{
  v2 = sub_25A8FF380();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A8FEDB0(uint64_t a1)
{
  v2 = sub_25A8FF380();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8FEE38(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04D20, &unk_25A9FAD30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-1] - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A8FF380();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for Raise();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 40) = sub_25A90E67C(v8);
    *(v3 + 48) = v11;
    sub_25A872F24(a1, v13);
    v9 = sub_25A8963D8(v13);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v9;
}

uint64_t sub_25A8FEFF4()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v0 + 48);
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v0 + 32);
  v8 = *(v4 + 48);
  swift_unknownObjectRetain();
  v8(Strong, v7, ObjectType, v4);
  swift_unknownObjectRelease();
  v9 = *(v0 + 48);
  v10 = swift_getObjectType();
  v11 = *(v9 + 64);
  swift_unknownObjectRetain();
  v11(v19, v10, v9);
  result = swift_unknownObjectRelease();
  if (!v2)
  {
    sub_25A896580(v20);
    sub_25A872CE0(v19);
    sub_25A87500C(v20, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04AA0, &qword_25A9F9BC8);
    if (!swift_dynamicCast())
    {
      if (static MorpheusUtils.isNil(_:)(v20))
      {
        sub_25A874F54();
        swift_allocError();
        v14 = 22;
      }

      else
      {
        if (qword_27FA043C0 != -1)
        {
          swift_once();
        }

        v15 = sub_25A997BD8();
        __swift_project_value_buffer(v15, qword_27FA0FCE8);

        v16 = sub_25A997BB8();
        v17 = sub_25A9983A8();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 134217984;
          *(v18 + 4) = *(v3 + 16);

          _os_log_impl(&dword_25A232000, v16, v17, "Raise> Invalid exc. lino %ld", v18, 0xCu);
          MEMORY[0x25F852800](v18, -1, -1);
        }

        else
        {
        }

        sub_25A874F54();
        swift_allocError();
        v14 = 23;
      }

      *v13 = v14;
    }

    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  return result;
}

uint64_t sub_25A8FF2AC()
{
  MEMORY[0x25F850290](0x206573696172, 0xE600000000000000);
  swift_getObjectType();
  sub_25A9989B8();
  return 0;
}

uint64_t sub_25A8FF31C()
{
  sub_25A872F88(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_25A8FF380()
{
  result = qword_27FA04D28;
  if (!qword_27FA04D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D28);
  }

  return result;
}

unint64_t sub_25A8FF3E8()
{
  result = qword_27FA04D30;
  if (!qword_27FA04D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D30);
  }

  return result;
}

unint64_t sub_25A8FF440()
{
  result = qword_27FA04D38;
  if (!qword_27FA04D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D38);
  }

  return result;
}

unint64_t sub_25A8FF498()
{
  result = qword_27FA04D40;
  if (!qword_27FA04D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D40);
  }

  return result;
}

uint64_t sub_25A8FF4EC(uint64_t result)
{
  LODWORD(v2) = *v1;
  v3 = *(v1 + 16);
  if (*(v1 + 12))
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v1 + 8);
  }

  if ((*(v1 + 4) & 1) == 0 && (v2 & 0x80000000) != 0)
  {
    if (result < 0xFFFFFFFF80000000)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (result > 0x7FFFFFFF)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v5 = __OFADD__(v2, result);
    LODWORD(v2) = v2 + result;
    if (v5)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }
  }

  if (v3 >= 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(v1 + 20);
  }

  if ((v6 & 1) == 0)
  {
    if (result < 0xFFFFFFFF80000000)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (result > 0x7FFFFFFF)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (__OFADD__(v3, result))
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }
  }

  if (!*(v1 + 4))
  {
LABEL_22:
    if (*(v1 + 20))
    {
      if (v4 < 0)
      {
        return v2;
      }

      if (result < 0xFFFFFFFF80000000)
      {
        goto LABEL_36;
      }

      if (result > 0x7FFFFFFF)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    if (v4)
    {
      return v2;
    }

    __break(1u);
    goto LABEL_30;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    LODWORD(v2) = 0;
    goto LABEL_22;
  }

  v2 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v2 < 0xFFFFFFFF80000000)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v2 <= 0x7FFFFFFF)
  {
    goto LABEL_22;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t _sSi8MorpheusE5values5Int32VyF_0(uint64_t result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_25A8FF63C()
{
  result = *v0;
  if (*v0 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

Swift::Int32 __swiftcall UInt.value()()
{
  if (v0 >> 31)
  {
    __break(1u);
  }

  return v0;
}

uint64_t sub_25A8FF674()
{
  result = *v0;
  if (*v0 >> 31)
  {
    __break(1u);
  }

  return result;
}

Swift::Int32 __swiftcall UInt32.value()()
{
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25A8FF694()
{
  result = *v0;
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25A8FF6A4()
{
  if (v0[4])
  {
    return 0x100000000;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_25A8FF6F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1885697139;
  if (v2 != 1)
  {
    v4 = 0x7265707075;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7265776F6CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1885697139;
  if (*a2 != 1)
  {
    v8 = 0x7265707075;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7265776F6CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A8FF7DC()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8FF870(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A8FF8F0(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

unint64_t sub_25A8FF980@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25A900694(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25A8FF9B0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1885697139;
  if (v2 != 1)
  {
    v5 = 0x7265707075;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7265776F6CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25A8FFA00()
{
  v1 = 1885697139;
  if (*v0 != 1)
  {
    v1 = 0x7265707075;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265776F6CLL;
  }
}

unint64_t sub_25A8FFA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25A900694(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25A8FFA74(uint64_t a1)
{
  v2 = sub_25A900528();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A8FFAB0(uint64_t a1)
{
  v2 = sub_25A900528();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8FFB38(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04D48, &qword_25A9FAFA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-1] - v7;
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A900528();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    type metadata accessor for MorpheusSlice();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 40) = sub_25A90E564(v8, 0);
    *(v1 + 48) = v9;
    swift_unknownObjectRelease();
    *(v1 + 56) = sub_25A90E564(v8, 1);
    *(v1 + 64) = v10;
    swift_unknownObjectRelease();
    *(v1 + 72) = sub_25A90E564(v8, 2);
    *(v1 + 80) = v11;
    swift_unknownObjectRelease();
    sub_25A872F24(a1, v14);
    v3 = sub_25A8963D8(v14);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A8FFD98@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  if (v1[5])
  {
    v5 = v1[6];
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v8 = v1[4];
    v9 = *(v5 + 48);
    swift_unknownObjectRetain();
    v9(Strong, v8, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  if (v1[7])
  {
    v10 = v1[8];
    v11 = swift_getObjectType();
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    v13 = v1[4];
    v14 = *(v10 + 48);
    swift_unknownObjectRetain();
    v14(v12, v13, v11, v10);
    swift_unknownObjectRelease();
  }

  if (v1[9])
  {
    v15 = v1[10];
    v16 = swift_getObjectType();
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    v18 = v1[4];
    v19 = *(v15 + 48);
    swift_unknownObjectRetain();
    v19(v17, v18, v16, v15);
    swift_unknownObjectRelease();
  }

  if (!v1[5])
  {
    v47 = 0;
    memset(v46, 0, sizeof(v46));
    if (!v1[7])
    {
      goto LABEL_10;
    }

LABEL_14:
    v27 = v1[8];
    v28 = swift_getObjectType();
    v29 = *(v27 + 64);
    swift_unknownObjectRetain();
    v29(v42, v28, v27);
    if (v3)
    {
      sub_25A900450(v46);
      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    sub_25A911B94(v44);
    sub_25A872CE0(v42);
    if (v1[9])
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  v20 = v1[6];
  v21 = swift_getObjectType();
  v22 = *(v20 + 64);
  swift_unknownObjectRetain();
  v22(v44, v21, v20);
  result = swift_unknownObjectRelease();
  if (v3)
  {
    return result;
  }

  sub_25A911B94(v46);
  sub_25A872CE0(v44);
  if (v1[7])
  {
    goto LABEL_14;
  }

LABEL_10:
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  if (v1[9])
  {
LABEL_11:
    v24 = v1[10];
    v25 = swift_getObjectType();
    v26 = *(v24 + 64);
    swift_unknownObjectRetain();
    v26(v39, v25, v24);
    swift_unknownObjectRelease();
    if (v3)
    {
      sub_25A900450(v44);
      return sub_25A900450(v46);
    }

    sub_25A911B94(v42);
    sub_25A872CE0(v39);
    goto LABEL_19;
  }

LABEL_17:
  v43 = 0;
  memset(v42, 0, sizeof(v42));
LABEL_19:
  sub_25A9004B8(v46, v39);
  v30 = v40;
  if (v40)
  {
    v31 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v32 = (*(v31 + 8))(v30, v31);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
  }

  else
  {
    sub_25A900450(v39);
    v32 = 0;
  }

  sub_25A9004B8(v44, v39);
  v33 = v40;
  if (v40)
  {
    v34 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v35 = (*(v34 + 8))(v33, v34);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
  }

  else
  {
    sub_25A900450(v39);
    v35 = 0;
  }

  sub_25A9004B8(v42, v39);
  v36 = v40;
  if (v40)
  {
    v37 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v38 = (*(v37 + 8))(v36, v37);
    sub_25A900450(v42);
    sub_25A900450(v44);
    sub_25A900450(v46);
    result = __swift_destroy_boxed_opaque_existential_0Tm(v39);
  }

  else
  {
    sub_25A900450(v42);
    sub_25A900450(v44);
    sub_25A900450(v46);
    result = sub_25A900450(v39);
    v38 = 0;
  }

  *(a1 + 24) = &type metadata for SliceStruct;
  *a1 = v32;
  *(a1 + 4) = v30 == 0;
  *(a1 + 8) = v35;
  *(a1 + 12) = v33 == 0;
  *(a1 + 16) = v38;
  *(a1 + 20) = v36 == 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_25A900268()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_25A9002A0()
{
  sub_25A872F88(v0 + 24);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

BOOL _s8Morpheus11SliceStructV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 12))
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) == *(a2 + 8))
    {
      v3 = *(a2 + 12);
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if ((*(a1 + 20) & 1) == 0)
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v5 = *(a2 + 20);
    }

    else
    {
      v5 = 1;
    }

    return (v5 & 1) == 0;
  }

  return (*(a2 + 20) & 1) != 0;
}

__n128 __swift_memcpy21_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SliceStruct(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 21))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SliceStruct(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 21) = v3;
  return result;
}

uint64_t sub_25A900450(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047B0, &qword_25A9F8E78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25A9004B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047B0, &qword_25A9F8E78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25A900528()
{
  result = qword_27FA04D50;
  if (!qword_27FA04D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D50);
  }

  return result;
}

unint64_t sub_25A900590()
{
  result = qword_27FA04D58;
  if (!qword_27FA04D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D58);
  }

  return result;
}

unint64_t sub_25A9005E8()
{
  result = qword_27FA04D60;
  if (!qword_27FA04D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D60);
  }

  return result;
}

unint64_t sub_25A900640()
{
  result = qword_27FA04D68;
  if (!qword_27FA04D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D68);
  }

  return result;
}

unint64_t sub_25A900694(uint64_t a1, uint64_t a2)
{
  v2 = sub_25A9988C8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25A9006F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1952867692;
  if (v2 != 1)
  {
    v4 = 0x7468676972;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 28783;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1952867692;
  if (*a2 != 1)
  {
    v8 = 0x7468676972;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 28783;
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
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A9007D4()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A900860(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A9008D8(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

unint64_t sub_25A900960@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25A901C44(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25A900990(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE400000000000000;
  v5 = 1952867692;
  if (v2 != 1)
  {
    v5 = 0x7468676972;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 28783;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25A9009D8()
{
  v1 = 1952867692;
  if (*v0 != 1)
  {
    v1 = 0x7468676972;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28783;
  }
}

unint64_t sub_25A900A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25A901C44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25A900A44(uint64_t a1)
{
  v2 = sub_25A901AD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A900A80(uint64_t a1)
{
  v2 = sub_25A901AD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A900B08(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04D70, &unk_25A9FBDB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A901AD8();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for BinOp();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v14[0]) = 0;
    v1[9] = sub_25A9988F8();
    v1[10] = v10;
    v1[5] = sub_25A90E654(v8, 1);
    v1[6] = v11;
    v1[7] = sub_25A90E654(v8, 2);
    v1[8] = v12;
    sub_25A872F24(a1, v14);
    v3 = sub_25A8963D8(v14);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A900D58@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = v1[6];
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = v1[4];
  v10 = *(v6 + 48);
  swift_unknownObjectRetain();
  v10(Strong, v9, ObjectType, v6);
  swift_unknownObjectRelease();
  v11 = v1[8];
  v12 = swift_getObjectType();
  v13 = swift_unknownObjectWeakLoadStrong();
  v14 = v1[4];
  v15 = *(v11 + 48);
  swift_unknownObjectRetain();
  v15(v13, v14, v12, v11);
  swift_unknownObjectRelease();
  v16 = v1[6];
  v17 = swift_getObjectType();
  v18 = *(v16 + 64);
  swift_unknownObjectRetain();
  v18(v62, v17, v16);
  if (v3)
  {
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  sub_25A896580(&v58);
  sub_25A872CE0(v62);
  sub_25A92D814(&v58, v66);
  __swift_destroy_boxed_opaque_existential_0Tm(&v58);
  v19 = v1[8];
  v20 = swift_getObjectType();
  v21 = *(v19 + 64);
  swift_unknownObjectRetain();
  v21(v62, v20, v19);
  swift_unknownObjectRelease();
  sub_25A896580(&v58);
  sub_25A872CE0(v62);
  sub_25A92D814(&v58, v65);
  __swift_destroy_boxed_opaque_existential_0Tm(&v58);
  v24 = v1[9];
  v23 = v1[10];

  v25 = sub_25A901A8C(v24, v23);
  if (v25 > 3)
  {
    if (v25 > 5)
    {
      if (v25 != 6)
      {
        if (qword_27FA043C0 != -1)
        {
          swift_once();
        }

        v29 = sub_25A997BD8();
        __swift_project_value_buffer(v29, qword_27FA0FCE8);

        v30 = sub_25A997BB8();
        v31 = sub_25A9983A8();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v62[0] = v33;
          *v32 = 136315394;
          v34 = v4[9];
          v35 = v4[10];

          v36 = sub_25A98CC90(v34, v35, v62);

          *(v32 + 4) = v36;
          *(v32 + 12) = 2048;
          *(v32 + 14) = v4[2];

          _os_log_impl(&dword_25A232000, v30, v31, "BinOp> Invalid binary operator %s: line %ld", v32, 0x16u);
          __swift_destroy_boxed_opaque_existential_0Tm(v33);
          MEMORY[0x25F852800](v33, -1, -1);
          MEMORY[0x25F852800](v32, -1, -1);
        }

        else
        {
        }

        sub_25A874F54();
        swift_allocError();
        *v57 = 14;
        goto LABEL_43;
      }

      sub_25A87500C(v66, v61);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04568, &qword_25A9F8718);
      if (swift_dynamicCast())
      {
        goto LABEL_24;
      }

      v60 = 0;
      v58 = 0u;
      v59 = 0u;
      v37 = &unk_27FA04570;
      v38 = &unk_25A9F8720;
    }

    else if (v25 == 4)
    {
      sub_25A87500C(v66, v61);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04588, &qword_25A9F8738);
      if (swift_dynamicCast())
      {
        goto LABEL_24;
      }

      v60 = 0;
      v58 = 0u;
      v59 = 0u;
      v37 = &unk_27FA04590;
      v38 = &unk_25A9F8740;
    }

    else
    {
      sub_25A87500C(v66, v61);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04578, &qword_25A9F8728);
      if (swift_dynamicCast())
      {
        goto LABEL_24;
      }

      v60 = 0;
      v58 = 0u;
      v59 = 0u;
      v37 = &unk_27FA04580;
      v38 = &unk_25A9F8730;
    }

LABEL_36:
    sub_25A878194(&v58, v37, v38);
    sub_25A874F54();
    swift_allocError();
    *v39 = 15;
    swift_willThrow();
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v40 = sub_25A997BD8();
    __swift_project_value_buffer(v40, qword_27FA0FCE8);
    swift_retain_n();
    v41 = sub_25A997BB8();
    v42 = sub_25A9983A8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v62[0] = v44;
      *v43 = 136315906;
      v45 = v4[5];
      swift_getObjectType();
      *&v58 = v45;
      v46 = sub_25A998968();
      v48 = sub_25A98CC90(v46, v47, v62);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2080;
      v49 = v4[7];
      swift_getObjectType();
      *&v58 = v49;
      v50 = sub_25A998968();
      v52 = sub_25A98CC90(v50, v51, v62);

      *(v43 + 14) = v52;
      *(v43 + 22) = 2080;
      v54 = v4[9];
      v53 = v4[10];

      v55 = sub_25A98CC90(v54, v53, v62);

      *(v43 + 24) = v55;
      *(v43 + 32) = 2048;
      v56 = v4[2];

      *(v43 + 34) = v56;

      _os_log_impl(&dword_25A232000, v41, v42, "BinOp> Left: %s and right: %s are not supported  with op: %s. line %ld", v43, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x25F852800](v44, -1, -1);
      MEMORY[0x25F852800](v43, -1, -1);
    }

    else
    {
    }

LABEL_43:
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0Tm(v65);
    v28 = v66;
    return __swift_destroy_boxed_opaque_existential_0Tm(v28);
  }

  if (v25 <= 1)
  {
    if (v25)
    {
      sub_25A87500C(v66, v61);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA045B8, &qword_25A9F8768);
      if (swift_dynamicCast())
      {
        goto LABEL_24;
      }

      v60 = 0;
      v58 = 0u;
      v59 = 0u;
      v37 = &unk_27FA045C0;
      v38 = &unk_25A9F8770;
    }

    else
    {
      sub_25A87500C(v66, v61);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA045C8, &qword_25A9F8778);
      if (swift_dynamicCast())
      {
        goto LABEL_24;
      }

      v60 = 0;
      v58 = 0u;
      v59 = 0u;
      v37 = &unk_27FA045D0;
      v38 = &unk_25A9F8780;
    }

    goto LABEL_36;
  }

  if (v25 == 2)
  {
    sub_25A87500C(v66, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA045A8, &qword_25A9F8758);
    if (swift_dynamicCast())
    {
      goto LABEL_24;
    }

    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    v37 = &unk_27FA045B0;
    v38 = &unk_25A9F8760;
    goto LABEL_36;
  }

  sub_25A87500C(v66, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04598, &qword_25A9F8748);
  if (!swift_dynamicCast())
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    v37 = &unk_27FA045A0;
    v38 = &unk_25A9F8750;
    goto LABEL_36;
  }

LABEL_24:
  sub_25A87817C(&v58, v62);
  v26 = v63;
  v27 = v64;
  __swift_project_boxed_opaque_existential_1(v62, v63);
  (*(v27 + 8))(v65, v26, v27);
  __swift_destroy_boxed_opaque_existential_0Tm(v65);
  __swift_destroy_boxed_opaque_existential_0Tm(v66);
  *(a1 + 32) = 0;
  v28 = v62;
  return __swift_destroy_boxed_opaque_existential_0Tm(v28);
}

unint64_t sub_25A901838()
{
  v1 = v0;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v12 = sub_25A997EB8();
  MEMORY[0x25F850290](32, 0xE100000000000000);
  v2 = *(v0 + 72);
  v3 = *(v1 + 80);

  result = sub_25A901A8C(v2, v3);
  v5 = result;
  if (result <= 3u)
  {
    v6 = 43;
    v7 = 0xA200000000000000;
    v8 = 38851;
    if (result != 2)
    {
      v8 = 47;
      v7 = 0xE100000000000000;
    }

    if (result)
    {
      v6 = 45;
    }

    if (result <= 1u)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    if (v5 <= 1)
    {
      v10 = 0xE100000000000000;
    }

    else
    {
      v10 = v7;
    }

    goto LABEL_21;
  }

  if (result <= 5u)
  {
    if (result == 4)
    {
      v9 = 37;
    }

    else
    {
      v9 = 10794;
    }

    if (v5 == 4)
    {
      v10 = 0xE100000000000000;
    }

    else
    {
      v10 = 0xE200000000000000;
    }

    goto LABEL_21;
  }

  if (result == 6)
  {
    v10 = 0xE200000000000000;
    v9 = 12079;
LABEL_21:
    MEMORY[0x25F850290](v9, v10);

    MEMORY[0x25F850290](32, 0xE100000000000000);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = sub_25A997EB8();
    MEMORY[0x25F850290](v11);

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_25A9019C0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_25A9019F8()
{
  sub_25A872F88(v0 + 24);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_25A901A8C(uint64_t a1, uint64_t a2)
{
  v2 = sub_25A9988C8();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25A901AD8()
{
  result = qword_27FA04D78;
  if (!qword_27FA04D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D78);
  }

  return result;
}

unint64_t sub_25A901B40()
{
  result = qword_27FA04D80;
  if (!qword_27FA04D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D80);
  }

  return result;
}

unint64_t sub_25A901B98()
{
  result = qword_27FA04D88;
  if (!qword_27FA04D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D88);
  }

  return result;
}

unint64_t sub_25A901BF0()
{
  result = qword_27FA04D90;
  if (!qword_27FA04D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D90);
  }

  return result;
}

unint64_t sub_25A901C44(uint64_t a1, uint64_t a2)
{
  v2 = sub_25A9988C8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25A901C90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65756C6176;
  if (v2 != 1)
  {
    v5 = 7894115;
    v4 = 0xE300000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6563696C73;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x65756C6176;
  if (*a2 != 1)
  {
    v8 = 7894115;
    v3 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6563696C73;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A901D74()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A901E08(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A901E88(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

unint64_t sub_25A901F18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25A903168(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25A901F48(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65756C6176;
  if (v2 != 1)
  {
    v5 = 7894115;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6563696C73;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25A901F98()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 7894115;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6563696C73;
  }
}

unint64_t sub_25A901FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25A903168(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25A90200C(uint64_t a1)
{
  v2 = sub_25A902FFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A902048(uint64_t a1)
{
  v2 = sub_25A902FFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A9020D0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04D98, "l1\a");
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A902FFC();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for Subscript();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 40) = sub_25A910D90(v8, 0);
    *(v1 + 48) = v10;
    *(v1 + 56) = sub_25A910D90(v8, 1);
    *(v1 + 64) = v11;
    v14 = 2;
    sub_25A872ED0();
    sub_25A998938();
    *(v1 + 72) = v13[0];
    sub_25A872F24(a1, v13);
    v3 = sub_25A8963D8(v13);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A902344@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = *(v1 + 48);
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v1 + 32);
  v10 = *(v6 + 48);
  swift_unknownObjectRetain();
  v10(Strong, v9, ObjectType, v6);
  swift_unknownObjectRelease();
  v11 = *(v1 + 64);
  v12 = swift_getObjectType();
  v13 = swift_unknownObjectWeakLoadStrong();
  v14 = *(v1 + 32);
  v15 = *(v11 + 48);
  swift_unknownObjectRetain();
  v15(v13, v14, v12, v11);
  swift_unknownObjectRelease();
  v16 = *(v1 + 48);
  v17 = swift_getObjectType();
  v18 = *(v16 + 64);
  swift_unknownObjectRetain();
  v18(&v76, v17, v16);
  if (v3)
  {
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  sub_25A91185C(&v73);
  sub_25A872CE0(&v76);
  if (*(&v74 + 1))
  {
    sub_25A872D74(&v73, v80);
    sub_25A92D814(v80, v79);
    if (*(v1 + 72))
    {
      if (*(v1 + 72) != 1)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v79);
        result = __swift_destroy_boxed_opaque_existential_0Tm(v80);
        *(a1 + 32) = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        return result;
      }

      v20 = *(v1 + 64);
      v21 = swift_getObjectType();
      v22 = *(v20 + 64);
      swift_unknownObjectRetain();
      v22(&v71, v21, v20);
      swift_unknownObjectRelease();
      sub_25A911910(&v73);
      sub_25A872CE0(&v71);
      if (*(&v74 + 1))
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v80);
        sub_25A87817C(&v73, &v76);
        *(a1 + 24) = &type metadata for Store;
        v23 = swift_allocObject();
        *a1 = v23;
        sub_25A87817C(&v76, v23 + 16);
        result = sub_25A872D74(v79, (v23 + 56));
        *(a1 + 32) = 0;
        return result;
      }

      sub_25A878194(&v73, &qword_27FA04C88, &unk_25A9FA8A0);
      if (qword_27FA043C0 != -1)
      {
        swift_once();
      }

      v40 = sub_25A997BD8();
      __swift_project_value_buffer(v40, qword_27FA0FCE8);
      swift_retain_n();
      v41 = sub_25A997BB8();
      v42 = sub_25A9983A8();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *&v76 = v44;
        *v43 = 136315394;
        v45 = *(v1 + 56);
        swift_getObjectType();
        *&v73 = v45;
        v46 = sub_25A998968();
        v48 = sub_25A98CC90(v46, v47, &v76);

        *(v43 + 4) = v48;
        *(v43 + 12) = 2048;
        v49 = *(v4 + 16);

        *(v43 + 14) = v49;

        _os_log_impl(&dword_25A232000, v41, v42, "Subscript> Value %s is not Storable. lino %ld", v43, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v44);
        MEMORY[0x25F852800](v44, -1, -1);
        MEMORY[0x25F852800](v43, -1, -1);
      }

      else
      {
      }

      sub_25A874F54();
      swift_allocError();
      v68 = 13;
      goto LABEL_38;
    }

    v34 = *(v1 + 64);
    v35 = swift_getObjectType();
    v36 = *(v34 + 64);
    swift_unknownObjectRetain();
    v36(&v76, v35, v34);
    swift_unknownObjectRelease();
    sub_25A91185C(&v73);
    sub_25A872CE0(&v76);
    if (!*(&v74 + 1))
    {
      sub_25A878194(&v73, &qword_27FA04458, &unk_25A9F7FB0);
      if (qword_27FA043C0 != -1)
      {
        swift_once();
      }

      v50 = sub_25A997BD8();
      __swift_project_value_buffer(v50, qword_27FA0FCE8);
      swift_retain_n();
      v51 = sub_25A997BB8();
      v52 = sub_25A9983A8();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *&v76 = v54;
        *v53 = 136315394;
        v55 = *(v1 + 56);
        swift_getObjectType();
        *&v73 = v55;
        v56 = sub_25A998968();
        v58 = sub_25A98CC90(v56, v57, &v76);

        *(v53 + 4) = v58;
        *(v53 + 12) = 2048;
        v59 = *(v4 + 16);

        *(v53 + 14) = v59;

        _os_log_impl(&dword_25A232000, v51, v52, "Subscript> Invalid value %s. lino %ld", v53, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v54);
        MEMORY[0x25F852800](v54, -1, -1);
        MEMORY[0x25F852800](v53, -1, -1);
      }

      else
      {
      }

      sub_25A874F54();
      swift_allocError();
      v68 = 25;
LABEL_38:
      *v67 = v68;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0Tm(v79);
      return __swift_destroy_boxed_opaque_existential_0Tm(v80);
    }

    sub_25A872D74(&v73, &v71);
    sub_25A87500C(&v71, v70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04558, &qword_25A9F8700);
    if (swift_dynamicCast())
    {
      sub_25A87817C(&v73, &v76);
      v38 = v77;
      v39 = v78;
      __swift_project_boxed_opaque_existential_1(&v76, v77);
      (*(v39 + 8))(&v73, v79, v38, v39);
      sub_25A92DE50(&v73, a1);
      sub_25A878194(&v73, &qword_27FA04458, &unk_25A9F7FB0);
      __swift_destroy_boxed_opaque_existential_0Tm(v79);
      __swift_destroy_boxed_opaque_existential_0Tm(v80);
      __swift_destroy_boxed_opaque_existential_0Tm(&v71);
      *(a1 + 32) = 0;
      return __swift_destroy_boxed_opaque_existential_0Tm(&v76);
    }

    else
    {
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
      sub_25A878194(&v73, &qword_27FA04560, &unk_25A9F8708);
      sub_25A87500C(v79, &v76);
      if ((swift_dynamicCast() & 1) != 0 && (__swift_project_boxed_opaque_existential_1(&v71, v72), v60 = sub_25A9989D8(), v61 = sub_25A997E18(), , v62 = [v60 valueForKey_], v61, swift_unknownObjectRelease(), v62))
      {
        sub_25A9984F8();
        swift_unknownObjectRelease();
        sub_25A92D814(&v76, a1);
        __swift_destroy_boxed_opaque_existential_0Tm(&v76);
        __swift_destroy_boxed_opaque_existential_0Tm(v79);
        __swift_destroy_boxed_opaque_existential_0Tm(v80);
        result = __swift_destroy_boxed_opaque_existential_0Tm(&v71);
        *(a1 + 32) = 0;
      }

      else
      {
        if (qword_27FA043C0 != -1)
        {
          swift_once();
        }

        v63 = sub_25A997BD8();
        __swift_project_value_buffer(v63, qword_27FA0FCE8);

        v64 = sub_25A997BB8();
        v65 = sub_25A9983A8();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 134217984;
          *(v66 + 4) = *(v4 + 16);

          _os_log_impl(&dword_25A232000, v64, v65, "Subscript> Not supported Subscript. lino %ld", v66, 0xCu);
          MEMORY[0x25F852800](v66, -1, -1);
        }

        else
        {
        }

        sub_25A874F54();
        swift_allocError();
        *v69 = 26;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_0Tm(v79);
        __swift_destroy_boxed_opaque_existential_0Tm(v80);
        return __swift_destroy_boxed_opaque_existential_0Tm(&v71);
      }
    }
  }

  else
  {
    sub_25A878194(&v73, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v24 = sub_25A997BD8();
    __swift_project_value_buffer(v24, qword_27FA0FCE8);
    swift_retain_n();
    v25 = sub_25A997BB8();
    v26 = sub_25A9983A8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v76 = v28;
      *v27 = 136315394;
      v29 = *(v1 + 40);
      swift_getObjectType();
      *&v73 = v29;
      v30 = sub_25A998968();
      v32 = sub_25A98CC90(v30, v31, &v76);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2048;
      v33 = *(v4 + 16);

      *(v27 + 14) = v33;

      _os_log_impl(&dword_25A232000, v25, v26, "Subscript> Invalid slice %s. lino %ld", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x25F852800](v28, -1, -1);
      MEMORY[0x25F852800](v27, -1, -1);
    }

    else
    {
    }

    sub_25A874F54();
    swift_allocError();
    *v37 = 24;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25A902E88()
{
  swift_getObjectType();
  v2 = sub_25A998968();
  MEMORY[0x25F850290](91, 0xE100000000000000);
  swift_getObjectType();
  v0 = sub_25A998968();
  MEMORY[0x25F850290](v0);

  MEMORY[0x25F850290](93, 0xE100000000000000);
  return v2;
}

uint64_t sub_25A902F30()
{
  sub_25A872F88(v0 + 24);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_25A902FBC()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

unint64_t sub_25A902FFC()
{
  result = qword_27FA04DA0;
  if (!qword_27FA04DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04DA0);
  }

  return result;
}

unint64_t sub_25A903064()
{
  result = qword_27FA04DA8;
  if (!qword_27FA04DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04DA8);
  }

  return result;
}

unint64_t sub_25A9030BC()
{
  result = qword_27FA04DB0;
  if (!qword_27FA04DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04DB0);
  }

  return result;
}

unint64_t sub_25A903114()
{
  result = qword_27FA04DB8;
  if (!qword_27FA04DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04DB8);
  }

  return result;
}

unint64_t sub_25A903168(uint64_t a1, uint64_t a2)
{
  v2 = sub_25A9988C8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25A9031B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_25A9031FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25A903250(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656D616E7361;
  if (v2 != 1)
  {
    v4 = 0x6C75646F6D5F7369;
    v3 = 0xE900000000000065;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701667182;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656D616E7361;
  if (*a2 != 1)
  {
    v8 = 0x6C75646F6D5F7369;
    v7 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701667182;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A90334C()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A9033E8(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A903470(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

unint64_t sub_25A903508@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25A9036CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25A903538(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656D616E7361;
  if (v2 != 1)
  {
    v5 = 0x6C75646F6D5F7369;
    v4 = 0xE900000000000065;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701667182;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25A903590()
{
  v1 = 0x656D616E7361;
  if (*v0 != 1)
  {
    v1 = 0x6C75646F6D5F7369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

unint64_t sub_25A9035E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25A9036CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25A90360C(uint64_t a1)
{
  v2 = sub_25A90394C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A903648(uint64_t a1)
{
  v2 = sub_25A90394C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_25A903684@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_25A903718(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

unint64_t sub_25A9036CC(uint64_t a1, uint64_t a2)
{
  v2 = sub_25A9988C8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25A903718@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04DC0, &unk_25A9FB470);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A90394C();
  sub_25A998BF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v21 = 0;
  v9 = sub_25A9988F8();
  v11 = v10;
  v17 = v9;
  v20 = 2;
  v18 = sub_25A998908();
  v19 = 1;
  v12 = sub_25A9988F8();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v17;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14;
  *(a2 + 32) = v18 & 1;
  return result;
}

unint64_t sub_25A90394C()
{
  result = qword_27FA04DC8;
  if (!qword_27FA04DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04DC8);
  }

  return result;
}

unint64_t sub_25A9039B4()
{
  result = qword_27FA04DD0;
  if (!qword_27FA04DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04DD0);
  }

  return result;
}

unint64_t sub_25A903A0C()
{
  result = qword_27FA04DD8;
  if (!qword_27FA04DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04DD8);
  }

  return result;
}

unint64_t sub_25A903A64()
{
  result = qword_27FA04DE0;
  if (!qword_27FA04DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04DE0);
  }

  return result;
}

uint64_t sub_25A903AB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x646E617265706FLL;
  }

  else
  {
    v3 = 28783;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x646E617265706FLL;
  }

  else
  {
    v5 = 28783;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
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
    v8 = sub_25A9989E8();
  }

  return v8 & 1;
}

uint64_t sub_25A903B54()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A903BCC(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A903C30(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A903CA4@<X0>(char *a2@<X8>)
{
  v3 = sub_25A9988C8();

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

void sub_25A903D04(uint64_t *a1@<X8>)
{
  v2 = 28783;
  if (*v1)
  {
    v2 = 0x646E617265706FLL;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A903D38()
{
  if (*v0)
  {
    return 0x646E617265706FLL;
  }

  else
  {
    return 28783;
  }
}

uint64_t sub_25A903D68@<X0>(char *a3@<X8>)
{
  v4 = sub_25A9988C8();

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

uint64_t sub_25A903DCC(uint64_t a1)
{
  v2 = sub_25A904BB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A903E08(uint64_t a1)
{
  v2 = sub_25A904BB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A903E90(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04DF0, &unk_25A9FBDA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A904BB0();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for Unary();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v13[0]) = 0;
    v1[7] = sub_25A9988F8();
    v1[8] = v10;
    v1[5] = sub_25A90E6A4(v8, 1);
    v1[6] = v11;
    sub_25A872F24(a1, v13);
    v3 = sub_25A8963D8(v13);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A90409C@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = v1[6];
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = v1[4];
  v10 = *(v6 + 48);
  swift_unknownObjectRetain();
  v10(Strong, v9, ObjectType, v6);
  swift_unknownObjectRelease();
  v12 = v1[7];
  v11 = v1[8];

  v13 = sub_25A904B64(v12, v11);
  switch(v13)
  {
    case 4:
      if (qword_27FA043C0 != -1)
      {
        swift_once();
      }

      v30 = sub_25A997BD8();
      __swift_project_value_buffer(v30, qword_27FA0FCE8);

      v31 = sub_25A997BB8();
      v32 = sub_25A9983A8();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v72[0] = v34;
        *v33 = 136315394;
        v35 = v4[7];
        v36 = v4[8];

        v37 = sub_25A98CC90(v35, v36, v72);

        *(v33 + 4) = v37;
        *(v33 + 12) = 2048;
        *(v33 + 14) = v4[2];

        _os_log_impl(&dword_25A232000, v31, v32, "Unary> Invalid unary operator %s. lino %ld", v33, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        MEMORY[0x25F852800](v34, -1, -1);
        MEMORY[0x25F852800](v33, -1, -1);
      }

      else
      {
      }

      sub_25A874F54();
      swift_allocError();
      v47 = 27;
      break;
    case 2:
      v24 = v4[6];
      v25 = swift_getObjectType();
      v26 = *(v24 + 64);
      swift_unknownObjectRetain();
      v26(v68, v25, v24);
      result = swift_unknownObjectRelease();
      if (v3)
      {
        return result;
      }

      sub_25A911A04(&v69);
      sub_25A872CE0(v68);
      if (v70)
      {
        sub_25A87817C(&v69, v72);
        v27 = v73;
        v28 = v74;
        __swift_project_boxed_opaque_existential_1(v72, v73);
        v29 = (*(v28 + 8))(v27, v28);
        *(a1 + 24) = MEMORY[0x277D839B0];
        *a1 = (v29 & 1) == 0;
        *(a1 + 32) = 0;
        return __swift_destroy_boxed_opaque_existential_0Tm(v72);
      }

      sub_25A878194(&v69, &qword_27FA047E8, &unk_25A9FBF80);
      if (qword_27FA043C0 != -1)
      {
        swift_once();
      }

      v48 = sub_25A997BD8();
      __swift_project_value_buffer(v48, qword_27FA0FCE8);
      swift_retain_n();
      v49 = sub_25A997BB8();
      v50 = sub_25A9983A8();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v72[0] = v52;
        *v51 = 136315394;
        v53 = v4[5];
        swift_getObjectType();
        *&v69 = v53;
        v54 = sub_25A998968();
        v56 = sub_25A98CC90(v54, v55, v72);

        *(v51 + 4) = v56;
        *(v51 + 12) = 2048;
        v57 = v4[2];

        *(v51 + 14) = v57;

        _os_log_impl(&dword_25A232000, v49, v50, "Unary> Operand %s is not Truthiness. lino %ld", v51, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v52);
        MEMORY[0x25F852800](v52, -1, -1);
        MEMORY[0x25F852800](v51, -1, -1);
      }

      else
      {
      }

      sub_25A874F54();
      swift_allocError();
      v47 = 29;
      break;
    case 1:
      v14 = v4[6];
      v15 = swift_getObjectType();
      v16 = *(v14 + 64);
      swift_unknownObjectRetain();
      v16(v68, v15, v14);
      result = swift_unknownObjectRelease();
      if (v3)
      {
        return result;
      }

      sub_25A911B6C(&v69);
      sub_25A872CE0(v68);
      if (v70)
      {
        sub_25A87817C(&v69, v72);
        v18 = v73;
        v19 = v74;
        __swift_project_boxed_opaque_existential_1(v72, v73);
        v20 = *(v19 + 8);
        v70 = v18;
        v71 = v19;
        __swift_allocate_boxed_opaque_existential_0(&v69);
        v20(v18, v19);
        v21 = v70;
        v22 = __swift_project_boxed_opaque_existential_1(&v69, v70);
        *(a1 + 24) = v21;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
        (*(*(v21 - 8) + 16))(boxed_opaque_existential_0, v22, v21);
        *(a1 + 32) = 0;
        __swift_destroy_boxed_opaque_existential_0Tm(&v69);
        return __swift_destroy_boxed_opaque_existential_0Tm(v72);
      }

      sub_25A878194(&v69, &qword_27FA04DE8, &qword_25A9FB5F0);
      if (qword_27FA043C0 != -1)
      {
        swift_once();
      }

      v58 = sub_25A997BD8();
      __swift_project_value_buffer(v58, qword_27FA0FCE8);
      swift_retain_n();
      v59 = sub_25A997BB8();
      v60 = sub_25A9983A8();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v72[0] = v62;
        *v61 = 136315394;
        v63 = v4[5];
        swift_getObjectType();
        *&v69 = v63;
        v64 = sub_25A998968();
        v66 = sub_25A98CC90(v64, v65, v72);

        *(v61 + 4) = v66;
        *(v61 + 12) = 2048;
        v67 = v4[2];

        *(v61 + 14) = v67;

        _os_log_impl(&dword_25A232000, v59, v60, "Unary> Operand %s is not Negationable. lino %ld", v61, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v62);
        MEMORY[0x25F852800](v62, -1, -1);
        MEMORY[0x25F852800](v61, -1, -1);
      }

      else
      {
      }

      sub_25A874F54();
      swift_allocError();
      v47 = 28;
      break;
    default:
      if (qword_27FA043C0 != -1)
      {
        swift_once();
      }

      v38 = sub_25A997BD8();
      __swift_project_value_buffer(v38, qword_27FA0FCE8);

      v39 = sub_25A997BB8();
      v40 = sub_25A9983A8();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v72[0] = v42;
        *v41 = 136315394;
        v43 = v4[7];
        v44 = v4[8];

        v45 = sub_25A98CC90(v43, v44, v72);

        *(v41 + 4) = v45;
        *(v41 + 12) = 2048;
        *(v41 + 14) = v4[2];

        _os_log_impl(&dword_25A232000, v39, v40, "Unary> Unary operator %s not supported yet. lino %ld", v41, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v42);
        MEMORY[0x25F852800](v42, -1, -1);
        MEMORY[0x25F852800](v41, -1, -1);
      }

      else
      {
      }

      sub_25A874F54();
      swift_allocError();
      v47 = 30;
      break;
  }

  *v46 = v47;
  return swift_willThrow();
}

unint64_t sub_25A904990()
{
  v1 = v0;
  v2 = *(v0 + 56);
  v3 = *(v1 + 64);

  result = sub_25A904B64(v2, v3);
  if (result <= 1u)
  {
    if (result)
    {
      v6 = 45;
    }

    else
    {
      v6 = 43;
    }

    v5 = 0xE100000000000000;
    goto LABEL_10;
  }

  if (result == 2)
  {
    v5 = 0xE300000000000000;
    v6 = 7630702;
    goto LABEL_10;
  }

  if (result == 3)
  {
    v5 = 0xE100000000000000;
    v6 = 126;
LABEL_10:
    MEMORY[0x25F850290](v6, v5);

    MEMORY[0x25F850290](32, 0xE100000000000000);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v7 = sub_25A997EB8();
    MEMORY[0x25F850290](v7);

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_25A904AA8()
{
  swift_unknownObjectRelease();
}

uint64_t sub_25A904AD8()
{
  sub_25A872F88(v0 + 24);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_25A904B64(uint64_t a1, uint64_t a2)
{
  v2 = sub_25A9988C8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25A904BB0()
{
  result = qword_27FA04DF8;
  if (!qword_27FA04DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04DF8);
  }

  return result;
}

unint64_t sub_25A904C18()
{
  result = qword_27FA04E00;
  if (!qword_27FA04E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04E00);
  }

  return result;
}

unint64_t sub_25A904C70()
{
  result = qword_27FA04E08;
  if (!qword_27FA04E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04E08);
  }

  return result;
}

unint64_t sub_25A904CC8()
{
  result = qword_27FA04E10;
  if (!qword_27FA04E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04E10);
  }

  return result;
}

uint64_t sub_25A904D1C@<X0>(char *a2@<X8>)
{
  v3 = sub_25A9988C8();

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

uint64_t sub_25A904D7C@<X0>(char *a3@<X8>)
{
  v4 = sub_25A9988C8();

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

uint64_t sub_25A904DE0(uint64_t a1)
{
  v2 = sub_25A905578();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A904E1C(uint64_t a1)
{
  v2 = sub_25A905578();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A904EA4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04E18, "H-\a");
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A905578();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for SetComp();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[5] = sub_25A910D40(v8, 0);
    v1[6] = v10;
    v1[7] = sub_25A94B2EC(v8, 1);
    sub_25A872F24(a1, v12);
    v3 = sub_25A8963D8(v12);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A9050A8@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v6 = sub_25A936284();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = v4[4];
  swift_beginAccess();
  v6[3] = Strong;
  v6[4] = v8;
  swift_unknownObjectRelease();
  v9 = v4[6];
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 48);
  swift_unknownObjectRetain();

  v11(v12, &off_286C11D08, ObjectType, v9);
  swift_unknownObjectRelease();
  v13 = v4[7];
  v14 = *(v13 + 16);
  if (v14)
  {
    v26 = v4;
    v27 = a1;

    v15 = (v13 + 40);
    do
    {
      v16 = *v15;
      v17 = swift_getObjectType();
      v18 = *(v16 + 48);

      swift_unknownObjectRetain();
      v18(v6, &off_286C11D08, v17, v16);
      swift_unknownObjectRelease();
      v15 += 2;
      --v14;
    }

    while (v14);

    v4 = v26;
    v19 = *(v26[7] + 16);
    v29 = MEMORY[0x277D84FA0];
    if (v19)
    {
      v28 = MEMORY[0x277D84F90];
      swift_retain_n();

      sub_25A998748();
      type metadata accessor for Comprehension();
      v20 = 32;
      do
      {
        swift_dynamicCastClassUnconditional();
        swift_unknownObjectRetain();
        sub_25A998718();
        sub_25A998758();
        sub_25A998768();
        sub_25A998728();
        v20 += 16;
        --v19;
      }

      while (v19);
      a1 = v27;
      v21 = v28;
      goto LABEL_11;
    }

    a1 = v27;
  }

  else
  {
    v29 = MEMORY[0x277D84FA0];
  }

  swift_retain_n();

  v21 = MEMORY[0x277D84F90];
LABEL_11:

  sub_25A935230(0, v21, v6, &off_286C11D08, &v29, v4);

  if (v3)
  {
  }

  else
  {

    v23 = v29;
    v24 = type metadata accessor for SharedMutableSet();
    v25 = swift_allocObject();
    *(v25 + 16) = MEMORY[0x277D84FA0];
    swift_beginAccess();
    *(v25 + 16) = v23;
    *(a1 + 24) = v24;

    *a1 = v25;
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t sub_25A905428(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 64);
  swift_unknownObjectRetain();
  v5(v8, ObjectType, v3);
  result = swift_unknownObjectRelease();
  if (!v2)
  {
    sub_25A9117A8(&v9);
    sub_25A872CE0(v8);
    if (*(&v10 + 1))
    {
      v12[0] = v9;
      v12[1] = v10;
      v13 = v11;
      sub_25A874FB0(v12, v8);
      sub_25A98D328(&v9, v8);
      sub_25A8795A0(&v9);
      return sub_25A8795A0(v12);
    }

    else
    {
      sub_25A8961B8(&v9);
      sub_25A874F54();
      swift_allocError();
      *v7 = 108;
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_25A905578()
{
  result = qword_27FA04E20;
  if (!qword_27FA04E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04E20);
  }

  return result;
}

unint64_t sub_25A9055E0()
{
  result = qword_27FA04E28;
  if (!qword_27FA04E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04E28);
  }

  return result;
}

unint64_t sub_25A905638()
{
  result = qword_27FA04E30;
  if (!qword_27FA04E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04E30);
  }

  return result;
}

unint64_t sub_25A905690()
{
  result = qword_27FA04E38;
  if (!qword_27FA04E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04E38);
  }

  return result;
}

uint64_t sub_25A9056E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1936159329;
  if (v2 != 1)
  {
    v4 = 0x7364726F7779656BLL;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E6F6974636E7566;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1936159329;
  if (*a2 != 1)
  {
    v8 = 0x7364726F7779656BLL;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E6F6974636E7566;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A9057D8()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A905874(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A9058FC(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

unint64_t sub_25A905994@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25A9071E4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25A9059C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE400000000000000;
  v5 = 1936159329;
  if (v2 != 1)
  {
    v5 = 0x7364726F7779656BLL;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F6974636E7566;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25A905A1C()
{
  v1 = 1936159329;
  if (*v0 != 1)
  {
    v1 = 0x7364726F7779656BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6974636E7566;
  }
}

unint64_t sub_25A905A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25A9071E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25A905A98(uint64_t a1)
{
  v2 = sub_25A907078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A905AD4(uint64_t a1)
{
  v2 = sub_25A907078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A905B5C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04E58, &unk_25A9FBD90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A907078();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for Call();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[7] = sub_25A90E604(v8, 0);
    v1[8] = v10;
    v1[5] = sub_25A94B174(v8, 1);
    v1[6] = sub_25A94B174(v8, 2);
    sub_25A872F24(a1, v12);
    v3 = sub_25A8963D8(v12);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A905DA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[8];
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = v1[4];
  v6 = *(v2 + 48);
  swift_unknownObjectRetain();
  v6(Strong, v5, ObjectType, v2);
  swift_unknownObjectRelease();
  v84 = v1;
  v7 = v1[5];
  v8 = *(v7 + 16);

  v82 = v8;
  if (v8)
  {
    v9 = 0;
    v10 = (v7 + 40);
    while (v9 < *(v7 + 16))
    {
      ++v9;
      v11 = *v10;
      v12 = swift_getObjectType();
      v13 = swift_unknownObjectWeakLoadStrong();
      v14 = v1[4];
      v15 = *(v11 + 48);
      swift_unknownObjectRetain();
      v15(v13, v14, v12, v11);
      swift_unknownObjectRelease();
      v10 += 2;
      if (v82 == v9)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

LABEL_5:

  v16 = v1[6];
  v17 = *(v16 + 16);

  v83 = v17;
  if (v17)
  {
    v18 = 0;
    v19 = (v16 + 40);
    while (v18 < *(v16 + 16))
    {
      ++v18;
      v20 = *v19;
      v21 = swift_getObjectType();
      v22 = swift_unknownObjectWeakLoadStrong();
      v23 = v1[4];
      v24 = *(v20 + 48);
      swift_unknownObjectRetain();
      v24(v22, v23, v21, v20);
      swift_unknownObjectRelease();
      v19 += 2;
      if (v83 == v18)
      {
        goto LABEL_9;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    v99 = 0;
    v97 = 0u;
    v98 = 0u;
    sub_25A878194(&v97, &qword_27FA04728, &unk_25A9FD740);

    sub_25A874F54();
    swift_allocError();
    *v77 = 23;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0Tm(&v91);
    return __swift_destroy_boxed_opaque_existential_0Tm(v100);
  }

LABEL_9:

  v25 = v1[8];
  v26 = swift_getObjectType();
  v27 = *(v25 + 64);
  swift_unknownObjectRetain();
  v27(&v91, v26, v25);
  if (v80)
  {
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  sub_25A911B80(&v97);
  sub_25A872CE0(&v91);
  if (!*(&v98 + 1))
  {
    sub_25A878194(&v97, &qword_27FA04760, &unk_25A9F9BB0);
    if (qword_27FA043C0 == -1)
    {
LABEL_24:
      v41 = sub_25A997BD8();
      __swift_project_value_buffer(v41, qword_27FA0FCE8);
      swift_retain_n();
      v42 = sub_25A997BB8();
      v43 = sub_25A9983A8();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v100[0] = v45;
        *v44 = 136315394;
        v46 = v84[7];
        swift_getObjectType();
        *&v97 = v46;
        v47 = sub_25A998968();
        v49 = sub_25A98CC90(v47, v48, v100);

        *(v44 + 4) = v49;
        *(v44 + 12) = 2048;
        v50 = v84[2];

        *(v44 + 14) = v50;

        _os_log_impl(&dword_25A232000, v42, v43, "Call> %s is not a Function. line %ld", v44, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v45);
        MEMORY[0x25F852800](v45, -1, -1);
        MEMORY[0x25F852800](v44, -1, -1);
      }

      else
      {
      }

      sub_25A874F54();
      swift_allocError();
      *v74 = 41;
      return swift_willThrow();
    }

LABEL_65:
    swift_once();
    goto LABEL_24;
  }

  sub_25A87817C(&v97, v100);
  v29 = v1;
  v30 = v1[5];
  v31 = *(v30 + 16);
  if (!v31)
  {
    v103 = MEMORY[0x277D84F90];
LABEL_35:
    v56 = v29[6];
    v57 = *(v56 + 16);

    if (!v57)
    {
      v60 = MEMORY[0x277D84F98];
LABEL_58:

      v75 = v101;
      v76 = v102;
      __swift_project_boxed_opaque_existential_1(v100, v101);
      (*(v76 + 16))(&v97, v103, v60, v75, v76);

      sub_25A92D814(&v97, a1);
      __swift_destroy_boxed_opaque_existential_0Tm(&v97);
      *(a1 + 32) = 0;
      return __swift_destroy_boxed_opaque_existential_0Tm(v100);
    }

    v58 = 0;
    v59 = v56 + 40;
    v60 = MEMORY[0x277D84F98];
LABEL_37:
    v78 = v60;
    v61 = (v59 + 16 * v58);
    while (1)
    {
      if (v58 >= *(v56 + 16))
      {
        goto LABEL_64;
      }

      v62 = *v61;
      v63 = swift_getObjectType();
      v64 = *(v62 + 64);
      swift_unknownObjectRetain();
      v64(&v88, v63, v62);
      sub_25A872C84(&v88, &v85);
      if (v87)
      {
        sub_25A872CE0(&v85);
        v87 = v90;
        v85 = v88;
        v86 = v89;
        if (v90 != 1)
        {
          sub_25A872CE0(&v85);
          v91 = 0u;
          v92 = 0u;
          v93 = 0;
LABEL_39:
          swift_unknownObjectRelease();
          sub_25A878194(&v91, &qword_27FA04730, "\\N\a");
          goto LABEL_40;
        }

        v65 = v88;
        v66 = v89;
      }

      else
      {
        sub_25A872CE0(&v88);
        v65 = v85;
        v66 = v86;
      }

      v94 = v65;
      v95 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04740, "bN\a");
      if ((swift_dynamicCast() & 1) == 0)
      {
        v93 = 0;
        v91 = 0u;
        v92 = 0u;
      }

      if (!*(&v92 + 1))
      {
        goto LABEL_39;
      }

      sub_25A87817C(&v91, &v97);
      v67 = *(&v98 + 1);
      v68 = v99;
      __swift_project_boxed_opaque_existential_1(&v97, *(&v98 + 1));
      v69 = (*(v68 + 8))(v67, v68);
      sub_25A906A10(v69);
      v71 = v70;

      if (v71)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v91 = v78;
        sub_25A8F81B4(v71, sub_25A8F793C, 0, isUniquelyReferenced_nonNull_native, &v91);
        swift_unknownObjectRelease();

        v60 = v91;
        __swift_destroy_boxed_opaque_existential_0Tm(&v97);
        v59 = v56 + 40;
        if (v57 - 1 == v58++)
        {
          goto LABEL_58;
        }

        goto LABEL_37;
      }

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0Tm(&v97);
LABEL_40:
      ++v58;
      v61 += 2;
      if (v57 == v58)
      {
        v60 = v78;
        goto LABEL_58;
      }
    }
  }

  v96 = MEMORY[0x277D84F90];

  sub_25A937550(0, v31, 0);
  v32 = 0;
  v33 = v96;
  v34 = (v30 + 40);
  do
  {
    if (v32 >= *(v30 + 16))
    {
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v81 = v33;
    v35 = *v34;
    v36 = swift_getObjectType();
    v37 = *(v35 + 64);
    swift_unknownObjectRetain();
    v37(&v97, v36, v35);
    sub_25A872C84(&v97, &v91);
    if (v93 && (sub_25A872CE0(&v91), sub_25A872C84(&v97, &v91), v93 != 1))
    {
      sub_25A872CE0(&v91);
      *(&v86 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
      v38 = swift_allocObject();
      *&v85 = v38;
      *(v38 + 16) = 0u;
      *(v38 + 32) = 0u;
    }

    else
    {
      v94 = v91;
      v95 = v92;
      sub_25A92DE50(&v94, &v85);
      sub_25A878194(&v94, &qword_27FA04458, &unk_25A9F7FB0);
    }

    sub_25A872CE0(&v97);
    v33 = v81;
    sub_25A92D814(&v85, &v88);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(&v85);
    v96 = v81;
    v40 = *(v81 + 2);
    v39 = *(v81 + 3);
    if (v40 >= v39 >> 1)
    {
      sub_25A937550((v39 > 1), v40 + 1, 1);
      v33 = v96;
    }

    ++v32;
    *(v33 + 2) = v40 + 1;
    sub_25A872D74(&v88, &v33[32 * v40 + 32]);
    v34 += 2;
  }

  while (v31 != v32);

  v29 = v1;
  v51 = *(v1[5] + 16);
  v103 = v33;
  if (!v51)
  {
    goto LABEL_35;
  }

  type metadata accessor for Starred();
  if (!swift_dynamicCastClass() || !*(v33 + 2))
  {
    goto LABEL_34;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_25A8F7A14(v33);
    v52 = *(v33 + 2);
    if (!v52)
    {
      goto LABEL_67;
    }

LABEL_32:
    *(v33 + 2) = v52 - 1;
    v103 = v33;
    sub_25A872D74(&v33[32 * v52], &v91);
    sub_25A87500C(&v91, &v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
    if (!swift_dynamicCast())
    {
      goto LABEL_62;
    }

    v53 = *(&v98 + 1);
    v54 = v99;
    __swift_project_boxed_opaque_existential_1(&v97, *(&v98 + 1));
    v55 = (*(v54 + 8))(v53, v54);
    __swift_destroy_boxed_opaque_existential_0Tm(&v97);
    sub_25A933208(v55);
    __swift_destroy_boxed_opaque_existential_0Tm(&v91);
LABEL_34:
    v29 = v1;
    goto LABEL_35;
  }

  v52 = *(v33 + 2);
  if (v52)
  {
    goto LABEL_32;
  }

LABEL_67:
  __break(1u);

  __break(1u);
  return result;
}

void sub_25A906A10(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04CC8, &unk_25A9FDC30);
    v2 = sub_25A998888();
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

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    sub_25A874FB0(*(a1 + 48) + 40 * v11, v27);
    sub_25A87500C(*(a1 + 56) + 32 * v11, v28 + 8);
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v24[0] = v27[0];
    v24[1] = v27[1];
    sub_25A874FB0(v24, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_25A87500C(v25 + 8, v20);
    sub_25A878194(v24, &qword_27FA04E50, &qword_25AA00630);
    v21 = v18;
    sub_25A872D74(v20, v22);
    v12 = v21;
    sub_25A872D74(v22, v23);
    sub_25A872D74(v23, &v21);
    v13 = sub_25A8F3600(v12, *(&v12 + 1));
    if (v14)
    {
      *(v2[6] + 16 * v13) = v12;
      v8 = v13;

      v9 = (v2[7] + 32 * v8);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      sub_25A872D74(&v21, v9);
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      *(v2[6] + 16 * v13) = v12;
      sub_25A872D74(&v21, (v2[7] + 32 * v13));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = v7;
  }

  sub_25A878194(v24, &qword_27FA04E50, &qword_25AA00630);
}

uint64_t sub_25A906CEC()
{
  swift_getObjectType();
  sub_25A9989B8();
  MEMORY[0x25F850290](40, 0xE100000000000000);
  v1 = *(v0 + 40);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04450, "lT\a");
  v3 = MEMORY[0x25F850440](v1, v2);
  v5 = v4;

  MEMORY[0x25F850290](v3, v5);

  MEMORY[0x25F850290](8236, 0xE200000000000000);

  v7 = MEMORY[0x25F850440](v6, v2);
  v9 = v8;

  MEMORY[0x25F850290](v7, v9);

  return 0;
}

uint64_t sub_25A906E0C()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_25A906E44()
{
  sub_25A872F88(v0 + 24);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_25A906ED8()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_25A906F18(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_25A87500C(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    sub_25A872D74(v20, &v22);

    v17 = *(&v21 + 1);
    v18 = v21;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v17)
    {
      v19 = v1[5];
      *&v20[0] = v18;
      *(&v20[0] + 1) = v17;
      v20[1] = v22;
      v20[2] = v23;
      v19(v20);
      sub_25A878194(v20, &qword_27FA04E48, &qword_25A9FB8F0);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

unint64_t sub_25A907078()
{
  result = qword_27FA04E60;
  if (!qword_27FA04E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04E60);
  }

  return result;
}

unint64_t sub_25A9070E0()
{
  result = qword_27FA04E68;
  if (!qword_27FA04E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04E68);
  }

  return result;
}

unint64_t sub_25A907138()
{
  result = qword_27FA04E70;
  if (!qword_27FA04E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04E70);
  }

  return result;
}

unint64_t sub_25A907190()
{
  result = qword_27FA04E78;
  if (!qword_27FA04E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04E78);
  }

  return result;
}

unint64_t sub_25A9071E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_25A9988C8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25A907230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) == 0))
  {
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
    goto LABEL_11;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, &v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04E88, &qword_25A9FBA48);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    goto LABEL_11;
  }

  v6 = *(&v22 + 1);
  if (!*(&v22 + 1))
  {
LABEL_11:
    v13 = &qword_27FA04E80;
    v14 = &qword_25A9FDCC0;
    v15 = &v21;
    goto LABEL_12;
  }

  v7 = v23;
  __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
  v8 = (*(v7 + 8))(v6, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(&v21);
  if (*(a1 + 16) && (v9 = sub_25A8F3600(1835365481, 0xE400000000000000), (v10 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v9, &v17);
    if (swift_dynamicCast())
    {
      if (*(&v19 + 1))
      {
        v21 = v18;
        v22 = v19;
        v23 = v20;
        v11 = sub_25A9197D0(&v21, v8);

        *(a2 + 24) = MEMORY[0x277D839B0];
        *a2 = v11 & 1;
        return sub_25A8795A0(&v21);
      }
    }

    else
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
    }
  }

  else
  {

    v18 = 0u;
    v19 = 0u;
    v20 = 0;
  }

  v13 = &qword_27FA04610;
  v14 = &qword_25A9FDA50;
  v15 = &v18;
LABEL_12:
  sub_25A878194(v15, v13, v14);
  sub_25A874F54();
  swift_allocError();
  *v16 = 127;
  return swift_willThrow();
}

uint64_t sub_25A907470@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v4, &v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04E88, &qword_25A9FBA48);
    if (swift_dynamicCast())
    {
      v6 = *(&v14 + 1);
      if (*(&v14 + 1))
      {
        v7 = v15;
        __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
        v8 = (*(v7 + 8))(v6, v7);
        __swift_destroy_boxed_opaque_existential_0Tm(&v13);
        v9 = *(v8 + 16);

        a2[3] = MEMORY[0x277D83B88];
        *a2 = v9;
        return result;
      }
    }

    else
    {
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
    }
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
  }

  sub_25A878194(&v13, &qword_27FA04E80, &qword_25A9FDCC0);
  sub_25A874F54();
  swift_allocError();
  *v11 = 127;
  return swift_willThrow();
}

uint64_t sub_25A9075E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) == 0))
  {
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    goto LABEL_10;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, &v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04E88, &qword_25A9FBA48);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    goto LABEL_10;
  }

  v6 = *(&v19 + 1);
  if (!*(&v19 + 1))
  {
LABEL_10:
    sub_25A878194(&v18, &qword_27FA04E80, &qword_25A9FDCC0);
    sub_25A874F54();
    swift_allocError();
    *v16 = 127;
    return swift_willThrow();
  }

  v7 = v20;
  __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
  v8 = (*(v7 + 8))(v6, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(&v18);
  v9 = -1 << *(v8 + 32);
  v10 = ~v9;
  v11 = -v9;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v8 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04E90, &qword_25A9FBA50);
  v14 = swift_allocObject();
  v14[2] = v8;
  v14[3] = v8 + 56;
  v14[4] = v10;
  v14[5] = 0;
  v14[6] = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04E98, &qword_25A9FBA58);
  a2[3] = result;
  *a2 = v14;
  return result;
}

uint64_t sub_25A9077B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_12;
  }

  v4 = sub_25A8F3600(1718379891, 0xE400000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04E88, &qword_25A9FBA48);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    goto LABEL_13;
  }

  v6 = *(&v19 + 1);
  if (*(&v19 + 1))
  {
    v7 = v20;
    __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
    v8 = (*(v7 + 8))(v6, v7);
    __swift_destroy_boxed_opaque_existential_0Tm(&v18);
    if (*(a1 + 16))
    {
      v9 = sub_25A8F3600(0x726568746FLL, 0xE500000000000000);
      if (v10)
      {
        sub_25A87500C(*(a1 + 56) + 32 * v9, v17);
        if (swift_dynamicCast())
        {
          v11 = *(&v19 + 1);
          if (*(&v19 + 1))
          {
            v12 = v20;
            __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
            v13 = (*(v12 + 8))(v11, v12);
            __swift_destroy_boxed_opaque_existential_0Tm(&v18);
            v14 = sub_25A907A00(v8, v13);

            *(a2 + 24) = MEMORY[0x277D839B0];
            *a2 = v14 & 1;
            return result;
          }
        }

        else
        {
          v20 = 0;
          v18 = 0u;
          v19 = 0u;
        }

        goto LABEL_13;
      }
    }

LABEL_12:
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
  }

LABEL_13:
  sub_25A878194(&v18, &qword_27FA04E80, &qword_25A9FDCC0);
  sub_25A874F54();
  swift_allocError();
  *v16 = 127;
  return swift_willThrow();
}

uint64_t sub_25A907A00(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v18 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      sub_25A874FB0(*(result + 48) + 40 * (v10 | (v3 << 6)), v22);
      v20[0] = v22[0];
      v20[1] = v22[1];
      v21 = v23;
      v13 = sub_25A998558();
      v14 = -1 << *(a2 + 32);
      v15 = v13 & ~v14;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        break;
      }

      v16 = ~v14;
      while (1)
      {
        sub_25A874FB0(*(a2 + 48) + 40 * v15, v19);
        v17 = MEMORY[0x25F850890](v19, v20);
        sub_25A8795A0(v19);
        if (v17)
        {
          break;
        }

        v15 = (v15 + 1) & v16;
        if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      sub_25A8795A0(v20);
      result = v18;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    sub_25A8795A0(v20);
    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25A907BBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v4, &v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04E88, &qword_25A9FBA48);
    if (swift_dynamicCast())
    {
      v6 = *(&v15 + 1);
      if (*(&v15 + 1))
      {
        v7 = v16;
        __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
        (*(v7 + 8))(v6, v7);
        __swift_destroy_boxed_opaque_existential_0Tm(&v14);
        v8 = sub_25A998228();
        v10 = v9;

        a2[3] = MEMORY[0x277D837D0];
        *a2 = v8;
        a2[1] = v10;
        return result;
      }
    }

    else
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
  }

  sub_25A878194(&v14, &qword_27FA04E80, &qword_25A9FDCC0);
  sub_25A874F54();
  swift_allocError();
  *v12 = -95;
  return swift_willThrow();
}

uint64_t sub_25A907E24(uint64_t a1, void (*a2)(void))
{
  sub_25A936F00(a1);
  a2();
}

uint64_t sub_25A907E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x277D84F90];
  v9 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  type metadata accessor for Function();
  v10 = swift_allocObject();
  *(v10 + 32) = v8;
  *(v10 + 40) = v8;
  *(v10 + 48) = v8;
  *(v10 + 56) = v8;
  *(v10 + 64) = v8;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = sub_25A92BDB4(v8);
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(v10 + 80);
  v14[2] = *(v10 + 64);
  v14[3] = v11;
  v15 = *(v10 + 96);
  v12 = *(v10 + 48);
  v14[0] = *(v10 + 32);
  v14[1] = v12;
  *(v10 + 32) = a3;
  *(v10 + 40) = v8;
  *(v10 + 48) = v8;
  *(v10 + 56) = v8;
  *(v10 + 64) = v8;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  sub_25A892B80(v14);
  swift_beginAccess();
  *(v10 + 104) = v9;

  *(v10 + 112) = a4;
  *(v10 + 120) = 0;
  return v10;
}

unint64_t sub_25A907F8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04798, &qword_25A9F8E60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25A9F9510;
  strcpy((inited + 32), "__contains__");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = sub_25A907E7C(0x6961746E6F635F5FLL, 0xEC0000005F5F736ELL, &unk_286C0A968, sub_25A907D48);
  *(inited + 56) = 0x5F5F6E656C5F5FLL;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = sub_25A907E7C(0x5F5F6E656C5F5FLL, 0xE700000000000000, &unk_286C0A9A8, sub_25A907D74);
  *(inited + 80) = 0x5F5F726574695F5FLL;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_25A907E7C(0x5F5F726574695F5FLL, 0xE800000000000000, &unk_286C0A9D8, sub_25A907DA0);
  *(inited + 104) = 0x5F5F71655F5FLL;
  *(inited + 112) = 0xE600000000000000;
  *(inited + 120) = sub_25A907E7C(0x5F5F71655F5FLL, 0xE600000000000000, &unk_286C0AA08, sub_25A907DCC);
  *(inited + 128) = 0x5F5F7274735F5FLL;
  *(inited + 136) = 0xE700000000000000;
  *(inited + 144) = sub_25A907E7C(0x5F5F7274735F5FLL, 0xE700000000000000, &unk_286C0AA48, sub_25A907DF8);
  v1 = sub_25A98E67C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047A0, &qword_25A9F8E68);
  swift_arrayDestroy();
  return v1;
}

void sub_25A908174(char a1@<W1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v23 = a1 & 1;
  if (a2 == 1819047278 && a3 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else if (a2 == 7630441 && a3 == 0xE300000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04EA0, &qword_25A9FBA88);
    v8 = sub_25A998928();
    if (!v4)
    {
      *(a4 + 24) = MEMORY[0x277D83B88];
      *a4 = v8;
    }
  }

  else if (a2 == 1819242338 && a3 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04EA0, &qword_25A9FBA88);
    v9 = sub_25A998908();
    if (!v4)
    {
      *(a4 + 24) = MEMORY[0x277D839B0];
      *a4 = v9 & 1;
    }
  }

  else if (a2 == 7500915 && a3 == 0xE300000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04EA0, &qword_25A9FBA88);
    v10 = sub_25A9988F8();
    if (!v4)
    {
      *(a4 + 24) = MEMORY[0x277D837D0];
      *a4 = v10;
      *(a4 + 8) = v11;
    }
  }

  else if (a2 == 0x73697370696C6C65 && a3 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    *(a4 + 24) = &type metadata for Ellipsis;
  }

  else if (a2 == 0x656C62756F64 && a3 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04EA0, &qword_25A9FBA88);
    sub_25A998918();
    if (!v4)
    {
      *(a4 + 24) = MEMORY[0x277D839F8];
      *a4 = v12;
    }
  }

  else if (a2 == 0x7365747962 && a3 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04EA0, &qword_25A9FBA88);
    sub_25A9988F8();
    if (!v4)
    {
      v13 = sub_25A997B18();
      v15 = v14;

      if (v15 >> 60 == 15)
      {
        *a4 = 0u;
        *(a4 + 16) = 0u;
      }

      else
      {
        *(a4 + 24) = MEMORY[0x277CC9318];
        *a4 = v13;
        *(a4 + 8) = v15;
      }
    }
  }

  else
  {
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v16 = sub_25A997BD8();
    __swift_project_value_buffer(v16, qword_27FA0FCE8);

    v17 = sub_25A997BB8();
    v18 = sub_25A9983A8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_25A98CC90(a2, a3, &v22);
      _os_log_impl(&dword_25A232000, v17, v18, "Constant type %s not supported yet", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x25F852800](v20, -1, -1);
      MEMORY[0x25F852800](v19, -1, -1);
    }

    sub_25A874F54();
    swift_allocError();
    *v21 = 42;
    swift_willThrow();
  }
}

uint64_t sub_25A90862C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x70795465756C6176;
  }

  else
  {
    v3 = 0x65756C6176;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x70795465756C6176;
  }

  else
  {
    v5 = 0x65756C6176;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
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
    v8 = sub_25A9989E8();
  }

  return v8 & 1;
}

uint64_t sub_25A9086D4()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A908758(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A9087C8(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A908848@<X0>(char *a2@<X8>)
{
  v3 = sub_25A9988C8();

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

void sub_25A9088A8(uint64_t *a1@<X8>)
{
  v2 = 0x65756C6176;
  if (*v1)
  {
    v2 = 0x70795465756C6176;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A9088E8()
{
  if (*v0)
  {
    return 0x70795465756C6176;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_25A908924@<X0>(char *a3@<X8>)
{
  v4 = sub_25A9988C8();

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

uint64_t sub_25A908988(uint64_t a1)
{
  v2 = sub_25A908DAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A9089C4(uint64_t a1)
{
  v2 = sub_25A908DAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A908A4C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04EA0, &qword_25A9FBA88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A908DAC();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for Constant();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v15[0]) = 1;
    v10 = sub_25A9988F8();
    sub_25A908174(0, v10, v11, v15);

    v13 = v15[1];
    *(v3 + 40) = v15[0];
    *(v3 + 56) = v13;
    sub_25A872F24(a1, v15);
    v9 = sub_25A8963D8(v15);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v9;
}

uint64_t sub_25A908C74@<X0>(uint64_t a1@<X8>)
{
  result = sub_25A8780B8(v1 + 40, a1);
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_25A908CAC()
{
  sub_25A8780B8(v0 + 40, &v3);
  if (v4)
  {
    sub_25A872D74(&v3, v5);
    sub_25A87500C(v5, &v3);
    v1 = sub_25A997EA8();
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  else
  {
    sub_25A872D84(&v3);
    return 7104878;
  }

  return v1;
}

uint64_t sub_25A908D48()
{
  sub_25A872F88(v0 + 24);
  sub_25A872D84(v0 + 40);

  return swift_deallocClassInstance();
}

unint64_t sub_25A908DAC()
{
  result = qword_27FA04EA8;
  if (!qword_27FA04EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04EA8);
  }

  return result;
}

unint64_t sub_25A908E14()
{
  result = qword_27FA04EB0;
  if (!qword_27FA04EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04EB0);
  }

  return result;
}

unint64_t sub_25A908E6C()
{
  result = qword_27FA04EB8;
  if (!qword_27FA04EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04EB8);
  }

  return result;
}

unint64_t sub_25A908EC4()
{
  result = qword_27FA04EC0;
  if (!qword_27FA04EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04EC0);
  }

  return result;
}

uint64_t sub_25A908F18()
{
  sub_25A998B18();
  sub_25A997D58();
  return sub_25A998B38();
}

uint64_t sub_25A908F7C(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();
  return sub_25A998B38();
}

uint64_t sub_25A908FC8@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_25A9988C8();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_25A909048@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_25A9988C8();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_25A9090A0(uint64_t a1)
{
  v2 = sub_25A909654();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A9090DC(uint64_t a1)
{
  v2 = sub_25A909654();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A909164(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04EC8, &qword_25A9FBBF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-1] - v7;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A909654();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    swift_unknownObjectRelease();
    type metadata accessor for Return();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 40) = sub_25A90E71C(v8);
    *(v1 + 48) = v9;
    swift_unknownObjectRelease();
    sub_25A872F24(a1, v12);
    v3 = sub_25A8963D8(v12);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

void sub_25A90932C(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  if (!v1[5] || (v6 = v1[6], ObjectType = swift_getObjectType(), swift_beginAccess(), Strong = swift_unknownObjectWeakLoadStrong(), v9 = v1[4], v10 = *(v6 + 48), swift_unknownObjectRetain(), v10(Strong, v9, ObjectType, v6), swift_unknownObjectRelease(), !v1[5]))
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
LABEL_6:
    *(a1 + 32) = 1;
    return;
  }

  v11 = v1[6];
  v12 = swift_getObjectType();
  v13 = *(v11 + 64);
  swift_unknownObjectRetain();
  v13(v20, v12, v11);
  if (v3)
  {
    swift_unknownObjectRelease();
    return;
  }

  if (!v21 || v21 == 1)
  {
    swift_unknownObjectRelease();
    v14 = v20[1];
    *a1 = v20[0];
    *(a1 + 16) = v14;
    goto LABEL_6;
  }

  if (qword_27FA043C0 != -1)
  {
    swift_once();
  }

  v15 = sub_25A997BD8();
  __swift_project_value_buffer(v15, qword_27FA0FCE8);

  v16 = sub_25A997BB8();
  v17 = sub_25A9983A8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = v4[2];

    _os_log_impl(&dword_25A232000, v16, v17, "Return> Invalid return value. line %ld", v18, 0xCu);
    MEMORY[0x25F852800](v18, -1, -1);
  }

  else
  {
  }

  sub_25A874F54();
  swift_allocError();
  *v19 = 39;
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_25A872CE0(v20);
}

uint64_t sub_25A9095A8()
{
  if (*(v0 + 40))
  {
    swift_getObjectType();
    v1 = sub_25A998968();
    v3 = v2;
  }

  else
  {
    v3 = 0xE400000000000000;
    v1 = 2021161080;
  }

  MEMORY[0x25F850290](v1, v3);

  return 0x206E7275746572;
}

unint64_t sub_25A909654()
{
  result = qword_27FA04ED0;
  if (!qword_27FA04ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04ED0);
  }

  return result;
}

unint64_t sub_25A9096BC()
{
  result = qword_27FA04ED8;
  if (!qword_27FA04ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04ED8);
  }

  return result;
}

unint64_t sub_25A909714()
{
  result = qword_27FA04EE0;
  if (!qword_27FA04EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04EE0);
  }

  return result;
}

unint64_t sub_25A90976C()
{
  result = qword_27FA04EE8;
  if (!qword_27FA04EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04EE8);
  }

  return result;
}

uint64_t sub_25A909838(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA048B8, &unk_25A9FBD80);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  v35 = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_25A896DA0();
  sub_25A9988E8();
  if (!v4)
  {
    LOBYTE(v34) = 0;
    v12 = sub_25A9988F8();
    v15 = v12;
    v16 = v13;
    v17 = v12 == 0x656D6E6769737341 && v13 == 0xEA0000000000746ELL;
    if (v17 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Assignment();
      sub_25A911648(&qword_27FA05140, 255, type metadata accessor for Assignment, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA05148;
      v19 = type metadata accessor for Assignment;
LABEL_10:
      v20 = v19;
      v21 = 255;
LABEL_11:
      sub_25A911648(v18, v21, v20, &unk_25A9F90D0);
      return v8;
    }

    v22 = v15 == 0x7069726373627553 && v16 == 0xE900000000000074;
    if (v22 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Subscript();
      sub_25A911648(&qword_27FA05130, 255, type metadata accessor for Subscript, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA05138;
      v19 = type metadata accessor for Subscript;
      goto LABEL_10;
    }

    v23 = v15 == 0x6563696F6843 && v16 == 0xE600000000000000;
    if (v23 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Choice();
      sub_25A911648(&qword_27FA05120, 255, type metadata accessor for Choice, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA05128;
      v19 = type metadata accessor for Choice;
      goto LABEL_10;
    }

    v24 = v15 == 0x746E6174736E6F43 && v16 == 0xE800000000000000;
    if (v24 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Constant();
      sub_25A911648(&qword_27FA05110, 255, type metadata accessor for Constant, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA05118;
      v19 = type metadata accessor for Constant;
      goto LABEL_10;
    }

    if (v15 == 1751343429 && v16 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Each();
      sub_25A911648(&qword_27FA05100, 255, type metadata accessor for Each, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA05108;
      v19 = type metadata accessor for Each;
      goto LABEL_10;
    }

    if (v15 == 0x426C61636978654CLL && v16 == 0xEC0000006B636F6CLL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for LexicalBlock();
      sub_25A911648(&qword_27FA04A18, 255, type metadata accessor for LexicalBlock, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA050F8;
      v19 = type metadata accessor for LexicalBlock;
      goto LABEL_10;
    }

    if (v15 == 0x6E7275746552 && v16 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Return();
      sub_25A911648(&qword_27FA050E8, 255, type metadata accessor for Return, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA050F0;
      v19 = type metadata accessor for Return;
      goto LABEL_10;
    }

    if (v15 == 0x73697261706D6F43 && v16 == 0xEA00000000006E6FLL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Comparison();
      sub_25A911648(&qword_27FA050D8, 255, type metadata accessor for Comparison, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA050E0;
      v19 = type metadata accessor for Comparison;
      goto LABEL_10;
    }

    if (v15 == 0x704F6E6942 && v16 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for BinOp();
      sub_25A911648(&qword_27FA050C8, 255, type metadata accessor for BinOp, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA050D0;
      v19 = type metadata accessor for BinOp;
      goto LABEL_10;
    }

    if (v15 == 1819042115 && v16 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Call();
      sub_25A911648(&qword_27FA050B8, 255, type metadata accessor for Call, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA050C0;
      v19 = type metadata accessor for Call;
      goto LABEL_10;
    }

    if (v15 == 1701667150 && v16 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Name();
      sub_25A911648(&qword_27FA050A8, 255, type metadata accessor for Name, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA050B0;
      v19 = type metadata accessor for Name;
      goto LABEL_10;
    }

    if (v15 == 0x7475626972747441 && v16 == 0xE900000000000065 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Attribute();
      sub_25A911648(&qword_27FA05098, 255, type metadata accessor for Attribute, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA050A0;
      v19 = type metadata accessor for Attribute;
      goto LABEL_10;
    }

    if (v15 == 0x64726F7779654BLL && v16 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Keyword();
      sub_25A911648(&qword_27FA05088, 255, type metadata accessor for Keyword, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA05090;
      v19 = type metadata accessor for Keyword;
      goto LABEL_10;
    }

    if (v15 == 0x7375656870726F4DLL && v16 == 0xED00007961727241 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for MorpheusArray();
      sub_25A911648(&qword_27FA05078, 255, type metadata accessor for MorpheusArray, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA05080;
      v19 = type metadata accessor for MorpheusArray;
      goto LABEL_10;
    }

    if (v15 == 0x7375656870726F4DLL && v16 == 0xED0000656C707554 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for MorpheusTuple();
      sub_25A911648(&qword_27FA05068, 255, type metadata accessor for MorpheusTuple, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &qword_27FA05070;
      v19 = type metadata accessor for MorpheusTuple;
      goto LABEL_10;
    }

    if (v15 == 0x7375656870726F4DLL && v16 == 0xEC00000074636944 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for MorpheusDict();
      sub_25A911648(&qword_27FA05058, 255, type metadata accessor for MorpheusDict, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA05060;
      v19 = type metadata accessor for MorpheusDict;
      goto LABEL_10;
    }

    if (v15 == 0x7375656870726F4DLL && v16 == 0xED00006563696C53 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for MorpheusSlice();
      sub_25A911648(&qword_27FA05048, 255, type metadata accessor for MorpheusSlice, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA05050;
      v19 = type metadata accessor for MorpheusSlice;
      goto LABEL_10;
    }

    if (v15 == 0x6E6F6974636E7546 && v16 == 0xEB00000000666544 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for FunctionDef();
      sub_25A911648(&qword_27FA05038, 255, type metadata accessor for FunctionDef, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA05040;
      v19 = type metadata accessor for FunctionDef;
      goto LABEL_10;
    }

    if (v15 == 0x6665447373616C43 && v16 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for ClassDef();
      sub_25A911648(&qword_27FA05028, 255, type metadata accessor for ClassDef, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA05030;
      v19 = type metadata accessor for ClassDef;
      goto LABEL_10;
    }

    if (v15 == 0x7972616E55 && v16 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Unary();
      sub_25A911648(&qword_27FA05018, 255, type metadata accessor for Unary, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA05020;
      v19 = type metadata accessor for Unary;
      goto LABEL_10;
    }

    if (v15 == 0x6573696152 && v16 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Raise();
      sub_25A911648(&qword_27FA05008, 255, type metadata accessor for Raise, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA05010;
      v19 = type metadata accessor for Raise;
      goto LABEL_10;
    }

    if (v15 == 0x745364656E696F4ALL && v16 == 0xE900000000000072 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for JoinedStr();
      sub_25A911648(&qword_27FA04FF8, 255, type metadata accessor for JoinedStr, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA05000;
      v19 = type metadata accessor for JoinedStr;
      goto LABEL_10;
    }

    if (v15 == 0x657474616D726F46 && v16 == 0xEE0065756C615664 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for FormattedValue();
      sub_25A911648(&qword_27FA04FE8, v25, type metadata accessor for FormattedValue, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04FF0;
      v20 = type metadata accessor for FormattedValue;
      goto LABEL_11;
    }

    if (v15 == 0x704F6C6F6F42 && v16 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for BoolOp();
      sub_25A911648(&qword_27FA04FD8, 255, type metadata accessor for BoolOp, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04FE0;
      v19 = type metadata accessor for BoolOp;
      goto LABEL_10;
    }

    if (v15 == 0x65756E69746E6F43 && v16 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Continue();
      sub_25A911648(&qword_27FA04FC8, 255, type metadata accessor for Continue, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04FD0;
      v19 = type metadata accessor for Continue;
      goto LABEL_10;
    }

    if (v15 == 0x6B61657242 && v16 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Break();
      sub_25A911648(&qword_27FA04FB8, 255, type metadata accessor for Break, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04FC0;
      v19 = type metadata accessor for Break;
      goto LABEL_10;
    }

    if (v15 == 0x65686572706D6F43 && v16 == 0xED00006E6F69736ELL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Comprehension();
      sub_25A911648(&qword_27FA04FA8, 255, type metadata accessor for Comprehension, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04FB0;
      v19 = type metadata accessor for Comprehension;
      goto LABEL_10;
    }

    if (v15 == 0x706D6F437473694CLL && v16 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for ListComp();
      sub_25A911648(&qword_27FA04F98, 255, type metadata accessor for ListComp, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04FA0;
      v19 = type metadata accessor for ListComp;
      goto LABEL_10;
    }

    if (v15 == 0x706D6F43746553 && v16 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for SetComp();
      sub_25A911648(&qword_27FA04F88, 255, type metadata accessor for SetComp, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04F90;
      v19 = type metadata accessor for SetComp;
      goto LABEL_10;
    }

    if (v15 == 0x706D6F4374636944 && v16 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for DictComp();
      sub_25A911648(&qword_27FA04F78, 255, type metadata accessor for DictComp, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04F80;
      v19 = type metadata accessor for DictComp;
      goto LABEL_10;
    }

    if (v15 == 0x64657272617453 && v16 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Starred();
      sub_25A911648(&qword_27FA04F68, 255, type metadata accessor for Starred, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04F70;
      v19 = type metadata accessor for Starred;
      goto LABEL_10;
    }

    if (v15 == 0x656C696857 && v16 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for While();
      sub_25A911648(&qword_27FA04F58, 255, type metadata accessor for While, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04F60;
      v19 = type metadata accessor for While;
      goto LABEL_10;
    }

    if (v15 == 0x6769737341677541 && v16 == 0xE90000000000006ELL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for AugAssign();
      sub_25A911648(&qword_27FA04F48, 255, type metadata accessor for AugAssign, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04F50;
      v19 = type metadata accessor for AugAssign;
      goto LABEL_10;
    }

    if (v15 == 0x74726F706D49 && v16 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Import();
      sub_25A911648(&qword_27FA04F38, 255, type metadata accessor for Import, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04F40;
      v19 = type metadata accessor for Import;
      goto LABEL_10;
    }

    if (v15 == 0x724674726F706D49 && v16 == 0xEA00000000006D6FLL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for ImportFrom();
      sub_25A911648(&qword_27FA04F28, 255, type metadata accessor for ImportFrom, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04F30;
      v19 = type metadata accessor for ImportFrom;
      goto LABEL_10;
    }

    if (v15 == 0x656C75646F4DLL && v16 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for ModuleOp();
      sub_25A911648(&qword_27FA04BE8, 255, type metadata accessor for ModuleOp, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04F20;
      v19 = type metadata accessor for ModuleOp;
      goto LABEL_10;
    }

    if (v15 == 1936941392 && v16 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Pass();
      sub_25A911648(&qword_27FA04F10, 255, type metadata accessor for Pass, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04F18;
      v19 = type metadata accessor for Pass;
      goto LABEL_10;
    }

    if (v15 == 0x696F706B61657242 && v16 == 0xEA0000000000746ELL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Breakpoint();
      sub_25A911648(&qword_27FA04F00, 255, type metadata accessor for Breakpoint, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04F08;
      v19 = type metadata accessor for Breakpoint;
      goto LABEL_10;
    }

    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v26 = sub_25A997BD8();
    __swift_project_value_buffer(v26, qword_27FA0FCE8);

    v27 = sub_25A997BB8();
    v28 = sub_25A9983A8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34 = v30;
      *v29 = 136315138;
      v31 = sub_25A98CC90(v15, v16, &v34);

      *(v29 + 4) = v31;
      _os_log_impl(&dword_25A232000, v27, v28, "Operation %s not supported yet", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x25F852800](v30, -1, -1);
      MEMORY[0x25F852800](v29, -1, -1);
    }

    else
    {
    }

    sub_25A874F54();
    swift_allocError();
    *v32 = 43;
    swift_willThrow();
    (*(v9 + 8))(v11, v8);
  }

  return v8;
}

uint64_t sub_25A90BEE4(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA048B8, &unk_25A9FBD80);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  v35 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_25A896DA0();
  sub_25A9988E8();
  if (!v4)
  {
    LOBYTE(v34) = 0;
    v12 = sub_25A9988F8();
    v15 = v12;
    v16 = v13;
    v17 = v12 == 0x656D6E6769737341 && v13 == 0xEA0000000000746ELL;
    if (v17 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Assignment();
      sub_25A911648(&qword_27FA05140, 255, type metadata accessor for Assignment, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA05148;
      v19 = type metadata accessor for Assignment;
LABEL_10:
      v20 = v19;
      v21 = 255;
LABEL_11:
      sub_25A911648(v18, v21, v20, &unk_25A9F90D0);
      return v8;
    }

    v22 = v15 == 0x7069726373627553 && v16 == 0xE900000000000074;
    if (v22 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Subscript();
      sub_25A911648(&qword_27FA05130, 255, type metadata accessor for Subscript, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA05138;
      v19 = type metadata accessor for Subscript;
      goto LABEL_10;
    }

    v23 = v15 == 0x6563696F6843 && v16 == 0xE600000000000000;
    if (v23 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Choice();
      sub_25A911648(&qword_27FA05120, 255, type metadata accessor for Choice, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA05128;
      v19 = type metadata accessor for Choice;
      goto LABEL_10;
    }

    v24 = v15 == 0x746E6174736E6F43 && v16 == 0xE800000000000000;
    if (v24 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Constant();
      sub_25A911648(&qword_27FA05110, 255, type metadata accessor for Constant, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA05118;
      v19 = type metadata accessor for Constant;
      goto LABEL_10;
    }

    if (v15 == 1751343429 && v16 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Each();
      sub_25A911648(&qword_27FA05100, 255, type metadata accessor for Each, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA05108;
      v19 = type metadata accessor for Each;
      goto LABEL_10;
    }

    if (v15 == 0x426C61636978654CLL && v16 == 0xEC0000006B636F6CLL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for LexicalBlock();
      sub_25A911648(&qword_27FA04A18, 255, type metadata accessor for LexicalBlock, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA050F8;
      v19 = type metadata accessor for LexicalBlock;
      goto LABEL_10;
    }

    if (v15 == 0x6E7275746552 && v16 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Return();
      sub_25A911648(&qword_27FA050E8, 255, type metadata accessor for Return, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA050F0;
      v19 = type metadata accessor for Return;
      goto LABEL_10;
    }

    if (v15 == 0x73697261706D6F43 && v16 == 0xEA00000000006E6FLL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Comparison();
      sub_25A911648(&qword_27FA050D8, 255, type metadata accessor for Comparison, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA050E0;
      v19 = type metadata accessor for Comparison;
      goto LABEL_10;
    }

    if (v15 == 0x704F6E6942 && v16 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for BinOp();
      sub_25A911648(&qword_27FA050C8, 255, type metadata accessor for BinOp, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA050D0;
      v19 = type metadata accessor for BinOp;
      goto LABEL_10;
    }

    if (v15 == 1819042115 && v16 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Call();
      sub_25A911648(&qword_27FA050B8, 255, type metadata accessor for Call, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA050C0;
      v19 = type metadata accessor for Call;
      goto LABEL_10;
    }

    if (v15 == 1701667150 && v16 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Name();
      sub_25A911648(&qword_27FA050A8, 255, type metadata accessor for Name, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA050B0;
      v19 = type metadata accessor for Name;
      goto LABEL_10;
    }

    if (v15 == 0x7475626972747441 && v16 == 0xE900000000000065 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Attribute();
      sub_25A911648(&qword_27FA05098, 255, type metadata accessor for Attribute, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA050A0;
      v19 = type metadata accessor for Attribute;
      goto LABEL_10;
    }

    if (v15 == 0x64726F7779654BLL && v16 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Keyword();
      sub_25A911648(&qword_27FA05088, 255, type metadata accessor for Keyword, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA05090;
      v19 = type metadata accessor for Keyword;
      goto LABEL_10;
    }

    if (v15 == 0x7375656870726F4DLL && v16 == 0xED00007961727241 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for MorpheusArray();
      sub_25A911648(&qword_27FA05078, 255, type metadata accessor for MorpheusArray, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA05080;
      v19 = type metadata accessor for MorpheusArray;
      goto LABEL_10;
    }

    if (v15 == 0x7375656870726F4DLL && v16 == 0xED0000656C707554 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for MorpheusTuple();
      sub_25A911648(&qword_27FA05068, 255, type metadata accessor for MorpheusTuple, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &qword_27FA05070;
      v19 = type metadata accessor for MorpheusTuple;
      goto LABEL_10;
    }

    if (v15 == 0x7375656870726F4DLL && v16 == 0xEC00000074636944 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for MorpheusDict();
      sub_25A911648(&qword_27FA05058, 255, type metadata accessor for MorpheusDict, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA05060;
      v19 = type metadata accessor for MorpheusDict;
      goto LABEL_10;
    }

    if (v15 == 0x7375656870726F4DLL && v16 == 0xED00006563696C53 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for MorpheusSlice();
      sub_25A911648(&qword_27FA05048, 255, type metadata accessor for MorpheusSlice, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA05050;
      v19 = type metadata accessor for MorpheusSlice;
      goto LABEL_10;
    }

    if (v15 == 0x6E6F6974636E7546 && v16 == 0xEB00000000666544 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for FunctionDef();
      sub_25A911648(&qword_27FA05038, 255, type metadata accessor for FunctionDef, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA05040;
      v19 = type metadata accessor for FunctionDef;
      goto LABEL_10;
    }

    if (v15 == 0x6665447373616C43 && v16 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for ClassDef();
      sub_25A911648(&qword_27FA05028, 255, type metadata accessor for ClassDef, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA05030;
      v19 = type metadata accessor for ClassDef;
      goto LABEL_10;
    }

    if (v15 == 0x7972616E55 && v16 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Unary();
      sub_25A911648(&qword_27FA05018, 255, type metadata accessor for Unary, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA05020;
      v19 = type metadata accessor for Unary;
      goto LABEL_10;
    }

    if (v15 == 0x6573696152 && v16 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Raise();
      sub_25A911648(&qword_27FA05008, 255, type metadata accessor for Raise, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA05010;
      v19 = type metadata accessor for Raise;
      goto LABEL_10;
    }

    if (v15 == 0x745364656E696F4ALL && v16 == 0xE900000000000072 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for JoinedStr();
      sub_25A911648(&qword_27FA04FF8, 255, type metadata accessor for JoinedStr, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA05000;
      v19 = type metadata accessor for JoinedStr;
      goto LABEL_10;
    }

    if (v15 == 0x657474616D726F46 && v16 == 0xEE0065756C615664 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for FormattedValue();
      sub_25A911648(&qword_27FA04FE8, v25, type metadata accessor for FormattedValue, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04FF0;
      v20 = type metadata accessor for FormattedValue;
      goto LABEL_11;
    }

    if (v15 == 0x704F6C6F6F42 && v16 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for BoolOp();
      sub_25A911648(&qword_27FA04FD8, 255, type metadata accessor for BoolOp, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04FE0;
      v19 = type metadata accessor for BoolOp;
      goto LABEL_10;
    }

    if (v15 == 0x65756E69746E6F43 && v16 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Continue();
      sub_25A911648(&qword_27FA04FC8, 255, type metadata accessor for Continue, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04FD0;
      v19 = type metadata accessor for Continue;
      goto LABEL_10;
    }

    if (v15 == 0x6B61657242 && v16 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Break();
      sub_25A911648(&qword_27FA04FB8, 255, type metadata accessor for Break, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04FC0;
      v19 = type metadata accessor for Break;
      goto LABEL_10;
    }

    if (v15 == 0x65686572706D6F43 && v16 == 0xED00006E6F69736ELL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Comprehension();
      sub_25A911648(&qword_27FA04FA8, 255, type metadata accessor for Comprehension, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04FB0;
      v19 = type metadata accessor for Comprehension;
      goto LABEL_10;
    }

    if (v15 == 0x706D6F437473694CLL && v16 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for ListComp();
      sub_25A911648(&qword_27FA04F98, 255, type metadata accessor for ListComp, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04FA0;
      v19 = type metadata accessor for ListComp;
      goto LABEL_10;
    }

    if (v15 == 0x706D6F43746553 && v16 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for SetComp();
      sub_25A911648(&qword_27FA04F88, 255, type metadata accessor for SetComp, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04F90;
      v19 = type metadata accessor for SetComp;
      goto LABEL_10;
    }

    if (v15 == 0x706D6F4374636944 && v16 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for DictComp();
      sub_25A911648(&qword_27FA04F78, 255, type metadata accessor for DictComp, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04F80;
      v19 = type metadata accessor for DictComp;
      goto LABEL_10;
    }

    if (v15 == 0x64657272617453 && v16 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Starred();
      sub_25A911648(&qword_27FA04F68, 255, type metadata accessor for Starred, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04F70;
      v19 = type metadata accessor for Starred;
      goto LABEL_10;
    }

    if (v15 == 0x656C696857 && v16 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for While();
      sub_25A911648(&qword_27FA04F58, 255, type metadata accessor for While, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04F60;
      v19 = type metadata accessor for While;
      goto LABEL_10;
    }

    if (v15 == 0x6769737341677541 && v16 == 0xE90000000000006ELL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for AugAssign();
      sub_25A911648(&qword_27FA04F48, 255, type metadata accessor for AugAssign, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04F50;
      v19 = type metadata accessor for AugAssign;
      goto LABEL_10;
    }

    if (v15 == 0x74726F706D49 && v16 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Import();
      sub_25A911648(&qword_27FA04F38, 255, type metadata accessor for Import, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04F40;
      v19 = type metadata accessor for Import;
      goto LABEL_10;
    }

    if (v15 == 0x724674726F706D49 && v16 == 0xEA00000000006D6FLL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for ImportFrom();
      sub_25A911648(&qword_27FA04F28, 255, type metadata accessor for ImportFrom, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04F30;
      v19 = type metadata accessor for ImportFrom;
      goto LABEL_10;
    }

    if (v15 == 0x656C75646F4DLL && v16 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for ModuleOp();
      sub_25A911648(&qword_27FA04BE8, 255, type metadata accessor for ModuleOp, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04F20;
      v19 = type metadata accessor for ModuleOp;
      goto LABEL_10;
    }

    if (v15 == 1936941392 && v16 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Pass();
      sub_25A911648(&qword_27FA04F10, 255, type metadata accessor for Pass, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04F18;
      v19 = type metadata accessor for Pass;
      goto LABEL_10;
    }

    if (v15 == 0x696F706B61657242 && v16 == 0xEA0000000000746ELL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Breakpoint();
      sub_25A911648(&qword_27FA04F00, 255, type metadata accessor for Breakpoint, &unk_25A9F90EC);
      sub_25A998938();
      (*(v9 + 8))(v11, v8);
      v8 = v34;
      v18 = &unk_27FA04F08;
      v19 = type metadata accessor for Breakpoint;
      goto LABEL_10;
    }

    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v26 = sub_25A997BD8();
    __swift_project_value_buffer(v26, qword_27FA0FCE8);

    v27 = sub_25A997BB8();
    v28 = sub_25A9983A8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34 = v30;
      *v29 = 136315138;
      v31 = sub_25A98CC90(v15, v16, &v34);

      *(v29 + 4) = v31;
      _os_log_impl(&dword_25A232000, v27, v28, "Operation %s not supported yet", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x25F852800](v30, -1, -1);
      MEMORY[0x25F852800](v29, -1, -1);
    }

    else
    {
    }

    sub_25A874F54();
    swift_allocError();
    *v32 = 43;
    swift_willThrow();
    (*(v9 + 8))(v11, v8);
  }

  return v8;
}

uint64_t sub_25A90E744(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA048B8, &unk_25A9FBD80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_25A896DA0();
  sub_25A9988E8();
  if (!v3)
  {
    LOBYTE(v33) = 0;
    v10 = sub_25A9988F8();
    v13 = v10;
    v14 = v11;
    v15 = v10 == 0x656D6E6769737341 && v11 == 0xEA0000000000746ELL;
    if (v15 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Assignment();
      sub_25A911648(&qword_27FA05140, 255, type metadata accessor for Assignment, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA05148;
      v17 = type metadata accessor for Assignment;
LABEL_10:
      v18 = v17;
      v19 = 255;
LABEL_11:
      sub_25A911648(v16, v19, v18, &unk_25A9F90D0);
      return v6;
    }

    v20 = v13 == 0x7069726373627553 && v14 == 0xE900000000000074;
    if (v20 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Subscript();
      sub_25A911648(&qword_27FA05130, 255, type metadata accessor for Subscript, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA05138;
      v17 = type metadata accessor for Subscript;
      goto LABEL_10;
    }

    v21 = v13 == 0x6563696F6843 && v14 == 0xE600000000000000;
    if (v21 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Choice();
      sub_25A911648(&qword_27FA05120, 255, type metadata accessor for Choice, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA05128;
      v17 = type metadata accessor for Choice;
      goto LABEL_10;
    }

    v22 = v13 == 0x746E6174736E6F43 && v14 == 0xE800000000000000;
    if (v22 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Constant();
      sub_25A911648(&qword_27FA05110, 255, type metadata accessor for Constant, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA05118;
      v17 = type metadata accessor for Constant;
      goto LABEL_10;
    }

    v23 = v13 == 1751343429 && v14 == 0xE400000000000000;
    if (v23 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Each();
      sub_25A911648(&qword_27FA05100, 255, type metadata accessor for Each, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA05108;
      v17 = type metadata accessor for Each;
      goto LABEL_10;
    }

    if (v13 == 0x426C61636978654CLL && v14 == 0xEC0000006B636F6CLL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for LexicalBlock();
      sub_25A911648(&qword_27FA04A18, 255, type metadata accessor for LexicalBlock, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA050F8;
      v17 = type metadata accessor for LexicalBlock;
      goto LABEL_10;
    }

    if (v13 == 0x6E7275746552 && v14 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Return();
      sub_25A911648(&qword_27FA050E8, 255, type metadata accessor for Return, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA050F0;
      v17 = type metadata accessor for Return;
      goto LABEL_10;
    }

    if (v13 == 0x73697261706D6F43 && v14 == 0xEA00000000006E6FLL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Comparison();
      sub_25A911648(&qword_27FA050D8, 255, type metadata accessor for Comparison, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA050E0;
      v17 = type metadata accessor for Comparison;
      goto LABEL_10;
    }

    if (v13 == 0x704F6E6942 && v14 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for BinOp();
      sub_25A911648(&qword_27FA050C8, 255, type metadata accessor for BinOp, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA050D0;
      v17 = type metadata accessor for BinOp;
      goto LABEL_10;
    }

    if (v13 == 1819042115 && v14 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Call();
      sub_25A911648(&qword_27FA050B8, 255, type metadata accessor for Call, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA050C0;
      v17 = type metadata accessor for Call;
      goto LABEL_10;
    }

    if (v13 == 1701667150 && v14 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Name();
      sub_25A911648(&qword_27FA050A8, 255, type metadata accessor for Name, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA050B0;
      v17 = type metadata accessor for Name;
      goto LABEL_10;
    }

    if (v13 == 0x7475626972747441 && v14 == 0xE900000000000065 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Attribute();
      sub_25A911648(&qword_27FA05098, 255, type metadata accessor for Attribute, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA050A0;
      v17 = type metadata accessor for Attribute;
      goto LABEL_10;
    }

    if (v13 == 0x64726F7779654BLL && v14 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Keyword();
      sub_25A911648(&qword_27FA05088, 255, type metadata accessor for Keyword, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA05090;
      v17 = type metadata accessor for Keyword;
      goto LABEL_10;
    }

    if (v13 == 0x7375656870726F4DLL && v14 == 0xED00007961727241 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for MorpheusArray();
      sub_25A911648(&qword_27FA05078, 255, type metadata accessor for MorpheusArray, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA05080;
      v17 = type metadata accessor for MorpheusArray;
      goto LABEL_10;
    }

    if (v13 == 0x7375656870726F4DLL && v14 == 0xED0000656C707554 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for MorpheusTuple();
      sub_25A911648(&qword_27FA05068, 255, type metadata accessor for MorpheusTuple, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &qword_27FA05070;
      v17 = type metadata accessor for MorpheusTuple;
      goto LABEL_10;
    }

    if (v13 == 0x7375656870726F4DLL && v14 == 0xEC00000074636944 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for MorpheusDict();
      sub_25A911648(&qword_27FA05058, 255, type metadata accessor for MorpheusDict, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA05060;
      v17 = type metadata accessor for MorpheusDict;
      goto LABEL_10;
    }

    if (v13 == 0x7375656870726F4DLL && v14 == 0xED00006563696C53 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for MorpheusSlice();
      sub_25A911648(&qword_27FA05048, 255, type metadata accessor for MorpheusSlice, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA05050;
      v17 = type metadata accessor for MorpheusSlice;
      goto LABEL_10;
    }

    if (v13 == 0x6E6F6974636E7546 && v14 == 0xEB00000000666544 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for FunctionDef();
      sub_25A911648(&qword_27FA05038, 255, type metadata accessor for FunctionDef, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA05040;
      v17 = type metadata accessor for FunctionDef;
      goto LABEL_10;
    }

    if (v13 == 0x6665447373616C43 && v14 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for ClassDef();
      sub_25A911648(&qword_27FA05028, 255, type metadata accessor for ClassDef, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA05030;
      v17 = type metadata accessor for ClassDef;
      goto LABEL_10;
    }

    if (v13 == 0x7972616E55 && v14 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Unary();
      sub_25A911648(&qword_27FA05018, 255, type metadata accessor for Unary, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA05020;
      v17 = type metadata accessor for Unary;
      goto LABEL_10;
    }

    if (v13 == 0x6573696152 && v14 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Raise();
      sub_25A911648(&qword_27FA05008, 255, type metadata accessor for Raise, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA05010;
      v17 = type metadata accessor for Raise;
      goto LABEL_10;
    }

    if (v13 == 0x745364656E696F4ALL && v14 == 0xE900000000000072 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for JoinedStr();
      sub_25A911648(&qword_27FA04FF8, 255, type metadata accessor for JoinedStr, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA05000;
      v17 = type metadata accessor for JoinedStr;
      goto LABEL_10;
    }

    if (v13 == 0x657474616D726F46 && v14 == 0xEE0065756C615664 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for FormattedValue();
      sub_25A911648(&qword_27FA04FE8, v24, type metadata accessor for FormattedValue, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA04FF0;
      v18 = type metadata accessor for FormattedValue;
      goto LABEL_11;
    }

    if (v13 == 0x704F6C6F6F42 && v14 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for BoolOp();
      sub_25A911648(&qword_27FA04FD8, 255, type metadata accessor for BoolOp, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA04FE0;
      v17 = type metadata accessor for BoolOp;
      goto LABEL_10;
    }

    if (v13 == 0x65756E69746E6F43 && v14 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Continue();
      sub_25A911648(&qword_27FA04FC8, 255, type metadata accessor for Continue, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA04FD0;
      v17 = type metadata accessor for Continue;
      goto LABEL_10;
    }

    if (v13 == 0x6B61657242 && v14 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Break();
      sub_25A911648(&qword_27FA04FB8, 255, type metadata accessor for Break, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA04FC0;
      v17 = type metadata accessor for Break;
      goto LABEL_10;
    }

    if (v13 == 0x65686572706D6F43 && v14 == 0xED00006E6F69736ELL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Comprehension();
      sub_25A911648(&qword_27FA04FA8, 255, type metadata accessor for Comprehension, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA04FB0;
      v17 = type metadata accessor for Comprehension;
      goto LABEL_10;
    }

    if (v13 == 0x706D6F437473694CLL && v14 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for ListComp();
      sub_25A911648(&qword_27FA04F98, 255, type metadata accessor for ListComp, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA04FA0;
      v17 = type metadata accessor for ListComp;
      goto LABEL_10;
    }

    if (v13 == 0x706D6F43746553 && v14 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for SetComp();
      sub_25A911648(&qword_27FA04F88, 255, type metadata accessor for SetComp, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA04F90;
      v17 = type metadata accessor for SetComp;
      goto LABEL_10;
    }

    if (v13 == 0x706D6F4374636944 && v14 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for DictComp();
      sub_25A911648(&qword_27FA04F78, 255, type metadata accessor for DictComp, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA04F80;
      v17 = type metadata accessor for DictComp;
      goto LABEL_10;
    }

    if (v13 == 0x64657272617453 && v14 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Starred();
      sub_25A911648(&qword_27FA04F68, 255, type metadata accessor for Starred, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA04F70;
      v17 = type metadata accessor for Starred;
      goto LABEL_10;
    }

    if (v13 == 0x656C696857 && v14 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for While();
      sub_25A911648(&qword_27FA04F58, 255, type metadata accessor for While, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA04F60;
      v17 = type metadata accessor for While;
      goto LABEL_10;
    }

    if (v13 == 0x6769737341677541 && v14 == 0xE90000000000006ELL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for AugAssign();
      sub_25A911648(&qword_27FA04F48, 255, type metadata accessor for AugAssign, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA04F50;
      v17 = type metadata accessor for AugAssign;
      goto LABEL_10;
    }

    if (v13 == 0x74726F706D49 && v14 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Import();
      sub_25A911648(&qword_27FA04F38, 255, type metadata accessor for Import, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA04F40;
      v17 = type metadata accessor for Import;
      goto LABEL_10;
    }

    if (v13 == 0x724674726F706D49 && v14 == 0xEA00000000006D6FLL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for ImportFrom();
      sub_25A911648(&qword_27FA04F28, 255, type metadata accessor for ImportFrom, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA04F30;
      v17 = type metadata accessor for ImportFrom;
      goto LABEL_10;
    }

    if (v13 == 0x656C75646F4DLL && v14 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for ModuleOp();
      sub_25A911648(&qword_27FA04BE8, 255, type metadata accessor for ModuleOp, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA04F20;
      v17 = type metadata accessor for ModuleOp;
      goto LABEL_10;
    }

    if (v13 == 1936941392 && v14 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Pass();
      sub_25A911648(&qword_27FA04F10, 255, type metadata accessor for Pass, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA04F18;
      v17 = type metadata accessor for Pass;
      goto LABEL_10;
    }

    if (v13 == 0x696F706B61657242 && v14 == 0xEA0000000000746ELL || (sub_25A9989E8() & 1) != 0)
    {

      type metadata accessor for Breakpoint();
      sub_25A911648(&qword_27FA04F00, 255, type metadata accessor for Breakpoint, &unk_25A9F90EC);
      sub_25A998938();
      (*(v7 + 8))(v9, v6);
      v6 = v33;
      v16 = &unk_27FA04F08;
      v17 = type metadata accessor for Breakpoint;
      goto LABEL_10;
    }

    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v25 = sub_25A997BD8();
    __swift_project_value_buffer(v25, qword_27FA0FCE8);

    v26 = sub_25A997BB8();
    v27 = sub_25A9983A8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33 = v29;
      *v28 = 136315138;
      v30 = sub_25A98CC90(v13, v14, &v33);

      *(v28 + 4) = v30;
      _os_log_impl(&dword_25A232000, v26, v27, "Operation %s not supported yet", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x25F852800](v29, -1, -1);
      MEMORY[0x25F852800](v28, -1, -1);
    }

    else
    {
    }

    sub_25A874F54();
    swift_allocError();
    *v31 = 43;
    swift_willThrow();
    (*(v7 + 8))(v9, v6);
  }

  return v6;
}

uint64_t sub_25A910DB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x69737265766E6F63;
  }

  else
  {
    v3 = 0x65756C6176;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xEA00000000006E6FLL;
  }

  if (*a2)
  {
    v5 = 0x69737265766E6F63;
  }

  else
  {
    v5 = 0x65756C6176;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006E6FLL;
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
    v8 = sub_25A9989E8();
  }

  return v8 & 1;
}

uint64_t sub_25A910E60()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A910EE4(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A910F54(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A910FD4@<X0>(char *a2@<X8>)
{
  v3 = sub_25A9988C8();

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

void sub_25A911034(uint64_t *a1@<X8>)
{
  v2 = 0x65756C6176;
  if (*v1)
  {
    v2 = 0x69737265766E6F63;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006E6FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A911074()
{
  if (*v0)
  {
    return 0x69737265766E6F63;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_25A9110B0@<X0>(char *a3@<X8>)
{
  v4 = sub_25A9988C8();

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

uint64_t sub_25A911114(uint64_t a1)
{
  v2 = sub_25A9115F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A911150(uint64_t a1)
{
  v2 = sub_25A9115F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A9111D8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04EF0, "l(\a");
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A9115F4();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for FormattedValue();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[5] = sub_25A909838(v8, 0, &qword_27FA04EF0, "l(\a");
    v1[6] = v10;
    LOBYTE(v12[0]) = 1;
    v1[7] = sub_25A998928();
    sub_25A872F24(a1, v12);
    v3 = sub_25A8963D8(v12);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A9113F8@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = *(v1 + 48);
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v1 + 32);
  v9 = *(v5 + 48);
  swift_unknownObjectRetain();
  v9(Strong, v8, ObjectType, v5);
  swift_unknownObjectRelease();
  v10 = *(v1 + 48);
  v11 = swift_getObjectType();
  v12 = *(v10 + 64);
  swift_unknownObjectRetain();
  v12(v14, v11, v10);
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    sub_25A896580(a1);
    result = sub_25A872CE0(v14);
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t sub_25A91151C()
{
  swift_getObjectType();
  v0 = sub_25A998968();
  MEMORY[0x25F850290](v0);

  MEMORY[0x25F850290](125, 0xE100000000000000);
  return 123;
}

uint64_t sub_25A911590()
{
  sub_25A872F88(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_25A9115F4()
{
  result = qword_27FA04EF8;
  if (!qword_27FA04EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04EF8);
  }

  return result;
}

uint64_t sub_25A911648(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25A9116A4()
{
  result = qword_27FA05150;
  if (!qword_27FA05150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05150);
  }

  return result;
}

unint64_t sub_25A9116FC()
{
  result = qword_27FA05158;
  if (!qword_27FA05158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05158);
  }

  return result;
}

unint64_t sub_25A911754()
{
  result = qword_27FA05160;
  if (!qword_27FA05160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05160);
  }

  return result;
}

double sub_25A9117A8@<D0>(uint64_t a1@<X8>)
{
  sub_25A872C84(v1, &v4);
  if (v5)
  {
    sub_25A872CE0(&v4);
    sub_25A872C84(v1, &v4);
    if (v5 != 1)
    {
      sub_25A872CE0(&v4);
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double sub_25A91185C@<D0>(_OWORD *a1@<X8>)
{
  sub_25A872C84(v1, &v4);
  if (v5)
  {
    sub_25A872CE0(&v4);
    sub_25A872C84(v1, &v4);
    if (v5 != 1)
    {
      sub_25A872CE0(&v4);
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}