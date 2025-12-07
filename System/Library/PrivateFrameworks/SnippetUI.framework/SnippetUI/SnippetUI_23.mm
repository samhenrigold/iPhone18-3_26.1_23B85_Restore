uint64_t sub_26A6D9C04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PasteboardUtility.PasteboardItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A6D9C68(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A6D9CEC(uint64_t a1)
{
  result = sub_26A84EA68();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A6D9D60(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A6D9DA0(uint64_t result, int a2, int a3)
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

uint64_t sub_26A6D9DF8(uint64_t a1)
{
  result = sub_26A84AB98();
  if (v2 <= 0x3F)
  {
    result = sub_26A84A9C8();
    if (v3 <= 0x3F)
    {
      result = sub_26A4EC5B0(319, &qword_28157D7E0, 0x277D755B8);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for DataPasteboardItem(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_26A6D9EC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4200, &unk_26A877100);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = &v48 - v4;
  v50 = type metadata accessor for DataPasteboardItem(0);
  MEMORY[0x28223BE20](v50);
  v49 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0, &qword_26A872080);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v48 - v7;
  v9 = sub_26A84AB98();
  v52 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4208, &qword_26A877110);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v48 - v13;
  v15 = sub_26A84A9C8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v48 - v20;
  sub_26A5136A0(a1, &v56);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
    v22 = *(v16 + 32);
    v22(v21, v14, v15);
    v23 = sub_26A64E5D4();
    if (v24 >> 60 != 15)
    {
      sub_26A54D2B8(v23, v24);
      v31 = v53;
      v22(v53, v21, v15);
      v33 = type metadata accessor for PasteboardUtility.PasteboardItem(0);
      goto LABEL_8;
    }

    v25 = sub_26A851E98();
    LOBYTE(v46) = 2;
    sub_26A7B7B20(v25, 1, "SnippetUI/PasteboardUtility.swift", 33, 2, 71, "pasteboardItem(for:)", 20, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
    sub_26A4EC5B0(0, &qword_2803B1C40, 0x277CCA898);
    (*(v16 + 16))(v18, v21, v15);
    v26 = sub_26A851F68();
    v27 = [v26 string];

    v28 = sub_26A8517B8();
    v30 = v29;

    (*(v16 + 8))(v21, v15);
    v31 = v53;
    *v53 = v28;
    v31[1] = v30;
    goto LABEL_6;
  }

  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  sub_26A4DBD10(v14, &qword_2803B4208, &qword_26A877110);
  sub_26A5136A0(a1, &v56);
  if (swift_dynamicCast())
  {
    v32 = v55;
    v31 = v53;
    *v53 = v54;
    v31[1] = v32;
LABEL_6:
    v33 = type metadata accessor for PasteboardUtility.PasteboardItem(0);
    goto LABEL_8;
  }

  sub_26A5136A0(a1, &v56);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
    v38 = *(v52 + 32);
    v38(v11, v8, v9);
    v39 = v53;
    v38(v53, v11, v9);
    v33 = type metadata accessor for PasteboardUtility.PasteboardItem(0);
    swift_storeEnumTagMultiPayload();
    v34 = v39;
    goto LABEL_9;
  }

  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  sub_26A4DBD10(v8, &qword_2803AF0D0, &qword_26A872080);
  sub_26A5136A0(a1, &v56);
  sub_26A4EC5B0(0, &qword_28157D7E0, 0x277D755B8);
  if (swift_dynamicCast())
  {
    v31 = v53;
    *v53 = v54;
    v33 = type metadata accessor for PasteboardUtility.PasteboardItem(0);
  }

  else
  {
    sub_26A5136A0(a1, &v56);
    v41 = v50;
    v40 = v51;
    if (!swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v40, 1, 1, v41);
      sub_26A4DBD10(v40, &qword_2803B4200, &unk_26A877100);
      v45 = sub_26A851E98();
      LOBYTE(v46) = 2;
      sub_26A7B7CFC(v45, 1, "SnippetUI/PasteboardUtility.swift", 33, 2, 99, "pasteboardItem(for:)", 20, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
      v36 = type metadata accessor for PasteboardUtility.PasteboardItem(0);
      v34 = v53;
      v35 = 1;
      return __swift_storeEnumTagSinglePayload(v34, v35, 1, v36);
    }

    __swift_storeEnumTagSinglePayload(v40, 0, 1, v41);
    v42 = v40;
    v43 = v49;
    sub_26A6DA5B4(v42, v49, type metadata accessor for DataPasteboardItem);
    v44 = v43;
    v31 = v53;
    sub_26A6DA5B4(v44, v53, type metadata accessor for DataPasteboardItem);
    v33 = type metadata accessor for PasteboardUtility.PasteboardItem(0);
  }

LABEL_8:
  swift_storeEnumTagMultiPayload();
  v34 = v31;
LABEL_9:
  v35 = 0;
  v36 = v33;
  return __swift_storeEnumTagSinglePayload(v34, v35, 1, v36);
}

uint64_t sub_26A6DA5B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_46();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_26A6DA614(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_8_51()
{

  return swift_getEnumCaseMultiPayload();
}

BOOL sub_26A6DA6FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v9 - v3;
  v5 = [v0 thumbnail];
  if (v5)
  {
    RFVisualProperty.asVisualProperty()();

    v6 = sub_26A84BD28();
    v7 = 0;
  }

  else
  {
    v6 = sub_26A84BD28();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v7, 1, v6);
  sub_26A4E2544(v4, &qword_2803AAD50, &unk_26A857890);
  return v5 != 0;
}

id sub_26A6DA7E4@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 text_1];
  if (v4)
  {
    v5 = v4;
    RFTextProperty.asPartialText()(v106);
    v6 = [v1 text_2];
    if (v6)
    {
      v7 = v6;
      *(&v104 + 1) = &type metadata for PartialText;
      v105 = &protocol witness table for PartialText;
      v103[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v103[0] + 16);
    }

    else
    {
      v105 = 0;
      *v103 = 0u;
      v104 = 0u;
    }

    v10 = sub_26A537584(v2);
    if (v10)
    {
      sub_26A51B744(v10, __dst);
      sub_26A54AAEC();
      v10 = sub_26A851248();
      v11 = &protocol witness table for AnyView;
      v12 = MEMORY[0x277CE11C8];
    }

    else
    {
      v12 = 0;
      v11 = 0;
      v102[2] = 0;
      v102[1] = 0;
    }

    v102[0] = v10;
    v102[3] = v12;
    v102[4] = v11;
    v13 = [v2 text_4];
    if (v13)
    {
      v14 = v13;
      *(&v100 + 1) = &type metadata for PartialText;
      v101 = &protocol witness table for PartialText;
      v99[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v99[0] + 16);
    }

    else
    {
      v101 = 0;
      *v99 = 0u;
      v100 = 0u;
    }

    v15 = [v2 thumbnail];
    if (v15)
    {
      v16 = v15;
      *(&v97 + 1) = sub_26A84BD28();
      v98 = &protocol witness table for VisualProperty;
      __swift_allocate_boxed_opaque_existential_1(v96);
      RFVisualProperty.asVisualProperty()();
    }

    else
    {
      v98 = 0;
      *v96 = 0u;
      v97 = 0u;
    }

    if (qword_2803A89D0 != -1)
    {
      swift_once();
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADC8, &qword_26A85B990);
    v18 = __swift_project_value_buffer(v17, qword_2803D1900);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908, &qword_26A864570);
    v20 = &a1[*(v19 + 32)];
    sub_26A4EA070(v18, v20, &qword_2803AADC8, &qword_26A85B990);
    sub_26A6AEE74(__src);
    memcpy(a1, __src, 0xBFuLL);
    sub_26A5375E4(&v20[*(v17 + 36)], &a1[*(v19 + 28)]);
    v21 = type metadata accessor for SimpleItemReverseRichView(0);
    v22 = v21[5];
    *&a1[v22] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
    swift_storeEnumTagMultiPayload();
    v23 = v21[6];
    *&a1[v23] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
    swift_storeEnumTagMultiPayload();
    v24 = &a1[v21[7]];
    *v24 = swift_getKeyPath();
    v24[8] = 0;
    v25 = memcpy(__dst, v106, 0xFAuLL);
    OUTLINED_FUNCTION_1_75(v25, v26, v27, v28, v29, v30, v31, v32, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93[0]);
    sub_26A4EC458(__dst, &v61);
    sub_26A4EC4B4();
    *&a1[v21[8]] = sub_26A851248();
    sub_26A4EA070(v103, v93, &qword_2803A91B8, &qword_26A8575C0);
    if (v94)
    {
      __swift_project_boxed_opaque_existential_1(v93, v94);
      v33 = OUTLINED_FUNCTION_16_5();
      v35 = v34(v33);
      __swift_destroy_boxed_opaque_existential_1(v93);
    }

    else
    {
      sub_26A4E2544(v93, &qword_2803A91B8, &qword_26A8575C0);
      v35 = 0;
    }

    *&a1[v21[9]] = v35;
    sub_26A4EA070(v102, v93, &qword_2803A91B8, &qword_26A8575C0);
    if (v94)
    {
      __swift_project_boxed_opaque_existential_1(v93, v94);
      v36 = OUTLINED_FUNCTION_16_5();
      v38 = v37(v36);
      __swift_destroy_boxed_opaque_existential_1(v93);
    }

    else
    {
      sub_26A4E2544(v93, &qword_2803A91B8, &qword_26A8575C0);
      v38 = 0;
    }

    *&a1[v21[10]] = v38;
    sub_26A4EA070(v99, v93, &qword_2803A91B8, &qword_26A8575C0);
    if (v94)
    {
      __swift_project_boxed_opaque_existential_1(v93, v94);
      v39 = OUTLINED_FUNCTION_16_5();
      v41 = v40(v39);
      __swift_destroy_boxed_opaque_existential_1(v93);
    }

    else
    {
      sub_26A4E2544(v93, &qword_2803A91B8, &qword_26A8575C0);
      v41 = 0;
    }

    *&a1[v21[11]] = v41;
    v42 = sub_26A4EA070(v96, &v61, &qword_2803A91B8, &qword_26A8575C0);
    if (v64)
    {
      __swift_project_boxed_opaque_existential_1(&v61, v64);
      v50 = OUTLINED_FUNCTION_16_5();
      v52 = v51(v50);

      OUTLINED_FUNCTION_1_75(v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93[0]);
      sub_26A4EC508(v93);
      OUTLINED_FUNCTION_3_29(v96);
      OUTLINED_FUNCTION_3_29(v99);
      OUTLINED_FUNCTION_3_29(v102);
      OUTLINED_FUNCTION_3_29(v103);
      result = __swift_destroy_boxed_opaque_existential_1(&v61);
    }

    else
    {
      OUTLINED_FUNCTION_1_75(v42, v43, v44, v45, v46, v47, v48, v49, v61, v62, v63, 0, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93[0]);
      sub_26A4EC508(v93);

      OUTLINED_FUNCTION_2_8(v96);
      OUTLINED_FUNCTION_2_8(v99);
      OUTLINED_FUNCTION_2_8(v102);
      OUTLINED_FUNCTION_2_8(v103);
      result = OUTLINED_FUNCTION_2_8(&v61);
      v52 = 0;
    }

    *&a1[v21[12]] = v52;
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v8 = v1;
    *(v8 + 8) = &unk_287B138F8;
    *(v8 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  return result;
}

unint64_t sub_26A6DAE70()
{
  result = qword_2803B4220;
  if (!qword_2803B4220)
  {
    type metadata accessor for SimpleItemReverseRichView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4220);
  }

  return result;
}

void *OUTLINED_FUNCTION_1_75(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x3A8], 0xFAuLL);
}

uint64_t CompositionParameter.init(thumbnail:tokens:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  if (qword_2803A9150 != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4228, &qword_26A877220);
  v11 = __swift_project_value_buffer(v10, qword_2803D30D0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4230, &unk_26A877228);
  v13 = &a6[*(v12 + 32)];
  sub_26A4EA070(v11, v13, &qword_2803B4228, &qword_26A877220);
  sub_26A6AEE74(__src);
  memcpy(a6, __src, 0xBFuLL);
  sub_26A6DBD28(&v13[*(v10 + 36)], &a6[*(v12 + 28)], v14);
  sub_26A4EA070(a1, v23, &qword_2803A91B8, &qword_26A8575C0);
  v15 = v24;
  if (v24)
  {
    v16 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v17 = (*(v16 + 8))(v15, v16);
    sub_26A4E2544(a1, &qword_2803A91B8, &qword_26A8575C0);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    sub_26A4E2544(a1, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4E2544(v23, &qword_2803A91B8, &qword_26A8575C0);
    v17 = 0;
  }

  result = type metadata accessor for CompositionParameter(0, a4, a5, v18);
  *&a6[*(result + 36)] = v17;
  v20 = &a6[*(result + 40)];
  *v20 = a2;
  *(v20 + 1) = a3;
  return result;
}

uint64_t sub_26A6DB0D4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4230, &unk_26A877228) + 28);

  return sub_26A6DBD28(v3, a1, v4);
}

double sub_26A6DB124@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_26A84B1D8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for CompositionParameterConstants(0);
  MEMORY[0x28223BE20](v32);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0, &unk_26A85D4D0);
  MEMORY[0x28223BE20](v11);
  v13 = (v30 - v12);
  v14 = *(v2 + *(a1 + 36));
  if (v14)
  {
    v31 = a2;
    sub_26A6DB0D4(v10);
    (*(v6 + 16))(v8, &v10[*(v32 + 20)], v5);

    sub_26A6DBF04(v10, v15);
    KeyPath = swift_getKeyPath();
    v30[1] = a1;
    v17 = KeyPath;
    v18 = (v13 + *(v11 + 36));
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40) + 28);
    (*(v6 + 32))(v18 + v19, v8, v5);
    __swift_storeEnumTagSinglePayload(v18 + v19, 0, 1, v5);
    *v18 = v17;
    *v13 = v14;
    sub_26A6DB0D4(v10);
    v20 = v32;
    sub_26A4F20CC(&v10[*(v32 + 24)], &v33);

    sub_26A6DBF04(v10, v21);
    sub_26A607C38();
    v23 = v22;
    sub_26A57E57C(&v33);
    sub_26A4E2544(v13, &qword_2803AAFA0, &unk_26A85D4D0);
    sub_26A6DB0D4(v10);
    v24 = *&v10[*(v20 + 36)];

    sub_26A6DBF04(v10, v25);
    v26 = swift_getKeyPath();
    *&v36 = v23;
    *(&v36 + 1) = v26;
    v37 = v24;
    v38 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B42E0, &unk_26A8772D0);
    sub_26A6DBFF8();
    sub_26A84FDF8();

    a2 = v31;
  }

  else
  {
    v36 = xmmword_26A875620;
    v37 = 0;
    v38 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B42E0, &unk_26A8772D0);
    sub_26A6DBFF8();
    sub_26A84FDF8();
  }

  result = *&v33;
  v28 = v34;
  v29 = v35;
  *a2 = v33;
  *(a2 + 16) = v28;
  *(a2 + 24) = v29;
  return result;
}

uint64_t sub_26A6DB4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for CompositionParameterConstants(0);
  MEMORY[0x28223BE20](v4);
  v6 = &WitnessTable - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_2803B4238, &qword_26A877238);
  v20 = *(a1 + 16);
  swift_getTupleTypeMetadata3();
  sub_26A851528();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_26A851128();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &WitnessTable - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &WitnessTable - v12;
  sub_26A84FA78();
  v14 = v21;
  sub_26A6DB0D4(v6);
  sub_26A6DBF04(v6, v15);
  v16 = *(a1 + 24);
  v23 = v20;
  v24 = v16;
  v25 = v14;
  sub_26A851118();
  swift_getWitnessTable();
  sub_26A80757C();
  v17 = *(v8 + 8);
  v17(v10, v7);
  sub_26A80757C();
  return (v17)(v13, v7);
}

uint64_t sub_26A6DB760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a3;
  v40 = a4;
  v39 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v38 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v37 = &v31 - v9;
  v10 = type metadata accessor for CompositionParameterConstants(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  v18 = type metadata accessor for CompositionParameter(0, a2, a3, v17);
  sub_26A6DB124(v18, __dst);
  v34 = __dst[0];
  v35 = *&__dst[1];
  v33 = BYTE8(__dst[1]);
  sub_26A6DB0D4(v16);
  sub_26A6DBF04(v16, v19);
  sub_26A6DB0D4(v13);
  sub_26A6DBF04(v13, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B42C8, &qword_26A8772C8);
  sub_26A6DBF6C();
  sub_26A6D63AC(v21);
  sub_26A84F028();
  LOBYTE(v21) = v33;
  LOBYTE(v50[0]) = v33;
  *(v49 + 7) = *&v49[7];
  *(&v49[2] + 7) = *&v49[9];
  *(&v49[4] + 7) = *&v49[11];
  sub_26A6DB0D4(v16);
  v22 = &v16[*(v11 + 40)];
  v23 = *v22;
  v31 = *(v22 + 1);
  v32 = v23;
  sub_26A6DBF04(v16, v31);
  v24 = sub_26A850248();
  v50[0] = v34;
  *(&v50[1] + 9) = *v49;
  v47[0] = 0;
  *&v50[1] = v35;
  BYTE8(v50[1]) = v21;
  *(&v50[2] + 9) = *&v49[2];
  *(&v50[3] + 9) = *&v49[4];
  *(&v50[4] + 1) = *(&v49[5] + 7);
  LOBYTE(v50[5]) = v24;
  *(&v50[5] + 1) = __dst[0];
  DWORD1(v50[5]) = *(__dst + 3);
  *(&v50[5] + 8) = v32;
  *(&v50[6] + 8) = v31;
  BYTE8(v50[7]) = 0;
  v25 = v38;
  (*(a1 + *(v18 + 40)))();
  v26 = v36;
  v27 = v37;
  sub_26A80757C();
  v28 = v39;
  v29 = *(v39 + 8);
  v29(v25, a2);
  memcpy(v47, v50, 0x79uLL);
  v48[0] = v47;
  (*(v28 + 16))(v25, v27, a2);
  v45 = 0;
  v46 = 1;
  v48[1] = v25;
  v48[2] = &v45;
  sub_26A4EA070(v50, __dst, qword_2803B4238, &qword_26A877238);
  v44[0] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803B4238, &qword_26A877238);
  v44[1] = a2;
  v44[2] = MEMORY[0x277CE1180];
  v41 = sub_26A6DC0E8();
  v42 = v26;
  v43 = MEMORY[0x277CE1170];
  sub_26A74E564(v48, 3, v44);
  sub_26A4E2544(v50, qword_2803B4238, &qword_26A877238);
  v29(v27, a2);
  v29(v25, a2);
  memcpy(__dst, v47, 0x79uLL);
  return sub_26A4E2544(__dst, qword_2803B4238, &qword_26A877238);
}

uint64_t CompositionParameter.body.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_2803B4238, &qword_26A877238);
  swift_getTupleTypeMetadata3();
  sub_26A851528();
  OUTLINED_FUNCTION_1_27();
  swift_getWitnessTable();
  v2 = sub_26A851128();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  sub_26A6DB4E8(a1, v5);
  OUTLINED_FUNCTION_5_57();
  swift_getWitnessTable();
  sub_26A80757C();
  v9 = *(v3 + 8);
  v9(v5, v2);
  sub_26A80757C();
  return (v9)(v8, v2);
}

uint64_t sub_26A6DBD28(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for CompositionParameterConstants(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_26A6DBDE8(uint64_t a1, __n128 a2)
{
  sub_26A6DBEAC(319, a2);
  if (v2 <= 0x3F)
  {
    sub_26A4E5E18();
    if (v3 <= 0x3F)
    {
      sub_26A5046B4();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A6DBEAC(uint64_t a1, __n128 a2)
{
  if (!qword_2803B42C0)
  {
    v3 = type metadata accessor for CompositionParameterConstants(255);
    v6 = type metadata accessor for EnvironmentConstant(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_2803B42C0);
    }
  }
}

uint64_t sub_26A6DBF04(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for CompositionParameterConstants(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26A6DBF6C()
{
  result = qword_2803B42D0;
  if (!qword_2803B42D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B42C8, &qword_26A8772C8);
    sub_26A6DBFF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B42D0);
  }

  return result;
}

unint64_t sub_26A6DBFF8()
{
  result = qword_2803B42D8;
  if (!qword_2803B42D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B42E0, &unk_26A8772D0);
    sub_26A6DC084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B42D8);
  }

  return result;
}

unint64_t sub_26A6DC084()
{
  result = qword_2803ABF30;
  if (!qword_2803ABF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABF38, &unk_26A873D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABF30);
  }

  return result;
}

unint64_t sub_26A6DC0E8()
{
  result = qword_2803B42E8;
  if (!qword_2803B42E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_2803B4238, &qword_26A877238);
    sub_26A6DC174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B42E8);
  }

  return result;
}

unint64_t sub_26A6DC174()
{
  result = qword_2803B42F0;
  if (!qword_2803B42F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B42F8, &unk_26A8772E0);
    sub_26A6DBF6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B42F0);
  }

  return result;
}

uint64_t sub_26A6DC200@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - v12;
  sub_26A4DBD68(v2, &v16 - v12, &unk_2803A9190, &unk_26A854C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v13, a1, &qword_2803A91C8, &unk_26A856820);
  }

  sub_26A851EA8();
  v15 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v10, v4);
}

uint64_t sub_26A6DC3C0()
{
  v2 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v6 = OUTLINED_FUNCTION_5_59();
  v7 = v0 + *(type metadata accessor for SectionHeaderRichView(v6) + 20);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v8, 0);
    (*(v4 + 8))(v1, v2);
    return v11;
  }

  return v8;
}

uint64_t sub_26A6DC4F8@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_5_59();
  v13 = type metadata accessor for SectionHeaderRichView(v12);
  sub_26A4DBD68(v1 + *(v13 + 24), v2, &qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    return (*(v14 + 32))(a1, v2);
  }

  else
  {
    sub_26A851EA8();
    v16 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v10, v4);
  }
}

uint64_t SectionHeaderRichView.text1.getter()
{
  type metadata accessor for SectionHeaderRichView(0);
}

uint64_t SectionHeaderRichView.thumbnail.getter()
{
  type metadata accessor for SectionHeaderRichView(0);
}

uint64_t sub_26A6DC758()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SectionHeaderRichView(0) + 20);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v6, 0);
    (*(v2 + 8))(v4, v1);
  }

  return sub_26A5A03E0();
}

uint64_t SectionHeaderRichView.init(text1:thumbnail:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SectionHeaderRichView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = (v9 - v8);
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v11 = v10 + v6[5];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = v6[6];
  *(v10 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = OUTLINED_FUNCTION_16_5();
  *(v10 + v6[7]) = v14(v13);
  sub_26A4DBD68(a2, v19, &qword_2803A91B8, &qword_26A8575C0);
  if (v20)
  {
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v15 = OUTLINED_FUNCTION_16_5();
    v17 = v16(v15);
    sub_26A4DBD10(a2, &qword_2803A91B8, &qword_26A8575C0);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    sub_26A4DBD10(a2, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(v19, &qword_2803A91B8, &qword_26A8575C0);
    v17 = 0;
  }

  *(v10 + v6[8]) = v17;
  sub_26A6DCAB0(v10, a3);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A6DCAB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SectionHeaderRichView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SectionHeaderRichView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  OUTLINED_FUNCTION_79(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_59();
  v7 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_41();
  v13 = v12 - v11;
  sub_26A84C4F8();
  v14 = TextProperty.asAnyView()();
  (*(v9 + 8))(v13, v7);
  v22[3] = MEMORY[0x277CE11C8];
  v22[4] = &protocol witness table for AnyView;
  v22[0] = v14;
  sub_26A84C518();
  v15 = sub_26A84BD28();
  if (__swift_getEnumTagSinglePayload(v2, 1, v15) == 1)
  {
    sub_26A4DBD10(v2, &qword_2803AAD50, &unk_26A857890);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v21[1] = 0;
    v21[2] = 0;
  }

  else
  {
    v16 = VisualProperty.asAnyView()();
    (*(*(v15 - 8) + 8))(v2, v15);
    v18 = &protocol witness table for AnyView;
    v17 = MEMORY[0x277CE11C8];
  }

  v21[0] = v16;
  v21[3] = v17;
  v21[4] = v18;
  SectionHeaderRichView.init(text1:thumbnail:)(v22, v21, a2);
  sub_26A84C528();
  OUTLINED_FUNCTION_46();
  return (*(v19 + 8))(a1);
}

uint64_t SectionHeaderRichView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_26A6DCE38(a1);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_26A68CED4;
  *(v2 + 24) = 0;
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4300, &unk_26A877410) + 36);
  *(v3 + 16) = swift_getKeyPath();
  *(v3 + 24) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v5 = *(v4 + 40);
  *(v3 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v6 = v3 + *(v4 + 44);
  result = swift_getKeyPath();
  *v6 = result;
  *(v6 + 8) = 0;
  *v3 = sub_26A4D1F7C;
  *(v3 + 8) = v2;
  return result;
}

uint64_t sub_26A6DCE38@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for SectionHeaderRichView.Constants(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4358, &qword_26A877508);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  sub_26A6DC200(v12);
  sub_26A6DC758();
  v16 = &v9[*(v7 + 44)];
  v17 = *v16;
  v22 = *(v16 + 1);
  v23 = v17;
  sub_26A6DDD18(v9);
  v26 = v22;
  v25 = v23;
  v27 = 0;
  sub_26A6DC3C0();
  sub_26A6DC4F8(v5);
  v18 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v18);
  v24 = v1;
  sub_26A4CCADC();
  v15[*(v13 + 36)] = 61;
  sub_26A6DDC40();
  sub_26A850AF8();
  sub_26A4DBD10(v15, &qword_2803B4358, &qword_26A877508);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4350, &qword_26A877500) + 36)) = 0;
  v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4340, &qword_26A8774F8) + 36);
  sub_26A8513E8();
  v20 = sub_26A850248();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF440, &unk_26A877510);
  *(v19 + *(result + 36)) = v20;
  return result;
}

uint64_t sub_26A6DD120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_26A84FA78();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4370, &unk_26A877520);
  return sub_26A6DD174(a1, a2 + *(v4 + 44));
}

uint64_t sub_26A6DD174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SectionHeaderRichView.Constants(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3568, &unk_26A874050);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v12);
  v14 = &v26[-v13 - 8];
  sub_26A6DD454(&v26[-v13 - 8]);
  v15 = sub_26A850298();
  sub_26A6DC758();
  sub_26A6DDD18(v7);
  sub_26A84ED48();
  v16 = &v14[*(v9 + 44)];
  *v16 = v15;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  v21 = *(a1 + *(type metadata accessor for SectionHeaderRichView(0) + 28));
  sub_26A6DC758();
  sub_26A4DBD68(&v7[*(v5 + 40)], v26, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6DDD18(v7);
  sub_26A4DBD68(v26, v29, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v30);
  sub_26A4DBD10(v26, &qword_2803AA880, &unk_26A8567F0);
  memcpy(v28, v30, sizeof(v28));
  v29[11] = 0;
  v29[10] = sub_26A80A810;
  v27 = v21;
  sub_26A4DBD68(v14, v11, &qword_2803B3568, &unk_26A874050);
  sub_26A4DBD68(&v27, v26, &qword_2803A99A0, &unk_26A856800);
  sub_26A4DBD68(v11, a2, &qword_2803B3568, &unk_26A874050);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4378, &qword_26A877530);
  sub_26A4DBD68(v26, a2 + *(v22 + 48), &qword_2803A99A0, &unk_26A856800);
  v23 = a2 + *(v22 + 64);
  *v23 = 0;
  *(v23 + 8) = 1;

  sub_26A4DBD10(&v27, &qword_2803A99A0, &unk_26A856800);
  sub_26A4DBD10(v14, &qword_2803B3568, &unk_26A874050);
  sub_26A4DBD10(v26, &qword_2803A99A0, &unk_26A856800);
  return sub_26A4DBD10(v11, &qword_2803B3568, &unk_26A874050);
}

uint64_t sub_26A6DD454@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = sub_26A84B1D8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SectionHeaderRichView.Constants(0);
  MEMORY[0x28223BE20](v6);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0, &unk_26A85D4D0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v28 - v12);
  v14 = *(v1 + *(type metadata accessor for SectionHeaderRichView(0) + 32));
  if (v14)
  {
    sub_26A6DC758();
    (*(v3 + 16))(v5, &v10[v6[5]], v2);
    sub_26A6DDD18(v10);
    KeyPath = swift_getKeyPath();
    v15 = (v13 + *(v11 + 36));
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40) + 28);
    (*(v3 + 32))(v15 + v16, v5, v2);
    __swift_storeEnumTagSinglePayload(v15 + v16, 0, 1, v2);
    *v15 = KeyPath;
    *v13 = v14;

    sub_26A6DC758();
    v17 = v10[v6[6]];
    sub_26A6DDD18(v10);
    v18 = v30;
    sub_26A6DC758();
    LOBYTE(v16) = *(v18 + v6[7]);
    sub_26A6DDD18(v18);
    v19 = swift_getKeyPath();
    v20 = v31;
    sub_26A4DBDB4(v13, v31, &qword_2803AAFA0, &unk_26A85D4D0);
    v21 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB308, &qword_26A8584C0) + 36);
    *v21 = v19;
    *(v21 + 8) = v17;
    v22 = swift_getKeyPath();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2E0, &qword_26A8583F0);
    v24 = v20 + *(v23 + 36);
    *v24 = v22;
    *(v24 + 8) = v16;
    return __swift_storeEnumTagSinglePayload(v20, 0, 1, v23);
  }

  else
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2E0, &qword_26A8583F0);
    v27 = v31;

    return __swift_storeEnumTagSinglePayload(v27, 1, 1, v26);
  }
}

uint64_t sub_26A6DD7C8(uint64_t a1)
{
  result = sub_26A6DE9A8(&qword_2803B4308, MEMORY[0x277D632F0], MEMORY[0x277D632E8]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A6DD848(uint64_t a1)
{
  sub_26A4D27F4(319);
  if (v1 <= 0x3F)
  {
    sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
    if (v2 <= 0x3F)
    {
      sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
      if (v3 <= 0x3F)
      {
        sub_26A6DEAE8(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_26A6DD958()
{
  result = qword_2803B4320;
  if (!qword_2803B4320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4300, &unk_26A877410);
    sub_26A6DDA10();
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8, &qword_26A8575D0, &unk_26A869CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4320);
  }

  return result;
}

unint64_t sub_26A6DDA10()
{
  result = qword_2803B4328;
  if (!qword_2803B4328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4330, &qword_26A8774F0);
    sub_26A6DDA94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4328);
  }

  return result;
}

unint64_t sub_26A6DDA94()
{
  result = qword_2803B4338;
  if (!qword_2803B4338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4340, &qword_26A8774F8);
    sub_26A6DDB4C();
    sub_26A4DBCC8(&qword_2803AF468, &qword_2803AF440, &unk_26A877510, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4338);
  }

  return result;
}

unint64_t sub_26A6DDB4C()
{
  result = qword_2803B4348;
  if (!qword_2803B4348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4350, &qword_26A877500);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4358, &qword_26A877508);
    sub_26A6DDC40();
    swift_getOpaqueTypeConformance2();
    sub_26A4DBCC8(&qword_2803AE3F8, &qword_2803AE400, &qword_26A862A00, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4348);
  }

  return result;
}

unint64_t sub_26A6DDC40()
{
  result = qword_2803B4360;
  if (!qword_2803B4360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4358, &qword_26A877508);
    sub_26A4DBCC8(&qword_2803B4368, &qword_2803A99F0, &qword_26A855900, &protocol conformance descriptor for ComponentWithAction<A>);
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4360);
  }

  return result;
}

uint64_t sub_26A6DDD18(uint64_t a1)
{
  v2 = type metadata accessor for SectionHeaderRichView.Constants(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_26A6DDDB4(__n128 a1, __n128 a2, uint64_t a3, uint64_t *a4)
{
  sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v6 = OUTLINED_FUNCTION_6_50();
  v7 = type metadata accessor for SectionHeaderRichView.Constants(v6);
  __swift_allocate_value_buffer(v7, a4);
  v8 = __swift_project_value_buffer(v7, a4);
  v9 = OUTLINED_FUNCTION_13_32();
  v10(v9);
  if (qword_2803A9050 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(qword_2803D28F0, v8 + v7[8], &qword_2803AA880, &unk_26A8567F0);
  v11 = OUTLINED_FUNCTION_3_64(0x4024000000000000);
  v12(v11);
  *(v8 + v7[6]) = 0;
  *(v8 + v7[7]) = 1;
  v13 = (v8 + v7[9]);
  result = a2;
  *v13 = a1;
  v13[1] = a2;
  return result;
}

double sub_26A6DDF18()
{
  sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_41();
  v1 = OUTLINED_FUNCTION_6_50();
  v2 = type metadata accessor for SectionHeaderRichView.Constants(v1);
  __swift_allocate_value_buffer(v2, qword_2803D2190);
  v3 = __swift_project_value_buffer(v2, qword_2803D2190);
  v4 = OUTLINED_FUNCTION_13_32();
  v5(v4);
  if (qword_28157E6C0 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2815888E8, v3 + v2[8], &qword_2803AA880, &unk_26A8567F0);
  v6 = OUTLINED_FUNCTION_3_64(0x4010000000000000);
  v7(v6);
  *(v3 + v2[6]) = 1;
  *(v3 + v2[7]) = 0;
  v8 = (v3 + v2[9]);
  result = 10.0;
  *v8 = xmmword_26A877350;
  v8[1] = xmmword_26A877360;
  return result;
}

uint64_t sub_26A6DE084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_2803A8D70 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(a1, qword_2803D2160);

  return sub_26A6DEB38(v4, a2);
}

uint64_t sub_26A6DE16C@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a5@<X8>)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(a1, a3);
  return sub_26A6DEB38(v8, a5);
}

uint64_t sub_26A6DE1D4()
{
  v59 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v55 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v54 = (v4 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  v6 = OUTLINED_FUNCTION_79(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  OUTLINED_FUNCTION_79(v12);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_50();
  v14 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_41();
  v20 = v19 - v18;
  v21 = type metadata accessor for SectionHeaderRichView(0);
  v22 = OUTLINED_FUNCTION_79(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_41();
  v60 = v24 - v23;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AACF0, &qword_26A856DE8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v25);
  v27 = &v53 - v26;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AACF8, &unk_26A856DF0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v28);
  v57 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v53 - v31;
  sub_26A84C4F8();
  v33 = TextProperty.asAnyView()();
  (*(v16 + 8))(v20, v14);
  v62[3] = MEMORY[0x277CE11C8];
  v62[4] = &protocol witness table for AnyView;
  v62[0] = v33;
  sub_26A84C518();
  v34 = sub_26A84BD28();
  if (__swift_getEnumTagSinglePayload(v0, 1, v34) == 1)
  {
    sub_26A4DBD10(v0, &qword_2803AAD50, &unk_26A857890);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v61[1] = 0;
    v61[2] = 0;
  }

  else
  {
    v35 = VisualProperty.asAnyView()();
    (*(*(v34 - 8) + 8))(v0, v34);
    v37 = &protocol witness table for AnyView;
    v36 = MEMORY[0x277CE11C8];
  }

  v61[0] = v35;
  v61[3] = v36;
  v61[4] = v37;
  SectionHeaderRichView.init(text1:thumbnail:)(v62, v61, v60);
  sub_26A84C508();
  sub_26A4DBDB4(v11, v8, &qword_2803B3800, &unk_26A856760);
  v38 = v59;
  if (__swift_getEnumTagSinglePayload(v8, 1, v59) == 1)
  {
    sub_26A4DBD10(v8, &qword_2803B3800, &unk_26A856760);
    KeyPath = swift_getKeyPath();
    v40 = &v27[*(v56 + 36)];
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v42 = type metadata accessor for ActionType(0);
    __swift_storeEnumTagSinglePayload(v40 + v41, 1, 1, v42);
    *v40 = KeyPath;
  }

  else
  {
    v43 = v54;
    v44 = *(v55 + 32);
    v44(v54, v8, v38);
    v45 = swift_getKeyPath();
    v46 = &v27[*(v56 + 36)];
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v44(v46 + v47, v43, v38);
    v48 = type metadata accessor for ActionType(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v46 + v47, 0, 1, v48);
    *v46 = v45;
  }

  sub_26A6DCAB0(v60, v27);
  v49 = sub_26A84C4D8();
  sub_26A4DD174(v49, v50);

  sub_26A4DBD10(v27, &qword_2803AACF0, &qword_26A856DE8);
  sub_26A4DBD68(v32, v57, &qword_2803AACF8, &unk_26A856DF0);
  sub_26A6DE77C();
  v51 = sub_26A851248();
  sub_26A4DBD10(v32, &qword_2803AACF8, &unk_26A856DF0);
  return v51;
}

unint64_t sub_26A6DE77C()
{
  result = qword_2803B4380;
  if (!qword_2803B4380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AACF8, &unk_26A856DF0);
    sub_26A6DE834();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438, &unk_26A8555B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4380);
  }

  return result;
}

unint64_t sub_26A6DE834()
{
  result = qword_2803B4388;
  if (!qword_2803B4388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AACE8, &qword_26A856DE0);
    sub_26A6DE8C0();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4388);
  }

  return result;
}

unint64_t sub_26A6DE8C0()
{
  result = qword_2803B4390;
  if (!qword_2803B4390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AACF0, &qword_26A856DE8);
    sub_26A6DE9A8(&qword_2803B4398, type metadata accessor for SectionHeaderRichView, &protocol conformance descriptor for SectionHeaderRichView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0, &qword_26A859400, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4390);
  }

  return result;
}

uint64_t sub_26A6DE9A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_26A6DEA18(uint64_t a1)
{
  sub_26A84B1D8();
  if (v1 <= 0x3F)
  {
    sub_26A6DEAE8(319, &qword_2803B15D8, &type metadata for TextAppearance, type metadata accessor for EnvironmentDependent);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A6DEAE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_26A6DEB38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SectionHeaderRichView.Constants(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TableCellDelayedLoadImageView(uint64_t a1)
{
  result = qword_2803B43B0;
  if (!qword_2803B43B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A6DEC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26A4EEA70(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    sub_26A84BD28();
    if (v5 <= 0x3F)
    {
      sub_26A6B4AF8();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

double sub_26A6DED18()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ImageStyleAppearance(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2803A8E90 != -1)
  {
    swift_once();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0, &qword_26A86DCC0);
  __swift_project_value_buffer(v8, qword_2803D2468);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  inited = swift_initStackObject();
  v16 = xmmword_26A8570D0;
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE000, &qword_26A87EB10);
  v10 = swift_initStackObject();
  *(v10 + 16) = v16;
  v11 = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v12 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v11, 0);
    (*(v2 + 8))(v4, v1);
    v11 = v17;
  }

  *(v10 + 32) = v11;
  sub_26A621958(v10);
  *(inited + 32) = v13;
  *(inited + 40) = 0;
  sub_26A584A6C();
  swift_setDeallocating();
  sub_26A7A0C68();
  v14 = v7[1];
  sub_26A6DF64C(v7, type metadata accessor for ImageStyleAppearance);
  return v14;
}

uint64_t sub_26A6DEFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  ImageView = type metadata accessor for TableCellDelayedLoadImageView(0);
  v4 = *(ImageView - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](ImageView);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B43C0, &unk_26A877650);
  MEMORY[0x28223BE20](v6);
  v8 = (&v28 - v7);
  v9 = type metadata accessor for VisualPropertyView(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a1 + *(ImageView + 24));
  v13 = *v12;
  v14 = *(v12 + 1);
  LOBYTE(v29) = v13;
  v30 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190, &qword_26A85A9E0);
  sub_26A851058();
  if (v35 == 1)
  {
    v15 = *(ImageView + 20);
    v16 = sub_26A84BD28();
    (*(*(v16 - 8) + 16))(v11, a1 + v15, v16);
    v17 = &v11[v9[5]];
    *v17 = swift_getKeyPath();
    v17[9] = 0;
    swift_unknownObjectWeakInit();
    v18 = &v11[v9[6]];
    *v18 = swift_getKeyPath();
    v18[8] = 0;
    v19 = &v11[v9[7]];
    *v19 = swift_getKeyPath();
    v19[8] = 0;
    v20 = v9[8];
    *&v11[v20] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
    swift_storeEnumTagMultiPayload();
    v21 = &v11[v9[9]];
    LOBYTE(v35) = 0;
    sub_26A851048();
    v22 = v30;
    *v21 = v29;
    *(v21 + 1) = v22;
    sub_26A6DF5EC(v11, v8, type metadata accessor for VisualPropertyView);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B06C8, &qword_26A869830);
    sub_26A6DF594();
    sub_26A601788();
    sub_26A84FDF8();
    return sub_26A6DF64C(v11, type metadata accessor for VisualPropertyView);
  }

  else
  {
    v24 = sub_26A850DF8();
    sub_26A6DED18();
    sub_26A6DED18();
    sub_26A851448();
    sub_26A84F028();
    v29 = v24;
    v30 = v35;
    v31 = v36;
    v32 = v37;
    v33 = v38;
    v34 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF268, &unk_26A877660);
    sub_26A5BE4CC();
    v25 = sub_26A851248();
    sub_26A6DF5EC(a1, &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TableCellDelayedLoadImageView);
    v26 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v27 = swift_allocObject();
    sub_26A6DF4D0(&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
    *v8 = v25;
    v8[1] = sub_26A6DF534;
    v8[2] = v27;
    v8[3] = 0;
    v8[4] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B06C8, &qword_26A869830);
    sub_26A6DF594();
    sub_26A601788();
    return sub_26A84FDF8();
  }
}

uint64_t sub_26A6DF458(uint64_t a1)
{
  type metadata accessor for TableCellDelayedLoadImageView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190, &qword_26A85A9E0);
  return sub_26A851068();
}

uint64_t sub_26A6DF4D0(uint64_t a1, uint64_t a2)
{
  ImageView = type metadata accessor for TableCellDelayedLoadImageView(0);
  (*(*(ImageView - 8) + 32))(a2, a1, ImageView);
  return a2;
}

uint64_t sub_26A6DF534()
{
  v1 = *(type metadata accessor for TableCellDelayedLoadImageView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26A6DF458(v2);
}

unint64_t sub_26A6DF594()
{
  result = qword_28157E9E0;
  if (!qword_28157E9E0)
  {
    type metadata accessor for VisualPropertyView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157E9E0);
  }

  return result;
}

uint64_t sub_26A6DF5EC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_46();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26A6DF64C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_26A6DF6A4()
{
  result = qword_2803B43C8;
  if (!qword_2803B43C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B43D0, &qword_26A877710);
    sub_26A6DF728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B43C8);
  }

  return result;
}

unint64_t sub_26A6DF728()
{
  result = qword_2803B43D8;
  if (!qword_2803B43D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B43E0, &qword_26A877718);
    sub_26A6DF594();
    sub_26A601788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B43D8);
  }

  return result;
}

uint64_t sub_26A6DF7B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26A84F988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_26A4DBD68(v2, &v14 - v9, &qword_2803AB430, &qword_26A85B010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84EE68();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t ControlView.init(control:controlType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = OUTLINED_FUNCTION_58_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for ControlView(0);
  v16 = sub_26A84E7F8();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v16);
  sub_26A4DBD68(v14, v11, &qword_2803B43E8, &qword_26A877720);
  OUTLINED_FUNCTION_13_9();
  sub_26A851048();
  result = sub_26A4DBD10(v14, &qword_2803B43E8, &qword_26A877720);
  *(a3 + *(v15 + 24)) = a1;
  *(a3 + *(v15 + 28)) = a2;
  return result;
}

uint64_t type metadata accessor for ControlView(uint64_t a1)
{
  result = qword_2803B4420;
  if (!qword_2803B4420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ControlView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = type metadata accessor for ControlView(0);
  v48 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v49 = v3;
  v50 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26A84EE68();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B43F0, &qword_26A877760);
  OUTLINED_FUNCTION_79(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B43F8, &qword_26A877768);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - v19;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4400, &qword_26A877770);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v21);
  v23 = &v46 - v22;
  *v17 = sub_26A84FBF8();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4408, &qword_26A877778);
  sub_26A6DFF70(&v17[*(v24 + 44)]);
  v25 = v1;
  sub_26A6DF7B4(v13);
  (*(v6 + 104))(v10, *MEMORY[0x277CDF3C0], v4);
  v26 = sub_26A84EE58();
  v27 = *(v6 + 8);
  v27(v10, v4);
  v27(v13, v4);
  if (v26)
  {
    v28 = sub_26A850DD8();
  }

  else
  {
    v28 = sub_26A850E18();
  }

  v29 = v28;
  v30 = sub_26A850248();
  sub_26A4DBDB4(v17, v20, &qword_2803B43F0, &qword_26A877760);
  v31 = &v20[*(v46 + 36)];
  *v31 = v29;
  v31[8] = v30;
  v32 = v25;
  v33 = v25;
  v34 = v50;
  sub_26A6E0C78(v33, v50);
  v35 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v36 = swift_allocObject();
  sub_26A6E0CDC(v34, v36 + v35);
  v37 = &v23[*(v47 + 36)];
  sub_26A84F198();
  sub_26A851BF8();
  *v37 = &unk_26A877790;
  *(v37 + 1) = v36;
  v38 = OUTLINED_FUNCTION_13_9();
  sub_26A4DBDB4(v38, v39, v40, v41);
  sub_26A6E0C78(v32, v34);
  v42 = swift_allocObject();
  sub_26A6E0CDC(v34, v42 + v35);
  v43 = v51;
  sub_26A4DBDB4(v23, v51, &qword_2803B4400, &qword_26A877770);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4418, &qword_26A877798);
  v45 = (v43 + *(result + 36));
  *v45 = 0;
  v45[1] = 0;
  v45[2] = sub_26A6E1174;
  v45[3] = v42;
  return result;
}

uint64_t sub_26A6DFF70@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4500, &qword_26A8778B0);
  MEMORY[0x28223BE20](v48);
  v47 = &v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v46 = &v42 - v3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4508, &qword_26A8778B8);
  MEMORY[0x28223BE20](v55);
  v49 = (&v42 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4510, &qword_26A8778C0);
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4518, &qword_26A8778C8);
  MEMORY[0x28223BE20](v52);
  v53 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4520, &qword_26A8778D0);
  MEMORY[0x28223BE20](v9);
  v54 = &v42 - v10;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4528, &qword_26A8778D8);
  MEMORY[0x28223BE20](v50);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4530, &qword_26A8778E0);
  MEMORY[0x28223BE20](v51);
  v17 = (&v42 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B43E8, &qword_26A877720);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = (&v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v23 = &v42 - v22;
  type metadata accessor for ControlView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4410, &qword_26A877788);
  sub_26A851058();
  v24 = sub_26A84E7F8();
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    goto LABEL_2;
  }

  v43 = v9;
  v44 = v7;
  v45 = v5;
  sub_26A4DBD68(v23, v20, &qword_2803B43E8, &qword_26A877720);
  v26 = *(v24 - 8);
  v27 = (*(v26 + 88))(v20, v24);
  if (v27 == *MEMORY[0x277CFA478])
  {
    (*(v26 + 96))(v20, v24);
    v57 = *v20;
    sub_26A84E978();
    sub_26A6E30D8(&qword_2803B4558, MEMORY[0x277CFA4D0], MEMORY[0x277CFA4C8]);
    sub_26A84E9A8();
    v28 = v57;
    *v17 = v57;
    v49 = v28;
    v29 = v51;
    v30 = sub_26A84E968();
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v30);
    sub_26A4DBD68(v15, v12, &qword_2803B4528, &qword_26A8778D8);

    sub_26A851048();
    sub_26A4DBD10(v15, &qword_2803B4528, &qword_26A8778D8);
    v31 = (v17 + *(v29 + 56));
    *v31 = sub_26A6E08E8;
    v31[1] = 0;
    sub_26A4DBD68(v17, v53, &qword_2803B4530, &qword_26A8778E0);
    swift_storeEnumTagMultiPayload();
    sub_26A4DBCC8(&qword_2803B4540, &qword_2803B4530, &qword_26A8778E0, &unk_26A877838);
    sub_26A4DBCC8(&qword_2803B4548, &qword_2803B4508, &qword_26A8778B8, &unk_26A877838);
    v32 = v54;
    sub_26A84FDF8();
    sub_26A4DBD68(v32, v44, &qword_2803B4520, &qword_26A8778D0);
    swift_storeEnumTagMultiPayload();
    sub_26A6E2FF8();
    sub_26A84FDF8();
    sub_26A4DBD10(v32, &qword_2803B4520, &qword_26A8778D0);
    sub_26A4DBD10(v17, &qword_2803B4530, &qword_26A8778E0);
LABEL_7:

    return sub_26A4DBD10(v23, &qword_2803B43E8, &qword_26A877720);
  }

  if (v27 == *MEMORY[0x277CFA470])
  {
    (*(v26 + 96))(v20, v24);
    v57 = *v20;
    sub_26A84E8C8();
    sub_26A6E30D8(&qword_2803B4550, MEMORY[0x277CFA4B8], MEMORY[0x277CFA4B0]);
    sub_26A84E9A8();
    v33 = v49;
    *v49 = v57;
    v34 = v55;
    v35 = sub_26A84E8B8();
    v36 = v46;
    __swift_storeEnumTagSinglePayload(v46, 1, 1, v35);
    sub_26A4DBD68(v36, v47, &qword_2803B4500, &qword_26A8778B0);

    sub_26A851048();
    sub_26A4DBD10(v36, &qword_2803B4500, &qword_26A8778B0);
    v37 = (v33 + *(v34 + 56));
    *v37 = sub_26A6E09C8;
    v37[1] = 0;
    sub_26A4DBD68(v33, v53, &qword_2803B4508, &qword_26A8778B8);
    swift_storeEnumTagMultiPayload();
    sub_26A4DBCC8(&qword_2803B4540, &qword_2803B4530, &qword_26A8778E0, &unk_26A877838);
    sub_26A4DBCC8(&qword_2803B4548, &qword_2803B4508, &qword_26A8778B8, &unk_26A877838);
    v38 = v54;
    sub_26A84FDF8();
    sub_26A4DBD68(v38, v44, &qword_2803B4520, &qword_26A8778D0);
    swift_storeEnumTagMultiPayload();
    sub_26A6E2FF8();
    sub_26A84FDF8();
    sub_26A4DBD10(v38, &qword_2803B4520, &qword_26A8778D0);
    sub_26A4DBD10(v33, &qword_2803B4508, &qword_26A8778B8);
    goto LABEL_7;
  }

  (*(v26 + 8))(v20, v24);
LABEL_2:
  v25 = sub_26A851E98();
  LOBYTE(v40) = 2;
  sub_26A7C33DC(v25, 1, "SnippetUI/ControlView.swift", 27, 2, 44, "body", 4, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
  swift_storeEnumTagMultiPayload();
  sub_26A6E2FF8();
  sub_26A84FDF8();
  return sub_26A4DBD10(v23, &qword_2803B43E8, &qword_26A877720);
}

uint64_t sub_26A6E08E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v6 = sub_26A84E968();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  (*(v11 + 16))(v9, a1, v7);

  return sub_26A7FF128(v9, v10, a3);
}

uint64_t sub_26A6E09C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v5 = *a2;
  v6 = type metadata accessor for PickerControlView(0);
  v7 = *(v6 + 20);
  v8 = sub_26A84E8B8();
  (*(*(v8 - 8) + 16))(&a3[v7], a1, v8);
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4560, &qword_26A877918);
  swift_storeEnumTagMultiPayload();
  *&a3[*(v6 + 24)] = v5;
}

uint64_t sub_26A6E0A9C(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B43E8, &qword_26A877720);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  sub_26A851BD8();
  v1[5] = sub_26A851BC8();
  sub_26A851B78();

  return MEMORY[0x2822009F8](sub_26A6E0B78);
}

uint64_t sub_26A6E0B78()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);

  type metadata accessor for ControlView(0);
  sub_26A84E988();
  sub_26A4DBD68(v1, v2, &qword_2803B43E8, &qword_26A877720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4410, &qword_26A877788);
  sub_26A851068();
  sub_26A4DBD10(v1, &qword_2803B43E8, &qword_26A877720);

  OUTLINED_FUNCTION_2_9();

  return v3();
}

uint64_t sub_26A6E0C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A6E0CDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A6E0D40()
{
  v2 = type metadata accessor for ControlView(0);
  OUTLINED_FUNCTION_79(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_23();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_26A6E0E04;

  return sub_26A6E0A9C(v0 + v4);
}

uint64_t sub_26A6E0E04()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0_12();
  *v2 = v1;

  OUTLINED_FUNCTION_2_9();

  return v3();
}

uint64_t sub_26A6E0EEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B43E8, &qword_26A877720);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  v6 = sub_26A84E7F8();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  type metadata accessor for ControlView(0);
  sub_26A4DBD68(v5, v2, &qword_2803B43E8, &qword_26A877720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4410, &qword_26A877788);
  sub_26A851068();
  return sub_26A4DBD10(v5, &qword_2803B43E8, &qword_26A877720);
}

uint64_t objectdestroyTm_23()
{
  type metadata accessor for ControlView(0);
  OUTLINED_FUNCTION_37_0();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_46();
    (*(v4 + 8))(v1 + v3);
  }

  else
  {
  }

  v5 = sub_26A84E7F8();
  if (!OUTLINED_FUNCTION_9_44(v5))
  {
    OUTLINED_FUNCTION_16_10();
    v6 = OUTLINED_FUNCTION_58_1();
    v7(v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4410, &qword_26A877788);

  return swift_deallocObject();
}

uint64_t sub_26A6E1174()
{
  v0 = type metadata accessor for ControlView(0);
  OUTLINED_FUNCTION_79(v0);

  return sub_26A6E0EEC();
}

void sub_26A6E1218(uint64_t a1)
{
  sub_26A5B96FC(319);
  if (v1 <= 0x3F)
  {
    sub_26A6E12CC(319);
    if (v2 <= 0x3F)
    {
      sub_26A6E1330();
      if (v3 <= 0x3F)
      {
        type metadata accessor for CHSControlType(319, v3, v4, v5);
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A6E12CC(uint64_t a1)
{
  if (!qword_2803B4430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B43E8, &qword_26A877720);
    v1 = sub_26A851088();
    if (!v2)
    {
      atomic_store(v1, &qword_2803B4430);
    }
  }
}

unint64_t sub_26A6E1330()
{
  result = qword_2803B4438;
  if (!qword_2803B4438)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803B4438);
  }

  return result;
}

unint64_t sub_26A6E1374()
{
  result = qword_2803B4440;
  if (!qword_2803B4440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4418, &qword_26A877798);
    sub_26A6E1400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4440);
  }

  return result;
}

unint64_t sub_26A6E1400()
{
  result = qword_2803B4448;
  if (!qword_2803B4448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4400, &qword_26A877770);
    sub_26A6E14BC();
    sub_26A6E30D8(&qword_2803A91E8, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4448);
  }

  return result;
}

unint64_t sub_26A6E14BC()
{
  result = qword_2803B4450;
  if (!qword_2803B4450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B43F8, &qword_26A877768);
    sub_26A4DBCC8(qword_2803B4458, &qword_2803B43F0, &qword_26A877760, MEMORY[0x277CE1198]);
    sub_26A4DBCC8(&qword_2803ADC60, &qword_2803ADC68, &qword_26A85FCF0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4450);
  }

  return result;
}

unint64_t sub_26A6E15A0(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_26A852068();
    v1 = sub_26A851088();
    if (v3 <= 0x3F)
    {
      v1 = sub_26A5046B4();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_26A6E167C(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  result = swift_getAssociatedTypeWitness();
  v9 = *(result - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = 7;
  if (!v10)
  {
    v13 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = result;
  v15 = *(v9 + 80) & 0xF8 | 7;
  v16 = *(v6 + 64) + v15;
  v17 = (v13 + *(*(result - 8) + 64)) & 0xFFFFFFFFFFFFFFF8;
  if (v12 >= a2)
  {
LABEL_32:
    if (v7 == v12)
    {

      return __swift_getEnumTagSinglePayload(a1, v7, v5);
    }

    else
    {
      v25 = (a1 + v16) & ~v15;
      if (v11 == v12)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, v10, v14);
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v27 = *(v25 + v17 + 8);
        if (v27 >= 0xFFFFFFFF)
        {
          LODWORD(v27) = -1;
        }

        return (v27 + 1);
      }
    }
  }

  else
  {
    v18 = v17 + (v16 & ~v15) + 24;
    v19 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = a2 - v12 + 1;
    }

    if (v20 >= 0x10000)
    {
      LODWORD(v21) = 4;
    }

    else
    {
      LODWORD(v21) = 2;
    }

    if (v20 < 0x100)
    {
      LODWORD(v21) = 1;
    }

    if (v20 >= 2)
    {
      v21 = v21;
    }

    else
    {
      v21 = 0;
    }

    switch(v21)
    {
      case 1:
        v22 = *(a1 + v18);
        if (!v22)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      case 2:
        v22 = *(a1 + v18);
        if (!v22)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      case 3:
        __break(1u);
        return result;
      case 4:
        v22 = *(a1 + v18);
        if (!v22)
        {
          goto LABEL_32;
        }

LABEL_29:
        v23 = v22 - 1;
        if (v19)
        {
          v23 = 0;
          v24 = *a1;
        }

        else
        {
          v24 = 0;
        }

        result = v12 + (v24 | v23) + 1;
        break;
      default:
        goto LABEL_32;
    }
  }

  return result;
}

void sub_26A6E18D4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(v11 + 80) & 0xF8 | 7;
  v16 = *(v8 + 64) + v15;
  v17 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v12)
  {
    ++v17;
  }

  v18 = (v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = v18 + (v16 & ~v15) + 24;
  if (v18 + (v16 & ~(*(v11 + 80) & 0xF8 | 7)) == -24)
  {
    v20 = a3 - v14 + 1;
  }

  else
  {
    v20 = 2;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v14 < a3)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (a2 <= v14)
  {
    v26 = ~v15;
    v27 = v18 + 8;
    v28 = AssociatedTypeWitness;
    switch(v23)
    {
      case 1:
        *(a1 + v19) = 0;
        if (a2)
        {
          goto LABEL_40;
        }

        return;
      case 2:
        *(a1 + v19) = 0;
        if (a2)
        {
          goto LABEL_40;
        }

        return;
      case 3:
LABEL_53:
        __break(1u);
        return;
      case 4:
        *(a1 + v19) = 0;
        goto LABEL_39;
      default:
LABEL_39:
        if (!a2)
        {
          return;
        }

LABEL_40:
        if (v9 == v14)
        {
          v29 = a1;
          v30 = a2;
          v12 = v9;
          v28 = v7;
        }

        else
        {
          v29 = ((a1 + v16) & v26);
          if (v13 != v14)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v31 = (v29 + v27);
              *v31 = a2 & 0x7FFFFFFF;
              v31[1] = 0;
            }

            else
            {
              *(v29 + v27) = (a2 - 1);
            }

            return;
          }

          v30 = (a2 + 1);
        }

        __swift_storeEnumTagSinglePayload(v29, v30, v12, v28);
        break;
    }
  }

  else
  {
    if (v18 + (v16 & ~(*(v11 + 80) & 0xF8 | 7)) == -24)
    {
      v24 = a2 - v14;
    }

    else
    {
      v24 = 1;
    }

    if (v18 + (v16 & ~(*(v11 + 80) & 0xF8 | 7)) != -24)
    {
      v25 = ~v14 + a2;
      bzero(a1, v19);
      *a1 = v25;
    }

    switch(v23)
    {
      case 1:
        *(a1 + v19) = v24;
        break;
      case 2:
        *(a1 + v19) = v24;
        break;
      case 3:
        goto LABEL_53;
      case 4:
        *(a1 + v19) = v24;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_26A6E1BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  sub_26A851C18();
  OUTLINED_FUNCTION_15();
  v50 = v6;
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v49 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B44E0, &qword_26A877888);
  v42 = *(a1 + 24);
  v11 = v42;
  sub_26A84FE08();
  v12 = sub_26A850ED8();
  OUTLINED_FUNCTION_15();
  v47 = v13;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  v43 = &v40 - v15;
  sub_26A84F198();
  v16 = sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  v48 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_0();
  v44 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  v46 = &v40 - v22;
  v23 = *(a1 + 16);
  *&v24 = v23;
  *(&v24 + 1) = v11;
  v40 = v24;
  v55 = v3;
  v60 = sub_26A6E2CD0();
  v41 = *(a1 + 32);
  v53 = v40;
  v54 = v41;
  v59 = *(&v41 + 1);
  OUTLINED_FUNCTION_6_14();
  WitnessTable = swift_getWitnessTable();
  sub_26A850EC8();
  v26 = v45;
  (*(v8 + 16))(v45, v3, a1);
  v27 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v28 = swift_allocObject();
  v29 = v42;
  *(v28 + 16) = v23;
  *(v28 + 24) = v29;
  *(v28 + 32) = v41;
  (*(v8 + 32))(v28 + v27, v26, a1);
  v58 = WitnessTable;
  OUTLINED_FUNCTION_6_51();
  v30 = swift_getWitnessTable();
  v31 = v49;
  sub_26A851BF8();
  v32 = v44;
  v33 = v43;
  sub_26A850BB8();

  (*(v50 + 8))(v31, v51);
  (*(v47 + 8))(v33, v12);
  OUTLINED_FUNCTION_5_60();
  v36 = sub_26A6E30D8(v34, v35, MEMORY[0x277CDD8A0]);
  v56 = v30;
  v57 = v36;
  OUTLINED_FUNCTION_58();
  swift_getWitnessTable();
  sub_26A80757C();
  v37 = *(v48 + 8);
  v37(v32, v16);
  OUTLINED_FUNCTION_58_1();
  sub_26A80757C();
  v38 = OUTLINED_FUNCTION_58_1();
  return (v37)(v38);
}

uint64_t sub_26A6E205C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v48 = a6;
  v49 = a5;
  v42 = *(a3 - 8);
  v43 = a1;
  MEMORY[0x28223BE20](a1);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v39 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B44E0, &qword_26A877888);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_26A852068();
  v39 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  v40 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v39 - v21;
  v47 = v13;
  v23 = sub_26A84FE08();
  v45 = *(v23 - 8);
  v46 = v23;
  MEMORY[0x28223BE20](v23);
  v44 = &v39 - v24;
  *&v52 = a2;
  *(&v52 + 1) = a3;
  *&v53 = a4;
  *(&v53 + 1) = v49;
  v25 = type metadata accessor for ControlLoadingView(0, &v52);
  sub_26A851088();
  v26 = v43;
  sub_26A851058();
  if (__swift_getEnumTagSinglePayload(v19, 1, AssociatedTypeWitness) == 1)
  {
    (*(v39 + 8))(v19, v17);
    sub_26A84EF98();
    v27 = sub_26A850248();
    v28 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B44F8, &unk_26A877890) + 36)];
    *v28 = v27;
    *(v28 + 8) = 0u;
    *(v28 + 24) = 0u;
    v28[40] = 1;
    sub_26A851448();
    sub_26A84F028();
    v29 = &v15[*(v47 + 36)];
    v30 = v53;
    *v29 = v52;
    *(v29 + 1) = v30;
    *(v29 + 2) = v54;
    sub_26A6E2CD0();
    v31 = v44;
    v32 = v49;
    sub_26A8012F4();
    sub_26A4DBD10(v15, &qword_2803B44E0, &qword_26A877888);
  }

  else
  {
    v33 = v40;
    (*(v40 + 32))(v22, v19, AssociatedTypeWitness);
    (*(v26 + *(v25 + 56)))(v22, v26);
    v34 = v41;
    v32 = v49;
    sub_26A80757C();
    v35 = *(v42 + 8);
    v35(v10, a3);
    sub_26A80757C();
    sub_26A6E2CD0();
    v31 = v44;
    sub_26A801234();
    v35(v10, a3);
    v35(v34, a3);
    (*(v33 + 8))(v22, AssociatedTypeWitness);
  }

  v36 = sub_26A6E2CD0();
  v50 = v32;
  v51 = v36;
  v37 = v46;
  swift_getWitnessTable();
  sub_26A80757C();
  return (*(v45 + 8))(v31, v37);
}

uint64_t sub_26A6E25A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[11] = AssociatedTypeWitness;
  v5[12] = *(AssociatedTypeWitness - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_26A852068();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v8 = sub_26A851C58();
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();
  v9 = sub_26A851C48();
  v5[22] = v9;
  v5[23] = *(v9 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = sub_26A851BD8();
  v5[26] = sub_26A851BC8();
  v5[27] = sub_26A851B78();
  v5[28] = v10;

  return MEMORY[0x2822009F8](sub_26A6E2808);
}

uint64_t sub_26A6E2808()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  OUTLINED_FUNCTION_13_9();
  sub_26A84E9C8();
  OUTLINED_FUNCTION_13_9();
  sub_26A84E9B8();
  sub_26A851C28();
  (*(v2 + 8))(v1, v3);
  v4 = sub_26A851BC8();
  v0[29] = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_16_23();
  v0[30] = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_2_73(v5);
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v7, v4, v8);
}

uint64_t sub_26A6E2904()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0_12();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_26A6E2A40);
}

uint64_t sub_26A6E2A40()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 88);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

    sub_26A84E998();

    OUTLINED_FUNCTION_2_9();

    return v3();
  }

  else
  {
    (*(*(v0 + 96) + 32))(*(v0 + 104), v1, v2);
    if ((sub_26A851C88() & 1) == 0)
    {
      v6 = *(v0 + 128);
      v5 = *(v0 + 136);
      v7 = *(v0 + 112);
      v8 = *(v0 + 120);
      v9 = *(v0 + 88);
      v15 = *(v0 + 72);
      v16 = *(v0 + 56);
      (*(*(v0 + 96) + 16))(v5, *(v0 + 104), v9);
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v9);
      *(v0 + 16) = v16;
      *(v0 + 32) = v15;
      type metadata accessor for ControlLoadingView(0, v0 + 16);
      (*(v8 + 16))(v6, v5, v7);
      sub_26A851088();
      sub_26A851068();
      (*(v8 + 8))(v5, v7);
    }

    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    v10 = sub_26A851BC8();
    *(v0 + 232) = v10;
    swift_task_alloc();
    OUTLINED_FUNCTION_16_23();
    *(v0 + 240) = v11;
    *v11 = v12;
    v13 = OUTLINED_FUNCTION_2_73(v11);
    v14 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v13, v10, v14);
  }
}

unint64_t sub_26A6E2CD0()
{
  result = qword_2803B44E8;
  if (!qword_2803B44E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B44E0, &qword_26A877888);
    sub_26A6E2D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B44E8);
  }

  return result;
}

unint64_t sub_26A6E2D5C()
{
  result = qword_2803B44F0;
  if (!qword_2803B44F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B44F8, &unk_26A877890);
    sub_26A4DBCC8(&qword_2803ADDE8, &qword_2803ADDF0, &qword_26A860100, MEMORY[0x277CDD7F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B44F0);
  }

  return result;
}

uint64_t sub_26A6E2E14()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v6 = type metadata accessor for ControlLoadingView(0, (v1 + 2));
  OUTLINED_FUNCTION_79(v6);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_23();
  v1[6] = v9;
  *v9 = v10;
  v9[1] = sub_26A6E2F10;

  return sub_26A6E25A8(v0 + v8, v2, v3, v4, v5);
}

uint64_t sub_26A6E2F10()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0_12();
  *v2 = v1;

  OUTLINED_FUNCTION_2_9();

  return v3();
}

unint64_t sub_26A6E2FF8()
{
  result = qword_2803B4538;
  if (!qword_2803B4538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4520, &qword_26A8778D0);
    sub_26A4DBCC8(&qword_2803B4540, &qword_2803B4530, &qword_26A8778E0, &unk_26A877838);
    sub_26A4DBCC8(&qword_2803B4548, &qword_2803B4508, &qword_26A8778B8, &unk_26A877838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4538);
  }

  return result;
}

uint64_t sub_26A6E30D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_26A6E3188@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_26A84AFA8();
  OUTLINED_FUNCTION_15();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A84B858();
  v9 = _s10SnippetKit11TextElementV0A2UIE4view4bold6italic05SwiftE00C0VSb_SbtF_0(0, 0);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  (*(v5 + 8))(v8, v3);
  v16 = v13 & 1;
  v17 = TextProperty.asAnyView()();
  v18 = sub_26A84B878();
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  *(a2 + 32) = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 72) = v15;
  *(a2 + 80) = v17;
  *(a2 + 48) = v9;
  *(a2 + 56) = v11;
  *(a2 + 64) = v16;
  *(a2 + 88) = v18 & 1;
  result = 0.0;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 1;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  return result;
}

uint64_t sub_26A6E3340@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A6405F8();
  *a1 = result & 1;
  return result;
}

double sub_26A6E3398@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v2 = sub_26A70EB38(a2);
  if (qword_2803A8BD0 != -1)
  {
LABEL_13:
    swift_once();
  }

  v3 = xmmword_2803B0080;
  v4 = byte_2803B0090;
  v5 = qword_2803B0098;
  v30 = *(v2 + 16);
  sub_26A4EF6C0(xmmword_2803B0080, *(&xmmword_2803B0080 + 1), byte_2803B0090);

  v6 = 0;
  v7 = v2 + 56;
  v41 = v3;
  v40 = v4;
  v39 = v5;
  v29 = v2;
  while (v30 != v6)
  {
    if (v6 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_13;
    }

    v9 = *(v7 - 24);
    v8 = *(v7 - 16);
    v10 = *(v7 - 8);
    v36 = v7;
    v37 = v6;
    v38 = v8;
    v35 = v10;
    if (v6)
    {
      sub_26A4EF6C0(v9, v8, v10);
      v11 = qword_2803A8BE0;

      if (v11 != -1)
      {
        swift_once();
      }

      v12 = *(&xmmword_2803B00C0 + 1);
      v13 = xmmword_2803B00C0;
      v14 = byte_2803B00D0;
      sub_26A4EF6C0(xmmword_2803B00C0, *(&xmmword_2803B00C0 + 1), byte_2803B00D0);
    }

    else
    {
      v12 = *(&v3 + 1);
      v13 = v3;
      v14 = v4;
      sub_26A4EF6C0(v3, *(&v3 + 1), v4);

      sub_26A4EF6C0(*(&v3 + 1), v8, v10);
    }

    v15 = v14;
    v16 = sub_26A8506F8();
    v18 = v17;
    v20 = v19;
    v21 = sub_26A8506F8();
    v33 = v22;
    v34 = v21;
    v31 = v23;
    v32 = v24;
    sub_26A4EC448(v13, v12, v15);

    sub_26A4EC448(v16, v18, v20 & 1);

    sub_26A4EC448(v41, *(&v41 + 1), v40 & 1);

    sub_26A4EC448(v9, v38, v35);

    v7 = v36 + 32;
    v6 = v37 + 1;
    *&v41 = v34;
    *(&v41 + 1) = v33;
    v40 = v31;
    v39 = v32;
    v2 = v29;
  }

  sub_26A4EF6C0(v41, *(&v41 + 1), v40 & 1);

  v25 = MultilineTextProperty.asAnyView()();
  v26 = sub_26A84B878();
  sub_26A4EC448(v41, *(&v41 + 1), v40 & 1);

  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = 0;
  *(a1 + 32) = swift_getKeyPath();
  *(a1 + 40) = 0;
  *(a1 + 72) = v39;
  *(a1 + 80) = v25;
  *(a1 + 48) = v41;
  *(a1 + 64) = v40 & 1;
  *(a1 + 88) = v26 & 1;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 1;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  return result;
}

uint64_t sub_26A6E373C()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 96);
  if (v5 && (v6 = *(v0 + 32), v7 = *(v0 + 40), sub_26A7D1C0C(*(v0 + 96))) && (memcpy(v13, (v0 + 104), sizeof(v13)), v12 = v5, !sub_26A7D18DC()))
  {
    if (!v7)
    {

      sub_26A851EA8();
      v10 = sub_26A8501F8();
      sub_26A84EA78();

      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A49035C(v6, 0);
      (*(v2 + 8))(v4, v1);
      LOBYTE(v6) = v11[7];
    }

    v8 = v6 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_26A6E38CC(void *__src)
{
  memcpy(__dst, __src, 0xFAuLL);
  if (sub_26A6E373C())
  {
    v2 = *(__src + 10);
    v4[1] = swift_getKeyPath();
    v5 = 0;
    KeyPath = swift_getKeyPath();
    v7 = 0;
    swift_unknownObjectWeakInit();
    v8 = 0;
    v9 = 0;
    v4[0] = v2;
    sub_26A51D0F8(v4, __dst, &qword_2803B45F0, &qword_26A877DE0);
    LOBYTE(__dst[8]) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B45F0, &qword_26A877DE0);
    sub_26A6E4BFC();
    sub_26A84FDF8();
    return sub_26A4DBD10(v4, &qword_2803B45F0, &qword_26A877DE0);
  }

  else
  {
    __dst[0] = *(__src + 10);
    LOBYTE(__dst[8]) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B45F0, &qword_26A877DE0);
    sub_26A6E4BFC();
    return sub_26A84FDF8();
  }
}

uint64_t PartialText.body.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4568, &qword_26A877998);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4570, &qword_26A8779A0);
  OUTLINED_FUNCTION_15();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v44 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v45 = &v41 - v17;
  memcpy(v53, v2, 0xFAuLL);
  sub_26A6E38CC(v53);
  v55 = v53[1];
  v18 = v53[0];
  v54 = v53[0];
  v41 = v5;
  v42 = v3;
  if (LOBYTE(v53[1]) != 1)
  {

    sub_26A851EA8();
    v19 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4DBD10(&v54, &qword_2803ABFA0, &unk_26A85F090);
    (*(v5 + 8))(v8, v3);
    v18 = v48[0];
  }

  v20 = v53[27];
  v21 = LOBYTE(v53[28]);
  v22 = v53[29];
  v23 = v53[30];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4578, &qword_26A8779A8) + 36);

  sub_26A640858(&v11[v24], v20, v21, v22, v23, (v18 & 1) == 0);
  v57 = v53[3];
  v25 = v53[2];
  v56 = v53[2];
  if (LOBYTE(v53[3]) != 1)
  {

    sub_26A851EA8();
    v26 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4DBD10(&v56, &qword_2803ABFA0, &unk_26A85F090);
    (*(v41 + 8))(v8, v42);
    v25 = v48[0];
  }

  v27 = &v11[*(v43 + 36)];
  *v27 = 0;
  v27[1] = (v25 & 1) == 0;
  v28 = sub_26A6E3F64(v53[31]);
  sub_26A4DBD10(v11, &qword_2803B4568, &qword_26A877998);
  if (v53[12])
  {
    v29 = v53[25];
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  v49 = v29;
  v50 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABFB8, &qword_26A85A410);
  sub_26A851048();
  v49 = v28;
  v50 = v48[0];
  v51 = v48[1];
  v52 = v48[2];
  v31 = swift_allocObject();
  memcpy((v31 + 16), v53, 0xFAuLL);
  sub_26A4EC458(v53, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4580, &qword_26A8779B0);
  sub_26A6E4454();
  v32 = v44;
  sub_26A850BF8();

  v33 = *(v13 + 32);
  v35 = v45;
  v34 = v46;
  v33(v45, v32, v46);
  v36 = BYTE1(v53[31]);
  KeyPath = swift_getKeyPath();
  v38 = v47;
  v33(v47, v35, v34);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B45A0, &qword_26A8779E0);
  v40 = &v38[*(result + 36)];
  *v40 = KeyPath;
  v40[8] = v36;
  return result;
}

uint64_t sub_26A6E3F64(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4568, &qword_26A877998);
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208, &qword_26A857FD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B45B0, &qword_26A877DC8);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  if (a1)
  {
    v16 = sub_26A850338();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v16);
    sub_26A8503E8();
    sub_26A4DBD10(v9, &qword_2803AB208, &qword_26A857FD0);
    v17 = sub_26A850308();

    KeyPath = swift_getKeyPath();
    sub_26A51D0F8(v2, v15, &qword_2803B4568, &qword_26A877998);
    v19 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4600, &qword_26A877E18) + 36)];
    *v19 = KeyPath;
    v19[1] = v17;
    v20 = sub_26A850238();
    v21 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4608, &qword_26A877E20) + 36)];
    *v21 = v20;
    *(v21 + 8) = 0u;
    *(v21 + 24) = 0u;
    v21[40] = 1;
    v22 = sub_26A8502A8();
    sub_26A84ED48();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4610, &qword_26A877E28) + 36)];
    *v31 = v22;
    *(v31 + 1) = v24;
    *(v31 + 2) = v26;
    *(v31 + 3) = v28;
    *(v31 + 4) = v30;
    v31[40] = 0;
    v32 = &v15[*(v10 + 36)];
    v33 = *MEMORY[0x277CE0118];
    v34 = sub_26A84FB88();
    (*(*(v34 - 8) + 104))(v32, v33, v34);
    LODWORD(v33) = sub_26A84FE98();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4618, &qword_26A877E30);
    *&v32[*(v35 + 52)] = v33;
    *&v32[*(v35 + 56)] = 256;
    v36 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4620, &qword_26A877E38) + 36)];
    v37 = type metadata accessor for VibrancyModifier(0);
    v38 = *(v37 + 20);
    *&v36[v38] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
    swift_storeEnumTagMultiPayload();
    v39 = &v36[*(v37 + 24)];
    *v39 = swift_getKeyPath();
    v39[8] = 0;
    *v36 = 2;
    v40 = sub_26A851448();
    v42 = v41;
    v43 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4628, &qword_26A877E98) + 36)];
    *v43 = v40;
    v43[1] = v42;
    sub_26A51D0F8(v15, v12, &qword_2803B45B0, &qword_26A877DC8);
    sub_26A6E4D34();
    v44 = sub_26A851248();
    sub_26A4DBD10(v15, &qword_2803B45B0, &qword_26A877DC8);
  }

  else
  {
    sub_26A51D0F8(v2, v6, &qword_2803B4568, &qword_26A877998);
    sub_26A6E49D4();
    return sub_26A851248();
  }

  return v44;
}

id sub_26A6E43BC(void *a1)
{
  if (a1[12] && a1[26])
  {
    v1 = sub_26A851788();
    v2 = [objc_allocWithZone(MEMORY[0x277CCAA88]) initWithObject_];

    return v2;
  }

  else
  {
    v4 = objc_allocWithZone(MEMORY[0x277CCAA88]);

    return [v4 init];
  }
}

unint64_t sub_26A6E4454()
{
  result = qword_2803B4588;
  if (!qword_2803B4588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4580, &qword_26A8779B0);
    sub_26A4DBCC8(&qword_2803B4590, &qword_2803B4598, &qword_26A881CD0, &unk_26A863930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4588);
  }

  return result;
}

uint64_t sub_26A6E450C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A6E4980();

  return MEMORY[0x282132D20](a1, a2, a3, v8, a4);
}

uint64_t sub_26A6E4578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A6E4980();

  return MEMORY[0x282132D28](a1, a2, a3, v8, a4);
}

void (*sub_26A6E4624(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_26A84ECD8();
  return sub_26A4F6448;
}

double sub_26A6E46C4@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1();
  LOBYTE(a2) = a2();
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  *(a3 + 32) = swift_getKeyPath();
  *(a3 + 40) = 0;
  *(a3 + 80) = v5;
  result = 0.0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 88) = a2 & 1;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 1;
  *(a3 + 232) = 0;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9SnippetUI18FormattedTextModelVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26A6E47BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 250))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A6E47FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 250) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 250) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26A6E488C()
{
  result = qword_2803B45A8;
  if (!qword_2803B45A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B45A0, &qword_26A8779E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4580, &qword_26A8779B0);
    sub_26A6E4454();
    swift_getOpaqueTypeConformance2();
    sub_26A4DBCC8(&qword_28157FB50, &unk_2803B31B0, &unk_26A858ED0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B45A8);
  }

  return result;
}

unint64_t sub_26A6E4980()
{
  result = qword_28157F808;
  if (!qword_28157F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157F808);
  }

  return result;
}

unint64_t sub_26A6E49D4()
{
  result = qword_2803B45B8;
  if (!qword_2803B45B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4568, &qword_26A877998);
    sub_26A6E4A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B45B8);
  }

  return result;
}

unint64_t sub_26A6E4A60()
{
  result = qword_2803B45C0;
  if (!qword_2803B45C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4578, &qword_26A8779A8);
    sub_26A6E4AEC();
    sub_26A6E4CDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B45C0);
  }

  return result;
}

unint64_t sub_26A6E4AEC()
{
  result = qword_2803B45C8;
  if (!qword_2803B45C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B45D0, &qword_26A877DD0);
    sub_26A6E4B70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B45C8);
  }

  return result;
}

unint64_t sub_26A6E4B70()
{
  result = qword_2803B45D8;
  if (!qword_2803B45D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B45E0, &qword_26A877DD8);
    sub_26A6E4BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B45D8);
  }

  return result;
}

unint64_t sub_26A6E4BFC()
{
  result = qword_2803B45E8;
  if (!qword_2803B45E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B45F0, &qword_26A877DE0);
    sub_26A6E4C88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B45E8);
  }

  return result;
}

unint64_t sub_26A6E4C88()
{
  result = qword_2803B45F8;
  if (!qword_2803B45F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B45F8);
  }

  return result;
}

unint64_t sub_26A6E4CDC()
{
  result = qword_28157E058;
  if (!qword_28157E058)
  {
    type metadata accessor for OptionalLineLimitModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157E058);
  }

  return result;
}

unint64_t sub_26A6E4D34()
{
  result = qword_2803B4630;
  if (!qword_2803B4630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B45B0, &qword_26A877DC8);
    sub_26A6E4DEC();
    sub_26A4DBCC8(&qword_2803B4650, &qword_2803B4628, &qword_26A877E98, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4630);
  }

  return result;
}

unint64_t sub_26A6E4DEC()
{
  result = qword_2803B4638;
  if (!qword_2803B4638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4610, &qword_26A877E28);
    sub_26A6E4E78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4638);
  }

  return result;
}

unint64_t sub_26A6E4E78()
{
  result = qword_2803B4640;
  if (!qword_2803B4640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4608, &qword_26A877E20);
    sub_26A6E4F04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4640);
  }

  return result;
}

unint64_t sub_26A6E4F04()
{
  result = qword_2803B4648;
  if (!qword_2803B4648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4600, &qword_26A877E18);
    sub_26A6E49D4();
    sub_26A4DBCC8(&qword_28157FB78, &qword_2803AC4A8, &qword_26A85AFA0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4648);
  }

  return result;
}

void sub_26A6E5004(uint64_t a1)
{
  sub_26A6E7948(319, &qword_2803B4670, MEMORY[0x277CDF708]);
  if (v1 <= 0x3F)
  {
    sub_26A84E8B8();
    if (v2 <= 0x3F)
    {
      sub_26A84E8C8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26A6E50D8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PickerControlView(0) - 8;
  MEMORY[0x28223BE20](v3);
  sub_26A6E527C(v1, a1);
  sub_26A6E7718();
  v4 = swift_allocObject();
  sub_26A6E878C();
  KeyPath = swift_getKeyPath();
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4678, &qword_26A877F98) + 36));
  v7 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
  *v7 = sub_26A6E5954;
  *(v7 + 8) = v4;
  *(v7 + 16) = 0;
  v8 = type metadata accessor for ActionType(0);
  OUTLINED_FUNCTION_211();
  swift_storeEnumTagMultiPayload();
  result = __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  *v6 = KeyPath;
  return result;
}

uint64_t sub_26A6E527C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = type metadata accessor for BasicPickerControlView(0);
  MEMORY[0x28223BE20](v26);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4680, &qword_26A877FA0);
  MEMORY[0x28223BE20](v5);
  v6 = type metadata accessor for StepSliderControlView(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PickerControlView(0);
  v10 = *(v9 + 20);
  if (sub_26A84E818())
  {
    v11 = sub_26A84E8B8();
    (*(*(v11 - 8) + 16))(v8, a1 + v10, v11);
    *&v8[*(v6 + 20)] = *(a1 + *(v9 + 24));
    sub_26A6E7718();
    swift_storeEnumTagMultiPayload();
    sub_26A6E776C();
    sub_26A6E776C();

    sub_26A84FDF8();
  }

  else
  {
    v23 = v5;
    v24 = v6;
    v12 = v26;
    v13 = *(v26 + 24);
    v14 = sub_26A84E8B8();
    (*(*(v14 - 8) + 16))(&v4[v13], a1 + v10, v14);
    v15 = *(a1 + *(v9 + 24));
    v16 = qword_2803A8DD0;

    if (v16 != -1)
    {
      swift_once();
    }

    memcpy(v27, qword_2803D22E0, sizeof(v27));
    v17 = v27[4];
    memcpy(v4 + 240, qword_2803D22E0, 0x50uLL);
    v21 = v27[3];
    v22 = v27[2];
    sub_26A4D7E54();
    sub_26A6AEE74(v28);
    memcpy(v4, v28, 0xBFuLL);
    v18 = v21;
    *(v4 + 12) = v22;
    *(v4 + 13) = v18;
    *(v4 + 14) = v17;
    v19 = *(v12 + 20);
    *&v4[v19] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
    swift_storeEnumTagMultiPayload();
    *&v4[*(v12 + 28)] = v15;
    sub_26A6E7718();
    swift_storeEnumTagMultiPayload();
    sub_26A6E776C();
    sub_26A6E776C();
    sub_26A84FDF8();
  }

  return sub_26A6E77B0();
}

uint64_t sub_26A6E571C()
{
  v0 = sub_26A84F138();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0, &qword_26A872080);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_26A84AB98();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PickerControlView(0);
  sub_26A84E808();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A54A088();
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_26A7204B8(v3);
  sub_26A84F128();
  (*(v1 + 8))(v3, v0);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_26A6E5954()
{
  v0 = type metadata accessor for PickerControlView(0);
  OUTLINED_FUNCTION_79(v0);

  return sub_26A6E571C();
}

uint64_t sub_26A6E59B0()
{
  v0 = type metadata accessor for BasicPickerControlView(0);
  MEMORY[0x28223BE20](v0 - 8);
  sub_26A6E7718();
  sub_26A851BD8();
  v1 = sub_26A851BC8();
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D85700];
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  sub_26A6E878C();
  sub_26A6E7718();
  v4 = sub_26A851BC8();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  sub_26A6E878C();
  sub_26A851278();
  return v7;
}

uint64_t sub_26A6E5B80@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BasicPickerControlView(0);
  result = sub_26A84E838();
  *a1 = result;
  return result;
}

uint64_t sub_26A6E5BC4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for BasicPickerControlView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC090, &qword_26A85A690);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = *a1;
  v12 = sub_26A851C18();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v12);
  sub_26A6E7718();
  sub_26A851BD8();
  v13 = sub_26A851BC8();
  v14 = (v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  sub_26A6E878C();
  *(v15 + v14) = v11;
  sub_26A7FEEA0(0, 0, v10, &unk_26A878280, v15);
}

uint64_t sub_26A6E5DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_26A851BD8();
  v5[4] = sub_26A851BC8();
  v5[5] = sub_26A851B78();
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_26A6E5E38);
}

uint64_t sub_26A6E5E38()
{
  OUTLINED_FUNCTION_1_10();
  type metadata accessor for BasicPickerControlView(0);
  v4 = (*MEMORY[0x277CFA498] + MEMORY[0x277CFA498]);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_26A6E5EF0;
  v2 = *(v0 + 24);

  return v4(v2);
}

uint64_t sub_26A6E5EF0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_26A6E608C;
  }

  else
  {
    v2 = sub_26A6E602C;
  }

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_26A6E602C()
{
  OUTLINED_FUNCTION_1_10();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26A6E608C()
{
  OUTLINED_FUNCTION_1_10();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26A6E60EC()
{
  v1 = v0;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4780, &qword_26A8780E0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v2);
  v52[1] = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v52 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4788, &qword_26A8780E8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v11 = v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4790, &qword_26A8780F0);
  OUTLINED_FUNCTION_79(v12);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  v15 = v52 - v14;
  v16 = sub_26A84E7E8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BasicPickerControlView(0);
  sub_26A84E828();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_26A54A088();
    v52[0] = sub_26A850F08();
    v20 = sub_26A850E18();
    v21 = sub_26A8502F8();
    KeyPath = swift_getKeyPath();
    sub_26A851448();
    sub_26A84F028();
    v55 = 0;
    *&v54[6] = v56;
    *&v54[22] = v57;
    *&v54[38] = v58;
    v23 = sub_26A850D98();
    v24 = sub_26A850248();
    v25 = *(v0 + 224);
    v26 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4798, &unk_26A887E40) + 36)];
    v27 = *(sub_26A84F5F8() + 20);
    v28 = *MEMORY[0x277CE0118];
    sub_26A84FB88();
    OUTLINED_FUNCTION_46();
    (*(v29 + 104))(&v26[v27], v28);
    *v26 = v25;
    *(v26 + 1) = v25;
    *&v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58, &unk_26A857A00) + 36)] = 256;
    v30 = *&v54[16];
    *(v6 + 42) = *v54;
    *v6 = v52[0];
    *(v6 + 1) = v20;
    *(v6 + 2) = KeyPath;
    *(v6 + 3) = v21;
    *(v6 + 4) = 0x3FF0000000000000;
    *(v6 + 20) = 0;
    *(v6 + 58) = v30;
    *(v6 + 74) = *&v54[32];
    *(v6 + 11) = *&v54[46];
    *(v6 + 12) = v23;
    v6[104] = v24;
    sub_26A850298();
    sub_26A84ED48();
    OUTLINED_FUNCTION_12_35(&v6[*(v53 + 36)], v31, v32, v33, v34);
    sub_26A4D7E54();
    sub_26A6E7FC4();
    v35 = sub_26A851248();
    sub_26A54A088();
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    v36 = sub_26A8502F8();
    v37 = swift_getKeyPath();
    (*(v17 + 16))(v11, v19, v16);
    v38 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4800, &qword_26A878158) + 36)];
    *v38 = v37;
    v38[1] = v36;
    v39 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4808, &qword_26A878160) + 36)];
    *v39 = 0x3FF0000000000000;
    *(v39 + 4) = 0;
    v40 = *(v1 + 224);
    v41 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4810, &qword_26A878168) + 36)];
    v42 = *(sub_26A84F5F8() + 20);
    v43 = *MEMORY[0x277CE0118];
    sub_26A84FB88();
    OUTLINED_FUNCTION_46();
    (*(v44 + 104))(&v41[v42], v43);
    *v41 = v40;
    *(v41 + 1) = v40;
    *&v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58, &unk_26A857A00) + 36)] = 256;
    sub_26A851448();
    sub_26A84F028();
    v45 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4818, &qword_26A878170) + 36)];
    v46 = v57;
    *v45 = v56;
    *(v45 + 1) = v46;
    *(v45 + 2) = v58;
    sub_26A850298();
    sub_26A84ED48();
    OUTLINED_FUNCTION_12_35(&v11[*(v7 + 36)], v47, v48, v49, v50);
    sub_26A4D7E54();
    sub_26A6E8448();
    v35 = sub_26A851248();
    sub_26A54A088();
    (*(v17 + 8))(v19, v16);
  }

  return v35;
}

double sub_26A6E66F0@<D0>(uint64_t a1@<X8>)
{
  v20 = sub_26A6E60EC();
  type metadata accessor for BasicPickerControlView(0);
  sub_26A84E848();
  sub_26A53ACC8();
  v2 = sub_26A850898();
  v4 = v3;
  v6 = v5;
  sub_26A8502F8();
  v7 = sub_26A850738();
  v9 = v8;
  v11 = v10;

  sub_26A4EC448(v2, v4, v6 & 1);

  sub_26A8503C8();
  v12 = sub_26A850578();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_26A4EC448(v7, v9, v11 & 1);

  *a1 = v20;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14;
  *(a1 + 24) = v16 & 1;
  *(a1 + 32) = v18;

  sub_26A4EF6C0(v12, v14, v16 & 1);

  sub_26A4EC448(v12, v14, v16 & 1);

  return result;
}

double sub_26A6E6880@<D0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B48C0, &qword_26A8781F0) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v2);
  v4 = (&v38 - v3);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B48B0, &qword_26A8781E8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B48A0, &qword_26A8781E0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4890, &qword_26A8781D8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4880, &qword_26A8781D0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  v18 = sub_26A84E858();
  v19 = (v4 + *(v1 + 44));
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B48E0, &unk_26A878200) + 28);
  sub_26A84FC48();
  v21 = sub_26A84FC88();
  __swift_storeEnumTagSinglePayload(v19 + v20, 0, 1, v21);
  *v19 = swift_getKeyPath();
  *v4 = v18;
  v22 = sub_26A84E868();
  if (!v22)
  {
    v22 = sub_26A850E18();
  }

  KeyPath = swift_getKeyPath();
  sub_26A4D7EA8();
  v24 = &v7[*(v41 + 36)];
  *v24 = KeyPath;
  v24[1] = v22;
  v25 = sub_26A8502F8();
  v26 = swift_getKeyPath();
  sub_26A4D7EA8();
  v27 = &v10[*(v40 + 36)];
  *v27 = v26;
  v27[1] = v25;
  sub_26A4D7EA8();
  v28 = &v13[*(v39 + 36)];
  *v28 = 0x3FF0000000000000;
  *(v28 + 4) = 0;
  v29 = *(v42 + 224);
  v30 = &v17[*(v14 + 36)];
  v31 = *(sub_26A84F5F8() + 20);
  v32 = *MEMORY[0x277CE0118];
  sub_26A84FB88();
  OUTLINED_FUNCTION_46();
  (*(v33 + 104))(&v30[v31], v32);
  *v30 = v29;
  *(v30 + 1) = v29;
  *&v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58, &unk_26A857A00) + 36)] = 256;
  sub_26A4D7EA8();
  sub_26A851448();
  sub_26A84F028();
  v34 = v43;
  sub_26A4D7EA8();
  v35 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4868, &qword_26A8781C8) + 36));
  v36 = v45;
  *v35 = v44;
  v35[1] = v36;
  result = *&v46;
  v35[2] = v46;
  return result;
}

uint64_t sub_26A6E6C78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B46E0, &qword_26A878058);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v2);
  v4 = &v9[-v3];
  v10 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B46E8, &qword_26A878060);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B46F0, &qword_26A878068);
  v6 = sub_26A84F9C8();
  v7 = sub_26A4D7DCC();
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v14 = MEMORY[0x277CDDDA0];
  swift_getOpaqueTypeConformance2();
  sub_26A8504D8();
  *&v4[*(v1 + 36)] = 256;
  sub_26A6E7BE8();
  sub_26A850B68();
  return sub_26A4AF154();
}

uint64_t sub_26A6E6DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_26A84F9C8();
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  MEMORY[0x28223BE20](v3);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4718, &qword_26A878078);
  MEMORY[0x28223BE20](v32);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B46F0, &qword_26A878068);
  v9 = *(v8 - 8);
  v33 = v8;
  v34 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = sub_26A6E59B0();
  v39 = a1;
  v44 = v12;
  v45 = v13;
  v46 = v14;
  v15 = sub_26A84FA78();
  sub_26A6E66F0(&v40);
  v31 = v40;
  v16 = v41;
  v17 = v42;
  v18 = v43;
  v48 = 1;
  v47 = v42;
  v19 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4720, &qword_26A878080) + 36)];
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4728, &qword_26A878088) + 28);
  v21 = sub_26A850708();
  __swift_storeEnumTagSinglePayload(v19 + v20, 1, 1, v21);
  *v19 = swift_getKeyPath();
  *v7 = v15;
  *(v7 + 1) = 0;
  v7[16] = 1;
  *(v7 + 17) = v40;
  *(v7 + 5) = *(&v40 + 3);
  *(v7 + 24) = v31;
  *(v7 + 5) = v16;
  v7[48] = v17;
  *(v7 + 49) = v49[0];
  *(v7 + 13) = *(v49 + 3);
  *(v7 + 7) = v18;
  LOBYTE(v15) = sub_26A850268();
  sub_26A84ED48();
  v22 = &v7[*(v32 + 36)];
  *v22 = v15;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4730, &qword_26A8780C0);
  sub_26A6E7D4C();
  sub_26A6E7EBC();
  sub_26A851188();
  v27 = v35;
  sub_26A84F9B8();
  sub_26A4D7DCC();
  v28 = v33;
  v29 = v36;
  sub_26A8509B8();
  (*(v37 + 8))(v27, v29);
  return (*(v34 + 8))(v11, v28);
}

uint64_t sub_26A6E71AC(uint64_t a1)
{
  v1 = type metadata accessor for BasicPickerControlView(0);
  MEMORY[0x28223BE20](v1 - 8);
  sub_26A84E8A8();
  sub_26A56C2B8();

  swift_getKeyPath();
  sub_26A6E7718();
  v2 = swift_allocObject();
  sub_26A6E878C();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_26A6E87E0;
  *(v3 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4850, &qword_26A8781B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4858, &qword_26A8781C0);
  sub_26A4D7DCC();
  sub_26A615D78();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4768, &qword_26A8780D0);
  sub_26A4D7DCC();
  swift_getOpaqueTypeConformance2();
  return sub_26A8512F8();
}

uint64_t sub_26A6E7498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4768, &qword_26A8780D0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14[-v10];
  v17 = a2;
  v15 = a3;
  v16 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4868, &qword_26A8781C8);
  sub_26A6E889C();
  sub_26A850FC8();
  (*(v9 + 32))(a4, v11, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B48E8, &qword_26A878210);
  v13 = a4 + *(result + 36);
  *v13 = a1;
  *(v13 + 8) = 1;
  return result;
}

uint64_t sub_26A6E761C@<X0>(uint64_t a1@<X8>)
{
  sub_26A84E878();
  sub_26A53ACC8();
  result = sub_26A850898();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_26A6E7688(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD9B8, &qword_26A85F480);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_26A6E7718()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

unint64_t sub_26A6E776C()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A6E77B0()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_1_4();
  (*(v2 + 8))(v0);
  return v0;
}

void sub_26A6E7828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26A6E78F8(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    sub_26A6E7948(319, &qword_2803AC3D8, MEMORY[0x277CDF3E0]);
    if (v5 <= 0x3F)
    {
      sub_26A84E8B8();
      if (v6 <= 0x3F)
      {
        sub_26A84E8C8();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A6E78F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_2803B46B0)
  {
    v4 = type metadata accessor for EnvironmentConstant(0, &type metadata for PickerControlConstants, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_2803B46B0);
    }
  }
}

void sub_26A6E7948(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26A84EEA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_26A6E799C()
{
  result = qword_2803B46B8;
  if (!qword_2803B46B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4678, &qword_26A877F98);
    sub_26A6E7A54();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B46B8);
  }

  return result;
}

unint64_t sub_26A6E7A54()
{
  result = qword_2803B46C0;
  if (!qword_2803B46C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B46C8, &qword_26A877FF8);
    sub_26A6E7AD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B46C0);
  }

  return result;
}

unint64_t sub_26A6E7AD8()
{
  result = qword_2803B46D0;
  if (!qword_2803B46D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B46D8, &qword_26A878000);
    sub_26A6E776C();
    sub_26A6E776C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B46D0);
  }

  return result;
}

unint64_t sub_26A6E7BE8()
{
  result = qword_2803B4700;
  if (!qword_2803B4700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B46E0, &qword_26A878058);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4700);
  }

  return result;
}

uint64_t sub_26A6E7CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_79(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  sub_26A4D7E54();
  return a7(v11);
}

unint64_t sub_26A6E7D4C()
{
  result = qword_2803B4738;
  if (!qword_2803B4738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4718, &qword_26A878078);
    sub_26A6E7DD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4738);
  }

  return result;
}

unint64_t sub_26A6E7DD8()
{
  result = qword_2803B4740;
  if (!qword_2803B4740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4720, &qword_26A878080);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4740);
  }

  return result;
}

unint64_t sub_26A6E7EBC()
{
  result = qword_2803B4760;
  if (!qword_2803B4760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4730, &qword_26A8780C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4768, &qword_26A8780D0);
    sub_26A4D7DCC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4760);
  }

  return result;
}

unint64_t sub_26A6E7FC4()
{
  result = qword_2803B47A0;
  if (!qword_2803B47A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4780, &qword_26A8780E0);
    sub_26A6E8050();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B47A0);
  }

  return result;
}

unint64_t sub_26A6E8050()
{
  result = qword_2803B47A8;
  if (!qword_2803B47A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4798, &unk_26A887E40);
    sub_26A6E8108();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B47A8);
  }

  return result;
}

unint64_t sub_26A6E8108()
{
  result = qword_2803B47B0;
  if (!qword_2803B47B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B47B8, &qword_26A878128);
    sub_26A6E81C0();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B47B0);
  }

  return result;
}

unint64_t sub_26A6E81C0()
{
  result = qword_2803B47C0;
  if (!qword_2803B47C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B47C8, &qword_26A878130);
    sub_26A6E824C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B47C0);
  }

  return result;
}

unint64_t sub_26A6E824C()
{
  result = qword_2803B47D0;
  if (!qword_2803B47D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B47D8, &qword_26A878138);
    sub_26A6E82D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B47D0);
  }

  return result;
}

unint64_t sub_26A6E82D8()
{
  result = qword_2803B47E0;
  if (!qword_2803B47E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B47E8, &qword_26A878140);
    sub_26A6E8390();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B47E0);
  }

  return result;
}

unint64_t sub_26A6E8390()
{
  result = qword_2803B47F0;
  if (!qword_2803B47F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B47F8, &unk_26A878148);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B47F0);
  }

  return result;
}

unint64_t sub_26A6E8448()
{
  result = qword_2803B4820;
  if (!qword_2803B4820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4788, &qword_26A8780E8);
    sub_26A6E84D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4820);
  }

  return result;
}

unint64_t sub_26A6E84D4()
{
  result = qword_2803B4828;
  if (!qword_2803B4828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4818, &qword_26A878170);
    sub_26A6E8560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4828);
  }

  return result;
}

unint64_t sub_26A6E8560()
{
  result = qword_2803B4830;
  if (!qword_2803B4830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4810, &qword_26A878168);
    sub_26A6E8618();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4830);
  }

  return result;
}

unint64_t sub_26A6E8618()
{
  result = qword_2803B4838;
  if (!qword_2803B4838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4808, &qword_26A878160);
    sub_26A6E86A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4838);
  }

  return result;
}

unint64_t sub_26A6E86A4()
{
  result = qword_2803B4840;
  if (!qword_2803B4840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4800, &qword_26A878158);
    sub_26A6E776C();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4840);
  }

  return result;
}

uint64_t sub_26A6E878C()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A6E87E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for BasicPickerControlView(0);
  OUTLINED_FUNCTION_79(v7);
  v9 = v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return sub_26A6E7498(a1, a2, v9, a3);
}

unint64_t sub_26A6E889C()
{
  result = qword_2803B4870;
  if (!qword_2803B4870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4868, &qword_26A8781C8);
    sub_26A6E8928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4870);
  }

  return result;
}

unint64_t sub_26A6E8928()
{
  result = qword_2803B4878;
  if (!qword_2803B4878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4880, &qword_26A8781D0);
    sub_26A6E89E0();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4878);
  }

  return result;
}

unint64_t sub_26A6E89E0()
{
  result = qword_2803B4888;
  if (!qword_2803B4888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4890, &qword_26A8781D8);
    sub_26A6E8A6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4888);
  }

  return result;
}

unint64_t sub_26A6E8A6C()
{
  result = qword_2803B4898;
  if (!qword_2803B4898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B48A0, &qword_26A8781E0);
    sub_26A6E8B24();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4898);
  }

  return result;
}

unint64_t sub_26A6E8B24()
{
  result = qword_2803B48A8;
  if (!qword_2803B48A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B48B0, &qword_26A8781E8);
    sub_26A6E8BDC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B48A8);
  }

  return result;
}

unint64_t sub_26A6E8BDC()
{
  result = qword_2803B48B8;
  if (!qword_2803B48B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B48C0, &qword_26A8781F0);
    sub_26A6E8C94();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B48B8);
  }

  return result;
}

unint64_t sub_26A6E8C94()
{
  result = qword_2803B48C8;
  if (!qword_2803B48C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B48D0, &qword_26A8781F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B48C8);
  }

  return result;
}

uint64_t sub_26A6E8D10@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BasicPickerControlView(0);
  OUTLINED_FUNCTION_79(v2);

  return sub_26A6E5B80(a1);
}

uint64_t objectdestroy_45Tm()
{
  type metadata accessor for BasicPickerControlView(0);
  OUTLINED_FUNCTION_37_0();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  v4 = v1 + v3;
  OUTLINED_FUNCTION_3_65();

  v5 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_1_4();
    (*(v6 + 8))(v4 + v5);
  }

  else
  {
  }

  v7 = *(v0 + 24);
  sub_26A84E8B8();
  OUTLINED_FUNCTION_1_4();
  (*(v8 + 8))(v4 + v7);

  return swift_deallocObject();
}

uint64_t sub_26A6E8EDC(uint64_t *a1)
{
  v3 = type metadata accessor for BasicPickerControlView(0);
  OUTLINED_FUNCTION_79(v3);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return sub_26A6E5BC4(a1, v5, v6, v7);
}

uint64_t sub_26A6E8F4C(uint64_t a1)
{
  v4 = *(type metadata accessor for BasicPickerControlView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26A6156E0;

  return sub_26A6E5DA0(a1, v6, v7, v1 + v5, v8);
}

uint64_t OUTLINED_FUNCTION_3_65()
{
  sub_26A49035C(*v0, *(v0 + 8));
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  sub_26A49035C(*(v0 + 64), *(v0 + 72));
  sub_26A49035C(*(v0 + 80), *(v0 + 88));
  sub_26A49035C(*(v0 + 96), *(v0 + 104));
  sub_26A49035C(*(v0 + 112), *(v0 + 120));
  sub_26A49035C(*(v0 + 128), *(v0 + 136));
  sub_26A49035C(*(v0 + 144), *(v0 + 152));
}

void OUTLINED_FUNCTION_12_35(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = v5;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = 0;
}

uint64_t sub_26A6E911C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A5DA738();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A6E9174@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SystemTextClarificationTitleView(0);
  sub_26A4DBD68(v1 + *(v10 + 20), v9, &unk_2803A9190, &unk_26A854C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v9, a1, &qword_2803A91C8, &unk_26A856820);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26A6E935C()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SystemTextClarificationTitleView(0) + 24);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A6E94B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SystemTextClarificationTitleView(0);
  sub_26A4DBD68(v1 + *(v10 + 28), v9, &qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_26A6E96B8()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for SystemTextClarificationTitleView(0) + 32));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_26A851EA8();
  v8 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A49035C(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t SystemTextClarificationTitleView.init(text1:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_2803A9000 != -1)
  {
    OUTLINED_FUNCTION_1_76(&qword_2803A9000);
  }

  v4 = xmmword_2803D2728;
  v5 = qword_2803D2738;
  v6 = unk_2803D2740;
  v7 = qword_2803D2748;

  sub_26A6AEE74(v16);
  memcpy(a2, v16, 0xC0uLL);
  *(a2 + 192) = v7;
  *(a2 + 200) = v4;
  *(a2 + 216) = v5;
  *(a2 + 224) = v6;
  *(a2 + 232) = v7;
  v8 = type metadata accessor for SystemTextClarificationTitleView(0);
  v9 = v8[5];
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_162(KeyPath);
  v11 = v8[7];
  *(a2 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v12 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v12);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  *(a2 + v8[9]) = (*(v14 + 8))(v13, v14);

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SystemTextClarificationTitleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  OUTLINED_FUNCTION_79(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v3);
  v5 = &v48 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  OUTLINED_FUNCTION_79(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v7);
  v9 = &v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A99C8, &qword_26A8558E0);
  OUTLINED_FUNCTION_79(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B48F0, &qword_26A878350) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  v49 = &v48 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B48F8, &qword_26A878358) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  v50 = &v48 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4900, &qword_26A878360) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v21);
  v52 = &v48 - v22;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4908, &qword_26A878368) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v23);
  v25 = &v48 - v24;
  v26 = *(v1 + 192);
  sub_26A6E9174(v9);
  v27 = sub_26A6E935C();
  v28 = sub_26A61B05C(v27, &unk_287B13068);
  v29 = 0x4024000000000000;
  if (v28)
  {
    v30 = v26;
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  v55 = v30;
  v56 = v30;
  v57 = v29;
  v58 = v30;
  v59 = !v28;
  sub_26A6E935C();
  sub_26A6E94B0(v5);
  v31 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v31);
  v54 = v1;
  sub_26A4CCB48();
  KeyPath = swift_getKeyPath();
  v33 = sub_26A6E935C();
  v34 = sub_26A61B05C(v33, &unk_287B13068);
  v35 = v49;
  sub_26A4DBDB4(v13, v49, &qword_2803A99C8, &qword_26A8558E0);
  v36 = v35 + *(v14 + 44);
  *v36 = KeyPath;
  *(v36 + 8) = v34;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_26A68CF1C;
  *(v37 + 24) = 0;
  v38 = *(v17 + 44);
  v39 = v50;
  v40 = &v50[v38];
  *(v40 + 2) = swift_getKeyPath();
  v40[24] = 0;
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0) + 40);
  *&v40[v41] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v42 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v42);
  *v40 = sub_26A4D1F7C;
  *(v40 + 1) = v37;
  sub_26A4DBDB4(v35, v39, &qword_2803B48F0, &qword_26A878350);
  v43 = v52;
  sub_26A4DBDB4(v39, v52, &qword_2803B48F8, &qword_26A878358);
  *(v43 + *(v20 + 44)) = 53;
  v44 = swift_getKeyPath();
  v45 = swift_getKeyPath();
  sub_26A4DBDB4(v43, v25, &qword_2803B4900, &qword_26A878360);
  v46 = &v25[*(v51 + 44)];
  *v46 = v44;
  v46[8] = 0;
  *(v46 + 2) = v45;
  *(v46 + 12) = 256;
  return sub_26A4DBDB4(v25, v53, &qword_2803B4908, &qword_26A878368);
}

void *sub_26A6E9EB8@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for SystemTextClarificationTitleView(0) + 36));
  if (qword_2803A9040 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803D2850, &v6[25], &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(__src);
  memcpy(&v6[1], __src, 0xBFuLL);
  v6[35] = sub_26A80A810;
  v6[36] = 0;
  v6[0] = v4;

  sub_26A6E96B8();
  sub_26A851418();
  sub_26A84F628();
  memcpy(__dst, v6, 0x128uLL);
  result = memcpy(a2, __dst, 0x198uLL);
  a2[204] = 256;
  return result;
}

uint64_t sub_26A6EA068()
{
  v61 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v58 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v57 = (v4 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  v6 = OUTLINED_FUNCTION_79(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v56 - v10;
  v12 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_41();
  v18 = v17 - v16;
  v19 = type metadata accessor for SystemTextClarificationTitleView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_41();
  v23 = v22 - v21;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAB28, &qword_26A856C20);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v24);
  v26 = &v56 - v25;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAB30, &qword_26A856C28);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v27);
  v64 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v63 = &v56 - v30;
  v62 = v0;
  sub_26A84DD38();
  v31 = TextProperty.asAnyView()();
  (*(v14 + 8))(v18, v12);
  if (qword_2803A9000 != -1)
  {
    OUTLINED_FUNCTION_1_76(&qword_2803A9000);
  }

  v32 = xmmword_2803D2728;
  v33 = qword_2803D2738;
  v34 = unk_2803D2740;
  v35 = qword_2803D2748;

  sub_26A6AEE74(__src);
  memcpy(v23, __src, 0xC0uLL);
  *(v23 + 192) = v35;
  *(v23 + 200) = v32;
  *(v23 + 216) = v33;
  *(v23 + 224) = v34;
  *(v23 + 232) = v35;
  v36 = v19[5];
  *(v23 + v36) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_162(KeyPath);
  v38 = v19[7];
  *(v23 + v38) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v39 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v39);
  *(v23 + v19[9]) = v31;
  sub_26A84DD48();
  sub_26A4DBDB4(v11, v8, &qword_2803B3800, &unk_26A856760);
  v40 = v61;
  if (__swift_getEnumTagSinglePayload(v8, 1, v61) == 1)
  {
    sub_26A4DBD10(v8, &qword_2803B3800, &unk_26A856760);
    v41 = swift_getKeyPath();
    v42 = &v26[*(v60 + 36)];
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v44 = type metadata accessor for ActionType(0);
    __swift_storeEnumTagSinglePayload(v42 + v43, 1, 1, v44);
    *v42 = v41;
  }

  else
  {
    v45 = *(v58 + 32);
    v46 = v57;
    v45(v57, v8, v40);
    v47 = swift_getKeyPath();
    v48 = &v26[*(v60 + 36)];
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v45(v48 + v49, v46, v40);
    v50 = type metadata accessor for ActionType(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v48 + v49, 0, 1, v50);
    *v48 = v47;
  }

  sub_26A6EABB8(v23, v26);
  v51 = sub_26A84DD18();
  v52 = v63;
  sub_26A4DE3B4(v51, v53);

  sub_26A4DBD10(v26, &qword_2803AAB28, &qword_26A856C20);
  sub_26A4DBD68(v52, v64, &qword_2803AAB30, &qword_26A856C28);
  sub_26A6EAC1C();
  v54 = sub_26A851248();
  sub_26A4DBD10(v52, &qword_2803AAB30, &qword_26A856C28);
  return v54;
}

uint64_t type metadata accessor for SystemTextClarificationTitleView(uint64_t a1)
{
  result = qword_2803B4918;
  if (!qword_2803B4918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A6EA6E0(uint64_t a1)
{
  result = sub_26A6EAE48(&qword_2803B4910, MEMORY[0x277D63610], MEMORY[0x277D63608]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A6EA760(uint64_t a1)
{
  sub_26A6EA8B4(319, &qword_2803B4928, &type metadata for SystemTextConstants, type metadata accessor for EnvironmentConstant);
  if (v1 <= 0x3F)
  {
    sub_26A4D27F4(319);
    if (v2 <= 0x3F)
    {
      sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
      if (v3 <= 0x3F)
      {
        sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
        if (v4 <= 0x3F)
        {
          sub_26A6EA8B4(319, &qword_2803AB0C8, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26A6EA8B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_26A6EA904()
{
  result = qword_2803B4930;
  if (!qword_2803B4930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4908, &qword_26A878368);
    sub_26A6EA990();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4930);
  }

  return result;
}

unint64_t sub_26A6EA990()
{
  result = qword_2803B4938;
  if (!qword_2803B4938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4900, &qword_26A878360);
    sub_26A6EAA1C();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4938);
  }

  return result;
}

unint64_t sub_26A6EAA1C()
{
  result = qword_2803B4940;
  if (!qword_2803B4940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B48F8, &qword_26A878358);
    sub_26A6EAAD4();
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8, &qword_26A8575D0, &unk_26A869CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4940);
  }

  return result;
}

unint64_t sub_26A6EAAD4()
{
  result = qword_2803B4948;
  if (!qword_2803B4948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B48F0, &qword_26A878350);
    sub_26A4DBCC8(&qword_2803B4950, &qword_2803A99C8, &qword_26A8558E0, &protocol conformance descriptor for ComponentWithAction<A>);
    sub_26A4DBCC8(&qword_28157FB50, &unk_2803B31B0, &unk_26A858ED0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4948);
  }

  return result;
}

uint64_t sub_26A6EABB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemTextClarificationTitleView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A6EAC1C()
{
  result = qword_2803B4958;
  if (!qword_2803B4958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAB30, &qword_26A856C28);
    sub_26A6EACD4();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438, &unk_26A8555B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4958);
  }

  return result;
}

unint64_t sub_26A6EACD4()
{
  result = qword_2803B4960;
  if (!qword_2803B4960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAB20, &qword_26A856C18);
    sub_26A6EAD60();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4960);
  }

  return result;
}

unint64_t sub_26A6EAD60()
{
  result = qword_2803B4968;
  if (!qword_2803B4968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAB28, &qword_26A856C20);
    sub_26A6EAE48(&qword_2803B4970, type metadata accessor for SystemTextClarificationTitleView, &protocol conformance descriptor for SystemTextClarificationTitleView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0, &qword_26A859400, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4968);
  }

  return result;
}

uint64_t sub_26A6EAE48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_1_76(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_26A6EAEB0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = v3;
  sub_26A84EF18();
  v7 = v29;
  v8 = v29 * 0.5;
  v9 = v30;
  v10 = DWORD1(v30);
  v11 = *(&v30 + 1);
  v12 = v31;
  v13 = sub_26A851448();
  v15 = v14;
  *v32 = v29 * 0.5;
  *(v32 + 1) = v29;
  v32[1] = v30;
  *v33 = v31;
  *&v33[16] = a1;
  *&v33[20] = 256;
  *v28 = v31;
  *&v28[14] = *&v33[14];
  v26 = v32[0];
  v27 = v30;
  __src[2] = *v28;
  __src[1] = v30;
  __src[0] = v32[0];
  *&__src[3] = *&v28[16];
  *(&__src[3] + 1) = v13;
  *&__src[4] = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B49F0, &qword_26A8785F0);
  (*(*(v16 - 8) + 16))(a2, v4, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4A58, &qword_26A878620);
  memcpy((a2 + *(v17 + 36)), __src, 0x48uLL);
  __src[5] = v32[0];
  __src[6] = v30;
  __src[7] = *v28;
  v35 = *&v28[16];
  v36 = v13;
  v37 = v15;
  sub_26A505CD4(v32, v19, &qword_2803B4A70, &qword_26A878630);
  sub_26A505CD4(__src, v19, &qword_2803B4A68, &qword_26A878628);
  sub_26A505D1C();
  *v19 = v8;
  *&v19[1] = v7;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = a1;
  v25 = 256;
  return sub_26A505D1C();
}

uint64_t sub_26A6EB0C8@<X0>(uint64_t a1@<X0>, uint64_t x8_0@<X8>)
{
  sub_26A84EF18();

  v5 = sub_26A851448();
  *&v14 = v8 * 0.5;
  *(&v14 + 1) = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = a1;
  v21 = 256;
  sub_26A6EB1D4(&v14, v5, v6, x8_0);
  v22 = v8 * 0.5;
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = v12;
  v28 = v13;
  v29 = a1;
  v30 = 256;
  return sub_26A505D1C();
}

uint64_t sub_26A6EB1D4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = a1[2];
  v16 = a1[1];
  *v17 = v10;
  *&v17[10] = *(a1 + 42);
  v15 = *a1;
  __src[0] = v15;
  __src[1] = v16;
  __src[2] = *v17;
  __src[3] = *&v17[16];
  *&__src[4] = a2;
  *(&__src[4] + 1) = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4A80, &qword_26A878640);
  (*(*(v11 - 8) + 16))(a4, v5, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4A88, &qword_26A878648);
  memcpy((a4 + *(v12 + 36)), __src, 0x50uLL);
  __src[5] = v15;
  __src[6] = v16;
  __src[7] = *v17;
  __src[8] = *&v17[16];
  v19 = a2;
  v20 = a3;
  sub_26A505CD4(a1, v14, &qword_2803B4A78, &qword_26A878638);
  sub_26A505CD4(__src, v14, &qword_2803B4A90, &qword_26A878650);
  return sub_26A505D1C();
}

uint64_t sub_26A6EB354@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v97 = a1;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4AB0, &unk_26A8786D0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  v85 = v4 - v5;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27_1();
  v86 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1F98, &unk_26A86EB00);
  OUTLINED_FUNCTION_79(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_82();
  v95 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1FA0, &unk_26A8786E0);
  OUTLINED_FUNCTION_79(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_82();
  v93 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1FA8, &unk_26A86EB10);
  OUTLINED_FUNCTION_79(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_82();
  v91 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1FB0, &qword_26A8786F0);
  OUTLINED_FUNCTION_79(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_82();
  v89 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4AB8, &qword_26A8786F8);
  v21 = OUTLINED_FUNCTION_79(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_0();
  v90 = v22 - v23;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v24);
  v26 = &v84 - v25;
  v27 = sub_26A84AA38();
  v28 = OUTLINED_FUNCTION_79(v27);
  MEMORY[0x28223BE20](v28);
  v96 = sub_26A84A9C8();
  OUTLINED_FUNCTION_15();
  v94 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_0();
  v88 = v31 - v32;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_27_1();
  v92 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4AC0, &qword_26A878700);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6_0();
  v38 = v36 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &v84 - v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4AC8, &qword_26A878708);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6_0();
  v45 = v43 - v44;
  MEMORY[0x28223BE20](v46);
  v48 = &v84 - v47;
  v49 = v2;
  v50 = sub_26A4EC1C4(v2, &selRef_formattedTextPieces, &qword_2803B4B48, 0x277D4C3A0);
  if (v50)
  {
    v51 = v50;
    if (sub_26A73670C())
    {
      *&v98 = v51;
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4B30, &qword_26A878790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4978, &qword_26A8784D0);
      OUTLINED_FUNCTION_1_8();
      sub_26A506A30();
      sub_26A6ED6B0();
      sub_26A6EC6F4();
      sub_26A8512F8();
      sub_26A505CD4(v48, v45, &qword_2803B4AC8, &qword_26A878708);
      sub_26A6ED6FC();
      v52 = sub_26A851248();
      result = sub_26A505D1C();
LABEL_22:
      *v97 = v52;
      return result;
    }
  }

  [v49 starRating];
  if (v54 > 0.5)
  {
    [v49 starRating];
    v56 = v55;
    *v41 = sub_26A84FA78();
    *(v41 + 1) = 0;
    v41[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4B00, &qword_26A878740);
    v98 = xmmword_26A8784C0;
    swift_getKeyPath();
    *(swift_allocObject() + 16) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4B08, &qword_26A878760);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4B10, &qword_26A878768);
    sub_26A6ED5A0();
    sub_26A6ED62C();
    OUTLINED_FUNCTION_12_36();
    sub_26A8512F8();
    sub_26A505CD4(v41, v38, &qword_2803B4AC0, &qword_26A878700);
    OUTLINED_FUNCTION_2_74();
    sub_26A506A30();
    v52 = sub_26A851248();
LABEL_7:
    result = sub_26A505D1C();
    goto LABEL_22;
  }

  sub_26A6ED4E8(v49, &selRef_contentAdvisory);
  if (v57)
  {
    sub_26A84AA28();
    v58 = v92;
    sub_26A84A9D8();
    v59 = sub_26A850608();
    OUTLINED_FUNCTION_20_24(v89, v60, v61, v59);
    v62 = sub_26A850618();
    OUTLINED_FUNCTION_20_24(v91, v63, v64, v62);
    v65 = sub_26A850648();
    OUTLINED_FUNCTION_20_24(v93, v66, v67, v65);
    v68 = sub_26A8505E8();
    OUTLINED_FUNCTION_20_24(v95, v69, v70, v68);
    sub_26A850658();
    v71 = sub_26A850668();
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v71);
    sub_26A505CD4(v26, v90, &qword_2803B4AB8, &qword_26A8786F8);
    sub_26A6ED544();
    sub_26A84A9E8();
    sub_26A505D1C();
    v72 = v94;
    v73 = v96;
    (*(v94 + 16))(v88, v58, v96);
    sub_26A850888();
    OUTLINED_FUNCTION_17_24();
    result = [v49 maxLines];
    if ((result & 0x8000000000000000) == 0)
    {
      KeyPath = swift_getKeyPath();
      OUTLINED_FUNCTION_9_46(KeyPath);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B49C8, &unk_26A8784F8);
      sub_26A6ECA88();
      OUTLINED_FUNCTION_12_36();
      v52 = sub_26A851248();
      result = (*(v72 + 8))(v58, v73);
      goto LABEL_22;
    }

    __break(1u);
  }

  else
  {
    v75 = sub_26A4EC1C4(v49, &selRef_icons, &qword_2803B4AF0, 0x277D4C3B0);
    if (v75)
    {
      v76 = v75;
      if (sub_26A73670C())
      {
        v77 = sub_26A84FA78();
        v78 = v86;
        *v86 = v77;
        *(v78 + 8) = 0;
        *(v78 + 16) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4AD0, &unk_26A878710);
        *&v98 = v76;
        swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4AD8, &qword_26A878738);
        OUTLINED_FUNCTION_1_8();
        sub_26A506A30();
        sub_26A6ED6B0();
        OUTLINED_FUNCTION_12_36();
        sub_26A8512F8();
        sub_26A505CD4(v78, v85, &qword_2803B4AB0, &unk_26A8786D0);
        OUTLINED_FUNCTION_2_74();
        sub_26A506A30();
        v52 = sub_26A851248();
        goto LABEL_7;
      }
    }

    v79 = sub_26A6ED4E8(v49, &selRef_text);
    if (v80)
    {
      v81 = v79;
    }

    else
    {
      v81 = 0;
    }

    v82 = 0xE000000000000000;
    if (v80)
    {
      v82 = v80;
    }

    *&v98 = v81;
    *(&v98 + 1) = v82;
    sub_26A53ACC8();
    sub_26A850898();
    OUTLINED_FUNCTION_17_24();
    result = [v49 maxLines];
    if ((result & 0x8000000000000000) == 0)
    {
      v83 = swift_getKeyPath();
      OUTLINED_FUNCTION_9_46(v83);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B49C8, &unk_26A8784F8);
      sub_26A6ECA88();
      OUTLINED_FUNCTION_12_36();
      result = sub_26A851248();
      v52 = result;
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26A6EBE10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4A98, &qword_26A878658);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v7 = &v65 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B49A0, &qword_26A8784E0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_82();
  v67 = v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4AA0, &qword_26A878660);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_82();
  v76 = v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B49C0, &qword_26A8784F0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_82();
  v66 = v14;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4AA8, &qword_26A878668);
  OUTLINED_FUNCTION_15();
  v75 = v15;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_82();
  v82 = v17;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B49B0, &qword_26A8784E8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_0();
  v73 = v19 - v20;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_27_1();
  v81 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4990, &qword_26A8784D8);
  v24 = OUTLINED_FUNCTION_79(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_0();
  v78 = v25 - v26;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_27_1();
  v79 = v28;
  v29 = sub_26A6ED4E8(v1, &selRef_text);
  if (v30)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0;
  }

  v32 = 0xE000000000000000;
  if (v30)
  {
    v32 = v30;
  }

  v83 = v31;
  v84 = v32;
  sub_26A53ACC8();
  v33 = sub_26A850898();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  result = [v1 maxLines];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v41 = result;
    v68 = v4;
    v69 = v8;
    v70 = v7;
    v71 = a1;
    KeyPath = swift_getKeyPath();
    v83 = v33;
    v84 = v35;
    v85 = v37 & 1;
    v86 = v39;
    v87 = KeyPath;
    v88 = v41;
    v89 = 0;
    [v2 isBold];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B49C8, &unk_26A8784F8);
    sub_26A6ECA88();
    v43 = v2;
    sub_26A850B98();
    sub_26A4EC448(v33, v35, v37 & 1);

    if ([v2 isEmphasized])
    {
      v44 = sub_26A84FEA8();
      v45 = v75;
      v46 = v66;
      v47 = OUTLINED_FUNCTION_15_27();
      v48(v47);
      *(v46 + *(v74 + 36)) = v44;
      sub_26A505CD4(v46, v76, &qword_2803B49C0, &qword_26A8784F0);
      swift_storeEnumTagMultiPayload();
      sub_26A6EC994();
      OUTLINED_FUNCTION_3_66();
      v49 = v73;
      v50 = v45;
      sub_26A84FDF8();
      sub_26A505D1C();
    }

    else
    {
      v50 = v75;
      v51 = OUTLINED_FUNCTION_15_27();
      v52(v51);
      swift_storeEnumTagMultiPayload();
      sub_26A6EC994();
      OUTLINED_FUNCTION_3_66();
      v49 = v73;
      sub_26A84FDF8();
    }

    v53 = v81;
    v54 = v78;
    (*(v50 + 8))(v82, v2);
    sub_26A505C8C(v49, v53, &qword_2803B49B0, &qword_26A8784E8);
    v55 = [v2 textColor];
    v57 = v70;
    v56 = v71;
    v58 = v69;
    if (v55)
    {
      v59 = sub_26A5B5EA8([v43 textColor]);
      v60 = swift_getKeyPath();
      v61 = v67;
      sub_26A505CD4(v53, v67, &qword_2803B49B0, &qword_26A8784E8);
      v62 = (v61 + *(v58 + 36));
      *v62 = v60;
      v62[1] = v59;
      sub_26A505CD4(v61, v57, &qword_2803B49A0, &qword_26A8784E0);
      swift_storeEnumTagMultiPayload();
      sub_26A6EC80C();
      sub_26A6EC8C4();
      OUTLINED_FUNCTION_11_39();
      sub_26A84FDF8();
      sub_26A505D1C();
    }

    else
    {
      sub_26A505CD4(v53, v70, &qword_2803B49B0, &qword_26A8784E8);
      swift_storeEnumTagMultiPayload();
      sub_26A6EC80C();
      sub_26A6EC8C4();
      OUTLINED_FUNCTION_11_39();
      sub_26A84FDF8();
    }

    sub_26A505D1C();
    v63 = v79;
    sub_26A505C8C(v54, v79, &qword_2803B4990, &qword_26A8784D8);
    v64 = [v43 encapsulationStyle];
    sub_26A505C8C(v63, v56, &qword_2803B4990, &qword_26A8784D8);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4978, &qword_26A8784D0);
    *(v56 + *(result + 36)) = v64;
  }

  return result;
}

uint64_t *sub_26A6EC4C4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = *result;
  if (v4 <= a3 || v4 + -1.0 < a3)
  {
    sub_26A850F08();
    sub_26A8508A8();
    result = sub_26A84FDF8();
    v5 = v8;
    v7 = v9;
    v6 = v10;
  }

  else
  {
    v5 = 0uLL;
    v6 = -1;
    v7 = 0uLL;
  }

  *a2 = v5;
  *(a2 + 16) = v7;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_26A6EC5BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A6A8A90();
  *a1 = result;
  return result;
}

uint64_t SFFormattedText.asAnyView()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4978, &qword_26A8784D0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_6_0();
  v3 = v1 - v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  sub_26A6EBE10(&v9 - v5);
  sub_26A505CD4(v6, v3, &qword_2803B4978, &qword_26A8784D0);
  sub_26A6EC6F4();
  v7 = sub_26A851248();
  sub_26A505D1C();
  return v7;
}

unint64_t sub_26A6EC6F4()
{
  result = qword_2803B4980;
  if (!qword_2803B4980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4978, &qword_26A8784D0);
    sub_26A6EC780();
    sub_26A6ECB40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4980);
  }

  return result;
}

unint64_t sub_26A6EC780()
{
  result = qword_2803B4988;
  if (!qword_2803B4988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4990, &qword_26A8784D8);
    sub_26A6EC80C();
    sub_26A6EC8C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4988);
  }

  return result;
}

unint64_t sub_26A6EC80C()
{
  result = qword_2803B4998;
  if (!qword_2803B4998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B49A0, &qword_26A8784E0);
    sub_26A6EC8C4();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4998);
  }

  return result;
}

unint64_t sub_26A6EC8C4()
{
  result = qword_2803B49A8;
  if (!qword_2803B49A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B49B0, &qword_26A8784E8);
    sub_26A6EC994();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B49C8, &unk_26A8784F8);
    sub_26A6ECA88();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B49A8);
  }

  return result;
}

unint64_t sub_26A6EC994()
{
  result = qword_2803B49B8;
  if (!qword_2803B49B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B49C0, &qword_26A8784F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B49C8, &unk_26A8784F8);
    sub_26A6ECA88();
    swift_getOpaqueTypeConformance2();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B49B8);
  }

  return result;
}

unint64_t sub_26A6ECA88()
{
  result = qword_2803B49D0;
  if (!qword_2803B49D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B49C8, &unk_26A8784F8);
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B49D0);
  }

  return result;
}

unint64_t sub_26A6ECB40()
{
  result = qword_2803B49D8;
  if (!qword_2803B49D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B49D8);
  }

  return result;
}

uint64_t sub_26A6ECBE4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v60 = a3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B49E0, &qword_26A8785E0);
  MEMORY[0x28223BE20](v59);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v59 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B49E8, &qword_26A8785E8);
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B49F0, &qword_26A8785F0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16);
  if (a2 == 2)
  {
    v42 = sub_26A84FEC8();
    v43 = sub_26A850248();
    (*(v17 + 16))(v9, a1, v16);
    v44 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4A00, &qword_26A8785F8) + 36)];
    *v44 = v42;
    v44[4] = v43;
    LOBYTE(v42) = sub_26A850248();
    sub_26A84ED48();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v53 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4A08, &unk_26A878600) + 36)];
    *v53 = v42;
    *(v53 + 1) = v46;
    *(v53 + 2) = v48;
    *(v53 + 3) = v50;
    *(v53 + 4) = v52;
    v53[40] = 0;
    v54 = &v9[*(v59 + 36)];
    v55 = *(sub_26A84F5F8() + 20);
    v56 = *MEMORY[0x277CE0118];
    v57 = sub_26A84FB88();
    (*(*(v57 - 8) + 104))(&v54[v55], v56, v57);
    __asm { FMOV            V0.2D, #3.0 }

    *v54 = _Q0;
    *&v54[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58, &unk_26A857A00) + 36)] = 256;
    sub_26A505CD4(v9, v6, &qword_2803B49E0, &qword_26A8785E0);
    sub_26A6ED0D8();
    v21 = sub_26A851248();
    goto LABEL_6;
  }

  if (a2 == 1)
  {
    v22 = sub_26A84FED8();
    sub_26A6EAEB0(v22, v15);
    v23 = sub_26A850248();
    sub_26A84ED48();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4A38, &qword_26A878618) + 36)];
    *v32 = v23;
    *(v32 + 1) = v25;
    *(v32 + 2) = v27;
    *(v32 + 3) = v29;
    *(v32 + 4) = v31;
    v32[40] = 0;
    v33 = &v15[*(v10 + 36)];
    v34 = *(sub_26A84F5F8() + 20);
    v35 = *MEMORY[0x277CE0118];
    v36 = sub_26A84FB88();
    (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
    __asm { FMOV            V0.2D, #3.0 }

    *v33 = _Q0;
    *&v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58, &unk_26A857A00) + 36)] = 256;
    sub_26A505CD4(v15, v12, &qword_2803B49E8, &qword_26A8785E8);
    sub_26A6ED2A0();
    v21 = sub_26A851248();
LABEL_6:
    result = sub_26A505D1C();
    goto LABEL_7;
  }

  (*(v17 + 16))(&v59 - v18, a1, v16, v19);
  sub_26A506A30();
  result = sub_26A851248();
  v21 = result;
LABEL_7:
  *v60 = v21;
  return result;
}

unint64_t sub_26A6ED0D8()
{
  result = qword_2803B4A10;
  if (!qword_2803B4A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B49E0, &qword_26A8785E0);
    sub_26A6ED384(&qword_2803B4A18, &qword_2803B4A08, &unk_26A878600, sub_26A6ED1BC);
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4A10);
  }

  return result;
}

unint64_t sub_26A6ED1BC()
{
  result = qword_2803B4A20;
  if (!qword_2803B4A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4A00, &qword_26A8785F8);
    sub_26A506A30();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4A20);
  }

  return result;
}

unint64_t sub_26A6ED2A0()
{
  result = qword_2803B4A40;
  if (!qword_2803B4A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B49E8, &qword_26A8785E8);
    sub_26A6ED384(&qword_2803B4A48, &qword_2803B4A38, &qword_26A878618, sub_26A6ED404);
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4A40);
  }

  return result;
}

uint64_t sub_26A6ED384(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_50_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A6ED404()
{
  result = qword_2803B4A50;
  if (!qword_2803B4A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4A58, &qword_26A878620);
    sub_26A506A30();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4A50);
  }

  return result;
}

uint64_t sub_26A6ED4E8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_26A8517B8();
  }

  return OUTLINED_FUNCTION_211();
}

unint64_t sub_26A6ED544()
{
  result = qword_281580018;
  if (!qword_281580018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281580018);
  }

  return result;
}

unint64_t sub_26A6ED5A0()
{
  result = qword_2803B4B18;
  if (!qword_2803B4B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4B08, &qword_26A878760);
    sub_26A4EEFCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4B18);
  }

  return result;
}

unint64_t sub_26A6ED62C()
{
  result = qword_2803B4B20;
  if (!qword_2803B4B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4B10, &qword_26A878768);
    sub_26A4EF644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4B20);
  }

  return result;
}

unint64_t sub_26A6ED6B0()
{
  OUTLINED_FUNCTION_196();
  result = *v3;
  if (!result)
  {
    sub_26A4EC5B0(255, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

unint64_t sub_26A6ED6FC()
{
  result = qword_2803B4B50;
  if (!qword_2803B4B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4AC8, &qword_26A878708);
    sub_26A6ED780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4B50);
  }

  return result;
}

unint64_t sub_26A6ED780()
{
  result = qword_2803B4B58;
  if (!qword_2803B4B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4B60, &qword_26A878798);
    sub_26A6EC6F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4B58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_66()
{
  *(v2 - 144) = v0;
  *(v2 - 136) = v1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_9_46(uint64_t result)
{
  *(v6 - 160) = v2;
  *(v6 - 152) = v3;
  *(v6 - 144) = v4 & 1;
  *(v6 - 136) = v1;
  *(v6 - 128) = result;
  *(v6 - 120) = v5;
  *(v6 - 112) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

id sub_26A6ED8D0(double a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF6A0, &qword_26A865100);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_26A84AD18();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = objc_allocWithZone(MEMORY[0x277D23C80]);
  return sub_26A6ED9B8(v6, -1, -1, -1, -1, -1, -1, 0, a1, a2, 1.0, 0, 0, 0);
}

id sub_26A6ED9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, double a11, char a12, char a13, char a14)
{
  v15 = v14;
  v23 = sub_26A84AD18();
  v24 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v23) != 1)
  {
    v24 = sub_26A84ACE8();
    (*(*(v23 - 8) + 8))(a1, v23);
  }

  BYTE3(v27) = a14 & 1;
  BYTE2(v27) = a13 & 1;
  BYTE1(v27) = a12 & 1;
  LOBYTE(v27) = a8 & 1;
  v25 = [v15 initWithSize:v24 locale:a2 dynamicTypeSize:a3 legibilityWeight:a4 layoutDirection:a5 colorScheme:a6 colorSchemeContrast:a9 displayScale:a10 displayGamut:a11 accessibilityDifferentiateWithoutColor:a7 accessibilityInvertColors:v27 accessibilityReduceMotion:? accessibilityReduceTransparency:?];

  return v25;
}

double sub_26A6EDB00()
{
  v1 = v0;
  v2 = sub_26A84B2B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 8);
  v7 = type metadata accessor for URLImageSize(0);
  sub_26A6EDDD8();
  OUTLINED_FUNCTION_58_1();
  sub_26A84C958();
  v9 = v8;
  v10 = v8;
  if (*(v0 + v7[6]))
  {
    if (v6 != INFINITY)
    {
      Width = v6;
      if (v8 == 1.0)
      {
        goto LABEL_10;
      }

      if (!*(v0 + v7[7]) || (OUTLINED_FUNCTION_58_1(), (sub_26A84C938() & 1) != 0))
      {
LABEL_17:
        Width = v6 * v10;
        goto LABEL_10;
      }

LABEL_16:
      Width = v6;
      goto LABEL_10;
    }
  }

  else if (v6 != INFINITY)
  {
    Width = v6;
    if (v8 == 1.0)
    {
      goto LABEL_10;
    }

    if (*(v0 + v7[7]) != 1)
    {
      OUTLINED_FUNCTION_58_1();
      if ((sub_26A84C938() & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  v12 = [objc_opt_self() mainScreen];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v24.origin.x = v14;
  v24.origin.y = v16;
  v24.size.width = v18;
  v24.size.height = v20;
  Width = CGRectGetWidth(v24);
  if (v9 == 1.0)
  {
    sub_26A84B2A8();
    OUTLINED_FUNCTION_58_1();
    sub_26A84C958();
    (*(v3 + 8))(v5, v2);
  }

LABEL_10:
  v21 = *(v1 + v7[9]);
  if (v21 > 0.0)
  {
    Width = Width - v6 * (v21 + v21);
  }

  return round(Width) * *(v1 + v7[8]);
}

uint64_t type metadata accessor for URLImageSize(uint64_t a1)
{
  result = qword_28157F550;
  if (!qword_28157F550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26A6EDDD8()
{
  result = qword_2803B01A0;
  if (!qword_2803B01A0)
  {
    sub_26A84B2B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B01A0);
  }

  return result;
}

uint64_t sub_26A6EDE58(uint64_t a1)
{
  result = type metadata accessor for ImageStyleAppearance(319);
  if (v2 <= 0x3F)
  {
    result = sub_26A84B2B8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t LongItemTextView.init(text1:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 9) = 0;
  swift_unknownObjectWeakInit();
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3(&qword_28157E660);
  }

  v24[0] = xmmword_281588758;
  v24[1] = unk_281588768;
  v24[2] = xmmword_281588778;
  v24[3] = xmmword_281588788;
  v25 = xmmword_281588758;
  v26 = unk_281588768;
  v27 = xmmword_281588778;
  v28 = xmmword_281588788;
  v22 = xmmword_281588788;
  v23 = xmmword_281588778;
  sub_26A4DBD68(v24, v31, &qword_2803A91B0, &unk_26A854CA0);
  sub_26A6AEE74(__src);
  memcpy((a2 + 24), __src, 0xC0uLL);
  *(a2 + 232) = v22;
  *(a2 + 216) = v23;
  v4 = v26;
  *(a2 + 248) = v25;
  v5 = v27;
  v6 = v28;
  *(a2 + 264) = v4;
  *(a2 + 280) = v5;
  *(a2 + 296) = v6;
  if (qword_2803A8D88 != -1)
  {
    OUTLINED_FUNCTION_1_77(&qword_2803A8D88);
  }

  v7 = xmmword_2803D21A8;
  v8 = qword_2803D21B8;
  v9 = unk_2803D21C0;
  v10 = xmmword_2803D21C8;
  v11 = byte_2803D21D8;
  v30[0] = *algn_2803D21D9;
  *(v30 + 3) = dword_2803D21DC;
  v12 = qword_2803D21E0;

  sub_26A6AEE74(v31);
  memcpy((a2 + 312), v31, 0xC0uLL);
  *(a2 + 504) = v10;
  *(a2 + 520) = v11 & 1;
  *(a2 + 528) = v12;
  *(a2 + 536) = v7;
  *(a2 + 552) = v8;
  *(a2 + 560) = v9;
  *(a2 + 568) = v10;
  *(a2 + 584) = v11;
  *(a2 + 585) = v30[0];
  *(a2 + 588) = *(v30 + 3);
  *(a2 + 592) = v12;
  *(a2 + 600) = swift_getKeyPath();
  *(a2 + 608) = 0;
  *(a2 + 616) = swift_getKeyPath();
  *(a2 + 624) = 0;
  v13 = type metadata accessor for LongItemTextView(0);
  v14 = v13[9];
  *(a2 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v15 = a2 + v13[10];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = v13[11];
  *(a2 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v17 = a2 + v13[12];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = a2 + v13[13];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  *(a2 + v13[18]) = (*(v20 + 8))(v19, v20);
  *(a2 + v13[14]) = 1;
  *(a2 + v13[15]) = 1;
  *(a2 + v13[16]) = 0;
  *(a2 + v13[17]) = 0;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t LongItemTextView.init(text1:isQuoted:hasTopPadding:hasBottomPadding:hasBackgroundPlatter:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 9) = 0;
  swift_unknownObjectWeakInit();
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3(&qword_28157E660);
  }

  v24[0] = xmmword_281588758;
  v24[1] = unk_281588768;
  v24[2] = xmmword_281588778;
  v24[3] = xmmword_281588788;
  v25 = xmmword_281588758;
  v26 = unk_281588768;
  v27 = xmmword_281588778;
  v28 = xmmword_281588788;
  v22 = xmmword_281588788;
  v23 = xmmword_281588778;
  sub_26A4DBD68(v24, v31, &qword_2803A91B0, &unk_26A854CA0);
  sub_26A6AEE74(__src);
  memcpy((a2 + 24), __src, 0xC0uLL);
  *(a2 + 232) = v22;
  *(a2 + 216) = v23;
  v4 = v26;
  *(a2 + 248) = v25;
  v5 = v27;
  v6 = v28;
  *(a2 + 264) = v4;
  *(a2 + 280) = v5;
  *(a2 + 296) = v6;
  if (qword_2803A8D88 != -1)
  {
    OUTLINED_FUNCTION_1_77(&qword_2803A8D88);
  }

  v7 = xmmword_2803D21A8;
  v8 = qword_2803D21B8;
  v9 = unk_2803D21C0;
  v10 = xmmword_2803D21C8;
  v11 = byte_2803D21D8;
  v30[0] = *algn_2803D21D9;
  *(v30 + 3) = dword_2803D21DC;
  v12 = qword_2803D21E0;

  sub_26A6AEE74(v31);
  memcpy((a2 + 312), v31, 0xC0uLL);
  *(a2 + 504) = v10;
  *(a2 + 520) = v11 & 1;
  *(a2 + 528) = v12;
  *(a2 + 536) = v7;
  *(a2 + 552) = v8;
  *(a2 + 560) = v9;
  *(a2 + 568) = v10;
  *(a2 + 584) = v11;
  *(a2 + 585) = v30[0];
  *(a2 + 588) = *(v30 + 3);
  *(a2 + 592) = v12;
  *(a2 + 600) = swift_getKeyPath();
  *(a2 + 608) = 0;
  *(a2 + 616) = swift_getKeyPath();
  *(a2 + 624) = 0;
  v13 = type metadata accessor for LongItemTextView(0);
  v14 = v13[9];
  *(a2 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v15 = a2 + v13[10];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = v13[11];
  *(a2 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v17 = a2 + v13[12];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = a2 + v13[13];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  *(a2 + v13[18]) = (*(v20 + 8))(v19, v20);
  OUTLINED_FUNCTION_8_52(v13[14]);
  OUTLINED_FUNCTION_8_52(v13[15]);
  OUTLINED_FUNCTION_8_52(v13[16]);
  OUTLINED_FUNCTION_8_52(v13[17]);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A6EE584(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4BF8, &qword_26A878A38);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9980, &qword_26A878A40);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  if (a1)
  {
    v10 = *(v7 + 36);
    *&v9[v10] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
    swift_storeEnumTagMultiPayload();
    sub_26A4DBD68(v2, v9, &qword_2803A9990, &unk_26A8558C0);
    sub_26A4DBD68(v9, v6, &qword_2803A9980, &qword_26A878A40);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9990, &unk_26A8558C0);
    sub_26A4D4AEC();
    sub_26A4D4BA8();
    sub_26A84FDF8();
    return sub_26A4DBD10(v9, &qword_2803A9980, &qword_26A878A40);
  }

  else
  {
    sub_26A4DBD68(v2, v6, &qword_2803A9990, &unk_26A8558C0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9990, &unk_26A8558C0);
    sub_26A4D4AEC();
    sub_26A4D4BA8();
    return sub_26A84FDF8();
  }
}

uint64_t sub_26A6EE7C4()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 600);
  if (*(v0 + 608) != 1)
  {

    sub_26A851EA8();
    v6 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_26A6EE90C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for LongItemTextView(0);
  sub_26A4DBD68(v1 + *(v10 + 36), v9, &unk_2803A9190, &unk_26A854C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v9, a1, &qword_2803A91C8, &unk_26A856820);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26A6EEAF4()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for LongItemTextView(0) + 40);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A6EEC48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LongItemTextView(0);
  sub_26A4DBD68(v1 + *(v10 + 44), v9, &qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_26A6EEE50()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for LongItemTextView(0) + 48);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_26A6EEFA8()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for LongItemTextView(0) + 52);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t LongItemTextView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = type metadata accessor for LongItemTextView(0);
  v69 = *(v2 - 8);
  v68 = *(v69 + 64);
  MEMORY[0x28223BE20](v2);
  v67 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4B68, &unk_26A878910) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v7 = &v63 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  OUTLINED_FUNCTION_79(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  v11 = &v63 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  OUTLINED_FUNCTION_79(v12);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  v15 = &v63 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9968, &unk_26A8558B0);
  OUTLINED_FUNCTION_79(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v17);
  v19 = &v63 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4B70, &qword_26A878920) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v21);
  v63 = &v63 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4B78, &qword_26A878928) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v24);
  v64 = &v63 - v25;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4B80, &qword_26A878930) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v26);
  v66 = &v63 - v27;
  sub_26A6EE90C(v15);
  v72 = sub_26A6EF76C();
  v73 = v28;
  v74 = v29;
  v75 = v30;
  v76 = 0;
  sub_26A6EEAF4();
  sub_26A6EEC48(v11);
  v31 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v31);
  v71 = v1;
  sub_26A4CD248();
  sub_26A850E18();
  v32 = sub_26A850E68();

  v33 = *(v4 + 44);
  v34 = *MEMORY[0x277CE13B8];
  sub_26A8514D8();
  OUTLINED_FUNCTION_46();
  (*(v35 + 104))(&v7[v33], v34);
  *v7 = v32;
  *(v7 + 4) = 256;
  v36 = sub_26A851448();
  v38 = v37;
  v39 = *(v20 + 44);
  v40 = v63;
  v41 = &v63[v39];
  sub_26A4DBDB4(v7, &v63[v39], &qword_2803B4B68, &unk_26A878910);
  v42 = &v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4B88, &unk_26A878938) + 36)];
  *v42 = v36;
  v42[1] = v38;
  v43 = v40;
  sub_26A4DBDB4(v19, v40, &qword_2803A9968, &unk_26A8558B0);
  v44 = swift_allocObject();
  *(v44 + 16) = sub_26A68CCBC;
  *(v44 + 24) = 0;
  v45 = v64;
  v46 = &v64[*(v23 + 44)];
  *(v46 + 2) = swift_getKeyPath();
  v46[24] = 0;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v48 = *(v47 + 40);
  *&v46[v48] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v49 = &v46[*(v47 + 44)];
  *v49 = swift_getKeyPath();
  v49[8] = 0;
  *v46 = sub_26A4D1F7C;
  *(v46 + 1) = v44;
  sub_26A4DBDB4(v43, v45, &qword_2803B4B70, &qword_26A878920);
  v50 = v66;
  sub_26A4DBDB4(v45, v66, &qword_2803B4B78, &qword_26A878928);
  *(v50 + *(v65 + 44)) = 44;
  v51 = v67;
  sub_26A6F044C(v1, v67);
  v52 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v53 = swift_allocObject();
  sub_26A6F04B0(v51, v53 + v52);
  v54 = sub_26A851448();
  v56 = v55;
  v57 = v50;
  v58 = v70;
  sub_26A4DBDB4(v57, v70, &qword_2803B4B80, &qword_26A878930);
  v59 = (v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4B90, &qword_26A878970) + 36));
  *v59 = sub_26A8027E0;
  v59[1] = 0;
  v59[2] = v54;
  v59[3] = v56;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_26A6F0514;
  *(v60 + 24) = v53;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4B98, &qword_26A878978);
  v62 = (v58 + *(result + 36));
  *v62 = sub_26A52E998;
  v62[1] = v60;
  return result;
}

double sub_26A6EF76C()
{
  v1 = sub_26A6EEE50();
  v2 = 216;
  if (v1)
  {
    v2 = 504;
  }

  v3 = *(v0 + v2);
  if (qword_2803A8BF8 != -1)
  {
    swift_once();
  }

  if (byte_2803B0441 == 1)
  {
    v4 = sub_26A6EEAF4();
    if (sub_26A61B05C(v4, &unk_287B131A0))
    {
      sub_26A4D7E10();
      switch(sub_26A63CD18(v5))
      {
        case 1u:
        case 2u:
        case 3u:
          sub_26A852598();
          goto LABEL_10;
        case 4u:
          break;
        default:
LABEL_10:

          break;
      }
    }
  }

  if ((sub_26A6EE7C4() & 1) == 0)
  {
    return *(v0 + 216);
  }

  v6 = type metadata accessor for LongItemTextView(0);
  if ((*(v0 + v6[14]) & 1) != 0 || *(v0 + v6[17]) == 1)
  {
    v3 = *(v0 + 216);
  }

  if (*(v0 + v6[15]) == 1)
  {
    sub_26A6EEFA8();
  }

  v7 = sub_26A6EEAF4();
  if (sub_26A61B05C(v7, &unk_287B13090))
  {
    if (qword_2803A8BF0 != -1)
    {
      swift_once();
    }

    if (byte_2803B0440 == 1 && (sub_26A6EEE50() & 1) == 0)
    {
      return v3 + 10.0;
    }
  }

  return v3;
}

uint64_t sub_26A6EFA14(uint64_t a1)
{
  v2 = type metadata accessor for LongItemTextView(0);
  v3 = *(a1 + *(v2 + 72));
  if (sub_26A6EE7C4())
  {
    if (qword_28157E6A8 != -1)
    {
      swift_once();
    }

    v4 = &unk_281588848;
  }

  else
  {
    if (qword_2803A9018 != -1)
    {
      swift_once();
    }

    v4 = &unk_2803D2760;
  }

  sub_26A4DBD68(v4, __dst, &qword_2803AA880, &unk_26A8567F0);
  sub_26A4DBD68(__dst, &v6[25], &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(__src);
  sub_26A4DBD10(__dst, &qword_2803AA880, &unk_26A8567F0);
  memcpy(&v6[1], __src, 0xBFuLL);
  v6[35] = sub_26A80A810;
  v6[36] = 0;
  v6[0] = v3;

  sub_26A851418();
  sub_26A84F628();
  memcpy(__dst, v6, sizeof(__dst));
  sub_26A6EE584(*(a1 + *(v2 + 64)));
  return sub_26A4DBD10(__dst, &qword_2803A9990, &unk_26A8558C0);
}

uint64_t sub_26A6EFBF8()
{
  v51 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v49 = v0;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  v48 = (v3 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  v5 = OUTLINED_FUNCTION_79(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - v9;
  v11 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  v17 = v16 - v15;
  v18 = type metadata accessor for LongItemTextView(0);
  v19 = OUTLINED_FUNCTION_79(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_41();
  v22 = v21 - v20;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AACA8, &qword_26A856DA0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v23);
  v25 = &v47 - v24;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AACB0, &qword_26A856DA8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v26);
  v53 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v52 = &v47 - v29;
  sub_26A84B748();
  v30 = TextProperty.asAnyView()();
  (*(v13 + 8))(v17, v11);
  v31 = v51;
  v56[3] = MEMORY[0x277CE11C8];
  v56[4] = &protocol witness table for AnyView;
  v56[0] = v30;
  v54 = v22;
  LongItemTextView.init(text1:)(v56, v22);
  sub_26A84B758();
  sub_26A4DBDB4(v10, v7, &qword_2803B3800, &unk_26A856760);
  if (__swift_getEnumTagSinglePayload(v7, 1, v31) == 1)
  {
    sub_26A4DBD10(v7, &qword_2803B3800, &unk_26A856760);
    KeyPath = swift_getKeyPath();
    v33 = &v25[*(v50 + 36)];
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v35 = type metadata accessor for ActionType(0);
    __swift_storeEnumTagSinglePayload(v33 + v34, 1, 1, v35);
    *v33 = KeyPath;
  }

  else
  {
    v36 = v48;
    v37 = *(v49 + 32);
    v37(v48, v7, v31);
    v38 = swift_getKeyPath();
    v39 = &v25[*(v50 + 36)];
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v37(v39 + v40, v36, v31);
    v41 = type metadata accessor for ActionType(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v39 + v40, 0, 1, v41);
    *v39 = v38;
  }

  sub_26A6F04B0(v54, v25);
  v42 = sub_26A84B728();
  v43 = v52;
  sub_26A4DC694(v42, v44);

  sub_26A4DBD10(v25, &qword_2803AACA8, &qword_26A856DA0);
  sub_26A4DBD68(v43, v53, &qword_2803AACB0, &qword_26A856DA8);
  sub_26A6F0BF4();
  v45 = sub_26A851248();
  sub_26A4DBD10(v43, &qword_2803AACB0, &qword_26A856DA8);
  return v45;
}

double sub_26A6F00B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4C00, &unk_26A878A80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A86D390;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v2 = OUTLINED_FUNCTION_0_48();
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  *(inited + 40) = 0x403C000000000000;
  *(inited + 48) = 0x402C000000000000;
  *(inited + 56) = 0;
  *(inited + 64) = 0x4032000000000000;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_26A8570F0;
  v6 = OUTLINED_FUNCTION_0_48();
  *(v5 + 48) = 1;
  *(v5 + 56) = 5;
  sub_26A4E324C(v6, v7);
  sub_26A621A9C(v5);
  *(inited + 72) = v8;
  *(inited + 80) = 0x402C000000000000;
  *(inited + 88) = 0x402C000000000000;
  *(inited + 96) = 0;
  *(inited + 104) = 0x4032000000000000;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_26A8570F0;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v10 = qword_281588978;
  *(v9 + 32) = qword_281588978;
  v11 = byte_281588980;
  *(v9 + 40) = byte_281588980;
  *(v9 + 48) = 1;
  *(v9 + 56) = 11;
  sub_26A4E324C(v10, v11);
  sub_26A621A9C(v9);
  *(inited + 112) = v12;
  *(inited + 120) = 0;
  *(inited + 128) = 0x4028000000000000;
  *(inited + 136) = 0;
  *(inited + 144) = 0x4032000000000000;
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_26A8570F0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v14 = qword_281588968;
  *(v13 + 32) = qword_281588968;
  v15 = byte_281588970;
  *(v13 + 40) = byte_281588970;
  *(v13 + 48) = 1;
  *(v13 + 56) = 11;
  sub_26A4E324C(v14, v15);
  sub_26A621A9C(v13);
  *(inited + 152) = v16;
  *(inited + 160) = 0;
  *(inited + 168) = 0x4028000000000000;
  *(inited + 176) = 0;
  *(inited + 184) = 0x4032000000000000;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_26A8570F0;
  v18 = qword_281588968;
  *(v17 + 32) = qword_281588968;
  v19 = byte_281588970;
  *(v17 + 40) = byte_281588970;
  *(v17 + 48) = 1;
  *(v17 + 56) = 4;
  sub_26A4E324C(v18, v19);
  sub_26A621A9C(v17);
  *(inited + 192) = v20;
  *(inited + 200) = 0;
  *(inited + 208) = 0x4028000000000000;
  *(inited + 216) = 0;
  *(inited + 224) = 0x4032000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80, &qword_26A8593E0, MEMORY[0x277D83B58]);
  v21 = sub_26A8516A8();
  sub_26A80DC3C(v21, 0, 1, v23, 0.0, 18.0);
  xmmword_2803D21A8 = v23[0];
  *&qword_2803D21B8 = v23[1];
  result = *&v24;
  xmmword_2803D21C8 = v24;
  *&byte_2803D21D8 = v25;
  return result;
}

uint64_t type metadata accessor for LongItemTextView(uint64_t a1)
{
  result = qword_2803B4BA8;
  if (!qword_2803B4BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A6F044C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LongItemTextView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A6F04B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LongItemTextView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A6F0514(double a1, double a2)
{
  v5 = type metadata accessor for LongItemTextView(0);
  OUTLINED_FUNCTION_79(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_26A5190C4(v7, a1, a2);
}

uint64_t sub_26A6F05A4(uint64_t a1)
{
  result = sub_26A6F0E20(&qword_2803B4BA0, MEMORY[0x277D62DB0], MEMORY[0x277D62DA8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26A6F0624(uint64_t a1)
{
  sub_26A6F07FC(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_26A6F07FC(319, &qword_2803B4BB8, &type metadata for LongItemTextConstants, type metadata accessor for EnvironmentConstant);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_26A6F07FC(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_26A4D27F4(319);
        if (v9 > 0x3F)
        {
          return v8;
        }

        sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
        if (v10 > 0x3F)
        {
          return v8;
        }

        sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
        if (v11 > 0x3F)
        {
          return v8;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_26A6F07FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_26A6F084C()
{
  result = qword_2803B4BC0;
  if (!qword_2803B4BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4B98, &qword_26A878978);
    sub_26A6F0904();
    sub_26A4DBCC8(&qword_2803A9C20, &qword_2803A9C28, &qword_26A8640E0, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4BC0);
  }

  return result;
}

unint64_t sub_26A6F0904()
{
  result = qword_2803B4BC8;
  if (!qword_2803B4BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4B90, &qword_26A878970);
    sub_26A6F09BC();
    sub_26A4DBCC8(&qword_2803A9C10, &qword_2803A9C18, &unk_26A855A50, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4BC8);
  }

  return result;
}

unint64_t sub_26A6F09BC()
{
  result = qword_2803B4BD0;
  if (!qword_2803B4BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4B80, &qword_26A878930);
    sub_26A6F0A48();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4BD0);
  }

  return result;
}

unint64_t sub_26A6F0A48()
{
  result = qword_2803B4BD8;
  if (!qword_2803B4BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4B78, &qword_26A878928);
    sub_26A6F0B00();
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8, &qword_26A8575D0, &unk_26A869CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4BD8);
  }

  return result;
}

unint64_t sub_26A6F0B00()
{
  result = qword_2803B4BE0;
  if (!qword_2803B4BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4B70, &qword_26A878920);
    sub_26A4DBCC8(&qword_2803B4BE8, &qword_2803A9968, &unk_26A8558B0, &protocol conformance descriptor for ComponentWithAction<A>);
    sub_26A4DBCC8(&qword_2803B4BF0, &qword_2803B4B88, &unk_26A878938, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4BE0);
  }

  return result;
}

unint64_t sub_26A6F0BF4()
{
  result = qword_2803B4C08;
  if (!qword_2803B4C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AACB0, &qword_26A856DA8);
    sub_26A6F0CAC();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438, &unk_26A8555B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4C08);
  }

  return result;
}

unint64_t sub_26A6F0CAC()
{
  result = qword_2803B4C10;
  if (!qword_2803B4C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AACA0, &qword_26A856D98);
    sub_26A6F0D38();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4C10);
  }

  return result;
}

unint64_t sub_26A6F0D38()
{
  result = qword_2803B4C18;
  if (!qword_2803B4C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AACA8, &qword_26A856DA0);
    sub_26A6F0E20(&qword_2803B0148, type metadata accessor for LongItemTextView, &protocol conformance descriptor for LongItemTextView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0, &qword_26A859400, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4C18);
  }

  return result;
}

uint64_t sub_26A6F0E20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_1_77(uint64_t a1)
{

  return swift_once();
}

void *sub_26A6F0E94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4C20, &qword_26A878AD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v2 = qword_281588968;
  *(v1 + 32) = qword_281588968;
  v3 = byte_281588970;
  *(v1 + 40) = byte_281588970;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  *(inited + 40) = xmmword_26A878A90;
  *(inited + 56) = xmmword_26A85C670;
  *(inited + 72) = xmmword_26A878AA0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A4E325C();
  v5 = sub_26A8516A8();
  v7[0] = xmmword_26A878AB0;
  v7[1] = xmmword_26A85C670;
  v7[2] = xmmword_26A878AC0;
  return sub_26A80E380(v5, v7);
}

uint64_t sub_26A6F0FFC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A6F101C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

void *sub_26A6F108C@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_26A6F1454(v1);
  if (!v4)
  {
    sub_26A4E353C();
    swift_allocError();
    *v22 = v1;
    *(v22 + 8) = &unk_287B13A78;
    *(v22 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  v5 = v4;
  v36 = v1;
  v6 = sub_26A73670C();
  if (v6)
  {
    v7 = v6;
    *&v30 = MEMORY[0x277D84F90];
    result = sub_26A7DD1FC(0, v6 & ~(v6 >> 63), 0);
    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v28 = a1;
    v29 = v2;
    v9 = 0;
    v10 = v30;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x26D6644E0](v9, v5);
      }

      else
      {
        v11 = *(v5 + 8 * v9 + 32);
      }

      v12 = v11;
      *(&v34 + 1) = sub_26A84BD28();
      v35 = &protocol witness table for VisualProperty;
      __swift_allocate_boxed_opaque_existential_1(&v33);
      RFVisualProperty.asVisualProperty()();

      *&v30 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_26A7DD1FC((v13 > 1), v14 + 1, 1);
      }

      ++v9;
      v15 = *(&v34 + 1);
      v16 = v35;
      v17 = __swift_mutable_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
      v18 = MEMORY[0x28223BE20](v17);
      v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v20, v18);
      sub_26A6F14B4(v14, v20, &v30, v15, v16);
      __swift_destroy_boxed_opaque_existential_1(&v33);
      v10 = v30;
    }

    while (v7 != v9);

    a1 = v28;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  v23 = v36;
  v24 = [v36 text_1];
  if (v24)
  {
    v25 = v24;
    *(&v34 + 1) = &type metadata for PartialText;
    v35 = &protocol witness table for PartialText;
    *&v33 = swift_allocObject();
    RFTextProperty.asPartialText()(v33 + 16);
  }

  else
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
  }

  v26 = [v23 text_2];
  if (v26)
  {
    v27 = v26;
    *(&v31 + 1) = &type metadata for PartialText;
    v32 = &protocol witness table for PartialText;
    *&v30 = swift_allocObject();
    RFTextProperty.asPartialText()(v30 + 16);
  }

  else
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
  }

  return PrimaryHeaderStackedImageView.init(images:text1:text2:)(v10, &v33, &v30, a1);
}

unint64_t sub_26A6F13FC()
{
  result = qword_2803B4C28;
  if (!qword_2803B4C28)
  {
    type metadata accessor for PrimaryHeaderStackedImageView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4C28);
  }

  return result;
}

uint64_t sub_26A6F1454(void *a1)
{
  v1 = [a1 images];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_26A6F154C();
  v3 = sub_26A851A98();

  return v3;
}

uint64_t sub_26A6F14B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_26A4C2314(&v12, v10 + 40 * a1 + 32);
}

unint64_t sub_26A6F154C()
{
  result = qword_2803B4C30;
  if (!qword_2803B4C30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803B4C30);
  }

  return result;
}

id VisualResponseViewController.__allocating_init(rootView:context:)()
{
  OUTLINED_FUNCTION_14_32();
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_5_21();
  return VisualResponseViewController.init(rootView:context:)(v2, v3);
}

id VisualResponseViewController.init(rootView:context:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for AnyRootView(0);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_41();
  v9 = v8 - v7;
  *(v3 + OBJC_IVAR____TtC9SnippetUI28VisualResponseViewController_context) = a2;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = *(v11 + 8);
  v13 = a2;
  v12(v10, v11);
  sub_26A6F40CC();
  v22 = type metadata accessor for VisualResponseViewController(0);
  OUTLINED_FUNCTION_20_4();
  v16 = objc_msgSendSuper2(v14, v15, v3, v22);
  OUTLINED_FUNCTION_0_74();
  sub_26A58B648();
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4C48, &unk_26A878B70));
  v18 = v13;
  v19 = v16;
  v20 = sub_26A6F1C0C(v9, sub_26A6F18C4, v17);
  [v19 setView_];

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v19;
}

uint64_t type metadata accessor for VisualResponseViewController(uint64_t a1)
{
  result = qword_2803B4C58;
  if (!qword_2803B4C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_26A6F1828(uint64_t a1, double a2, double a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    if ([result respondsToSelector_])
    {
      [v6 informHostOfViewResize_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_26A6F18F8(double a1, double a2)
{
  sub_26A84EAA8();
  OUTLINED_FUNCTION_5_30();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_0_32(&qword_2815801E8);
  }

  v6 = qword_2815801F0;
  sub_26A84EA98();
  v7 = sub_26A851F88();
  OUTLINED_FUNCTION_11_40(v7, &dword_26A48D000);
  result = [v2 view];
  if (result)
  {
    v9 = result;
    [result sizeThatFits_];

    v10 = sub_26A851F78();
    OUTLINED_FUNCTION_11_40(v10, &dword_26A48D000);
    v11 = OUTLINED_FUNCTION_21_20();
    return v12(v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id VisualResponseViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_26A851788();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id VisualResponseViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisualResponseViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_26A6F1C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26A6F1D6C(a1, a2, a3);
  *&v3[qword_2803B4C50] = v5;
  result = [v5 view];
  if (result)
  {
    v7 = result;
    v8 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor_];

    v13.receiver = v3;
    v13.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4C48, &unk_26A878B70);
    v9 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v10 = *&v9[qword_2803B4C50];
    v11 = v9;
    result = [v10 view];
    if (result)
    {
      v12 = result;
      [v11 addSubview_];

      sub_26A58B7DC(a1, type metadata accessor for AnyRootView);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_26A6F1D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26A850148();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for AnyRootView(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A58B648();
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1DB0, &unk_26A86E760));

  v9 = sub_26A6F2478(v8, a2, a3);
  sub_26A850138();
  sub_26A84FCC8();

  return v9;
}

void sub_26A6F1EAC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void, const char *, uint64_t, uint64_t, uint64_t, const char *, uint64_t, char))
{
  v5 = sub_26A851EA8();
  v6 = 2;
  a3(v5, 0, "SnippetUI/VisualResponseViewController.swift", 44, 2, a2, "init(coder:)", 12, v6);
  sub_26A852418();
  __break(1u);
}

double sub_26A6F1F78(double a1, double a2)
{
  sub_26A84EAA8();
  OUTLINED_FUNCTION_5_30();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_0_32(&qword_2815801E8);
  }

  v6 = qword_2815801F0;
  sub_26A84EA98();
  v7 = sub_26A851F88();
  OUTLINED_FUNCTION_10_43(v7, &dword_26A48D000);
  sub_26A6F20E8(v2, &v12, a1, a2);
  v8 = sub_26A851F78();
  OUTLINED_FUNCTION_10_43(v8, &dword_26A48D000);
  v9 = OUTLINED_FUNCTION_21_20();
  v10(v9);
  return v12;
}

void sub_26A6F20E8(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v7 = [*(a1 + qword_2803B4C50) view];
  if (v7)
  {
    v8 = v7;
    [v7 sizeThatFits_];
    v10 = v9;
    v12 = v11;

    *a2 = v10;
    a2[1] = v12;
  }

  else
  {
    __break(1u);
  }
}

double sub_26A6F2178(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = sub_26A6F1F78(a2, a3);

  return v6;
}

void sub_26A6F21CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for UIHostingView(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v8.receiver = v4;
  v8.super_class = v5;
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v6 = [*(v4 + qword_2803B4C50) view];
  if (v6)
  {
    v7 = v6;
    [v4 bounds];
    [v7 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

void sub_26A6F2294(void *a1)
{
  v4 = a1;
  sub_26A6F21CC(v4, v1, v2, v3);
}

id UIHostingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id UIHostingView.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for UIHostingView(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_26A6F2400()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + qword_2803D2240 + 24));

  return v1;
}

uint64_t sub_26A6F2478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for AnyRootView(0);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_12_37();
  v8 = MEMORY[0x277D85000];
  v10 = *((*MEMORY[0x277D85000] & v9) + qword_2803D2240 + 16);
  *(v3 + v10) = [objc_opt_self() sharedPreferences];
  v11 = (v3 + *((*v8 & *v3) + qword_2803D2240 + 24));
  *v11 = a2;
  v11[1] = a3;
  OUTLINED_FUNCTION_0_74();
  sub_26A58B648();
  v12 = sub_26A84FCE8();
  OUTLINED_FUNCTION_4_61();
  sub_26A58B7DC(a1, v13);
  return v12;
}

void sub_26A6F25C8()
{
  OUTLINED_FUNCTION_12_37();
  v2 = *((*MEMORY[0x277D85000] & v1) + qword_2803D2240 + 16);
  *(v0 + v2) = [objc_opt_self() sharedPreferences];
  sub_26A852418();
  __break(1u);
}

double sub_26A6F26B0(void *a1)
{
  v1 = a1;
  sub_26A6F26F4(v1);
  v3 = v2;

  return v3;
}

id sub_26A6F26F4(uint64_t a1)
{
  OUTLINED_FUNCTION_12_37();
  OUTLINED_FUNCTION_16_24(v2, ((*MEMORY[0x277D85000] & v1) + qword_2803D2240));
  return objc_msgSendSuper2(&v4, sel_preferredContentSize);
}

void sub_26A6F2760(void *a1, double a2, double a3)
{
  v5 = a1;
  sub_26A6F27C0(v5, a2, a3);
}

uint64_t sub_26A6F27C0(uint64_t a1, double a2, double a3)
{
  OUTLINED_FUNCTION_12_37();
  OUTLINED_FUNCTION_16_24(v6, ((*MEMORY[0x277D85000] & v5) + qword_2803D2240));
  objc_msgSendSuper2(&v8, sel_setPreferredContentSize_, a2, a3);
  return sub_26A6F2848();
}

uint64_t sub_26A6F2848()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 != 3)
  {
    goto LABEL_4;
  }

  [v0 preferredContentSize];
  v4 = v3;
  v6 = v5;
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  [result frame];
  v10 = v9;
  v12 = v11;

  v15.width = v4;
  v15.height = v6;
  v16.width = v10;
  v16.height = v12;
  result = CGSizeEqualToSize(v15, v16);
  if (result)
  {
LABEL_4:
    v13 = sub_26A6F2400();
    v13([v0 preferredContentSize]);
  }

  return result;
}

uint64_t sub_26A6F29D8(void *a1)
{
  v1 = a1;
  v2 = sub_26A6F2970(v1);

  return v2 & 1;
}

uint64_t sub_26A6F2A9C(uint64_t a1)
{
  OUTLINED_FUNCTION_12_37();
}

id sub_26A6F2B58(uint64_t a1)
{
  OUTLINED_FUNCTION_12_37();
  OUTLINED_FUNCTION_16_24(v2, ((*MEMORY[0x277D85000] & v1) + qword_2803D2240));
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_26A6F2BC4(void *a1)
{
}

void VisualResponseViewController.updateSharedStateData(_:)()
{
  OUTLINED_FUNCTION_14_32();
  v12[4] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  OUTLINED_FUNCTION_5_21();
  v2 = sub_26A84ABC8();
  v12[0] = 0;
  v3 = [v1 propertyListWithData:v2 options:0 format:0 error:v12];

  if (v3)
  {
    v4 = v12[0];
    sub_26A852108();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1080, &qword_26A86B330);
    if (swift_dynamicCast())
    {
      v5 = sub_26A851688();

      [v0 updateSharedState_];
    }

    else
    {
      v10 = sub_26A851E98();
      LOBYTE(v11) = 2;
      j__OUTLINED_FUNCTION_200_0(v10, 1, "SnippetUI/VisualResponseViewController.swift", 44, 2, 208, "updateSharedStateData(_:)", 25, v11);
    }
  }

  else
  {
    v6 = v12[0];
    v7 = sub_26A84AAE8();

    swift_willThrow();
    v8 = v7;
    v9 = sub_26A851E98();
    LOBYTE(v11) = 2;
    j__OUTLINED_FUNCTION_171_0(v9, 0, "SnippetUI/VisualResponseViewController.swift", 44, 2, 213, "updateSharedStateData(_:)", 25, v11, v7);
  }
}

Swift::Void __swiftcall VisualResponseViewController.setAsrText(_:)(Swift::String a1)
{
  OUTLINED_FUNCTION_14_32();
  if (sub_26A61B6A8() == v2 && v3 == v1)
  {
  }

  else
  {
    OUTLINED_FUNCTION_5_21();
    v5 = sub_26A852598();

    if ((v5 & 1) == 0)
    {

      v6 = OUTLINED_FUNCTION_5_21();
      sub_26A61B718(v6);
    }
  }
}

Swift::Void __swiftcall VisualResponseViewController.postSiriSpeechEvent()()
{
  OUTLINED_FUNCTION_20_4();
  swift_beginAccess();

  v0 = OUTLINED_FUNCTION_5_21();
  sub_26A6208C4(v0, v1);
}

uint64_t VisualResponseViewController.setIsInAmbient(_:withScaleFactor:)(uint64_t a1, double a2)
{
  sub_26A61BECC(a1);
  v3.n128_f64[0] = a2;
  return sub_26A61C214(v3);
}

uint64_t VisualResponseViewController.currentIdiom.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SnippetUI28VisualResponseViewController_context);
  v2 = OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom;
  OUTLINED_FUNCTION_20_4();
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t VisualResponseViewController.currentIdiom.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SnippetUI28VisualResponseViewController_context);
  v4 = OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom;
  v5 = OUTLINED_FUNCTION_3_21(a1);
  *(v3 + v4) = a1;
  return sub_26A61D27C(v5);
}

uint64_t VisualResponseViewController.interactionDelegate.getter()
{
  OUTLINED_FUNCTION_20_4();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t VisualResponseViewController.interactionDelegate.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_3_21(a1);
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t VisualResponseViewController.containsComponentsWithAction.getter()
{
  sub_26A84B058();
  OUTLINED_FUNCTION_5_30();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_41();
  v3 = v2 - v1;
  v4 = type metadata accessor for ResponseView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v8 = v7 - v6;
  type metadata accessor for AnyRootView.ContentType(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  v12 = v11 - v10;
  sub_26A58B648();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A58B7DC(v12, type metadata accessor for AnyRootView.ContentType);
    v13 = 0;
  }

  else
  {
    sub_26A6F40CC();
    v14 = *(v8 + *(v4 + 24) + 8);
    v15 = OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom;
    OUTLINED_FUNCTION_20_4();
    swift_beginAccess();
    VRXIdiom.idiom.getter(*(v14 + v15), v3);
    v13 = Response.hasAction(for:mode:)(v3, *(v8 + *(v4 + 20)), v16, v17, v18, v19, v20, v21);
    v22 = OUTLINED_FUNCTION_5_21();
    v23(v22);
    sub_26A58B7DC(v8, type metadata accessor for ResponseView);
  }

  return v13 & 1;
}

uint64_t VisualResponseViewController.requestsKeyWindow.getter(uint64_t a1)
{
  v1 = sub_26A851E98();
  LOBYTE(v3) = 2;
  j__OUTLINED_FUNCTION_208_0(v1, 1, "SnippetUI/VisualResponseViewController.swift", 44, 2, 280, "requestsKeyWindow", 17, v3);
  return 0;
}

id sub_26A6F3BB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  v3 = sub_26A851788();

  return v3;
}

uint64_t sub_26A6F3C0C()
{
  OUTLINED_FUNCTION_20_4();
  swift_beginAccess();

  return OUTLINED_FUNCTION_21_20();
}

void sub_26A6F3C7C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_26A8517B8();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

double sub_26A6F3D00(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_32();
  v6 = (*(v3 + OBJC_IVAR____TtC9SnippetUI28VisualResponseViewController_context) + *v5);
  swift_beginAccess();
  *v6 = v4;
  v6[1] = v2;

  return result;
}

uint64_t VisualResponseViewController.visualResponseLocation.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SnippetUI28VisualResponseViewController_context);
  v2 = OBJC_IVAR____TtC9SnippetUI7Context_visualResponseLocation;
  OUTLINED_FUNCTION_20_4();
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t VisualResponseViewController.visualResponseLocation.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SnippetUI28VisualResponseViewController_context);
  v4 = OBJC_IVAR____TtC9SnippetUI7Context_visualResponseLocation;
  result = OUTLINED_FUNCTION_3_21(a1);
  *(v3 + v4) = a1;
  return result;
}

unint64_t VisualResponseViewController.description.getter()
{
  sub_26A852248();

  v0 = AnyRootView.description.getter();
  MEMORY[0x26D663B00](v0);

  return 0xD000000000000025;
}

uint64_t sub_26A6F40CC()
{
  v2 = OUTLINED_FUNCTION_13_2();
  v3(v2);
  OUTLINED_FUNCTION_46();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_26A6F4128(uint64_t a1)
{
  result = type metadata accessor for AnyRootView(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_43(uint64_t a1, uint64_t a2)
{

  return sub_26A84EA88();
}

uint64_t OUTLINED_FUNCTION_11_40(uint64_t a1, uint64_t a2)
{

  return sub_26A84EA88();
}

__n128 sub_26A6F43B8()
{
  v0 = sub_26A84F5F8();
  __swift_allocate_value_buffer(v0, qword_2803D2250);
  v1 = __swift_project_value_buffer(v0, qword_2803D2250);
  v2 = *(v0 + 20);
  v3 = *MEMORY[0x277CE0118];
  v4 = sub_26A84FB88();
  (*(*(v4 - 8) + 104))(v1 + v2, v3, v4);
  __asm { FMOV            V0.2D, #15.0 }

  *v1 = result;
  return result;
}

uint64_t _s9SnippetUI23SiriStandardButtonStyleV8makeBody13configurationQr05SwiftB00eF13ConfigurationV_tF_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DF0, &qword_26A878E10);
  MEMORY[0x28223BE20](v66);
  v57 = &v52 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4F38, &qword_26A8790E0);
  MEMORY[0x28223BE20](v63);
  v65 = &v52 - v4;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DC0, &qword_26A878DF0);
  MEMORY[0x28223BE20](v64);
  v56 = &v52 - v5;
  v55 = sub_26A84F988();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26A84FFA8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DE0, &unk_26A878E00);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DD0, &qword_26A878DF8);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DB0, &qword_26A878DE8);
  MEMORY[0x28223BE20](v19 - 8);
  v61 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v62 = &v52 - v22;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DA0, &qword_26A878DE0);
  MEMORY[0x28223BE20](v59);
  v24 = &v52 - v23;
  v60 = a1;
  sub_26A84FFB8();
  sub_26A851448();
  sub_26A84F628();
  (*(v8 + 32))(v14, v10, v7);
  v25 = v58;
  memcpy(&v14[*(v12 + 44)], __src, 0x70uLL);
  sub_26A851448();
  sub_26A84F628();
  sub_26A4DBDB4(v14, v18, &qword_2803B4DE0, &unk_26A878E00);
  memcpy(&v18[*(v16 + 44)], v70, 0x70uLL);
  v26 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4D68, &qword_26A878C30) + 36);
  v27 = *v26;
  if (*(v26 + 8) == 1)
  {
    if ((v27 & 1) == 0)
    {
LABEL_3:
      v28 = sub_26A850DF8();
      v29 = sub_26A850248();
      v30 = v57;
      sub_26A4DBD68(v18, v57, &qword_2803B4DD0, &qword_26A878DF8);
      v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4E00, &unk_26A878E18) + 36);
      *v31 = v28;
      *(v31 + 8) = v29;
      v32 = sub_26A850E88();
      KeyPath = swift_getKeyPath();
      v34 = (v30 + *(v66 + 36));
      *v34 = KeyPath;
      v34[1] = v32;
      v35 = &qword_2803B4DF0;
      v36 = &qword_26A878E10;
      sub_26A4DBD68(v30, v65, &qword_2803B4DF0, &qword_26A878E10);
      swift_storeEnumTagMultiPayload();
      sub_26A6F62B4();
      sub_26A6F64FC();
      v37 = v61;
      goto LABEL_6;
    }
  }

  else
  {

    sub_26A851EA8();
    v38 = sub_26A8501F8();
    sub_26A84EA78();

    v39 = v53;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v27, 0);
    (*(v54 + 8))(v39, v55);
    if (v68 != 1)
    {
      goto LABEL_3;
    }
  }

  v30 = v56;
  v40 = &v56[*(v64 + 36)];
  sub_26A8513E8();
  v41 = sub_26A850248();
  v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF440, &unk_26A877510) + 36)] = v41;
  sub_26A4DBD68(v18, v30, &qword_2803B4DD0, &qword_26A878DF8);
  v35 = &qword_2803B4DC0;
  v36 = &qword_26A878DF0;
  sub_26A4DBD68(v30, v65, &qword_2803B4DC0, &qword_26A878DF0);
  swift_storeEnumTagMultiPayload();
  sub_26A6F62B4();
  sub_26A6F64FC();
  v37 = v61;
LABEL_6:
  sub_26A84FDF8();
  sub_26A4DBD10(v30, v35, v36);
  sub_26A4DBD10(v18, &qword_2803B4DD0, &qword_26A878DF8);
  v42 = v62;
  sub_26A4DBDB4(v37, v62, &qword_2803B4DB0, &qword_26A878DE8);
  v43 = &v24[*(v59 + 36)];
  sub_26A6F5ED4(v25, v43);
  *(v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58, &unk_26A857A00) + 36)) = 256;
  sub_26A4DBDB4(v42, v24, &qword_2803B4DB0, &qword_26A878DE8);
  if (sub_26A84FFC8())
  {
    v44 = 0.98;
  }

  else
  {
    v44 = 1.0;
  }

  sub_26A8515A8();
  v46 = v45;
  v48 = v47;
  v49 = v67;
  sub_26A4DBDB4(v24, v67, &qword_2803B4DA0, &qword_26A878DE0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4D90, &qword_26A878DD8);
  v51 = v49 + *(result + 36);
  *v51 = v44;
  *(v51 + 8) = v44;
  *(v51 + 16) = v46;
  *(v51 + 24) = v48;
  return result;
}

uint64_t sub_26A6F4D20@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t *a5@<X5>, uint64_t *a6@<X6>, uint64_t a7@<X8>, double a8@<D0>)
{
  v105 = a6;
  v104 = a5;
  v92 = a2;
  v94 = a1;
  v103 = a7;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DF0, &qword_26A878E10);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v12);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4F38, &qword_26A8790E0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v14);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DC0, &qword_26A878DF0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v16);
  v89 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v88 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_0(v20 - v19);
  v21 = sub_26A84FFA8();
  OUTLINED_FUNCTION_15();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_41();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DE0, &unk_26A878E00) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v29);
  v31 = &v86 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DD0, &qword_26A878DF8) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v33);
  v35 = &v86 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DB0, &qword_26A878DE8);
  MEMORY[0x28223BE20](v36 - 8);
  OUTLINED_FUNCTION_19();
  v96 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_10_0(&v86 - v39);
  v101 = a3;
  v102 = a4;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v40);
  v42 = &v86 - v41;
  sub_26A84FFB8();
  sub_26A851448();
  OUTLINED_FUNCTION_9_47();
  LOBYTE(v87) = 1;
  v43 = OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_17_25(v43, v44, v45, v46, v47, v48, v49, v50, v86, v87, v88, v89, v90, v91);
  v52 = *(v23 + 32);
  v51 = v23 + 32;
  v52(v31, v27, v21);
  memcpy(&v31[*(v28 + 44)], __src, 0x70uLL);
  v90 = sub_26A851448();
  v91 = v53;
  LOBYTE(v89) = 1;
  v88 = 0;
  LOBYTE(v87) = 1;
  v54 = OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_16_25(v54, v55, v56, v57, v58, v59, v60, v61, v86, v87, v88, v89, v90, v91);
  sub_26A4DBDB4(v31, v35, &qword_2803B4DE0, &unk_26A878E00);
  memcpy(&v35[*(v32 + 44)], v108, 0x70uLL);
  if (v92)
  {
    if ((v94 & 1) == 0)
    {
LABEL_3:
      v62 = sub_26A850DF8();
      v63 = sub_26A850248();
      v64 = v91;
      sub_26A4DBD68(v35, v91, &qword_2803B4DD0, &qword_26A878DF8);
      v65 = v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4E00, &unk_26A878E18) + 36);
      *v65 = v62;
      *(v65 + 8) = v63;
      v66 = sub_26A850E88();
      KeyPath = swift_getKeyPath();
      v68 = (v64 + *(v100 + 36));
      *v68 = KeyPath;
      v68[1] = v66;
      v69 = &qword_2803B4DF0;
      v70 = &qword_26A878E10;
      sub_26A4DBD68(v64, v99, &qword_2803B4DF0, &qword_26A878E10);
      swift_storeEnumTagMultiPayload();
      sub_26A6F62B4();
      sub_26A6F64FC();
      OUTLINED_FUNCTION_15_28();
      goto LABEL_6;
    }
  }

  else
  {
    v71 = v94;

    sub_26A851EA8();
    v72 = sub_26A8501F8();
    sub_26A84EA78();

    v73 = v87;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v71, 0);
    (*(v88 + 8))(v73, v89);
    if (v106 != 1)
    {
      goto LABEL_3;
    }
  }

  v64 = v90;
  v74 = v90 + *(v98 + 36);
  sub_26A8513E8();
  v75 = sub_26A850248();
  *(v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF440, &unk_26A877510) + 36)) = v75;
  sub_26A4DBD68(v35, v64, &qword_2803B4DD0, &qword_26A878DF8);
  v69 = &qword_2803B4DC0;
  v70 = &qword_26A878DF0;
  sub_26A4DBD68(v64, v99, &qword_2803B4DC0, &qword_26A878DF0);
  swift_storeEnumTagMultiPayload();
  sub_26A6F62B4();
  sub_26A6F64FC();
  OUTLINED_FUNCTION_15_28();
LABEL_6:
  sub_26A84FDF8();
  sub_26A4DBD10(v64, v69, v70);
  sub_26A4DBD10(v35, &qword_2803B4DD0, &qword_26A878DF8);
  v76 = v95;
  sub_26A4DBDB4(v51, v95, &qword_2803B4DB0, &qword_26A878DE8);
  sub_26A4DBDB4(v76, v42, &qword_2803B4DB0, &qword_26A878DE8);
  v77 = &v42[*(v93 + 36)];
  *v77 = a8;
  *(v77 + 4) = 256;
  if (sub_26A84FFC8())
  {
    v78 = 0.98;
  }

  else
  {
    v78 = 1.0;
  }

  sub_26A8515A8();
  v80 = v79;
  v82 = v81;
  v83 = v103;
  sub_26A4DBDB4(v42, v103, v101, v102);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(v104, v105);
  v85 = v83 + *(result + 36);
  *v85 = v78;
  *(v85 + 8) = v78;
  *(v85 + 16) = v80;
  *(v85 + 24) = v82;
  return result;
}

uint64_t sub_26A6F54D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v113 = a2;
  v112 = a3;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DF0, &qword_26A878E10);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_82();
  v94 = v5;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4F38, &qword_26A8790E0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_82();
  v109 = v7;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DC0, &qword_26A878DF0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_82();
  v93 = v9;
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v91 = v11;
  v92 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_41();
  v90 = v13 - v12;
  v14 = sub_26A84FFA8();
  OUTLINED_FUNCTION_15();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_41();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DE0, &unk_26A878E00) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v22);
  v24 = &v89 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DD0, &qword_26A878DF8) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v26);
  v28 = &v89 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4DB0, &qword_26A878DE8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_19();
  v95 = v31;
  MEMORY[0x28223BE20](v32);
  v98 = &v89 - v33;
  v34 = *(v113 + 16);
  v96 = *(v113 + 24);
  v97 = v34;
  v99 = sub_26A84EF28();
  v100 = v29;
  sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  v104 = v35;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_82();
  v102 = v37;
  v105 = v38;
  v39 = sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  v106 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_19();
  v101 = v42;
  MEMORY[0x28223BE20](v43);
  v103 = &v89 - v44;
  v111 = a1;
  sub_26A84FFB8();
  sub_26A851448();
  OUTLINED_FUNCTION_9_47();
  LOBYTE(v90) = 1;
  v45 = OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_17_25(v45, v46, v47, v48, v49, v50, v51, v52, v89, v90, v91, v92, v93, v94);
  (*(v16 + 32))(v24, v20, v14);
  memcpy(&v24[*(v21 + 44)], v120, 0x70uLL);
  v93 = sub_26A851448();
  v94 = v53;
  LOBYTE(v92) = 1;
  v91 = 0;
  LOBYTE(v90) = 1;
  v54 = OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_16_25(v54, v55, v56, v57, v58, v59, v60, v61, v89, v90, v91, v92, v93, v94);
  sub_26A4DBDB4(v24, v28, &qword_2803B4DE0, &unk_26A878E00);
  memcpy(&v28[*(v25 + 44)], __src, 0x70uLL);
  v62 = v114 + *(v113 + 36);
  v63 = *v62;
  if (*(v62 + 8) != 1)
  {

    sub_26A851EA8();
    v75 = sub_26A8501F8();
    sub_26A84EA78();

    v76 = v90;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v63, 0);
    (*(v91 + 8))(v76, v92);
    if (v119 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v66 = v93;
    v77 = v93 + *(v108 + 36);
    sub_26A8513E8();
    v78 = sub_26A850248();
    *(v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF440, &unk_26A877510) + 36)) = v78;
    sub_26A4DBD68(v28, v66, &qword_2803B4DD0, &qword_26A878DF8);
    v72 = &qword_2803B4DC0;
    v73 = &qword_26A878DF0;
    sub_26A4DBD68(v66, v109, &qword_2803B4DC0, &qword_26A878DF0);
    swift_storeEnumTagMultiPayload();
    sub_26A6F62B4();
    sub_26A6F64FC();
    v74 = v95;
    goto LABEL_6;
  }

  if (v63)
  {
    goto LABEL_5;
  }

LABEL_3:
  v64 = sub_26A850DF8();
  v65 = sub_26A850248();
  v66 = v94;
  sub_26A4DBD68(v28, v94, &qword_2803B4DD0, &qword_26A878DF8);
  v67 = v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4E00, &unk_26A878E18) + 36);
  *v67 = v64;
  *(v67 + 8) = v65;
  v68 = sub_26A850E88();
  KeyPath = swift_getKeyPath();
  v70 = v109;
  v71 = (v66 + *(v110 + 36));
  *v71 = KeyPath;
  v71[1] = v68;
  v72 = &qword_2803B4DF0;
  v73 = &qword_26A878E10;
  sub_26A4DBD68(v66, v70, &qword_2803B4DF0, &qword_26A878E10);
  swift_storeEnumTagMultiPayload();
  sub_26A6F62B4();
  sub_26A6F64FC();
  v74 = v95;
LABEL_6:
  sub_26A84FDF8();
  sub_26A4DBD10(v66, v72, v73);
  sub_26A4DBD10(v28, &qword_2803B4DD0, &qword_26A878DF8);
  v79 = v98;
  sub_26A4DBDB4(v74, v98, &qword_2803B4DB0, &qword_26A878DE8);
  v80 = sub_26A6F6228();
  v81 = v102;
  sub_26A850CC8();
  sub_26A4DBD10(v79, &qword_2803B4DB0, &qword_26A878DE8);
  sub_26A84FFC8();
  WitnessTable = swift_getWitnessTable();
  v117 = v80;
  v118 = WitnessTable;
  v83 = v105;
  v84 = swift_getWitnessTable();
  sub_26A8515A8();
  v85 = v101;
  sub_26A8509C8();
  (*(v104 + 8))(v81, v83);
  v115 = v84;
  v116 = MEMORY[0x277CDF690];
  swift_getWitnessTable();
  v86 = v103;
  sub_26A80757C();
  v87 = *(v106 + 8);
  v87(v85, v39);
  sub_26A80757C();
  return (v87)(v86, v39);
}

uint64_t static ButtonStyle<>.siriStandard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2803A8D98 != -1)
  {
    swift_once();
  }

  v2 = sub_26A84F5F8();
  v3 = __swift_project_value_buffer(v2, qword_2803D2250);
  sub_26A6F5ED4(v3, a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4D68, &qword_26A878C30) + 36);
  result = swift_getKeyPath();
  *v4 = result;
  *(v4 + 8) = 0;
  return result;
}

uint64_t sub_26A6F5ED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A84F5F8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ButtonStyle<>.siriLeft.getter@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = 0x402E000000000000;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

uint64_t type metadata accessor for SiriStandardButtonStyle(uint64_t a1)
{
  result = qword_2803B4D70;
  if (!qword_2803B4D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A6F6038(uint64_t a1)
{
  sub_26A6F60A4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26A6F60A4(uint64_t a1)
{
  if (!qword_2803B4D80)
  {
    v2 = sub_26A84F5F8();
    v3 = sub_26A6F64B4(&qword_2803B0C28, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
    v5 = type metadata accessor for SiriButtonStyle(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_2803B4D80);
    }
  }
}

unint64_t sub_26A6F6170()
{
  result = qword_2803B4D98;
  if (!qword_2803B4D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4DA0, &qword_26A878DE0);
    sub_26A6F6228();
    sub_26A4DBCC8(&qword_28157FEA0, &qword_2803A9E58, &unk_26A857A00, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4D98);
  }

  return result;
}

unint64_t sub_26A6F6228()
{
  result = qword_2803B4DA8;
  if (!qword_2803B4DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4DB0, &qword_26A878DE8);
    sub_26A6F62B4();
    sub_26A6F64FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4DA8);
  }

  return result;
}

unint64_t sub_26A6F62B4()
{
  result = qword_2803B4DB8;
  if (!qword_2803B4DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4DC0, &qword_26A878DF0);
    sub_26A6F636C();
    sub_26A4DBCC8(&qword_2803AF468, &qword_2803AF440, &unk_26A877510, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4DB8);
  }

  return result;
}

unint64_t sub_26A6F636C()
{
  result = qword_2803B4DC8;
  if (!qword_2803B4DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4DD0, &qword_26A878DF8);
    sub_26A6F63F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4DC8);
  }

  return result;
}

unint64_t sub_26A6F63F8()
{
  result = qword_2803B4DD8;
  if (!qword_2803B4DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4DE0, &unk_26A878E00);
    sub_26A6F64B4(&qword_2803AE718, MEMORY[0x277CDE278], MEMORY[0x277CDE270]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4DD8);
  }

  return result;
}

uint64_t sub_26A6F64B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26A6F64FC()
{
  result = qword_2803B4DE8;
  if (!qword_2803B4DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4DF0, &qword_26A878E10);
    sub_26A6F65B4();
    sub_26A4DBCC8(&qword_2803ABF30, &qword_2803ABF38, &unk_26A873D40, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4DE8);
  }

  return result;
}

unint64_t sub_26A6F65B4()
{
  result = qword_2803B4DF8;
  if (!qword_2803B4DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4E00, &unk_26A878E18);
    sub_26A6F636C();
    sub_26A4DBCC8(&qword_2803ADC60, &qword_2803ADC68, &qword_26A85FCF0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4DF8);
  }

  return result;
}

uint64_t sub_26A6F666C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A6F66F0()
{
  result = qword_2803B4E18;
  if (!qword_2803B4E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4E20, &qword_26A878E30);
    sub_26A6F6228();
    sub_26A4DBCC8(&qword_2803B4E28, &qword_2803B4E30, &qword_26A878E38, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4E18);
  }

  return result;
}

unint64_t sub_26A6F67A8()
{
  result = qword_2803B4E48;
  if (!qword_2803B4E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B4E50, &qword_26A878E48);
    sub_26A6F6228();
    sub_26A4DBCC8(&qword_2803B4E58, qword_2803B4E60, &qword_26A878E50, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B4E48);
  }

  return result;
}

void sub_26A6F6880(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_26A5923A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26A6F6908(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0xFE)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 > 1)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_26A6F6A54(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0xFE)
          {
            v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
            if (a2 > 0xFE)
            {
              *(v17 + 8) = 0;
              *v17 = (a2 - 255);
            }

            else
            {
              *(v17 + 8) = -a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}