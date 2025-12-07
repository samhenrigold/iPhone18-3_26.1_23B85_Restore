uint64_t sub_191625AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_19166C208();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a4;
  v36 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v14 = type metadata accessor for FieldAccessor(0);
  v15 = *(*(v14 - 8) + 72);
  v16 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_191672220;
  v18 = v17 + v16;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v14, qword_1ED5A8A90);
  sub_19162D3A0(v19, v18);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v14, qword_1ED5A8AA8);
  v21 = sub_19162D3A0(v20, v18 + v15);
  v39 = 0;
  v38 = 0;
  MEMORY[0x1EEE9AC00](v21, v22);
  v23 = &v32 - 12;
  *(&v32 - 10) = v17;
  *(&v32 - 9) = a2;
  *(&v32 - 8) = a3;
  *(&v32 - 7) = &v39 + 1;
  *(&v32 - 6) = &v38;
  *(&v32 - 5) = sub_19162F5BC;
  *(&v32 - 4) = &v34;
  *(&v32 - 3) = 0;
  *(&v32 - 2) = 0;
  *(&v32 - 1) = &v39;
  if (AGTypeGetKind() == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_191672210;
    sub_19166C1F8();
    v37 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
    v32 = v14;
    sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
    v25 = v33;
    v26 = sub_19166BFE8();
    MEMORY[0x1EEE9AC00](v26, v27);
    *(&v32 - 2) = sub_19163059C;
    *(&v32 - 1) = v23;
    sub_19166C118();
    (*(v11 + 8))(v25, v10);
  }

  else
  {
    v37 = a1;
    if (swift_isOptionalType())
    {
      MEMORY[0x1EEE9AC00](a1, v28);
      *(&v32 - 2) = &v37;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v30 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v30 = 4;
      }

      else
      {
        v30 = 2;
      }
    }

    MEMORY[0x1EEE9AC00](isClassType, v30);
    *(&v32 - 2) = sub_19163059C;
    *(&v32 - 1) = v23;
    AGTypeApplyFields2();
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return HIBYTE(v39) & v39 & 1;
}

id _AXSwiftValidateClassGetFieldTypeString(uint64_t a1, uint64_t a2)
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v3 = sub_19166B748();
  sub_191626054(ObjCClassMetadata, v3, v4);

  v5 = sub_19166B718();

  return v5;
}

uint64_t sub_191626054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19166C208();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v29 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v10 = type metadata accessor for FieldAccessor(0);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_191672220;
  v14 = v13 + v12;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_1ED5A8A90);
  sub_19162D3A0(v15, v14);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v10, qword_1ED5A8AA8);
  v17 = sub_19162D3A0(v16, v14 + v11);
  v32 = 0;
  v31 = 0;
  MEMORY[0x1EEE9AC00](v17, v18);
  v19 = &v28[-12];
  v28[-10] = v13;
  v28[-9] = a2;
  v28[-8] = a3;
  v28[-7] = &v32 + 1;
  v28[-6] = &v31;
  v28[-5] = sub_1915FDCC0;
  v28[-4] = 0;
  v28[-3] = 0;
  v28[-2] = 0;
  v28[-1] = &v32;
  if (AGTypeGetKind() == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_191672210;
    sub_19166C1F8();
    v30 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
    v28[1] = v10;
    sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
    v21 = v29;
    v22 = sub_19166BFE8();
    MEMORY[0x1EEE9AC00](v22, v23);
    v28[-2] = sub_19163059C;
    v28[-1] = v19;
    sub_19166C118();
    (*(v7 + 8))(v21, v6);
  }

  else
  {
    v30 = a1;
    if (swift_isOptionalType())
    {
      MEMORY[0x1EEE9AC00](a1, v24);
      v28[-2] = &v30;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v26 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v26 = 4;
      }

      else
      {
        v26 = 2;
      }
    }

    MEMORY[0x1EEE9AC00](isClassType, v26);
    v28[-2] = sub_19163059C;
    v28[-1] = v19;
    AGTypeApplyFields2();
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if ((v32 & 0x100) == 0)
  {
    return 0;
  }

  result = v31;
  if (v31)
  {
    return sub_19166C878();
  }

  __break(1u);
  return result;
}

uint64_t _AXSwiftValidateClassHasFieldTm(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v5 = sub_19166B748();
  LOBYTE(a3) = a3(ObjCClassMetadata, v5, v6);

  return a3 & 1;
}

uint64_t sub_1916265B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19166C208();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v29 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v10 = type metadata accessor for FieldAccessor(0);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_191672220;
  v14 = v13 + v12;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_1ED5A8A90);
  sub_19162D3A0(v15, v14);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v10, qword_1ED5A8AA8);
  v17 = sub_19162D3A0(v16, v14 + v11);
  v32 = 0;
  v31 = 0;
  MEMORY[0x1EEE9AC00](v17, v18);
  v19 = &v28[-12];
  v28[-10] = v13;
  v28[-9] = a2;
  v28[-8] = a3;
  v28[-7] = &v32 + 1;
  v28[-6] = &v31;
  v28[-5] = sub_191626A84;
  v28[-4] = 0;
  v28[-3] = 0;
  v28[-2] = 0;
  v28[-1] = &v32;
  if (AGTypeGetKind() == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_191672210;
    sub_19166C1F8();
    v30 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
    v28[1] = v10;
    sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
    v21 = v29;
    v22 = sub_19166BFE8();
    MEMORY[0x1EEE9AC00](v22, v23);
    v28[-2] = sub_19163059C;
    v28[-1] = v19;
    sub_19166C118();
    (*(v7 + 8))(v21, v6);
  }

  else
  {
    v30 = a1;
    if (swift_isOptionalType())
    {
      MEMORY[0x1EEE9AC00](a1, v24);
      v28[-2] = &v30;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v26 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v26 = 4;
      }

      else
      {
        v26 = 2;
      }
    }

    MEMORY[0x1EEE9AC00](isClassType, v26);
    v28[-2] = sub_19163059C;
    v28[-1] = v19;
    AGTypeApplyFields2();
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return HIBYTE(v32) & v32 & 1;
}

BOOL sub_191626AB4(uint64_t a1, uint64_t a2)
{
  sub_1915E5F84();
  v2 = sub_19166BF78();
  sub_191624EFC(v2, 2);

  v3 = sub_19166C0D8();

  if (!v3)
  {
    return 0;
  }

  isOptionalType = swift_isOptionalType();
  if (isOptionalType)
  {
    MEMORY[0x1EEE9AC00](isOptionalType, v5);
    AGTypeApplyFields2();
  }

  return AGTypeGetKind() == 2;
}

BOOL _AXSwiftValidateStructHasSize(uint64_t a1, uint64_t a2)
{
  sub_19166B748();
  sub_1915E5F84();
  v3 = sub_19166BF78();
  sub_191624EFC(v3, 2);

  v4 = sub_19166C0D8();

  if (v4)
  {
    v5 = sub_191626CA4(v4, v4);

    return v5 == a2;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_191626CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19166C208();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[0] = a1;
  v38[1] = a2;
  v37[0] = 46;
  v37[1] = 0xE100000000000000;
  sub_1915E5F84();
  v13 = sub_19166BF78();
  sub_191624EFC(v13, 2);

  v14 = sub_19166C0D8();

  if (!v14)
  {
    return 0;
  }

  v34 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v15 = type metadata accessor for FieldAccessor(0);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_191672220;
  v19 = v18 + v17;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v15, qword_1ED5A8A90);
  sub_19162D3A0(v20, v19);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v15, qword_1ED5A8AA8);
  v22 = sub_19162D3A0(v21, v19 + v16);
  v35 = &v33;
  v36 = 0;
  v38[0] = 0;
  MEMORY[0x1EEE9AC00](v22, v23);
  v24 = &v33 - 12;
  *(&v33 - 10) = v18;
  *(&v33 - 9) = a3;
  *(&v33 - 8) = a4;
  *(&v33 - 7) = &v36 + 1;
  *(&v33 - 6) = v38;
  *(&v33 - 5) = sub_1915FDCC0;
  *(&v33 - 4) = 0;
  *(&v33 - 3) = 0;
  *(&v33 - 2) = 0;
  *(&v33 - 1) = &v36;
  if (AGTypeGetKind() == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
    v33 = v19;
    v25 = v34;
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_191672210;
    sub_19166C1F8();
    v37[0] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
    sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
    v27 = sub_19166BFE8();
    MEMORY[0x1EEE9AC00](v27, v28);
    *(&v33 - 2) = sub_19163059C;
    *(&v33 - 1) = v24;
    sub_19166C118();
    (*(v25 + 8))(v12, v8);
  }

  else
  {
    v37[0] = v14;
    if (swift_isOptionalType())
    {
      MEMORY[0x1EEE9AC00](v14, v30);
      *(&v33 - 2) = v37;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v32 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v32 = 4;
      }

      else
      {
        v32 = 2;
      }
    }

    MEMORY[0x1EEE9AC00](isClassType, v32);
    *(&v33 - 2) = sub_19163059C;
    *(&v33 - 1) = v24;
    AGTypeApplyFields2();
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return HIBYTE(v36);
}

uint64_t sub_191627224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[0] = a1;
  v47[1] = a2;
  v46[0] = 46;
  v46[1] = 0xE100000000000000;
  sub_1915E5F84();
  v17 = sub_19166BF78();
  sub_191624EFC(v17, 2);

  v18 = sub_19166C0D8();

  if (v18)
  {
    v41 = v13;
    v42 = a4;
    v44 = &v40;
    MEMORY[0x1EEE9AC00](v19, v20);
    *(&v40 - 2) = a5;
    *(&v40 - 1) = a6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
    v21 = type metadata accessor for FieldAccessor(0);
    v22 = *(*(v21 - 8) + 72);
    v23 = (*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_191672220;
    v25 = v24 + v23;
    if (qword_1ED5A81C8 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v21, qword_1ED5A8A90);
    sub_19162D3A0(v26, v25);
    if (qword_1ED5A81D0 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v21, qword_1ED5A8AA8);
    v28 = sub_19162D3A0(v27, v25 + v22);
    v43 = &v40;
    v45 = 0;
    v47[0] = 0;
    MEMORY[0x1EEE9AC00](v28, v29);
    v30 = &v40 - 12;
    *(&v40 - 10) = v24;
    *(&v40 - 9) = a3;
    *(&v40 - 8) = v42;
    *(&v40 - 7) = &v45 + 1;
    *(&v40 - 6) = v47;
    *(&v40 - 5) = sub_191630594;
    *(&v40 - 4) = (&v40 - 4);
    *(&v40 - 3) = 0;
    *(&v40 - 2) = 0;
    *(&v40 - 1) = &v45;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v42 = v25;
      v31 = v41;
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_191672210;
      sub_19166C1F8();
      v46[0] = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
      v33 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v33, v34);
      *(&v40 - 2) = sub_19163059C;
      *(&v40 - 1) = v30;
      sub_19166C118();
      (*(v31 + 8))(v16, v12);
    }

    else
    {
      v46[0] = v18;
      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](v18, v36);
        *(&v40 - 2) = v46;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v38 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v38 = 4;
        }

        else
        {
          v38 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v38);
      *(&v40 - 2) = sub_19163059C;
      *(&v40 - 1) = v30;
      AGTypeApplyFields2();
    }

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v35 = HIBYTE(v45) & v45;
  }

  else
  {
    v35 = 0;
  }

  return v35 & 1;
}

uint64_t sub_1916277BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19166C208();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[0] = a1;
  v38[1] = a2;
  v37[0] = 46;
  v37[1] = 0xE100000000000000;
  sub_1915E5F84();
  v13 = sub_19166BF78();
  sub_191624EFC(v13, 2);

  v14 = sub_19166C0D8();

  if (!v14)
  {
    return 0;
  }

  v34 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v15 = type metadata accessor for FieldAccessor(0);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_191672220;
  v19 = v18 + v17;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v15, qword_1ED5A8A90);
  sub_19162D3A0(v20, v19);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v15, qword_1ED5A8AA8);
  v22 = sub_19162D3A0(v21, v19 + v16);
  v35 = &v33;
  v36 = 0;
  v38[0] = 0;
  MEMORY[0x1EEE9AC00](v22, v23);
  v24 = &v33 - 12;
  *(&v33 - 10) = v18;
  *(&v33 - 9) = a3;
  *(&v33 - 8) = a4;
  *(&v33 - 7) = &v36 + 1;
  *(&v33 - 6) = v38;
  *(&v33 - 5) = sub_1915FDCC0;
  *(&v33 - 4) = 0;
  *(&v33 - 3) = 0;
  *(&v33 - 2) = 0;
  *(&v33 - 1) = &v36;
  if (AGTypeGetKind() == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
    v33 = v19;
    v25 = v34;
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_191672210;
    sub_19166C1F8();
    v37[0] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
    sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
    v27 = sub_19166BFE8();
    MEMORY[0x1EEE9AC00](v27, v28);
    *(&v33 - 2) = sub_19163059C;
    *(&v33 - 1) = v24;
    sub_19166C118();
    (*(v25 + 8))(v12, v8);
  }

  else
  {
    v37[0] = v14;
    if (swift_isOptionalType())
    {
      MEMORY[0x1EEE9AC00](v14, v30);
      *(&v33 - 2) = v37;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v32 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v32 = 4;
      }

      else
      {
        v32 = 2;
      }
    }

    MEMORY[0x1EEE9AC00](isClassType, v32);
    *(&v33 - 2) = sub_19163059C;
    *(&v33 - 1) = v24;
    AGTypeApplyFields2();
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if ((v36 & 0x100) == 0)
  {
    return 0;
  }

  result = v38[0];
  if (v38[0])
  {
    return sub_19166C878();
  }

  __break(1u);
  return result;
}

uint64_t sub_191627D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19166C208();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[0] = a1;
  v39[1] = a2;
  v38[0] = 46;
  v38[1] = 0xE100000000000000;
  sub_1915E5F84();
  v13 = sub_19166BF78();
  sub_191624EFC(v13, 2);

  v14 = sub_19166C0D8();

  if (v14)
  {
    v35 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
    v15 = type metadata accessor for FieldAccessor(0);
    v16 = *(*(v15 - 8) + 72);
    v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_191672220;
    v19 = v18 + v17;
    if (qword_1ED5A81C8 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v15, qword_1ED5A8A90);
    sub_19162D3A0(v20, v19);
    if (qword_1ED5A81D0 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v15, qword_1ED5A8AA8);
    v22 = sub_19162D3A0(v21, v19 + v16);
    v36 = &v34;
    v37 = 0;
    v39[0] = 0;
    MEMORY[0x1EEE9AC00](v22, v23);
    v24 = &v34 - 12;
    *(&v34 - 10) = v18;
    *(&v34 - 9) = a3;
    *(&v34 - 8) = a4;
    *(&v34 - 7) = &v37 + 1;
    *(&v34 - 6) = v39;
    *(&v34 - 5) = sub_191626A84;
    *(&v34 - 4) = 0;
    *(&v34 - 3) = 0;
    *(&v34 - 2) = 0;
    *(&v34 - 1) = &v37;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v34 = v19;
      v25 = v35;
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_191672210;
      sub_19166C1F8();
      v38[0] = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
      v27 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v27, v28);
      *(&v34 - 2) = sub_19163059C;
      *(&v34 - 1) = v24;
      sub_19166C118();
      (*(v25 + 8))(v12, v8);
    }

    else
    {
      v38[0] = v14;
      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](v14, v30);
        *(&v34 - 2) = v38;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v32 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v32 = 4;
        }

        else
        {
          v32 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v32);
      *(&v34 - 2) = sub_19163059C;
      *(&v34 - 1) = v24;
      AGTypeApplyFields2();
    }

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v29 = HIBYTE(v37) & v37;
  }

  else
  {
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t _AXSwiftValidateStructTm(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_19166B748();
  LOBYTE(a2) = a2(v3);

  return a2 & 1;
}

BOOL sub_1916282D0(uint64_t a1, uint64_t a2)
{
  sub_1915E5F84();
  v2 = sub_19166BF78();
  sub_191624EFC(v2, 3);

  v3 = sub_19166C0D8();

  if (!v3)
  {
    return 0;
  }

  isOptionalType = swift_isOptionalType();
  if (isOptionalType)
  {
    MEMORY[0x1EEE9AC00](isOptionalType, v5);
    AGTypeApplyFields2();
  }

  return AGTypeGetKind() == 3;
}

uint64_t sub_1916283FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19166C208();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[0] = a1;
  v38[1] = a2;
  v37[0] = 46;
  v37[1] = 0xE100000000000000;
  sub_1915E5F84();
  v13 = sub_19166BF78();
  sub_191624EFC(v13, 3);

  v14 = sub_19166C0D8();

  if (!v14)
  {
    return 0;
  }

  v34 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v15 = type metadata accessor for FieldAccessor(0);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_191672220;
  v19 = v18 + v17;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v15, qword_1ED5A8A90);
  sub_19162D3A0(v20, v19);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v15, qword_1ED5A8AA8);
  v22 = sub_19162D3A0(v21, v19 + v16);
  v35 = &v33;
  v36 = 0;
  v38[0] = 0;
  MEMORY[0x1EEE9AC00](v22, v23);
  v24 = &v33 - 12;
  *(&v33 - 10) = v18;
  *(&v33 - 9) = a3;
  *(&v33 - 8) = a4;
  *(&v33 - 7) = &v36 + 1;
  *(&v33 - 6) = v38;
  *(&v33 - 5) = sub_1915FDCC0;
  *(&v33 - 4) = 0;
  *(&v33 - 3) = 0;
  *(&v33 - 2) = 0;
  *(&v33 - 1) = &v36;
  if (AGTypeGetKind() == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
    v33 = v19;
    v25 = v34;
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_191672210;
    sub_19166C1F8();
    v37[0] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
    sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
    v27 = sub_19166BFE8();
    MEMORY[0x1EEE9AC00](v27, v28);
    *(&v33 - 2) = sub_19163059C;
    *(&v33 - 1) = v24;
    sub_19166C118();
    (*(v25 + 8))(v12, v8);
  }

  else
  {
    v37[0] = v14;
    if (swift_isOptionalType())
    {
      MEMORY[0x1EEE9AC00](v14, v30);
      *(&v33 - 2) = v37;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v32 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v32 = 4;
      }

      else
      {
        v32 = 2;
      }
    }

    MEMORY[0x1EEE9AC00](isClassType, v32);
    *(&v33 - 2) = sub_19163059C;
    *(&v33 - 1) = v24;
    AGTypeApplyFields2();
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return HIBYTE(v36);
}

uint64_t _AXSwiftValidateStructHasFieldTm(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = sub_19166B748();
  v6 = v5;
  v7 = sub_19166B748();
  LOBYTE(a3) = a3(v4, v6, v7, v8);

  return a3 & 1;
}

uint64_t sub_1916289C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19166C208();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[0] = a1;
  v39[1] = a2;
  v38[0] = 46;
  v38[1] = 0xE100000000000000;
  sub_1915E5F84();
  v13 = sub_19166BF78();
  sub_191624EFC(v13, 3);

  v14 = sub_19166C0D8();

  if (v14)
  {
    v35 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
    v15 = type metadata accessor for FieldAccessor(0);
    v16 = *(*(v15 - 8) + 72);
    v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_191672220;
    v19 = v18 + v17;
    if (qword_1ED5A81C8 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v15, qword_1ED5A8A90);
    sub_19162D3A0(v20, v19);
    if (qword_1ED5A81D0 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v15, qword_1ED5A8AA8);
    v22 = sub_19162D3A0(v21, v19 + v16);
    v36 = &v34;
    v37 = 0;
    v39[0] = 0;
    MEMORY[0x1EEE9AC00](v22, v23);
    v24 = &v34 - 12;
    *(&v34 - 10) = v18;
    *(&v34 - 9) = a3;
    *(&v34 - 8) = a4;
    *(&v34 - 7) = &v37 + 1;
    *(&v34 - 6) = v39;
    *(&v34 - 5) = sub_191626A84;
    *(&v34 - 4) = 0;
    *(&v34 - 3) = 0;
    *(&v34 - 2) = 0;
    *(&v34 - 1) = &v37;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v34 = v19;
      v25 = v35;
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_191672210;
      sub_19166C1F8();
      v38[0] = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
      v27 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v27, v28);
      *(&v34 - 2) = sub_19163059C;
      *(&v34 - 1) = v24;
      sub_19166C118();
      (*(v25 + 8))(v12, v8);
    }

    else
    {
      v38[0] = v14;
      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](v14, v30);
        *(&v34 - 2) = v38;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v32 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v32 = 4;
        }

        else
        {
          v32 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v32);
      *(&v34 - 2) = sub_19163059C;
      *(&v34 - 1) = v24;
      AGTypeApplyFields2();
    }

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v29 = HIBYTE(v37) & v37;
  }

  else
  {
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t sub_191628F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isOptionalType = swift_isOptionalType();
  if (isOptionalType)
  {
    MEMORY[0x1EEE9AC00](isOptionalType, v4);
    AGTypeApplyFields2();
  }

  return swift_isClassType();
}

uint64_t _AXSwiftValidateStructHasFieldWithTypeStringTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = sub_19166B748();
  v7 = v6;
  v8 = sub_19166B748();
  v10 = v9;
  v11 = sub_19166B748();
  LOBYTE(a4) = a4(v5, v7, v8, v10, v11, v12);

  return a4 & 1;
}

uint64_t sub_191629048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[0] = a1;
  v47[1] = a2;
  v46[0] = 46;
  v46[1] = 0xE100000000000000;
  sub_1915E5F84();
  v17 = sub_19166BF78();
  sub_191624EFC(v17, 3);

  v18 = sub_19166C0D8();

  if (v18)
  {
    v41 = v13;
    v42 = a4;
    v44 = &v40;
    MEMORY[0x1EEE9AC00](v19, v20);
    *(&v40 - 2) = a5;
    *(&v40 - 1) = a6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
    v21 = type metadata accessor for FieldAccessor(0);
    v22 = *(*(v21 - 8) + 72);
    v23 = (*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_191672220;
    v25 = v24 + v23;
    if (qword_1ED5A81C8 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v21, qword_1ED5A8A90);
    sub_19162D3A0(v26, v25);
    if (qword_1ED5A81D0 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v21, qword_1ED5A8AA8);
    v28 = sub_19162D3A0(v27, v25 + v22);
    v43 = &v40;
    v45 = 0;
    v47[0] = 0;
    MEMORY[0x1EEE9AC00](v28, v29);
    v30 = &v40 - 12;
    *(&v40 - 10) = v24;
    *(&v40 - 9) = a3;
    *(&v40 - 8) = v42;
    *(&v40 - 7) = &v45 + 1;
    *(&v40 - 6) = v47;
    *(&v40 - 5) = sub_191630594;
    *(&v40 - 4) = (&v40 - 4);
    *(&v40 - 3) = 0;
    *(&v40 - 2) = 0;
    *(&v40 - 1) = &v45;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v42 = v25;
      v31 = v41;
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_191672210;
      sub_19166C1F8();
      v46[0] = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
      v33 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v33, v34);
      *(&v40 - 2) = sub_19163059C;
      *(&v40 - 1) = v30;
      sub_19166C118();
      (*(v31 + 8))(v16, v12);
    }

    else
    {
      v46[0] = v18;
      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](v18, v36);
        *(&v40 - 2) = v46;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v38 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v38 = 4;
        }

        else
        {
          v38 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v38);
      *(&v40 - 2) = sub_19163059C;
      *(&v40 - 1) = v30;
      AGTypeApplyFields2();
    }

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v35 = HIBYTE(v45) & v45;
  }

  else
  {
    v35 = 0;
  }

  return v35 & 1;
}

uint64_t sub_1916295C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_19166C878() == a3 && v5 == a4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_19166C5E8();
  }

  return v6 & 1;
}

id _AXSwiftValidateStructGetFieldTypeStringTm(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = sub_19166B748();
  v6 = v5;
  v7 = sub_19166B748();
  a3(v4, v6, v7, v8);
  v10 = v9;

  if (v10)
  {
    v11 = sub_19166B718();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_191629700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19166C208();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[0] = a1;
  v38[1] = a2;
  v37[0] = 46;
  v37[1] = 0xE100000000000000;
  sub_1915E5F84();
  v13 = sub_19166BF78();
  sub_191624EFC(v13, 3);

  v14 = sub_19166C0D8();

  if (!v14)
  {
    return 0;
  }

  v34 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v15 = type metadata accessor for FieldAccessor(0);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_191672220;
  v19 = v18 + v17;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v15, qword_1ED5A8A90);
  sub_19162D3A0(v20, v19);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v15, qword_1ED5A8AA8);
  v22 = sub_19162D3A0(v21, v19 + v16);
  v35 = &v33;
  v36 = 0;
  v38[0] = 0;
  MEMORY[0x1EEE9AC00](v22, v23);
  v24 = &v33 - 12;
  *(&v33 - 10) = v18;
  *(&v33 - 9) = a3;
  *(&v33 - 8) = a4;
  *(&v33 - 7) = &v36 + 1;
  *(&v33 - 6) = v38;
  *(&v33 - 5) = sub_1915FDCC0;
  *(&v33 - 4) = 0;
  *(&v33 - 3) = 0;
  *(&v33 - 2) = 0;
  *(&v33 - 1) = &v36;
  if (AGTypeGetKind() == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
    v33 = v19;
    v25 = v34;
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_191672210;
    sub_19166C1F8();
    v37[0] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
    sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
    v27 = sub_19166BFE8();
    MEMORY[0x1EEE9AC00](v27, v28);
    *(&v33 - 2) = sub_19163059C;
    *(&v33 - 1) = v24;
    sub_19166C118();
    (*(v25 + 8))(v12, v8);
  }

  else
  {
    v37[0] = v14;
    if (swift_isOptionalType())
    {
      MEMORY[0x1EEE9AC00](v14, v30);
      *(&v33 - 2) = v37;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v32 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v32 = 4;
      }

      else
      {
        v32 = 2;
      }
    }

    MEMORY[0x1EEE9AC00](isClassType, v32);
    *(&v33 - 2) = sub_19163059C;
    *(&v33 - 1) = v24;
    AGTypeApplyFields2();
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if ((v36 & 0x100) == 0)
  {
    return 0;
  }

  result = v38[0];
  if (v38[0])
  {
    return sub_19166C878();
  }

  __break(1u);
  return result;
}

id _AXSafeSwiftEnumAssociatedObject(uint64_t a1)
{
  v1 = swift_unknownObjectRetain();
  v2 = sub_191629CA8(v1);
  swift_unknownObjectRelease();

  return v2;
}

void *sub_191629CA8(void *a1)
{
  sub_191623468(a1, &v5);
  if (v6)
  {
    sub_1915E4370(&v5, &v7);
    __swift_project_boxed_opaque_existential_1(&v7, v8);
    DynamicType = swift_getDynamicType();
    v2 = sub_191622EE0(DynamicType);
    if (AGTypeGetKind() == 3)
    {
      v3 = sub_191629D64(v2, &v7, v2);
      __swift_destroy_boxed_opaque_existential_1(&v7);
      return v3;
    }

    __swift_destroy_boxed_opaque_existential_1(&v7);
  }

  else
  {
    sub_19159E780(&v5, &unk_1EADB0270, &unk_191672C20);
  }

  return 0;
}

void *sub_191629D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34[5] = *MEMORY[0x1E69E9840];
  v5 = sub_19166BF58();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = v32 - v9;
  v11 = *(a3 - 8);
  v13 = MEMORY[0x1EEE9AC00](v8, v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v32 - v17;
  sub_1915DFD18(a2, v34);
  v19 = swift_dynamicCast();
  v20 = *(v11 + 56);
  if (!v19)
  {
    v20(v10, 1, 1, a3);
    (*(v6 + 8))(v10, v5);
    return 0;
  }

  v20(v10, 0, 1, a3);
  (*(v11 + 32))(v18, v10, a3);
  (*(v11 + 16))(v15, v18, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD48, &qword_191673780);
  if (!swift_dynamicCast())
  {
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    v28 = sub_19159E780(v32, &qword_1EADAFD50, &qword_191673788);
    v34[0] = 0;
    MEMORY[0x1EEE9AC00](v28, v29);
    *&v32[-1] = a3;
    *(&v32[-1] + 1) = v34;
    AGTypeApplyEnumData();
    v26 = v34[0];
    if (!v34[0] || (sub_19162F884(), ![v26 isKindOfClass_]))
    {
      v30 = sub_19166B718();
      v31 = NSClassFromString(v30);

      if (!v26 || !v31 || ![v26 isKindOfClass_])
      {
        goto LABEL_4;
      }
    }

    swift_unknownObjectRelease();
    (*(v11 + 8))(v18, a3);
    return 0;
  }

  sub_1915A04D0(v32, v34);
  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v23);
  v25 = v32 - v24;
  sub_19166B998();
  v26 = sub_19166C5D8();
  (*(v22 + 8))(v25, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_1(v34);
LABEL_4:
  (*(v11 + 8))(v18, a3);
  return v26;
}

uint64_t sub_19162A208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = sub_19166C5D8();
  (*(v5 + 8))(v7, a4);
  return v8;
}

id _AXSafeSwiftTypeNameTm(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = swift_unknownObjectRetain();
  a2(v3);
  v5 = v4;
  swift_unknownObjectRelease();
  if (v5)
  {
    v6 = sub_19166B718();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_19162A380(void *a1)
{
  sub_191623468(a1, &v5);
  if (v6)
  {
    sub_1915E4370(&v5, &v7);
    __swift_project_boxed_opaque_existential_1(&v7, v8);
    DynamicType = swift_getDynamicType();
    v2 = sub_191622EE0(DynamicType);
    if (AGTypeGetKind() == 3)
    {
      v3 = sub_19162A448(v2, &v7, v2);
      __swift_destroy_boxed_opaque_existential_1(&v7);
      return v3;
    }

    __swift_destroy_boxed_opaque_existential_1(&v7);
  }

  else
  {
    sub_19159E780(&v5, &unk_1EADB0270, &unk_191672C20);
  }

  return 0;
}

uint64_t sub_19162A448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_19166BF58();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v19[-v9];
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v8, v12);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1915DFD18(a2, v19);
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v10, 0, 1, a3);
    (*(v11 + 32))(v14, v10, a3);
    if (swift_EnumCaseName())
    {
      v17 = sub_19166B6F8();
      (*(v11 + 8))(v14, a3);
      return v17;
    }

    (*(v11 + 8))(v14, a3);
  }

  else
  {
    v16(v10, 1, 1, a3);
    (*(v6 + 8))(v10, v5);
  }

  return 0;
}

BOOL sub_19162A67C(uint64_t a1, int a2)
{
  result = a1 == MEMORY[0x1E69E6370] || a2 == 4;
  if (a2 == 4 && a1 != MEMORY[0x1E69E6370])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFEA0, &qword_1916738E0) == a1;
  }

  return result;
}

BOOL sub_19162A6E0(uint64_t a1, int a2)
{
  result = a1 == MEMORY[0x1E69E6530] || a2 == 4;
  if (a2 == 4 && a1 != MEMORY[0x1E69E6530])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE90, &qword_1916738D0) == a1;
  }

  return result;
}

BOOL sub_19162A744(uint64_t a1, int a2)
{
  result = a1 == MEMORY[0x1E69E6810] || a2 == 4;
  if (a2 == 4 && a1 != MEMORY[0x1E69E6810])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE80, &qword_1916738C0) == a1;
  }

  return result;
}

BOOL sub_19162A7A8(uint64_t a1, int a2)
{
  result = a1 == MEMORY[0x1E69E7230] || a2 == 4;
  if (a2 == 4 && a1 != MEMORY[0x1E69E7230])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE70, &qword_1916738B0) == a1;
  }

  return result;
}

BOOL sub_19162A80C(uint64_t a1, int a2)
{
  result = a1 == MEMORY[0x1E69E7508] || a2 == 4;
  if (a2 == 4 && a1 != MEMORY[0x1E69E7508])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE60, &qword_1916738A0) == a1;
  }

  return result;
}

BOOL sub_19162A870(uint64_t a1, int a2)
{
  result = a1 == MEMORY[0x1E69E7290] || a2 == 4;
  if (a2 == 4 && a1 != MEMORY[0x1E69E7290])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE50, &qword_191673890) == a1;
  }

  return result;
}

BOOL sub_19162A8D4(uint64_t a1, int a2)
{
  result = a1 == MEMORY[0x1E69E75F8] || a2 == 4;
  if (a2 == 4 && a1 != MEMORY[0x1E69E75F8])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE40, &qword_191673880) == a1;
  }

  return result;
}

BOOL sub_19162A938(uint64_t a1, int a2)
{
  result = a1 == MEMORY[0x1E69E72F0] || a2 == 4;
  if (a2 == 4 && a1 != MEMORY[0x1E69E72F0])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE30, &qword_191673870) == a1;
  }

  return result;
}

BOOL sub_19162A99C(uint64_t a1, int a2)
{
  result = a1 == MEMORY[0x1E69E7668] || a2 == 4;
  if (a2 == 4 && a1 != MEMORY[0x1E69E7668])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE20, &qword_191673860) == a1;
  }

  return result;
}

BOOL sub_19162AA00(uint64_t a1, int a2)
{
  result = a1 == MEMORY[0x1E69E7360] || a2 == 4;
  if (a2 == 4 && a1 != MEMORY[0x1E69E7360])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE10, &qword_191673850) == a1;
  }

  return result;
}

BOOL sub_19162AA64(uint64_t a1, int a2)
{
  result = a1 == MEMORY[0x1E69E76D8] || a2 == 4;
  if (a2 == 4 && a1 != MEMORY[0x1E69E76D8])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE00, &qword_191673840) == a1;
  }

  return result;
}

BOOL sub_19162AAC8(uint64_t a1, int a2)
{
  result = a1 == MEMORY[0x1E69E6448] || a2 == 4;
  if (a2 == 4 && a1 != MEMORY[0x1E69E6448])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFDF0, &qword_191673830) == a1;
  }

  return result;
}

BOOL sub_19162AB2C(uint64_t a1, int a2)
{
  result = a1 == MEMORY[0x1E69E63B0] || a2 == 4;
  if (a2 == 4 && a1 != MEMORY[0x1E69E63B0])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFDE0, &qword_191673820) == a1;
  }

  return result;
}

BOOL sub_19162AB90(uint64_t a1, int a2)
{
  result = a1 == MEMORY[0x1E69E7DE0] || a2 == 4;
  if (a2 == 4 && a1 != MEMORY[0x1E69E7DE0])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFDD0, &qword_191673810) == a1;
  }

  return result;
}

BOOL sub_19162AC6C(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v9 = a3(0);
  result = v9 == a1 || a2 == 4;
  if (a2 == 4 && v9 != a1)
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) == a1;
  }

  return result;
}

BOOL sub_19162AF48(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = v10 == a1 || a2 == 4;
  if (a2 == 4 && v10 != a1)
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) == a1;
  }

  return result;
}

uint64_t sub_19162AFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v40 = a7;
  v39 = a6;
  v43 = a1;
  v38 = sub_19166C208();
  v37 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v16);
  v36 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_19166BF58();
  v18 = swift_allocBox();
  v19 = *(*(a11 - 8) + 56);
  v41 = v20;
  v19(v20, 1, 1, a11);
  v21 = swift_allocObject();
  *(v21 + 16) = a11;
  *(v21 + 24) = a8;
  *(v21 + 32) = a10;
  *(v21 + 40) = a4;
  *(v21 + 48) = a5;
  *(v21 + 56) = a2;
  *(v21 + 64) = v18;
  *v57 = 0;
  v45 = a9;
  v46 = a4;
  v47 = a5;
  v48 = &v57[1];
  v49 = &v55;
  v50 = v39;
  v51 = v40;
  v52 = sub_19162FB6C;
  v53 = v21;
  v54 = v57;
  v55 = 0;
  if (AGTypeGetKind() == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
    v22 = v37;
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_191672210;
    swift_unknownObjectRetain();

    sub_19166C1F8();
    v56 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
    sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
    v24 = v36;
    v25 = v38;
    v26 = sub_19166BFE8();
    MEMORY[0x1EEE9AC00](v26, v27);
    *(&v36 - 2) = sub_19163059C;
    *(&v36 - 1) = v44;
    sub_19166C118();
    (*(v22 + 8))(v24, v25);
  }

  else
  {
    v56 = a3;
    swift_unknownObjectRetain();

    if (swift_isOptionalType())
    {
      MEMORY[0x1EEE9AC00](a3, v28);
      *(&v36 - 2) = &v56;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v30 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v30 = 4;
      }

      else
      {
        v30 = 2;
      }
    }

    MEMORY[0x1EEE9AC00](isClassType, v30);
    *(&v36 - 2) = sub_19163059C;
    *(&v36 - 1) = v44;
    AGTypeApplyFields2();
  }

  v31 = v57[1];
  v32 = v57[0];
  v33 = v41;
  swift_beginAccess();
  (*(*(v42 - 8) + 16))(v43, v33);

  if (v32)
  {
    v34 = 256;
  }

  else
  {
    v34 = 0;
  }

  return v34 | v31;
}

uint64_t sub_19162B468(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB0270, &unk_191672C20);
  sub_19162C2D0(v13, a3, a5, a6, a7, a8, a1, &v20, v17, a2);
  if (*(&v21 + 1) == 1)
  {
    return sub_19159E780(&v20, &qword_1EADAFD20, &qword_191673688);
  }

  v19[0] = v20;
  v19[1] = v21;
  swift_beginAccess();
  return sub_191630304(v19, a9 + 16);
}

void *sub_19162B558(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = sub_19162C2D0(a4, a3, a5, a6, a7, a8, a1, v11, MEMORY[0x1E69E6370], a2);
  v10 = v11[0];
  if (v11[0] != 2)
  {
    result = swift_beginAccess();
    *(a9 + 16) = v10;
  }

  return result;
}

void *sub_19162B5D8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = sub_19162C2D0(a4, a3, a5, a6, a7, a8, a1, v12, a10, a2);
  if ((v12[1] & 1) == 0)
  {
    v11 = v12[0];
    result = swift_beginAccess();
    *(a9 + 16) = v11;
    *(a9 + 17) = 0;
  }

  return result;
}

void *sub_19162B658(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = sub_19162C2D0(a4, a3, a5, a6, a7, a8, a1, &v12, a10, a2);
  if ((v13 & 1) == 0)
  {
    v11 = v12;
    result = swift_beginAccess();
    *(a9 + 16) = v11;
    *(a9 + 18) = 0;
  }

  return result;
}

void *sub_19162B6D8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = sub_19162C2D0(a4, a3, a5, a6, a7, a8, a1, &v12, a10, a2);
  if ((v13 & 1) == 0)
  {
    v11 = v12;
    result = swift_beginAccess();
    *(a9 + 16) = v11;
    *(a9 + 20) = 0;
  }

  return result;
}

void *sub_19162B758(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = sub_19162C2D0(a4, a3, a5, a6, a7, a8, a1, &v12, a10, a2);
  if ((v13 & 1) == 0)
  {
    v11 = v12;
    result = swift_beginAccess();
    *(a9 + 16) = v11;
    *(a9 + 24) = 0;
  }

  return result;
}

void *sub_19162B7D8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(void))
{
  v14 = a4;
  v18 = a10(0);
  result = sub_19162C2D0(v14, a3, a5, a6, a7, a8, a1, v22, v18, a2);
  if ((v23 & 1) == 0)
  {
    v21 = v22[0];
    v20 = v22[1];
    result = swift_beginAccess();
    *(a9 + 16) = v21;
    *(a9 + 24) = v20;
    *(a9 + 32) = 0;
  }

  return result;
}

__n128 sub_19162B89C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a4;
  type metadata accessor for CGRect(0);
  sub_19162C2D0(v13, a3, a5, a6, a7, a8, a1, v21, v17, a2);
  if ((v22 & 1) == 0)
  {
    v19 = v21[1];
    v20 = v21[0];
    swift_beginAccess();
    result = v20;
    *(a9 + 16) = v20;
    *(a9 + 32) = v19;
    *(a9 + 48) = 0;
  }

  return result;
}

void *sub_19162B964(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFEA0, &qword_1916738E0);
  result = sub_19162C2D0(v13, a3, a5, a6, a7, a8, a1, v20, v17, a2);
  v19 = v20[0];
  if (v20[0] != 3)
  {
    result = swift_beginAccess();
    *(a9 + 16) = v19;
  }

  return result;
}

void *sub_19162BA28(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11)
{
  v15 = a4;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a10, a11);
  result = sub_19162C2D0(v15, a3, a5, a6, a7, a8, a1, &v22, v19, a2);
  if ((v23 & 1) == 0)
  {
    v21 = v22;
    result = swift_beginAccess();
    *(a9 + 16) = v21;
    *(a9 + 18) = 0;
  }

  return result;
}

void *sub_19162BAE4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11)
{
  v15 = a4;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a10, a11);
  result = sub_19162C2D0(v15, a3, a5, a6, a7, a8, a1, &v23, v19, a2);
  if ((v25 & 1) == 0)
  {
    v21 = v23;
    v22 = v24;
    result = swift_beginAccess();
    *(a9 + 18) = v22;
    *(a9 + 16) = v21;
    *(a9 + 19) = 0;
  }

  return result;
}

void *sub_19162BBA8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11)
{
  v15 = a4;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a10, a11);
  result = sub_19162C2D0(v15, a3, a5, a6, a7, a8, a1, &v23, v19, a2);
  if ((v25 & 1) == 0)
  {
    v21 = v23;
    v22 = v24;
    result = swift_beginAccess();
    *(a9 + 20) = v22;
    *(a9 + 16) = v21;
    *(a9 + 21) = 0;
  }

  return result;
}

void *sub_19162BC6C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11)
{
  v15 = a4;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a10, a11);
  result = sub_19162C2D0(v15, a3, a5, a6, a7, a8, a1, &v23, v19, a2);
  if ((v25 & 1) == 0)
  {
    v21 = v24;
    v22 = v23;
    result = swift_beginAccess();
    *(a9 + 16) = v22;
    *(a9 + 24) = v21;
    *(a9 + 25) = 0;
  }

  return result;
}

void *sub_19162BD30(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11)
{
  v15 = a4;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a10, a11);
  result = sub_19162C2D0(v15, a3, a5, a6, a7, a8, a1, v24, v19, a2);
  if ((v26 & 1) == 0)
  {
    v21 = v25;
    v23 = v24[0];
    v22 = v24[1];
    result = swift_beginAccess();
    *(a9 + 16) = v23;
    *(a9 + 24) = v22;
    *(a9 + 32) = v21;
    *(a9 + 33) = 0;
  }

  return result;
}

__n128 sub_19162BDF4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFDA0, &qword_1916737E0);
  sub_19162C2D0(v13, a3, a5, a6, a7, a8, a1, v22, v17, a2);
  if ((v24 & 1) == 0)
  {
    v19 = v23;
    v20 = v22[1];
    v21 = v22[0];
    swift_beginAccess();
    result = v21;
    *(a9 + 16) = v21;
    *(a9 + 32) = v20;
    *(a9 + 48) = v19;
    *(a9 + 49) = 0;
  }

  return result;
}

void *sub_19162BED0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4D0, &unk_191672480);
  result = sub_19162C2D0(v13, a3, a5, a6, a7, a8, a1, &v23, v17, a2);
  v19 = v24;
  if (v24 != 1)
  {
    v20 = v23;
    swift_beginAccess();
    v21 = *(a9 + 16);
    v22 = *(a9 + 24);
    *(a9 + 16) = v20;
    *(a9 + 24) = v19;
    return sub_19162FCE8(v21, v22);
  }

  return result;
}

void *sub_19162BFA0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11, uint64_t (*a12)(uint64_t))
{
  v16 = a4;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a10, a11);
  result = sub_19162C2D0(v16, a3, a5, a6, a7, a8, a1, v24, v20, a2);
  v22 = *v24;
  if (*v24 != 1)
  {
    swift_beginAccess();
    v23 = *(a9 + 16);
    *(a9 + 16) = v22;
    return a12(v23);
  }

  return result;
}

uint64_t sub_19162C068(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v33 = a7;
  v34 = a8;
  v31 = a1;
  v32 = a6;
  v30 = a5;
  v10 = a4;
  v35 = sub_19166BF58();
  v13 = *(v35 - 8);
  v15 = MEMORY[0x1EEE9AC00](v35, v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v29 - v20;
  v22 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v19, v23);
  v25 = &v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_projectBox();
  sub_19162C2D0(v10, a3, v30, v32, v33, v34, v31, v21, a10, a2);
  if ((*(v22 + 48))(v21, 1, a10) == 1)
  {
    return (*(v13 + 8))(v21, v35);
  }

  v28 = *(v22 + 32);
  v28(v25, v21, a10);
  v28(v17, v25, a10);
  (*(v22 + 56))(v17, 0, 1, a10);
  swift_beginAccess();
  return (*(v13 + 40))(v26, v17, v35);
}

uint64_t sub_19162C2D0@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, char *a7@<X7>, char *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v91 = a7;
  v86 = a6;
  v81 = a5;
  v80 = a4;
  v79 = a3;
  v90 = a2;
  v88 = a8;
  v11 = a9;
  v78 = sub_19166BF58();
  v77 = *(v78 - 8);
  v13 = MEMORY[0x1EEE9AC00](v78, v12);
  v85 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v82 = &v75 - v17;
  v89 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v76 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_19166BF58();
  v93 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v84 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v83 = &v75 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v87 = &v75 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v33 = &v75 - v32;
  v35 = MEMORY[0x1EEE9AC00](v31, v34);
  v37 = &v75 - v36;
  MEMORY[0x1EEE9AC00](v35, v38);
  v40 = &v75 - v39;
  isOptionalType = swift_isOptionalType();
  v92 = *(a10 - 8);
  v42 = *(v92 + 56);
  v42(v40, 1, 1, a10);
  if ((a1 & 1) == 0 || (isOptionalType & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for FieldAccessor(0);
  __swift_project_value_buffer(v43, qword_1ED5A8AA8);
  if (sub_19166B198() & 1) == 0 && ((sub_191622EE0(a10), (swift_isClassType()) || AGTypeGetKind() == 7))
  {
    v86 = a9;
    sub_19162CBFC(v79, v80, v81, a10, v37);
    v48 = *(v93 + 8);
    (v48)(v40, v20);
    v49 = v92;
    if ((*(v92 + 48))(v37, 1, a10) == 1)
    {
      (v48)(v37, v20);
      return (*(v89 + 56))(v88, 1, 1, v86);
    }

    v91 = v48;
    (*(v49 + 32))(v40, v37, a10);
    v42(v40, 0, 1, a10);
    v11 = v86;
  }

  else
  {
LABEL_6:
    (*(v92 + 16))(v33, &v91[v86], a10);
    v44 = v93;
    v91 = *(v93 + 8);
    (v91)(v40, v20);
    v42(v33, 0, 1, a10);
    (*(v44 + 32))(v40, v33, v20);
  }

  v45 = v87;
  v46 = v91;
  if (isOptionalType)
  {
    v47 = sub_19166BF48();
    sub_19162F884();
    if ([v47 isKindOfClass_])
    {
      (v46)(v40, v20);
      swift_unknownObjectRelease();
      return (*(v89 + 56))(v88, 1, 1, v11);
    }

    v51 = sub_19166B718();
    v52 = NSClassFromString(v51);

    if (v52)
    {
      v53 = [v47 isKindOfClass_];
      swift_unknownObjectRelease();
      if (v53)
      {
        (v46)(v40, v20);
        return (*(v89 + 56))(v88, 1, 1, v11);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v54 = v90 + *(type metadata accessor for FieldAccessor(0) + 28);
  v55 = *v54;
  if (!*v54)
  {
    goto LABEL_27;
  }

  v86 = v11;
  v56 = *(v54 + 8);
  v57 = v93 + 16;
  v58 = *(v93 + 16);
  v58(v45, v40, v20);
  v59 = *(v92 + 48);
  if (v59(v45, 1, a10) == 1)
  {
    (v91)(v45, v20);
    v11 = v86;
    goto LABEL_27;
  }

  v90 = v56;

  v87 = (v57 - 8);
  (v91)(v45, v20);
  v60 = v83;
  v58(v83, v40, v20);
  result = (v59)(v60, 1, a10);
  if (result != 1)
  {
    v94[3] = a10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v94);
    (*(v92 + 32))(boxed_opaque_existential_0, v60, a10);
    v62 = v90;
    v55(v95, v94);
    sub_19159F5CC(v55, v62);
    __swift_destroy_boxed_opaque_existential_1(v94);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB0270, &unk_191672C20);
    v63 = v82;
    v11 = v86;
    if (swift_dynamicCast())
    {
      (v91)(v40, v20);
      v64 = v89;
      v65 = *(v89 + 56);
      v65(v63, 0, 1, v11);
      v66 = *(v64 + 32);
      v67 = v76;
      v66(v76, v63, v11);
      v68 = v88;
      v66(v88, v67, v11);
      v69 = v68;
      goto LABEL_29;
    }

    (*(v89 + 56))(v63, 1, 1, v11);
    (*(v77 + 8))(v63, v78);
LABEL_27:
    (*(v93 + 32))(v84, v40, v20);
    v70 = v85;
    v71 = swift_dynamicCast();
    v72 = v89;
    v65 = *(v89 + 56);
    if ((v71 & 1) == 0)
    {
      v65(v70, 1, 1, v11);
      v69 = v88;
      v74 = 1;
      return (v65)(v69, v74, 1, v11);
    }

    v65(v70, 0, 1, v11);
    v73 = v88;
    (*(v72 + 32))(v88, v70, v11);
    v69 = v73;
LABEL_29:
    v74 = 0;
    return (v65)(v69, v74, 1, v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_19162CBFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  *&v24[0] = a1;
  swift_getObjectType();
  v9 = swift_reflectionMirror_normalizedType();
  if (swift_isClassType())
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    return (*(*(a4 - 8) + 56))(a5, 1, 1, a4);
  }

  while (1)
  {
    *&v24[0] = a1;
    v12 = swift_reflectionMirror_count();
    if (v12 < 0)
    {
      __break(1u);
    }

    v13 = v12;
    if (v12)
    {
      break;
    }

LABEL_21:
    v20 = MEMORY[0x193AFCFD0](v9);
    if (v20)
    {
      v9 = v20;
      if (swift_isClassType())
      {
        continue;
      }
    }

    return (*(*(a4 - 8) + 56))(a5, 1, 1, a4);
  }

  v14 = 0;
  while (1)
  {
    v25 = 0;
    v26 = 0;
    *&v23 = a1;
    swift_reflectionMirror_subscript();
    if (v26)
    {
      v16 = MEMORY[0x193AFC6B0]();
      v18 = v17;
      v19 = v25;
      if (!v25)
      {
        goto LABEL_15;
      }

LABEL_14:
      v19(v26);
      goto LABEL_15;
    }

    v16 = 0;
    v18 = 0;
    v19 = v25;
    if (v25)
    {
      goto LABEL_14;
    }

LABEL_15:
    if (!v18)
    {
      goto LABEL_11;
    }

    if (v16 == a2 && v18 == a3)
    {
      break;
    }

    v15 = sub_19166C5E8();

    if (v15)
    {
      goto LABEL_24;
    }

LABEL_11:
    ++v14;
    __swift_destroy_boxed_opaque_existential_1(v24);
    if (v13 == v14)
    {
      goto LABEL_21;
    }
  }

LABEL_24:
  sub_1915E4370(v24, &v23);
  v21 = swift_dynamicCast();
  return (*(*(a4 - 8) + 56))(a5, v21 ^ 1u, 1, a4);
}

uint64_t sub_19162CE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v44 = a7;
  v45 = a8;
  v42 = a5;
  v43 = a6;
  v47 = a4;
  v48 = a1;
  v53 = *MEMORY[0x1E69E9840];
  v49 = MEMORY[0x1E69E6370];
  v50 = MEMORY[0x1E69E6370];
  v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAFD78, &qword_1916737B0);
  v13 = sub_19166BF58();
  v52 = v13;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata, v14);
  v16 = &v41 - v15;
  v17 = sub_19166BF58();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v41 - v21;
  v23 = *(a12 - 8);
  MEMORY[0x1EEE9AC00](v20, v24);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1915DFD18(a3, &v49);
  v27 = swift_dynamicCast();
  v28 = *(v23 + 56);
  if (v27)
  {
    v28(v22, 0, 1, a12);
    v29 = (*(v23 + 32))(v26, v22, a12);
    MEMORY[0x1EEE9AC00](v29, v30);
    *(&v41 - 8) = a11;
    *(&v41 - 7) = a12;
    v31 = v43;
    *(&v41 - 6) = v42;
    *(&v41 - 5) = v31;
    v32 = v45;
    *(&v41 - 4) = v44;
    *(&v41 - 3) = v32;
    *(&v41 - 2) = a9;
    *(&v41 - 1) = a10;
    v49 = MEMORY[0x1E69E6370];
    v50 = MEMORY[0x1E69E6370];
    v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAFD80, &qword_1916737B8);
    v52 = v13;
    v33 = swift_getTupleTypeMetadata();
    sub_191624250(v26, sub_19162FB34, (&v41 - 10), a12, MEMORY[0x1E69E73E0], v33, MEMORY[0x1E69E7410], v34);
    (*(v23 + 8))(v26, a12);
    v35 = *v16;
    v36 = v16[1];
    v37 = *(TupleTypeMetadata + 80);
    v38 = sub_19166BF58();
    (*(*(v38 - 8) + 32))(v48, &v16[v37], v38);
    if (v36)
    {
      v39 = 256;
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v28(v22, 1, 1, a12);
    (*(v18 + 8))(v22, v17);
    (*(*(a11 - 8) + 56))(v48, 1, 1, a11);
    v35 = 0;
    v39 = 0;
  }

  return v39 | v35;
}

uint64_t sub_19162D270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAFD78, &qword_1916737B0);
  sub_19166BF58();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  result = sub_19162AFC0(a9 + *(TupleTypeMetadata + 80), a1, a10, a4, a5, a6, a7, 0, a2, a3, a8);
  *a9 = result & 1;
  *(a9 + 1) = BYTE1(result) & 1;
  *(a9 + 8) = v20;
  return result;
}

uint64_t sub_19162D3A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FieldAccessor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19162D46C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for FieldAccessor(0);
  __swift_allocate_value_buffer(v7, a2);
  v8 = __swift_project_value_buffer(v7, a2);
  result = sub_19166B1B8();
  v10 = (v8 + v7[5]);
  *v10 = a3;
  v10[1] = 0;
  v11 = (v8 + v7[6]);
  *v11 = a4;
  v11[1] = 0;
  v12 = (v8 + v7[7]);
  *v12 = 0;
  v12[1] = 0;
  return result;
}

uint64_t sub_19162D514(uint64_t a1)
{
  if ((swift_isOptionalType() & 1) == 0)
  {
    return 0;
  }

  isOptionalType = swift_isOptionalType();
  if (isOptionalType)
  {
    MEMORY[0x1EEE9AC00](isOptionalType, v3);
    AGTypeApplyFields2();
  }

  return a1;
}

uint64_t sub_19162D5B4()
{
  v0 = type metadata accessor for FieldAccessor(0);
  __swift_allocate_value_buffer(v0, qword_1ED5A8AC0);
  v1 = __swift_project_value_buffer(v0, qword_1ED5A8AC0);
  result = sub_19166B1B8();
  v3 = (v1 + v0[5]);
  *v3 = sub_19162D658;
  v3[1] = 0;
  v4 = (v1 + v0[6]);
  *v4 = sub_19162D704;
  v4[1] = 0;
  v5 = (v1 + v0[7]);
  *v5 = sub_19162E6F0;
  v5[1] = 0;
  return result;
}

uint64_t sub_19162D680(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    v9 = a4;
    swift_once();
    a4 = v9;
  }

  v10 = *a4;

  MEMORY[0x193AFC710](a1, a2);
  return v10;
}

uint64_t sub_19162D704(uint64_t a1)
{
  v2 = sub_19166C878();
  v4 = sub_19162D758(a1, v2, v3);

  return v4;
}

uint64_t sub_19162D758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19166C208();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  if (sub_19162E0E0(0xD000000000000012, 0x800000019167D140, a2, a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
    v12 = type metadata accessor for FieldAccessor(0);
    v13 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
    v14 = swift_allocObject();
    v37 = xmmword_191672210;
    *(v14 + 16) = xmmword_191672210;
    if (qword_1ED5A81C8 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v12, qword_1ED5A8A90);
    v16 = sub_19162D3A0(v15, v14 + v13);
    v41 = 0;
    v42[0] = 0;
    MEMORY[0x1EEE9AC00](v16, v17);
    v39 = &v36[-12];
    v36[-10] = v14;
    v36[-9] = 0x656761726F7473;
    v36[-8] = 0xE700000000000000;
    v36[-7] = &v41 + 1;
    v36[-6] = v42;
    v36[-5] = sub_1915FDCC0;
    v36[-4] = 0;
    v36[-3] = sub_1916303B4;
    v36[-2] = v11;
    v36[-1] = &v41;
    if (AGTypeGetKind() == 5)
    {
LABEL_10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v36[1] = a1;
      v24 = swift_allocObject();
      v38 = v11 + 16;
      v25 = v24;
      *(v24 + 16) = v37;
      sub_19166C1F8();
      v40 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
      v26 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v26, v27);
      v28 = v39;
      v36[-2] = sub_19163059C;
      v36[-1] = v28;
      sub_19166C118();
      (*(v7 + 8))(v10, v6);
LABEL_29:
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      goto LABEL_30;
    }

    v29 = v39;
    v40 = a1;
    if (swift_isOptionalType())
    {
      MEMORY[0x1EEE9AC00](a1, v30);
      v36[-2] = &v40;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v32 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v32 = 4;
      }

      else
      {
        v32 = 2;
      }
    }

LABEL_28:
    MEMORY[0x1EEE9AC00](isClassType, v32);
    v36[-2] = sub_19163059C;
    v36[-1] = v29;
    AGTypeApplyFields2();
    goto LABEL_29;
  }

  if (sub_19162E0E0(0x2E49557466697753, 0xEE003C6574617453, a2, a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
    v18 = type metadata accessor for FieldAccessor(0);
    v19 = (*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80);
    v20 = swift_allocObject();
    v37 = xmmword_191672210;
    *(v20 + 16) = xmmword_191672210;
    if (qword_1ED5A81C8 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v18, qword_1ED5A8A90);
    v22 = sub_19162D3A0(v21, v20 + v19);
    v41 = 0;
    v42[0] = 0;
    MEMORY[0x1EEE9AC00](v22, v23);
    v39 = &v36[-12];
    v36[-10] = v20;
    v36[-9] = 0x65756C61765FLL;
    v36[-8] = 0xE600000000000000;
    v36[-7] = &v41 + 1;
    v36[-6] = v42;
    v36[-5] = sub_1915FDCC0;
    v36[-4] = 0;
    v36[-3] = sub_191630374;
    v36[-2] = v11;
    v36[-1] = &v41;
    if (AGTypeGetKind() == 5)
    {
      goto LABEL_10;
    }

    v29 = v39;
    v40 = a1;
    if (swift_isOptionalType())
    {
      MEMORY[0x1EEE9AC00](a1, v33);
      v36[-2] = &v40;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v32 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v32 = 4;
      }

      else
      {
        v32 = 2;
      }
    }

    goto LABEL_28;
  }

  if ((sub_19162E0E0(0xD000000000000010, 0x800000019167D160, a2, a3) & 1) == 0 && (sub_19162E0E0(0xD000000000000014, 0x800000019167D180, a2, a3) & 1) == 0)
  {
    sub_19162E0E0(0xD000000000000019, 0x800000019167D1A0, a2, a3);
  }

LABEL_30:
  swift_beginAccess();
  v34 = *(v11 + 16);

  return v34;
}

uint64_t sub_19162E0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_19166B888();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_19166B888();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_19166C5E8();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_19166B888();
      v7 = v9;
    }

    while (v9);
  }

  sub_19166B888();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_19162E23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_19166C208();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v11 = type metadata accessor for FieldAccessor(0);
  v12 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v13 = swift_allocObject();
  v27 = xmmword_191672210;
  *(v13 + 16) = xmmword_191672210;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v11, qword_1ED5A8A90);
  v15 = sub_19162D3A0(v14, v13 + v12);
  v30 = 0;
  v29 = 0;
  MEMORY[0x1EEE9AC00](v15, v16);
  v26[-10] = v13;
  v26[-9] = 0x65756C6176;
  v26[-8] = 0xE500000000000000;
  v26[-7] = &v30 + 1;
  v26[-6] = &v29;
  v26[-5] = sub_1915FDCC0;
  v26[-4] = 0;
  v26[-3] = sub_1916305A0;
  v26[-2] = a4;
  v26[-1] = &v30;
  if (AGTypeGetKind() == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
    v26[0] = a2;
    v17 = swift_allocObject();
    v26[1] = v11;
    v18 = v17;
    *(v17 + 16) = v27;

    sub_19166C1F8();
    v28 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
    *&v27 = &v26[-12];
    sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
    v19 = sub_19166BFE8();
    MEMORY[0x1EEE9AC00](v19, v20);
    v21 = v27;
    v26[-2] = sub_19163059C;
    v26[-1] = v21;
    sub_19166C118();
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v28 = a2;

    if (swift_isOptionalType())
    {
      MEMORY[0x1EEE9AC00](a2, v22);
      v26[-2] = &v28;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v24 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v24 = 4;
      }

      else
      {
        v24 = 2;
      }
    }

    MEMORY[0x1EEE9AC00](isClassType, v24);
    v26[-2] = sub_19163059C;
    v26[-1] = &v26[-12];
    AGTypeApplyFields2();
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
}

double sub_19162E6F0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  v4 = sub_19166C878();
  v6 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  sub_19162E7B0(v4, v6, a1, &v8);

  if (v9)
  {
    sub_1915E4370(&v8, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_19162E7B0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (sub_19162E0E0(0xD000000000000012, 0x800000019167D140, a1, a2))
  {
    sub_1916092C4(a3, 0x656761726F7473, 0xE700000000000000, &v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB0270, &unk_191672C20);
    if (swift_dynamicCast())
    {
      v8 = sub_191629CA8(v11);
      if (v8)
      {
        v9 = v8;
        *(a4 + 24) = swift_getObjectType();
        swift_unknownObjectRelease();
        *a4 = v9;
        return result;
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_13;
  }

  if ((sub_19162E0E0(0x2E49557466697753, 0xEE003C6574617453, a1, a2) & 1) == 0)
  {
    if ((sub_19162E0E0(0xD000000000000010, 0x800000019167D160, a1, a2) & 1) == 0 && (sub_19162E0E0(0xD000000000000014, 0x800000019167D180, a1, a2) & 1) == 0)
    {
      sub_19162E0E0(0xD000000000000019, 0x800000019167D1A0, a1, a2);
    }

LABEL_13:
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return result;
  }

  return sub_1916092C4(a3, 0x65756C61765FLL, 0xE600000000000000, a4);
}

uint64_t sub_19162E998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, uint64_t *a9, uint64_t (*a10)(uint64_t, uint64_t), uint64_t a11, void (*a12)(uint64_t, uint64_t, char *), uint64_t a13, _BYTE *a14)
{
  v43 = a4;
  v44 = a7;
  v20 = type metadata accessor for FieldAccessor(0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a5 + 16);
  if (!v25)
  {
    return 1;
  }

  v35 = a13;
  v36 = a3;
  v37 = a12;
  v38 = a14;
  v41 = a11;
  v42 = a8;
  v39 = a9;
  v40 = a10;
  v26 = a5 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
  v27 = *(v22 + 72);
  while (1)
  {
    sub_19162D3A0(v26, v24);
    if ((*&v24[*(v20 + 20)])(a6, v44) == a1 && v29 == a2)
    {
    }

    else
    {
      v31 = sub_19166C5E8();

      if ((v31 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v28 = (*&v24[*(v20 + 24)])(v43);
    if (v28)
    {
      break;
    }

LABEL_5:
    sub_19162F8D0(v24);
    v26 += v27;
    if (!--v25)
    {
      return 1;
    }
  }

  *v42 = 1;
  *v39 = v28;
  v33 = v28;
  Kind = AGTypeGetKind();
  if (v40(v33, Kind))
  {
    if (v37)
    {
      v37(v36, v43, v24);
    }

    *v38 = 1;
  }

  sub_19162F8D0(v24);
  return 0;
}

uint64_t sub_19162EBB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_19166B6F8();
  if (v7)
  {
    if (v6 == 1701670771 && v7 == 0xE400000000000000)
    {

LABEL_6:
      result = 0;
      *a4 = a3;
      return result;
    }

    v8 = sub_19166C5E8();

    if (v8)
    {
      goto LABEL_6;
    }
  }

  return 1;
}

uint64_t sub_19162EC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = sub_19166B6F8();
  if (!v9)
  {
    return 1;
  }

  v10 = v8;
  v11 = v9;
  v17 = v8;
  v18 = v9;

  v12 = sub_19166B8E8();

  if ((v12 & 1) == 0)
  {
LABEL_8:
    v16 = a5(v10, v11, a2, a3);

    return v16 & 1;
  }

  v14 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v14 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    result = sub_19162F92C(v10, v11);
    if (v15)
    {

      sub_19162F974(1);
      v10 = v17;
      v11 = v18;
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_19162ED48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_19166B6F8();
  if (!v6)
  {
    return 1;
  }

  v7 = a4(v5);

  return v7 & 1;
}

uint64_t sub_19162EDB8()
{
  v0 = sub_19166C208();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for Prefix(0);
  v17 = 0;
  v18 = 0;
  v15 = &v17;
  if (AGTypeGetKind() == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_191672210;
    sub_19166C1F8();
    v16 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
    sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
    v7 = sub_19166BFE8();
    MEMORY[0x1EEE9AC00](v7, v8);
    *&v14[-16] = sub_1916303F8;
    *&v14[-8] = v14;
    sub_19166C118();
    result = (*(v1 + 8))(v4, v0);
  }

  else
  {
    v16 = v5;
    isOptionalType = swift_isOptionalType();
    if (isOptionalType)
    {
      MEMORY[0x1EEE9AC00](isOptionalType, v11);
      *&v14[-16] = &v16;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v13 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v13 = 4;
      }

      else
      {
        v13 = 2;
      }
    }

    MEMORY[0x1EEE9AC00](isClassType, v13);
    *&v14[-16] = sub_1916303F8;
    *&v14[-8] = v14;
    result = AGTypeApplyFields2();
  }

  if (v18)
  {
    qword_1ED5A8048 = v17;
    *algn_1ED5A8050 = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19162F0C4()
{
  v1 = OBJC_IVAR____TtCF15AXCoreUtilities27_axPropertyWrapperFieldNameFSSSSL_6Prefix__publishedValue;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD40, &qword_191673778);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_19162F16C()
{
  v0 = sub_19166C208();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = _s15AXCoreUtilities6PrefixCMa_0();
  v17 = 0;
  v18 = 0;
  v15 = &v17;
  if (AGTypeGetKind() == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_191672210;
    sub_19166C1F8();
    v16 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
    sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
    v7 = sub_19166BFE8();
    MEMORY[0x1EEE9AC00](v7, v8);
    *&v14[-16] = sub_191630454;
    *&v14[-8] = v14;
    sub_19166C118();
    result = (*(v1 + 8))(v4, v0);
  }

  else
  {
    v16 = v5;
    isOptionalType = swift_isOptionalType();
    if (isOptionalType)
    {
      MEMORY[0x1EEE9AC00](isOptionalType, v11);
      *&v14[-16] = &v16;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v13 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v13 = 4;
      }

      else
      {
        v13 = 2;
      }
    }

    MEMORY[0x1EEE9AC00](isClassType, v13);
    *&v14[-16] = sub_191630454;
    *&v14[-8] = v14;
    result = AGTypeApplyFields2();
  }

  if (v18)
  {
    qword_1ED5A8120 = v17;
    *algn_1ED5A8128 = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19162F478(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  sub_1915E5F84();
  if ((sub_19166BFA8() & 1) == 0 || __swift_instantiateConcreteTypeFromMangledNameV2(a8, a9) != a4)
  {
    return 1;
  }

  v15 = sub_19166B838();
  v16 = sub_19162F9FC(v15, a1, a2);
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = MEMORY[0x193AFC690](v16, v18, v20, v22);
  v25 = v24;

  *a5 = v23;
  a5[1] = v25;

  return 0;
}

void sub_19162F604(uint64_t a1)
{
  sub_19162F694();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_19162F694()
{
  if (!qword_1ED5A7F48[0])
  {
    v0 = sub_19166B568();
    if (!v1)
    {
      atomic_store(v0, qword_1ED5A7F48);
    }
  }
}

void sub_19162F734(uint64_t a1)
{
  sub_19166B1C8();
  if (v1 <= 0x3F)
  {
    sub_1915DA900();
    if (v2 <= 0x3F)
    {
      sub_19162F7D0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_19162F7D0(uint64_t a1)
{
  if (!qword_1ED5A7F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAF4D8, &unk_191672490);
    v1 = sub_19166BF58();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED5A7F40);
    }
  }
}

uint64_t sub_19162F834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  *v4 = sub_19162A208(a2, a3, *(v3 + 16), a2);

  return swift_unknownObjectRelease();
}

unint64_t sub_19162F884()
{
  result = qword_1ED5A81F0;
  if (!qword_1ED5A81F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5A81F0);
  }

  return result;
}

uint64_t sub_19162F8D0(uint64_t a1)
{
  v2 = type metadata accessor for FieldAccessor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19162F92C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_19166B938();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19162F974(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_19166B848();
      if ((v1 & 1) == 0)
      {
        v2 = result;
        result = 15;
        v1 = v2;

        return MEMORY[0x1EEE68E00](result, v1);
      }
    }

    __break(1u);
    return MEMORY[0x1EEE68E00](result, v1);
  }

  return result;
}

uint64_t sub_19162F9FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_19166B848();

    return sub_19166B958();
  }

  return result;
}

uint64_t sub_19162FABC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_19162FC60(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_19162FC70(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_19162FCD4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_19162FCE8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t objectdestroy_85Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_191630294(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD20, &qword_191673688);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_191630304(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD20, &qword_191673688);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_191630374(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  *(v2 + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for FieldAccessor.TypeValidation(uint64_t *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FieldAccessor.TypeValidation(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_19163054C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_191630564(void *result, int a2)
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

uint64_t sub_1916305B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1915F4F34(0, v2, 0);
    v28 = v31;
    v4 = a1 + 64;
    result = sub_19166BFF8();
    v5 = result;
    v6 = 0;
    v7 = *(a1 + 36);
    v25 = v2;
    v26 = v7;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v27 = v6;
      v10 = (*(a1 + 48) + 16 * v5);
      v11 = (*(a1 + 56) + 16 * v5);
      v13 = *v11;
      v12 = v11[1];
      v29 = *v10;
      v30 = v10[1];
      swift_bridgeObjectRetain_n();

      MEMORY[0x193AFC710](61, 0xE100000000000000);
      MEMORY[0x193AFC710](v13, v12);

      v14 = v28;
      v16 = *(v28 + 16);
      v15 = *(v28 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_1915F4F34((v15 > 1), v16 + 1, 1);
        v14 = v28;
      }

      *(v14 + 16) = v16 + 1;
      v17 = v14 + 16 * v16;
      *(v17 + 32) = v29;
      *(v17 + 40) = v30;
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_25;
      }

      v4 = a1 + 64;
      v18 = *(a1 + 64 + 8 * v9);
      if ((v18 & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      v28 = v14;
      v7 = v26;
      if (v26 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v5 & 0x3F));
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (a1 + 72 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_191640194(v5, v26, 0);
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_191640194(v5, v26, 0);
      }

LABEL_4:
      v6 = v27 + 1;
      v5 = v8;
      if (v27 + 1 == v25)
      {
        return v28;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t static AXCTLSupport.requireRootPrivilages()()
{
  result = getuid();
  if (result)
  {
    sub_19166C0C8();

    getuid();
    v1 = sub_19166C3C8();
    MEMORY[0x193AFC710](v1);

    sub_191630948();
    swift_allocError();
    *v2 = 0xD000000000000025;
    v2[1] = 0x800000019167D1C0;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_191630948()
{
  result = qword_1EADAFED8;
  if (!qword_1EADAFED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFED8);
  }

  return result;
}

uint64_t static AXCTLSupport.requireNonRootPrivilages(dropToCurrentUserIfPossible:)(char a1)
{
  v2 = 0xD000000000000032;
  v3 = getpwnam("mobile");
  if (v3)
  {
    pw_uid = v3->pw_uid;
    pw_gid = v3->pw_gid;
    result = getuid();
    if (result == pw_uid)
    {
      return result;
    }

    if (a1)
    {
      if (setgid(pw_gid))
      {
        v7 = "Cannot assert non-root privileges. setgid() failed";
      }

      else
      {
        result = setuid(pw_uid);
        if (!result)
        {
          return result;
        }

        v7 = "Cannot assert non-root privileges. setuid() failed";
      }

      v8 = (v7 - 32);
    }

    else
    {
      v8 = "s. getpwnam() failed";
      v2 = 0xD00000000000003ALL;
    }
  }

  else
  {
    v8 = "vilages failed. uid: ";
    v2 = 0xD000000000000034;
  }

  v9 = v8 | 0x8000000000000000;
  sub_191630948();
  swift_allocError();
  *v10 = v2;
  v10[1] = v9;
  return swift_willThrow();
}

AXCoreUtilities::AXCTLSupport::OnOrOffArgument_optional __swiftcall AXCTLSupport.OnOrOffArgument.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_19166C278();

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

uint64_t AXCTLSupport.OnOrOffArgument.rawValue.getter()
{
  if (*v0)
  {
    return 6710895;
  }

  else
  {
    return 28271;
  }
}

uint64_t sub_191630B1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 6710895;
  }

  else
  {
    v3 = 28271;
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
    v5 = 6710895;
  }

  else
  {
    v5 = 28271;
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
    v8 = sub_19166C5E8();
  }

  return v8 & 1;
}

uint64_t sub_191630BB0()
{
  sub_19166C778();
  sub_19166B828();

  return sub_19166C7B8();
}

uint64_t sub_191630C20(uint64_t a1)
{
  sub_19166B828();
}

uint64_t sub_191630C7C(uint64_t a1)
{
  sub_19166C778();
  sub_19166B828();

  return sub_19166C7B8();
}

uint64_t sub_191630CE8@<X0>(char *a2@<X8>)
{
  v3 = sub_19166C278();

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

void sub_191630D48(uint64_t *a1@<X8>)
{
  v2 = 28271;
  if (*v1)
  {
    v2 = 6710895;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_191630D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19163FF58();
  v9 = MEMORY[0x1E698CF90];

  return MEMORY[0x1EEDEE530](a1, a2, a3, a4, v8, v9);
}

uint64_t sub_191630DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_19163FF58();
  v5 = MEMORY[0x1E698CF90];

  return MEMORY[0x1EEDEE390](a1, a2, v4, v5);
}

uint64_t AXCTLSupport.Path.init(argument:)@<X0>(uint64_t a3@<X8>)
{
  v4 = type metadata accessor for AXCTLSupport.Path(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19166B028();

  sub_191630FD0(v8, a3);
  return (*(v5 + 56))(a3, 0, 1, v4);
}

uint64_t sub_191630FD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXCTLSupport.Path(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AXCTLSupport.Path.validatePathIsReachable()()
{
  v1 = sub_19166B058();
  if (!v0 && (v1 & 1) == 0)
  {
    sub_19166C0C8();

    v2 = _s15AXCoreUtilities12AXCTLSupportO4PathV4pathSSvg_0();
    MEMORY[0x193AFC710](v2);

    sub_19166B4C8();
    sub_19163E2DC(&qword_1EADAFEE0, MEMORY[0x1E698CF48], MEMORY[0x1E698CF50]);
    swift_allocError();
    sub_19166B4D8();
    swift_willThrow();
  }
}

uint64_t sub_191631140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19166B028();

  sub_191630FD0(v8, a4);
  return (*(v6 + 56))(a4, 0, 1, a3);
}

uint64_t UUID.init(argument:)@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A0, &qword_191673940);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_19166B168();

  v8 = sub_19166B1C8();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_19159E780(v7, &qword_1EADAF4A0, &qword_191673940);
    v10 = 1;
  }

  else
  {
    (*(v9 + 32))(a3, v7, v8);
    v10 = 0;
  }

  return (*(v9 + 56))(a3, v10, 1, v8);
}

uint64_t sub_191631378@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A0, &qword_191673940);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13 - v8;
  sub_19166B168();

  v10 = *(a3 - 8);
  if ((*(v10 + 48))(v9, 1, a3) == 1)
  {
    sub_19159E780(v9, &qword_1EADAF4A0, &qword_191673940);
    v11 = 1;
  }

  else
  {
    (*(v10 + 32))(a4, v9, a3);
    v11 = 0;
  }

  return (*(v10 + 56))(a4, v11, 1, a3);
}

uint64_t AXCTLCommandProtocol.run()(uint64_t a1, uint64_t a2)
{
  v5 = sub_19166B508();
  v2[3] = v5;
  v2[4] = *(v5 - 8);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v8 = (*(a2 + 16) + **(a2 + 16));
  v6 = swift_task_alloc();
  v2[7] = v6;
  *v6 = v2;
  v6[1] = sub_191631654;

  return v8(a1, a2);
}

uint64_t sub_191631654()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_19163179C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_19163179C()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3B8, &qword_1916724F0);
  if (!swift_dynamicCast())
  {

    if (qword_1EADAF160 != -1)
    {
      swift_once();
    }

    v10 = sub_19166AFE8();
    v11 = [v10 debugDescription];

    v12 = sub_19166B748();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    AXCTLSupport.System.error(_:)(v15);

    exit(-1);
  }

  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);

  (*(v6 + 32))(v4, v3, v5);
  sub_19163E2DC(&qword_1EADAFEE8, MEMORY[0x1E698CF80], MEMORY[0x1E698CF88]);
  swift_allocError();
  (*(v6 + 16))(v7, v4, v5);
  swift_willThrow();
  (*(v6 + 8))(v4, v5);

  v8 = *(v0 + 8);

  return v8();
}

Swift::Void __swiftcall AXCTLSupport.System.error(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    v8 = sub_19166BB58();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v1;
    v9[5] = countAndFlagsBits;
    v9[6] = object;

    sub_1915D5BFC(0, 0, v7, &unk_191673960, v9);
  }

  else
  {
    v14 = 0x203A524F525245;
    v15 = 0xE700000000000000;
    MEMORY[0x193AFC710](countAndFlagsBits, object);
    v11 = v14;
    v10 = v15;
    if (isatty(1))
    {
      v14 = 0x6D31335B1BLL;
      v15 = 0xE500000000000000;
      MEMORY[0x193AFC710](v11, v10);

      MEMORY[0x193AFC710](1831885595, 0xE400000000000000);

      MEMORY[0x193AFC710](32, 0xE100000000000000);

      v11 = v14;
      v10 = v15;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFEF0, &qword_191673950);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_191672210;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 32) = v11;
    *(v12 + 40) = v10;
    _s15AXCoreUtilities12AXCTLSupportO6SystemC5print_9separator10terminatoryypd_S2StF_0();
  }
}

uint64_t AXCTLCommandSupportingInteractiveProtocol.axctl_run()(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_191631CA0, 0, 0);
}

uint64_t sub_191631CA0()
{
  if (qword_1EADAF160 != -1)
  {
    swift_once();
  }

  v1 = off_1EADAFEB0;
  swift_beginAccess();
  if (v1[17])
  {
    v2 = sub_19166B4E8();
    v4 = v3;
    swift_beginAccess();
    if (v1[16] == 1)
    {
      v5 = *(v0 + 80);
      v6 = sub_19166BB58();
      (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
      v7 = swift_allocObject();
      v7[2] = 0;
      v7[3] = 0;
      v7[4] = v1;
      v7[5] = v2;
      v7[6] = v4;

      sub_1915D5BFC(0, 0, v5, &unk_191673978, v7);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFEF0, &qword_191673950);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_191672210;
      *(v9 + 56) = MEMORY[0x1E69E6158];
      *(v9 + 32) = v2;
      *(v9 + 40) = v4;
      _s15AXCoreUtilities12AXCTLSupportO6SystemC5print_9separator10terminatoryypd_S2StF_0();
    }

    v8 = *(v0 + 8);
  }

  else
  {
    sub_19166B508();
    sub_19163E2DC(&qword_1EADAFEE8, MEMORY[0x1E698CF80], MEMORY[0x1E698CF88]);
    swift_allocError();
    sub_19166B4F8();
    swift_willThrow();

    v8 = *(v0 + 8);
  }

  return v8();
}

Swift::Void __swiftcall AXCTLSupport.System.write(_:terminator:)(Swift::String _, Swift::String terminator)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v12 - v7;
  swift_beginAccess();
  if (*(v2 + 16) == 1)
  {
    v9 = sub_19166BB58();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v2;
    v10[5] = countAndFlagsBits;
    v10[6] = object;

    sub_1915D5BFC(0, 0, v8, &unk_191673980, v10);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFEF0, &qword_191673950);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_191672210;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 32) = countAndFlagsBits;
    *(v11 + 40) = object;

    _s15AXCoreUtilities12AXCTLSupportO6SystemC5print_9separator10terminatoryypd_S2StF_0();
  }
}

uint64_t sub_191632104()
{
  v1 = *v0;
  v2 = 0x726F727265;
  v3 = 0x746C7561666564;
  v4 = 1868983913;
  if (v1 != 3)
  {
    v4 = 0x6775626564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E696E726177;
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

uint64_t sub_191632190@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_19163E440(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1916321C4(uint64_t a1)
{
  v2 = sub_191635C88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191632200(uint64_t a1)
{
  v2 = sub_191635C88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191632248(uint64_t a1)
{
  v2 = sub_191635CDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191632284(uint64_t a1)
{
  v2 = sub_191635CDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1916322C0(uint64_t a1)
{
  v2 = sub_191635D84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1916322FC(uint64_t a1)
{
  v2 = sub_191635D84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191632338(uint64_t a1)
{
  v2 = sub_191635E2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191632374(uint64_t a1)
{
  v2 = sub_191635E2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1916323B0(uint64_t a1)
{
  v2 = sub_191635D30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1916323EC(uint64_t a1)
{
  v2 = sub_191635D30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191632428()
{
  sub_19166C778();
  MEMORY[0x193AFD630](0);
  return sub_19166C7B8();
}

uint64_t sub_19163246C(uint64_t a1)
{
  sub_19166C778();
  MEMORY[0x193AFD630](0);
  return sub_19166C7B8();
}

uint64_t sub_1916324AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_19166C5E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_19163252C(uint64_t a1)
{
  v2 = sub_191635DD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191632568(uint64_t a1)
{
  v2 = sub_191635DD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AXCTLSupport.ToolingMessage.Message.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFEF8, &qword_191673988);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v45 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFF00, &qword_191673990);
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v42 = &v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFF08, &qword_191673998);
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v39 = &v38 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFF10, &qword_1916739A0);
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFF18, &qword_1916739A8);
  v38 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v38 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFF20, &qword_1916739B0);
  v20 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v21);
  v23 = &v38 - v22;
  v24 = v1[1];
  v50 = *v1;
  v51 = v24;
  v25 = *(v1 + 16);
  v26 = a1[3];
  v27 = a1;
  v28 = v23;
  __swift_project_boxed_opaque_existential_1(v27, v26);
  sub_191635C88();
  sub_19166C808();
  v29 = (v20 + 8);
  if (v25 <= 1)
  {
    v34 = v16;
    v36 = v48;
    v35 = v49;
    if (v25)
    {
      v54 = 1;
      sub_191635DD8();
      v31 = v52;
      sub_19166C338();
      sub_19166C378();
      (*(v36 + 8))(v15, v35);
    }

    else
    {
      v53 = 0;
      sub_191635E2C();
      v31 = v52;
      sub_19166C338();
      sub_19166C378();
      (*(v38 + 8))(v19, v34);
    }
  }

  else
  {
    if (v25 == 2)
    {
      v55 = 2;
      sub_191635D84();
      v30 = v39;
      v31 = v52;
      sub_19166C338();
      v32 = v41;
      sub_19166C378();
      v33 = v40;
    }

    else if (v25 == 3)
    {
      v56 = 3;
      sub_191635D30();
      v30 = v42;
      v31 = v52;
      sub_19166C338();
      v32 = v44;
      sub_19166C378();
      v33 = v43;
    }

    else
    {
      v57 = 4;
      sub_191635CDC();
      v30 = v45;
      v31 = v52;
      sub_19166C338();
      v32 = v47;
      sub_19166C378();
      v33 = v46;
    }

    (*(v33 + 8))(v30, v32);
  }

  return (*v29)(v28, v31);
}

uint64_t AXCTLSupport.ToolingMessage.Message.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFF58, &qword_1916739B8);
  v72 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v3);
  v77 = &v60[-v4];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFF60, &qword_1916739C0);
  v73 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v5);
  v76 = &v60[-v6];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFF68, &qword_1916739C8);
  v71 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v7);
  v75 = &v60[-v8];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFF70, &qword_1916739D0);
  v68 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v9);
  v11 = &v60[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFF78, &qword_1916739D8);
  v66 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v60[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFF80, &qword_1916739E0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v60[-v19];
  v21 = a1[3];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_191635C88();
  v22 = v78;
  sub_19166C7F8();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(v79);
  }

  v63 = v12;
  v64 = 0;
  v24 = v75;
  v23 = v76;
  v25 = v77;
  v78 = v17;
  v26 = v20;
  v27 = sub_19166C318();
  v28 = *(v27 + 16);
  if (!v28 || ((LODWORD(v29) = *(v27 + 32), v28 == 1) ? (v30 = v29 == 5) : (v30 = 1), v30))
  {
    v31 = v16;
    v32 = sub_19166C0F8();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFF88, &qword_1916739E8);
    *v34 = &type metadata for AXCTLSupport.ToolingMessage.Message;
    sub_19166C2A8();
    sub_19166C0E8();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    (*(v78 + 8))(v26, v31);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v79);
  }

  v62 = v27;
  if (v29 > 1)
  {
    v61 = v29;
    if (v29 != 2)
    {
      v30 = v29 == 3;
      v35 = v74;
      v29 = v26;
      if (v30)
      {
        v83 = 3;
        sub_191635D30();
        v36 = v64;
        sub_19166C298();
        v37 = v78;
        if (v36)
        {
LABEL_22:
          (*(v37 + 8))(v26, v16);
          goto LABEL_25;
        }

        v38 = v69;
        v55 = sub_19166C2E8();
        v57 = v56;
        (*(v73 + 8))(v23, v38);
        v58 = v55;
      }

      else
      {
        v84 = 4;
        sub_191635CDC();
        v46 = v64;
        sub_19166C298();
        v37 = v78;
        if (v46)
        {
          goto LABEL_22;
        }

        v50 = v70;
        v58 = sub_19166C2E8();
        v57 = v59;
        (*(v72 + 8))(v25, v50);
        v35 = v74;
      }

      goto LABEL_30;
    }

    v82 = 2;
    sub_191635D84();
    v29 = v26;
    v45 = v64;
    sub_19166C298();
    v35 = v74;
    if (!v45)
    {
      v49 = v67;
      v58 = sub_19166C2E8();
      v57 = v54;
      (*(v71 + 8))(v24, v49);
      v37 = v78;
LABEL_30:
      (*(v37 + 8))(v29, v16);
      swift_unknownObjectRelease();
      LOBYTE(v29) = v61;
      goto LABEL_31;
    }

    v41 = v78;
LABEL_20:
    (*(v41 + 8))(v29, v16);
LABEL_25:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v79);
  }

  if (v29)
  {
    v81 = 1;
    sub_191635DD8();
    v47 = v64;
    sub_19166C298();
    v48 = v78;
    if (v47)
    {
      (*(v78 + 8))(v26, v16);
      goto LABEL_25;
    }

    v51 = v65;
    v58 = sub_19166C2E8();
    v57 = v52;
    (*(v68 + 8))(v11, v51);
    (*(v48 + 8))(v26, v16);
    swift_unknownObjectRelease();
    v35 = v74;
  }

  else
  {
    v80 = 0;
    sub_191635E2C();
    v39 = v15;
    v29 = v26;
    v40 = v64;
    sub_19166C298();
    v41 = v78;
    if (v40)
    {
      goto LABEL_20;
    }

    v42 = v63;
    v43 = sub_19166C2E8();
    v57 = v44;
    (*(v66 + 8))(v39, v42);
    (*(v41 + 8))(v26, v16);
    swift_unknownObjectRelease();
    LOBYTE(v29) = 0;
    v58 = v43;
    v35 = v74;
  }

LABEL_31:
  *v35 = v58;
  *(v35 + 8) = v57;
  *(v35 + 16) = v29;
  return __swift_destroy_boxed_opaque_existential_1(v79);
}

uint64_t AXCTLSupport.ToolingMessage.command.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AXCTLSupport.ToolingMessage.command.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AXCTLSupport.ToolingMessage.message.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_191635E80(v2, v3, v4);
}

uint64_t AXCTLSupport.ToolingMessage.message.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_191635EAC(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t AXCTLSupport.ToolingMessage.init(command:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = *(a3 + 16);
  *a4 = a1;
  *(a4 + 8) = a2;
  result = sub_191635EAC(0, 0, 0xFFu);
  *(a4 + 16) = v5;
  *(a4 + 24) = v6;
  *(a4 + 32) = v7;
  return result;
}

uint64_t sub_191633624()
{
  if (*v0)
  {
    return 0x6567617373656DLL;
  }

  else
  {
    return 0x646E616D6D6F63;
  }
}

uint64_t sub_191633658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_19166C5E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_19166C5E8();

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

uint64_t sub_191633740(uint64_t a1)
{
  v2 = sub_191635ED8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19163377C(uint64_t a1)
{
  v2 = sub_191635ED8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AXCTLSupport.ToolingMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFF90, &qword_1916739F0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v11 - v6;
  v8 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v8;
  v17 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_191635ED8();
  sub_19166C808();
  LOBYTE(v14) = 0;
  v9 = v13;
  sub_19166C348();
  if (!v9)
  {
    v14 = v12;
    v15 = v11;
    v16 = v17;
    v18 = 1;
    sub_191635E80(v12, v11, v17);
    sub_191635F2C();
    sub_19166C368();
    sub_191635EAC(v14, v15, v16);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t AXCTLSupport.ToolingMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFFA8, &qword_1916739F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_191635ED8();
  sub_19166C7F8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    v18 = 0;
    v19 = 0;
    v20 = -1;
  }

  else
  {
    LOBYTE(v22) = 0;
    v10 = sub_19166C2B8();
    v13 = v12;
    v14 = v10;
    v25 = 1;
    sub_191635F80();
    sub_19166C2D8();
    (*(v6 + 8))(v9, v5);
    v15 = v22;
    v16 = v23;
    v17 = v24;
    sub_191635EAC(0, 0, 0xFFu);
    *a2 = v14;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
    *(a2 + 24) = v16;
    *(a2 + 32) = v17;

    sub_191635E80(v15, v16, v17);
    __swift_destroy_boxed_opaque_existential_1(a1);

    v18 = v15;
    v19 = v16;
    v20 = v17;
  }

  return sub_191635EAC(v18, v19, v20);
}

uint64_t sub_191633BC4()
{
  type metadata accessor for AXCTLSupport.System();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 18) = 0;
  v1 = [objc_opt_self() fileHandleWithStandardOutput];
  type metadata accessor for SWEAXStructuredDataFileHandleWriter();
  result = swift_allocObject();
  *(result + 16) = v1;
  *(v0 + 24) = result;
  off_1EADAFEB0 = v0;
  return result;
}

uint64_t System.getter()
{
  if (qword_1EADAF160 != -1)
  {
    swift_once();
  }
}

uint64_t AXCTLSupport.System.communicateWithToolingMessageProtocol.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t AXCTLSupport.System.axctlRunningInteractive.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 17) = a1;
  return result;
}

uint64_t AXCTLSupport.System.debugLoggingEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 18) = a1;
  return result;
}

uint64_t SWEAXStructuredDataFileHandleWriter.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_191633F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_191633F8C, 0, 0);
}

uint64_t sub_191633F8C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);

  sub_191635EAC(0, 0, 0xFFu);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_191634074;

  return sub_1916341AC(v0 + 16);
}

uint64_t sub_191634074()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
  }

  sub_1916401A0(v2 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1916403C4, 0, 0);
}

uint64_t sub_1916341AC(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFFB8, &qword_191673A08);
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_191634248, 0, 0);
}

uint64_t sub_191634248()
{
  v27 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = sub_19166AEB8();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = sub_191638D48(v2, v1);
  v6 = v5;
  *(v0 + 136) = v4;
  *(v0 + 144) = v5;
  sub_19159E780(v1, &qword_1EADAFFB8, &qword_191673A08);
  v7 = *(*(v0 + 120) + 16);
  *(v0 + 152) = v7;
  if (qword_1EADAF168 != -1)
  {
    swift_once();
  }

  v8 = qword_1EADAFEB8;
  v9 = unk_1EADAFEC0;
  v25 = qword_1EADAFEB8;
  v26 = unk_1EADAFEC0;
  v10 = MEMORY[0x1E6969080];
  v11 = MEMORY[0x1E6969078];
  *(v0 + 40) = MEMORY[0x1E6969080];
  *(v0 + 48) = v11;
  *(v0 + 16) = v4;
  *(v0 + 24) = v6;
  v12 = __swift_project_boxed_opaque_existential_1((v0 + 16), v10);
  v13 = *v12;
  v14 = v12[1];
  sub_1915DCB54(v8, v9);
  sub_1915DCB54(v4, v6);
  sub_19163DBCC(v13, v14, &v25);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v15 = v25;
  v16 = v26;
  if (qword_1EADAF170 != -1)
  {
    swift_once();
  }

  v17 = qword_1EADAFEC8;
  v18 = unk_1EADAFED0;
  *(v0 + 96) = v15;
  *(v0 + 104) = v16;
  *(v0 + 80) = v10;
  *(v0 + 88) = MEMORY[0x1E6969078];
  *(v0 + 56) = v17;
  *(v0 + 64) = v18;
  v19 = __swift_project_boxed_opaque_existential_1((v0 + 56), v10);
  v20 = *v19;
  v21 = v19[1];
  sub_1915DCB54(v15, v16);
  sub_1915DCB54(v17, v18);
  sub_19163DBCC(v20, v21, v0 + 96);
  sub_1915DCBA8(v15, v16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  *(v0 + 160) = *(v0 + 96);
  v22 = swift_task_alloc();
  *(v0 + 176) = v22;
  *(v22 + 16) = v7;
  v23 = swift_task_alloc();
  *(v0 + 184) = v23;
  *v23 = v0;
  v23[1] = sub_191634574;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_191634574()
{

  return MEMORY[0x1EEE6DFA0](sub_19163468C, 0, 0);
}

uint64_t sub_19163468C()
{
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = sub_19166B0D8();
  [v3 writeData_];

  sub_1915DCBA8(v1, v2);
  sub_1915DCBA8(v5, v4);

  v7 = v0[1];

  return v7();
}

uint64_t SWEAXStructuredDataFileHandleWriter.write<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a1;
  v5[15] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFFB8, &qword_191673A08);
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1916347F4, 0, 0);
}

uint64_t sub_1916347F4()
{
  v29 = v0;
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);
  sub_19166AEF8();
  v5 = sub_19166AEB8();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = static JSONEncoder.sweax_encode<A>(_:dateEncodingStrategy:)(v4, v1, v3, v2);
  v8 = v7;
  *(v0 + 152) = v6;
  *(v0 + 160) = v7;
  sub_19159E780(v1, &qword_1EADAFFB8, &qword_191673A08);
  v9 = *(*(v0 + 136) + 16);
  *(v0 + 168) = v9;
  if (qword_1EADAF168 != -1)
  {
    swift_once();
  }

  v10 = qword_1EADAFEB8;
  v11 = unk_1EADAFEC0;
  v27 = qword_1EADAFEB8;
  v28 = unk_1EADAFEC0;
  v12 = MEMORY[0x1E6969080];
  v13 = MEMORY[0x1E6969078];
  *(v0 + 40) = MEMORY[0x1E6969080];
  *(v0 + 48) = v13;
  *(v0 + 16) = v6;
  *(v0 + 24) = v8;
  v14 = __swift_project_boxed_opaque_existential_1((v0 + 16), v12);
  v15 = *v14;
  v16 = v14[1];
  sub_1915DCB54(v10, v11);
  sub_1915DCB54(v6, v8);
  sub_19163DBCC(v15, v16, &v27);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v17 = v27;
  v18 = v28;
  if (qword_1EADAF170 != -1)
  {
    swift_once();
  }

  v19 = qword_1EADAFEC8;
  v20 = unk_1EADAFED0;
  *(v0 + 96) = v17;
  *(v0 + 104) = v18;
  *(v0 + 80) = v12;
  *(v0 + 88) = MEMORY[0x1E6969078];
  *(v0 + 56) = v19;
  *(v0 + 64) = v20;
  v21 = __swift_project_boxed_opaque_existential_1((v0 + 56), v12);
  v22 = *v21;
  v23 = v21[1];
  sub_1915DCB54(v17, v18);
  sub_1915DCB54(v19, v20);
  sub_19163DBCC(v22, v23, v0 + 96);
  sub_1915DCBA8(v17, v18);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  *(v0 + 176) = *(v0 + 96);
  v24 = swift_task_alloc();
  *(v0 + 192) = v24;
  *(v24 + 16) = v9;
  v25 = swift_task_alloc();
  *(v0 + 200) = v25;
  *v25 = v0;
  v25[1] = sub_191634B34;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_191634B34()
{

  return MEMORY[0x1EEE6DFA0](sub_191634C4C, 0, 0);
}

uint64_t sub_191634C4C()
{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v6 = sub_19166B0D8();
  [v3 writeData_];

  sub_1915DCBA8(v1, v2);
  sub_1915DCBA8(v5, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_191634D24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1915D8338;

  return sub_191633F68(a1, v4, v5, v6, v7, v8);
}

Swift::Void __swiftcall AXCTLSupport.System.warning(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    v8 = sub_19166BB58();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v1;
    v9[5] = countAndFlagsBits;
    v9[6] = object;

    sub_1915D5BFC(0, 0, v7, &unk_191673A18, v9);
  }

  else
  {
    v14 = 0x203A4E524157;
    v15 = 0xE600000000000000;
    MEMORY[0x193AFC710](countAndFlagsBits, object);
    v11 = v14;
    v10 = v15;
    if (isatty(1))
    {
      v14 = 0x6D33335B1BLL;
      v15 = 0xE500000000000000;
      MEMORY[0x193AFC710](v11, v10);

      MEMORY[0x193AFC710](1831885595, 0xE400000000000000);

      MEMORY[0x193AFC710](32, 0xE100000000000000);

      v11 = v14;
      v10 = v15;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFEF0, &qword_191673950);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_191672210;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 32) = v11;
    *(v12 + 40) = v10;
    _s15AXCoreUtilities12AXCTLSupportO6SystemC5print_9separator10terminatoryypd_S2StF_0();
  }
}

uint64_t sub_191635028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_19163504C, 0, 0);
}

uint64_t sub_19163504C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);

  sub_191635EAC(0, 0, 0xFFu);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 48) = 1;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_191634074;

  return sub_1916341AC(v0 + 16);
}

Swift::Void __swiftcall AXCTLSupport.System.success(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - v6;
  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    v8 = sub_19166BB58();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v1;
    v9[5] = countAndFlagsBits;
    v9[6] = object;

    sub_1915D5BFC(0, 0, v7, &unk_191673A28, v9);
  }

  else
  {
    if (isatty(1))
    {
      v12 = 0x6D32335B1BLL;
      v13 = 0xE500000000000000;
      MEMORY[0x193AFC710](countAndFlagsBits, object);
      MEMORY[0x193AFC710](1831885595, 0xE400000000000000);

      MEMORY[0x193AFC710](32, 0xE100000000000000);

      countAndFlagsBits = v12;
      object = v13;
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFEF0, &qword_191673950);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_191672210;
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 32) = countAndFlagsBits;
    *(v10 + 40) = object;
    _s15AXCoreUtilities12AXCTLSupportO6SystemC5print_9separator10terminatoryypd_S2StF_0();
  }
}

uint64_t sub_191635364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_191635388, 0, 0);
}

uint64_t sub_191635388()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);

  sub_191635EAC(0, 0, 0xFFu);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 48) = 2;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_191634074;

  return sub_1916341AC(v0 + 16);
}

Swift::Void __swiftcall AXCTLSupport.System.h1(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    v8 = sub_19166BB58();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v1;
    v9[5] = countAndFlagsBits;
    v9[6] = object;

    sub_1915D5BFC(0, 0, v7, &unk_191673A38, v9);
  }

  else
  {
    v16 = 10;
    v17 = 0xE100000000000000;
    v10 = sub_19166B918();
    MEMORY[0x193AFC710](v10);

    MEMORY[0x193AFC710](10, 0xE100000000000000);
    MEMORY[0x193AFC710](countAndFlagsBits, object);
    MEMORY[0x193AFC710](10, 0xE100000000000000);
    v11 = sub_19166B918();
    MEMORY[0x193AFC710](v11);

    MEMORY[0x193AFC710](10, 0xE100000000000000);
    v13 = v16;
    v12 = v17;
    if (isatty(1))
    {
      v16 = 0x6D34335B1BLL;
      v17 = 0xE500000000000000;
      MEMORY[0x193AFC710](v13, v12);

      MEMORY[0x193AFC710](1831885595, 0xE400000000000000);
      v13 = v16;
      v12 = v17;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFEF0, &qword_191673950);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_191672210;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 32) = v13;
    *(v14 + 40) = v12;
    _s15AXCoreUtilities12AXCTLSupportO6SystemC5print_9separator10terminatoryypd_S2StF_0();
  }
}

uint64_t sub_1916356F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_19163571C, 0, 0);
}

uint64_t sub_19163571C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);

  sub_191635EAC(0, 0, 0xFFu);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 48) = 2;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_191635808;

  return sub_1916341AC(v0 + 16);
}

uint64_t sub_191635808()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {

    sub_1916401A0(v2 + 16);
    v3 = sub_1916403C4;
  }

  else
  {
    sub_1916401A0(v2 + 16);
    v3 = sub_191635940;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

Swift::Void __swiftcall AXCTLSupport.System.h2(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - v6;
  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    v8 = sub_19166BB58();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v1;
    v9[5] = countAndFlagsBits;
    v9[6] = object;

    sub_1915D5BFC(0, 0, v7, &unk_191673A48, v9);
  }

  else
  {
    v15 = 10;
    v16 = 0xE100000000000000;
    MEMORY[0x193AFC710](countAndFlagsBits, object);
    MEMORY[0x193AFC710](10, 0xE100000000000000);
    v10 = sub_19166B918();
    MEMORY[0x193AFC710](v10);

    MEMORY[0x193AFC710](10, 0xE100000000000000);
    v12 = v15;
    v11 = v16;
    if (isatty(1))
    {
      v15 = 0x6D34335B1BLL;
      v16 = 0xE500000000000000;
      MEMORY[0x193AFC710](v12, v11);

      MEMORY[0x193AFC710](1831885595, 0xE400000000000000);
      v12 = v15;
      v11 = v16;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFEF0, &qword_191673950);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_191672210;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 32) = v12;
    *(v13 + 40) = v11;
    _s15AXCoreUtilities12AXCTLSupportO6SystemC5print_9separator10terminatoryypd_S2StF_0();
  }
}

uint64_t sub_191635BC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1915D8338;

  return sub_191635364(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_191635C88()
{
  result = qword_1EADAFF28;
  if (!qword_1EADAFF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFF28);
  }

  return result;
}

unint64_t sub_191635CDC()
{
  result = qword_1EADAFF30;
  if (!qword_1EADAFF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFF30);
  }

  return result;
}

unint64_t sub_191635D30()
{
  result = qword_1EADAFF38;
  if (!qword_1EADAFF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFF38);
  }

  return result;
}

unint64_t sub_191635D84()
{
  result = qword_1EADAFF40;
  if (!qword_1EADAFF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFF40);
  }

  return result;
}

unint64_t sub_191635DD8()
{
  result = qword_1EADAFF48;
  if (!qword_1EADAFF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFF48);
  }

  return result;
}

unint64_t sub_191635E2C()
{
  result = qword_1EADAFF50;
  if (!qword_1EADAFF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFF50);
  }

  return result;
}

uint64_t sub_191635E80(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_191635E94(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_191635E94(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_191635EAC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_191635EC0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_191635EC0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

unint64_t sub_191635ED8()
{
  result = qword_1EADAFF98;
  if (!qword_1EADAFF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFF98);
  }

  return result;
}

unint64_t sub_191635F2C()
{
  result = qword_1EADAFFA0;
  if (!qword_1EADAFFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFFA0);
  }

  return result;
}

unint64_t sub_191635F80()
{
  result = qword_1EADAFFB0;
  if (!qword_1EADAFFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFFB0);
  }

  return result;
}

Swift::Void __swiftcall AXCTLSupport.System.debug(_:terminator:)(Swift::String _, Swift::String terminator)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v12[-v7];
  swift_beginAccess();
  if (*(v2 + 18) == 1)
  {
    swift_beginAccess();
    if (*(v2 + 16) == 1)
    {
      v9 = sub_19166BB58();
      (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
      v10 = swift_allocObject();
      v10[2] = 0;
      v10[3] = 0;
      v10[4] = v2;
      v10[5] = countAndFlagsBits;
      v10[6] = object;

      sub_1915D5BFC(0, 0, v8, &unk_191673A58, v10);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFEF0, &qword_191673950);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_191672210;
      *(v11 + 56) = MEMORY[0x1E69E6158];
      *(v11 + 32) = countAndFlagsBits;
      *(v11 + 40) = object;

      _s15AXCoreUtilities12AXCTLSupportO6SystemC5print_9separator10terminatoryypd_S2StF_0();
    }
  }
}

uint64_t sub_1916361B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1916361D4, 0, 0);
}

uint64_t sub_1916361D4()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);

  sub_191635EAC(0, 0, 0xFFu);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 48) = 4;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_191634074;

  return sub_1916341AC(v0 + 16);
}

uint64_t AXCTLSupport.System.startReadlineSession(prompt:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_191636364, 0, 0);
}

uint64_t sub_191636364()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = sub_19166BB58();
  v10 = *(v0 + 32);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v10;
  *(v5 + 56) = v1;

  v6 = sub_1915FC620(0, 0, v2, &unk_191673A70, v5);
  *(v0 + 64) = v6;
  sub_19159E780(v2, &qword_1EADAF3D0, &qword_1916720D0);
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_1916364EC;
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DA40](v8, v6, &type metadata for AXCTLSupport.System.ReadlineSessionResult);
}

uint64_t sub_1916364EC()
{

  return MEMORY[0x1EEE6DFA0](sub_1916365E8, 0, 0);
}

uint64_t sub_1916365E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_191636650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_191636678, 0, 0);
}

uint64_t sub_191636678()
{
  while (1)
  {
    v1 = sub_19166B7D8();
    v2 = readline((v1 + 32));

    if (!v2)
    {
      break;
    }

    *(v0 + 56) = v2;
    add_history(v2);
    v3 = sub_19166B878();
    *(v0 + 64) = v4;
    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v8 = *(v0 + 40);
      *(v0 + 80) = 0;
      v12 = (v8 + *v8);
      v9 = v3;
      v10 = v4;
      v11 = swift_task_alloc();
      *(v0 + 72) = v11;
      *v11 = v0;
      v11[1] = sub_191636840;

      return v12(v9, v10, v0 + 80);
    }

    free(*(v0 + 56));
  }

  **(v0 + 16) = 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_191636840()
{

  return MEMORY[0x1EEE6DFA0](sub_191636958, 0, 0);
}

uint64_t sub_191636958()
{
  if (*(v0 + 80))
  {
    **(v0 + 16) = 1;
LABEL_9:
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    while (1)
    {
      free(*(v0 + 56));
      v1 = sub_19166B7D8();
      v2 = readline((v1 + 32));

      if (!v2)
      {
        **(v0 + 16) = 0;
        goto LABEL_9;
      }

      *(v0 + 56) = v2;
      add_history(v2);
      v3 = sub_19166B878();
      *(v0 + 64) = v4;
      v5 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v5 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (v5)
      {
        break;
      }
    }

    v8 = *(v0 + 40);
    *(v0 + 80) = 0;
    v12 = (v8 + *v8);
    v9 = v3;
    v10 = v4;
    v11 = swift_task_alloc();
    *(v0 + 72) = v11;
    *v11 = v0;
    v11[1] = sub_191636840;

    return v12(v9, v10, v0 + 80);
  }
}

Swift::Void __swiftcall AXCTLSupport.System.postDarwinNote(_:)(Swift::String a1)
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = sub_19166B718();
  CFNotificationCenterPostNotification(v1, v2, 0, 0, 1u);
}

uint64_t AXCTLSupport.System.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t AXCTLSupport.RuntimeError.errorDescription.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AXCTLSupport.RuntimeError.debugDescription.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_191636C64()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_191636CB4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19166B088();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AXCTLSupport.TransmutationProcess.executableURL.setter(uint64_t a1)
{
  v3 = sub_19166B088();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AXCTLSupport.TransmutationProcess.args.getter()
{
  type metadata accessor for AXCTLSupport.TransmutationProcess(0);
}

uint64_t AXCTLSupport.TransmutationProcess.args.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AXCTLSupport.TransmutationProcess(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AXCTLSupport.TransmutationProcess.environment.getter()
{
  type metadata accessor for AXCTLSupport.TransmutationProcess(0);
}

uint64_t AXCTLSupport.TransmutationProcess.environment.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AXCTLSupport.TransmutationProcess(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AXCTLSupport.TransmutationProcess.init(executableURL:args:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_19166B088();
  v9 = *(v8 - 8);
  (*(v9 + 16))(a4, a1, v8);
  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = type metadata accessor for AXCTLSupport.TransmutationProcess(0);
  *(a4 + *(v11 + 20)) = v10;
  if (!a3)
  {
    v12 = [objc_opt_self() processInfo];
    v13 = [v12 environment];

    a3 = sub_19166B678();
  }

  result = (*(v9 + 8))(a1, v8);
  *(a4 + *(v11 + 24)) = a3;
  return result;
}

uint64_t AXCTLSupport.TransmutationProcess.init(launchPath:args:environment:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = sub_19166B088();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19166B028();

  (*(v9 + 16))(a5, v12, v8);
  if (a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = type metadata accessor for AXCTLSupport.TransmutationProcess(0);
  *(a5 + *(v14 + 20)) = v13;
  if (!a4)
  {
    v15 = [objc_opt_self() processInfo];
    v16 = [v15 environment];

    a4 = sub_19166B678();
  }

  result = (*(v9 + 8))(v12, v8);
  *(a5 + *(v14 + 24)) = a4;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AXCTLSupport.TransmutationProcess.transmutateCurrentProcess()()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultManager];
  _s15AXCoreUtilities12AXCTLSupportO4PathV4pathSSvg_0();
  v3 = sub_19166B718();

  v4 = [v2 fileExistsAtPath_];

  if (!v4)
  {
    sub_19166C0C8();

    v19 = _s15AXCoreUtilities12AXCTLSupportO4PathV4pathSSvg_0();
    MEMORY[0x193AFC710](v19);

    MEMORY[0x193AFC710](0xD000000000000018, 0x800000019167D380);
    sub_191630948();
    swift_allocError();
    *v20 = 0xD000000000000013;
    v20[1] = 0x800000019167D360;
    swift_willThrow();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4E0, &qword_1916724A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  *(inited + 32) = sub_19166B038();
  *(inited + 40) = v6;
  v7 = type metadata accessor for AXCTLSupport.TransmutationProcess(0);

  sub_1915E3DD8(v8);
  v9 = sub_1916377F0(inited);

  *&__file = v9;
  sub_1915E3ECC(qword_1F05759B0);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  v45 = v1;
  if (v10)
  {
    *&__file = MEMORY[0x1E69E7CC0];
    sub_1915F4F54(0, v10, 0);
    v12 = v11;
    v13 = (v9 + 40);
    do
    {
      v14 = *v13;
      v13 += 2;
      if (v14)
      {
        v15 = sub_19166B7D8();
        swift_bridgeObjectRetain_n();
        v16 = strdup((v15 + 32));
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v16 = 0;
      }

      *&__file = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1915F4F54((v17 > 1), v18 + 1, 1);
        v12 = __file;
      }

      *(v12 + 16) = v18 + 1;
      *(v12 + 8 * v18 + 32) = v16;
      --v10;
    }

    while (v10);

    v1 = v45;
    v11 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v47 = v12;
  *&__file = sub_1916305B0(*(v1 + *(v7 + 24)));
  sub_1915E3ECC(qword_1F05759E0);
  v21 = __file;
  v22 = *(__file + 16);
  if (v22)
  {
    *&__file = v11;
    sub_1915F4F54(0, v22, 0);
    v23 = v11;
    v24 = (v21 + 40);
    do
    {
      v25 = *v24;
      v24 += 2;
      if (v25)
      {
        v26 = sub_19166B7D8();
        swift_bridgeObjectRetain_n();
        v27 = strdup((v26 + 32));
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v27 = 0;
      }

      *&__file = v23;
      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1915F4F54((v28 > 1), v29 + 1, 1);
        v23 = __file;
      }

      *(v23 + 16) = v29 + 1;
      *(v23 + 8 * v29 + 32) = v27;
      --v22;
    }

    while (v22);
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
  }

  v30 = _s15AXCoreUtilities12AXCTLSupportO4PathV4pathSSvg_0();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v30, v31);
  if ((v32 & 0x1000000000000000) != 0)
  {
    goto LABEL_36;
  }

  if ((v32 & 0x2000000000000000) != 0)
  {
    *&__file = v33;
    *(&__file + 1) = v32 & 0xFFFFFFFFFFFFFFLL;
    p_file = &__file;
    goto LABEL_28;
  }

  if ((v33 & 0x1000000000000000) == 0)
  {
LABEL_36:
    sub_19166C0A8();
    goto LABEL_29;
  }

  p_file = ((v32 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_28:
  execve(p_file, (v12 + 32), (v23 + 32));
LABEL_29:

  v35 = *(v47 + 16);
  if (v35)
  {
    v36 = (v47 + 32);
    do
    {
      v37 = *v36++;
      free(v37);
      --v35;
    }

    while (v35);
  }

  v38 = *(v23 + 16);
  if (v38)
  {
    v39 = (v23 + 32);
    do
    {
      v40 = *v39++;
      free(v40);
      --v38;
    }

    while (v38);
  }

  *&__file = 0;
  *(&__file + 1) = 0xE000000000000000;
  sub_19166C0C8();

  strcpy(&__file, "execve of ");
  BYTE11(__file) = 0;
  HIDWORD(__file) = -369098752;
  v41 = _s15AXCoreUtilities12AXCTLSupportO4PathV4pathSSvg_0();
  MEMORY[0x193AFC710](v41);

  MEMORY[0x193AFC710](0x3A64656C69616620, 0xE900000000000020);
  v42 = sub_19166C3C8();
  MEMORY[0x193AFC710](v42);

  v43 = __file;
  sub_191630948();
  swift_allocError();
  *v44 = v43;
  swift_willThrow();
}

uint64_t sub_1916377F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1915F4F34(0, v1, 0);
    v2 = v10;
    v4 = a1 + 40;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4D0, &unk_191672480);
      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1915F4F34((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t AXCTLSupport.SimpleTask.Result.standardOut.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AXCTLSupport.SimpleTask.Result.standardOut.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t AXCTLSupport.SimpleTask.Result.standardError.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AXCTLSupport.SimpleTask.Result.standardError.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void AXCTLSupport.SimpleTask.__allocating_init(executablePath:arguments:collectOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v9 = objc_allocWithZone(v4);
  AXCTLSupport.SimpleTask.init(executablePath:arguments:collectOutput:)(a1, a2, a3, v5);
}

void AXCTLSupport.SimpleTask.init(executablePath:arguments:collectOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_task] = 0;
  *&v4[OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_stdOutData] = xmmword_191673910;
  *&v4[OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_stdErrorData] = xmmword_191673910;
  v7 = &v4[OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_result];
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0xE000000000000000;
  v7[3] = 0;
  v7[4] = 0xE000000000000000;
  v4[OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_collectOutput] = a4;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v19, sel_init);
  v9 = objc_allocWithZone(MEMORY[0x1E696AED8]);
  v10 = v8;
  v11 = [v9 init];
  v12 = OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_task;
  v13 = *&v10[OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_task];
  *&v10[OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_task] = v11;
  v14 = v11;

  if (v14)
  {
    v15 = sub_19166B718();
    [v14 setLaunchPath_];

    v16 = *&v10[v12];
    if (v16)
    {
      v17 = v16;

      v18 = sub_19166B9F8();

      [v17 setArguments_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void __swiftcall AXCTLSupport.SimpleTask.run()(AXCoreUtilities::AXCTLSupport::SimpleTask::Result *__return_ptr retstr)
{
  v2 = v1;
  v4 = &qword_1EADAF000;
  if (*(v1 + OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_collectOutput) != 1)
  {
    goto LABEL_5;
  }

  v5 = [objc_allocWithZone(MEMORY[0x1E696AE00]) init];
  v6 = [v5 fileHandleForReading];
  v7 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v33 = sub_19163E294;
  v34 = v7;
  v29 = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1916403D4;
  v32 = &block_descriptor_60;
  v8 = _Block_copy(&v29);

  sub_1915A4734(sub_19163E294, v7);

  [v6 setReadabilityHandler_];
  _Block_release(v8);

  v9 = [objc_allocWithZone(MEMORY[0x1E696AE00]) init];
  v10 = [v9 fileHandleForReading];
  v11 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v33 = sub_19163E2B8;
  v34 = v11;
  v29 = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1916403D4;
  v32 = &block_descriptor_57;
  v12 = _Block_copy(&v29);

  sub_1915A4734(sub_19163E2B8, v11);

  [v10 setReadabilityHandler_];
  _Block_release(v12);

  v4 = &qword_1EADAF000;

  v13 = OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_task;
  v14 = *(v2 + OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_task);
  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v14 setStandardOutput_];
  v15 = *(v2 + v13);
  if (v15)
  {
    [v15 setStandardError_];

LABEL_5:
    v16 = dispatch_semaphore_create(0);
    v17 = v4[504];
    v18 = *(v2 + v17);
    if (v18)
    {
      v19 = v16;
      v20 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      *(v21 + 24) = v19;
      v33 = sub_19163E274;
      v34 = v21;
      v29 = MEMORY[0x1E69E9820];
      v30 = 1107296256;
      v31 = sub_1916403D4;
      v32 = &block_descriptor_4;
      v22 = _Block_copy(&v29);
      v23 = v18;

      v24 = v19;
      sub_1915A4734(sub_19163E274, v21);

      [v23 setTerminationHandler_];
      _Block_release(v22);

      v25 = *(v2 + v17);
      if (v25)
      {
        [v25 launch];
        sub_19166BE98();

        v26 = *(v2 + OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_result + 16);
        v27 = *(v2 + OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_result + 24);
        v28 = *(v2 + OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_result + 32);
        *&retstr->returnCode = *(v2 + OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_result);
        retstr->standardOut._object = v26;
        retstr->standardError._countAndFlagsBits = v27;
        retstr->standardError._object = v28;

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_19163806C(void *a1, uint64_t a2, void *a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = [a1 availableData];
  v6 = sub_19166B0E8();
  v8 = v7;

  swift_beginAccess();
  sub_19166B108();
  swift_endAccess();

  return sub_1915DCBA8(v6, v8);
}

uint64_t sub_191638120(void *a1, uint64_t a2)
{
  v3 = sub_19166B798();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = Strong[OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_collectOutput];

  v7 = swift_unknownObjectUnownedLoadStrong();
  v8 = v7;
  if (v6 == 1)
  {
    v9 = (v7 + OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_stdOutData);
    swift_beginAccess();
    v10 = *v9;
    v11 = v9[1];
    sub_1915DCB54(*v9, v11);

    sub_19166B788();
    v12 = sub_19166B768();
    v14 = v13;
    sub_1915DCBA8(v10, v11);
    v15 = swift_unknownObjectUnownedLoadStrong();
    v16 = &v15[OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_stdErrorData];
    swift_beginAccess();
    v18 = *v16;
    v17 = v16[1];
    sub_1915DCB54(v18, v17);

    sub_19166B788();
    v19 = sub_19166B768();
    v21 = v20;
    sub_1915DCBA8(v18, v17);
    v22 = swift_unknownObjectUnownedLoadStrong();
    v23 = [a1 terminationStatus];
    *&v22[OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_result] = v23;

    v24 = swift_unknownObjectUnownedLoadStrong();
    if (v14)
    {
      v25 = v12;
    }

    else
    {
      v25 = 0;
    }

    v26 = &v24[OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_result];
    if (v14)
    {
      v27 = v14;
    }

    else
    {
      v27 = 0xE000000000000000;
    }

    *(v26 + 1) = v25;
    *(v26 + 2) = v27;

    v28 = swift_unknownObjectUnownedLoadStrong();
    if (v21)
    {
      v29 = v19;
    }

    else
    {
      v29 = 0;
    }

    v30 = &v28[OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_result];
    if (v21)
    {
      v31 = v21;
    }

    else
    {
      v31 = 0xE000000000000000;
    }

    *(v30 + 3) = v29;
    *(v30 + 4) = v31;

    if ([a1 standardOutput])
    {
      sub_19166BFC8();
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
    }

    v39 = v37;
    v40 = v38;
    if (*(&v38 + 1))
    {
      sub_191640148();
      if (swift_dynamicCast())
      {
        v33 = [v36 fileHandleForReading];

        [v33 setReadabilityHandler_];
        _Block_release(0);
      }
    }

    else
    {
      sub_19159E780(&v39, &unk_1EADB0270, &unk_191672C20);
    }

    if ([a1 standardError])
    {
      sub_19166BFC8();
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
    }

    v39 = v37;
    v40 = v38;
    if (*(&v38 + 1))
    {
      sub_191640148();
      if (swift_dynamicCast())
      {
        v34 = [v36 fileHandleForReading];

        [v34 setReadabilityHandler_];
        _Block_release(0);
      }
    }

    else
    {
      sub_19159E780(&v39, &unk_1EADB0270, &unk_191672C20);
    }
  }

  else
  {
    v32 = [a1 terminationStatus];
    *&v8[OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_result] = v32;
  }

  return sub_19166BEA8();
}

void sub_191638514(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void static AXCTLSupport.SimpleTask.do(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);

  AXCTLSupport.SimpleTask.init(executablePath:arguments:collectOutput:)(a1, a2, a3, 1);
  v9 = v8;
  AXCTLSupport.SimpleTask.run()(&v15);
  returnCode = v15.returnCode;

  if (returnCode)
  {
    v15.returnCode = 0;
    v15.standardOut._countAndFlagsBits = 0xE000000000000000;
    sub_19166C0C8();

    v15.returnCode = 0xD00000000000001ELL;
    v15.standardOut._countAndFlagsBits = 0x800000019167D3E0;
    v11 = sub_19166C3C8();
    MEMORY[0x193AFC710](v11);

    MEMORY[0x193AFC710](0x646E616D6D6F6320, 0xE90000000000003DLL);
    MEMORY[0x193AFC710](a1, a2);
    v12 = v15.returnCode;
    countAndFlagsBits = v15.standardOut._countAndFlagsBits;
    sub_191630948();
    swift_allocError();
    *v14 = v12;
    v14[1] = countAndFlagsBits;
    swift_willThrow();
  }
}

id AXCTLSupport.SimpleTask.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AXCTLSupport.SimpleTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static JSONDecoder.sweax_decode<A>(_:dateDecodingStrategy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21[2] = a2;
  v21[3] = a5;
  v21[0] = a6;
  v21[1] = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFFE8, &qword_191673A80);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v21 - v9;
  v11 = sub_19166AE18();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = v21 - v18;
  sub_19166AE58();
  swift_allocObject();
  sub_19166AE48();
  sub_1915E0A90(a3, v10, &qword_1EADAFFE8, &qword_191673A80);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_19159E780(v10, &qword_1EADAFFE8, &qword_191673A80);
  }

  else
  {
    (*(v12 + 32))(v19, v10, v11);
    (*(v12 + 16))(v16, v19, v11);
    sub_19166AE28();
    (*(v12 + 8))(v19, v11);
  }

  sub_19166AE38();
}

uint64_t static JSONDecoder.sweax_decode<A>(as:data:dateDecodingStrategy:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v21[2] = a2;
  v21[3] = a5;
  v21[0] = a6;
  v21[1] = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFFE8, &qword_191673A80);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v21 - v9;
  v11 = sub_19166AE18();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = v21 - v18;
  sub_19166AE58();
  swift_allocObject();
  sub_19166AE48();
  sub_1915E0A90(a3, v10, &qword_1EADAFFE8, &qword_191673A80);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_19159E780(v10, &qword_1EADAFFE8, &qword_191673A80);
  }

  else
  {
    (*(v12 + 32))(v19, v10, v11);
    (*(v12 + 16))(v16, v19, v11);
    sub_19166AE28();
    (*(v12 + 8))(v19, v11);
  }

  sub_19166AE38();
}

uint64_t static JSONDecoder.sweax_decode<A>(_:dateDecodingStrategy:)@<X0>(uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_19166B098();
  if (!v5)
  {
    v11 = a5;
    v12 = result;
    v13 = v10;
    static JSONDecoder.sweax_decode<A>(_:dateDecodingStrategy:)(result, v10, a2, a4, v11);
    return sub_1915DCBA8(v12, v13);
  }

  return result;
}

uint64_t sub_191638D48(__int128 *a1, uint64_t a2)
{
  v22 = a2;
  v23 = sub_19166AE98();
  MEMORY[0x1EEE9AC00](v23, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFFB8, &qword_191673A08);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v21 - v6;
  v8 = sub_19166AEB8();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v21 - v15;
  v17 = a1[1];
  v24 = *a1;
  v25 = v17;
  v26 = *(a1 + 32);
  sub_19166AEF8();
  swift_allocObject();
  sub_19166AEE8();
  sub_1915E0A90(v22, v7, &qword_1EADAFFB8, &qword_191673A08);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_19159E780(v7, &qword_1EADAFFB8, &qword_191673A08);
  }

  else
  {
    (*(v9 + 32))(v16, v7, v8);
    (*(v9 + 16))(v13, v16, v8);
    sub_19166AEC8();
    (*(v9 + 8))(v16, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFFF0, &qword_191673A88);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1916729D0;
  sub_19166AE78();
  sub_19166AE68();
  sub_19166AE88();
  v27 = v18;
  sub_19163E2DC(&qword_1EADAFFF8, MEMORY[0x1E6967F78], MEMORY[0x1E6967F88]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0000, &qword_191673A90);
  sub_19162FABC(&qword_1EADB0008, &qword_1EADB0000, &qword_191673A90, MEMORY[0x1E69E6328]);
  sub_19166BFE8();
  sub_19166AEA8();
  sub_1916401D0();
  v19 = sub_19166AED8();

  return v19;
}

uint64_t static JSONEncoder.sweax_encode<A>(_:dateEncodingStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v23 = a1;
  v24 = a3;
  v21 = a2;
  v22 = sub_19166AE98();
  MEMORY[0x1EEE9AC00](v22, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFFB8, &qword_191673A08);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v21 - v7;
  v9 = sub_19166AEB8();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v21 - v16;
  sub_19166AEF8();
  swift_allocObject();
  sub_19166AEE8();
  sub_1915E0A90(v21, v8, &qword_1EADAFFB8, &qword_191673A08);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_19159E780(v8, &qword_1EADAFFB8, &qword_191673A08);
  }

  else
  {
    (*(v10 + 32))(v17, v8, v9);
    (*(v10 + 16))(v14, v17, v9);
    sub_19166AEC8();
    (*(v10 + 8))(v17, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFFF0, &qword_191673A88);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1916729D0;
  sub_19166AE78();
  sub_19166AE68();
  sub_19166AE88();
  v26 = v18;
  sub_19163E2DC(&qword_1EADAFFF8, MEMORY[0x1E6967F78], MEMORY[0x1E6967F88]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0000, &qword_191673A90);
  sub_19162FABC(&qword_1EADB0008, &qword_1EADB0000, &qword_191673A90, MEMORY[0x1E69E6328]);
  sub_19166BFE8();
  sub_19166AEA8();
  v19 = sub_19166AED8();

  return v19;
}

uint64_t sub_191639528()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_191639620;
  v4 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000010, 0x800000019167D420, sub_19163E324, v2, v4);
}

uint64_t sub_191639620()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_191639758;
  }

  else
  {

    v2 = sub_19163973C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_191639758()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1916397BC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB01C8, &qword_191674CD8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_1916400CC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1916403D4;
  aBlock[3] = &block_descriptor_235;
  v11 = _Block_copy(aBlock);

  [a2 setReadabilityHandler_];
  _Block_release(v11);
}

uint64_t sub_19163996C(void *a1)
{
  v2 = [a1 availableData];
  v3 = sub_19166B0E8();
  v5 = v4;

  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 != 2 || *(v3 + 16) == *(v3 + 24))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!v6)
  {
    if ((v5 & 0xFF000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    [a1 setReadabilityHandler_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB01C8, &qword_191674CD8);
    return sub_19166BA98();
  }

  if (v3 != v3 >> 32)
  {
    goto LABEL_7;
  }

LABEL_9:
  [a1 setReadabilityHandler_];
  sub_19163E32C();
  swift_allocError();
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  *(v8 + 24) = xmmword_191673920;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB01C8, &qword_191674CD8);
  sub_19166BA88();
  return sub_1915DCBA8(v3, v5);
}

uint64_t sub_191639AE0()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_191639BD4;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_191639BD4()
{

  return MEMORY[0x1EEE6DFA0](sub_191639CEC, 0, 0);
}

void sub_191639D00(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB01E0, &qword_191674CE8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_1916402A8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1916403D4;
  aBlock[3] = &block_descriptor_256;
  v11 = _Block_copy(aBlock);

  [a2 setWriteabilityHandler_];
  _Block_release(v11);
}

uint64_t NSFileHandle.sweax_writeData(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_191639ED4, 0, 0);
}

uint64_t sub_191639ED4()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_191639FC8;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_191639FC8()
{

  return MEMORY[0x1EEE6DFA0](sub_19163A0E0, 0, 0);
}

uint64_t sub_19163A0E0()
{
  v1 = *(v0 + 32);
  v2 = sub_19166B0D8();
  [v1 writeData_];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t NSFileHandle.sweax_writeText(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_19166B798();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19163A224, 0, 0);
}

uint64_t sub_19163A224(uint64_t a1)
{
  v3 = v1[6];
  v2 = v1[7];
  v4 = v1[5];
  sub_19166B788();
  v5 = sub_19166B758();
  v7 = v6;
  v1[8] = v6;
  (*(v3 + 8))(v2, v4);
  if (v7 >> 60 == 15)
  {
    sub_19163E32C();
    swift_allocError();
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *v8 = 0;
    *(v8 + 24) = xmmword_191673930;
    swift_willThrow();

    v9 = v1[1];

    return v9();
  }

  else
  {
    v11 = v1[4];
    v1[9] = v5;
    v12 = swift_task_alloc();
    v1[10] = v12;
    *(v12 + 16) = v11;
    v13 = swift_task_alloc();
    v1[11] = v13;
    *v13 = v1;
    v13[1] = sub_19163A400;

    return MEMORY[0x1EEE6DDE0]();
  }
}

uint64_t sub_19163A400()
{

  return MEMORY[0x1EEE6DFA0](sub_19163A518, 0, 0);
}

uint64_t sub_19163A518()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[4];
  v4 = sub_19166B0D8();
  [v3 writeData_];

  sub_1915E8158(v2, v1);

  v5 = v0[1];

  return v5();
}

uint64_t NSFileHandle.sweax_writeLine(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_19163A5F0, 0, 0);
}

uint64_t sub_19163A5F0()
{
  if (sub_19166B8F8())
  {
    v1 = swift_task_alloc();
    v0[5] = v1;
    *v1 = v0;
    v1[1] = sub_1915D8520;
    v2 = v0[3];
    v3 = v0[2];
  }

  else
  {
    v6 = v0[2];
    v7 = v0[3];

    MEMORY[0x193AFC710](10, 0xE100000000000000);
    v0[6] = v7;
    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_19163A71C;
    v3 = v6;
    v2 = v7;
  }

  return NSFileHandle.sweax_writeText(_:)(v3, v2);
}

uint64_t sub_19163A71C()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_19163A858, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_19163A858()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t NSFileHandle.sweax_writeModel<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFFB8, &qword_191673A08);
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19163A95C, 0, 0);
}

uint64_t sub_19163A95C()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  sub_19166AEF8();
  v5 = sub_19166AEB8();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = static JSONEncoder.sweax_encode<A>(_:dateEncodingStrategy:)(v4, v1, v3, v2);
  v7 = v0[6];
  v8 = v0[5];
  v0[7] = v9;
  v0[8] = v6;
  sub_19159E780(v7, &qword_1EADAFFB8, &qword_191673A08);
  v10 = swift_task_alloc();
  v0[9] = v10;
  *(v10 + 16) = v8;
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_19163AB44;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_19163AB44()
{

  return MEMORY[0x1EEE6DFA0](sub_19163AC5C, 0, 0);
}

uint64_t sub_19163AC5C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = sub_19166B0D8();
  [v3 writeData_];

  sub_1915DCBA8(v2, v1);

  v5 = v0[1];

  return v5();
}

uint64_t SWEAXStructuredDataFileHandleWriter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_19163AD70()
{
  v0 = sub_19166B798();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19166B788();
  v5 = sub_19166B758();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1EADAFEB8 = v5;
    unk_1EADAFEC0 = v7;
  }

  return result;
}

uint64_t sub_19163AEA8()
{
  v0 = sub_19166B798();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19166B788();
  v5 = sub_19166B758();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1EADAFEC8 = v5;
    unk_1EADAFED0 = v7;
  }

  return result;
}

uint64_t sub_19163AFE0(void *a1, uint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v4 = *a2;
  sub_1915DCB54(*a2, *a3);
  return v4;
}

uint64_t SWEAXStructuredDataFileHandleReader.read<A>(expecting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SWEAXStructuredDataFileHandleReader.Event(255, a2, a3, a4);
  v8 = sub_19166BB98();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v13[-v10];
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = v4;
  swift_checkMetadataState();
  nullsub_1();
  sub_1915D455C(v11);
  return sub_19166BC18();
}

uint64_t sub_19163B130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SWEAXStructuredDataFileHandleReader.Event(255, a3, a4, a5);
  v10 = sub_19166BBC8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v19 - v13;
  v20 = *(a2 + 16);
  (*(v11 + 16))(&v19 - v13, a1, v10);
  v15 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a3;
  *(v16 + 3) = a4;
  *(v16 + 4) = a5;
  *(v16 + 5) = a2;
  (*(v11 + 32))(&v16[v15], v14, v10);
  aBlock[4] = sub_191640024;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1916403D4;
  aBlock[3] = &block_descriptor_226;
  v17 = _Block_copy(aBlock);

  sub_1915A4734(sub_191640024, v16);

  [v20 setReadabilityHandler_];
  _Block_release(v17);
}

uint64_t sub_19163B334(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v9 = type metadata accessor for SWEAXStructuredDataFileHandleReader.Event(0, a3, a4, a5);
  MEMORY[0x1EEE9AC00](v9, v10);
  v11 = sub_19166BB78();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v25 - v14;
  v16 = [a1 availableData];
  v17 = sub_19166B0E8();
  v19 = v18;

  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v20 != 2 || *(v17 + 16) == *(v17 + 24))
    {
      goto LABEL_9;
    }
  }

  else if (v20)
  {
    if (v17 == v17 >> 32)
    {
LABEL_9:
      [*(v6 + 16) setReadabilityHandler_];
      _Block_release(0);
      swift_storeEnumTagMultiPayload();
      sub_19166BBC8();
      sub_19166BBA8();
      (*(v12 + 8))(v15, v11);
      sub_19166BBB8();
      return sub_1915DCBA8(v17, v19);
    }
  }

  else if ((v19 & 0xFF000000000000) == 0)
  {
    goto LABEL_9;
  }

  swift_storeEnumTagMultiPayload();
  sub_19166BBC8();
  sub_19166BBA8();
  (*(v12 + 8))(v15, v11);
  swift_beginAccess();
  v28[3] = MEMORY[0x1E6969080];
  v28[4] = MEMORY[0x1E6969078];
  v28[0] = v17;
  v28[1] = v19;
  v21 = __swift_project_boxed_opaque_existential_1(v28, MEMORY[0x1E6969080]);
  v22 = *v21;
  v23 = v21[1];
  sub_1915DCB54(v17, v19);
  sub_19163DBCC(v22, v23, v6 + 24);
  __swift_destroy_boxed_opaque_existential_1(v28);
  swift_endAccess();
  sub_19163B600(a2, v25, v26, v27);
  return sub_1915DCBA8(v17, v19);
}

uint64_t sub_19163B600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v70 = a1;
  v9 = sub_19166B798();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v62 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a3;
  v12 = type metadata accessor for SWEAXStructuredDataFileHandleReader.Event(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v12, v12);
  v68 = (&v60 - v14);
  v69 = v13;
  v67 = sub_19166BB78();
  v15 = *(v67 - 8);
  v17 = MEMORY[0x1EEE9AC00](v67, v16);
  v66 = &v60 - v18;
  v19 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v23 = 0;
  v64 = (v15 + 8);
  v65 = a2;
  v60 = (v19 + 8);
  v61 = (v19 + 16);
  while (1)
  {
    v24 = *(v5 + 24);
    v25 = *(v5 + 32);
    sub_1915DCB54(v24, v25);
    if (qword_1EADAF168 != -1)
    {
      swift_once();
    }

    v26 = sub_19166B0F8();
    v28 = v27;
    v30 = v29;
    sub_1915DCBA8(v24, v25);
    if (v30)
    {
      break;
    }

    v31 = v22;
    v32 = *(v5 + 24);
    v33 = *(v5 + 32);
    sub_1915DCB54(v32, v33);
    if (qword_1EADAF170 != -1)
    {
      swift_once();
    }

    v34 = sub_19166B0F8();
    v36 = v35;
    v38 = v37;
    result = sub_1915DCBA8(v32, v33);
    if (v38)
    {
      *(v5 + 40) = 1;
      break;
    }

    if (v34 < v28)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }

    swift_beginAccess();
    v40 = sub_19166B0C8();
    v42 = v41;
    swift_endAccess();
    sub_19166AE58();
    swift_allocObject();
    sub_19166AE48();
    v43 = v31;
    v44 = v65;
    sub_19166AE38();

    if (v23)
    {
      sub_1915DCB54(v40, v42);
      sub_19166B788();
      v45 = sub_19166B768();
      v47 = v46;
      sub_19163E32C();
      v48 = swift_allocError();
      *v49 = v40;
      v49[1] = v42;
      v49[2] = v45;
      v49[3] = v47;
      v49[4] = v23;
      *v68 = v48;
      swift_storeEnumTagMultiPayload();
      sub_19166BBC8();
      v50 = v66;
      sub_19166BBA8();
      result = (*v64)(v50, v67);
      v23 = 0;
    }

    else
    {
      (*v61)(v68, v43, v44);
      swift_storeEnumTagMultiPayload();
      sub_19166BBC8();
      v63 = 0;
      v51 = v36;
      v52 = v5;
      v53 = v26;
      v54 = v44;
      v55 = v66;
      sub_19166BBA8();
      v56 = v55;
      v57 = v54;
      v26 = v53;
      v5 = v52;
      v36 = v51;
      v23 = v63;
      (*v64)(v56, v67);
      result = (*v60)(v43, v57);
    }

    v22 = v43;
    if (v36 < v26)
    {
      goto LABEL_27;
    }

    swift_beginAccess();
    sub_19166B0A8();
    swift_endAccess();
    sub_1915DCBA8(v40, v42);
    *(v5 + 40) = 0;
  }

  result = *(v5 + 24);
  v58 = *(v5 + 32);
  v59 = v58 >> 62;
  if ((v58 >> 62) > 1)
  {
    if (v59 != 2 || *(result + 16) == *(result + 24))
    {
      return result;
    }
  }

  else if (v59)
  {
    if (result == result >> 32)
    {
      return result;
    }
  }

  else if ((v58 & 0xFF000000000000) == 0)
  {
    return result;
  }

  if ((*(v5 + 40) & 1) == 0)
  {
    *(v5 + 24) = xmmword_191673910;
    return sub_1915DCBA8(result, v58);
  }

  return result;
}

double SWEAXTextFileHandleReader.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 24) = xmmword_191673910;
  *(v2 + 40) = 0;
  *(v2 + 16) = a1;
  return result;
}

uint64_t SWEAXTextFileHandleReader.init(_:)(uint64_t a1)
{
  *(v1 + 24) = xmmword_191673910;
  *(v1 + 40) = 0;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t SWEAXTextFileHandleReader.read()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0018, &qword_191673AC8);
  MEMORY[0x1EEE9AC00](v0, v1);
  (*(v3 + 104))(&v5 - v2, *MEMORY[0x1E69E8650]);
  return sub_19166BC18();
}

uint64_t sub_19163BD3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB01B8, &qword_191674CC8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = aBlock - v7;
  v9 = *(a2 + 16);
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_19163FFAC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1916403D4;
  aBlock[3] = &block_descriptor_217;
  v12 = _Block_copy(aBlock);

  sub_1915A4734(sub_19163FFAC, v11);

  [v9 setReadabilityHandler_];
  _Block_release(v12);
}

uint64_t sub_19163BF18(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB01C0, &qword_191674CD0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - v7;
  v9 = [a1 availableData];
  v10 = sub_19166B0E8();
  v12 = v11;

  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2 || *(v10 + 16) == *(v10 + 24))
    {
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    if (v10 == v10 >> 32)
    {
LABEL_9:
      [*(v2 + 16) setReadabilityHandler_];
      _Block_release(0);
      v19 = xmmword_191673920;
      v20 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB01B8, &qword_191674CC8);
      sub_19166BBA8();
      (*(v5 + 8))(v8, v4);
      sub_19166BBB8();
      return sub_1915DCBA8(v10, v12);
    }
  }

  else if ((v12 & 0xFF000000000000) == 0)
  {
    goto LABEL_9;
  }

  v19 = 0uLL;
  v20 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB01B8, &qword_191674CC8);
  sub_19166BBA8();
  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  v21 = MEMORY[0x1E6969080];
  v22 = MEMORY[0x1E6969078];
  *&v19 = v10;
  *(&v19 + 1) = v12;
  v14 = __swift_project_boxed_opaque_existential_1(&v19, MEMORY[0x1E6969080]);
  v15 = *v14;
  v16 = v14[1];
  sub_1915DCB54(v10, v12);
  sub_19163DBCC(v15, v16, v2 + 24);
  __swift_destroy_boxed_opaque_existential_1(&v19);
  swift_endAccess();
  sub_19163C190();
  return sub_1915DCBA8(v10, v12);
}

uint64_t sub_19163C190()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB01C0, &qword_191674CD0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v16 - v4;
  v6 = sub_19166B798();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  swift_beginAccess();
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  sub_1915DCB54(v8, v9);
  sub_19166B788();
  v10 = sub_19166B768();
  v12 = v11;
  result = sub_1915DCBA8(v8, v9);
  if (v12)
  {
    v16[0] = v10;
    v16[1] = v12;
    v17 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB01B8, &qword_191674CC8);
    sub_19166BBA8();
    (*(v2 + 8))(v5, v1);
    v14 = *(v0 + 24);
    v15 = *(v0 + 32);
    *(v0 + 24) = xmmword_191673910;
    return sub_1915DCBA8(v14, v15);
  }

  return result;
}

uint64_t sub_19163C378()
{
  sub_1915DCBA8(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_19163C3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x193AFC710](a1, a2);
  MEMORY[0x193AFC710](1831885595, 0xE400000000000000);
  return a3;
}

uint64_t String.highlighted.getter(uint64_t a1, uint64_t a2)
{
  sub_19166C0C8();

  MEMORY[0x193AFC710](a1, a2);
  MEMORY[0x193AFC710](0x6D303B305B1BLL, 0xE600000000000000);
  return 0x6D30333B37345B1BLL;
}

uint64_t sub_19163C4E8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_19166B8E8();

  if (v5)
  {
    v6 = sub_19163E5E8(2uLL, a1, a2);
    v8 = v7;
    v10 = v9;
    v12 = v11;

    a1 = MEMORY[0x193AFC690](v6, v8, v10, v12);
  }

  return a1;
}

unsigned __int8 *String.parseHex.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_19166B8E8();

  if (v4)
  {
    v6 = sub_19163E5E8(2uLL, a1, a2);
    v8 = v7;
    v10 = v9;
    v12 = v11;

    a1 = MEMORY[0x193AFC690](v6, v8, v10, v12);
    a2 = v13;
  }

  v14 = HIBYTE(a2) & 0xF;
  v15 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v39[0] = a1;
      v39[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 == 43)
      {
        if (v14)
        {
          if (--v14)
          {
            v18 = 0;
            v29 = v39 + 1;
            while (1)
            {
              v30 = *v29;
              v31 = v30 - 48;
              if ((v30 - 48) >= 0xA)
              {
                if ((v30 - 65) < 6)
                {
                  v31 = v30 - 55;
                }

                else
                {
                  if ((v30 - 97) > 5)
                  {
                    goto LABEL_89;
                  }

                  v31 = v30 - 87;
                }
              }

              if ((v18 - 0x800000000000000) >> 60 != 15)
              {
                break;
              }

              v22 = __OFADD__(16 * v18, v31);
              v18 = 16 * v18 + v31;
              if (v22)
              {
                break;
              }

              ++v29;
              if (!--v14)
              {
                goto LABEL_90;
              }
            }
          }

          goto LABEL_89;
        }

LABEL_100:
        __break(1u);
        return result;
      }

      if (a1 != 45)
      {
        if (v14)
        {
          v18 = 0;
          v34 = v39;
          while (1)
          {
            v35 = *v34;
            v36 = v35 - 48;
            if ((v35 - 48) >= 0xA)
            {
              if ((v35 - 65) < 6)
              {
                v36 = v35 - 55;
              }

              else
              {
                if ((v35 - 97) > 5)
                {
                  goto LABEL_89;
                }

                v36 = v35 - 87;
              }
            }

            if ((v18 - 0x800000000000000) >> 60 != 15)
            {
              break;
            }

            v22 = __OFADD__(16 * v18, v36);
            v18 = 16 * v18 + v36;
            if (v22)
            {
              break;
            }

            ++v34;
            if (!--v14)
            {
              goto LABEL_90;
            }
          }
        }

        goto LABEL_89;
      }

      if (v14)
      {
        if (--v14)
        {
          v18 = 0;
          v23 = v39 + 1;
          while (1)
          {
            v24 = *v23;
            v25 = v24 - 48;
            if ((v24 - 48) >= 0xA)
            {
              if ((v24 - 65) < 6)
              {
                v25 = v24 - 55;
              }

              else
              {
                if ((v24 - 97) > 5)
                {
                  goto LABEL_89;
                }

                v25 = v24 - 87;
              }
            }

            if ((v18 - 0x800000000000000) >> 60 != 15)
            {
              break;
            }

            v22 = __OFSUB__(16 * v18, v25);
            v18 = 16 * v18 - v25;
            if (v22)
            {
              break;
            }

            ++v23;
            if (!--v14)
            {
              goto LABEL_90;
            }
          }
        }

        goto LABEL_89;
      }
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_19166C108();
      }

      v17 = *result;
      if (v17 == 43)
      {
        if (v15 >= 1)
        {
          v14 = v15 - 1;
          if (v15 != 1)
          {
            if (result)
            {
              v18 = 0;
              v26 = result + 1;
              while (1)
              {
                v27 = *v26;
                v28 = v27 - 48;
                if ((v27 - 48) >= 0xA)
                {
                  if ((v27 - 65) < 6)
                  {
                    v28 = v27 - 55;
                  }

                  else
                  {
                    if ((v27 - 97) > 5)
                    {
                      goto LABEL_89;
                    }

                    v28 = v27 - 87;
                  }
                }

                if ((v18 - 0x800000000000000) >> 60 != 15)
                {
                  goto LABEL_89;
                }

                v22 = __OFADD__(16 * v18, v28);
                v18 = 16 * v18 + v28;
                if (v22)
                {
                  goto LABEL_89;
                }

                ++v26;
                if (!--v14)
                {
                  goto LABEL_90;
                }
              }
            }

            goto LABEL_77;
          }

          goto LABEL_89;
        }

        goto LABEL_99;
      }

      if (v17 != 45)
      {
        if (v15)
        {
          if (result)
          {
            v18 = 0;
            while (1)
            {
              v32 = *result;
              v33 = v32 - 48;
              if ((v32 - 48) >= 0xA)
              {
                if ((v32 - 65) < 6)
                {
                  v33 = v32 - 55;
                }

                else
                {
                  if ((v32 - 97) > 5)
                  {
                    goto LABEL_89;
                  }

                  v33 = v32 - 87;
                }
              }

              if ((v18 - 0x800000000000000) >> 60 != 15)
              {
                goto LABEL_89;
              }

              v22 = __OFADD__(16 * v18, v33);
              v18 = 16 * v18 + v33;
              if (v22)
              {
                goto LABEL_89;
              }

              ++result;
              if (!--v15)
              {
                LOBYTE(v14) = 0;
                goto LABEL_90;
              }
            }
          }

          goto LABEL_77;
        }

LABEL_89:
        v18 = 0;
        LOBYTE(v14) = 1;
        goto LABEL_90;
      }

      if (v15 >= 1)
      {
        v14 = v15 - 1;
        if (v15 != 1)
        {
          if (result)
          {
            v18 = 0;
            v19 = result + 1;
            while (1)
            {
              v20 = *v19;
              v21 = v20 - 48;
              if ((v20 - 48) >= 0xA)
              {
                if ((v20 - 65) < 6)
                {
                  v21 = v20 - 55;
                }

                else
                {
                  if ((v20 - 97) > 5)
                  {
                    goto LABEL_89;
                  }

                  v21 = v20 - 87;
                }
              }

              if ((v18 - 0x800000000000000) >> 60 != 15)
              {
                goto LABEL_89;
              }

              v22 = __OFSUB__(16 * v18, v21);
              v18 = 16 * v18 - v21;
              if (v22)
              {
                goto LABEL_89;
              }

              ++v19;
              if (!--v14)
              {
                goto LABEL_90;
              }
            }
          }

LABEL_77:
          v18 = 0;
          LOBYTE(v14) = 0;
LABEL_90:
          v40 = v14;
          v37 = v14;
          goto LABEL_91;
        }

        goto LABEL_89;
      }

      __break(1u);
    }

    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v18 = sub_19163D640(a1, a2, 16);
  v37 = v38;
LABEL_91:

  if (v37)
  {
    return 0;
  }

  else
  {
    return v18;
  }
}

unint64_t sub_19163CA24(unint64_t result, unint64_t a2, uint64_t a3)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return 0;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v26 = result;

    v8 = sub_19163D640(v26, a2, 10);
    v28 = v27;

    if (v28)
    {
      return 0;
    }

LABEL_65:
    v29[0] = v8;
    sub_19163E698();
    return sub_19166B928();
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_19166C108();
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          v8 = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_69;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v8 = 0;
      LOBYTE(v4) = 1;
LABEL_62:
      v30 = v4;
      if (v4)
      {
        return 0;
      }

      goto LABEL_65;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        v8 = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v4) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v29[0] = result;
  v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        v8 = 0;
        v23 = v29;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      if (--v4)
      {
        v8 = 0;
        v12 = v29 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_68;
  }

  if (v4)
  {
    if (--v4)
    {
      v8 = 0;
      v18 = v29 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          break;
        }

        v8 = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_70:
  __break(1u);
  return result;
}

_BYTE *_sSS15AXCoreUtilitiesE11parseBinarySiSgvg_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_19166B8E8();

  if (v4)
  {
    v6 = sub_19163E5E8(2uLL, a1, a2);
    v8 = v7;
    v10 = v9;
    v12 = v11;

    a1 = MEMORY[0x193AFC690](v6, v8, v10, v12);
    a2 = v13;
  }

  v14 = HIBYTE(a2) & 0xF;
  v15 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_19166C108();
      }

      v17 = *result;
      if (v17 == 43)
      {
        if (v15 < 1)
        {
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

        v28 = v15 - 1;
        if (v15 == 1)
        {
          goto LABEL_86;
        }

        if (result)
        {
          v21 = 0;
          v29 = result + 1;
          while (1)
          {
            v30 = (*v29 & 0xFE) != 0x30 || v21 + 0x4000000000000000 < 0;
            v23 = v30;
            if (v30)
            {
              goto LABEL_81;
            }

            v21 = (*v29++ - 48) | (2 * v21);
            if (!--v28)
            {
              goto LABEL_82;
            }
          }
        }
      }

      else
      {
        if (v17 == 45)
        {
          if (v15 >= 1)
          {
            v18 = v15 - 1;
            if (v15 != 1)
            {
              if (result)
              {
                v19 = 0;
                v20 = result + 1;
                do
                {
                  v21 = 0;
                  v22 = *v20;
                  v23 = 1;
                  if ((*v20 & 0xFE) != 0x30 || v19 + 0x4000000000000000 < 0)
                  {
                    break;
                  }

                  v21 = 2 * v19 - (v22 - 48);
                  if (__OFSUB__(2 * v19, (v22 - 48)))
                  {
                    goto LABEL_86;
                  }

                  v23 = 0;
                  ++v20;
                  v19 = 2 * v19 - (v22 - 48);
                  --v18;
                }

                while (v18);
                goto LABEL_82;
              }

              goto LABEL_69;
            }

LABEL_86:
            v21 = 0;
            v23 = 1;
            goto LABEL_82;
          }

          __break(1u);
          goto LABEL_91;
        }

        if (!v15)
        {
          goto LABEL_86;
        }

        if (result)
        {
          v21 = 0;
          while (1)
          {
            v34 = (*result & 0xFE) != 0x30 || v21 + 0x4000000000000000 < 0;
            v23 = v34;
            if (v34)
            {
              goto LABEL_81;
            }

            v21 = (*result++ - 48) | (2 * v21);
            if (!--v15)
            {
              goto LABEL_82;
            }
          }
        }
      }

LABEL_69:
      v21 = 0;
      v23 = 0;
LABEL_82:
      v40 = v23;
      v37 = v23;
      goto LABEL_83;
    }

    v39[0] = a1;
    v39[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (!v14)
      {
LABEL_93:
        __break(1u);
        return result;
      }

      v31 = v14 - 1;
      if (!v31)
      {
        goto LABEL_86;
      }

      v21 = 0;
      v32 = v39 + 1;
      while (1)
      {
        v33 = (*v32 & 0xFE) != 0x30 || v21 + 0x4000000000000000 < 0;
        v23 = v33;
        if (v33)
        {
          break;
        }

        v21 = (*v32++ - 48) | (2 * v21);
        if (!--v31)
        {
          goto LABEL_82;
        }
      }
    }

    else
    {
      if (a1 == 45)
      {
        if (v14)
        {
          v24 = v14 - 1;
          if (v24)
          {
            v25 = 0;
            v26 = v39 + 1;
            do
            {
              v21 = 0;
              v27 = *v26;
              v23 = 1;
              if ((*v26 & 0xFE) != 0x30 || v25 + 0x4000000000000000 < 0)
              {
                break;
              }

              v21 = 2 * v25 - (v27 - 48);
              if (__OFSUB__(2 * v25, (v27 - 48)))
              {
                goto LABEL_86;
              }

              v23 = 0;
              ++v26;
              v25 = 2 * v25 - (v27 - 48);
              --v24;
            }

            while (v24);
            goto LABEL_82;
          }

          goto LABEL_86;
        }

LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      if (!v14)
      {
        goto LABEL_86;
      }

      v21 = 0;
      v35 = v39;
      while (1)
      {
        v36 = (*v35 & 0xFE) != 0x30 || v21 + 0x4000000000000000 < 0;
        v23 = v36;
        if (v36)
        {
          break;
        }

        v21 = (*v35++ - 48) | (2 * v21);
        if (!--v14)
        {
          goto LABEL_82;
        }
      }
    }

LABEL_81:
    v21 = 0;
    goto LABEL_82;
  }

  v21 = sub_19163D640(a1, a2, 2);
  v37 = v38;
LABEL_83:

  if (v37)
  {
    return 0;
  }

  else
  {
    return v21;
  }
}

uint64_t sub_19163D0F4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  a3(a1, a2);
  if (v4)
  {
    return 0;
  }

  sub_19163E698();
  return sub_19166B928();
}

void *sub_19163D158(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADAFAB8, &qword_191674CC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_19163D1CC(uint64_t a1, unint64_t a2)
{
  v2 = sub_19166B958();
  v6 = sub_19163D24C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_19163D24C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_19166BF68();
    if (!v9 || (v10 = v9, v11 = sub_19163D158(v9, 0), v12 = sub_19163D3A4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_19166B818();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_19166B818();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_19166C108();
LABEL_4:

  return sub_19166B818();
}

unint64_t sub_19163D3A4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_19163D5C4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_19166B8C8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_19166C108();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_19163D5C4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_19166B8A8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_19163D5C4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_19166B8D8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x193AFC760](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_19163D640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_19166B948();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_19163D1CC(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_19166C108();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}