uint64_t sub_21D5F77EC@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void *a11, char a12, uint64_t a13, unint64_t a14, uint64_t a15, char a16)
{
  v21 = *a1;
  v22 = type metadata accessor for TTRExtensionContextExtractorResult(0);
  sub_21D0D3954(a8, a9 + v22[8], &qword_27CE58D60, &unk_21DC0A690);
  v23 = v22[15];
  v24 = type metadata accessor for TTRSERecipeCard(0);
  (*(*(v24 - 8) + 56))(a9 + v23, 1, 1, v24);
  *a9 = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + v22[9]) = v21;
  *(a9 + v22[10]) = a11;
  *(a9 + v22[11]) = a12;
  v25 = (a9 + v22[12]);
  *v25 = a13;
  v25[1] = a14;
  v26 = a9 + v22[13];
  *v26 = a15;
  *(v26 + 8) = a16 & 1;
  *(a9 + v22[14]) = 0;
  v27 = a11;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v28 = v21;
  return sub_21D5FA9F0(a13, a14);
}

id sub_21D5F7974()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CD46E0]) init];
    v4 = *(v0 + 56);
    *(v0 + 56) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_21D5F79E0@<X0>(uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EDE8, &qword_21DC1ED48);
  swift_allocObject();
  result = sub_21DBF828C();
  *a3 = result;
  return result;
}

void sub_21D5F7A4C(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v34 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EE48, &unk_21DC1EDE8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v10 = sub_21DBF843C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF83FC();
  sub_21DBF836C();
  v14 = *(v11 + 8);
  v14(v13, v10);
  v15 = sub_21DBFA12C();

  v16 = [a5 hasItemConformingToTypeIdentifier_];

  if (v16)
  {
    sub_21DBF840C();
    sub_21DBF836C();
    v14(v13, v10);
    v17 = sub_21DBFA12C();

    v18 = [a5 hasItemConformingToTypeIdentifier_];

    if (v18)
    {
      sub_21D0D8CF0(0, &qword_27CE5EE60, 0x277CBEBC0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v20 = swift_allocObject();
      *(v20 + 16) = v34;
      *(v20 + 24) = a2;
      v39 = sub_21D5FB4EC;
      v40 = v20;
      aBlock = MEMORY[0x277D85DD0];
      v36 = 1107296256;
      v37 = sub_21D5F87C8;
      v38 = &block_descriptor_87;
      v21 = _Block_copy(&aBlock);

      v22 = [a5 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v21];
      _Block_release(v21);
    }

    else
    {
      sub_21DBF83CC();
      sub_21DBF836C();
      v14(v13, v10);
      v28 = sub_21DBFA12C();

      v29 = [a5 hasItemConformingToTypeIdentifier_];

      if (v29)
      {
        sub_21DBF83CC();
        sub_21DBF836C();
        v14(v13, v10);
        v30 = sub_21DBFA12C();

        v31 = swift_allocObject();
        *(v31 + 16) = v34;
        *(v31 + 24) = a2;
        v39 = sub_21D5FB4E4;
        v40 = v31;
        aBlock = MEMORY[0x277D85DD0];
        v36 = 1107296256;
        v37 = sub_21D5F87C8;
        v38 = &block_descriptor_81;
        v32 = _Block_copy(&aBlock);

        [a5 loadItemForTypeIdentifier:v30 options:0 completionHandler:v32];
        _Block_release(v32);
      }
    }
  }

  else
  {
    if (qword_27CE56AB0 != -1)
    {
      swift_once();
    }

    v23 = sub_21DBF84BC();
    __swift_project_value_buffer(v23, qword_27CE5EDC0);
    v24 = sub_21DBF84AC();
    v25 = sub_21DBFAEBC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_21D0C9000, v24, v25, "Item does not contain image", v26, 2u);
      MEMORY[0x223D46520](v26, -1, -1);
    }

    v27 = type metadata accessor for TTRAttachmentInfo(0);
    (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
    v34(v9);
    sub_21D0CF7E0(v9, &qword_27CE5EE48, &unk_21DC1EDE8);
  }
}

uint64_t sub_21D5F7F84(uint64_t a1, void *a2, void (*a3)(char *), uint64_t a4)
{
  v44[1] = a4;
  v45 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v44 - v7;
  v9 = sub_21DBF54CC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRAttachmentInfo(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EE48, &unk_21DC1EDE8);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = v44 - v19;
  if (a2)
  {
    v21 = a2;
    if (qword_27CE56AB0 != -1)
    {
      swift_once();
    }

    v22 = sub_21DBF84BC();
    __swift_project_value_buffer(v22, qword_27CE5EDC0);
    v23 = a2;
    v24 = sub_21DBF84AC();
    v25 = sub_21DBFAEBC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v46[0] = v27;
      *v26 = 136315138;
      swift_getErrorValue();
      v28 = sub_21DBFC74C();
      v30 = sub_21D0CDFB4(v28, v29, v46);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_21D0C9000, v24, v25, "Unable to load image from item provider {error: %s}", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x223D46520](v27, -1, -1);
      MEMORY[0x223D46520](v26, -1, -1);
    }

    (*(v14 + 56))(v20, 1, 1, v13);
    v45(v20);

    return sub_21D0CF7E0(v20, &qword_27CE5EE48, &unk_21DC1EDE8);
  }

  if (!a1)
  {
    (*(v10 + 56))(v8, 1, 1, v9, v18);
LABEL_11:
    sub_21D0CF7E0(v8, &qword_27CE5EA20, &qword_21DC0D4A0);
LABEL_12:
    if (qword_27CE56AB0 != -1)
    {
      swift_once();
    }

    v33 = sub_21DBF84BC();
    __swift_project_value_buffer(v33, qword_27CE5EDC0);
    swift_unknownObjectRetain();
    v34 = sub_21DBF84AC();
    v35 = sub_21DBFAEBC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v46[0] = v37;
      *v36 = 136315138;
      v47 = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE50, &qword_21DC1EDF8);
      v38 = sub_21DBFA1AC();
      v40 = sub_21D0CDFB4(v38, v39, v46);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_21D0C9000, v34, v35, "unable to convert item to Data %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x223D46520](v37, -1, -1);
      MEMORY[0x223D46520](v36, -1, -1);
    }

    (*(v14 + 56))(v20, 1, 1, v13);
    v45(v20);
    return sub_21D0CF7E0(v20, &qword_27CE5EE48, &unk_21DC1EDE8);
  }

  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (v31)
  {
    *v16 = v31;
    swift_storeEnumTagMultiPayload();
    sub_21D5FBAB8(v16, v20, type metadata accessor for TTRAttachmentInfo);
    (*(v14 + 56))(v20, 0, 1, v13);
    swift_unknownObjectRetain();
    v45(v20);
    sub_21D0CF7E0(v20, &qword_27CE5EE48, &unk_21DC1EDE8);
    return sub_21D5FBB20(v16, type metadata accessor for TTRAttachmentInfo);
  }

  v47 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE64D20, &unk_21DC1EE00);
  if (swift_dynamicCast())
  {
    v41 = v46[0];
    v42 = v46[1];
    *v16 = v46[0];
    v16[1] = v42;
    swift_storeEnumTagMultiPayload();
    sub_21D5FBAB8(v16, v20, type metadata accessor for TTRAttachmentInfo);
    (*(v14 + 56))(v20, 0, 1, v13);
    sub_21D1BAF70(v41, v42);
    v45(v20);
    sub_21D17B8A8(v41, v42);
    sub_21D0CF7E0(v20, &qword_27CE5EE48, &unk_21DC1EDE8);
    return sub_21D5FBB20(v16, type metadata accessor for TTRAttachmentInfo);
  }

  v46[0] = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE64D20, &unk_21DC1EE00);
  v43 = swift_dynamicCast();
  (*(v10 + 56))(v8, v43 ^ 1u, 1, v9);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    goto LABEL_11;
  }

  (*(v10 + 32))(v12, v8, v9);
  if ((sub_21DBF532C() & 1) == 0)
  {
    (*(v10 + 8))(v12, v9);
    goto LABEL_12;
  }

  (*(v10 + 16))(v16, v12, v9);
  swift_storeEnumTagMultiPayload();
  sub_21D5FBAB8(v16, v20, type metadata accessor for TTRAttachmentInfo);
  (*(v14 + 56))(v20, 0, 1, v13);
  v45(v20);
  sub_21D0CF7E0(v20, &qword_27CE5EE48, &unk_21DC1EDE8);
  sub_21D5FBB20(v16, type metadata accessor for TTRAttachmentInfo);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_21D5F87C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_21D5F8848(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EE48, &unk_21DC1EDE8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = aBlock - v9;
  v11 = sub_21DBF843C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF83BC();
  sub_21DBF836C();
  (*(v12 + 8))(v14, v11);
  v15 = sub_21DBFA12C();

  LODWORD(v11) = [a5 hasItemConformingToTypeIdentifier_];

  if (v11)
  {
    sub_21D0D8CF0(0, &qword_27CE5EE60, 0x277CBEBC0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    aBlock[4] = sub_21D5FB4B4;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D5F87C8;
    aBlock[3] = &block_descriptor_75_0;
    v18 = _Block_copy(aBlock);

    v19 = [a5 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v18];
    _Block_release(v18);
  }

  else
  {
    if (qword_27CE56AB0 != -1)
    {
      swift_once();
    }

    v20 = sub_21DBF84BC();
    __swift_project_value_buffer(v20, qword_27CE5EDC0);
    v21 = sub_21DBF84AC();
    v22 = sub_21DBFAEBC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_21D0C9000, v21, v22, "Item does not contain URL", v23, 2u);
      MEMORY[0x223D46520](v23, -1, -1);
    }

    v24 = type metadata accessor for TTRAttachmentInfo(0);
    (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
    a1(v10);
    sub_21D0CF7E0(v10, &qword_27CE5EE48, &unk_21DC1EDE8);
  }
}

uint64_t sub_21D5F8BC0(void *a1, void *a2, void (*a3)(char *), uint64_t a4, const char *a5, uint64_t a6, __n128 a7)
{
  v44 = a5;
  v46 = a4;
  v47 = a3;
  v45 = type metadata accessor for TTRAttachmentInfo(0);
  v9 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EE48, &unk_21DC1EDE8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v44 - v16;
  v18 = sub_21DBF54CC();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = a2;
    if (qword_27CE56AB0 != -1)
    {
      swift_once();
    }

    v24 = sub_21DBF84BC();
    __swift_project_value_buffer(v24, qword_27CE5EDC0);
    v25 = a2;
    v26 = sub_21DBF84AC();
    v27 = sub_21DBFAEBC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v49 = v29;
      *v28 = 136315138;
      swift_getErrorValue();
      v30 = sub_21DBFC74C();
      v32 = sub_21D0CDFB4(v30, v31, &v49);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_21D0C9000, v26, v27, v44, v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x223D46520](v29, -1, -1);
      MEMORY[0x223D46520](v28, -1, -1);
    }

    (*(v9 + 56))(v14, 1, 1, v45);
    v47(v14);
  }

  else
  {
    if (a1)
    {
      v49 = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE70, &unk_21DC1EE18);
      v33 = swift_dynamicCast();
      (*(v19 + 56))(v17, v33 ^ 1u, 1, v18);
      if ((*(v19 + 48))(v17, 1, v18) != 1)
      {
        (*(v19 + 32))(v22, v17, v18);
        (*(v19 + 16))(v11, v22, v18);
        v34 = v45;
        swift_storeEnumTagMultiPayload();
        sub_21D5FBAB8(v11, v14, type metadata accessor for TTRAttachmentInfo);
        (*(v9 + 56))(v14, 0, 1, v34);
        v47(v14);
        sub_21D0CF7E0(v14, &qword_27CE5EE48, &unk_21DC1EDE8);
        sub_21D5FBB20(v11, type metadata accessor for TTRAttachmentInfo);
        return (*(v19 + 8))(v22, v18);
      }
    }

    else
    {
      (*(v19 + 56))(v17, 1, 1, v18, v20);
    }

    sub_21D0CF7E0(v17, &qword_27CE5EA20, &qword_21DC0D4A0);
    if (qword_27CE56AB0 != -1)
    {
      swift_once();
    }

    v36 = sub_21DBF84BC();
    __swift_project_value_buffer(v36, qword_27CE5EDC0);
    swift_unknownObjectRetain();
    v37 = sub_21DBF84AC();
    v38 = sub_21DBFAEBC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v48 = a1;
      v49 = v40;
      *v39 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EE68, &qword_21DC1EE10);
      v41 = sub_21DBFA1AC();
      v43 = sub_21D0CDFB4(v41, v42, &v49);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_21D0C9000, v37, v38, "unable to convert item to URL %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x223D46520](v40, -1, -1);
      MEMORY[0x223D46520](v39, -1, -1);
    }

    (*(v9 + 56))(v14, 1, 1, v45);
    v47(v14);
  }

  return sub_21D0CF7E0(v14, &qword_27CE5EE48, &unk_21DC1EDE8);
}

uint64_t sub_21D5F9240(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4, __n128 a5)
{
  v9 = type metadata accessor for TTRAttachmentInfo(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EE48, &unk_21DC1EDE8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v43 - v14;
  if (a2)
  {
    v16 = a2;
    if (qword_27CE56AB0 != -1)
    {
      swift_once();
    }

    v17 = sub_21DBF84BC();
    __swift_project_value_buffer(v17, qword_27CE5EDC0);
    v18 = a2;
    v19 = sub_21DBF84AC();
    v20 = sub_21DBFAEBC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v44 = v9;
      v22 = v21;
      v23 = swift_slowAlloc();
      v43 = a4;
      v24 = a3;
      v25 = v23;
      v46 = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v26 = sub_21DBFC74C();
      v28 = sub_21D0CDFB4(v26, v27, &v46);

      *(v22 + 4) = v28;
      _os_log_impl(&dword_21D0C9000, v19, v20, "unable to load URL from item provider {error: %s}", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      v29 = v25;
      a3 = v24;
      MEMORY[0x223D46520](v29, -1, -1);
      v30 = v22;
      v9 = v44;
      MEMORY[0x223D46520](v30, -1, -1);
    }

    (*(v10 + 56))(v15, 1, 1, v9);
    a3(v15);
  }

  else
  {
    if (a1)
    {
      objc_opt_self();
      v31 = swift_dynamicCastObjCClass();
      if (v31)
      {
        *v12 = v31;
        swift_storeEnumTagMultiPayload();
        sub_21D5FBAB8(v12, v15, type metadata accessor for TTRAttachmentInfo);
        (*(v10 + 56))(v15, 0, 1, v9);
        swift_unknownObjectRetain();
        a3(v15);
        sub_21D0CF7E0(v15, &qword_27CE5EE48, &unk_21DC1EDE8);
        return sub_21D5FBB20(v12, type metadata accessor for TTRAttachmentInfo);
      }
    }

    if (qword_27CE56AB0 != -1)
    {
      swift_once();
    }

    v33 = sub_21DBF84BC();
    __swift_project_value_buffer(v33, qword_27CE5EDC0);
    swift_unknownObjectRetain();
    v34 = sub_21DBF84AC();
    v35 = sub_21DBFAEBC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v44 = v9;
      v38 = v37;
      v45 = a1;
      v46 = v37;
      *v36 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE50, &qword_21DC1EDF8);
      v39 = sub_21DBFA1AC();
      v41 = sub_21D0CDFB4(v39, v40, &v46);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_21D0C9000, v34, v35, "unable to convert item to Attributed String %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      v42 = v38;
      v9 = v44;
      MEMORY[0x223D46520](v42, -1, -1);
      MEMORY[0x223D46520](v36, -1, -1);
    }

    (*(v10 + 56))(v15, 1, 1, v9);
    a3(v15);
  }

  return sub_21D0CF7E0(v15, &qword_27CE5EE48, &unk_21DC1EDE8);
}

void sub_21D5F972C(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33[1] = a7;
  v34 = a8;
  v35 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EE48, &unk_21DC1EDE8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v33 - v13;
  v15 = sub_21DBF843C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (a6)(v17);
  sub_21DBF836C();
  v20 = *(v16 + 8);
  v20(v19, v15);
  v21 = sub_21DBFA12C();

  v22 = [a5 hasItemConformingToTypeIdentifier_];

  if (v22)
  {
    a6();
    sub_21DBF836C();
    v20(v19, v15);
    v23 = sub_21DBFA12C();

    v24 = swift_allocObject();
    v25 = v34;
    *(v24 + 16) = v35;
    *(v24 + 24) = a2;
    aBlock[4] = v25;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D5F87C8;
    aBlock[3] = a9;
    v26 = _Block_copy(aBlock);

    [a5 loadItemForTypeIdentifier:v23 options:0 completionHandler:v26];
    _Block_release(v26);
  }

  else
  {
    v27 = v35;
    if (qword_27CE56AB0 != -1)
    {
      swift_once();
    }

    v28 = sub_21DBF84BC();
    __swift_project_value_buffer(v28, qword_27CE5EDC0);
    v29 = sub_21DBF84AC();
    v30 = sub_21DBFAEBC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_21D0C9000, v29, v30, "Item does not contain plain text", v31, 2u);
      MEMORY[0x223D46520](v31, -1, -1);
    }

    v32 = type metadata accessor for TTRAttachmentInfo(0);
    (*(*(v32 - 8) + 56))(v14, 1, 1, v32);
    v27(v14);
    sub_21D0CF7E0(v14, &qword_27CE5EE48, &unk_21DC1EDE8);
  }
}

uint64_t sub_21D5F9ABC(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4, __n128 a5)
{
  v9 = type metadata accessor for TTRAttachmentInfo(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EE48, &unk_21DC1EDE8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v45 - v14;
  if (a2)
  {
    v16 = a2;
    if (qword_27CE56AB0 != -1)
    {
      swift_once();
    }

    v17 = sub_21DBF84BC();
    __swift_project_value_buffer(v17, qword_27CE5EDC0);
    v18 = a2;
    v19 = sub_21DBF84AC();
    v20 = sub_21DBFAEBC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v46 = v9;
      v22 = v21;
      v23 = swift_slowAlloc();
      v45[1] = a4;
      v24 = a3;
      v25 = v23;
      v47 = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v26 = sub_21DBFC74C();
      v28 = sub_21D0CDFB4(v26, v27, &v47);

      *(v22 + 4) = v28;
      _os_log_impl(&dword_21D0C9000, v19, v20, "unable to load URL from item provider {error: %s}", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      v29 = v25;
      a3 = v24;
      MEMORY[0x223D46520](v29, -1, -1);
      v30 = v22;
      v9 = v46;
      MEMORY[0x223D46520](v30, -1, -1);
    }

    (*(v10 + 56))(v15, 1, 1, v9);
    a3(v15);
  }

  else
  {
    if (a1)
    {
      v48 = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE64D20, &unk_21DC1EE00);
      if (swift_dynamicCast())
      {
        v31 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v32 = sub_21DBFA12C();

        v33 = [v31 initWithString_];

        *v12 = v33;
        swift_storeEnumTagMultiPayload();
        sub_21D5FBAB8(v12, v15, type metadata accessor for TTRAttachmentInfo);
        (*(v10 + 56))(v15, 0, 1, v9);
        a3(v15);
        sub_21D0CF7E0(v15, &qword_27CE5EE48, &unk_21DC1EDE8);
        return sub_21D5FBB20(v12, type metadata accessor for TTRAttachmentInfo);
      }
    }

    if (qword_27CE56AB0 != -1)
    {
      swift_once();
    }

    v35 = sub_21DBF84BC();
    __swift_project_value_buffer(v35, qword_27CE5EDC0);
    swift_unknownObjectRetain();
    v36 = sub_21DBF84AC();
    v37 = sub_21DBFAEBC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v46 = v9;
      v40 = v39;
      v47 = v39;
      *v38 = 136315138;
      v48 = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE50, &qword_21DC1EDF8);
      v41 = sub_21DBFA1AC();
      v43 = sub_21D0CDFB4(v41, v42, &v47);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_21D0C9000, v36, v37, "unable to convert item to String %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      v44 = v40;
      v9 = v46;
      MEMORY[0x223D46520](v44, -1, -1);
      MEMORY[0x223D46520](v38, -1, -1);
    }

    (*(v10 + 56))(v15, 1, 1, v9);
    a3(v15);
  }

  return sub_21D0CF7E0(v15, &qword_27CE5EE48, &unk_21DC1EDE8);
}

void sub_21D5FA010(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  if (a6)
  {
    if (a7)
    {
      v13 = a7;

      sub_21DBF8E0C();

      sub_21D0D8CF0(0, &qword_280D17760, 0x277D44868);
      v14 = v13;
      v15 = sub_21DBFB3DC();

      v22[0] = v15;
      a1(v22);

LABEL_6:
      return;
    }

    v17 = objc_allocWithZone(MEMORY[0x277CBFBE8]);

    sub_21DBF8E0C();
    v18 = [v17 init];
    v19 = sub_21DBFA12C();
    v20 = swift_allocObject();
    v20[2] = sub_21D5FBBE4;
    v20[3] = v12;
    v20[4] = a5;
    v20[5] = a6;
    v22[4] = sub_21D5FB3D0;
    v22[5] = v20;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 1107296256;
    v22[2] = sub_21D887FEC;
    v22[3] = &block_descriptor_64;
    v21 = _Block_copy(v22);

    [v18 geocodeAddressString:v19 completionHandler:v21];
    _Block_release(v21);
  }

  else
  {

    if (a7)
    {
      sub_21D0D8CF0(0, &qword_280D17760, 0x277D44868);
      v16 = a7;
      v15 = sub_21DBFB3DC();
      v22[0] = v15;
      a1(v22);

      goto LABEL_6;
    }

    v22[0] = 0;
    a1(v22);
  }
}

void sub_21D5FA290(unint64_t a1, id a2, void (*a3)(void))
{
  if (a2)
  {
    v5 = a2;
    if (qword_27CE56AB0 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE5EDC0);
    v7 = a2;
    v8 = sub_21DBF84AC();
    v9 = sub_21DBFAE9C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = a3;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 136315138;
      v29 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
      sub_21DBFC14C();
      v13 = sub_21D0CDFB4(0, 0xE000000000000000, &v29);

      *(v11 + 4) = v13;
      _os_log_impl(&dword_21D0C9000, v8, v9, "Geocoding failed: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x223D46520](v12, -1, -1);
      v14 = v11;
      a3 = v10;
      MEMORY[0x223D46520](v14, -1, -1);
    }

    v15 = objc_allocWithZone(MEMORY[0x277D44868]);
    v16 = sub_21DBFA12C();
    v17 = [v15 initWithTitle_];

    a3(v17);
    return;
  }

  if (a1)
  {
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      v24 = a1;
      v25 = sub_21DBFBD7C();
      a1 = v24;
      if (v25)
      {
        goto LABEL_10;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_10:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x223D44740](0, a1);
      }

      else
      {
        if (!*(v18 + 16))
        {
          __break(1u);
          return;
        }

        v19 = *(a1 + 32);
      }

      v20 = v19;
      v21 = [v19 name];
      if (v21)
      {
        v22 = v21;
        sub_21DBFA16C();
      }

      sub_21D0D8CF0(0, &qword_280D17760, 0x277D44868);
      v23 = [v20 location];
      v28 = sub_21DBFB3DC();

      a3(v28);

      goto LABEL_18;
    }
  }

  v26 = objc_allocWithZone(MEMORY[0x277D44868]);
  v27 = sub_21DBFA12C();
  v28 = [v26 initWithTitle_];

  a3(v28);
LABEL_18:
}

uint64_t sub_21D5FA644(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong[5];
    v12 = Strong[6];
    __swift_project_boxed_opaque_existential_1(Strong + 2, v11);
    v13 = swift_allocObject();
    v13[2] = sub_21D5FBBA0;
    v13[3] = v9;
    v13[4] = a6;
    v14 = *(v12 + 8);

    v14(sub_21D5FBBD8, v13, v11, v12);
  }

  else
  {

    v16 = 0;
    return a1(&v16);
  }
}

uint64_t objectdestroy_12Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_21D5FA8E4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690) - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_21D5F77EC(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, a2, *(v2 + v8), *(v2 + v8 + 8), *(v2 + v9), *(v2 + v9 + 8), *(v2 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_21D5FA9F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21D1BAF70(a1, a2);
  }

  return a1;
}

void sub_21D5FAA04(void *a1, id a2, void (*a3)(void))
{
  if (a2)
  {
    v5 = a2;
    if (qword_27CE56AB0 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE5EDC0);
    v7 = a2;
    v8 = sub_21DBF84AC();
    v9 = sub_21DBFAEBC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = sub_21DBFC75C();
      v14 = sub_21D0CDFB4(v12, v13, &v26);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_21D0C9000, v8, v9, "fetchCurrentUserActivity failed {error: %s}", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223D46520](v11, -1, -1);
      MEMORY[0x223D46520](v10, -1, -1);
    }

    (a3)(0);
  }

  else if (a1)
  {
    v25 = a1;
    v15 = [v25 activityType];
    sub_21DBFA16C();

    LOBYTE(v15) = sub_21DBFA39C();

    if (v15)
    {
      if (qword_27CE56AB0 != -1)
      {
        swift_once();
      }

      v16 = sub_21DBF84BC();
      __swift_project_value_buffer(v16, qword_27CE5EDC0);
      v25 = v25;
      v17 = sub_21DBF84AC();
      v18 = sub_21DBFAEDC();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v26 = v20;
        *v19 = 136315138;
        v21 = NSUserActivity.ttrDescription.getter();
        v23 = sub_21D0CDFB4(v21, v22, &v26);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_21D0C9000, v17, v18, "Reject NSUserActivity: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x223D46520](v20, -1, -1);
        MEMORY[0x223D46520](v19, -1, -1);
      }

      (a3)(0);
    }

    else
    {
      v24 = [objc_allocWithZone(MEMORY[0x277D448F0]) initWithUserActivity_];
      a3();
    }
  }

  else
  {
    a3();
  }
}

uint64_t TTRExtensionContextExtractor.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return v0;
}

uint64_t TTRExtensionContextExtractor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall TTRReminderEditor.add(attachmentInfos:)(Swift::OpaquePointer attachmentInfos)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EE30, &qword_21DC1ED88);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v25 - v3);
  v5 = type metadata accessor for TTRUnsavedAttachment(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TTRAttachmentInfo(0);
  MEMORY[0x28223BE20](v29);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = *(attachmentInfos._rawValue + 2);
  if (v14)
  {
    v15 = attachmentInfos._rawValue + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v28 = (v6 + 56);
    v26 = v6;
    v16 = (v6 + 48);
    v17 = MEMORY[0x277D84F90];
    v27 = *(v11 + 72);
    while (1)
    {
      sub_21D5FBAB8(v15, v13, type metadata accessor for TTRAttachmentInfo);
      sub_21D5FBAB8(v13, v9, type metadata accessor for TTRAttachmentInfo);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload == 2)
      {
        sub_21D5FBB20(v13, type metadata accessor for TTRAttachmentInfo);
        *v4 = *v9;
        goto LABEL_14;
      }

      if (EnumCaseMultiPayload == 3)
      {
        goto LABEL_13;
      }

      sub_21D5FBB20(v13, type metadata accessor for TTRAttachmentInfo);
      sub_21D5FBB20(v9, type metadata accessor for TTRAttachmentInfo);
      v21 = 1;
LABEL_15:
      (*v28)(v4, v21, 1, v5);
      if ((*v16)(v4, 1, v5) == 1)
      {
        sub_21D0CF7E0(v4, &qword_27CE5EE30, &qword_21DC1ED88);
      }

      else
      {
        sub_21D5FBA50(v4, v30, type metadata accessor for TTRUnsavedAttachment);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_21D213B54(0, v17[2] + 1, 1, v17);
        }

        v24 = v17[2];
        v23 = v17[3];
        if (v24 >= v23 >> 1)
        {
          v17 = sub_21D213B54((v23 > 1), v24 + 1, 1, v17);
        }

        v17[2] = v24 + 1;
        sub_21D5FBA50(v30, v17 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24, type metadata accessor for TTRUnsavedAttachment);
      }

      v15 += v27;
      if (!--v14)
      {
        goto LABEL_22;
      }
    }

    if (EnumCaseMultiPayload)
    {
LABEL_13:
      sub_21D5FBB20(v13, type metadata accessor for TTRAttachmentInfo);
      v22 = sub_21DBF54CC();
      (*(*(v22 - 8) + 32))(v4, v9, v22);
    }

    else
    {
      v19 = *v9;
      v20 = v9[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE38, &qword_21DC1ED90);
      *v4 = v19;
      v4[1] = v20;
      sub_21DBF83FC();
      sub_21D5FBB20(v13, type metadata accessor for TTRAttachmentInfo);
    }

LABEL_14:
    swift_storeEnumTagMultiPayload();
    v21 = 0;
    goto LABEL_15;
  }

  v17 = MEMORY[0x277D84F90];
LABEL_22:
  TTRReminderEditor.add(attachments:)(v17);
}

uint64_t dispatch thunk of TTRExtensionContextExtractor.extract(from:)()
{
  return (*(*v0 + 104))();
}

{
  return (*(*v0 + 112))();
}

uint64_t sub_21D5FB514(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF4CAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12[0] = a1;
    v12[1] = a2;
    sub_21DBF4C5C();
    sub_21D176F0C();
    a1 = sub_21DBFBB3C();
    v9 = v8;
    (*(v5 + 8))(v7, v4);
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v10)
    {

      return 0;
    }
  }

  return a1;
}

unint64_t sub_21D5FB640(unint64_t a1, unint64_t a2)
{
  v4 = sub_21DBF4CAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v32[-v9];
  if (a2)
  {
    v11 = sub_21DBF4C5C();
    MEMORY[0x28223BE20](v11);
    *&v32[-16] = v10;
    sub_21D3F7D48(sub_21D24B3BC, &v32[-32], a1, a2);
    if (v12)
    {
      v13 = 0;
      v14 = 0xE000000000000000;
    }

    else
    {
      sub_21DBFA29C();
      v15 = sub_21DBFA3FC();
      v13 = MEMORY[0x223D429B0](v15);
      v14 = v16;
    }

    v17 = *(v5 + 8);
    v17(v10, v4);
    v18 = sub_21DBF4C8C();
    MEMORY[0x28223BE20](v18);
    *&v32[-16] = v7;
    v19 = sub_21D3F7414(sub_21D24B3BC, &v32[-32], v13, v14);
    if (v20)
    {

      a1 = 0;
      v21 = 0xE000000000000000;
    }

    else
    {
      v22 = sub_21D3F7BA8(v19, v13, v14);
      v24 = v23;
      v26 = v25;
      v28 = v27;

      a1 = MEMORY[0x223D429B0](v22, v24, v26, v28);
      v21 = v29;
    }

    v17(v7, v4);
    v30 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v30 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v30)
    {

      return 0;
    }
  }

  return a1;
}

uint64_t sub_21D5FB8D4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v0 + 16);

  return sub_21D5F6A70(v8, v0 + v2, v5, v6, v7);
}

unint64_t sub_21D5FB988()
{
  result = qword_27CE5EEA0;
  if (!qword_27CE5EEA0)
  {
    v3 = type metadata accessor for TTRSERecipeCard(255);
    result = swift_getWitnessTable(protocol conformance descriptor for TTRSERecipeCard, v3, v0, v1);
    atomic_store(result, &qword_27CE5EEA0);
  }

  return result;
}

uint64_t sub_21D5FB9E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EDE0, &qword_21DC1ED40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D5FBA50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D5FBAB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D5FBB20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D5FBBA0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t TTRRemindersListUndoContext.listType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TTRRemindersListUndoContext(0) + 20);

  return sub_21D5FBCB0(v3, a1);
}

uint64_t type metadata accessor for TTRRemindersListUndoContext(uint64_t a1)
{
  result = qword_280D134B8;
  if (!qword_280D134B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D5FBCB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0, &unk_21DC1BD10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TTRRemindersListUndoContext.init(undoManager:listType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for TTRRemindersListUndoContext(0) + 20);

  return sub_21D5FBD6C(a2, v4);
}

uint64_t sub_21D5FBD6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0, &unk_21DC1BD10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TTRRemindersListUndoContext.undoRegistration(forEditing:action:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0, &unk_21DC1BD10);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = *a1;
  v13 = type metadata accessor for TTRRemindersListUndoContext(0);
  sub_21D5FBCB0(v4 + *(v13 + 20), v11);
  v14 = type metadata accessor for TTRListType(0);
  if ((*(*(v14 - 8) + 48))(v11, 1, v14) == 1)
  {
    sub_21D5FBF50(v11);
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
  }

  else
  {
    *(&v19 + 1) = v14;
    v20 = &protocol witness table for TTRListType;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v18);
    sub_21D5FBFB8(v11, boxed_opaque_existential_0);
  }

  *a4 = 0u;
  *(a4 + 16) = 0u;
  v16 = MEMORY[0x277D84F90];
  *(a4 + 32) = 0;
  *(a4 + 40) = v16;
  sub_21DBF8E0C();
  sub_21D3DD654(&v18, a4);

  *(a4 + 40) = v12;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
}

uint64_t sub_21D5FBF50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0, &unk_21DC1BD10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D5FBFB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRListType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void **initializeBufferWithCopyOfBuffer for TTRRemindersListUndoContext(void **a1, char **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = &v4[(v3 + 16) & ~v3];

    return v5;
  }

  v5 = a1;
  v6 = *(a3 + 20);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for TTRListType(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v4;
  if (!v11(v8, 1, v9))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (!EnumCaseMultiPayload)
      {
        v19 = *v8;
        *v7 = *v8;
        v7[8] = v8[8];
        v20 = v19;
        swift_storeEnumTagMultiPayload();
        goto LABEL_17;
      }

      if (EnumCaseMultiPayload == 1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 3:
          v17 = sub_21DBF6C1C();
          (*(*(v17 - 8) + 16))(v7, v8, v17);
          swift_storeEnumTagMultiPayload();
          goto LABEL_17;
        case 4:
          v18 = *(v8 + 1);
          *v7 = *v8;
          *(v7 + 1) = v18;
          sub_21DBF8E0C();
          swift_storeEnumTagMultiPayload();
          goto LABEL_17;
        case 5:
LABEL_9:
          v15 = *v8;
          *v7 = *v8;
          v16 = v15;
          swift_storeEnumTagMultiPayload();
LABEL_17:
          (*(v10 + 56))(v7, 0, 1, v9);
          return v5;
      }
    }

    memcpy(v7, v8, *(v10 + 64));
    goto LABEL_17;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0, &unk_21DC1BD10);
  memcpy(v7, v8, *(*(v13 - 8) + 64));
  return v5;
}

double destroy for TTRRemindersListUndoContext(id *a1, uint64_t a2)
{
  v4 = (a1 + *(a2 + 20));
  v5 = type metadata accessor for TTRListType(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    return result;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload > 1)
    {
      return result;
    }

LABEL_9:
    v8 = *v4;

    return result;
  }

  switch(EnumCaseMultiPayload)
  {
    case 3:
      v9 = sub_21DBF6C1C();
      v10 = *(*(v9 - 8) + 8);

      v10(v4, v9);
      break;
    case 4:

      break;
    case 5:
      goto LABEL_9;
    default:
      return result;
  }

  return result;
}

void **initializeWithCopy for TTRRemindersListUndoContext(void **a1, void **a2, uint64_t a3)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = a1 + v5;
  v7 = a2 + v5;
  v8 = type metadata accessor for TTRListType(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v4;
  if (!v10(v7, 1, v8))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (!EnumCaseMultiPayload)
      {
        v18 = *v7;
        *v6 = *v7;
        v6[8] = v7[8];
        v19 = v18;
        swift_storeEnumTagMultiPayload();
        goto LABEL_15;
      }

      if (EnumCaseMultiPayload == 1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 3:
          v16 = sub_21DBF6C1C();
          (*(*(v16 - 8) + 16))(v6, v7, v16);
          swift_storeEnumTagMultiPayload();
          goto LABEL_15;
        case 4:
          v17 = *(v7 + 1);
          *v6 = *v7;
          *(v6 + 1) = v17;
          sub_21DBF8E0C();
          swift_storeEnumTagMultiPayload();
          goto LABEL_15;
        case 5:
LABEL_7:
          v14 = *v7;
          *v6 = *v7;
          v15 = v14;
          swift_storeEnumTagMultiPayload();
LABEL_15:
          (*(v9 + 56))(v6, 0, 1, v8);
          return a1;
      }
    }

    memcpy(v6, v7, *(v9 + 64));
    goto LABEL_15;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0, &unk_21DC1BD10);
  memcpy(v6, v7, *(*(v12 - 8) + 64));
  return a1;
}

void **assignWithCopy for TTRRemindersListUndoContext(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a3 + 20);
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = type metadata accessor for TTRListType(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v14(v10, 1, v12);
  v16 = v14(v11, 1, v12);
  if (v15)
  {
    if (!v16)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        if (!EnumCaseMultiPayload)
        {
          v25 = *v11;
          *v10 = *v11;
          v10[8] = v11[8];
          v26 = v25;
          swift_storeEnumTagMultiPayload();
          goto LABEL_25;
        }

        if (EnumCaseMultiPayload == 1)
        {
          goto LABEL_7;
        }
      }

      else
      {
        switch(EnumCaseMultiPayload)
        {
          case 3:
            v24 = sub_21DBF6C1C();
            (*(*(v24 - 8) + 16))(v10, v11, v24);
            swift_storeEnumTagMultiPayload();
            goto LABEL_25;
          case 4:
            *v10 = *v11;
            *(v10 + 1) = *(v11 + 1);
            sub_21DBF8E0C();
            swift_storeEnumTagMultiPayload();
            goto LABEL_25;
          case 5:
LABEL_7:
            v18 = *v11;
            *v10 = *v11;
            v19 = v18;
            swift_storeEnumTagMultiPayload();
LABEL_25:
            (*(v13 + 56))(v10, 0, 1, v12);
            return a1;
        }
      }

      memcpy(v10, v11, *(v13 + 64));
      goto LABEL_25;
    }

    goto LABEL_10;
  }

  if (!v16)
  {
    if (a1 == a2)
    {
      return a1;
    }

    sub_21D5FC9AC(v10);
    v21 = swift_getEnumCaseMultiPayload();
    if (v21 <= 2)
    {
      if (!v21)
      {
        v29 = *v11;
        *v10 = *v11;
        v10[8] = v11[8];
        v30 = v29;
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      if (v21 == 1)
      {
LABEL_17:
        v22 = *v11;
        *v10 = *v11;
        v23 = v22;
        swift_storeEnumTagMultiPayload();
        return a1;
      }
    }

    else
    {
      switch(v21)
      {
        case 3:
          v28 = sub_21DBF6C1C();
          (*(*(v28 - 8) + 16))(v10, v11, v28);
          swift_storeEnumTagMultiPayload();
          return a1;
        case 4:
          *v10 = *v11;
          *(v10 + 1) = *(v11 + 1);
          sub_21DBF8E0C();
          swift_storeEnumTagMultiPayload();
          return a1;
        case 5:
          goto LABEL_17;
      }
    }

    v20 = *(v13 + 64);
    goto LABEL_11;
  }

  sub_21D5FC9AC(v10);
LABEL_10:
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0, &unk_21DC1BD10) - 8) + 64);
LABEL_11:
  memcpy(v10, v11, v20);
  return a1;
}

uint64_t sub_21D5FC9AC(uint64_t a1)
{
  v2 = type metadata accessor for TTRListType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *initializeWithTake for TTRRemindersListUndoContext(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for TTRListType(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(&a2[v5], 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0, &unk_21DC1BD10);
    memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v9 = sub_21DBF6C1C();
      (*(*(v9 - 8) + 32))(&a1[v5], &a2[v5], v9);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v5], &a2[v5], *(v7 + 64));
    }

    (*(v7 + 56))(&a1[v5], 0, 1, v6);
  }

  return a1;
}

void **assignWithTake for TTRRemindersListUndoContext(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRListType(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      if (a1 == a2)
      {
        return a1;
      }

      sub_21D5FC9AC(a1 + v7);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v15 = sub_21DBF6C1C();
        (*(*(v15 - 8) + 32))(a1 + v7, a2 + v7, v15);
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v14 = *(v9 + 64);
      goto LABEL_8;
    }

    sub_21D5FC9AC(a1 + v7);
LABEL_7:
    v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0, &unk_21DC1BD10) - 8) + 64);
LABEL_8:
    memcpy(a1 + v7, a2 + v7, v14);
    return a1;
  }

  if (v12)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v13 = sub_21DBF6C1C();
    (*(*(v13 - 8) + 32))(a1 + v7, a2 + v7, v13);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1 + v7, a2 + v7, *(v9 + 64));
  }

  (*(v9 + 56))(a1 + v7, 0, 1, v8);
  return a1;
}

void sub_21D5FCDBC(uint64_t a1)
{
  sub_21D5FCE58(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_21D5FCE58(uint64_t a1)
{
  if (!qword_280D16AB8[0])
  {
    type metadata accessor for TTRListType(255);
    v1 = sub_21DBFBA8C();
    if (!v2)
    {
      atomic_store(v1, qword_280D16AB8);
    }
  }
}

UIColor __swiftcall UIColor.ttr_resolved(for:)(RemindersUICore::TTRUserInterfaceAppearance a1)
{
  if (*a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v4 = [v1 resolvedColorWithTraitCollection_];

  return v4;
}

Swift::String __swiftcall UIColor.cssRGBARepresentation()()
{
  v1 = MEMORY[0x277D85048];
  v2 = sub_21DBFA69C();
  *(v2 + 16) = 4;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  v3 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  if (v3)
  {
    v4 = v3;
    v5 = [v0 CGColor];
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v4, kCGRenderingIntentDefault, v5, 0);

    if (CopyByMatchingToColorSpace)
    {
      if (CGColorGetNumberOfComponents(CopyByMatchingToColorSpace) == 4)
      {
        v7 = sub_21DBFADCC();

        if (v7)
        {

          v2 = v7;
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21DC0AFB0;
  v10 = *(v2 + 16);
  if (!v10)
  {
    __break(1u);
    goto LABEL_16;
  }

  v11 = v8;
  v12 = *(v2 + 32) * 255.0;
  *(v8 + 56) = v1;
  v8 = sub_21D5FD118();
  *(v11 + 64) = v8;
  *(v11 + 32) = v12;
  if (v10 == 1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = *(v2 + 40) * 255.0;
  *(v11 + 96) = v1;
  *(v11 + 104) = v8;
  *(v11 + 72) = v13;
  if (v10 < 3)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = *(v2 + 48) * 255.0;
  *(v11 + 136) = v1;
  *(v11 + 144) = v8;
  *(v11 + 112) = v14;
  *(v11 + 176) = v1;
  *(v11 + 184) = v8;
  if (v10 == 3)
  {
LABEL_18:
    __break(1u);
    goto _$sSo7UIColorC15RemindersUICoreE21cssRGBARepresentationSSyF;
  }

  v15 = *(v2 + 56);

  *(v11 + 152) = v15;

  v8 = sub_21DBFA17C();
_$sSo7UIColorC15RemindersUICoreE21cssRGBARepresentationSSyF:
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

unint64_t sub_21D5FD118()
{
  result = qword_27CE5EED0;
  if (!qword_27CE5EED0)
  {
    result = swift_getWitnessTable(MEMORY[0x277D85098], MEMORY[0x277D85048], v0, v1);
    atomic_store(result, &qword_27CE5EED0);
  }

  return result;
}

id static UIColor.ttrLocationColor.home.getter()
{
  v0 = [objc_opt_self() systemCyanColor];

  return v0;
}

id static UIColor.ttrLocationColor.work.getter()
{
  v0 = [objc_opt_self() systemBrownColor];

  return v0;
}

id static UIColor.ttrLocationColor.car.getter()
{
  v0 = [objc_opt_self() systemBlueColor];

  return v0;
}

id static UIColor.ttrLocationColor.custom.getter()
{
  v0 = [objc_opt_self() systemGray2Color];

  return v0;
}

id static UIColor.ttrSecondaryLabelColor.getter()
{
  v0 = [objc_opt_self() secondaryLabelColor];

  return v0;
}

id static UIColor.ttrLabelColor.getter()
{
  v0 = [objc_opt_self() labelColor];

  return v0;
}

id static UIColor.ttrLocationColor.other.getter()
{
  v0 = [objc_opt_self() systemRedColor];

  return v0;
}

uint64_t sub_21D5FD32C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5EEA8);
  v1 = __swift_project_value_buffer(v0, qword_27CE5EEA8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRUserInterfaceAppearance.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D5FD480()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);
  v4[4] = sub_21D5FD548;
  v4[5] = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_21D114B20;
  v4[3] = &block_descriptor_65;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider_];
  _Block_release(v1);

  qword_27CE5EEC0 = v2;
  return result;
}

void sub_21D5FD548(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  if (v2 >= 3)
  {
    if (qword_27CE56AB8 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE5EEA8);
    v7 = MEMORY[0x277D84F90];
    v8 = sub_21D17716C(MEMORY[0x277D84F90]);
    v9 = sub_21D17716C(v7);
    sub_21DAEAB00("unknown userInterfaceStyle", 26, 2, v8, v9);
    __break(1u);
  }

  else
  {
    v3 = dbl_21DC1EF68[v2];
    v4 = [objc_opt_self() systemBlueColor];
    v5 = [v4 resolvedColorWithTraitCollection_];

    [v5 colorWithAlphaComponent_];
  }
}

uint64_t (*static UIColor.emojiBadgeSelectionBackgroundColor.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27CE56AC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

id sub_21D5FD754()
{
  result = [objc_opt_self() systemBlueColor];
  qword_27CE5EEC8 = result;
  return result;
}

id sub_21D5FD7B4(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = *a2;

  return v4;
}

void sub_21D5FD840(void *a1, void *a2, void **a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = *a3;
  *a3 = a1;
}

uint64_t (*static UIColor.emojiBadgeHighlightColor.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27CE56AC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id static UIColor.completionCheckboxStrokeColor.getter()
{
  v0 = [objc_opt_self() lightGrayColor];

  return v0;
}

id static UIColor.ttrTertiaryLabelColor.getter()
{
  v0 = [objc_opt_self() tertiaryLabelColor];

  return v0;
}

id static UIColor.ttrQuaternaryLabelColor.getter()
{
  v0 = [objc_opt_self() quaternaryLabelColor];

  return v0;
}

id static UIColor.ttrTertiarySystemBackground.getter()
{
  v0 = [objc_opt_self() tertiarySystemBackgroundColor];

  return v0;
}

id static UIColor.ttrLinkColor.getter()
{
  v0 = [objc_opt_self() linkColor];

  return v0;
}

id static UIColor.ttrDarkText.getter()
{
  v0 = [objc_opt_self() darkTextColor];

  return v0;
}

id UIColor.init(testing_red:green:blue:alpha:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  SRGB = CGColorCreateSRGB(a1, a2, a3, a4);
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCGColor_];

  return v5;
}

BOOL UIColor.isBlack.getter()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = 0.0;
  v4[0] = 0.0;
  v2 = 0.0;
  [v0 getRed:v4 green:&v3 blue:&v2 alpha:0];
  return v4[0] + v3 + v2 == 0.0;
}

double UIColor.contrastRatioOver(_:)()
{
  v0 = UIColor.relativeLuminance()();
  v1 = 1.0;
  if ((v2 & 1) == 0)
  {
    v3 = *&v0;
    v4 = COERCE_DOUBLE(UIColor.relativeLuminance()());
    if ((v5 & 1) == 0)
    {
      v6 = v3;
      if (v4 >= v3)
      {
        v7 = v3;
      }

      else
      {
        v7 = v4;
      }

      if (v3 <= v4)
      {
        v6 = v4;
      }

      return (v6 + 0.05) / (v7 + 0.05);
    }
  }

  return v1;
}

CGColorSpace *UIColor.relativeLuminance()()
{
  v8[1] = *MEMORY[0x277D85DE8];
  *&result = COERCE_DOUBLE(CGColorSpaceCreateWithName(*MEMORY[0x277CBF4A8]));
  if (*&result != 0.0)
  {
    v2 = result;
    v3 = [v0 CGColor];
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v2, kCGRenderingIntentDefault, v3, 0);

    if (CopyByMatchingToColorSpace)
    {
      v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];

      if (v5)
      {
        v7 = 0.0;
        v8[0] = 0.0;
        v6 = 0.0;
        [v5 getRed:v8 green:&v7 blue:&v6 alpha:0];

        *&result = v8[0] * 0.2126 + v7 * 0.7152 + v6 * 0.0722;
        return result;
      }
    }

    else
    {
    }

    *&result = 0.0;
  }

  return result;
}

id sub_21D5FDD58(void *a1)
{
  if (a1)
  {
    v2 = objc_opt_self();
    v3 = a1;
    v4 = [v2 whiteColor];
    v5 = [v2 darkTextColor];
    v6 = UIColor.relativeLuminance()();
    v7 = 1.0;
    if ((v8 & 1) == 0)
    {
      v9 = *&v6;
      v10 = COERCE_DOUBLE(UIColor.relativeLuminance()());
      if ((v11 & 1) == 0)
      {
        v12 = v9;
        if (v10 >= v9)
        {
          v13 = v9;
        }

        else
        {
          v13 = v10;
        }

        if (v9 <= v10)
        {
          v12 = v10;
        }

        v7 = (v12 + 0.05) / (v13 + 0.05);
      }
    }

    v14 = UIColor.relativeLuminance()();
    if (v15)
    {
    }

    else
    {
      v18 = *&v14;
      v19 = COERCE_DOUBLE(UIColor.relativeLuminance()());
      v21 = v20;

      if ((v21 & 1) == 0)
      {
        if (v7 <= 1.5)
        {
          v22 = v18;
          v23 = v18 > v19 ? v18 : v19;
          v24 = v23 + 0.05;
          if (v19 < v18)
          {
            v22 = v19;
          }

          if (v24 / (v22 + 0.05) >= v7)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_26;
      }
    }

    if (v7 <= 1.5 && v7 <= 1.0)
    {
LABEL_27:

      return v5;
    }

LABEL_26:

    return v4;
  }

  v16 = [objc_opt_self() labelColor];

  return v16;
}

unint64_t sub_21D5FDF18()
{
  result = qword_27CE5EED8;
  if (!qword_27CE5EED8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRUserInterfaceAppearance, &type metadata for TTRUserInterfaceAppearance, v0, v1);
    atomic_store(result, &qword_27CE5EED8);
  }

  return result;
}

id TTRIConstraintBasedLayoutHostingView.__allocating_init(hostedView:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithHostedView_];

  return v3;
}

id TTRIConstraintBasedLayoutHostingView.init(hostedView:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithHostedView_, a1);

  return v3;
}

id TTRIConstraintBasedLayoutHostingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static TTRTypedController.currentArgument.getter()
{
  if (qword_280D19D68 != -1)
  {
    v4 = swift_once();
  }

  v3 = *(off_280D19D70 + 2);
  if (v3)
  {
    sub_21D0CEB98(off_280D19D70 + 32 * v3, &v5);
    swift_getAssociatedTypeWitness();
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return v4;
}

double static TTRTypedController<>.instantiateFromStoryboard(with:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = (*(a3 + 8))(a2, a3);
  v11 = (*(a3 + 16))(a2, a3);
  static TTRTypedController.instantiate(from:withStoryboardIdentifier:argument:)(v10, v11, v12, a1, a2, a4, a5);

  return result;
}

uint64_t sub_21D5FE274()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5EEE0);
  v1 = __swift_project_value_buffer(v0, qword_27CE5EEE0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void static TTRTypedController.instantiate(from:withStoryboardIdentifier:argument:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30 = a2;
  v31 = a3;
  v28 = a7;
  v29 = a1;
  v10 = sub_21DBF9D8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = a5;
  v33 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v34);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a4, AssociatedTypeWitness);
  if (qword_280D19D68 != -1)
  {
    swift_once();
  }

  v16 = off_280D19D70;
  sub_21DBF8E0C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_21D213408(0, *(v16 + 2) + 1, 1, v16);
  }

  v18 = *(v16 + 2);
  v17 = *(v16 + 3);
  if (v18 >= v17 >> 1)
  {
    v16 = sub_21D213408((v17 > 1), v18 + 1, 1, v16);
  }

  *(v16 + 2) = v18 + 1;
  sub_21D0CF2E8(&v34, &v16[32 * v18 + 32]);
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  *v13 = sub_21DBFB12C();
  v19 = *MEMORY[0x277D85200];
  v20 = *(v11 + 104);
  v20(v13, v19, v10);
  v21 = sub_21DBF9DAC();
  v24 = *(v11 + 8);
  v22 = v11 + 8;
  v23 = v24;
  v24(v13, v10);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v27 = v20;
  v22 = v10;
  off_280D19D70 = v16;

  sub_21D5FE67C(v29, v32, v28);
  v16 = off_280D19D70;
  if (!*(off_280D19D70 + 2))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_21DBF8E0C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v25 = *(v16 + 2);
    if (v25)
    {
      goto LABEL_11;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_15:
  v16 = sub_21D256CF4(v16);
  v25 = *(v16 + 2);
  if (!v25)
  {
    goto LABEL_16;
  }

LABEL_11:
  v26 = v25 - 1;
  __swift_destroy_boxed_opaque_existential_0(&v16[32 * v25]);
  *(v16 + 2) = v26;
  *v13 = sub_21DBFB12C();
  v27(v13, v19, v22);
  LOBYTE(v26) = sub_21DBF9DAC();
  v23(v13, v22);
  if (v26)
  {
    off_280D19D70 = v16;

    return;
  }

LABEL_17:
  __break(1u);
}

void sub_21D5FE67C(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_21DBFBA8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24[-v8];
  v10 = sub_21DBFA12C();
  v11 = [a1 instantiateViewControllerWithIdentifier_];

  v26[3] = sub_21D0D8CF0(0, &qword_280D17818, 0x277D75D28);
  v26[0] = v11;
  sub_21D0CEB98(v26, v25);
  v12 = swift_dynamicCast();
  v13 = *(*(a2 - 8) + 56);
  if (v12)
  {
    v14 = *(a2 - 8);
    v13(v9, 0, 1, a2);
    __swift_destroy_boxed_opaque_existential_0(v26);
    (*(v14 + 32))(a3, v9, a2);
  }

  else
  {
    v13(v9, 1, 1, a2);
    (*(v7 + 8))(v9, v6);
    if (qword_27CE56AD0 != -1)
    {
      swift_once();
    }

    v15 = sub_21DBF84BC();
    __swift_project_value_buffer(v15, qword_27CE5EEE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0, &unk_21DC0FAF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D20;
    *(inited + 32) = 48;
    *(inited + 40) = 0xE100000000000000;
    v25[0] = a2;
    swift_getMetatypeMetadata();
    v17 = sub_21DBFA1AC();
    v18 = MEMORY[0x277D837D0];
    *(inited + 48) = v17;
    *(inited + 56) = v19;
    *(inited + 72) = v18;
    *(inited + 80) = 49;
    *(inited + 88) = 0xE100000000000000;
    sub_21D0CEB98(v26, v25);
    v20 = sub_21DBFA1AC();
    *(inited + 120) = v18;
    *(inited + 96) = v20;
    *(inited + 104) = v21;
    v22 = sub_21D17716C(inited);

    v23 = sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEAB00("Unexpected Controller type loaded from Storyboard {expected: %@, actual: %@}", 76, 2, v22, v23);
    __break(1u);
  }
}

uint64_t UNAuthorizationStatus.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6574654420746F4ELL;
    }

    if (a1 == 1)
    {
      return 0x6465696E6544;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x7A69726F68747541;
      case 3:
        return 0x6F697369766F7250;
      case 4:
        return 0x6172656D65687045;
    }
  }

  return 0x6E776F6E6B6E55;
}

uint64_t sub_21D5FEA68()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x6574654420746F4ELL;
    }

    if (v1 == 1)
    {
      return 0x6465696E6544;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        return 0x7A69726F68747541;
      case 3:
        return 0x6F697369766F7250;
      case 4:
        return 0x6172656D65687045;
    }
  }

  return 0x6E776F6E6B6E55;
}

uint64_t sub_21D5FEB40(uint64_t a1, char **a2)
{
  v3 = v2;
  v31 = a2;
  v5 = sub_21DBF5A5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF5B9C();
  v10 = sub_21D6027A8(&qword_280D1B820, MEMORY[0x277CC9A28], MEMORY[0x277CC9A50]);
  v11 = sub_21DBFAC8C();
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v40 = MEMORY[0x277D84F90];
    sub_21D18ED10(0, v11 & ~(v11 >> 63), 0);
    *&v34 = v40;
    v32 = v9;
    sub_21DBFAC3C();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v28 = v6;
      v29 = v5;
      v13 = 0;
      v30 = v11;
      while (!__OFADD__(v13, 1))
      {
        v33 = v13 + 1;
        v11 = v8;
        v14 = v10;
        v15 = a1;
        v16 = v14;
        v17 = sub_21DBFAD3C();
        v35 = *v18;
        v17(v36, 0);
        sub_21D6003A4(&v35, v31, &v37);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v19 = v37;
        v20 = v38;
        v21 = v39;
        v22 = v34;
        v40 = v34;
        v24 = *(v34 + 16);
        v23 = *(v34 + 24);
        if (v24 >= v23 >> 1)
        {
          v34 = v37;
          v27 = v38;
          sub_21D18ED10((v23 > 1), v24 + 1, 1);
          v20 = v27;
          v19 = v34;
          v22 = v40;
        }

        *(v22 + 16) = v24 + 1;
        *&v34 = v22;
        v25 = v22 + 32 * v24;
        *(v25 + 32) = v19;
        *(v25 + 48) = v20;
        *(v25 + 56) = v21;
        v8 = v11;
        a1 = v15;
        v10 = v16;
        sub_21DBFACBC();
        ++v13;
        v11 = v30;
        if (v33 == v30)
        {
          (*(v28 + 8))(v8, v29);
          return v34;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*(v28 + 8))(v11, v29);

    __break(1u);
  }

  return result;
}

void sub_21D5FEE14(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21D256C90(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  v4 = sub_21DBFC59C();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 64;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[48 * i + 32];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 4))
          {
            break;
          }

          v14 = *(v13 + 5);
          v15 = *(v13 + 6);
          v16 = *(v13 + 7);
          v17 = *(v13 + 24);
          v18 = *(v13 - 1);
          *(v13 + 1) = *(v13 - 2);
          *(v13 + 2) = v18;
          *(v13 + 3) = *v13;
          *(v13 - 4) = v11;
          *(v13 - 24) = v17;
          *(v13 - 1) = v14;
          *v13 = v15;
          *(v13 + 1) = v16;
          v13 -= 48;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 48;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_21DBFA69C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v20[0] = (v7 + 32);
    v20[1] = v6;
    sub_21D600770(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

uint64_t sub_21D5FEF84()
{
  v1 = v0;
  sub_21DBFBEEC();

  v2 = sub_21DBFB9BC();
  MEMORY[0x223D42AA0](v2);

  MEMORY[0x223D42AA0](0x786966657270202CLL, 0xEA0000000000203ALL);
  MEMORY[0x223D42AA0](v1[2], v1[3]);
  MEMORY[0x223D42AA0](0x203A74786574202CLL, 0xE800000000000000);
  MEMORY[0x223D42AA0](v1[4], v1[5]);
  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  return 0x203A65676E617228;
}

uint64_t sub_21D5FF06C(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v4 = a1[4], v5 = a1[5], v6 = a2[4], v7 = a2[5], a1[2] == a2[2]) && a1[3] == a2[3] || (v8 = sub_21DBFC64C(), result = 0, (v8))
    {
      if (v4 == v6 && v5 == v7)
      {
        return 1;
      }

      else
      {

        return sub_21DBFC64C();
      }
    }
  }

  return result;
}

void sub_21D5FF13C(id a1@<X1>, char ***a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v109 = a2;
  v107 = a5;
  *&v108 = a1;
  v9 = [a1 string];
  v10 = sub_21DBFA16C();
  v12 = v11;

  v13 = MEMORY[0x223D42B30](v10, v12);

  if (a3 < 0 || v13 < a4 + a3)
  {
    goto LABEL_3;
  }

  v106 = a3;
  v99 = v6;
  v100 = v5;
  v14 = &selRef_setAttributedText_;
  v15 = [v108 string];
  if (!v15)
  {
LABEL_98:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = sub_21DBFA12C();
  v18 = [v16 stringByReplacingCharactersInRange:v106 withString:{a4, v17}];

  v19 = sub_21DBFA16C();
  v21 = v20;

  v22 = [v109 string];
  v23 = sub_21DBFA16C();
  v25 = v24;

  if (v19 == v23 && v21 == v25)
  {
  }

  else
  {
    v26 = sub_21DBFC64C();

    if ((v26 & 1) == 0)
    {
LABEL_3:
      sub_21D6026D4();
      swift_allocError();
      swift_willThrow();
      return;
    }
  }

  v27 = v109;
  v28 = [v109 string];
  v104 = sub_21DBFA16C();
  v105 = v29;

  v30 = sub_21DBFA12C();
  v31 = [v30 length];

  if (qword_280D177B8 != -1)
  {
LABEL_94:
    swift_once();
  }

  v32 = qword_280D177C0;
  v110[0] = MEMORY[0x277D84F90];
  v33 = [v27 v14[155]];
  v34 = sub_21DBFA16C();
  v36 = v35;

  v37 = MEMORY[0x223D42B30](v34, v36);

  v38 = swift_allocObject();
  v38[2] = sub_21D602A8C;
  v38[3] = 0;
  v38[4] = v110;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_21D301F58;
  *(v39 + 24) = v38;
  v115 = sub_21D24BE7C;
  v116 = v39;
  aBlock = MEMORY[0x277D85DD0];
  v112 = 1107296256;
  v113 = sub_21D1A6068;
  v114 = &block_descriptor_15_1;
  v40 = _Block_copy(&aBlock);

  [v27 enumerateAttribute:v32 inRange:0 options:v37 usingBlock:{0, v40}];
  _Block_release(v40);
  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if (v32)
  {
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v41 = v110[0];

  v14 = sub_21D19F1D8(v41);

  v27 = v14 + 7;
  v42 = v14[7];
  v122 = MEMORY[0x277D84FA0];
  v43 = 1;
  v44 = 1 << *(v14 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & v42;
  v47 = (v44 + 63) >> 6;
  v101 = v31;
  v48 = v31 + v106;
  sub_21DBF8E0C();
  v49 = 0;
  v50 = 0;
  v31 = 0;
  v103 = v14;
  v102 = v14 + 7;
  while (1)
  {
    while (1)
    {
      if (!v46)
      {
        while (1)
        {
          v51 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v51 >= v47)
          {
            goto LABEL_28;
          }

          v46 = v27[v51];
          ++v31;
          if (v46)
          {
            v31 = v51;
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_90;
      }

LABEL_20:
      v52 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
      v53 = (v14[6] + ((v31 << 10) | (16 * v52)));
      v54 = *v53;
      v55 = v53[1];
      if (v55 + *v53 >= v106 && v48 >= v54)
      {
        break;
      }

      sub_21D29C590(&aBlock, v54, v55);
      v27 = v102;
      v14 = v103;
    }

    if (v54 < v106)
    {
      v43 = 0;
      v49 = *v53;
      v50 = v106 - v54;
      if (__OFSUB__(v106, v54))
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_28:
  v98 = v48;

  v14 = type metadata accessor for TTRHashtagEditingPresenterCapability();
  v96 = v14;
  v57 = static TTRHashtagEditingPresenterCapability.enumerateCharacters(of:in:)(v104, v105, v106, v101);
  v58 = *(v57 + 16);
  v97 = v57;
  if (v58)
  {
    v31 = v57 + 48;
    while (1)
    {
      v61 = *v31;
      if (v61 == 3)
      {
        if ((v43 & 1) == 0)
        {
          v14 = &v122;
          sub_21D29C590(&aBlock, v49, v50);
        }

        v59 = 0;
        v60 = 0;
        v43 = 1;
      }

      else
      {
        v59 = *(v31 - 16);
        v60 = *(v31 - 8);
        if (v61 == 2)
        {
          if ((v43 & 1) == 0)
          {
            v14 = &v122;
            sub_21D29C590(&aBlock, v49, v50);
          }

          v43 = 0;
        }

        else if (v43)
        {
          v43 = 1;
          v59 = v49;
          v60 = v50;
        }

        else
        {
          v62 = __OFSUB__(&v59[v60], v49);
          v60 = &v59[v60 - v49];
          if (v60 < 0 != v62)
          {
            goto LABEL_91;
          }

          if (v62)
          {
            goto LABEL_92;
          }

          v43 = 0;
          v59 = v49;
        }
      }

      v31 += 24;
      v49 = v59;
      v50 = v60;
      if (!--v58)
      {
        goto LABEL_45;
      }
    }
  }

  v59 = v49;
  v60 = v50;
LABEL_45:

  v31 = v105;
  v63 = MEMORY[0x223D42B30](v104, v105);
  if (v63 < v98)
  {
    goto LABEL_96;
  }

  if (__OFSUB__(v63, v98))
  {
    goto LABEL_97;
  }

  v14 = v96;
  v64 = static TTRHashtagEditingPresenterCapability.enumerateCharacters(of:in:)(v104, v105, v98, v63 - v98);
  v65 = *(v64 + 16);
  if (!v65)
  {
    goto LABEL_52;
  }

  v66 = *(v64 + 32);
  v67 = *(v64 + 48);
  if (v67 == 2)
  {
    v14 = v103;
LABEL_54:

    v68 = 0;
    v69 = 1 << *(v14 + 32);
    v70 = -1;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    v71 = v70 & v14[7];
    v72 = (v69 + 63) >> 6;
    while (v71)
    {
      v73 = v68;
LABEL_63:
      v74 = __clz(__rbit64(v71));
      v71 &= v71 - 1;
      v75 = v74 | (v73 << 6);
      v76 = v14[6];
      if (*(v76 + 16 * v75) == v66)
      {
        v77 = *(v76 + 16 * v75 + 8);

        sub_21D29C590(&aBlock, v66, v77);
        goto LABEL_66;
      }
    }

    while (1)
    {
      v73 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        break;
      }

      if (v73 >= v72)
      {

        goto LABEL_66;
      }

      v71 = v27[v73];
      ++v68;
      if (v71)
      {
        v68 = v73;
        goto LABEL_63;
      }
    }

LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  if (v67 != 3)
  {
    if (v43)
    {

      v43 = 1;
      goto LABEL_66;
    }

    v92 = *(v64 + 40) + v66;
    v60 = v92 - v59;
    if (v92 >= v59)
    {
      if (__OFSUB__(v92, v59))
      {
LABEL_86:
        __break(1u);
      }

      else
      {
        v93 = (v64 + 72);
        while (--v65)
        {
          v94 = *v93;
          if (v94 == 3)
          {
            break;
          }

          v66 = *(v93 - 2);
          if (v94 == 2)
          {
            v14 = v103;
            v43 = 0;
            goto LABEL_54;
          }

          v95 = *(v93 - 1) + v66;
          v60 = v95 - v59;
          if (v95 < v59)
          {
            goto LABEL_93;
          }

          v93 += 24;
          if (__OFSUB__(v95, v59))
          {
            goto LABEL_86;
          }
        }
      }

      v43 = 0;
      goto LABEL_52;
    }

LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

LABEL_52:

LABEL_66:
  sub_21D601580(v109, v106, v101, v108);
  if ((v80 & 1) == 0)
  {
    v78 = sub_21D29C590(&aBlock, v78, v79);
  }

  MEMORY[0x28223BE20](v78);
  *&v108 = v99;
  v109 = &v96;
  aBlock = sub_21D601984(v122, sub_21D602728);
  MEMORY[0x28223BE20](aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EF00, &qword_21DC1F070);
  type metadata accessor for _NSRange(0);
  sub_21D0D0F1C(&qword_280D0C368, &qword_27CE5EF00, &qword_21DC1F070, MEMORY[0x277D83B68]);
  sub_21D6027A8(&qword_280D0C1A8, type metadata accessor for _NSRange, MEMORY[0x277CC9E30]);
  v81 = sub_21DBFA49C();

  v122 = v81;
  if (v43)
  {
    v82 = 1;
    v83 = v107;
  }

  else
  {
    aBlock = v59;
    v112 = v60;
    v84 = sub_21D5FFCB8(&aBlock);
    v83 = v107;
    if (v84)
    {
      sub_21D29C590(v110, aBlock, v112);
      v59 = 0;
      v60 = 0;
      v82 = 1;
    }

    else
    {
      v82 = 0;
    }
  }

  v85 = v122;
  v86 = v105;
  sub_21DBF8E0C();
  v109 = sub_21D60100C(v85, v104, v86);

  if (v82)
  {

    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0uLL;
  }

  else
  {
    sub_21D5FFFD8(v59, v60, &v117);
    v108 = v117;
    v87 = v118;
    v88 = v119;
    v89 = v120;
    v90 = v121;

    v91 = v108;
  }

  *v83 = v109;
  *(v83 + 8) = v91;
  *(v83 + 24) = v87;
  *(v83 + 32) = v88;
  *(v83 + 40) = v89;
  *(v83 + 48) = v90;
}

BOOL sub_21D5FFC3C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  type metadata accessor for TTRHashtagEditingPresenterCapability();
  static TTRHashtagEditingPresenterCapability.hashtagTextAttributes(of:in:)(a3, a4, v6, v7, &v10);
  return (v10 & 0x100) == 0 || v10 == 2;
}

uint64_t sub_21D5FFCB8(void *a1)
{
  v2 = v1;
  v4 = sub_21DBF4CAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBFA12C();
  v28 = a1;
  v9 = *a1;
  v10 = [v8 rangeOfComposedCharacterSequenceAtIndex_];
  v27 = v11;
  v12 = [v8 substringWithRange_];
  v13 = sub_21DBFA16C();
  v15 = v14;

  sub_21D1954D0(v13, v15);
  v17 = v16;

  if (!v17 || (sub_21DBF4C1C(), v18 = sub_21DBF4BFC(), , result = (*(v5 + 8))(v7, v4), (v18 & 1) == 0))
  {
    v21 = v28[1];
    goto LABEL_7;
  }

  v20 = &v9[v28[1]];
  v21 = v20 - &v10[v27];
  if (v20 < &v10[v27])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!__OFSUB__(v20, &v10[v27]))
  {
    v9 = &v10[v27];
LABEL_7:
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    v24 = swift_allocObject();
    v24[2] = v22;
    v24[3] = v2;
    v24[4] = v23;
    v24[5] = v9;
    v24[6] = v21;
    aBlock[4] = sub_21D6027F0;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D8682A8;
    aBlock[3] = &block_descriptor_25_1;
    v25 = _Block_copy(aBlock);

    [v8 enumerateSubstringsInRange:v9 options:v21 usingBlock:{2, v25}];

    _Block_release(v25);
    swift_beginAccess();
    v26 = *(v23 + 16);

    if (v26 == v21)
    {
      return v26 != v21;
    }

    if (!__OFADD__(v27, v26))
    {
      v28[1] = v27 + v26;
      return v26 != v21;
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_21D5FFFD8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_21DBF4CAC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBFA12C();
  v29 = a1;
  v11 = [v10 substringWithRange_];
  v12 = sub_21DBFA16C();
  v14 = v13;

  v15 = sub_21D1954D0(v12, v14);
  if (!v16)
  {
    goto LABEL_5;
  }

  v17 = v15;
  v18 = v16;
  v28 = a2;
  sub_21DBF4C1C();
  v19 = sub_21DBF4BFC();
  (*(v7 + 8))(v9, v6);
  if ((v19 & 1) == 0)
  {

    a2 = v28;
LABEL_5:

    v17 = 0;
    v18 = 0xE000000000000000;
    goto LABEL_6;
  }

  v20 = sub_21D3F969C(1uLL, v12, v14);
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v12 = MEMORY[0x223D429B0](v20, v22, v24, v26);
  v14 = v27;

  a2 = v28;
LABEL_6:
  *a3 = v29;
  a3[1] = a2;
  a3[2] = v17;
  a3[3] = v18;
  a3[4] = v12;
  a3[5] = v14;
}

void sub_21D6001BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *v2;
    v4 = *(*v2 + 16);
    if (v4)
    {
      v30 = MEMORY[0x277D84F90];
      sub_21D18ECF0(0, v4, 0);
      v5 = 0;
      v6 = v30;
      v7 = (v3 + 72);
      v8 = a2;
      v25 = v4;
      v26 = v3;
      while (v5 < *(v3 + 16))
      {
        v9 = *(v7 - 5);
        v10 = *(v7 - 2);
        v11 = *v7;
        v29 = *(v7 - 2);
        v28 = *(v7 - 1);
        if (v9 > a1)
        {
          v12 = __OFADD__(v9, v8);
          v9 += v8;
          if (v12)
          {
            goto LABEL_19;
          }
        }

        v13 = *(v30 + 16);
        v14 = *(v30 + 24);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        if (v13 >= v14 >> 1)
        {
          sub_21D18ECF0((v14 > 1), v13 + 1, 1);
          v8 = a2;
        }

        *(v30 + 16) = v13 + 1;
        v15 = v30 + 48 * v13;
        *(v15 + 32) = v9;
        ++v5;
        *(v15 + 40) = v29;
        *(v15 + 56) = v10;
        *(v15 + 64) = v28;
        *(v15 + 72) = v11;
        v7 += 6;
        v3 = v26;
        if (v25 == v5)
        {

          v2 = v23;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v6 = MEMORY[0x277D84F90];
LABEL_12:
    *v2 = v6;
    v17 = v2[1];
    v16 = v2[2];
    v19 = v2[3];
    v18 = v2[4];
    v20 = v2[5];
    v21 = v2[6];
    if (v18)
    {
      v22 = v2[1];
      if (v17 > a1)
      {
        v22 = v17 + a2;
        if (__OFADD__(v17, a2))
        {
LABEL_20:
          __break(1u);
          return;
        }
      }

      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21D602690(v17, v16, v19, v18);
      v17 = v22;
    }

    v2[1] = v17;
    v2[2] = v16;
    v2[3] = v19;
    v2[4] = v18;
    v2[5] = v20;
    v2[6] = v21;
  }
}

void sub_21D6003A4(unint64_t *a1@<X0>, char **a2@<X1>, void *a3@<X8>)
{
  v11 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a2;
    v4 = a3;
    if (v11 < *(*a2 + 2))
    {
      v12 = &(*a2)[48 * v11];
      v17 = *(v12 + 5);
      v18 = *(v12 + 4);
      v10 = *(v12 + 6);
      v5 = *(v12 + 7);
      v6 = *(v12 + 8);
      v7 = *(v12 + 9);
      swift_bridgeObjectRetain_n();
      sub_21DBF8E0C();
      MEMORY[0x223D42AA0](v6, v7);
      v15 = v5;
      v16 = v10;
      sub_21DBF8E0C();
      MEMORY[0x223D42AA0](v6, v7);
      v3 = MEMORY[0x223D42B30](v10, v5);

      v9 = *v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v8 = v9;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_8:
  v9 = sub_21D256C90(v9);
  *v8 = v9;
LABEL_4:
  if (v11 >= *(v9 + 2))
  {
    __break(1u);
  }

  else
  {
    v14 = &v9[48 * v11];
    *(v14 + 4) = v18;
    *(v14 + 5) = v3;
    *(v14 + 6) = v10;
    *(v14 + 7) = v5;
    *(v14 + 8) = v6;
    *(v14 + 9) = v7;

    *v4 = v18;
    v4[1] = v17;
    v4[2] = v16;
    v4[3] = v15;
  }
}

id sub_21D600504(uint64_t a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = [v1 string];
  v4 = sub_21DBFA16C();
  v6 = v5;

  v7 = MEMORY[0x223D42B30](v4, v6);

  result = 0;
  if ((a1 & 0x8000000000000000) == 0 && v7 > a1)
  {
    v9[0] = 0;
    v9[1] = 0;
    result = [v1 rem:a1 hashtagAtIndex:v9 longestEffectiveRange:0 inRange:v7];
    if (result)
    {

      return v9[0];
    }
  }

  return result;
}

uint64_t *sub_21D600614@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *(result + 16);
  v4 = v3 == 3;
  v5 = v3 != 3;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

uint64_t *sub_21D600634@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *(result + 16);
  v4 = v3 == 2;
  v5 = v3 != 2;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

void sub_21D600654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, BOOL *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  swift_beginAccess();
  v15 = *(a8 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a8 + 16) = v17;
    if (v17 > 75)
    {
LABEL_5:
      swift_beginAccess();
      *a7 = *(a8 + 16) > 74;
      return;
    }

    v16 = __OFSUB__(a4 + a3, a11);
    v18 = a4 + a3 - a11;
    if (!v16)
    {
      swift_beginAccess();
      *(a10 + 16) = v18;
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_21D600714()
{

  return swift_deallocClassInstance();
}

void sub_21D600770(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v101 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v7 = sub_21D82E300(v7);
    }

    v92 = v7 + 16;
    v93 = *(v7 + 2);
    if (v93 >= 2)
    {
      while (*a3)
      {
        v94 = &v7[16 * v93];
        v95 = *v94;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_21D600D40((*a3 + 48 * *v94), (*a3 + 48 * *v96), (*a3 + 48 * v97), v101);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v97 < v95)
        {
          goto LABEL_114;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_115;
        }

        *v94 = v95;
        *(v94 + 1) = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_116;
        }

        v93 = *v92 - 1;
        memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        if (v93 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v99 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 48 * v6);
      v10 = 48 * v8;
      v11 = (*a3 + 48 * v8);
      v14 = *v11;
      v13 = v11 + 12;
      v12 = v14;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v13;
        v13 += 6;
        v18 = (v9 < v12) ^ (v17 >= v16);
        ++v15;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v6 = v15 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 48 * v6 - 48;
        v20 = v6;
        v21 = v8;
        do
        {
          if (v21 != --v20)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v30 + v10);
            v23 = (v30 + v19);
            v24 = *(v22 + 4);
            v25 = *(v22 + 5);
            v27 = *v22;
            v26 = v22[1];
            v29 = v23[1];
            v28 = v23[2];
            *v22 = *v23;
            v22[1] = v29;
            v22[2] = v28;
            *v23 = v27;
            v23[1] = v26;
            *(v23 + 4) = v24;
            *(v23 + 5) = v25;
          }

          ++v21;
          v19 -= 48;
          v10 += 48;
        }

        while (v21 < v20);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_21D210B90(0, *(v7 + 2) + 1, 1, v7);
    }

    v45 = *(v7 + 2);
    v44 = *(v7 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v7 = sub_21D210B90((v44 > 1), v45 + 1, 1, v7);
    }

    *(v7 + 2) = v46;
    v47 = v7 + 32;
    v48 = &v7[16 * v45 + 32];
    *v48 = v8;
    *(v48 + 1) = v6;
    v101 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v7 + 4);
          v51 = *(v7 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_57:
          if (v53)
          {
            goto LABEL_104;
          }

          v66 = &v7[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_106;
          }

          v72 = &v47[16 * v49];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_111;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v76 = &v7[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_72:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v47[16 * v49];
        v81 = *v79;
        v80 = *(v79 + 1);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v87 = &v47[16 * v49 - 16];
        v88 = *v87;
        v89 = &v47[16 * v49];
        v90 = *(v89 + 1);
        sub_21D600D40((*a3 + 48 * *v87), (*a3 + 48 * *v89), (*a3 + 48 * v90), v101);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v90 < v88)
        {
          goto LABEL_99;
        }

        if (v49 > *(v7 + 2))
        {
          goto LABEL_100;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *(v7 + 2);
        if (v49 >= v91)
        {
          goto LABEL_101;
        }

        v46 = v91 - 1;
        memmove(&v47[16 * v49], v89 + 16, 16 * (v91 - 1 - v49));
        *(v7 + 2) = v91 - 1;
        if (v91 <= 2)
        {
          goto LABEL_3;
        }
      }

      v54 = &v47[16 * v46];
      v55 = *(v54 - 8);
      v56 = *(v54 - 7);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_102;
      }

      v59 = *(v54 - 6);
      v58 = *(v54 - 5);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_103;
      }

      v61 = &v7[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_105;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_107;
      }

      if (v65 >= v57)
      {
        v83 = &v47[16 * v49];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v99;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v31 = *a3;
  v32 = *a3 + 48 * v6 - 48;
  v33 = v8 - v6;
LABEL_30:
  v34 = *(v31 + 48 * v6);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = (v36 + 48);
    if (v34 >= *v36)
    {
LABEL_29:
      ++v6;
      v32 += 48;
      --v33;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v38 = *(v36 + 72);
    v39 = *(v36 + 88);
    v40 = *(v36 + 56);
    v41 = *(v36 + 16);
    *v37 = *v36;
    *(v36 + 64) = v41;
    v42 = *(v36 + 32);
    *v36 = v34;
    *(v36 + 8) = v40;
    *(v36 + 24) = v38;
    *(v36 + 40) = v39;
    v36 -= 48;
    v37[2] = v42;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_21D600D40(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[48 * v9] <= a4)
    {
      memmove(a4, __dst, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 < 48)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 48;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 48;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 48;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 2);
    *(v7 + 1) = *(v13 + 1);
    *(v7 + 2) = v16;
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[48 * v11] <= a4)
  {
    memmove(a4, __src, 48 * v11);
  }

  v12 = &v4[48 * v11];
  if (v10 >= 48 && v6 > v7)
  {
LABEL_20:
    v17 = v6 - 48;
    v5 -= 48;
    v18 = v12;
    do
    {
      v19 = v5 + 48;
      v20 = *(v18 - 6);
      v18 -= 48;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          v23 = *v17;
          v24 = *(v6 - 1);
          *(v5 + 1) = *(v6 - 2);
          *(v5 + 2) = v24;
          *v5 = v23;
        }

        if (v12 <= v4 || (v6 -= 48, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v19 != v12)
      {
        v21 = *v18;
        v22 = *(v18 + 2);
        *(v5 + 1) = *(v18 + 1);
        *(v5 + 2) = v22;
        *v5 = v21;
      }

      v5 -= 48;
      v12 = v18;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v25 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v26 = (v25 >> 3) + (v25 >> 63);
  if (v6 != v4 || v6 >= &v4[48 * v26])
  {
    memmove(v6, v4, 48 * v26);
  }

  return 1;
}

void *sub_21D600F7C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_21D601838(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_21D60100C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = a2;
  v83 = a3;
  v75 = sub_21DBF4CAC();
  v4 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v87 = MEMORY[0x277D84F90];
  sub_21D18ECF0(0, v6, 0);
  v7 = a1;
  v86 = v87;
  v8 = a1 + 56;
  v9 = -1;
  v10 = -1 << *(a1 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(a1 + 56);
  v12 = (63 - v10) >> 6;
  v76 = a1;
  v81 = a1 + 56;
  v78 = v6;
  v72 = v4;
  if (!v6)
  {
    sub_21DBF8E0C();
    v14 = 0;
    goto LABEL_22;
  }

  v73 = (v4 + 8);
  sub_21DBF8E0C();
  v13 = 0;
  v14 = 0;
  do
  {
    if (v11)
    {
      goto LABEL_10;
    }

    do
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:

        __break(1u);
        return result;
      }

      if (v15 >= v12)
      {
        goto LABEL_41;
      }

      v11 = *(v8 + 8 * v15);
      ++v14;
    }

    while (!v11);
    v14 = v15;
LABEL_10:
    v16 = (*(v7 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v11)))));
    v17 = *v16;
    v18 = v16[1];
    v19 = sub_21DBFA12C();
    v84 = v18;
    v85 = v17;
    v20 = [v19 substringWithRange_];
    v21 = sub_21DBFA16C();
    v23 = v22;

    v24 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v24 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      v79 = v19;
      v25 = sub_21DBFA3CC();
      v27 = v26;
      v28 = v74;
      sub_21DBF4C1C();
      v77 = v25;
      v80 = v27;
      LOBYTE(v25) = sub_21DBF4BFC();
      (*v73)(v28, v75);
      if (v25)
      {
        v29 = sub_21D3F969C(1uLL, v21, v23);
        v31 = v30;
        v33 = v32;
        v35 = v34;

        v21 = MEMORY[0x223D429B0](v29, v31, v33, v35);
        v23 = v36;

        v7 = v76;
        v37 = v77;
        v38 = v80;
        goto LABEL_17;
      }

      v7 = v76;
      v19 = v79;
    }

    v37 = 0;
    v38 = 0xE000000000000000;
LABEL_17:
    v39 = v86;
    v87 = v86;
    v41 = *(v86 + 16);
    v40 = *(v86 + 24);
    if (v41 >= v40 >> 1)
    {
      v77 = v37;
      v80 = v38;
      sub_21D18ECF0((v40 > 1), v41 + 1, 1);
      v7 = v76;
      v37 = v77;
      v38 = v80;
      v39 = v87;
    }

    ++v13;
    v11 &= v11 - 1;
    *(v39 + 16) = v41 + 1;
    v86 = v39;
    v42 = (v39 + 48 * v41);
    v42[4] = v85;
    v42[5] = v84;
    v42[6] = v37;
    v42[7] = v38;
    v42[8] = v21;
    v42[9] = v23;
    v8 = v81;
  }

  while (v13 != v78);
LABEL_22:
  v79 = (v72 + 8);
  if (v11)
  {
    goto LABEL_27;
  }

  while (2)
  {
    v43 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_40;
    }

    if (v43 < v12)
    {
      v11 = *(v8 + 8 * v43);
      ++v14;
      if (!v11)
      {
        continue;
      }

      v14 = v43;
LABEL_27:
      v44 = (*(v7 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v11)))));
      v45 = *v44;
      v46 = v44[1];
      v47 = sub_21DBFA12C();
      v84 = v46;
      v85 = v45;
      v48 = [v47 substringWithRange_];
      v49 = sub_21DBFA16C();
      v51 = v50;

      v52 = HIBYTE(v51) & 0xF;
      if ((v51 & 0x2000000000000000) == 0)
      {
        v52 = v49 & 0xFFFFFFFFFFFFLL;
      }

      if (v52)
      {
        v53 = sub_21DBFA3CC();
        v55 = v54;
        v56 = v74;
        sub_21DBF4C1C();
        v80 = v53;
        LOBYTE(v53) = sub_21DBF4BFC();
        (*v79)(v56, v75);
        if (v53)
        {
          v57 = sub_21D3F969C(1uLL, v49, v51);
          v59 = v58;
          v78 = v60;
          v62 = v61;

          v49 = MEMORY[0x223D429B0](v57, v59, v78, v62);
          v51 = v63;

          v64 = v80;
          goto LABEL_34;
        }
      }

      v64 = 0;
      v55 = 0xE000000000000000;
LABEL_34:
      v65 = v86;
      v87 = v86;
      v67 = *(v86 + 16);
      v66 = *(v86 + 24);
      v7 = v76;
      if (v67 >= v66 >> 1)
      {
        v80 = v64;
        sub_21D18ECF0((v66 > 1), v67 + 1, 1);
        v64 = v80;
        v7 = v76;
        v65 = v87;
      }

      v11 &= v11 - 1;
      *(v65 + 16) = v67 + 1;
      v86 = v65;
      v68 = (v65 + 48 * v67);
      v69 = v84;
      v68[4] = v85;
      v68[5] = v69;
      v68[6] = v64;
      v68[7] = v55;
      v68[8] = v49;
      v68[9] = v51;
      v8 = v81;
      if (!v11)
      {
        continue;
      }

      goto LABEL_27;
    }

    break;
  }

  return v86;
}

void sub_21D601580(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 >= 1)
  {
    sub_21D600504(a2);
    if (v7)
    {
      v8 = sub_21D600504(a2);
      if ((v9 & 1) == 0)
      {
        v20 = v8;
        v10 = [a1 string];
        v11 = sub_21DBFA16C();
        v13 = v12;

        v14 = MEMORY[0x223D42B30](v11, v13);
        v15 = v14 - a2;
        if (v14 < a2)
        {
          __break(1u);
        }

        else
        {
          v19 = v14;
          if (!__OFSUB__(v14, a2))
          {
            type metadata accessor for TTRHashtagEditingPresenterCapability();
            static TTRHashtagEditingPresenterCapability.enumerateCharacters(of:in:)(v11, v13, a2, v15);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EF08, &qword_21DC1F078);
            sub_21D0D0F1C(&qword_27CE5EF10, &qword_27CE5EF08, &qword_21DC1F078, MEMORY[0x277D83970]);
            sub_21DBFA48C();

            static TTRHashtagEditingPresenterCapability.enumerateCharacters(of:in:)(v11, v13, a2, v15);

            sub_21DBFA48C();

            v16 = v19;
            if (v23)
            {
              v17 = v19;
            }

            else
            {
              v17 = v22;
            }

            if (!v23)
            {
              v16 = v22;
            }

            if (v16 >= v17)
            {
              v18 = v17;
            }

            else
            {
              v18 = v16;
            }

            if (v18 >= v20)
            {
              if (!__OFSUB__(v18, v20))
              {
                if (v18 <= a2)
                {
                  return;
                }

                [a1 length];
                if (!__OFADD__([a4 length], a3))
                {
                  return;
                }

LABEL_24:
                __break(1u);
                return;
              }

LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
          }
        }

        __break(1u);
        goto LABEL_22;
      }
    }
  }
}

uint64_t sub_21D601838(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  v21 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v20 = *(*(a3 + 48) + 16 * v17);
    result = a4(&v20);
    if (v4)
    {
      return result;
    }

    if ((result & 1) == 0)
    {
      *(v21 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_21D7BFE30(v21, a2, v7, a3);
      }
    }
  }

  v15 = v8;
  while (1)
  {
    v8 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_21D601984(uint64_t a1, uint64_t (*a2)(__int128 *))
{
  v3 = v2;
  v5 = a1;
  v28 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v24 = v7;
    v25 = &v23;
    MEMORY[0x28223BE20](a1);
    v9 = &v23 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v26 = 0;
    v10 = 0;
    v11 = 1 << *(v5 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v5 + 56);
    v7 = (v11 + 63) >> 6;
    v14 = v3;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v3 = v15 | (v10 << 6);
      v27 = *(*(v5 + 48) + 16 * v3);
      v18 = a2(&v27);
      if (v14)
      {

        return swift_willThrow();
      }

      if ((v18 & 1) == 0)
      {
        *&v9[(v3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v3;
        if (__OFADD__(v26++, 1))
        {
          __break(1u);
          return sub_21D7BFE30(v9, v24, v26, v5);
        }
      }
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        return sub_21D7BFE30(v9, v24, v26, v5);
      }

      v17 = *(v5 + 56 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v21 = swift_slowAlloc();
  v22 = sub_21D600F7C(v21, v7, v5, a2);

  result = MEMORY[0x223D46520](v21, -1, -1);
  if (!v3)
  {
    return v22;
  }

  return result;
}

uint64_t sub_21D601C0C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v64 = sub_21DBF4CAC();
  v4 = *(v64 - 8);
  *&v5 = MEMORY[0x28223BE20](v64).n128_u64[0];
  v63 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 string];
  v67 = sub_21DBFA16C();
  v68 = v8;

  if (qword_280D177B8 != -1)
  {
    swift_once();
  }

  v9 = qword_280D177C0;
  v70 = MEMORY[0x277D84F90];
  v10 = [a1 string];
  v11 = sub_21DBFA16C();
  v13 = v12;

  v14 = MEMORY[0x223D42B30](v11, v13);

  v15 = swift_allocObject();
  v15[2] = sub_21D602A8C;
  v15[3] = 0;
  v15[4] = &v70;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_21D1A6510;
  *(v16 + 24) = v15;
  aBlock[4] = sub_21D24B3B4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D1A6068;
  aBlock[3] = &block_descriptor_66;
  v17 = _Block_copy(aBlock);

  [a1 enumerateAttribute:v9 inRange:0 options:v14 usingBlock:{0, v17}];
  _Block_release(v17);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v66 = v4;
    v60 = a2;
    v19 = v70;

    v20 = *(v19 + 16);
    v21 = MEMORY[0x277D84F90];
    v22 = MEMORY[0x277D84F90];
    if (v20)
    {
      type metadata accessor for TTRHashtagEditingPresenterCapability();
      v23 = (v19 + 40);
      do
      {
        v28 = *(v23 - 1);
        v29 = *v23;
        static TTRHashtagEditingPresenterCapability.hashtagTextAttributes(of:in:)(v67, v68, v28, *v23, &v70);
        if (v70 != 2 && (v70 & 0x100) != 0)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = v21;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21D18ED70(0, v21[2] + 1, 1);
            v21 = aBlock[0];
          }

          v25 = v21[2];
          v24 = v21[3];
          v26 = v21;
          if (v25 >= v24 >> 1)
          {
            sub_21D18ED70((v24 > 1), v25 + 1, 1);
            v26 = aBlock[0];
          }

          v26[2] = v25 + 1;
          v27 = &v26[2 * v25];
          v27[4] = v28;
          v27[5] = v29;
          v21 = v26;
        }

        v23 += 2;
        --v20;
      }

      while (v20);
    }

    v31 = v21[2];
    if (v31)
    {
      aBlock[0] = v22;
      sub_21D18ECF0(0, v31, 0);
      v32 = aBlock[0];
      v62 = (v66 + 8);
      v59[1] = v21;
      v33 = v21 + 5;
      while (1)
      {
        v34 = *(v33 - 1);
        v35 = *v33;
        v36 = sub_21DBFA12C();
        v65 = v35;
        v66 = v34;
        v37 = [v36 substringWithRange_];
        v38 = sub_21DBFA16C();
        v40 = v39;

        v41 = HIBYTE(v40) & 0xF;
        if ((v40 & 0x2000000000000000) == 0)
        {
          v41 = v38 & 0xFFFFFFFFFFFFLL;
        }

        if (!v41)
        {
          goto LABEL_22;
        }

        v42 = sub_21DBFA3CC();
        v44 = v43;
        v45 = v63;
        sub_21DBF4C1C();
        v46 = sub_21DBF4BFC();
        (*v62)(v45, v64);
        if ((v46 & 1) == 0)
        {
          break;
        }

        v47 = sub_21D3F969C(1uLL, v38, v40);
        v49 = v48;
        v61 = v50;
        v52 = v51;

        v38 = MEMORY[0x223D429B0](v47, v49, v61, v52);
        v40 = v53;

LABEL_23:
        aBlock[0] = v32;
        v55 = *(v32 + 16);
        v54 = *(v32 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_21D18ECF0((v54 > 1), v55 + 1, 1);
          v32 = aBlock[0];
        }

        v33 += 2;
        *(v32 + 16) = v55 + 1;
        v56 = (v32 + 48 * v55);
        v57 = v65;
        v56[4] = v66;
        v56[5] = v57;
        v56[6] = v42;
        v56[7] = v44;
        v56[8] = v38;
        v56[9] = v40;
        if (!--v31)
        {

          goto LABEL_28;
        }
      }

LABEL_22:

      v42 = 0;
      v44 = 0xE000000000000000;
      goto LABEL_23;
    }

    v32 = MEMORY[0x277D84F90];
LABEL_28:
    v58 = v60;
    *v60 = v32;
    *(v58 + 1) = 0u;
    *(v58 + 3) = 0u;
    *(v58 + 5) = 0u;
  }

  return result;
}

void sub_21D6021A0(char **a1, uint64_t a2)
{
  v45 = a2;
  v44 = sub_21DBF78CC();
  v3 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF5B9C();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D5FEE14(a1);
  v35[1] = 0;
  v38 = v7;
  sub_21DBF5B8C();
  v42 = *(*a1 + 2);
  if (!v42)
  {
LABEL_33:
    v34 = v38;
    sub_21D5FEB40(v38, a1);
    (*(v36 + 8))(v34, v37);
    return;
  }

  v41 = OBJC_IVAR____TtC15RemindersUICore44TTRReminderCellInlineHashtagEditingPresenter_fetchedHashtagLabels;
  swift_beginAccess();
  v8 = 0;
  v39 = (v3 + 8);
  v40 = (v3 + 16);
  v9 = 72;
  v47 = a1;
  while (1)
  {
    v10 = *a1;
    if (v8 >= *(*a1 + 2))
    {
      break;
    }

    v11 = *&v10[v9 - 32];
    v48 = *&v10[v9 - 40];
    v46 = v11;
    v12 = *&v10[v9 - 16];
    v50 = *&v10[v9 - 24];
    v13 = *&v10[v9 - 8];
    v14 = *&v10[v9];
    v15 = v44;
    v16 = v43;
    (*v40)(v43, v45 + v41, v44);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v17 = sub_21DBF781C();
    v19 = v18;
    (*v39)(v16, v15);
    v49 = v13;
    if (v19)
    {
      v13 = v17;
    }

    else
    {
      sub_21DBF8E0C();
      v19 = v14;
    }

    if (v50 == sub_21DBFA23C() && v12 == v20)
    {
    }

    else
    {
      v22 = sub_21DBFC64C();

      if ((v22 & 1) == 0)
      {

        goto LABEL_22;
      }
    }

    if (v13 == v49 && v19 == v14)
    {

LABEL_4:

      a1 = v47;
      goto LABEL_5;
    }

    v24 = sub_21DBFC64C();

    if (v24)
    {
      goto LABEL_4;
    }

LABEL_22:
    v25 = sub_21DBFA23C();
    v27 = v26;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_21D256C90(v10);
    }

    if (v8 >= *(v10 + 2))
    {
      goto LABEL_35;
    }

    v28 = &v10[v9];
    v29 = v46;
    *(v28 - 5) = v48;
    *(v28 - 4) = v29;
    *(v28 - 3) = v25;
    *(v28 - 2) = v27;
    *(v28 - 1) = v13;
    *v28 = v19;

    *v47 = v10;
    sub_21DBF5AFC();
    v51 = v25;
    v52 = v27;
    sub_21DBF8E0C();
    MEMORY[0x223D42AA0](v13, v19);

    if ((v52 & 0x1000000000000000) != 0)
    {
      v30 = sub_21DBFA35C();
    }

    else
    {
      v30 = sub_21DBFA36C();
    }

    v31 = v30;

    v51 = v50;
    v52 = v12;
    sub_21DBF8E0C();
    MEMORY[0x223D42AA0](v49, v14);

    a1 = v47;
    if ((v52 & 0x1000000000000000) != 0)
    {
      v32 = sub_21DBFA35C();
    }

    else
    {
      v32 = sub_21DBFA36C();
    }

    v33 = v32;

    if (__OFSUB__(v31, v33))
    {
      goto LABEL_36;
    }

    sub_21D6001BC(v48, v31 - v33);
LABEL_5:
    ++v8;
    v9 += 48;
    if (v42 == v8)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

double sub_21D602690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

unint64_t sub_21D6026D4()
{
  result = qword_27CE5EEF8;
  if (!qword_27CE5EEF8)
  {
    result = swift_getWitnessTable(aE_2, &type metadata for TTRInlineHashtagEditProcessor.TextProcessingError, v0, v1);
    atomic_store(result, &qword_27CE5EEF8);
  }

  return result;
}

double sub_21D60274C@<D0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *a1;
  sub_21D5FFCB8(&v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_21D6027A8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

double destroy for TTRReminderDetailViewModel.Recurrence()
{

  return result;
}

uint64_t initializeWithCopy for TTRInlineHashtagEditProcessor.Token(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

void *assignWithCopy for TTRInlineHashtagEditProcessor.Token(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  sub_21DBF8E0C();

  a1[4] = a2[4];
  a1[5] = a2[5];
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRInlineHashtagEditProcessor.Token(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderDetailViewModel.Recurrence(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TTRReminderDetailViewModel.Recurrence(uint64_t result, int a2, int a3)
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

unint64_t sub_21D602A30()
{
  result = qword_27CE5EF18;
  if (!qword_27CE5EF18)
  {
    result = swift_getWitnessTable(byte_21DC1F12C, &type metadata for TTRInlineHashtagEditProcessor.TextProcessingError, v0, v1);
    atomic_store(result, &qword_27CE5EF18);
  }

  return result;
}

uint64_t sub_21D602AEC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5EF20);
  v1 = __swift_project_value_buffer(v0, qword_27CE5EF20);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRExpectedRemindersDeletionBehavior.DeletionTreatmentForRecurringReminder.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

BOOL TTRDeleteRemindersPresenterCapability.CategorizeRemindersToBeDeleted.hasRecurringReminders.getter()
{
  if (*v0 >> 62)
  {
    v1 = sub_21DBFBD7C();
  }

  else
  {
    v1 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 != 0;
}

uint64_t TTRDeleteRemindersPresenterCapability.__allocating_init(interactor:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t TTRDeleteRemindersPresenterCapability.init(interactor:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t TTRDeleteRemindersPresenterCapability.deleteReminders(_:areSiriSuggestions:dueDateOfRecurrenceInstanceByRecurrentReminderID:requiresConfirmationForRemindersWithSubtasks:shouldNotPrompt:performOptimisticDeletion:alertPresenter:)(uint64_t a1, char a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 168) = v14;
  *(v9 + 176) = v8;
  *(v9 + 152) = a7;
  *(v9 + 160) = a8;
  *(v9 + 136) = a3;
  *(v9 + 144) = a6;
  *(v9 + 61) = a5;
  *(v9 + 60) = a4;
  *(v9 + 59) = a2;
  *(v9 + 128) = a1;
  *(v9 + 184) = *v8;
  *(v9 + 192) = sub_21DBFA84C();
  *(v9 + 200) = sub_21DBFA83C();
  v11 = sub_21DBFA7CC();
  *(v9 + 208) = v11;
  *(v9 + 216) = v10;

  return MEMORY[0x2822009F8](sub_21D602EBC, v11, v10);
}

uint64_t sub_21D602EBC()
{
  v1 = *(v0 + 128);
  v2 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_54;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_55:

    goto LABEL_56;
  }

LABEL_3:
  if (*(v0 + 59) == 1)
  {
    v4 = *(v0 + 176);
    v5 = *(v0 + 144);
    v6 = *(v0 + 128);

    v5(v7);
    v8 = swift_task_alloc();
    *(v8 + 16) = v4;
    *(v8 + 24) = v6;
    sub_21D60424C(sub_21D605830, v8);

LABEL_56:
    v37 = *(v0 + 8);

    return v37(v3 != 0);
  }

  v41 = v2;
  v45 = (v0 + 112);
  v46 = (v0 + 120);
  v9 = *(v0 + 176);
  v2 = *(v0 + 128);
  v10 = MEMORY[0x277D84F90];
  *(v0 + 112) = MEMORY[0x277D84F90];
  *(v0 + 120) = v10;
  v11 = *(v9 + 24);
  ObjectType = swift_getObjectType();
  v49 = v11;
  v42 = 0;
  v12 = 0;
  v13 = 0;
  v47 = *(v11 + 16);
  v50 = v1 & 0xC000000000000001;
  v43 = v2 + 32;
  v44 = v1 & 0xFFFFFFFFFFFFFF8;
  v14 = v10;
  while (2)
  {
    v15 = v13;
    while (1)
    {
      if (v50)
      {
        v16 = MEMORY[0x223D44740](v15, *(v0 + 128));
      }

      else
      {
        if (v15 >= *(v44 + 16))
        {
          goto LABEL_53;
        }

        v16 = *(v43 + 8 * v15);
      }

      v2 = v16;
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        v3 = sub_21DBFBD7C();
        if (!v3)
        {
          goto LABEL_55;
        }

        goto LABEL_3;
      }

      v17 = v3;
      v1 = sub_21D60447C();
      v18 = v2;
      if (v1)
      {
        MEMORY[0x223D42D80]();
        v1 = *((*v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v1 >= *((*v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v14 = *v45;
      }

      else
      {
        MEMORY[0x223D42D80]();
        if (*((*v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v1 = *((*v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v10 = *v46;
      }

      *(v0 + 224) = v10;
      *(v0 + 232) = v14;
      v2 = v47(v18, 0, ObjectType, v49);

      v3 = v17;
      if (!v2)
      {
        goto LABEL_24;
      }

      if ((v2 & 2) != 0)
      {
        break;
      }

      ++v15;
      v12 = 1;
      if (v13 == v17)
      {
        if ((v14 & 0x8000000000000000) == 0 && (v14 & 0x4000000000000000) == 0)
        {
          if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          goto LABEL_34;
        }

LABEL_59:
        v38 = sub_21DBFBD7C();
        v31 = v38 != 0;
        if (v38)
        {
          if (*(v0 + 61))
          {
            goto LABEL_35;
          }

LABEL_67:
          if (v41)
          {
            v39 = sub_21DBFBD7C();
          }

          else
          {
            v39 = *(v44 + 16);
          }

          v34 = sub_21DBFBD7C();
          v32 = v39;
          v33 = v42;
          goto LABEL_49;
        }

        if (v12)
        {
          if ((*(v0 + 61) & 1) == 0)
          {
            v12 = 1;
            goto LABEL_67;
          }

          v20 = 0;
          v3 = v17;
LABEL_38:

          v21 = v0 + 112;
          if (qword_27CE56AE0 != -1)
          {
            swift_once();
          }

          v22 = sub_21DBF84BC();
          __swift_project_value_buffer(v22, qword_27CE5EF20);
          v23 = sub_21DBF84AC();
          v24 = sub_21DBFAEDC();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            *v25 = 0;
            _os_log_impl(&dword_21D0C9000, v23, v24, "TTRDeleteRemindersPresenterCapability: shouldNotPrompt don't prompt for deletion", v25, 2u);
            MEMORY[0x223D46520](v25, -1, -1);
          }
        }

        else
        {

          v20 = 0;
          v3 = v17;
LABEL_30:
          v21 = v0 + 112;
        }

        v27 = *(v0 + 176);
        v26 = *(v0 + 184);
        v29 = *(v0 + 128);
        v28 = *(v0 + 136);
        (*(v0 + 144))(v19);
        v30 = swift_task_alloc();
        *(v30 + 16) = 1;
        *(v30 + 17) = v20;
        *(v30 + 24) = v27;
        *(v30 + 32) = v29;
        *(v30 + 40) = v21;
        *(v30 + 48) = v28;
        *(v30 + 56) = v46;
        *(v30 + 64) = v26;
        sub_21D60424C(sub_21D605818, v30);

        goto LABEL_56;
      }
    }

    v42 = 1;
    v12 = 1;
LABEL_24:
    if (v13 != v17)
    {
      continue;
    }

    break;
  }

  if (v14 < 0 || (v14 & 0x4000000000000000) != 0)
  {
    goto LABEL_59;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_34:
    if (*(v0 + 61))
    {
LABEL_35:
      v20 = 1;
      goto LABEL_38;
    }

    v31 = 1;
    if (v41)
    {
      goto LABEL_47;
    }

LABEL_45:
    v32 = *(v44 + 16);
    goto LABEL_48;
  }

  if ((v12 & 1) == 0)
  {

    v20 = 0;
    goto LABEL_30;
  }

LABEL_36:
  if (*(v0 + 61))
  {
    v20 = 0;
    goto LABEL_38;
  }

  v31 = 0;
  v12 = 1;
  if (!v41)
  {
    goto LABEL_45;
  }

LABEL_47:
  v32 = sub_21DBFBD7C();
LABEL_48:
  v33 = v42;
  v34 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_49:
  *(v0 + 240) = v32;
  *(v0 + 248) = v34;
  *(v0 + 105) = v33 & 1;
  *(v0 + 63) = v12 & 1;
  *(v0 + 62) = v31;
  *(v0 + 256) = sub_21DBFA83C();
  v36 = sub_21DBFA7CC();
  *(v0 + 264) = v36;
  *(v0 + 272) = v35;

  return MEMORY[0x2822009F8](sub_21D6034A8, v36, v35);
}

uint64_t sub_21D6034A8(uint64_t a1, uint64_t a2)
{
  v39 = v2;
  if (*(v2 + 160))
  {
    v3 = *(v2 + 168);
    if (*(v2 + 248))
    {
      v4 = *(v2 + 240) > 1;
      swift_unknownObjectRetain();
      sub_21D605464(v4, &v33);
      v5 = v33;
      v6 = v34;
      v7 = v35;
      v8 = v36;
      *(v2 + 280) = v34;
      *(v2 + 288) = v8;
      v9 = v37;
      *(v2 + 296) = v37;
      v10 = v3;
      v11 = v38;
      ObjectType = swift_getObjectType();
      *(v2 + 16) = v5;
      v12 = v2 + 16;
      *(v2 + 24) = v6;
      *(v2 + 32) = v7;
      *(v2 + 40) = v8;
      *(v2 + 48) = v9;
      *(v2 + 56) = v11;
      v31 = (*(v10 + 8) + **(v10 + 8));
      v13 = swift_task_alloc();
      *(v2 + 304) = v13;
      *v13 = v2;
      v13[1] = sub_21D603888;
      v14 = &type metadata for TTRExpectedRemindersDeletionBehavior;
      v15 = v2 + 57;
LABEL_4:

      return v31(v15, v12, v14, ObjectType, v10);
    }

    *(v2 + 106) = 1;
    v23 = *(v2 + 63);
    swift_unknownObjectRetain();
    if (v23 == 1 && (*(v2 + 60) & 1) != 0)
    {
      sub_21D605614(*(v2 + 240) > 1, *(v2 + 105), &v33);
      v10 = v3;
      v24 = v33;
      v25 = v34;
      v26 = v35;
      v27 = v36;
      *(v2 + 320) = v34;
      *(v2 + 328) = v27;
      v28 = v37;
      *(v2 + 336) = v37;
      v29 = v38;
      ObjectType = swift_getObjectType();
      *(v2 + 64) = v24;
      v12 = v2 + 64;
      *(v2 + 72) = v25;
      *(v2 + 80) = v26;
      *(v2 + 88) = v27;
      *(v2 + 96) = v28;
      *(v2 + 104) = v29;
      v31 = (*(v10 + 8) + **(v10 + 8));
      v30 = swift_task_alloc();
      *(v2 + 344) = v30;
      *v30 = v2;
      v30[1] = sub_21D603DF0;
      v14 = MEMORY[0x277D839B0];
      v15 = v2 + 58;
      goto LABEL_4;
    }

    swift_unknownObjectRelease();
    v20 = *(v2 + 208);
    v21 = *(v2 + 216);
    v22 = sub_21D605C20;
  }

  else
  {

    v17 = objc_opt_self();
    v18 = sub_21DBFA12C();
    v19 = [v17 internalErrorWithDebugDescription_];

    swift_willThrow();
    *(v2 + 360) = v19;
    v20 = *(v2 + 208);
    v21 = *(v2 + 216);
    v22 = sub_21D6041D0;
  }

  return MEMORY[0x2822009F8](v22, v20, v21);
}

uint64_t sub_21D603888()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = *(v2 + 264);
    v4 = *(v2 + 272);
    v5 = sub_21D603C5C;
  }

  else
  {

    v3 = *(v2 + 264);
    v4 = *(v2 + 272);
    v5 = sub_21D6039C0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D6039C0()
{
  v24 = v0;
  v1 = *(v0 + 57);
  if (v1 == 2)
  {

    swift_unknownObjectRelease();
    v2 = *(v0 + 208);
    v3 = *(v0 + 216);
    v4 = sub_21D605C1C;
LABEL_9:

    return MEMORY[0x2822009F8](v4, v2, v3);
  }

  *(v0 + 106) = v1 & 1;
  if (*(v0 + 63) != 1 || (*(v0 + 60) & 1) == 0)
  {

    swift_unknownObjectRelease();
    v2 = *(v0 + 208);
    v3 = *(v0 + 216);
    v4 = sub_21D605C20;
    goto LABEL_9;
  }

  v5 = *(v0 + 240);
  if ((v1 & 1) == 0 && v5 <= 1)
  {

    swift_unknownObjectRelease();
    v2 = *(v0 + 208);
    v3 = *(v0 + 216);
    v4 = sub_21D603CFC;
    goto LABEL_9;
  }

  v6 = *(v0 + 168);
  sub_21D605614(v5 > 1, *(v0 + 105), &v18);
  v7 = v18;
  v8 = v19;
  v9 = v20;
  v10 = v21;
  *(v0 + 320) = v19;
  *(v0 + 328) = v10;
  v11 = v22;
  *(v0 + 336) = v22;
  v12 = v23;
  ObjectType = swift_getObjectType();
  *(v0 + 64) = v7;
  *(v0 + 72) = v8;
  *(v0 + 80) = v9;
  *(v0 + 88) = v10;
  *(v0 + 96) = v11;
  *(v0 + 104) = v12;
  v16 = (*(v6 + 8) + **(v6 + 8));
  v13 = swift_task_alloc();
  *(v0 + 344) = v13;
  *v13 = v0;
  v13[1] = sub_21D603DF0;
  v14 = MEMORY[0x277D839B0];

  return v16(v0 + 58, v0 + 64, v14, ObjectType, v6);
}

uint64_t sub_21D603C5C()
{

  swift_unknownObjectRelease();

  v0[45] = v0[39];
  v1 = v0[26];
  v2 = v0[27];

  return MEMORY[0x2822009F8](sub_21D6041D0, v1, v2);
}

uint64_t sub_21D603CFC()
{

  v2 = *(v0 + 62);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  (*(v0 + 144))(v1);
  v7 = swift_task_alloc();
  *(v7 + 16) = 0;
  *(v7 + 17) = v2;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
  *(v7 + 40) = v0 + 112;
  *(v7 + 48) = v5;
  *(v7 + 56) = v0 + 120;
  *(v7 + 64) = v3;
  sub_21D60424C(sub_21D605818, v7);

  v8 = *(v0 + 8);

  return v8(1);
}

uint64_t sub_21D603DF0()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 264);
    v4 = *(v2 + 272);
    v5 = sub_21D603FB4;
  }

  else
  {

    v3 = *(v2 + 264);
    v4 = *(v2 + 272);
    v5 = sub_21D603F28;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D603F28()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  if (*(v0 + 58) == 1)
  {
    v3 = sub_21D604054;
  }

  else
  {
    v3 = sub_21D604154;
  }

  return MEMORY[0x2822009F8](v3, v1, v2);
}

uint64_t sub_21D603FB4()
{

  swift_unknownObjectRelease();

  v0[45] = v0[44];
  v1 = v0[26];
  v2 = v0[27];

  return MEMORY[0x2822009F8](sub_21D6041D0, v1, v2);
}

uint64_t sub_21D604054()
{

  v2 = *(v0 + 106);
  v3 = *(v0 + 62);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v7 = *(v0 + 128);
  v6 = *(v0 + 136);
  (*(v0 + 144))(v1);
  v8 = swift_task_alloc();
  *(v8 + 16) = v2;
  *(v8 + 17) = v3;
  *(v8 + 24) = v5;
  *(v8 + 32) = v7;
  *(v8 + 40) = v0 + 112;
  *(v8 + 48) = v6;
  *(v8 + 56) = v0 + 120;
  *(v8 + 64) = v4;
  sub_21D60424C(sub_21D605818, v8);

  v9 = *(v0 + 8);

  return v9(1);
}

uint64_t sub_21D604154()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_21D6041D0()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_21D60424C(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v5 = sub_21DBFA12C();

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21D0E6078;
  *(v7 + 24) = v6;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_67;
  v8 = _Block_copy(aBlock);

  [v4 withActionName:v5 block:{v8, 0x800000021DC4F510}];

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D60447C()
{
  v63 = *MEMORY[0x277D85DE8];
  v1 = sub_21DBF5A2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v57 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v54 - v8;
  v58 = sub_21DBF5C4C();
  v10 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - v13;
  v15 = sub_21DBF563C();
  v59 = *(v15 - 8);
  v60 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v54 - v19;
  *&v22 = MEMORY[0x28223BE20](v21).n128_u64[0];
  v24 = &v54 - v23;
  v62 = v0;
  if (([v0 isCompleted] & 1) != 0 || (objc_msgSend(v0, sel_isRecurrent) & 1) == 0)
  {
LABEL_19:
    LOBYTE(v26) = 0;
    return v26 & 1;
  }

  v55 = v2;
  v25 = [v0 displayDate];
  v26 = v25;
  if (v25)
  {
    v54 = v1;
    v27 = [v25 date];

    sub_21DBF55FC();
    (*(v59 + 32))(v24, v20, v60);
    v28 = [v0 displayDate];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 timeZone];

      if (v30)
      {
        sub_21DBF5C2C();

        v31 = 0;
      }

      else
      {
        v31 = 1;
      }

      v35 = v54;
      v36 = v10;
      v37 = *(v10 + 56);
      v34 = v58;
      v37(v6, v31, 1, v58);
      v38 = v6;
      v32 = v36;
      sub_21D605BAC(v38, v9);
      if ((*(v36 + 48))(v9, 1, v34) != 1)
      {
        (*(v36 + 32))(v14, v9, v34);
LABEL_13:
        v40 = off_282EEAC50;
        v41 = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
        if (v40(v41, &protocol witness table for REMReminder))
        {
          sub_21D0D8CF0(0, &qword_280D177E8, 0x277D44740);
          v42 = sub_21DBFA5DC();
        }

        else
        {
          v42 = 0;
        }

        v43 = objc_opt_self();
        v44 = sub_21DBF55BC();
        v45 = sub_21DBF5C0C();
        v61 = 0;
        [v43 repeatTypeForRecurrenceRules:v42 recurrenceDate:v44 recurrenceTimeZone:v45 getRepeatEnd:&v61];

        v46 = v61;
        if (!v61)
        {
          (*(v32 + 8))(v14, v34);
          (*(v59 + 8))(v24, v60);
          LOBYTE(v26) = 1;
          return v26 & 1;
        }

        sub_21DBF55FC();
        v47 = v46;
        v48 = v57;
        _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
        (*(v32 + 16))(v56, v14, v34);
        sub_21DBF59FC();
        if ((sub_21DBF59AC() & 1) == 0)
        {
          LOBYTE(v26) = sub_21DBF55CC();

          (*(v55 + 8))(v48, v35);
          v52 = v60;
          v53 = *(v59 + 8);
          v53(v17, v60);
          (*(v32 + 8))(v14, v34);
          v53(v24, v52);

          return v26 & 1;
        }

        (*(v55 + 8))(v48, v35);
        v49 = v60;
        v50 = *(v59 + 8);
        v50(v17, v60);
        (*(v32 + 8))(v14, v34);
        v50(v24, v49);

        goto LABEL_19;
      }
    }

    else
    {
      v32 = v10;
      v33 = *(v10 + 56);
      v34 = v58;
      v33(v9, 1, 1, v58);
      v35 = v54;
    }

    v39 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    if ((*(v32 + 48))(v9, 1, v34) != 1)
    {
      sub_21D0CF7E0(v9, &unk_27CE60DB0, qword_21DC0BF70);
    }

    goto LABEL_13;
  }

  return v26 & 1;
}

void sub_21D604BB8(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void *a7, uint64_t a8)
{
  v69 = a8;
  v15 = sub_21DBF619C();
  v70 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EF48, &unk_21DC1F378);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v67 - v19;
  if (a1)
  {
    if (qword_280D1AA10 != -1)
    {
      swift_once();
    }

    v68 = a4;
    if (a2)
    {
      v21 = *MEMORY[0x277D45638];
      v22 = sub_21DBF78DC();
      v23 = *(v22 - 8);
      (*(v23 + 104))(v20, v21, v22);
      (*(v23 + 56))(v20, 0, 1, v22);
    }

    else
    {
      v52 = sub_21DBF78DC();
      (*(*(v52 - 8) + 56))(v20, 1, 1, v52);
    }

    sub_21DBF62DC();
    sub_21DBF62CC();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE591F8, &qword_21DC0AFC0);
    v54 = &v17[v53[12]];
    v55 = v53[16];
    v56 = &v17[v53[20]];
    sub_21D605B3C(v20, v17);
    v57 = *MEMORY[0x277D44E28];
    v58 = sub_21DBF613C();
    (*(*(v58 - 8) + 104))(v17, v57, v58);
    *v54 = TTRUserDefaults.activitySessionId.getter();
    v54[1] = v59;
    TTRUserDefaults.activitySessionBeginTime.getter(&v17[v55]);
    v71 = 0;
    v72 = 0xE000000000000000;
    sub_21DBFBEEC();
    v60 = sub_21DBFC8EC();
    v62 = v61;

    v71 = v60;
    v72 = v62;
    MEMORY[0x223D42AA0](0xD000000000000011, 0x800000021DC63AF0);
    v63 = v72;
    *v56 = v71;
    *(v56 + 1) = v63;
    v64 = v70;
    (*(v70 + 104))(v17, *MEMORY[0x277D44E98], v15);
    sub_21DBF62BC();

    (*(v64 + 8))(v17, v15);
    v65 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v65 + 24))(v68, ObjectType, v65);
    sub_21D0CF7E0(v20, &qword_27CE5EF48, &unk_21DC1F378);
  }

  else
  {
    if (qword_27CE56AE0 != -1)
    {
      swift_once();
    }

    v67[2] = a7;
    v24 = sub_21DBF84BC();
    __swift_project_value_buffer(v24, qword_27CE5EF20);
    v25 = sub_21DBF84AC();
    v26 = sub_21DBFAEDC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21D0C9000, v25, v26, "TTRDeleteRemindersPresenterCapability: perform delete for thisInstanceOnly", v27, 2u);
      MEMORY[0x223D46520](v27, -1, -1);
    }

    v68 = v15;

    v28 = *(a3 + 16);
    v29 = *(a3 + 24);
    v30 = swift_getObjectType();
    v31 = *a5;
    v32 = swift_allocObject();
    *(v32 + 16) = a6;
    v33 = *(v29 + 32);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v67[0] = v30;
    v67[1] = v28;
    v33(v31, sub_21D605B34, v32, v30, v29);

    if (qword_280D1AA10 != -1)
    {
      swift_once();
    }

    sub_21DBF62DC();
    sub_21DBF62CC();
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE591F8, &qword_21DC0AFC0);
    v35 = &v17[v34[12]];
    v36 = v34[16];
    v37 = &v17[v34[20]];
    v38 = *MEMORY[0x277D45630];
    v39 = sub_21DBF78DC();
    v40 = *(v39 - 8);
    (*(v40 + 104))(v17, v38, v39);
    (*(v40 + 56))(v17, 0, 1, v39);
    v41 = *MEMORY[0x277D44E28];
    v42 = sub_21DBF613C();
    (*(*(v42 - 8) + 104))(v17, v41, v42);
    *v35 = TTRUserDefaults.activitySessionId.getter();
    v35[1] = v43;
    TTRUserDefaults.activitySessionBeginTime.getter(&v17[v36]);
    v71 = 0;
    v72 = 0xE000000000000000;
    sub_21DBFBEEC();
    v44 = sub_21DBFC8EC();
    v46 = v45;

    v71 = v44;
    v72 = v46;
    MEMORY[0x223D42AA0](0xD000000000000011, 0x800000021DC63AF0);
    v47 = v72;
    *v37 = v71;
    *(v37 + 1) = v47;
    v48 = v70;
    v49 = v68;
    (*(v70 + 104))(v17, *MEMORY[0x277D44E98], v68);
    sub_21DBF62BC();

    (*(v48 + 8))(v17, v49);
    v50 = *(v29 + 24);
    v51 = sub_21DBF8E0C();
    v50(v51, v67[0], v29);
  }
}

uint64_t sub_21D60532C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_21D17E07C(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = sub_21DBF563C();
    v16 = *(v9 - 8);
    (*(v16 + 16))(a3, v8 + *(v16 + 72) * v7, v9);
    v10 = *(v16 + 56);
    v11 = a3;
    v12 = 0;
    v13 = v9;
  }

  else
  {
    v14 = sub_21DBF563C();
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a3;
    v12 = 1;
  }

  return v10(v11, v12, 1, v13);
}

uint64_t sub_21D605464@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = _s15RemindersUICore21TTRLocalizableStringsO6AlertsO40deleteRecurringReminderConfirmationTitle021isDeletingMoreThanOneH0SSSb_tFZ_0(a1);
  v6 = v5;
  v7 = _s15RemindersUICore21TTRLocalizableStringsO6AlertsO41deleteRecurringReminderThisInstanceButton021isDeletingMoreThanOneH0SSSb_tFZ_0(a1);
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EF50, &qword_21DC1F388);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21DC08D10;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;
  *(v10 + 48) = 2;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  *(v10 + 56) = sub_21DBF516C();
  *(v10 + 64) = v11;
  *(v10 + 72) = 258;
  result = sub_21DBF516C();
  *(v10 + 80) = result;
  *(v10 + 88) = v13;
  *(v10 + 96) = 513;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 40) = 3;
  return result;
}

uint64_t sub_21D605614@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = _s15RemindersUICore21TTRLocalizableStringsO6AlertsO31deleteReminderConfirmationTitle021isDeletingMoreThanOneG0SSSb_tFZ_0(a1);
  v8 = v7;
  v9 = _s15RemindersUICore21TTRLocalizableStringsO6AlertsO45deleteReminderWithSubtasksConfirmationMessage021isDeletingMoreThanOneG008includesah9CompletedI0SSSb_SbtFZ_0(a1, a2);
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EF40, &qword_21DC1F370);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21DC08D20;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  *(v12 + 32) = sub_21DBF516C();
  *(v12 + 40) = v13;
  *(v12 + 48) = 258;
  result = sub_21DBF516C();
  *(v12 + 56) = result;
  *(v12 + 64) = v15;
  *(v12 + 72) = 1;
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = v11;
  *(a3 + 32) = v12;
  *(a3 + 40) = 3;
  return result;
}

uint64_t TTRDeleteRemindersPresenterCapability.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21D605830()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + 24);
  ObjectType = swift_getObjectType();
  return (*(v2 + 8))(v1, ObjectType, v2);
}

unint64_t sub_21D605888()
{
  result = qword_27CE5EF38;
  if (!qword_27CE5EF38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRExpectedRemindersDeletionBehavior.DeletionTreatmentForRecurringReminder, &type metadata for TTRExpectedRemindersDeletionBehavior.DeletionTreatmentForRecurringReminder, v0, v1);
    atomic_store(result, &qword_27CE5EF38);
  }

  return result;
}

uint64_t sub_21D60599C(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 8);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRDeleteRemindersPresenterCapability.CategorizeRemindersToBeDeleted(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  *(a1 + 8) = a2[1];
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t assignWithTake for TTRDeleteRemindersPresenterCapability.CategorizeRemindersToBeDeleted(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRDeleteRemindersPresenterCapability.CategorizeRemindersToBeDeleted(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t storeEnumTagSinglePayload for TTRDeleteRemindersPresenterCapability.CategorizeRemindersToBeDeleted(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21D605B3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EF48, &unk_21DC1F378);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D605BAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TTRShowCompletedSectionHeaderTitleFormatter.__allocating_init(locale:calendar:allowsRelativeDates:referenceDateForYearAndEra:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerRelativeDateFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateExcludingYearFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateIncludingYearFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___relativeDateFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___absoluteDateFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___yearFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___monthFormatter) = 0;
  v9 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_locale;
  v10 = sub_21DBF582C();
  (*(*(v10 - 8) + 32))(v8 + v9, a1, v10);
  v11 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_calendar;
  v12 = sub_21DBF5A2C();
  (*(*(v12 - 8) + 32))(v8 + v11, a2, v12);
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_allowsRelativeDates) = a3;
  sub_21D46CA8C(a4, v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_referenceDateForYearAndEra);
  return v8;
}

double TTRShowCompletedSectionHeaderTitleFormatter.title(for:)@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF563C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x223D3FCD0](v5);
  TTRDateBucketSectionHeaderTitleFormatterBase.textAndSecondaryTextRange(for:allowsRelativeDates:)(v7, *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_allowsRelativeDates), &v14);
  v13 = v14;
  v8 = v15;
  v9 = v16;
  v10 = v17;
  (*(v4 + 8))(v7, v3);
  v11 = *(sub_21DBF752C() + 16);

  *a1 = v13;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 65856;
  *(a1 + 68) = v11 == 0;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 255;
  return result;
}

uint64_t TTRShowCompletedSectionHeaderTitleFormatter.init(locale:calendar:allowsRelativeDates:referenceDateForYearAndEra:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerRelativeDateFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateExcludingYearFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateIncludingYearFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___relativeDateFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___absoluteDateFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___yearFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___monthFormatter) = 0;
  v9 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_locale;
  v10 = sub_21DBF582C();
  (*(*(v10 - 8) + 32))(v4 + v9, a1, v10);
  v11 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_calendar;
  v12 = sub_21DBF5A2C();
  (*(*(v12 - 8) + 32))(v4 + v11, a2, v12);
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_allowsRelativeDates) = a3;
  sub_21D46CA8C(a4, v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_referenceDateForYearAndEra);
  return v4;
}

void TTRShowCompletedSectionHeaderTitleFormatter.title(for:isFirst:)(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v188 = a1;
  LODWORD(v187) = a2;
  v4 = sub_21DBF731C();
  v179 = *(v4 - 8);
  v180 = v4;
  MEMORY[0x28223BE20](v4);
  v172 = &v165 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF563C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v166 = &v165 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v165 = &v165 - v10;
  MEMORY[0x28223BE20](v11);
  v178 = &v165 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v165 - v14;
  MEMORY[0x28223BE20](v16);
  v171 = &v165 - v17;
  MEMORY[0x28223BE20](v18);
  v177 = &v165 - v19;
  v20 = sub_21DBF753C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v168 = &v165 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v167 = &v165 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v165 - v26;
  MEMORY[0x28223BE20](v28);
  v173 = &v165 - v29;
  MEMORY[0x28223BE20](v30);
  v181 = &v165 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v32 - 8);
  v170 = &v165 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v175 = &v165 - v35;
  MEMORY[0x28223BE20](v36);
  v169 = &v165 - v37;
  MEMORY[0x28223BE20](v38);
  v174 = &v165 - v39;
  MEMORY[0x28223BE20](v40);
  v176 = &v165 - v41;
  MEMORY[0x28223BE20](v42);
  v182 = &v165 - v43;
  MEMORY[0x28223BE20](v44);
  v183 = (&v165 - v45);
  MEMORY[0x28223BE20](v46);
  v184 = &v165 - v47;
  v48 = sub_21DBF754C();
  v49 = *(v48 - 8);
  v50 = MEMORY[0x28223BE20](v48);
  v52 = &v165 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v49 + 16))(v52, v188, v48, v50);
  v53 = (*(v49 + 88))(v52, v48);
  v54 = *MEMORY[0x277D45580];
  v186 = v20;
  if (v53 == v54)
  {
    (*(v49 + 96))(v52, v48);
    v55 = (*(v21 + 32))(v27, v52, v20);
    MEMORY[0x223D3FCD0](v55);
    TTRDateBucketSectionHeaderTitleFormatterBase.textAndSecondaryTextRange(for:allowsRelativeDates:)(v15, *(v189 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_allowsRelativeDates), &v190);
    v184 = *(&v190 + 1);
    v185 = v190;
    v182 = v192;
    v183 = v191;
    v188 = v193;
    v56 = *(v7 + 8);
    v57 = v56(v15, v6);
    MEMORY[0x223D3FCD0](v57);
    v58 = sub_21DBF589C();
    v59 = v56(v15, v6);
    if (v58 & 1) != 0 || (MEMORY[0x223D3FCD0](v59), v60 = sub_21DBF591C(), v56(v15, v6), (v60))
    {
      v61 = sub_21DBF752C();
      (*(v21 + 8))(v27, v186);
      v62 = *(v61 + 16) == 0;

      v63 = 0;
      v64 = 2 * v62;
      if (v187)
      {
        v65 = 2;
      }

      else
      {
        v65 = 3;
      }
    }

    else
    {
      v92 = *(sub_21DBF752C() + 16);

      v63 = 1;
      if (v92)
      {
        v64 = 1;
      }

      else
      {
        v64 = 2;
      }

      v93 = sub_21DBF752C();
      (*(v21 + 8))(v27, v186);
      v94 = *(v93 + 16);

      v65 = v94 == 0;
    }

    v95 = v184;
    *a3 = v185;
    *(a3 + 8) = v95;
    v96 = v182;
    *(a3 + 16) = v183;
    *(a3 + 24) = v96;
    *(a3 + 32) = v188;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *(a3 + 64) = 64;
    *(a3 + 66) = v64;
    *(a3 + 65) = v63;
    *(a3 + 67) = 0;
    *(a3 + 68) = v65;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 120) = 255;
  }

  else
  {
    v185 = v52;
    v188 = v7;
    if (v53 == *MEMORY[0x277D45570])
    {
      v66 = v185;
      (*(v49 + 96))(v185, v48);
      v67 = *&v66[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D338, &unk_21DC1F390) + 48)];
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v68 = sub_21DBF516C();
      v70 = v69;
      if (*(v67 + 16))
      {
        v71 = v21;
        v72 = v181;
        v73 = v186;
        (*(v21 + 16))(v181, v67 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v186);

        v75 = v184;
        MEMORY[0x223D3FCD0](v74);
        (*(v71 + 8))(v72, v73);
        v66 = v185;
        v76 = 0;
        v77 = 0;
      }

      else
      {

        v77 = 2;
        v76 = 1;
        v75 = v184;
      }

      v109 = v188;
      v110 = v6;
      (*(v188 + 56))(v75, v76, 1, v6);
      if (v187)
      {
        v111 = 2;
      }

      else
      {
        v111 = 3;
      }

      v112 = v183;
      sub_21D46CAFC(v75, v183);
      if ((*(v109 + 48))(v112, 1, v110) == 1)
      {
        sub_21D46CB6C(v112);
        *a3 = v68;
        *(a3 + 8) = v70;
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        *(a3 + 48) = 0u;
        *(a3 + 64) = -64;
        v113 = 1;
      }

      else
      {
        v114 = v177;
        (*(v109 + 32))(v177, v112, v110);
        TTRDateBucketSectionHeaderTitleFormatterBase.textAndSecondaryTextRange(for:allowsRelativeDates:)(v114, 0, &v190);
        v189 = v190;
        v115 = v191;
        v116 = v192;
        v117 = v111;
        v118 = v77;
        v119 = v193;
        v120 = v114;
        v75 = v184;
        (*(v188 + 8))(v120, v110);
        v113 = 0;
        *a3 = v68;
        *(a3 + 8) = v70;
        *(a3 + 16) = v189;
        *(a3 + 32) = v115;
        *(a3 + 40) = v116;
        v109 = v188;
        *(a3 + 48) = v119;
        *(a3 + 56) = 0;
        v77 = v118;
        v111 = v117;
        v66 = v185;
        *(a3 + 64) = 0x80;
      }

      *(a3 + 66) = v77;
      *(a3 + 65) = 0;
      *(a3 + 67) = 0;
      *(a3 + 68) = v111;
      *(a3 + 72) = 0u;
      *(a3 + 88) = 0u;
      *(a3 + 104) = 0;
      *(a3 + 112) = 0;
      *(a3 + 120) = -1;
      *(a3 + 121) = v113;
      sub_21D46CB6C(v75);
      (*(v109 + 8))(v66, v110);
    }

    else
    {
      v78 = v185;
      if (v53 != *MEMORY[0x277D45578])
      {
        v97 = v6;
        if (v53 == *MEMORY[0x277D45590])
        {
          (*(v49 + 96))(v185, v48);
          v98 = *&v78[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D338, &unk_21DC1F390) + 48)];
          v99 = v188;
          v100 = v178;
          v183 = *(v188 + 32);
          (v183)(v178, v78, v97);
          if (*(v98 + 16))
          {
            v101 = v21;
            v102 = *(v21 + 16);
            v103 = v98 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
            v104 = v167;
            v105 = v186;
            v102(v167, v103, v186);

            v107 = v174;
            MEMORY[0x223D3FCD0](v106);
            (*(v101 + 8))(v104, v105);
            v108 = 0;
          }

          else
          {

            v108 = 1;
            v107 = v174;
          }

          (*(v99 + 56))(v107, v108, 1, v97);
          v184 = TTRDateBucketSectionHeaderTitleFormatterBase.monthHeaderTitleString(for:)(v100);
          v185 = v137;
          v138 = *(v99 + 48);
          LODWORD(v186) = 2 * (v138(v107, 1, v97) == 1);
          if (v187)
          {
            v139 = 2;
          }

          else
          {
            v139 = 3;
          }

          LODWORD(v187) = v139;
          v140 = v169;
          sub_21D46CAFC(v107, v169);
          if (v138(v140, 1, v97) == 1)
          {
            v141 = v107;
            (*(v99 + 8))(v178, v97);
            sub_21D46CB6C(v140);
            v142 = v185;
            *a3 = v184;
            *(a3 + 8) = v142;
            *(a3 + 16) = 0u;
            *(a3 + 32) = 0u;
            *(a3 + 48) = 0u;
            *(a3 + 64) = -64;
            v143 = 1;
          }

          else
          {
            v144 = v165;
            (v183)(v165, v140, v97);
            TTRDateBucketSectionHeaderTitleFormatterBase.textAndSecondaryTextRange(for:allowsRelativeDates:)(v144, 0, &v190);
            v189 = v190;
            v145 = v191;
            v146 = v192;
            v147 = v193;
            v148 = *(v99 + 8);
            v149 = v144;
            v141 = v174;
            v148(v149, v97);
            v148(v178, v97);
            v143 = 0;
            v150 = v185;
            *a3 = v184;
            *(a3 + 8) = v150;
            *(a3 + 16) = v189;
            *(a3 + 32) = v145;
            *(a3 + 40) = v146;
            *(a3 + 48) = v147;
            *(a3 + 56) = 0;
            *(a3 + 64) = 0x80;
          }

          *(a3 + 66) = v186;
          *(a3 + 65) = 0;
          *(a3 + 67) = 0;
          *(a3 + 68) = v187;
          *(a3 + 72) = 0u;
          *(a3 + 88) = 0u;
          *(a3 + 104) = 0;
          *(a3 + 112) = 0;
          *(a3 + 120) = -1;
          *(a3 + 121) = v143;
          v151 = v141;
        }

        else
        {
          v121 = v188;
          if (v53 != *MEMORY[0x277D45588])
          {
            sub_21DBFC63C();
            __break(1u);
            return;
          }

          (*(v49 + 96))(v185, v48);
          v122 = *&v78[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D330, &unk_21DC19280) + 48)];
          v123 = v172;
          (*(v179 + 32))(v172, v78, v180);
          v124 = v175;
          if (*(v122 + 16))
          {
            v125 = v168;
            v126 = v186;
            (*(v21 + 16))(v168, v122 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v186);

            MEMORY[0x223D3FCD0](v127);
            (*(v21 + 8))(v125, v126);
            v128 = 0;
          }

          else
          {

            v128 = 1;
          }

          (*(v121 + 56))(v124, v128, 1, v97);
          v152 = TTRDateBucketSectionHeaderTitleFormatterBase.yearHeaderTitleString(for:)();
          v185 = v153;
          v154 = *(v121 + 48);
          LODWORD(v186) = 2 * (v154(v124, 1, v97) == 1);
          if (v187)
          {
            v155 = 2;
          }

          else
          {
            v155 = 3;
          }

          LODWORD(v189) = v155;
          v156 = v170;
          sub_21D46CAFC(v124, v170);
          if (v154(v156, 1, v97) == 1)
          {
            (*(v179 + 8))(v123, v180);
            sub_21D46CB6C(v156);
            v157 = v185;
            *a3 = v152;
            *(a3 + 8) = v157;
            *(a3 + 16) = 0u;
            *(a3 + 32) = 0u;
            *(a3 + 48) = 0u;
            *(a3 + 64) = -64;
            v158 = 1;
          }

          else
          {
            v159 = v166;
            (*(v121 + 32))(v166, v156, v97);
            TTRDateBucketSectionHeaderTitleFormatterBase.textAndSecondaryTextRange(for:allowsRelativeDates:)(v159, 0, &v190);
            v187 = v190;
            v160 = v191;
            v161 = v192;
            v162 = v193;
            v163 = v159;
            v124 = v175;
            (*(v121 + 8))(v163, v97);
            (*(v179 + 8))(v123, v180);
            v158 = 0;
            v164 = v185;
            *a3 = v152;
            *(a3 + 8) = v164;
            *(a3 + 16) = v187;
            *(a3 + 32) = v160;
            *(a3 + 40) = v161;
            *(a3 + 48) = v162;
            *(a3 + 56) = 0;
            *(a3 + 64) = 0x80;
          }

          *(a3 + 66) = v186;
          *(a3 + 65) = 0;
          *(a3 + 67) = 0;
          *(a3 + 68) = v189;
          *(a3 + 72) = 0u;
          *(a3 + 88) = 0u;
          *(a3 + 104) = 0;
          *(a3 + 112) = 0;
          *(a3 + 120) = -1;
          *(a3 + 121) = v158;
          v151 = v124;
        }

        sub_21D46CB6C(v151);
        return;
      }

      (*(v49 + 96))(v185, v48);
      v79 = *&v78[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D338, &unk_21DC1F390) + 48)];
      v80 = v6;
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v81 = sub_21DBF516C();
      v83 = v82;
      v84 = v188;
      v85 = v186;
      if (*(v79 + 16))
      {
        v86 = v21;
        v87 = v173;
        (*(v21 + 16))(v173, v79 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v186);

        v89 = v182;
        MEMORY[0x223D3FCD0](v88);
        (*(v86 + 8))(v87, v85);
        v90 = 0;
        v91 = 0;
      }

      else
      {

        v91 = 2;
        v90 = 1;
        v89 = v182;
      }

      (*(v84 + 56))(v89, v90, 1, v80);
      if (v187)
      {
        v129 = 2;
      }

      else
      {
        v129 = 3;
      }

      v130 = v176;
      sub_21D46CAFC(v89, v176);
      if ((*(v84 + 48))(v130, 1, v80) == 1)
      {
        sub_21D46CB6C(v130);
        *a3 = v81;
        *(a3 + 8) = v83;
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        *(a3 + 48) = 0u;
        *(a3 + 64) = -64;
        v131 = 1;
      }

      else
      {
        v132 = v171;
        (*(v84 + 32))(v171, v130, v80);
        TTRDateBucketSectionHeaderTitleFormatterBase.textAndSecondaryTextRange(for:allowsRelativeDates:)(v132, 0, &v190);
        v189 = v190;
        v133 = v191;
        v134 = v192;
        v135 = v193;
        v136 = v132;
        v89 = v182;
        (*(v188 + 8))(v136, v80);
        v131 = 0;
        *a3 = v81;
        *(a3 + 8) = v83;
        *(a3 + 16) = v189;
        *(a3 + 32) = v133;
        *(a3 + 40) = v134;
        *(a3 + 48) = v135;
        *(a3 + 56) = 0;
        v84 = v188;
        *(a3 + 64) = 0x80;
      }

      *(a3 + 66) = v91;
      *(a3 + 65) = 0;
      *(a3 + 67) = 0;
      *(a3 + 68) = v129;
      *(a3 + 72) = 0u;
      *(a3 + 88) = 0u;
      *(a3 + 104) = 0;
      *(a3 + 112) = 0;
      *(a3 + 120) = -1;
      *(a3 + 121) = v131;
      sub_21D46CB6C(v89);
      (*(v84 + 8))(v185, v80);
    }
  }
}

uint64_t TTRShowCompletedSectionHeaderTitleFormatter.__deallocating_deinit()
{
  TTRDateBucketSectionHeaderTitleFormatterBase.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRShowCompletedSectionHeaderTitleFormatter(uint64_t a1)
{
  result = qword_27CE5EF58;
  if (!qword_27CE5EF58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TTRTreeStorageNodeValue.init(item:auxiliaryData:children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  v15 = type metadata accessor for TTRTreeStorageNodeValue(0, v17);
  result = (*(*(a5 - 8) + 32))(a8 + *(v15 + 52), a2, a5);
  *(a8 + *(v15 + 56)) = a3;
  return result;
}

void TTRTreeStorageNodeValue.children.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);

  *(v2 + v4) = a1;
}

uint64_t *sub_21D607664(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64) + 7;
  v11 = ((v10 + ((v5 + v8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = v8 | *(v4 + 80) & 0xF8;
  if (v12 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + (((v12 | 7) + 16) & ~(v12 | 7)));
  }

  else
  {
    v16 = ~v8;
    (*(v4 + 16))(a1);
    v18 = (a2 + v9) & v16;
    (*(v7 + 16))((v3 + v9) & v16, v18, v6);
    *((v10 + ((v3 + v9) & v16)) & 0xFFFFFFFFFFFFFFF8) = *((v10 + v18) & 0xFFFFFFFFFFFFFFF8);
    sub_21DBF8E0C();
  }

  return v3;
}

uint64_t sub_21D6077FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 24))(v12, v13);
  *((*(v9 + 40) + 7 + v12) & 0xFFFFFFFFFFFFFFF8) = *((*(v9 + 40) + 7 + v13) & 0xFFFFFFFFFFFFFFF8);
  sub_21DBF8E0C();

  return a1;
}

uint64_t sub_21D6078DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 32))(v12, v13);
  *((*(v9 + 32) + 7 + v12) & 0xFFFFFFFFFFFFFFF8) = *((*(v9 + 32) + 7 + v13) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_21D6079AC(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      return 0x726F727265;
    }

    if (a1 == 5)
    {
      return 0x64656873696E6966;
    }
  }

  else
  {
    if (a1 == 2)
    {
      return 0x6C69617641746F6ELL;
    }

    if (a1 == 3)
    {
      return 0x6572676F72506E69;
    }
  }

  sub_21DBFBEEC();

  if (a1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (a1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x223D42AA0](v3, v4);

  return 0xD000000000000024;
}

uint64_t sub_21D607AE4()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5EF68);
  v1 = __swift_project_value_buffer(v0, qword_27CE5EF68);
  if (qword_280D17A38 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27CE8ECE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRCloudKitMigrationManager.MigrationState.description.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    if (v1 == 4)
    {
      return 0x726F727265;
    }

    if (v1 == 5)
    {
      return 0x64656873696E6966;
    }
  }

  else
  {
    if (v1 == 2)
    {
      return 0x6C69617641746F6ELL;
    }

    if (v1 == 3)
    {
      return 0x6572676F72506E69;
    }
  }

  sub_21DBFBEEC();

  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x223D42AA0](v3, v4);

  return 0xD000000000000024;
}

uint64_t static TTRCloudKitMigrationManager.MigrationState.== infix(_:_:)()
{
  v0 = sub_21D1220B8();
  v2 = v1;
  if (v0 == sub_21D1220B8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_21DBFC64C();
  }

  return v5 & 1;
}

uint64_t sub_21D607D90()
{
  v0 = sub_21D1220B8();
  v2 = v1;
  if (v0 == sub_21D1220B8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_21DBFC64C();
  }

  return v5 & 1;
}

void (*sub_21D607E3C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D242600;
}

void *TTRCloudKitMigrationManager.__allocating_init(store:queue:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[5] = 0;
  swift_unknownObjectWeakInit();
  v5 = MEMORY[0x277D84F98];
  v4[6] = MEMORY[0x277D84F98];
  v4[7] = 0;
  v4[8] = v5;
  v4[2] = a1;
  v4[3] = a2;
  return v4;
}

void *TTRCloudKitMigrationManager.init(store:queue:)(uint64_t a1, uint64_t a2)
{
  v2[5] = 0;
  swift_unknownObjectWeakInit();
  v5 = MEMORY[0x277D84F98];
  v2[6] = MEMORY[0x277D84F98];
  v2[7] = 0;
  v2[8] = v5;
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

void sub_21D607F8C(unsigned __int8 *a1, void *a2, NSObject *a3)
{
  v5 = *a1;
  if (qword_280D17E98 != -1)
  {
    swift_once();
  }

  v6 = sub_21DBF84BC();
  __swift_project_value_buffer(v6, qword_27CE5EF68);
  v7 = a2;
  v8 = sub_21DBF84AC();
  v9 = sub_21DBFAEDC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v10 = 138543618;
    *(v10 + 4) = v7;
    *v11 = v7;
    *(v10 + 12) = 2082;
    v13 = v7;
    v14 = sub_21D6079AC(v5);
    v16 = sub_21D0CDFB4(v14, v15, &v17);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_21D0C9000, v8, v9, "TTRCloudKitMigrationManager: Updated migration state {accountID: %{public}@, migrationState: %{public}s}", v10, 0x16u);
    sub_21D0CF7E0(v11, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v10, -1, -1);
  }

  dispatch_group_leave(a3);
}

uint64_t sub_21D608158(void *a1)
{
  v2 = v1;
  v4 = sub_21DBF9D2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF9D5C();
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D17E98 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF84BC();
  __swift_project_value_buffer(v11, qword_27CE5EF68);
  v12 = a1;
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAEDC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = v4;
    v17 = v2;
    v18 = v8;
    v19 = v5;
    v20 = v16;
    *v15 = 138543362;
    *(v15 + 4) = v12;
    *v16 = v12;
    v21 = v12;
    _os_log_impl(&dword_21D0C9000, v13, v14, "TTRCloudKitMigrationManager.migrateAccountToCloudKit: requested migration for accountID: %{public}@", v15, 0xCu);
    sub_21D0CF7E0(v20, &unk_27CE60070, &unk_21DC09550);
    v22 = v20;
    v5 = v19;
    v8 = v18;
    v2 = v17;
    v4 = v28;
    MEMORY[0x223D46520](v22, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  *(v23 + 24) = v12;
  aBlock[4] = sub_21D60BE08;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_6_3;
  v24 = _Block_copy(aBlock);
  v25 = v12;

  sub_21DBF9D4C();
  v30 = MEMORY[0x277D84F90];
  sub_21D0F1D40(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0CD8F0();
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v10, v7, v24);
  _Block_release(v24);
  (*(v5 + 8))(v7, v4);
  (*(v29 + 8))(v10, v8);
}

uint64_t sub_21D608534(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = a2;
  sub_21D609410(v5, 1, sub_21D60C05C, v4);

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a1 + 48);
  *(a1 + 48) = 0x8000000000000000;
  sub_21D4785BC(3, v5, isUniquelyReferenced_nonNull_native);
  *(a1 + 48) = v10;
  swift_endAccess();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(a1 + 40);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(a1, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D608664(void *a1, void *a2, void *a3, void *a4)
{
  v51 = a2;
  v52 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EF88, &unk_21DC1F558);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v49 - v7;
  v9 = sub_21DBF6B1C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v50 = &v49 - v14;
  v15 = sub_21DBF9D8C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a3[3];
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x277D85200], v15, v17);
  v21 = v20;
  v22 = sub_21DBF9DAC();
  (*(v16 + 8))(v19, v15);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v22 = a1;
  if (!a1)
  {
LABEL_5:
    if (qword_280D17E98 == -1)
    {
LABEL_6:
      v25 = sub_21DBF84BC();
      __swift_project_value_buffer(v25, qword_27CE5EF68);
      v26 = v22;
      v27 = v51;
      v28 = v51;
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAEBC();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v54[0] = v32;
        *v31 = 136315394;
        if (v22)
        {
          v33 = [v26 state];
          v34 = sub_21DBFA16C();
          v36 = v35;
        }

        else
        {
          v36 = 0xE300000000000000;
          v34 = 7104878;
        }

        v40 = sub_21D0CDFB4(v34, v36, v54);

        *(v31 + 4) = v40;
        *(v31 + 12) = 2082;
        v41 = sub_21DBFBA7C();
        v43 = sub_21D0CDFB4(v41, v42, v54);

        *(v31 + 14) = v43;
        _os_log_impl(&dword_21D0C9000, v29, v30, "Error determining migration state. {result.state: %s, error: %{public}s}", v31, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D46520](v32, -1, -1);
        MEMORY[0x223D46520](v31, -1, -1);
      }

      v39 = 4;
      goto LABEL_22;
    }

LABEL_26:
    swift_once();
    goto LABEL_6;
  }

  v23 = a1;
  v24 = [v23 state];
  sub_21DBFA16C();

  sub_21DBF6B0C();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_21D0CF7E0(v8, &qword_27CE5EF88, &unk_21DC1F558);
    v22 = a1;
    goto LABEL_5;
  }

  v37 = v50;
  (*(v10 + 32))(v50, v8, v9);
  (*(v10 + 16))(v12, v37, v9);
  v38 = (*(v10 + 88))(v12, v9);
  if (v38 == *MEMORY[0x277D45348] || v38 == *MEMORY[0x277D45338] || v38 == *MEMORY[0x277D45360] || v38 == *MEMORY[0x277D45358] || v38 == *MEMORY[0x277D45330] || v38 == *MEMORY[0x277D45350] || v38 == *MEMORY[0x277D45340])
  {
    (*(v10 + 8))(v37, v9);

    v39 = 3;
  }

  else
  {
    if (v38 != *MEMORY[0x277D45368])
    {
      result = sub_21DBFC63C();
      __break(1u);
      return result;
    }

    (*(v10 + 8))(v37, v9);

    v39 = 5;
  }

LABEL_22:
  v44 = v52;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = a3[6];
  a3[6] = 0x8000000000000000;
  sub_21D4785BC(v39, v44, isUniquelyReferenced_nonNull_native);
  a3[6] = v53;
  swift_endAccess();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v47 = a3[5];
    ObjectType = swift_getObjectType();
    (*(v47 + 8))(a3, ObjectType, v47);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21D608CB0(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_21DBF9D8C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + 24);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5, v7);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    swift_beginAccess();
    v12 = *(v2 + 48);
    if (*(v12 + 16))
    {
      sub_21DBF8E0C();
      v13 = sub_21D17E07C(a1);
      if (v14)
      {
        v15 = *(*(v12 + 56) + v13);
      }

      else
      {
        v15 = 2;
      }
    }

    else
    {
      v15 = 2;
    }

    *a2 = v15;
  }

  else
  {
    __break(1u);
  }
}

void sub_21D608E24(char *a1, void *a2, void *a3, void (*a4)(uint64_t *))
{
  v8 = sub_21DBF9D8C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  v14 = a2[3];
  *v12 = v14;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8, v10);
  v15 = v14;
  LOBYTE(v14) = sub_21DBF9DAC();
  (*(v9 + 8))(v12, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_21D608CB0(a3, v39);
  v16 = sub_21D1220B8();
  v18 = v17;
  LOBYTE(v38) = v13;
  if (v16 == sub_21D1220B8() && v18 == v19)
  {

    goto LABEL_11;
  }

  v20 = sub_21DBFC64C();

  if ((v20 & 1) == 0)
  {
    if (qword_280D17E98 == -1)
    {
LABEL_7:
      v21 = sub_21DBF84BC();
      __swift_project_value_buffer(v21, qword_27CE5EF68);
      v22 = a3;
      v23 = sub_21DBF84AC();
      v24 = sub_21DBFAEDC();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v36 = v26;
        v37 = swift_slowAlloc();
        v39[0] = v37;
        *v25 = 138543618;
        *(v25 + 4) = v22;
        *v26 = v22;
        *(v25 + 12) = 2082;
        LOBYTE(v38) = v13;
        v27 = v22;
        v28 = TTRCloudKitMigrationManager.MigrationState.description.getter();
        v30 = sub_21D0CDFB4(v28, v29, v39);

        *(v25 + 14) = v30;
        _os_log_impl(&dword_21D0C9000, v23, v24, "TTRCloudKitMigrationManager.updateMigrationState: on completion of updated queryServerForMigrationState {accountID: %{public}@, state: %{public}s}", v25, 0x16u);
        v31 = v36;
        sub_21D0CF7E0(v36, &unk_27CE60070, &unk_21DC09550);
        MEMORY[0x223D46520](v31, -1, -1);
        v32 = v37;
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x223D46520](v32, -1, -1);
        MEMORY[0x223D46520](v25, -1, -1);
      }

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = a2[6];
      a2[6] = 0x8000000000000000;
      sub_21D4785BC(v13, v22, isUniquelyReferenced_nonNull_native);
      a2[6] = v38;
      swift_endAccess();
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v34 = a2[5];
        ObjectType = swift_getObjectType();
        (*(v34 + 8))(a2, ObjectType, v34);
        swift_unknownObjectRelease();
      }

      goto LABEL_11;
    }

LABEL_15:
    swift_once();
    goto LABEL_7;
  }

LABEL_11:
  if (a4)
  {
    LOBYTE(v38) = v13;
    a4(&v38);
  }
}

uint64_t sub_21D609214(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(char *))
{
  v9 = sub_21DBF9D8C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a3 + 24);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9, v11);
  v15 = v14;
  LOBYTE(v14) = sub_21DBF9DAC();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    if ([a4 didChooseToMigrate])
    {
      if (a1)
      {
        v17 = [a1 state];
        v18 = sub_21DBFA16C();
        v20 = v19;

        if (v18 == 0x6574656C706D6F63 && v20 == 0xE800000000000000)
        {

LABEL_11:
          v24 = 5;
          v21 = &v24;
          return a5(v21);
        }

        v22 = sub_21DBFC64C();

        if (v22)
        {
          goto LABEL_11;
        }

        goto LABEL_8;
      }
    }

    else if (a1)
    {
LABEL_8:
      v25 = 3;
      v21 = &v25;
      return a5(v21);
    }

    v26 = 4;
    v21 = &v26;
    return a5(v21);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D609410(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_21DBF9D2C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21DBF9D5C();
  v14 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *(v5 + 24);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = v5;
  *(v17 + 40) = a3;
  *(v17 + 48) = a4;
  aBlock[4] = sub_21D60C028;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_28_0;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  sub_21D0D0E78(a3, a4);
  sub_21DBF9D4C();
  v23 = MEMORY[0x277D84F90];
  sub_21D0F1D40(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0CD8F0();
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v22);
}

void sub_21D6096E0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a4;
  v73 = a5;
  v71 = a3;
  v74 = a2;
  v78 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
  MEMORY[0x28223BE20](v5 - 8);
  v76 = &v69 - v6;
  v7 = sub_21DBFAF2C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v75 = (&v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v69 - v11;
  MEMORY[0x28223BE20](v13);
  v77 = &v69 - v14;
  v15 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v16 = sub_21DBFAF3C();

  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = (v8 + 8);
    while (1)
    {
      if (v18 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      v20 = *(v8 + 16);
      v20(v12, v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v18, v7);
      if (sub_21DBFAF1C())
      {
        break;
      }

      ++v18;
      (*v19)(v12, v7);
      if (v17 == v18)
      {
        goto LABEL_6;
      }
    }

    v33 = *(v8 + 32);
    v70 = v7;
    v33(v77, v12, v7);
    v34 = sub_21DBFAEEC();
    v35 = [v34 identifier];

    if (v35)
    {
      sub_21DBFA16C();

      v36 = v76;
      sub_21DBF564C();

      v37 = sub_21DBF56BC();
      v38 = *(v37 - 8);
      if ((*(v38 + 48))(v36, 1, v37) != 1)
      {

        v39 = objc_opt_self();
        v40 = sub_21DBF566C();
        (*(v38 + 8))(v36, v37);
        v76 = [v39 objectIDWithUUID_];

        if (qword_280D17E98 != -1)
        {
          swift_once();
        }

        v41 = sub_21DBF84BC();
        __swift_project_value_buffer(v41, qword_27CE5EF68);
        v42 = v75;
        v43 = v70;
        v20(v75, v77, v70);
        v44 = v78;
        v45 = sub_21DBF84AC();
        v46 = sub_21DBFAEDC();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v78 = v44;
          aBlock = v49;
          v50 = v42;
          v51 = v49;
          *v47 = 136446466;
          sub_21D0F1D40(&qword_27CE5EF80, MEMORY[0x277D459E8], MEMORY[0x277D459F0]);
          v52 = sub_21DBFC5BC();
          v54 = v53;
          v55 = v50;
          v44 = v78;
          v75 = *v19;
          v75(v55, v43);
          v56 = sub_21D0CDFB4(v52, v54, &aBlock);

          *(v47 + 4) = v56;
          *(v47 + 12) = 2114;
          *(v47 + 14) = v44;
          *v48 = v44;
          v57 = v44;
          _os_log_impl(&dword_21D0C9000, v45, v46, "TTRCloudKitMigrationManager.migrateAccountToCloudKitWithoutNotifyingDelegate: looking at {selectedMigrationSet: %{public}s, input: %{public}@}", v47, 0x16u);
          sub_21D0CF7E0(v48, &unk_27CE60070, &unk_21DC09550);
          MEMORY[0x223D46520](v48, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v51);
          MEMORY[0x223D46520](v51, -1, -1);
          MEMORY[0x223D46520](v47, -1, -1);
        }

        else
        {

          v75 = *v19;
          v75(v42, v43);
        }

        v58 = [objc_opt_self() weakSharedInstance];
        v59 = sub_21DBFA12C();
        v83 = sub_21D60A008;
        v84 = 0;
        aBlock = MEMORY[0x277D85DD0];
        v80 = 1107296256;
        v81 = sub_21D182340;
        v82 = &block_descriptor_31_1;
        v60 = _Block_copy(&aBlock);
        v78 = v58;
        v61 = [v58 syncSyncInterfacePerformerWithReason:v59 errorHandler:v60];
        _Block_release(v60);

        if (v61)
        {
          v62 = swift_allocObject();
          v63 = v72;
          v62[2] = v71;
          v62[3] = v63;
          v64 = v73;
          v62[4] = v73;
          v62[5] = v44;
          v65 = v76;
          v62[6] = v76;
          v83 = sub_21D60C03C;
          v84 = v62;
          aBlock = MEMORY[0x277D85DD0];
          v80 = 1107296256;
          v81 = sub_21D55C8BC;
          v82 = &block_descriptor_37_2;
          v66 = _Block_copy(&aBlock);
          v67 = v44;

          sub_21D0D0E78(v63, v64);
          v68 = v65;

          [v61 migrateICloudCalDavToCloudKitWithAccountID:v68 disableCache:0 userInitiated:v74 & 1 completion:v66];

          _Block_release(v66);
          swift_unknownObjectRelease();
          v75(v77, v70);
        }

        else
        {
          v75(v77, v70);
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_6:
  if (qword_280D17E98 != -1)
  {
LABEL_22:
    swift_once();
  }

  v21 = sub_21DBF84BC();
  __swift_project_value_buffer(v21, qword_27CE5EF68);
  v22 = v78;
  sub_21DBF8E0C();
  v23 = sub_21DBF84AC();
  v24 = sub_21DBFAECC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock = v27;
    *v25 = 138412546;
    *(v25 + 4) = v22;
    *v26 = v22;
    *(v25 + 12) = 2080;
    v28 = v22;
    v29 = MEMORY[0x223D42DB0](v16, v7);
    v31 = v30;

    v32 = sub_21D0CDFB4(v29, v31, &aBlock);

    *(v25 + 14) = v32;
    _os_log_impl(&dword_21D0C9000, v23, v24, "Interactor asked to migrate an account that is not inside rem_migrationSets(). Not migrating. {anyAccountID: %@, migrationSets: %s}", v25, 0x16u);
    sub_21D0CF7E0(v26, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v26, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x223D46520](v27, -1, -1);
    MEMORY[0x223D46520](v25, -1, -1);
  }

  else
  {
  }
}

void sub_21D60A008(void *a1)
{
  if (qword_280D17E98 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE5EF68);
  v3 = a1;
  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAECC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_21DBFC74C();
    v9 = sub_21D0CDFB4(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_21D0C9000, oslog, v4, "Unable to get syncPerformer. {error: %s}", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21D60A1A0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v26 = a7;
  v13 = sub_21DBF9D2C();
  v30 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_21DBF9D5C();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a3 + 24);
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a1;
  v18[5] = a2;
  v19 = v26;
  v18[6] = a6;
  v18[7] = v19;
  aBlock[4] = sub_21D60C04C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_43_1;
  v20 = _Block_copy(aBlock);
  sub_21D0D0E78(a4, a5);
  v21 = a1;
  v22 = a2;
  v23 = a6;
  v24 = v19;
  sub_21DBF9D4C();
  v31 = MEMORY[0x277D84F90];
  sub_21D0F1D40(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0CD8F0();
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v17, v15, v20);
  _Block_release(v20);
  (*(v30 + 8))(v15, v13);
  (*(v27 + 8))(v17, v29);
}

void sub_21D60A488(void (*a1)(void *, void *), uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  if (a4)
  {
    if (qword_280D17E98 != -1)
    {
      swift_once();
    }

    v11 = sub_21DBF84BC();
    __swift_project_value_buffer(v11, qword_27CE5EF68);
    v12 = a5;
    v13 = a6;
    v14 = a4;
    v15 = sub_21DBF84AC();
    v16 = sub_21DBFAEBC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v19 = v61;
      *v17 = 138543874;
      *(v17 + 4) = v12;
      *(v17 + 12) = 2114;
      *(v17 + 14) = v13;
      *v18 = v12;
      v18[1] = v13;
      *(v17 + 22) = 2082;
      v20 = v12;
      v21 = v13;
      v22 = sub_21DBFBA7C();
      v24 = sub_21D0CDFB4(v22, v23, &v61);

      *(v17 + 24) = v24;
      _os_log_impl(&dword_21D0C9000, v15, v16, "TTRCloudKitMigrationManager: On completion of migrateICloudCalDavToCloudKit: Error migrating CalDav {input: %{public}@, (ck)accountID: %{public}@, error: %{public}s}", v17, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070, &unk_21DC09550);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x223D46520](v19, -1, -1);
      MEMORY[0x223D46520](v17, -1, -1);
    }

    if (a1)
    {
      v25 = a3;
      v26 = a4;
LABEL_22:
      a1(v25, v26);
    }
  }

  else
  {
    if (a3)
    {
      v27 = qword_280D17E98;
      v28 = a3;
      if (v27 != -1)
      {
        swift_once();
      }

      v29 = sub_21DBF84BC();
      __swift_project_value_buffer(v29, qword_27CE5EF68);
      v30 = v28;
      v31 = a5;
      v32 = a6;
      sub_21D111F98();
      sub_21D111F98();
      v33 = sub_21DBF84AC();
      v34 = sub_21DBFAEDC();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v61 = v60;
        *v35 = 138545154;
        *(v35 + 4) = v31;
        *(v35 + 12) = 2114;
        *(v35 + 14) = v32;
        *v36 = v31;
        v36[1] = v32;
        *(v35 + 22) = 2082;
        v37 = v31;
        v38 = v32;
        v39 = [v30 state];
        v40 = sub_21DBFA16C();
        v42 = v41;

        v43 = sub_21D0CDFB4(v40, v42, &v61);

        *(v35 + 24) = v43;
        *(v35 + 32) = 1024;
        LODWORD(v43) = [v30 isObserver];

        *(v35 + 34) = v43;
        *(v35 + 38) = 2048;
        v44 = [v30 listsMigrated];

        *(v35 + 40) = v44;
        *(v35 + 48) = 2048;
        v45 = [v30 remindersMigrated];

        *(v35 + 50) = v45;
        *(v35 + 58) = 1040;
        *(v35 + 60) = 3;
        *(v35 + 64) = 2048;
        [v30 timeElapsed];
        *(v35 + 66) = v46;
        _os_log_impl(&dword_21D0C9000, v33, v34, "TTRCloudKitMigrationManager: On completion of migrateICloudCalDavToCloudKit: Migration result: {input: %{public}@, (ck)accountID: %{public}@, state: %{public}s, isObserver: %{BOOL}d, listsMigrated: %lu, remindersMigrated: %lu, timeElapsed: %.*f", v35, 0x4Au);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070, &unk_21DC09550);
        swift_arrayDestroy();
        MEMORY[0x223D46520](v36, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v60);
        MEMORY[0x223D46520](v60, -1, -1);
        MEMORY[0x223D46520](v35, -1, -1);

        if (!a1)
        {
          return;
        }
      }

      else
      {

        if (!a1)
        {
          return;
        }
      }

      v25 = a3;
      v26 = 0;
      goto LABEL_22;
    }

    if (qword_280D17E98 != -1)
    {
      swift_once();
    }

    v47 = sub_21DBF84BC();
    __swift_project_value_buffer(v47, qword_27CE5EF68);
    v48 = a5;
    v49 = a6;
    v50 = sub_21DBF84AC();
    v51 = sub_21DBFAEBC();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v61 = v54;
      *v52 = 138543874;
      *(v52 + 4) = v48;
      *(v52 + 12) = 2114;
      *(v52 + 14) = v49;
      *v53 = v48;
      v53[1] = v49;
      *(v52 + 22) = 2082;
      v55 = v48;
      v56 = v49;
      v57 = sub_21DBFBA7C();
      v59 = sub_21D0CDFB4(v57, v58, &v61);

      *(v52 + 24) = v59;
      _os_log_impl(&dword_21D0C9000, v50, v51, "TTRCloudKitMigrationManager: On completion of migrateICloudCalDavToCloudKit: No migration results received {input: %{public}@, (ck)accountID: %{public}@, error: %{public}s}", v52, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070, &unk_21DC09550);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v53, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x223D46520](v54, -1, -1);
      MEMORY[0x223D46520](v52, -1, -1);
    }

    if (a1)
    {
      v25 = 0;
      v26 = 0;
      goto LABEL_22;
    }
  }
}

uint64_t TTRCloudKitMigrationManager.deinit()
{
  sub_21D157444(v0 + 32);

  return v0;
}

uint64_t TTRCloudKitMigrationManager.__deallocating_deinit()
{
  sub_21D157444(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_21D60ABE0(void *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t *), void (*a6)(void, void))
{
  v144 = a6;
  v142 = a1;
  v146[1] = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v10 - 8);
  v129 = &v122 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
  MEMORY[0x28223BE20](v12 - 8);
  v133 = &v122 - v13;
  v14 = sub_21DBF56BC();
  v134 = *(v14 - 8);
  v135 = v14;
  MEMORY[0x28223BE20](v14);
  v136 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_21DBFAF2C();
  v16 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v132 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v131 = &v122 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v122 - v21;
  MEMORY[0x28223BE20](v23);
  v137 = &v122 - v24;
  v145 = sub_21DBF9D8C();
  v25 = *(v145 - 1);
  MEMORY[0x28223BE20](v145);
  v27 = (&v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = swift_allocObject();
  v28[2] = a3;
  v28[3] = a4;
  v30 = v144;
  v29 = v145;
  v28[4] = a5;
  v28[5] = v30;
  v130 = a2;
  v31 = *(a2 + 24);
  *v27 = v31;
  (*(v25 + 104))(v27, *MEMORY[0x277D85200], v29);
  v139 = a3;

  v138 = a4;
  v140 = a5;
  sub_21D0D0E78(a5, v30);
  v32 = v31;
  LOBYTE(v30) = sub_21DBF9DAC();
  (*(v25 + 8))(v27, v145);
  if ((v30 & 1) == 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
LABEL_8:
    v39 = sub_21DBF84BC();
    __swift_project_value_buffer(v39, qword_27CE5EF68);
    v40 = a3;
    v41 = sub_21DBF84AC();
    v42 = sub_21DBFAE9C();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      *(v43 + 4) = v40;
      *v44 = v40;
      v45 = v40;
      _os_log_impl(&dword_21D0C9000, v41, v42, "No migration state available {anyAccountID: %@}", v43, 0xCu);
      sub_21D0CF7E0(v44, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v44, -1, -1);
      MEMORY[0x223D46520](v43, -1, -1);
    }

    LOBYTE(v146[0]) = 2;
    sub_21D608E24(v146, v139, v138, v140);
  }

  v141 = v28;
  v33 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v34 = sub_21DBFAF3C();

  v35 = *(v34 + 16);
  a3 = v142;
  v36 = v143;
  if (!v35)
  {
LABEL_7:

    if (qword_280D17E98 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

  v37 = 0;
  v145 = (v16 + 8);
  while (1)
  {
    if (v37 >= *(v34 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }

    v38 = *(v16 + 16);
    v38(v22, v34 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v37, v36);
    if (sub_21DBFAF1C())
    {
      break;
    }

    ++v37;
    (*v145)(v22, v36);
    if (v35 == v37)
    {
      goto LABEL_7;
    }
  }

  v46 = v137;
  (*(v16 + 32))();
  v47 = sub_21DBFAF0C();
  v48 = [v47 identifier];

  if (v48)
  {
    v128 = sub_21DBFA16C();
    v50 = v49;

    v52 = v131;
    v51 = v132;
    if (qword_280D17E98 != -1)
    {
      swift_once();
    }

    v53 = sub_21DBF84BC();
    v54 = __swift_project_value_buffer(v53, qword_27CE5EF68);
    v55 = v143;
    v38(v52, v46, v143);
    v38(v51, v46, v55);
    v56 = a3;
    v142 = v54;
    v57 = sub_21DBF84AC();
    v58 = sub_21DBFAEDC();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v127 = v50;
      v60 = v59;
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v146[0] = v126;
      *v60 = 136446722;
      v124 = v58;
      v61 = sub_21DBFAEFC();
      v62 = sub_21DBFB9EC();
      v64 = v63;

      v123 = v57;
      v65 = *v145;
      (*v145)(v52, v55);
      v66 = sub_21D0CDFB4(v62, v64, v146);

      *(v60 + 4) = v66;
      *(v60 + 12) = 2082;
      v67 = sub_21DBFAF0C();
      v68 = sub_21DBFB9EC();
      v69 = v51;
      v71 = v70;

      v72 = v55;
      v73 = v65;
      v65(v69, v72);
      v74 = sub_21D0CDFB4(v68, v71, v146);

      *(v60 + 14) = v74;
      *(v60 + 22) = 2114;
      *(v60 + 24) = v56;
      v75 = v125;
      *v125 = v56;
      v76 = v56;
      v77 = v123;
      _os_log_impl(&dword_21D0C9000, v123, v124, "TTRCloudKitMigrationManager.queryServerForMigrationState: looking at {calDAV: %{public}s, parent: %{public}s, input: %{public}@}", v60, 0x20u);
      sub_21D0CF7E0(v75, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v75, -1, -1);
      v78 = v126;
      swift_arrayDestroy();
      MEMORY[0x223D46520](v78, -1, -1);
      v79 = v60;
      v50 = v127;
      MEMORY[0x223D46520](v79, -1, -1);
    }

    else
    {

      v80 = *v145;
      (*v145)(v51, v55);
      v81 = v55;
      v73 = v80;
      v80(v52, v81);
    }

    v82 = v141;
    v84 = v134;
    v83 = v135;
    v85 = v136;
    v86 = v133;
    sub_21DBF564C();
    if ((*(v84 + 48))(v86, 1, v83) == 1)
    {
      sub_21D0CF7E0(v86, &qword_27CE58370, &unk_21DC091F0);
      goto LABEL_23;
    }

    v87 = v50;
    (*(v84 + 32))(v85, v86, v83);
    v88 = *(v130 + 16);
    v89 = objc_opt_self();
    v90 = sub_21DBF566C();
    v91 = [v89 objectIDWithUUID_];

    v146[0] = 0;
    v92 = [v88 fetchAccountWithObjectID:v91 error:v146];

    if (v92)
    {
      v93 = v146[0];
      if ([v92 didFinishMigration])
      {

        LOBYTE(v146[0]) = 5;
        sub_21D608E24(v146, v139, v138, v140);

        goto LABEL_33;
      }

      v102 = *(v130 + 64);
      if (*(v102 + 16) && (sub_21DBF8E0C(), v103 = sub_21D0CEF70(v128, v87), v105 = v104, , (v105 & 1) != 0))
      {
        v106 = *(v102 + 56);
        v107 = sub_21DBF563C();
        v108 = *(v107 - 8);
        v144 = v73;
        v109 = v108;
        v110 = v106 + *(v108 + 72) * v103;
        v85 = v136;
        v111 = v129;
        (*(v108 + 16))(v129, v110, v107);

        (*(v109 + 56))(v111, 0, 1, v107);
        v73 = v144;
        sub_21D0CF7E0(v111, &qword_27CE58D68, &unk_21DC0C060);
LABEL_32:
        v114 = [v92 objectID];
        v115 = swift_allocObject();
        v115[2] = v130;
        v115[3] = v92;
        v115[4] = sub_21D60C06C;
        v115[5] = v82;

        v116 = v92;

        sub_21D609410(v114, 0, sub_21D60C078, v115);

LABEL_33:
        (*(v84 + 8))(v85, v83);
LABEL_34:
        v117 = v137;
      }

      else
      {

        v112 = sub_21DBF563C();
        v113 = v129;
        (*(*(v112 - 8) + 56))(v129, 1, 1, v112);
        sub_21D0CF7E0(v113, &qword_27CE58D68, &unk_21DC0C060);
        if (([v92 didChooseToMigrate] & 1) != 0 || objc_msgSend(v92, sel_didChooseToMigrateLocally))
        {
          goto LABEL_32;
        }

        v119 = v137;
        v120 = sub_21DBFAF0C();
        v121 = [v120 rem_eligibleForAutoCloudKitMigration];

        LOBYTE(v146[0]) = v121;
        sub_21D608E24(v146, v139, v138, v140);

        (*(v84 + 8))(v85, v83);
        v117 = v119;
      }

      v73(v117, v143);
    }

    v94 = v146[0];
    v95 = sub_21DBF52DC();

    swift_willThrow();
    (*(v84 + 8))(v85, v83);
    v50 = v87;
LABEL_23:
    sub_21DBF8E0C();
    v96 = sub_21DBF84AC();
    v97 = sub_21DBFAEBC();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = v50;
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v146[0] = v100;
      *v99 = 136315138;
      v101 = sub_21D0CDFB4(v128, v98, v146);

      *(v99 + 4) = v101;
      _os_log_impl(&dword_21D0C9000, v96, v97, "Unable to get REMAccount for CloudKit account in migration set. Treating as migration error. {parentAccountIdentifier: %s}", v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v100);
      MEMORY[0x223D46520](v100, -1, -1);
      MEMORY[0x223D46520](v99, -1, -1);
    }

    else
    {
    }

    LOBYTE(v146[0]) = 2;
    sub_21D608E24(v146, v139, v138, v140);
    goto LABEL_34;
  }

  result = sub_21D0D0E88(v140, v144);
  __break(1u);
  return result;
}

void sub_21D60BA3C(uint64_t a1)
{
  v1 = sub_21DBFAF2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v18 = &v18 - v6;
  MEMORY[0x28223BE20](v7);
  v19 = &v18 - v8;
  v9 = [objc_opt_self() defaultStore];
  if (v9)
  {
    v10 = v9;
    v11 = sub_21DBFAF3C();

    v12 = *(v11 + 16);
    if (!v12)
    {
LABEL_7:

      return;
    }

    v13 = 0;
    while (v13 < *(v11 + 16))
    {
      (*(v2 + 16))(v4, v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v13, v1);
      if (sub_21DBFAF1C())
      {

        v14 = *(v2 + 32);
        v15 = v18;
        v14(v18, v4, v1);
        v16 = v19;
        v14(v19, v15, v1);
        v17 = sub_21DBFAF0C();
        [v17 rem_isPrimaryAppleAccount];

        (*(v2 + 8))(v16, v1);
        return;
      }

      ++v13;
      (*(v2 + 8))(v4, v1);
      if (v12 == v13)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
}

id sub_21D60BC94()
{
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v1 = result;
    v2 = [result aa_appleAccounts];

    if (!v2)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_27CE5EF90, 0x277CB8F30);
    v3 = sub_21DBFA5EC();

    if (v3 >> 62)
    {
LABEL_19:
      v4 = sub_21DBFBD7C();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    v6 = *MEMORY[0x277CB8A18];
    do
    {
      v7 = v4 != v5;
      if (v4 == v5)
      {
        break;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D44740](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v8 = *(v3 + 8 * v5 + 32);
      }

      v9 = v8;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v10 = [v8 isEnabledForDataclass_];

      ++v5;
    }

    while (!v10);

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRCloudKitMigrationManager.MigrationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_19;
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
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
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

LABEL_19:
  v7 = *a1;
  if (*a1 < 2u)
  {
    return 0;
  }

  v8 = (v7 & 0xFE) + 2147483646;
  if ((v8 & 0x7FFFFFFEu) <= 3)
  {
    return 0;
  }

  return (v8 & 0x7FFFFFFE | v7 & 1u) - 3;
}

uint64_t sub_21D60C0AC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5EF98);
  v1 = __swift_project_value_buffer(v0, qword_27CE5EF98);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRUserDefaultsShowRemindersAsOverdueObserver.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t TTRUserDefaultsShowRemindersAsOverdueObserver.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t TTRUserDefaultsShowRemindersAsOverdueObserver.start(_:)(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v43 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0F0, &qword_21DC0E530);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v38 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EFB0, &qword_21DC1F568);
  v6 = *(v5 - 8);
  v39 = v5;
  v40 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EFB8, &unk_21DC1F570);
  v10 = *(v9 - 8);
  v41 = v9;
  v42 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = objc_opt_self();
  v14 = [v13 daemonUserDefaults];
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65120, &qword_21DC09CC0);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[11] = 0;
  v19[12] = 0;
  v19[9] = v17;
  v19[10] = 0;
  v19[4] = sub_21D60C778;
  v19[5] = v15;
  v19[6] = sub_21D60C780;
  v19[7] = v16;
  v19[8] = sub_21D60C788;
  v20 = v14;
  v21 = [v13 daemonUserDefaults];
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[11] = 0;
  v25[12] = 0;
  v25[9] = v24;
  v25[10] = 0;
  v25[4] = sub_21D60C790;
  v25[5] = v22;
  v25[6] = sub_21D60C798;
  v25[7] = v23;
  v25[8] = sub_21D60C7A0;
  v26 = v21;
  v47 = sub_21D2563F8();
  v46 = sub_21D2563F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A358, &qword_21DC18F00);
  sub_21D0D0F1C(&qword_280D0C480, &qword_27CE5A358, &qword_21DC18F00, MEMORY[0x277CBCD90]);
  sub_21DBF8F9C();
  v27 = [objc_opt_self() mainRunLoop];
  v47 = v27;
  v28 = sub_21DBFBA0C();
  (*(*(v28 - 8) + 56))(v4, 1, 1, v28);
  sub_21D0D2210();
  sub_21D0D0F1C(&qword_280D0C590, &qword_27CE5EFB0, &qword_21DC1F568, MEMORY[0x277CBCC60]);
  sub_21D5A51D8();
  v29 = v39;
  sub_21DBF936C();
  sub_21D60C7A8(v4);

  (*(v40 + 8))(v8, v29);
  v30 = swift_allocObject();
  v31 = v44;
  *(v30 + 16) = v43;
  *(v30 + 24) = v31;
  sub_21D0D0F1C(&qword_280D0C4D0, &qword_27CE5EFB8, &unk_21DC1F570, MEMORY[0x277CBCD60]);

  v32 = v41;
  v33 = sub_21DBF93CC();

  (*(v42 + 8))(v12, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58680, &qword_21DC0C030);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_21DC08D20;
  *(v34 + 32) = v19;
  *(v34 + 88) = v18;
  *(v34 + 56) = v18;
  *(v34 + 64) = v25;
  v35 = v45;
  v36 = *(v45 + 16);
  *(v45 + 16) = v34;
  *(v35 + 24) = v33;
  return sub_21D60C90C(v36);
}

uint64_t sub_21D60C7A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0F0, &qword_21DC0E530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D60C810(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_27CE56AF0 != -1)
  {
    swift_once();
  }

  v3 = sub_21DBF84BC();
  __swift_project_value_buffer(v3, qword_27CE5EF98);
  v4 = sub_21DBF84AC();
  v5 = sub_21DBFAEDC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_21D0C9000, v4, v5, "TTRUserDefaultsShowRemindersAsOverdueObserver: userDefaults changed", v6, 2u);
    MEMORY[0x223D46520](v6, -1, -1);
  }

  return a2();
}

uint64_t sub_21D60C90C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

Swift::Void __swiftcall TTRUserDefaultsShowRemindersAsOverdueObserver.stop()()
{
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_21D60C90C(v1);
}

uint64_t TTRUserDefaultsShowRemindersAsOverdueObserver.__deallocating_deinit()
{
  sub_21D60C90C(*(v0 + 16));

  return swift_deallocClassInstance();
}

double sub_21D60CA00(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_hashtagData);
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_hashtagData + 8);
  v7 = *(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_hashtagData + 16);
  if (v7)
  {
    v13[0] = *(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_hashtagData);
    v13[1] = v5;
    v13[2] = v7;
    if (v4)
    {
      v10[0] = v3 & 1;
      v11 = v2;
      v12 = v4;
      sub_21D60E6E0(v6, v5, v7);
      sub_21D60E6E0(v3, v2, v4);
      sub_21D60E6E0(v6, v5, v7);
      v8 = _s15RemindersUICore22TTRReminderHashtagDataV2eeoiySbAC_ACtFZ_0(v13, v10);

      result = sub_21D60E724(v6, v5, v7);
      if (v8)
      {
        return result;
      }

      goto LABEL_9;
    }

    sub_21D60E6E0(v6, v5, v7);
    sub_21D60E6E0(v3, v2, 0);
    sub_21D60E6E0(v6, v5, v7);

LABEL_8:
    sub_21D60E724(v6, v5, v7);
    sub_21D60E724(v3, v2, v4);
LABEL_9:

    sub_21D60CBE4();
    return result;
  }

  sub_21D60E6E0(*(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_hashtagData), *(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_hashtagData + 8), 0);
  if (v4)
  {
    sub_21D60E6E0(v3, v2, v4);
    goto LABEL_8;
  }

  sub_21D60E6E0(v3, v2, 0);

  return sub_21D60E724(v6, v5, 0);
}

void sub_21D60CBE4()
{
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_hashtagData + 16))
  {
    v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_editingPresenter + 8);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 104);
    v4 = sub_21DBF8E0C();
    v8 = v3(v4, ObjectType, v1);

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *(Strong + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_hashtagsAttributedText);
      *(Strong + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_hashtagsAttributedText) = v8;
      v7 = v8;

      sub_21D639AF0();
      swift_unknownObjectRelease();
    }
  }
}

void sub_21D60CD00(void *a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_descriptionAttributedText;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v1 + v3);
    v7 = v6;
    sub_21D63B6C0(v6);
    swift_unknownObjectRelease();

    v5 = v7;
  }
}

uint64_t (*sub_21D60CD9C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_descriptionAttributedText;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_21D60CE24;
}