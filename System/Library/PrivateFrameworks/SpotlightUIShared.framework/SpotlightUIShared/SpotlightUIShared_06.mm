uint64_t sub_26B980040(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B8EC52C;

  return sub_26B97F9E4(a1, a2);
}

uint64_t sub_26B9800E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426E60, &qword_26B9B4510);
  v3[5] = swift_task_alloc();
  v4 = sub_26B9ABFE4();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B9801E8, 0, 0);
}

uint64_t sub_26B9801E8()
{
  v1 = [*(v0 + 24) person];
  if (!v1)
  {
    v7 = *(v0 + 16);
    v8 = type metadata accessor for ContextualTypedValue(0);
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    goto LABEL_44;
  }

  v2 = v1;
  v3 = [v1 emailAddresses];
  if (v3)
  {
    v4 = v3;
    v5 = sub_26B9AC6F4();

    if (*(v5 + 16))
    {

      v6 = sub_26B9AC4C4();

      goto LABEL_8;
    }
  }

  v6 = 0;
LABEL_8:
  v62 = [objc_allocWithZone(MEMORY[0x277CD3E98]) initWithValue:v6 type:1];

  v9 = [v2 phoneNumbers];
  if (v9)
  {
    v10 = v9;
    v11 = sub_26B9AC6F4();

    if (*(v11 + 16))
    {

      v12 = sub_26B9AC4C4();

      goto LABEL_13;
    }
  }

  v12 = 0;
LABEL_13:
  v13 = *(v0 + 64);
  v14 = *(v0 + 72);
  v16 = *(v0 + 48);
  v15 = *(v0 + 56);
  v63 = [objc_allocWithZone(MEMORY[0x277CD3E98]) initWithValue:v12 type:2];

  v17 = [objc_allocWithZone(MEMORY[0x277CD3E98]) initWithValue:0 type:0];
  sub_26B9808DC(v14);
  (*(v15 + 16))(v13, v14, v16);
  v18 = (*(v15 + 88))(v13, v16);
  v60 = v17;
  if (v18 == *MEMORY[0x277D72F98])
  {
    v19 = v17;
LABEL_24:
    v59 = v19;
    goto LABEL_25;
  }

  if (v18 == *MEMORY[0x277D72F90])
  {
    v19 = v63;
    goto LABEL_24;
  }

  v20 = v62;
  if (v18 == *MEMORY[0x277D72F88])
  {
    goto LABEL_23;
  }

  if (v18 == *MEMORY[0x277D72F80])
  {
    v21 = [v62 value];
    if (v21)
    {
LABEL_22:

      goto LABEL_23;
    }

    v21 = [v63 value];
    if (v21)
    {
      v20 = v63;
      goto LABEL_22;
    }

LABEL_23:
    v19 = v20;
    goto LABEL_24;
  }

  v55 = *(v0 + 64);
  v56 = *(v0 + 48);
  v57 = *(*(v0 + 56) + 8);
  v59 = v17;
  v57(v55, v56);
LABEL_25:
  v22 = *(v0 + 40);
  v23 = sub_26B9AAFD4();
  v24 = *(v23 - 8);
  (*(v24 + 56))(v22, 1, 1, v23);
  v25 = [v2 displayName];
  if (v25)
  {
    v26 = v25;
    sub_26B9AC504();
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v29 = [v2 contactIdentifier];
  if (v29)
  {
    v30 = v29;
    sub_26B9AC504();
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  v61 = v2;
  v33 = [v2 personIdentifier];
  if (v33)
  {
    v34 = v33;
    sub_26B9AC504();
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  v37 = *(v0 + 40);
  if ((*(v24 + 48))(v37, 1, v23) == 1)
  {
    v38 = 0;
    if (v28)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v38 = sub_26B9AAFC4();
    (*(v24 + 8))(v37, v23);
    if (v28)
    {
LABEL_36:
      v39 = sub_26B9AC4C4();

      if (v32)
      {
        goto LABEL_37;
      }

LABEL_41:
      v40 = 0;
      if (v36)
      {
        goto LABEL_38;
      }

LABEL_42:
      v41 = 0;
      goto LABEL_43;
    }
  }

  v39 = 0;
  if (!v32)
  {
    goto LABEL_41;
  }

LABEL_37:
  v40 = sub_26B9AC4C4();

  if (!v36)
  {
    goto LABEL_42;
  }

LABEL_38:
  v41 = sub_26B9AC4C4();

LABEL_43:
  v58 = *(v0 + 72);
  v43 = *(v0 + 48);
  v42 = *(v0 + 56);
  v44 = *(v0 + 16);
  [objc_allocWithZone(MEMORY[0x277CD3E90]) initWithPersonHandle:v59 nameComponents:v38 displayName:v39 image:0 contactIdentifier:v40 customIdentifier:v41];

  v45 = sub_26B9ABE44();
  v46 = swift_allocBox();
  v48 = v47;
  sub_26B9ABDF4();

  (*(v42 + 8))(v58, v43);
  (*(*(v45 - 8) + 104))(v48, *MEMORY[0x277D729B0], v45);
  *v44 = v46;
  v49 = *MEMORY[0x277D72A58];
  v50 = sub_26B9ABE84();
  (*(*(v50 - 8) + 104))(v44, v49, v50);
  v51 = type metadata accessor for ContextualTypedValue(0);
  v52 = v44 + *(v51 + 20);
  v52[32] = 0;
  *v52 = 0u;
  *(v52 + 1) = 0u;
  (*(*(v51 - 8) + 56))(v44, 0, 1, v51);
LABEL_44:

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_26B9808DC@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_26B9ABFF4();
  v49 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26B9ABFE4();
  v43 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26B9ABEB4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260F0, &qword_26B9B0D10);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v41 - v16;
  MEMORY[0x26D685FA0](v15);
  sub_26B97BCE4(v17);
  v18 = v10;
  v19 = v4;
  v20 = v43;
  (*(v8 + 8))(v18, v7);
  v21 = v6;
  (*(v20 + 104))(v6, *MEMORY[0x277D72F98], v19);
  sub_26B982368(v17, v14);
  v22 = type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier(0);
  if ((*(*(v22 - 8) + 48))(v14, 1, v22) == 1)
  {
    sub_26B8EACD8(v17, &qword_2804260F0, &qword_26B9B0D10);
    sub_26B8EACD8(v14, &qword_2804260F0, &qword_26B9B0D10);
    return (*(v20 + 32))(v44, v6, v19);
  }

  else
  {
    v24 = v44;
    v25 = *&v14[*(v22 + 20)];

    sub_26B981DC4(v14, type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier);
    v26 = *(v25 + 16);
    if (v26)
    {
      v41[1] = v25;
      v42 = v17;
      v50 = v21;
      v51 = v19;
      v27 = v49 + 16;
      v28 = *(v49 + 16);
      v29 = v25 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
      v30 = *(v49 + 72);
      v31 = v20;
      v32 = (v49 + 88);
      v33 = *MEMORY[0x277D72E80];
      v47 = (v31 + 8);
      v48 = (v49 + 8);
      v45 = (v31 + 32);
      v46 = (v49 + 96);
      v49 += 88;
      v28(v3, v29, v1);
      while (1)
      {
        if ((*v32)(v3, v1) == v33)
        {
          v34 = v33;
          v35 = v30;
          v36 = v27;
          v37 = v50;
          v38 = v51;
          (*v47)(v50, v51);
          (*v46)(v3, v1);
          v39 = v37;
          v27 = v36;
          v30 = v35;
          v33 = v34;
          v32 = v49;
          (*v45)(v39, v3, v38);
        }

        else
        {
          (*v48)(v3, v1);
        }

        v29 += v30;
        if (!--v26)
        {
          break;
        }

        v28(v3, v29, v1);
      }

      v20 = v43;
      v40 = v44;
      v21 = v50;
      v19 = v51;
      v17 = v42;
    }

    else
    {

      v40 = v24;
    }

    sub_26B8EACD8(v17, &qword_2804260F0, &qword_26B9B0D10);
    return (*(v20 + 32))(v40, v21, v19);
  }
}

uint64_t sub_26B980DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26B8EC52C;

  return sub_26B9800E0(a1, a2, a3);
}

uint64_t sub_26B980E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A8, &qword_26B9B09B0);
  v3[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  v3[6] = swift_task_alloc();
  v4 = sub_26B9ABE84();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A0, &unk_26B9B3640);
  v3[10] = swift_task_alloc();
  v5 = sub_26B9ABD04();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = sub_26B9ABEB4();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260F0, &qword_26B9B0D10);
  v3[17] = swift_task_alloc();
  v7 = sub_26B9ABF24();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B981134, 0, 0);
}

uint64_t sub_26B981134()
{
  v1 = [*(v0 + 24) entity];
  *(v0 + 184) = v1;
  if (!v1)
  {
LABEL_6:
    v11 = type metadata accessor for ContextualTypedValue(0);
    (*(*(v11 - 8) + 56))(*(v0 + 16), 1, 1);

    v12 = *(v0 + 8);

    return v12();
  }

  v2 = v1;
  v3 = [v1 entityIdentifer];
  if (!v3)
  {

    goto LABEL_6;
  }

  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = v3;
  sub_26B9AC504();

  MEMORY[0x26D685FA0]();
  sub_26B97BCE4(v4);
  (*(v6 + 8))(v5, v7);
  v9 = type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier(0);
  if ((*(*(v9 - 8) + 48))(v4, 1, v9) == 1)
  {
    v10 = *(v0 + 136);

    sub_26B8EACD8(v10, &qword_2804260F0, &qword_26B9B0D10);
    goto LABEL_6;
  }

  v15 = *(v0 + 168);
  v14 = *(v0 + 176);
  v16 = *(v0 + 152);
  v17 = *(v0 + 136);
  v18 = *(v0 + 144);
  v19 = *(v0 + 120);
  v30 = *(v0 + 112);
  v28 = *(v0 + 160);
  v20 = *(v0 + 80);
  v29 = *(v0 + 40);
  v21 = *(v16 + 16);
  v21(v15, v17, v18);
  sub_26B981DC4(v17, type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier);
  (*(v16 + 32))(v14, v15, v18);
  v21(v28, v14, v18);
  v22 = sub_26B9AC1D4();
  (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  v23 = sub_26B9ABCE4();
  MEMORY[0x26D685FA0](v23);
  (*(v19 + 56))(v29, 0, 1, v30);
  v24 = swift_task_alloc();
  *(v0 + 192) = v24;
  *v24 = v0;
  v24[1] = sub_26B981500;
  v25 = *(v0 + 104);
  v27 = *(v0 + 40);
  v26 = *(v0 + 48);

  return static ToolKitUtilities.resolve(entityIdentifier:expectedType:)(v26, v25, v27);
}

uint64_t sub_26B981500()
{
  v1 = *(*v0 + 40);

  sub_26B8EACD8(v1, &qword_2804262A8, &qword_26B9B09B0);

  return MEMORY[0x2822009F8](sub_26B981628, 0, 0);
}

uint64_t sub_26B981628()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 48);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    sub_26B8EACD8(*(v0 + 48), &qword_2804260C8, &qword_26B9B0050);
    v10 = type metadata accessor for ContextualTypedValue(0);
    v11 = 1;
  }

  else
  {
    v12 = *(v0 + 72);
    v13 = *(v0 + 56);
    v14 = *(v0 + 16);
    v15 = *(*(v0 + 64) + 32);
    v15(v12, *(v0 + 48), v13);
    v15(v14, v12, v13);
    v10 = type metadata accessor for ContextualTypedValue(0);
    v11 = 0;
    v16 = v14 + *(v10 + 20);
    *(v16 + 32) = 0;
    *v16 = 0u;
    *(v16 + 16) = 0u;
  }

  (*(*(v10 - 8) + 56))(*(v0 + 16), v11, 1);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_26B98183C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26B8EC52C;

  return sub_26B980E64(a1, a2, a3);
}

double sub_26B9818EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426E68, qword_26B9B4AB0);
  v0 = swift_allocObject();
  *&result = 5;
  *(v0 + 16) = xmmword_26B9B0460;
  *(v0 + 32) = &type metadata for TypedValueParameterResolver.AppResolver;
  *(v0 + 40) = &off_281FF92C8;
  *(v0 + 48) = &type metadata for TypedValueParameterResolver.FileResolver;
  *(v0 + 56) = &off_281FF92E8;
  *(v0 + 64) = &type metadata for TypedValueParameterResolver.PersonResolver;
  *(v0 + 72) = &off_281FF9308;
  *(v0 + 80) = &type metadata for TypedValueParameterResolver.AppEntityResolver;
  *(v0 + 88) = &off_281FF9328;
  *(v0 + 96) = &type metadata for TypedValueParameterResolver.DefaultResolver;
  *(v0 + 104) = &off_281FF92A8;
  qword_28042FA08 = v0;
  return result;
}

uint64_t static TypedValueParameterResolver.resolveTypedValue(for:definition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26B9819BC, 0, 0);
}

uint64_t sub_26B9819BC()
{
  if (qword_28042FA00 != -1)
  {
    swift_once();
  }

  v1 = (qword_28042FA08 + 40);
  v2 = *(qword_28042FA08 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 2;
    v4 = *(v1 - 1);
    v5 = *v1;
    swift_getAssociatedTypeWitness();
    v6 = swift_dynamicCastUnknownClass();
    v1 = v3;
    if (v6)
    {
      v8 = swift_task_alloc();
      v0[6] = v8;
      *v8 = v0;
      v8[1] = sub_26B981B7C;
      v9 = v0[5];
      v10 = v0[2];
      v11 = v0[3];

      return sub_26B97D6F8(v10, v11, v7, v9, v4, v5);
    }
  }

  v13 = v0[2];
  v14 = type metadata accessor for ContextualTypedValue(0);
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = v0[1];

  return v15();
}

uint64_t sub_26B981B7C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_26B981C70(uint64_t a1, char a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = sub_26B9AB0A4();
  v15[0] = 0;
  v7 = [v3 initWithURL:v6 allowPlaceholder:a2 & 1 error:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_26B9AB104();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15[0];
    sub_26B9AAFE4();

    swift_willThrow();
    v13 = sub_26B9AB104();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

uint64_t sub_26B981DC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26B981E88(uint64_t a1)
{
  result = sub_26B9ABE84();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26B981EFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_26B981F58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_26B982044()
{
  result = qword_28042FD30[0];
  if (!qword_28042FD30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28042FD30);
  }

  return result;
}

unint64_t sub_26B98209C()
{
  result = qword_28042FF40[0];
  if (!qword_28042FF40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28042FF40);
  }

  return result;
}

unint64_t sub_26B9820F4()
{
  result = qword_280430050;
  if (!qword_280430050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280430050);
  }

  return result;
}

unint64_t sub_26B98214C()
{
  result = qword_280430058[0];
  if (!qword_280430058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280430058);
  }

  return result;
}

unint64_t sub_26B9821A4()
{
  result = qword_2804300E0;
  if (!qword_2804300E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804300E0);
  }

  return result;
}

unint64_t sub_26B9821FC()
{
  result = qword_2804300E8[0];
  if (!qword_2804300E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2804300E8);
  }

  return result;
}

uint64_t sub_26B982250(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_26B9ACEB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000 || (sub_26B9ACEB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F54646C756F6873 && a2 == 0xEE00657A696E656BLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_26B9ACEB4();

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

uint64_t sub_26B982368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260F0, &qword_26B9B0D10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9823DC@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426480, &unk_26B9B18A0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_26B9AF300;
    *(v6 + 32) = v3;
    *(v6 + 40) = v2;
    *(v6 + 72) = 0;

    a1 = v5;
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  return QueryRepresentation.init(arrayLiteral:)(v7, a1);
}

uint64_t sub_26B982480@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v7 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426480, &unk_26B9B18A0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_26B9AF300;
    *(v8 + 32) = a1;
    *(v8 + 40) = a2;
    *(v8 + 72) = 0;

    a3 = v7;
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  return QueryRepresentation.init(arrayLiteral:)(v9, a3);
}

id sub_26B982534()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D65898]) init];
  v2 = sub_26B9AC4C4();
  [v1 setSearchString_];

  [v1 setQueryKind_];
  [v1 setWhyQuery_];
  sub_26B9832F8(*v0, v0[1], v0[2], v0[3]);
  v3 = sub_26B9AC6E4();

  [v1 setFilterQueries_];

  return v1;
}

id sub_26B982604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D65898]) init];
  v5 = sub_26B9AC4C4();
  [v4 setSearchString_];

  [v4 setQueryKind_];
  [v4 setWhyQuery_];
  sub_26B983430(a3);
  v6 = sub_26B9AC6E4();

  [v4 setFilterQueries_];

  return v4;
}

uint64_t sub_26B9826E0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_26B9826F0()
{
  v1 = *(v0 + 32);

  return v1;
}

double sub_26B982768@<D0>(uint64_t a1@<X8>)
{
  sub_26B983698();

  *&result = ParameterQuery.platterBehavior.getter(a1).n128_u64[0];
  return result;
}

uint64_t sub_26B9827B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_26B983768();

  return SpotlightQuery.request.getter(a1, v4, a2);
}

uint64_t sub_26B98283C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B983860();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B982918(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B983860();
  *v5 = v2;
  v5[1] = sub_26B8EC52C;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

uint64_t sub_26B9829CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B97D0E0();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_26B982A20()
{
  v1 = *v0;

  return v1;
}

double sub_26B982A68@<D0>(uint64_t a1@<X8>)
{
  sub_26B983984();

  *&result = ParameterQuery.platterBehavior.getter(a1).n128_u64[0];
  return result;
}

uint64_t sub_26B982AB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_26B983A54();

  return SpotlightQuery.request.getter(a1, v4, a2);
}

uint64_t sub_26B982B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B983B4C();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B982BF8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B983B4C();
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

uint64_t sub_26B982CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B983BC8();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

id sub_26B982D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D65898]) init];
  v4 = sub_26B9AC4C4();
  [v3 setSearchString_];

  [v3 setQueryKind_];
  [v3 setWhyQuery_];
  v5 = sub_26B9AC6E4();
  [v3 setFilterQueries_];

  return v3;
}

double sub_26B982DE0@<D0>(uint64_t a1@<X8>)
{
  sub_26B983CC4();

  *&result = ParameterQuery.platterBehavior.getter(a1).n128_u64[0];
  return result;
}

uint64_t sub_26B982E2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_26B983D94();

  return SpotlightQuery.request.getter(a1, v4, a2);
}

uint64_t sub_26B982E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B983E8C();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B982F54(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B983E8C();
  *v5 = v2;
  v5[1] = sub_26B8EC52C;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

uint64_t sub_26B983008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B903BB0();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

double sub_26B983070@<D0>(uint64_t a1@<X8>)
{
  sub_26B983FEC();

  *&result = ParameterQuery.platterBehavior.getter(a1).n128_u64[0];
  return result;
}

uint64_t sub_26B9830BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_26B9840BC();

  return SpotlightQuery.request.getter(a1, v4, a2);
}

uint64_t sub_26B983114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B9841B4();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B9831F0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B9841B4();
  *v5 = v2;
  v5[1] = sub_26B8EC52C;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

uint64_t sub_26B9832A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B904368();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_26B9832F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427370, &qword_26B9B0D00);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26B9AF560;
  sub_26B9ACBF4();

  MEMORY[0x26D686470](a3, a4);
  MEMORY[0x26D686470](34, 0xE100000000000000);
  *(v8 + 32) = 0xD000000000000021;
  *(v8 + 40) = 0x800000026B9BA110;
  sub_26B9ACBF4();

  MEMORY[0x26D686470](a1, a2);
  MEMORY[0x26D686470](34, 0xE100000000000000);
  *(v8 + 48) = 0xD000000000000012;
  *(v8 + 56) = 0x800000026B9BA140;
  return v8;
}

uint64_t sub_26B983430(uint64_t a1)
{
  v2 = sub_26B9AB414();
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0xE000000000000000;
  v23 = 0;
  v24 = 0xE000000000000000;
  v7 = *(a1 + 16);
  if (v7)
  {
    v9 = *(v3 + 16);
    v8 = v3 + 16;
    v20 = v9;
    v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v11 = *(v8 + 56);
    v12 = (v8 - 8);
    do
    {
      v14 = v8;
      v20(v5, v10, v2);
      v15 = v23 & 0xFFFFFFFFFFFFLL;
      if ((v24 & 0x2000000000000000) != 0)
      {
        v15 = HIBYTE(v24) & 0xF;
      }

      if (v15)
      {
        MEMORY[0x26D686470](545029152, 0xE400000000000000);
      }

      v21 = 0;
      v22 = 0xE000000000000000;
      sub_26B9ACBF4();

      v21 = 0xD000000000000018;
      v22 = 0x800000026B9BA0F0;
      v13 = sub_26B9AB3C4();
      MEMORY[0x26D686470](v13);

      MEMORY[0x26D686470](v21, v22);

      (*v12)(v5, v2);
      v10 += v11;
      --v7;
      v8 = v14;
    }

    while (v7);
    v16 = v23;
    v6 = v24;
  }

  else
  {
    v16 = 0;
  }

  v17 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v17 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427370, &qword_26B9B0D00);
    result = swift_allocObject();
    *(result + 16) = xmmword_26B9AF300;
    *(result + 32) = v16;
    *(result + 40) = v6;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_26B983698()
{
  result = qword_280426E70;
  if (!qword_280426E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426E70);
  }

  return result;
}

unint64_t sub_26B9836EC()
{
  result = qword_280426E78;
  if (!qword_280426E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426E78);
  }

  return result;
}

unint64_t sub_26B983740(uint64_t a1)
{
  result = sub_26B983768();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B983768()
{
  result = qword_280426E80;
  if (!qword_280426E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426E80);
  }

  return result;
}

unint64_t sub_26B9837BC(uint64_t a1)
{
  result = sub_26B9837E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B9837E4()
{
  result = qword_280426E88;
  if (!qword_280426E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426E88);
  }

  return result;
}

unint64_t sub_26B983838(uint64_t a1)
{
  result = sub_26B983860();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B983860()
{
  result = qword_280426E90;
  if (!qword_280426E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426E90);
  }

  return result;
}

unint64_t sub_26B9838B4(uint64_t a1)
{
  result = sub_26B97D0E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B9838DC(uint64_t a1)
{
  result = sub_26B983904();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B983904()
{
  result = qword_280426E98;
  if (!qword_280426E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426E98);
  }

  return result;
}

unint64_t sub_26B983984()
{
  result = qword_280426EA0;
  if (!qword_280426EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426EA0);
  }

  return result;
}

unint64_t sub_26B9839D8()
{
  result = qword_280426EA8;
  if (!qword_280426EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426EA8);
  }

  return result;
}

unint64_t sub_26B983A2C(uint64_t a1)
{
  result = sub_26B983A54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B983A54()
{
  result = qword_280426EB0;
  if (!qword_280426EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426EB0);
  }

  return result;
}

unint64_t sub_26B983AA8(uint64_t a1)
{
  result = sub_26B983AD0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B983AD0()
{
  result = qword_280426EB8;
  if (!qword_280426EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426EB8);
  }

  return result;
}

unint64_t sub_26B983B24(uint64_t a1)
{
  result = sub_26B983B4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B983B4C()
{
  result = qword_280426EC0;
  if (!qword_280426EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426EC0);
  }

  return result;
}

unint64_t sub_26B983BA0(uint64_t a1)
{
  result = sub_26B983BC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B983BC8()
{
  result = qword_280426EC8;
  if (!qword_280426EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426EC8);
  }

  return result;
}

unint64_t sub_26B983C1C(uint64_t a1)
{
  result = sub_26B983C44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B983C44()
{
  result = qword_280426ED0;
  if (!qword_280426ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426ED0);
  }

  return result;
}

unint64_t sub_26B983CC4()
{
  result = qword_280426ED8;
  if (!qword_280426ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426ED8);
  }

  return result;
}

unint64_t sub_26B983D18()
{
  result = qword_280426EE0;
  if (!qword_280426EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426EE0);
  }

  return result;
}

unint64_t sub_26B983D6C(uint64_t a1)
{
  result = sub_26B983D94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B983D94()
{
  result = qword_280426EE8;
  if (!qword_280426EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426EE8);
  }

  return result;
}

unint64_t sub_26B983DE8(uint64_t a1)
{
  result = sub_26B983E10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B983E10()
{
  result = qword_280426EF0;
  if (!qword_280426EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426EF0);
  }

  return result;
}

unint64_t sub_26B983E64(uint64_t a1)
{
  result = sub_26B983E8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B983E8C()
{
  result = qword_280426EF8;
  if (!qword_280426EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426EF8);
  }

  return result;
}

unint64_t sub_26B983EE0(uint64_t a1)
{
  result = sub_26B903BB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B983F08(uint64_t a1)
{
  result = sub_26B983F30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B983F30()
{
  result = qword_280426F00;
  if (!qword_280426F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426F00);
  }

  return result;
}

uint64_t sub_26B983FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_26B983FEC()
{
  result = qword_280426F08;
  if (!qword_280426F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426F08);
  }

  return result;
}

unint64_t sub_26B984040()
{
  result = qword_280426F10;
  if (!qword_280426F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426F10);
  }

  return result;
}

unint64_t sub_26B984094(uint64_t a1)
{
  result = sub_26B9840BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B9840BC()
{
  result = qword_280426F18;
  if (!qword_280426F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426F18);
  }

  return result;
}

unint64_t sub_26B984110(uint64_t a1)
{
  result = sub_26B984138();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B984138()
{
  result = qword_280426F20;
  if (!qword_280426F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426F20);
  }

  return result;
}

unint64_t sub_26B98418C(uint64_t a1)
{
  result = sub_26B9841B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B9841B4()
{
  result = qword_280426F28;
  if (!qword_280426F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426F28);
  }

  return result;
}

unint64_t sub_26B984208(uint64_t a1)
{
  result = sub_26B904368();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B984230(uint64_t a1)
{
  result = sub_26B984258();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B984258()
{
  result = qword_280426F30;
  if (!qword_280426F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426F30);
  }

  return result;
}

uint64_t sub_26B9842D4(uint64_t a1, int a2)
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

uint64_t sub_26B98431C(uint64_t result, int a2, int a3)
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

unint64_t sub_26B9843A8(uint64_t a1)
{
  result = sub_26B9843D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B9843D0()
{
  result = qword_280426F38;
  if (!qword_280426F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426F38);
  }

  return result;
}

uint64_t sub_26B984424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B98475C();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B984500(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B98475C();
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

unint64_t sub_26B9845B4(uint64_t a1)
{
  result = sub_26B9845DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B9845DC()
{
  result = qword_280426F40;
  if (!qword_280426F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426F40);
  }

  return result;
}

double sub_26B984630@<D0>(uint64_t a1@<X8>)
{
  sub_26B984708();

  *&result = ParameterQuery.platterBehavior.getter(a1).n128_u64[0];
  return result;
}

unint64_t sub_26B98467C(uint64_t a1)
{
  result = sub_26B903738();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B9846A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B903738();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_26B984708()
{
  result = qword_280426F48;
  if (!qword_280426F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426F48);
  }

  return result;
}

unint64_t sub_26B98475C()
{
  result = qword_280426F50;
  if (!qword_280426F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426F50);
  }

  return result;
}

uint64_t sub_26B9847B4(void *a1)
{
  if (a1)
  {
    v1 = [a1 title];
    v2 = sub_26B9AC504();
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v2 = sub_26B9AAF14();
  }

  v3 = v2;

  return v3;
}

uint64_t sub_26B984878(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 subtitle];
  v2 = sub_26B9AC504();

  return v2;
}

void sub_26B9848DC()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v0 = [objc_allocWithZone(MEMORY[0x277CCA948]) initWithTypes:16 error:v4];
  v1 = v4[0];
  if (!v0)
  {
    v2 = v1;
    v3 = sub_26B9AAFE4();

    swift_willThrow();
    v0 = 0;
  }

  qword_280433DE8 = v0;
}

id sub_26B984994(void *a1)
{
  if (!a1)
  {
    v3 = [objc_opt_self() mapItemForCurrentLocation];
    v6 = [v3 placemark];
    goto LABEL_6;
  }

  v2 = [a1 mapItem];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 placemark];
  v5 = [v4 name];

  if (v5)
  {

    v6 = [v3 placemark];
LABEL_6:
    v7 = v6;

    return v7;
  }

  v8 = [v3 location];
  v9 = [a1 title];
  sub_26B9AC504();

  if (qword_2804313F0 != -1)
  {
    swift_once();
  }

  if (!qword_280433DE8)
  {
    goto LABEL_44;
  }

  v10 = qword_280433DE8;
  v11 = [a1 title];
  sub_26B9AC504();

  MEMORY[0x26D686470](32, 0xE100000000000000);

  v12 = [a1 subtitle];
  v13 = sub_26B9AC504();
  v15 = v14;

  MEMORY[0x26D686470](v13, v15);

  v16 = sub_26B9AC4C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427080, &qword_26B9B52A8);
  sub_26B8F7938(&qword_280427088, &qword_280427080, &qword_26B9B52A8, MEMORY[0x277D83D30]);
  sub_26B92C070();
  v17 = sub_26B9AC9E4();
  v19 = [v10 matchesInString:v16 options:0 range:{v17, v18}];

  sub_26B9294B8(0, &qword_280427098, 0x277CCACC0);
  v20 = sub_26B9AC6F4();

  if (!(v20 >> 62))
  {
    result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

  result = sub_26B9ACB44();
  if (!result)
  {
LABEL_43:

LABEL_44:
    v24 = 0;
LABEL_45:
    v51 = sub_26B9AC4C4();

    v7 = [objc_opt_self() placemarkWithLocation:v8 name:v51 postalAddress:v24];

    return v7;
  }

LABEL_13:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x26D686B00](0, v20);
    goto LABEL_16;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v20 + 32);
LABEL_16:
    v23 = v22;

    v24 = [objc_allocWithZone(MEMORY[0x277CBDB60]) init];
    v25 = [v23 components];
    if (v25)
    {
      v26 = v25;
      type metadata accessor for NSTextCheckingKey();
      sub_26B989834(&qword_2804270A0, type metadata accessor for NSTextCheckingKey, &unk_26B9B5408);
      v27 = sub_26B9AC404();

      if (*(v27 + 16) && (sub_26B92BD78(*MEMORY[0x277CCA6E8]), (v28 & 1) != 0))
      {

        v29 = sub_26B9AC4C4();

        [v24 setStreet_];
      }

      else
      {
      }
    }

    v30 = &off_279D10000;
    v31 = [v23 addressComponents];
    if (v31)
    {
      v32 = v31;
      type metadata accessor for NSTextCheckingKey();
      sub_26B989834(&qword_2804270A0, type metadata accessor for NSTextCheckingKey, &unk_26B9B5408);
      v33 = sub_26B9AC404();

      if (*(v33 + 16) && (sub_26B92BD78(*MEMORY[0x277CCA6B0]), (v34 & 1) != 0))
      {

        v35 = sub_26B9AC4C4();
        v30 = &off_279D10000;

        [v24 setCity_];
      }

      else
      {
      }
    }

    v36 = [v23 v30[486]];
    if (v36)
    {
      v37 = v36;
      type metadata accessor for NSTextCheckingKey();
      sub_26B989834(&qword_2804270A0, type metadata accessor for NSTextCheckingKey, &unk_26B9B5408);
      v38 = sub_26B9AC404();

      if (*(v38 + 16) && (sub_26B92BD78(*MEMORY[0x277CCA6E0]), (v39 & 1) != 0))
      {

        v40 = sub_26B9AC4C4();

        [v24 setState_];
      }

      else
      {
      }
    }

    v41 = [v23 v30[486]];
    if (v41)
    {
      v42 = v41;
      type metadata accessor for NSTextCheckingKey();
      sub_26B989834(&qword_2804270A0, type metadata accessor for NSTextCheckingKey, &unk_26B9B5408);
      v43 = sub_26B9AC404();

      if (*(v43 + 16) && (sub_26B92BD78(*MEMORY[0x277CCA6F0]), (v44 & 1) != 0))
      {

        v45 = sub_26B9AC4C4();

        [v24 setPostalCode_];
      }

      else
      {
      }
    }

    v46 = [v23 v30[486]];
    if (v46)
    {
      v47 = v46;
      type metadata accessor for NSTextCheckingKey();
      sub_26B989834(&qword_2804270A0, type metadata accessor for NSTextCheckingKey, &unk_26B9B5408);
      v48 = sub_26B9AC404();

      if (*(v48 + 16) && (sub_26B92BD78(*MEMORY[0x277CCA6B8]), (v49 & 1) != 0))
      {

        v50 = sub_26B9AC4C4();

        [v24 setCountry_];
      }

      else
      {
      }
    }

    goto LABEL_45;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B985324()
{
  v1 = *v0;
  sub_26B9ACFB4();
  if (v1)
  {
    MEMORY[0x26D686E90](1);
    sub_26B9AC9D4();
  }

  else
  {
    MEMORY[0x26D686E90](0);
  }

  return sub_26B9ACFF4();
}

uint64_t sub_26B985388(uint64_t a1)
{
  if (!*v1)
  {
    return MEMORY[0x26D686E90](0);
  }

  MEMORY[0x26D686E90](1);
  return sub_26B9AC9D4();
}

uint64_t sub_26B9853E0(uint64_t a1)
{
  v2 = *v1;
  sub_26B9ACFB4();
  if (v2)
  {
    MEMORY[0x26D686E90](1);
    sub_26B9AC9D4();
  }

  else
  {
    MEMORY[0x26D686E90](0);
  }

  return sub_26B9ACFF4();
}

BOOL sub_26B985440(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_26B9294B8(0, &qword_280426F60, 0x277D82BB8);
      return sub_26B9AC9C4() & 1;
    }

    return 0;
  }

  return !v2;
}

id sub_26B9854B0()
{
  v1 = OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource____lazy_storage___searchCompleter;
  v2 = *(v0 + OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource____lazy_storage___searchCompleter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource____lazy_storage___searchCompleter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CD4E28]) init];
    [v4 setDelegate_];
    [v4 setResultTypes_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_26B9855B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 120) = a5;
  *(v6 + 128) = v5;
  *(v6 + 104) = a2;
  *(v6 + 112) = a4;
  *(v6 + 96) = a1;
  v8 = sub_26B9AC2E4();
  *(v6 + 136) = v8;
  *(v6 + 144) = *(v8 - 8);
  *(v6 + 152) = swift_task_alloc();
  v9 = sub_26B9AC304();
  *(v6 + 160) = v9;
  *(v6 + 168) = *(v9 - 8);
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = *a3;
  *(v6 + 248) = *(a3 + 8);
  *(v6 + 249) = *(a3 + 9);
  *(v6 + 192) = *(a3 + 16);
  v10 = sub_26B92A538();
  swift_beginAccess();
  *(v6 + 208) = *v10;
  v11 = *((*MEMORY[0x277D85000] & *v5) + 0xC8);
  sub_26B9AAAE4();
  v14 = (v11 + *v11);
  v12 = swift_task_alloc();
  *(v6 + 216) = v12;
  *v12 = v6;
  v12[1] = sub_26B9857EC;

  return v14();
}

uint64_t sub_26B9857EC()
{
  v1 = *(*v0 + 208);

  return MEMORY[0x2822009F8](sub_26B9858FC, v1, 0);
}

uint64_t sub_26B9858FC()
{
  v1 = v0[24];
  v34 = v0[25];
  v2 = *(v0 + 249);
  v3 = *(v0 + 248);
  v4 = v0[23];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[12];
  v10 = &v6[OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource_currentQuery];
  *v10 = v9;
  *(v10 + 1) = v7;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v8;
  *(v11 + 32) = v5;
  *(v11 + 40) = v4;
  *(v11 + 48) = v3;
  *(v11 + 49) = v2;
  *(v11 + 56) = v1;
  *(v11 + 64) = v34;
  v12 = &v6[OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource_responseHandler];
  v13 = *&v6[OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource_responseHandler];
  v14 = *&v6[OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource_responseHandler + 8];
  *v12 = &unk_26B9B50D0;
  *(v12 + 1) = v11;
  v15 = v6;
  sub_26B9AAAE4();
  sub_26B9353FC(v13, v14);
  v16 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v16 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = v0[22];
    v18 = v0[19];
    v33 = v0[21];
    v35 = v0[20];
    v19 = v0[17];
    v32 = v0[18];
    v20 = v0[16];
    v21 = v0[12];
    v22 = v0[13];

    sub_26B9294B8(0, &qword_280426F80, 0x277D85C78);
    v31 = sub_26B9AC954();
    v23 = swift_allocObject();
    v23[2] = v20;
    v23[3] = v21;
    v23[4] = v22;
    v0[6] = sub_26B989014;
    v0[7] = v23;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_26B9061AC;
    v0[5] = &block_descriptor_3;
    v24 = _Block_copy(v0 + 2);

    v25 = v20;
    sub_26B9AC2F4();
    v0[11] = MEMORY[0x277D84F90];
    sub_26B989834(&qword_280426F88, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426F90, &qword_26B9B6860);
    sub_26B8F7938(&qword_280426F98, &qword_280426F90, &qword_26B9B6860, MEMORY[0x277D83970]);
    sub_26B9ACB04();
    MEMORY[0x26D686830](0, v17, v18, v24);
    _Block_release(v24);

    (*(v32 + 8))(v18, v19);
    (*(v33 + 8))(v17, v35);
LABEL_5:

    v26 = v0[1];

    return v26();
  }

  v28 = *v12;
  v0[28] = *v12;
  if (!v28)
  {
    goto LABEL_5;
  }

  v0[29] = *(v12 + 1);
  sub_26B9AAAE4();
  v36 = (v28 + *v28);
  v29 = swift_task_alloc();
  v0[30] = v29;
  *v29 = v0;
  v29[1] = sub_26B985D44;
  v30 = MEMORY[0x277D84F90];

  return v36(v30);
}

uint64_t sub_26B985D44()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 208);

  sub_26B9353FC(v2, v1);

  return MEMORY[0x2822009F8](sub_26B985E90, v3, 0);
}

uint64_t sub_26B985E90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B985F04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[30] = a4;
  v7[31] = a7;
  v7[29] = a3;
  v10 = sub_26B92A538();
  swift_beginAccess();
  v7[32] = *v10;
  v11 = *((*MEMORY[0x277D85000] & *a2) + 0xD0);
  sub_26B9AAAE4();
  v14 = (v11 + *v11);
  v12 = swift_task_alloc();
  v7[33] = v12;
  *v12 = v7;
  v12[1] = sub_26B986064;

  return v14(a1);
}

uint64_t sub_26B986064(uint64_t a1)
{
  v4 = *v2;
  v4[34] = v1;

  v5 = v4[32];
  if (v1)
  {
    v6 = sub_26B9865B4;
  }

  else
  {
    v4[35] = a1;
    v6 = sub_26B9861A0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26B9861A0()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v3 = [objc_allocWithZone(MEMORY[0x277D65848]) init];
  *(v0 + 288) = v3;
  v4 = v3;
  v5 = sub_26B9AC4C4();
  [v4 setTitle_];

  v6 = sub_26B9AC4C4();
  [v4 setIdentifier_];

  sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
  v7 = sub_26B9AC6E4();

  [v4 setResults_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26B9B1290;
  *(v8 + 32) = v4;
  v9 = sub_26B906128();
  SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(v8, v1, 1, 1, 0, v9 & 1, v0 + 96);
  v10 = *(v0 + 104);
  v11 = *(v0 + 112);
  v12 = *(v0 + 113);
  v13 = *(v0 + 120);
  v14 = *(v0 + 128);
  *(v0 + 136) = *(v0 + 96);
  *(v0 + 144) = v10;
  *(v0 + 152) = v11;
  *(v0 + 153) = v12;
  *(v0 + 160) = v13;
  *(v0 + 168) = v14;
  v17 = (v2 + *v2);
  v15 = swift_task_alloc();
  *(v0 + 296) = v15;
  *v15 = v0;
  v15[1] = sub_26B9863FC;

  return v17(v0 + 136);
}

uint64_t sub_26B9863FC()
{
  v1 = *(*v0 + 256);

  return MEMORY[0x2822009F8](sub_26B98654C, v1, 0);
}

uint64_t sub_26B98654C()
{
  v1 = *(v0 + 288);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26B9865B4()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426DC0, &qword_26B9B52A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26B9AF300;
  swift_getErrorValue();
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  *(v3 + 56) = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 32));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v4, v5);
  sub_26B9ACFA4();

  static SearchResults.empty(queryID:)(v1, v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 33);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  *(v0 + 56) = *(v0 + 16);
  *(v0 + 64) = v7;
  *(v0 + 72) = v8;
  *(v0 + 73) = v9;
  *(v0 + 80) = v10;
  *(v0 + 88) = v11;
  v14 = (v2 + *v2);
  v12 = swift_task_alloc();
  *(v0 + 304) = v12;
  *v12 = v0;
  v12[1] = sub_26B986798;

  return v14(v0 + 56);
}

uint64_t sub_26B986798()
{
  v1 = *(*v0 + 256);

  return MEMORY[0x2822009F8](sub_26B9868E8, v1, 0);
}

uint64_t sub_26B9868E8()
{
  v1 = *(v0 + 272);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26B986954(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = [a1 results];
  sub_26B9294B8(0, &qword_280426FA8, 0x277CD4E30);
  v7 = sub_26B9AC6F4();

  v8 = sub_26B9AC824();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = v1;
  v10 = sub_26B92A538();
  swift_beginAccess();
  v11 = *v10;
  v12 = sub_26B989834(&qword_280426FB0, type metadata accessor for QueryActor, &protocol conformance descriptor for QueryActor);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = v9;
  v13[5] = v7;
  sub_26B9AAAE4();
  sub_26B908364(0, 0, v5, &unk_26B9B50E0, v13);
}

uint64_t sub_26B986B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v6 = sub_26B92A538();
  swift_beginAccess();
  v7 = *v6;
  v5[8] = v7;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B986BA4, v7, 0);
}

uint64_t sub_26B986BA4()
{
  v1 = *(v0 + 48) + OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource_responseHandler;
  v2 = *v1;
  *(v0 + 72) = *v1;
  if (v2)
  {
    *(v0 + 80) = *(v1 + 8);
    sub_26B9AAAE4();
    v7 = (v2 + *v2);
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_26B986D14;
    v4 = *(v0 + 56);

    return v7(v4);
  }

  else
  {

    **(v0 + 40) = *(v0 + 72) == 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_26B986D14()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);

  sub_26B9353FC(v2, v1);

  return MEMORY[0x2822009F8](sub_26B986E60, v3, 0);
}

uint64_t sub_26B986E60()
{

  **(v0 + 40) = *(v0 + 72) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B9870B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_26B9AC824();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = v0;
  v6 = sub_26B92A538();
  swift_beginAccess();
  v7 = *v6;
  v8 = sub_26B989834(&qword_280426FB0, type metadata accessor for QueryActor, &protocol conformance descriptor for QueryActor);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v5;
  sub_26B9AAAE4();
  sub_26B908364(0, 0, v3, &unk_26B9B50F0, v9);
}

uint64_t sub_26B987224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v5 = sub_26B92A538();
  swift_beginAccess();
  v6 = *v5;
  v4[7] = v6;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B9872B4, v6, 0);
}

uint64_t sub_26B9872B4()
{
  v1 = *(v0 + 48) + OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource_responseHandler;
  v2 = *v1;
  *(v0 + 64) = *v1;
  if (v2)
  {
    *(v0 + 72) = *(v1 + 8);
    sub_26B9AAAE4();
    v7 = (v2 + *v2);
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    v3[1] = sub_26B987428;
    v4 = MEMORY[0x277D84F90];

    return v7(v4);
  }

  else
  {

    **(v0 + 40) = *(v0 + 64) == 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_26B987428()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);

  sub_26B9353FC(v2, v1);

  return MEMORY[0x2822009F8](sub_26B987574, v3, 0);
}

uint64_t sub_26B987574()
{

  **(v0 + 40) = *(v0 + 64) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B987764()
{
  *(v1 + 40) = v0;
  v2 = sub_26B92A538();
  swift_beginAccess();
  v3 = *v2;
  *(v1 + 48) = v3;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B9877F4, v3, 0);
}

uint64_t sub_26B9877F4()
{
  v1 = *(v0 + 40);
  v2 = (v1 + OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource_currentQuery);
  *v2 = 0;
  v2[1] = 0;

  v3 = (v1 + OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource_responseHandler);
  v4 = *(v1 + OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource_responseHandler);
  v5 = *(v1 + OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource_responseHandler + 8);
  *v3 = 0;
  v3[1] = 0;
  sub_26B9353FC(v4, v5);
  sub_26B9AC804();
  *(v0 + 56) = sub_26B9AC7F4();
  v7 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B9878BC, v7, v6);
}

uint64_t sub_26B9878BC()
{
  v1 = *(v0 + 48);

  *(v0 + 64) = sub_26B9854B0();

  return MEMORY[0x2822009F8](sub_26B987930, v1, 0);
}

uint64_t sub_26B987930()
{
  v1 = *(v0 + 64);

  [v1 cancel];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26B9879A8(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_26B9AB1F4();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v4 = sub_26B9ABE84();
  v2[23] = v4;
  v2[24] = *(v4 - 8);
  v2[25] = swift_task_alloc();
  v5 = sub_26B92A538();
  swift_beginAccess();
  v6 = *v5;

  return MEMORY[0x2822009F8](sub_26B987ADC, v6, 0);
}

char *sub_26B987ADC()
{
  v1 = v0;
  v2 = v0[18];
  v3 = v2 >> 62;
  if (v2 >> 62)
  {
LABEL_53:
    v4 = sub_26B9ACB44();
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v89 = MEMORY[0x277D84F90];
    result = sub_26B988CF8(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = v89;
    if ((v2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        v9 = MEMORY[0x26D686B00](i, v1[18]);
        v90 = v7;
        v11 = v7[2];
        v10 = v7[3];
        if (v11 >= v10 >> 1)
        {
          v12 = v9;
          sub_26B988CF8((v10 > 1), v11 + 1, 1);
          v9 = v12;
          v7 = v90;
        }

        v7[2] = v11 + 1;
        v7[v11 + 4] = v9;
      }
    }

    else
    {
      v71 = (v1[18] + 32);
      v72 = v89[2];
      do
      {
        v92 = v7;
        v73 = v7[3];
        v74 = *v71;
        if (v72 >= v73 >> 1)
        {
          v75 = v74;
          sub_26B988CF8((v73 > 1), v72 + 1, 1);
          v74 = v75;
          v7 = v92;
        }

        v7[2] = v72 + 1;
        v7[v72 + 4] = v74;
        ++v71;
        ++v72;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v13 = (v1[19] + OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource_currentQuery);
  v14 = v13[1];
  if (v14)
  {
    v15 = *v13;

    if (!v3)
    {
LABEL_14:
      v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_17;
    }
  }

  else
  {
    v15 = 0;
    v14 = 0xE000000000000000;
    if (!v3)
    {
      goto LABEL_14;
    }
  }

  v16 = sub_26B9ACB44();
LABEL_17:
  if (!v16 || (type metadata accessor for FuzzyRanker(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0), inited = swift_initStackObject(), *(inited + 16) = xmmword_26B9B1290, *(inited + 32) = swift_getKeyPath(), v18 = sub_26B9891F4(inited), swift_setDeallocating(), swift_arrayDestroy(), v1[16] = 1, v19 = sub_26B989440(), v20 = sub_26B906128(), v21 = sub_26B9731BC(&unk_287C608F8, v18, v15, v14, (v1 + 16), v20 & 1, &type metadata for LocationParameterQueryDataSource.LocationResult, v19), , v22 = v21[2], , v22))
  {
    sub_26B988C04(v7);
    v7 = &unk_287C60920;
  }

  type metadata accessor for FuzzyRanker();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_26B9B1CB0;
  *(v23 + 32) = swift_getKeyPath();
  *(v23 + 40) = swift_getKeyPath();
  v24 = sub_26B9891F4(v23);
  swift_setDeallocating();
  swift_arrayDestroy();
  v1[17] = 1;
  v25 = sub_26B989440();
  v26 = sub_26B9731BC(v7, v24, v15, v14, (v1 + 17), 1, &type metadata for LocationParameterQueryDataSource.LocationResult, v25);

  v91 = v5;
  sub_26B9AAFB4();
  swift_allocObject();
  sub_26B9AAFA4();
  v83 = v26[2];
  if (v83)
  {
    v27 = v1[24];
    v2 = v1[21];
    v86 = objc_opt_self();
    v3 = 0;
    v77 = *MEMORY[0x277D729D0];
    v79 = *MEMORY[0x277D72A58];
    v78 = (v27 + 104);
    v76 = (v2 + 8);
    v82 = MEMORY[0x277D84F90];
    v80 = (v27 + 8);
    v28 = &off_279D10000;
    v81 = v26;
    while (1)
    {
      if (v3 >= v26[2])
      {
        __break(1u);
        goto LABEL_53;
      }

      v29 = v26[v3 + 4];
      v30 = objc_allocWithZone(MEMORY[0x277D65850]);
      v31 = v29;
      v87 = [v30 v28[280]];
      v32 = [objc_allocWithZone(MEMORY[0x277D4C328]) v28[280]];
      v88 = v31;
      if (v29)
      {
        v33 = [v31 title];
        sub_26B9AC504();
      }

      else
      {
        v33 = [objc_opt_self() mainBundle];
        sub_26B9AAF14();
      }

      v2 = sub_26B9AC4C4();

      v34 = [v86 textWithString_];

      if (v34)
      {
        [v34 setMaxLines_];
        v85 = v34;
        [v32 setTitle_];
        if (v29)
        {
          v35 = [v31 subtitle];
          sub_26B9AC504();

          v36 = sub_26B9AC4C4();

          v37 = [v86 textWithString_];

          if (v37)
          {
            v38 = swift_allocObject();
            *(v38 + 16) = xmmword_26B9B1290;
            *(v38 + 32) = v37;
            sub_26B9294B8(0, &qword_280426FE0, 0x277D4C598);
            v39 = v37;
            v40 = sub_26B9AC6E4();

            [v32 setDescriptions_];
          }
        }

        v28 = &off_279D10000;
        v41 = [objc_allocWithZone(MEMORY[0x277D4C688]) init];
        v2 = sub_26B9AC4C4();

        [v41 setSymbolName_];

        v84 = v41;
        [v32 setThumbnail_];
        if (v29)
        {
          v42 = v88;
          if (!sub_26B984994(v29))
          {

            goto LABEL_24;
          }

          v43 = sub_26B9ABE44();
          v44 = swift_allocBox();
          v46 = v45;
          sub_26B9ABE34();

          (*(*(v43 - 8) + 104))(v46, v77, v43);
        }

        else
        {
          v47 = sub_26B9ABE44();
          v44 = swift_allocBox();
          v49 = v48;
          sub_26B9ABE24();
          (*(*(v47 - 8) + 104))(v49, v77, v47);
        }

        v50 = v1[25];
        v51 = v1[23];
        *v50 = v44;
        (*v78)(v50, v79, v51);
        v52 = [objc_allocWithZone(MEMORY[0x277D4C380]) init];
        sub_26B989834(&qword_280426FD0, MEMORY[0x277D72A78], MEMORY[0x277D72A80]);
        v53 = v1;
        v54 = sub_26B9AAF94();
        v56 = v55;
        v57 = v53[22];
        v58 = v53[20];
        v59 = sub_26B9AB114();
        sub_26B922394(v54, v56);
        [v52 setEncodedTypedValue_];

        v60 = v32;
        [v60 setCommand_];
        v61 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_26B9B1290;
        *(v62 + 32) = v60;
        sub_26B9294B8(0, &qword_2804272E0, 0x277D4C238);
        v63 = sub_26B9AC6E4();

        [v61 setCardSections_];

        v64 = v87;
        [v64 setInlineCard_];
        sub_26B9AA884();
        sub_26B9AB1C4();
        v65 = v52;
        (*v76)(v57, v58);
        v66 = sub_26B9AC4C4();

        [v64 setIdentifier_];

        v67 = v64;
        MEMORY[0x26D6865A0](v67);
        if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26B9AC734();
        }

        v2 = v53[25];
        v68 = v53[23];
        sub_26B9AC774();

        (*v80)(v2, v68);
        v82 = v91;
        v1 = v53;
        v26 = v81;
      }

      else
      {
      }

      v28 = &off_279D10000;
LABEL_24:
      if (v83 == ++v3)
      {
        goto LABEL_42;
      }
    }
  }

  v82 = v5;
LABEL_42:

  if (v82 >> 62)
  {
    sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);

    v69 = sub_26B9ACD34();
  }

  else
  {

    sub_26B9ACEC4();

    sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
    v69 = v82;
  }

  v70 = v1[1];

  return v70(v69);
}

uint64_t sub_26B988798@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26B9847B4(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_26B9887C4(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    v4 = [v3 subtitle];
    v5 = sub_26B9AC504();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

id sub_26B98882C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationParameterQueryDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26B9888C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = *((*MEMORY[0x277D85000] & **v4) + 0xB0);
  v14 = (v11 + *v11);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26B8EC52C;

  return v14(v9, v10, a2, a3, a4);
}

uint64_t sub_26B988A24()
{
  v2 = *((*MEMORY[0x277D85000] & **v0) + 0xC8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8EB6C8;

  return v5();
}

uint64_t sub_26B988B48(uint64_t a1)
{
  v2 = sub_26B989834(&qword_2804270A0, type metadata accessor for NSTextCheckingKey, &unk_26B9B5408);
  v3 = sub_26B989834(&qword_2804270C8, type metadata accessor for NSTextCheckingKey, &unk_26B9B535C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26B988C04(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_26B988E24(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_26B988CF8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26B988D18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26B988D18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427058, &qword_26B9B5288);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26B988E24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427058, &qword_26B9B5288);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26B988F54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26B8EC52C;

  return sub_26B985F04(a1, v4, v5, v6, v9, v10, v7);
}

void sub_26B989014()
{
  v1 = sub_26B9854B0();
  v0 = sub_26B9AC4C4();
  [v1 setQueryFragment_];
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_26B9AAAE4();
}

uint64_t sub_26B9890A8(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26B8EC52C;

  return sub_26B986B10(a1, v6, v7, v5, v4);
}

uint64_t sub_26B989154(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26B8EC52C;

  return sub_26B987224(a1, v5, v6, v4);
}

unint64_t sub_26B9891F4(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_26B9ACB44();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427060, &qword_26B9B5290);
      result = sub_26B9ACBA4();
      v3 = result;
      v18 = v1;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_26B9ACB44();
      v4 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v18 = v1;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return v3;
  }

LABEL_9:
  v5 = 0;
  v6 = v3 + 56;
  v17 = v4;
  while ((v18 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x26D686B00](v5, v18);
    v7 = result;
    v8 = __OFADD__(v5++, 1);
    if (v8)
    {
      goto LABEL_25;
    }

LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427068, &qword_26B9B5298);
    result = sub_26B9AC454();
    v9 = -1 << *(v3 + 32);
    v10 = result & ~v9;
    v11 = v10 >> 6;
    v12 = *(v6 + 8 * (v10 >> 6));
    v13 = 1 << v10;
    if (((1 << v10) & v12) != 0)
    {
      v14 = ~v9;
      while (1)
      {
        result = sub_26B9AC494();
        if (result)
        {
          break;
        }

        v10 = (v10 + 1) & v14;
        v11 = v10 >> 6;
        v12 = *(v6 + 8 * (v10 >> 6));
        v13 = 1 << v10;
        if (((1 << v10) & v12) == 0)
        {
          v4 = v17;
          goto LABEL_22;
        }
      }

      v4 = v17;
      if (v5 == v17)
      {
        return v3;
      }
    }

    else
    {
LABEL_22:
      *(v6 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v7;
      v15 = *(v3 + 16);
      v8 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v8)
      {
        goto LABEL_26;
      }

      *(v3 + 16) = v16;
      if (v5 == v4)
      {
        return v3;
      }
    }
  }

  if (v5 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  v7 = *(v18 + 32 + 8 * v5);
  result = sub_26B9AAAE4();
  v8 = __OFADD__(v5++, 1);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_26B989440()
{
  result = qword_280426FC0;
  if (!qword_280426FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426FC0);
  }

  return result;
}

unint64_t sub_26B989498()
{
  result = qword_280426FE8;
  if (!qword_280426FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426FE8);
  }

  return result;
}

uint64_t sub_26B9894EC(uint64_t *a1, unsigned int a2)
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

uint64_t sub_26B98953C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26B989590(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_26B9895A8(void *result, int a2)
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

uint64_t objectdestroy_13Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_9Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26B989660(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26B8EB6C8;

  return sub_26B986B10(a1, v6, v7, v5, v4);
}

void type metadata accessor for NSTextCheckingKey()
{
  if (!qword_2804270A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2804270A8);
    }
  }
}

uint64_t sub_26B989834(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t RunnableParameterQuery.invocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RunnableParameterQuery(0) + 20);
  v4 = sub_26B9AB984();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for RunnableParameterQuery(uint64_t a1)
{
  result = qword_280431A10;
  if (!qword_280431A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *RunnableParameterQuery.statusRow.getter()
{
  v1 = *(v0 + *(type metadata accessor for RunnableParameterQuery(0) + 28));
  v2 = v1;
  return v1;
}

uint64_t RunnableParameterQuery.init(parameterQuery:invocation:isStatusRow:statusRow:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_26B925694(a1, a5);
  v9 = type metadata accessor for RunnableParameterQuery(0);
  v10 = v9[5];
  v11 = sub_26B9AB984();
  result = (*(*(v11 - 8) + 32))(a5 + v10, a2, v11);
  *(a5 + v9[6]) = a3;
  *(a5 + v9[7]) = a4;
  return result;
}

id static RunnableParameterQuery.statusQuery(for:statusRow:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = type metadata accessor for RunnableParameterQuery(0);
  a3[3] = v5;
  a3[4] = sub_26B98BB48(&qword_280426DC8, &protocol conformance descriptor for RunnableParameterQuery);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  boxed_opaque_existential_1[3] = &type metadata for EmptyQuery;
  boxed_opaque_existential_1[4] = sub_26B903C04();
  EmptyQuery.init()();
  v7 = v5[5];
  v8 = sub_26B9AB984();
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1 + v7, a1, v8);
  *(boxed_opaque_existential_1 + v5[6]) = 1;
  *(boxed_opaque_existential_1 + v5[7]) = a2;

  return a2;
}

uint64_t RunnableParameterQuery.start(with:context:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = v4;
  *(v5 + 72) = a1;
  *(v5 + 80) = a3;
  v7 = *(type metadata accessor for RunnableParameterQuery(0) - 8);
  *(v5 + 104) = v7;
  *(v5 + 112) = *(v7 + 64);
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = *a2;
  *(v5 + 176) = *(a2 + 8);
  *(v5 + 177) = *(a2 + 9);
  *(v5 + 136) = *(a2 + 16);
  v8 = sub_26B92A538();
  swift_beginAccess();
  v9 = *v8;
  *(v5 + 152) = v9;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B989C84, v9, 0);
}

uint64_t sub_26B989C84()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 177);
  v4 = *(v0 + 176);
  v5 = *(v0 + 128);
  v6 = *(v0 + 120);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v9 = *(v0 + 88);
  v18 = v8[3];
  v19 = *(v0 + 80);
  v16 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v18);
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  *(v0 + 25) = v3;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  sub_26B98A3FC(v8, v6);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v0 + 160) = v11;
  *(v11 + 16) = v19;
  *(v11 + 24) = v9;
  sub_26B98A460(v6, v11 + v10);
  v12 = *(v16 + 24);
  sub_26B9AAAE4();
  v17 = (v12 + *v12);
  v13 = swift_task_alloc();
  *(v0 + 168) = v13;
  *v13 = v0;
  v13[1] = sub_26B989E84;
  v14 = *(v0 + 72);

  return v17(v14, v0 + 16, &unk_26B9B5460, v11, v18, v16);
}

uint64_t sub_26B989E84()
{
  v1 = *(*v0 + 152);

  return MEMORY[0x2822009F8](sub_26B989FB0, v1, 0);
}

uint64_t sub_26B989FB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B98A01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 136) = a2;
  *(v3 + 144) = a3;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  *(v3 + 56) = *a1;
  *(v3 + 64) = v4;
  *(v3 + 72) = v5;
  *(v3 + 73) = v6;
  *(v3 + 80) = v7;
  *(v3 + 88) = v8;
  v9 = swift_task_alloc();
  *(v3 + 152) = v9;
  *v9 = v3;
  v9[1] = sub_26B98A0EC;

  return sub_26B98A5B0(v3 + 16, v3 + 56);
}

uint64_t sub_26B98A0EC()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *v0;

  *(v1 + 96) = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 33);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *(v1 + 104) = *(v1 + 24);
  *(v1 + 112) = v4;
  *(v1 + 113) = v5;
  *(v1 + 120) = v6;
  *(v1 + 128) = v7;
  v10 = (v2 + *v2);
  v8 = swift_task_alloc();
  *(v1 + 160) = v8;
  *v8 = v3;
  v8[1] = sub_26B98A2D0;

  return v10(v1 + 96);
}

uint64_t sub_26B98A2D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26B98A3FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunnableParameterQuery(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B98A460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunnableParameterQuery(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B98A4C4(uint64_t a1)
{
  type metadata accessor for RunnableParameterQuery(0);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26B8EB6C8;

  return sub_26B98A01C(a1, v4, v5);
}

uint64_t sub_26B98A5B0(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = sub_26B9AB584();
  *(v3 + 32) = v5;
  *(v3 + 40) = *(v5 - 8);
  *(v3 + 48) = swift_task_alloc();
  v6 = sub_26B9AB914();
  *(v3 + 56) = v6;
  *(v3 + 64) = *(v6 - 8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = *a2;
  *(v3 + 124) = *(a2 + 16);
  *(v3 + 125) = *(a2 + 17);
  *(v3 + 96) = *(a2 + 24);
  *(v3 + 126) = *(a2 + 32);

  return MEMORY[0x2822009F8](sub_26B98A6F8, 0, 0);
}

uint64_t sub_26B98A6F8()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for RunnableParameterQuery(0);
  *(v0 + 104) = v2;
  v3 = *(v2 + 20);
  *(v0 + 120) = v3;
  v4 = sub_26B906128();
  v5 = sub_26B90585C();
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_26B98A7CC;

  return static ToolKitUtilities.needsToolConfiguration(for:previousParameterKeys:invocationMayHaveInitialQuickKeyParameterization:fetchDefaultValues:)(v1 + v3, 0, v4 & 1, v5 & 1);
}

uint64_t sub_26B98A7CC(char a1)
{
  *(*v1 + 127) = a1;

  return MEMORY[0x2822009F8](sub_26B98A8CC, 0, 0);
}

uint64_t sub_26B98A8CC(uint64_t a1)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 24);
  v4 = *(v3 + *(v2 + 28));
  if (v4 || (*(v1 + 127) & 1) == 0)
  {
    v20 = *(v3 + *(v2 + 24));
    if (v4)
    {
      v21 = v20 == 0;
    }

    else
    {
      v21 = 1;
    }

    v22 = &off_279D10000;
    if (v21)
    {
      v24 = *(v1 + 64);
      v23 = *(v1 + 72);
      v25 = *(v1 + 56);
      v71 = v25;
      v30 = [objc_allocWithZone(MEMORY[0x277D4C328]) &selRef_documentURLs];
      sub_26B9AB934();
      v26 = ToolDefinition.spui_image.getter();
      v27 = *(v24 + 8);
      v27(v23, v25);
      [v30 setThumbnail_];

      v28 = [objc_allocWithZone(MEMORY[0x277D4C598]) init];
      sub_26B9AB934();
      sub_26B9AB8F4();
      v27(v23, v71);
      v29 = sub_26B9AC4C4();

      [v28 setText_];

      [v30 setTitle_];
      if (v20)
      {

        v22 = &off_279D10000;
      }

      else
      {
        v22 = &off_279D10000;
        v31 = [objc_allocWithZone(MEMORY[0x277D4C358]) init];
        v32 = sub_26B9AB964();
        [v31 setToolInvocationData_];

        v30 = v30;
        v33 = v31;
        [v30 setCommand_];
      }
    }

    else
    {
      v30 = v4;
      [v30 setCommand_];
    }

    v34 = *(v1 + 80);
    v35 = objc_allocWithZone(MEMORY[0x277D4C230]);
    v36 = v30;
    v37 = [v35 v22[280]];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_26B9B1290;
    v65 = v36;
    *(v38 + 32) = v36;
    sub_26B9294B8(0, &qword_2804272E0, 0x277D4C238);
    v39 = sub_26B9AC6E4();

    [v37 setCardSections_];

    v40 = [objc_allocWithZone(MEMORY[0x277D65850]) v22[280]];
    v66 = v37;
    [v40 setInlineCard_];
    v41 = sub_26B9AC4C4();
    v42 = &off_279D10000;
    v72 = v40;
    [v40 setIdentifier_];

    v43 = v34 >> 62;
    if (v34 >> 62)
    {
      v44 = sub_26B9ACB44();
    }

    else
    {
      v44 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v64 = v34;
    v69 = v44;
    if (!v44)
    {
      v48 = [objc_allocWithZone(MEMORY[0x277D65848]) v22[280]];
      v46 = sub_26B9AC4C4();
      [v48 setIdentifier_];
      goto LABEL_24;
    }

    if ((v34 & 0xC000000000000001) != 0)
    {
      goto LABEL_51;
    }

    if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_53;
    }

    for (i = *(*(v1 + 80) + 32); ; i = MEMORY[0x26D686B00](0, *(v1 + 80)))
    {
      v46 = i;
      v47 = [objc_allocWithZone(MEMORY[0x277D65848]) initWithResultSection_];
      if (v47)
      {
        v48 = v47;
      }

      else
      {
        v48 = [objc_allocWithZone(MEMORY[0x277D65848]) v22[280]];
        v49 = sub_26B9AC4C4();
        [v48 v42[315]];

        v46 = v49;
LABEL_24:
      }

      v50 = v48;
      v51 = [v50 results];
      if (v51)
      {
        v52 = v51;
        sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
        v53 = sub_26B9AC6F4();
      }

      else
      {
        v53 = MEMORY[0x277D84F90];
      }

      v63 = v43;
      if (v53 >> 62 && sub_26B9ACB44() < 0)
      {
        __break(1u);
        goto LABEL_49;
      }

      v67 = *(v1 + 126);
      v22 = *(v1 + 88);
      v43 = *(v1 + 96);
      v54 = *(v1 + 125);
      v55 = *(v1 + 124);
      v56 = *(v1 + 80);
      sub_26B98BE98(0, 0, v72, &qword_2804263F0, 0x277D4C5D0);

      sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
      v57 = sub_26B9AC6E4();

      v42 = v50;
      [v50 setResults_];

      v73 = v56;
      v74 = v22;
      v75 = v55;
      v76 = v54;
      v77 = v43;
      v78 = v67;
      if (!v69)
      {
        goto LABEL_33;
      }

      v39 = v63;
      if (v63)
      {
        v43 = v64;
        if (!sub_26B9ACB44())
        {
          goto LABEL_57;
        }

        if (!sub_26B9ACB44())
        {
          goto LABEL_58;
        }
      }

      else
      {
        v43 = v64;
        if (!*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_33:
          v58 = *(v1 + 80);

          goto LABEL_41;
        }
      }

      if ((v43 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      if (v63)
      {
        goto LABEL_39;
      }

LABEL_40:
      sub_26B98BC9C(0, 1);
      v58 = v73;
LABEL_41:
      if (!(v58 >> 62))
      {
        goto LABEL_42;
      }

LABEL_49:
      if ((sub_26B9ACB44() & 0x8000000000000000) == 0)
      {
LABEL_42:
        v59 = *(v1 + 16);
        sub_26B98BE98(0, 0, v42, &qword_280426400, 0x277D4C588);

        *v59 = v73;
        *(v59 + 8) = v74;
        *(v59 + 16) = v75;
        *(v59 + 17) = v76;
        *(v59 + 24) = v77;
        *(v59 + 32) = v78;
        goto LABEL_43;
      }

      __break(1u);
LABEL_51:
      ;
    }

LABEL_53:
    v62 = *(v1 + 80);

    MEMORY[0x26D686B00](0, v62);
    swift_unknownObjectRelease();
    if (!v39)
    {
      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      goto LABEL_55;
    }

    while (1)
    {
LABEL_39:
      if (sub_26B9ACB44())
      {
        goto LABEL_40;
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
    }
  }

  v6 = *(v1 + 40);
  v5 = *(v1 + 48);
  v7 = *(v1 + 32);
  v8 = sub_26B9A77DC();
  (*(v6 + 16))(v5, v8, v7);
  v9 = sub_26B9AB564();
  v10 = sub_26B9AC914();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_26B8E8000, v9, v10, "Tool not ready, omitting ExecutionRow", v11, 2u);
    MEMORY[0x26D6879F0](v11, -1, -1);
  }

  v70 = *(v1 + 126);
  v13 = *(v1 + 88);
  v12 = *(v1 + 96);
  v68 = *(v1 + 125);
  v14 = *(v1 + 124);
  v15 = *(v1 + 80);
  v17 = *(v1 + 40);
  v16 = *(v1 + 48);
  v18 = *(v1 + 32);
  v19 = *(v1 + 16);

  (*(v17 + 8))(v16, v18);
  *v19 = v15;
  *(v19 + 8) = v13;
  *(v19 + 16) = v14;
  *(v19 + 17) = v68;
  *(v19 + 24) = v12;
  *(v19 + 32) = v70;

LABEL_43:

  v60 = *(v1 + 8);

  return v60();
}

uint64_t RunnableParameterQuery.stop(with:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_26B92A538();
  swift_beginAccess();
  v4 = *v3;
  v2[7] = v4;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B98B1E8, v4, 0);
}

uint64_t sub_26B98B1E8()
{
  v1 = v0[6];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_26B98B314;
  v5 = v0[5];

  return v7(v5, v2, v3);
}

uint64_t sub_26B98B314()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_26B98B424, v1, 0);
}

uint64_t sub_26B98B424()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B98B484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26B8EB6C8;

  return RunnableParameterQuery.start(with:context:resultHandler:)(a1, a2, a3, a4);
}

uint64_t sub_26B98B540(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_26B92A538();
  swift_beginAccess();
  v4 = *v3;
  v2[7] = v4;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B98B5D0, v4, 0);
}

uint64_t sub_26B98B5D0()
{
  v1 = v0[6];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_26B98B6FC;
  v5 = v0[5];

  return v7(v5, v2, v3);
}

uint64_t sub_26B98B6FC()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_26B98BF90, v1, 0);
}

uint64_t sub_26B98B80C(uint64_t a1)
{
  result = sub_26B98BB48(&qword_2804270D0, &protocol conformance descriptor for RunnableParameterQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B98B850(uint64_t a1)
{
  result = sub_26B98BB48(&qword_2804270D8, &protocol conformance descriptor for RunnableParameterQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B98B894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B98BB48(&qword_280426DC8, &protocol conformance descriptor for RunnableParameterQuery);

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

double sub_26B98B904@<D0>(uint64_t a1@<X8>)
{
  sub_26B98BB48(&qword_2804270F0, &protocol conformance descriptor for RunnableParameterQuery);

  *&result = ParameterQuery.platterBehavior.getter(a1).n128_u64[0];
  return result;
}

uint64_t sub_26B98B96C(uint64_t a1)
{
  result = sub_26B98BB48(&qword_280426DC8, &protocol conformance descriptor for RunnableParameterQuery);
  *(a1 + 8) = result;
  return result;
}

void sub_26B98B9D8(uint64_t a1)
{
  sub_26B98BA7C();
  if (v1 <= 0x3F)
  {
    sub_26B9AB984();
    if (v2 <= 0x3F)
    {
      sub_26B98BAE0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_26B98BA7C()
{
  result = qword_2804270E0;
  if (!qword_2804270E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2804270E0);
  }

  return result;
}

void sub_26B98BAE0(uint64_t a1)
{
  if (!qword_2804270E8)
  {
    sub_26B9294B8(255, &qword_2804272E0, 0x277D4C238);
    v1 = sub_26B9ACA34();
    if (!v2)
    {
      atomic_store(v1, &qword_2804270E8);
    }
  }
}

uint64_t sub_26B98BB48(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RunnableParameterQuery(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26B98BB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_26B9294B8(0, &qword_280426400, 0x277D4C588);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_26B9ACB44();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_26B9ACB44();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_26B98BC9C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_26B9ACB44();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_26B9ACB44();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_26B928DFC(result, 1);

  return sub_26B98BB8C(v5, v3, 0);
}

char *sub_26B98BD74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, void *a6)
{
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v10 = a4;
  v6 = a3;
  v9 = a2;
  v14 = *v7;
  v7 = (*v7 & 0xFFFFFFFFFFFFFF8);
  v11 = v7 + 4;
  v8 = &v7[a1 + 4];
  sub_26B9294B8(0, a5, a6);
  result = swift_arrayDestroy();
  v16 = __OFSUB__(v6, v13);
  v13 = v6 - v13;
  if (v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13)
  {
    v12 = v14 >> 62;
    if (!(v14 >> 62))
    {
      result = v7[2];
      v17 = &result[-v9];
      if (!__OFSUB__(result, v9))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_26B9ACB44();
    v17 = &result[-v9];
    if (!__OFSUB__(result, v9))
    {
LABEL_6:
      v18 = &v8[v6];
      v19 = &v11[v9];
      if (v18 != v19 || v18 >= &v19[8 * v17])
      {
        memmove(v18, v19, 8 * v17);
      }

      if (v12)
      {
        result = sub_26B9ACB44();
      }

      else
      {
        result = v7[2];
      }

      if (!__OFADD__(result, v13))
      {
        v7[2] = &result[v13];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v6 > 0)
  {
    *v8 = v10;
    result = v10;
    if (v6 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_26B98BE98(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, void *a5)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = a5;
    v8 = a4;
    v9 = a3;
    v10 = a2;
    v11 = a1;
    v12 = *v7;
    v13 = *v7 >> 62;
    if (!v13)
    {
      result = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_26B9ACB44();
  if (result < v10)
  {
    goto LABEL_13;
  }

LABEL_4:
  v15 = v10 - v11;
  if (__OFSUB__(v10, v11))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = 1 - v15;
  if (__OFSUB__(1, v15))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v13)
  {
    v17 = sub_26B9ACB44();
  }

  else
  {
    v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = __OFADD__(v17, v16);
  result = (v17 + v16);
  if (!v18)
  {
    sub_26B928DFC(result, 1);
    return sub_26B98BD74(v11, v10, 1, v9, v8, v6);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t SuggestedParameterQuery.toolInvocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26B9AB984();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SuggestedParameterQuery.toolInvocation.setter(uint64_t a1)
{
  v3 = sub_26B9AB984();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SuggestedParameterQuery.parameterDefinition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SuggestedParameterQuery(0) + 20);
  v4 = sub_26B9AC0E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SuggestedParameterQuery(uint64_t a1)
{
  result = qword_280431CA0;
  if (!qword_280431CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SuggestedParameterQuery.parameterDefinition.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SuggestedParameterQuery(0) + 20);
  v4 = sub_26B9AC0E4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SuggestedParameterQuery.init(toolInvocation:parameterDefinition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26B9AB984();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for SuggestedParameterQuery(0) + 20);
  v8 = sub_26B9AC0E4();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_26B98C324(uint64_t a1)
{
  result = sub_26B98C7C8(&qword_280427100, type metadata accessor for SuggestedParameterQuery, &protocol conformance descriptor for SuggestedParameterQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B98C37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B98C7C8(&qword_280427118, type metadata accessor for SuggestedParameterQuery, &protocol conformance descriptor for SuggestedParameterQuery);
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B98C488(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B98C7C8(&qword_280427118, type metadata accessor for SuggestedParameterQuery, &protocol conformance descriptor for SuggestedParameterQuery);
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

uint64_t sub_26B98C56C(uint64_t a1)
{
  result = sub_26B98C7C8(&qword_280427108, type metadata accessor for SuggestedParameterQuery, &protocol conformance descriptor for SuggestedParameterQuery);
  *(a1 + 8) = result;
  return result;
}

double sub_26B98C5C4@<D0>(uint64_t a1@<X8>)
{
  sub_26B98C7C8(&qword_280427110, type metadata accessor for SuggestedParameterQuery, &protocol conformance descriptor for SuggestedParameterQuery);

  *&result = ParameterQuery.platterBehavior.getter(a1).n128_u64[0];
  return result;
}

uint64_t sub_26B98C640(uint64_t a1)
{
  result = sub_26B98C7C8(&qword_280426E18, type metadata accessor for SuggestedParameterQuery, &protocol conformance descriptor for SuggestedParameterQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B98C698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B98C7C8(&qword_280426E18, type metadata accessor for SuggestedParameterQuery, &protocol conformance descriptor for SuggestedParameterQuery);

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_26B98C744(uint64_t a1)
{
  result = sub_26B9AB984();
  if (v2 <= 0x3F)
  {
    result = sub_26B9AC0E4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26B98C7C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_26B98C834()
{
  result = [objc_allocWithZone(type metadata accessor for ParameterSuggestionsManager(0)) init];
  qword_280433DF0 = result;
  return result;
}

uint64_t sub_26B98C868(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for ParameterSuggestionsManager.ContextualTypedValue(0);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = sub_26B9ABE84();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = sub_26B9ABFB4();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v7 = sub_26B9AB984();
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = sub_26B9AC804();
  v3[23] = sub_26B9AC7F4();
  v9 = sub_26B9AC7C4();
  v3[24] = v9;
  v3[25] = v8;

  return MEMORY[0x2822009F8](sub_26B98CAA8, v9, v8);
}

uint64_t sub_26B98CAA8(uint64_t a1)
{
  v2 = v1[5];
  v3 = v1[3];
  v4 = sub_26B9AC7F4();
  v1[26] = v4;
  v5 = swift_task_alloc();
  v1[27] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_task_alloc();
  v1[28] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427120, qword_26B9B5628);
  *v6 = v1;
  v6[1] = sub_26B98CBD0;
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v1 + 2, v4, v8, 0xD000000000000023, 0x800000026B9BA270, sub_26B98D998, v5, v7);
}

uint64_t sub_26B98CBD0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    v5 = sub_26B98D410;
  }

  else
  {

    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    v5 = sub_26B98CD40;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_26B98CD40()
{
  v76 = v0;

  v1 = v0[2];
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = sub_26B9AB954();
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v0[14];
    v74 = sub_26B98FEF8(*(v2 + 16), 0);
    v6 = sub_26B990174(v75, &v74[(*(v5 + 80) + 32) & ~*(v5 + 80)], v4, v3);
    sub_26B9471BC(v75[0]);
    if (v6 != v4)
    {
      __break(1u);
LABEL_5:
      v7 = MEMORY[0x277D84F90];
      goto LABEL_40;
    }
  }

  else
  {

    v74 = MEMORY[0x277D84F90];
  }

  v8 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
    goto LABEL_37;
  }

  v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
LABEL_9:
    v10 = 0;
    v11 = v0[14];
    v12 = v0[11];
    v61 = v0[7];
    v60 = v0[6];
    v70 = v1 & 0xC000000000000001;
    v72 = (v11 + 8);
    v69 = (v0[20] + 8);
    v64 = (v11 + 88);
    v63 = *MEMORY[0x277D72E38];
    v73 = v11;
    v58 = (v12 + 32);
    v59 = (v11 + 96);
    v56 = (v12 + 8);
    v57 = (v12 + 16);
    v13 = MEMORY[0x277D84F90];
    v66 = v8;
    v67 = v1;
    v65 = v9;
    while (1)
    {
      if (v70)
      {
        MEMORY[0x26D686B00](v10, v1);
        v16 = __OFADD__(v10, 1);
        v17 = v10 + 1;
        if (v16)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v10 >= *(v8 + 16))
        {
          goto LABEL_36;
        }

        sub_26B9AAAE4();
        v16 = __OFADD__(v10, 1);
        v17 = v10 + 1;
        if (v16)
        {
          goto LABEL_35;
        }
      }

      sub_26B9AB454();
      v18 = sub_26B9AB954();
      v19 = sub_26B9AC0B4();
      v71 = v17;
      if (*(v18 + 16))
      {
        v21 = sub_26B9201A8(v19, v20);
        v23 = v22;

        if (v23)
        {
          v68 = v13;
          v25 = v0[17];
          v24 = v0[18];
          v26 = v0[13];
          v1 = v73;
          v8 = *(v73 + 72);
          v27 = *(v73 + 16);
          v27(v25, *(v18 + 56) + v8 * v21, v26);

          (*(v73 + 32))(v24, v25, v26);
          v28 = -*(v74 + 2);
          v29 = -1;
          v30 = v74;
          while (1)
          {
            if (v28 + v29 == -1)
            {
              v37 = v0[15];
              v38 = v0[13];
              v27(v37, v0[18], v38);
              if ((*v64)(v37, v38) == v63)
              {
                v39 = v0[15];
                v40 = v0[12];
                v42 = v0[9];
                v41 = v0[10];
                v43 = v0[8];
                (*v59)(v39, v0[13]);
                (*v58)(v40, v39, v41);
                (*v57)(v42, v40, v41);
                *(v42 + *(v60 + 20)) = sub_26B9AB464();
                sub_26B990418(v42, v43);
                v13 = v68;
                v8 = v66;
                v1 = v67;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v13 = sub_26B98FD20(0, v68[2] + 1, 1, v68);
                }

                v45 = v13[2];
                v44 = v13[3];
                if (v45 >= v44 >> 1)
                {
                  v13 = sub_26B98FD20((v44 > 1), v45 + 1, 1, v13);
                }

                v46 = v0[21];
                v47 = v0[19];
                v48 = v0[12];
                v49 = v0[9];
                v50 = v0[10];
                v62 = v0[8];

                sub_26B990500(v49, type metadata accessor for ParameterSuggestionsManager.ContextualTypedValue);
                (*v56)(v48, v50);
                (*v69)(v46, v47);
                v13[2] = v45 + 1;
                sub_26B99047C(v62, v13 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v45);
                (*v72)(v0[18], v0[13]);
              }

              else
              {
                v51 = v0[15];
                v52 = v0[13];
                (*v69)(v0[21], v0[19]);

                v53 = *v72;
                (*v72)(v51, v52);
                v8 = v66;
                v1 = v67;
                v13 = v68;
                v53(v0[18], v0[13]);
              }

              goto LABEL_33;
            }

            if (++v29 >= *(v74 + 2))
            {
              break;
            }

            v1 = &v30[v8];
            v31 = v0[16];
            v32 = v0[13];
            v27(v31, &v30[(*(v73 + 80) + 32) & ~*(v73 + 80)], v32);
            v33 = sub_26B9ABFA4();
            v34 = *(v73 + 8);
            v34(v31, v32);
            v30 = v1;
            if (v33)
            {
              v35 = v0[18];
              v36 = v0[13];
              (*v69)(v0[21], v0[19]);

              v34(v35, v36);
              v8 = v66;
              v1 = v67;
              v13 = v68;
LABEL_33:
              v9 = v65;
              goto LABEL_12;
            }
          }

          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          v9 = sub_26B9ACB44();
          if (!v9)
          {
            break;
          }

          goto LABEL_9;
        }
      }

      else
      {
      }

      v14 = v0[21];
      v15 = v0[19];

      (*v69)(v14, v15);
LABEL_12:
      v10 = v71;
      if (v71 == v9)
      {
        goto LABEL_39;
      }
    }
  }

  v13 = MEMORY[0x277D84F90];
LABEL_39:

  v7 = v13;
LABEL_40:

  v54 = v0[1];

  return v54(v7);
}

uint64_t sub_26B98D410()
{

  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t sub_26B98D4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427150, &qword_26B9B5788);
  v44 = *(v5 - 8);
  v40 = *(v44 + 64);
  MEMORY[0x28223BE20](v5);
  v42 = &v35 - v6;
  v7 = sub_26B9AB914();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v45 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26B9AB984();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26B9AB584();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26B9A77DC();
  (*(v14 + 16))(v16, v17, v13);
  v18 = *(v10 + 16);
  v41 = a2;
  v39 = v9;
  v18(v12, a2, v9);
  v19 = sub_26B9AB564();
  v20 = sub_26B9AC914();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v38 = a3;
    v22 = v21;
    v35 = swift_slowAlloc();
    v48 = v35;
    *v22 = 136315138;
    v36 = v13;
    v23 = v45;
    sub_26B9AB934();
    v24 = sub_26B9AB8E4();
    v37 = v5;
    v26 = v25;
    (*(v46 + 8))(v23, v47);
    (*(v10 + 8))(v12, v39);
    v27 = sub_26B91FC00(v24, v26, &v48);
    v5 = v37;

    *(v22 + 4) = v27;
    _os_log_impl(&dword_26B8E8000, v19, v20, "Fetched suggestions for %s", v22, 0xCu);
    v28 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x26D6879F0](v28, -1, -1);
    MEMORY[0x26D6879F0](v22, -1, -1);

    (*(v14 + 8))(v16, v36);
  }

  else
  {

    (*(v10 + 8))(v12, v39);
    (*(v14 + 8))(v16, v13);
  }

  v29 = v45;
  sub_26B9AB934();
  v30 = v44;
  v31 = v42;
  (*(v44 + 16))(v42, v43, v5);
  v32 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v33 = swift_allocObject();
  (*(v30 + 32))(v33 + v32, v31, v5);
  sub_26B9AB2A4();

  return (*(v46 + 8))(v29, v47);
}

uint64_t sub_26B98D9A0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_26B9AB584();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426218, &qword_26B9B0890);
  v1[6] = swift_task_alloc();
  v3 = sub_26B9AB914();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = sub_26B9AB984();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B98DB5C, 0, 0);
}

uint64_t sub_26B98DB5C()
{
  v1 = v0[6];
  (*(v0[8] + 16))(v0[9], v0[2], v0[7]);
  sub_26B95E540(MEMORY[0x277D84F90]);
  v2 = sub_26B9ABAE4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_26B9AB924();
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  sub_26B9AB444();
  v0[14] = sub_26B9AB434();
  (*(v6 + 16))(v4, v3, v5);
  sub_26B9AB484();
  swift_allocObject();
  v7 = sub_26B9AB474();
  v0[15] = v7;
  v10 = (*MEMORY[0x277D41FC8] + MEMORY[0x277D41FC8]);
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_26B98DEA4;

  return v10(v7);
}

uint64_t sub_26B98DEA4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_26B98E0DC;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_26B98E00C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26B98E00C()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = sub_26B9AB494();

  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_26B98E0DC()
{
  (*(v0[11] + 8))(v0[13], v0[10]);
  v1 = v0[17];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = sub_26B9A77DC();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_26B9AB564();
  v8 = sub_26B9AC934();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_26B8E8000, v7, v8, "Failed fetching invocation suggestions: %@", v9, 0xCu);
    sub_26B9422F4(v10);
    MEMORY[0x26D6879F0](v10, -1, -1);
    MEMORY[0x26D6879F0](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v13 = v0[1];

  return v13(0);
}

id sub_26B98E2B0(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for ParameterSuggestionsManager(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_26B98E2F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParameterSuggestionsManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26B98E334(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v7 = ((*MEMORY[0x277D85000] & *v2) + qword_280433DF8 + 8);
  v8 = (*v7 + **v7);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_26B98E484;

  return v8(a2);
}

uint64_t sub_26B98E484(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_26B98E594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for ParameterSuggestionsManager(0);
  *v6 = v3;
  v6[1] = sub_26B95B478;

  return MEMORY[0x2821D66E8](a1, v7, a3);
}

uint64_t sub_26B98E64C(uint64_t a1)
{
  v1[6] = a1;
  v2 = sub_26B9ABE84();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426288, &qword_26B9B0980);
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426228, &unk_26B9B08A0);
  v1[11] = swift_task_alloc();
  v3 = sub_26B9ABF24();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  type metadata accessor for TypedValueResultBuilder.Config(0);
  v1[15] = swift_task_alloc();
  v4 = type metadata accessor for ParameterSuggestionsManager.ContextualTypedValue(0);
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v5 = sub_26B92A538();
  swift_beginAccess();
  v6 = *v5;
  v1[19] = v6;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B98E88C, v6, 0);
}

uint64_t sub_26B98E88C()
{
  *(v0 + 160) = sub_26B9AC804();
  *(v0 + 168) = sub_26B9AC7F4();
  v2 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B98E924, v2, v1);
}

uint64_t sub_26B98E924()
{

  if (qword_280431CB0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);

  return MEMORY[0x2822009F8](sub_26B98E9BC, v1, 0);
}

uint64_t sub_26B98E9BC(uint64_t a1)
{
  *(v1 + 176) = sub_26B9AC7F4();
  v3 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B98EA48, v3, v2);
}

uint64_t sub_26B98EA48()
{
  v1 = *(v0 + 48);

  v2 = qword_280433DF0;
  v3 = *(type metadata accessor for SuggestedParameterQuery(0) + 20);
  *(v0 + 248) = v3;
  v7 = (*((*MEMORY[0x277D85000] & *v2) + qword_280433DF8) + **((*MEMORY[0x277D85000] & *v2) + qword_280433DF8));
  v4 = swift_task_alloc();
  *(v0 + 184) = v4;
  *v4 = v0;
  v4[1] = sub_26B98EBBC;
  v5 = *(v0 + 48);

  return v7(v5, v1 + v3);
}

uint64_t sub_26B98EBBC(uint64_t a1)
{
  v2 = *(*v1 + 152);
  *(*v1 + 192) = a1;

  return MEMORY[0x2822009F8](sub_26B98ECD4, v2, 0);
}

uint64_t sub_26B98ECD4()
{
  *(v0 + 40) = MEMORY[0x277D84F90];
  result = *(v0 + 192);
  v2 = *(result + 16);
  *(v0 + 200) = v2;
  if (v2)
  {
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);
    v5 = *(v0 + 104);
    *(v0 + 208) = 0;
    if (*(result + 16))
    {
      v6 = *(v0 + 144);
      v7 = *(v0 + 112);
      v24 = *(v0 + 248);
      v25 = *(v0 + 120);
      v9 = *(v0 + 88);
      v8 = *(v0 + 96);
      v10 = *(v0 + 80);
      v11 = *(v0 + 48);
      v23 = v4;
      sub_26B990418(result + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v6);
      sub_26B9ABE54();
      v22 = sub_26B9ABEF4();
      v13 = v12;
      (*(v5 + 8))(v7, v8);
      sub_26B9AB934();
      v14 = sub_26B9AB914();
      (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
      v15 = sub_26B9AC0E4();
      v16 = *(v15 - 8);
      (*(v16 + 16))(v10, v11 + v24, v15);
      (*(v16 + 56))(v10, 0, 1, v15);
      sub_26B964AE0(v22, v13, v9, v10, *(v6 + *(v23 + 20)), 0, v25);
      v17 = swift_task_alloc();
      *(v0 + 216) = v17;
      *v17 = v0;
      v17[1] = sub_26B98EFB8;
      v18 = *(v0 + 144);
      v19 = *(v0 + 72);

      return static ToolKitUtilities.hydrate(typedValue:parameterDefinition:)(v19, v18, v11 + v24);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v20 = *(v0 + 40);

    v21 = *(v0 + 8);

    return v21(v20);
  }

  return result;
}

uint64_t sub_26B98EFB8()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *v0;

  sub_26B990500(v2, type metadata accessor for ParameterSuggestionsManager.ContextualTypedValue);
  type metadata accessor for TypedValueResultBuilder(0);
  v4 = swift_task_alloc();
  v1[28] = v4;
  *v4 = v3;
  v4[1] = sub_26B98F154;
  v5 = v1[15];
  v6 = v1[9];

  return sub_26B9653AC(v6, v5);
}

uint64_t sub_26B98F154(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = *(v4 + 152);

    v6 = sub_26B98F5E0;
    v7 = v5;
  }

  else
  {
    v7 = *(v4 + 152);
    *(v4 + 240) = a1;
    v6 = sub_26B98F2A0;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_26B98F2A0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 120);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = *(v0 + 208) + 1;
  sub_26B98F6D0(*(v0 + 240));
  (*(v4 + 8))(v3, v5);
  result = sub_26B990500(v2, type metadata accessor for TypedValueResultBuilder.Config);
  if (v6 == v1)
  {

    v8 = *(v0 + 40);

    v9 = *(v0 + 8);

    return v9(v8);
  }

  else
  {
    v10 = *(v0 + 208) + 1;
    *(v0 + 208) = v10;
    v11 = *(v0 + 192);
    if (v10 >= *(v11 + 16))
    {
      __break(1u);
    }

    else
    {
      v28 = *(v0 + 248);
      v12 = *(v0 + 144);
      v29 = *(v0 + 128);
      v13 = *(v0 + 112);
      v30 = *(v0 + 120);
      v14 = *(v0 + 96);
      v15 = *(v0 + 104);
      v17 = *(v0 + 80);
      v16 = *(v0 + 88);
      v18 = *(v0 + 48);
      sub_26B990418(v11 + ((*(*(v0 + 136) + 80) + 32) & ~*(*(v0 + 136) + 80)) + *(*(v0 + 136) + 72) * v10, v12);
      sub_26B9ABE54();
      v27 = sub_26B9ABEF4();
      v20 = v19;
      (*(v15 + 8))(v13, v14);
      sub_26B9AB934();
      v21 = sub_26B9AB914();
      (*(*(v21 - 8) + 56))(v16, 0, 1, v21);
      v22 = sub_26B9AC0E4();
      v23 = *(v22 - 8);
      (*(v23 + 16))(v17, v18 + v28, v22);
      (*(v23 + 56))(v17, 0, 1, v22);
      sub_26B964AE0(v27, v20, v16, v17, *(v12 + *(v29 + 20)), 0, v30);
      v24 = swift_task_alloc();
      *(v0 + 216) = v24;
      *v24 = v0;
      v24[1] = sub_26B98EFB8;
      v25 = *(v0 + 144);
      v26 = *(v0 + 72);

      return static ToolKitUtilities.hydrate(typedValue:parameterDefinition:)(v26, v25, v18 + v28);
    }
  }

  return result;
}

uint64_t sub_26B98F5E0()
{
  v1 = v0[15];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];

  (*(v3 + 8))(v2, v4);
  sub_26B990500(v1, type metadata accessor for TypedValueResultBuilder.Config);

  v5 = v0[1];

  return v5();
}

uint64_t sub_26B98F6D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_26B9ACB44();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_26B9ACB44();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_26B928DFC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_26B98FFF4(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t static SuggestedParameterQueryDataSource.invalidateCaches()()
{
  v1 = sub_26B92A538();
  swift_beginAccess();
  v2 = *v1;
  *(v0 + 40) = v2;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B98F84C, v2, 0);
}

uint64_t sub_26B98F84C()
{
  *(v0 + 48) = sub_26B9AC804();
  *(v0 + 56) = sub_26B9AC7F4();
  v2 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B98F8E4, v2, v1);
}

uint64_t sub_26B98F8E4()
{

  if (qword_280431CB0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_26B98F97C, v1, 0);
}

uint64_t sub_26B98F97C(uint64_t a1)
{
  *(v1 + 64) = sub_26B9AC7F4();
  v3 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B98FA08, v3, v2);
}

uint64_t sub_26B98FA08()
{
  v1 = *(v0 + 40);

  *(v0 + 72) = qword_280433DF0;

  return MEMORY[0x2822009F8](sub_26B98FA80, v1, 0);
}

uint64_t sub_26B98FA80(uint64_t a1)
{
  *(v1 + 80) = sub_26B9AC7F4();
  v3 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B98FB0C, v3, v2);
}

uint64_t sub_26B98FB0C()
{
  v1 = *(v0 + 40);

  sub_26B9AB294();

  return MEMORY[0x2822009F8](sub_26B905DD8, v1, 0);
}

uint64_t SuggestedParameterQueryDataSource.__deallocating_deinit()
{
  ToolKitQueryDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_26B98FBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 144) + **(*v3 + 144));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_26B8F40D4;

  return v10(a1, a2, a3);
}

void *sub_26B98FD20(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427140, &qword_26B9B5778);
  v10 = *(type metadata accessor for ParameterSuggestionsManager.ContextualTypedValue(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ParameterSuggestionsManager.ContextualTypedValue(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_26B98FEF8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427148, &qword_26B9B5780);
  v4 = *(sub_26B9ABFB4() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B98FFF4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_26B9ACB44();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_26B9ACB44();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_26B99091C();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427130, &unk_26B9B5760);
            v9 = sub_26B928E9C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_26B979750();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B990174(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_26B9ABFB4();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_26B990418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterSuggestionsManager.ContextualTypedValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B99047C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterSuggestionsManager.ContextualTypedValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B990500(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26B990564()
{
  result = qword_280427128;
  if (!qword_280427128)
  {
    sub_26B9AB914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280427128);
  }

  return result;
}

void sub_26B99062C(uint64_t a1)
{
  sub_26B9ABE84();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ATXParameterSuggestionContext(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t dispatch thunk of SuggestedParameterQueryDataSource.fetchResults(for:sessionPool:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 144) + **(*v3 + 144));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_26B990820;

  return v10(a1, a2, a3);
}

uint64_t sub_26B990820(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t sub_26B99091C()
{
  result = qword_280427138;
  if (!qword_280427138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280427130, &unk_26B9B5760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280427138);
  }

  return result;
}

uint64_t sub_26B990980(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427150, &qword_26B9B5788);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427150, &qword_26B9B5788);
  return sub_26B9AC7E4();
}

uint64_t TypedValueResultQuery.typedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26B9ABE84();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TypedValueResultQuery.typedValue.setter(uint64_t a1)
{
  v3 = sub_26B9ABE84();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TypedValueResultQuery.invocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TypedValueResultQuery(0) + 20);
  v4 = sub_26B9AB984();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for TypedValueResultQuery(uint64_t a1)
{
  result = qword_280431F70;
  if (!qword_280431F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TypedValueResultQuery.invocation.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TypedValueResultQuery(0) + 20);
  v4 = sub_26B9AB984();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

double TypedValueResultQuery.platterBehavior.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = sub_26B90585C();
  v3 = sub_26B906128();
  static ResultPlatterBehavior.userAdjustable(range:preferredHeight:canPersist:includeFilterBarHeight:animated:)(0x4084000000000000, 0, v2 & 1, v3 & 1, v6, 0.0, 5000.0);
  BYTE3(v7) = 1;
  v4 = v6[1];
  *a1 = v6[0];
  a1[1] = v4;
  result = *&v7;
  a1[2] = v7;
  return result;
}

uint64_t TypedValueResultQuery.init(typedValue:invocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26B9ABE84();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for TypedValueResultQuery(0) + 20);
  v8 = sub_26B9AB984();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

double sub_26B990E44@<D0>(_OWORD *a1@<X8>)
{
  v2 = sub_26B90585C();
  v3 = sub_26B906128();
  static ResultPlatterBehavior.userAdjustable(range:preferredHeight:canPersist:includeFilterBarHeight:animated:)(0x4084000000000000, 0, v2 & 1, v3 & 1, v6, 0.0, 5000.0);
  BYTE3(v7) = 1;
  v4 = v6[1];
  *a1 = v6[0];
  a1[1] = v4;
  result = *&v7;
  a1[2] = v7;
  return result;
}

uint64_t sub_26B990EBC(uint64_t a1)
{
  result = sub_26B99128C(&qword_280427160, type metadata accessor for TypedValueResultQuery, &protocol conformance descriptor for TypedValueResultQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B990F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B99128C(&qword_280427170, type metadata accessor for TypedValueResultQuery, &protocol conformance descriptor for TypedValueResultQuery);
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B991020(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B99128C(&qword_280427170, type metadata accessor for TypedValueResultQuery, &protocol conformance descriptor for TypedValueResultQuery);
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

uint64_t sub_26B991104(uint64_t a1)
{
  result = sub_26B99128C(&qword_280427168, type metadata accessor for TypedValueResultQuery, &protocol conformance descriptor for TypedValueResultQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B99115C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B99128C(&qword_280427160, type metadata accessor for TypedValueResultQuery, &protocol conformance descriptor for TypedValueResultQuery);

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_26B991208(uint64_t a1)
{
  result = sub_26B9ABE84();
  if (v2 <= 0x3F)
  {
    result = sub_26B9AB984();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26B99128C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26B9912F4(uint64_t a1)
{
  v1[25] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427178, &unk_26B9B5858);
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = _s18ResolutionStrategyOMa(0);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426288, &qword_26B9B0980);
  v1[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426228, &unk_26B9B08A0);
  v1[37] = swift_task_alloc();
  type metadata accessor for TypedValueResultBuilder.Config(0);
  v1[38] = swift_task_alloc();
  v3 = sub_26B92A538();
  swift_beginAccess();
  v4 = *v3;
  v1[39] = v4;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B9914F4, v4, 0);
}

uint64_t sub_26B9914F4()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];
  v4 = v0[25];
  type metadata accessor for TypedValueResultQuery(0);
  sub_26B9AB934();
  v5 = sub_26B9AB914();
  (*(*(v5 - 8) + 56))(v1, 0, 1, v5);
  v6 = sub_26B9AC0E4();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = sub_26B906128();
  sub_26B964AE0(0, 0, v1, v3, v7 & 1, 1, v2);
  type metadata accessor for TypedValueResultBuilder(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262D0, &unk_26B9B0A60);
  v8 = sub_26B9ABE84();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  v0[40] = v11;
  *(v11 + 16) = xmmword_26B9AF300;
  (*(v9 + 16))(v11 + v10, v4, v8);
  v12 = swift_task_alloc();
  v0[41] = v12;
  *v12 = v0;
  v12[1] = sub_26B991724;
  v13 = v0[38];

  return sub_26B965EEC(v11, v13);
}

uint64_t sub_26B991724(uint64_t a1)
{
  v2 = *(*v1 + 312);
  *(*v1 + 336) = a1;

  return MEMORY[0x2822009F8](sub_26B991858, v2, 0);
}

uint64_t sub_26B991858()
{
  v79 = v0;
  v1 = v0;
  v2 = *(v0 + 336);
  v3 = sub_26B99430C(MEMORY[0x277D84F90]);
  if (v2 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26B9ACB44())
  {
    v5 = 0;
    v74 = v2 & 0xFFFFFFFFFFFFFF8;
    v75 = v2 & 0xC000000000000001;
    v73 = *(v1 + 336) + 32;
    v72 = i;
    while (v75)
    {
      v6 = MEMORY[0x26D686B00](v5, *(v1 + 336));
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_36;
      }

LABEL_9:
      v76 = v7;
      v9 = *(v1 + 272);
      v8 = *(v1 + 280);
      (*(*v6 + 104))();
      sub_26B99441C(v8, v9);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v11 = *(v1 + 272);
          v12 = sub_26B9AB104();
          (*(*(v12 - 8) + 8))(v11, v12);
          v13 = 2;
          if (!v3[2])
          {
            goto LABEL_18;
          }
        }

        else
        {
          v13 = 0;
          if (!v3[2])
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        sub_26B9944E4(*(v1 + 272), _s18ResolutionStrategyOMa);
        v13 = 1;
        if (!v3[2])
        {
          goto LABEL_18;
        }
      }

      v14 = sub_26B8F6AB0(v13);
      if (v15)
      {
        v16 = *(v3[7] + 8 * v14);

        goto LABEL_19;
      }

LABEL_18:
      v16 = MEMORY[0x277D84F90];
LABEL_19:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427180, &qword_26B9B5868);
      v17 = v1;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26B9AF300;
      *(inited + 32) = v5;
      *(inited + 40) = v6;
      *(inited + 48) = 0;
      v78 = v16;
      sub_26B9AAAE4();
      sub_26B992F04(inited);
      v19 = v78;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = v3;
      v2 = v3;
      v22 = sub_26B8F6AB0(v13);
      v23 = v3[2];
      v24 = (v21 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        goto LABEL_38;
      }

      v1 = v21;
      if (v3[3] >= v25)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v21)
          {
            goto LABEL_4;
          }
        }

        else
        {
          v2 = &v78;
          sub_26B9941B0();
          v3 = v78;
          if (v1)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_26B993A10(v25, isUniquelyReferenced_nonNull_native);
        v3 = v78;
        v2 = v78;
        v26 = sub_26B8F6AB0(v13);
        if ((v1 & 1) != (v27 & 1))
        {

          return sub_26B9ACF24();
        }

        v22 = v26;
        if (v1)
        {
LABEL_4:
          *(v3[7] + 8 * v22) = v19;

          goto LABEL_5;
        }
      }

      v3[(v22 >> 6) + 8] |= 1 << v22;
      *(v3[6] + v22) = v13;
      *(v3[7] + 8 * v22) = v19;

      v28 = v3[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_39;
      }

      v3[2] = v30;
LABEL_5:
      ++v5;
      v1 = v17;
      if (v76 == v72)
      {
        goto LABEL_41;
      }
    }

    if (v5 >= *(v74 + 16))
    {
      goto LABEL_37;
    }

    v6 = *(v73 + 8 * v5);
    sub_26B9AAAE4();
    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_9;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

LABEL_41:
  *(v1 + 344) = v3;
  v33 = *(v1 + 256);
  v32 = *(v1 + 264);

  swift_storeEnumTagMultiPayload();
  sub_26B994480(v32, v33);
  v34 = swift_getEnumCaseMultiPayload();
  if (v34)
  {
    if (v34 == 1)
    {
      v35 = *(v1 + 256);
      v36 = sub_26B9AB104();
      (*(*(v36 - 8) + 8))(v35, v36);
      v37 = 2;
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    sub_26B9944E4(*(v1 + 256), _s18ResolutionStrategyOMa);
    v37 = 1;
  }

  v38 = MEMORY[0x277D84F90];
  if (v3[2])
  {
    sub_26B8F6AB0(v37);
    if (v39)
    {
    }

    else
    {
      v40 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
  }

  *(v1 + 176) = v40;
  *(v1 + 184) = v38;
  v41 = *(v3 + 32);
  *(v1 + 432) = v41;
  v42 = 1 << v41;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  else
  {
    v43 = -1;
  }

  v44 = v43 & v3[8];

  v45 = 0;
  while (v44)
  {
    result = *(v1 + 344);
LABEL_63:
    *(v1 + 352) = v44;
    *(v1 + 360) = v45;
    v48 = *(v1 + 264);
    v49 = *(v1 + 248);
    v50 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    v51 = v50 | (v45 << 6);
    v52 = *(*(result + 48) + v51);
    v53 = *(*(result + 56) + 8 * v51);
    *(v1 + 368) = v53;
    sub_26B994480(v48, v49);
    result = swift_getEnumCaseMultiPayload();
    if (!result)
    {
      v46 = *(v1 + 248);

      sub_26B9944E4(v46, _s18ResolutionStrategyOMa);
      if (v52 != 1)
      {
        goto LABEL_69;
      }

      goto LABEL_56;
    }

    if (result == 1)
    {
      v54 = *(v1 + 248);
      v55 = sub_26B9AB104();
      v56 = *(*(v55 - 8) + 8);

      v56(v54, v55);
      if (v52 != 2)
      {
        goto LABEL_69;
      }

LABEL_56:
    }

    else if (v52)
    {

LABEL_69:
      v57 = off_279D105A0[v52];
      v58 = off_279D105B8[v52];
      *(v1 + 96) = v57;
      *(v1 + 104) = v58;
      __swift_project_boxed_opaque_existential_1((v1 + 72), v57);
      v77 = (v58[1] + *v58[1]);
      v59 = swift_task_alloc();
      *(v1 + 376) = v59;
      *v59 = v1;
      v59[1] = sub_26B992120;
      v60 = v53;
      v61 = v57;
      v62 = v58;
      goto LABEL_76;
    }
  }

  while (1)
  {
    v47 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
      return result;
    }

    result = *(v1 + 344);
    if (v47 >= (((1 << *(v1 + 432)) + 63) >> 6))
    {
      break;
    }

    v44 = *(result + 8 * v47 + 64);
    ++v45;
    if (v44)
    {
      v45 = v47;
      goto LABEL_63;
    }
  }

  v63 = *(v1 + 264);
  v64 = *(v1 + 240);

  sub_26B994480(v63, v64);
  v65 = swift_getEnumCaseMultiPayload();
  if (v65)
  {
    if (v65 == 1)
    {
      v66 = *(v1 + 240);
      v67 = sub_26B9AB104();
      (*(*(v67 - 8) + 8))(v66, v67);
      v68 = &off_287C60DE0;
      v69 = &type metadata for MetadataTypedValueResultResolver;
    }

    else
    {
      v68 = &off_287C60DC0;
      v69 = &type metadata for StandardTypedValueResultResolver;
    }
  }

  else
  {
    sub_26B9944E4(*(v1 + 240), _s18ResolutionStrategyOMa);
    v68 = &off_287C60DD0;
    v69 = &type metadata for IndexedEntityTypedValueResultResolver;
  }

  *(v1 + 136) = v69;
  *(v1 + 144) = v68;
  __swift_project_boxed_opaque_existential_1((v1 + 112), v69);
  v70 = *(v1 + 176);
  *(v1 + 400) = v70;
  v77 = (v68[1] + *v68[1]);
  v71 = swift_task_alloc();
  *(v1 + 408) = v71;
  *v71 = v1;
  v71[1] = sub_26B992808;
  v60 = v70;
  v61 = v69;
  v62 = v68;
LABEL_76:

  return v77(v60, v61, v62);
}

uint64_t sub_26B992120(uint64_t a1)
{
  v3 = *v2;
  v3[48] = a1;
  v3[49] = v1;

  if (v1)
  {
    v4 = v3[39];

    v5 = sub_26B992C7C;
    v6 = v4;
  }

  else
  {
    v7 = v3[39];

    v5 = sub_26B992270;
    v6 = v7;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t sub_26B992270()
{
  v4 = *(v0 + 384);
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v0 + 384) + 48;
    v7 = MEMORY[0x277D84F90];
    v8 = MEMORY[0x277D84F90];
    do
    {
      v2 = *(v6 - 16);
      v9 = *(v6 - 8);
      v3 = *v6;
      if (*v6)
      {
        v36 = v3;
        sub_26B9AAAE4();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_26B993620(0, *(v7 + 2) + 1, 1, v7);
        }

        v1 = *(v7 + 2);
        v12 = *(v7 + 3);
        v10 = v1 + 1;
        if (v1 >= v12 >> 1)
        {
LABEL_30:
          v34 = sub_26B993620((v12 > 1), v10, 1, v7);
          v7 = v34;
        }

        else
        {
          v34 = v7;
        }
      }

      else
      {
        sub_26B9AAAE4();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_26B993620(0, *(v8 + 16) + 1, 1, v8);
        }

        v1 = *(v8 + 16);
        v37 = *(v8 + 24);
        v10 = v1 + 1;
        if (v1 >= v37 >> 1)
        {
          v34 = sub_26B993620((v37 > 1), v1 + 1, 1, v8);
          v8 = v34;
        }

        else
        {
          v34 = v8;
        }
      }

      v6 += 24;
      *(v34 + 2) = v10;
      v35 = &v34[24 * v1];
      *(v35 + 4) = v2;
      *(v35 + 5) = v9;
      *(v35 + 6) = v3;
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    v8 = MEMORY[0x277D84F90];
  }

  sub_26B992F04(v8);
  v9 = v0 + 184;
  sub_26B992F04(v7);
  v10 = *(v0 + 360);
  v6 = (*(v0 + 352) - 1) & *(v0 + 352);
  v5 = 1;
  while (v6)
  {
    v11 = *(v0 + 344);
LABEL_13:
    *(v0 + 352) = v6;
    *(v0 + 360) = v10;
    v13 = *(v0 + 264);
    v7 = *(v0 + 248);
    v8 = *(v0 + 232);
    v14 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v15 = v14 | (v10 << 6);
    v1 = *(*(v11 + 48) + v15);
    v9 = *(*(v11 + 56) + 8 * v15);
    *(v0 + 368) = v9;
    sub_26B994480(v13, v7);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v7 = *(v0 + 248);

      sub_26B9944E4(v7, _s18ResolutionStrategyOMa);
      if (v1 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v7 = *(v0 + 248);
      v8 = sub_26B9AB104();
      v17 = *(v8 - 8);
      v2 = *(v17 + 8);
      v3 = (v17 + 8);

      v2(v7, v8);
      if (v1 != 2)
      {
        goto LABEL_19;
      }

LABEL_6:
    }

    else if (v1)
    {

LABEL_19:
      v18 = off_279D105A0[v1];
      v19 = off_279D105B8[v1];
      *(v0 + 96) = v18;
      *(v0 + 104) = v19;
      __swift_project_boxed_opaque_existential_1((v0 + 72), v18);
      v38 = (v19[1] + *v19[1]);
      v20 = swift_task_alloc();
      *(v0 + 376) = v20;
      *v20 = v0;
      v20[1] = sub_26B992120;
      v21 = v9;
      v22 = v18;
      v23 = v19;
      goto LABEL_26;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    v11 = *(v0 + 344);
    if (v12 >= (((1 << *(v0 + 432)) + 63) >> 6))
    {
      break;
    }

    v6 = *(v11 + 8 * v12 + 64);
    ++v10;
    if (v6)
    {
      v10 = v12;
      goto LABEL_13;
    }
  }

  v24 = *(v0 + 264);
  v25 = *(v0 + 240);

  sub_26B994480(v24, v25);
  v26 = swift_getEnumCaseMultiPayload();
  if (v26)
  {
    if (v26 == 1)
    {
      v27 = *(v0 + 240);
      v28 = sub_26B9AB104();
      (*(*(v28 - 8) + 8))(v27, v28);
      v29 = &off_287C60DE0;
      v30 = &type metadata for MetadataTypedValueResultResolver;
    }

    else
    {
      v29 = &off_287C60DC0;
      v30 = &type metadata for StandardTypedValueResultResolver;
    }
  }

  else
  {
    sub_26B9944E4(*(v0 + 240), _s18ResolutionStrategyOMa);
    v29 = &off_287C60DD0;
    v30 = &type metadata for IndexedEntityTypedValueResultResolver;
  }

  *(v0 + 136) = v30;
  *(v0 + 144) = v29;
  __swift_project_boxed_opaque_existential_1((v0 + 112), v30);
  v31 = *(v0 + 176);
  *(v0 + 400) = v31;
  v38 = (v29[1] + *v29[1]);
  v32 = swift_task_alloc();
  *(v0 + 408) = v32;
  *v32 = v0;
  v32[1] = sub_26B992808;
  v21 = v31;
  v22 = v30;
  v23 = v29;
LABEL_26:

  return v38(v21, v22, v23);
}

uint64_t sub_26B992808(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 416) = v1;

  if (v1)
  {
    v5 = *(v4 + 312);

    v6 = sub_26B992DC4;
    v7 = v5;
  }

  else
  {
    v7 = *(v4 + 312);
    *(v4 + 424) = a1;
    v6 = sub_26B992954;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_26B992954()
{
  v1 = v0[53];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];

  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  sub_26B992F04(v1);
  v0[24] = v0[23];
  swift_getKeyPath();
  sub_26B9AAF04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427188, &qword_26B9B5890);
  sub_26B8F7938(&qword_280427190, &qword_280427188, &qword_26B9B5890, MEMORY[0x277D83970]);
  sub_26B8F7938(&qword_280427198, &qword_280427178, &unk_26B9B5858, MEMORY[0x277CC8C98]);
  v5 = sub_26B9AC634();
  (*(v3 + 8))(v2, v4);

  v7 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  v8 = *(v5 + 16);
  if (v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = *(v5 + 16);
      if (v9 >= v10)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      v11 = *(v5 + 32 + 24 * v9 + 16);
      v12 = v9 + 1;
      if (!v11)
      {
        break;
      }

LABEL_9:
      v9 = v12;
      v15 = v11;
      MEMORY[0x26D6865A0]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26B9AC734();
      }

      result = sub_26B9AC774();
      v7 = v19;
      if (v9 == v8)
      {
        goto LABEL_12;
      }
    }

    v13 = (v5 + 72 + 24 * v9);
    while (v8 != v12)
    {
      if (v10 == v12)
      {
        goto LABEL_15;
      }

      v14 = *v13;
      v13 += 3;
      v11 = v14;
      ++v12;
      if (v14)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_12:
  v16 = v0[38];
  v17 = v0[33];

  sub_26B9944E4(v17, _s18ResolutionStrategyOMa);
  sub_26B9944E4(v16, type metadata accessor for TypedValueResultBuilder.Config);

  v18 = v0[1];

  return v18(v7);
}

uint64_t sub_26B992C7C()
{
  v1 = v0[38];
  v2 = v0[33];

  sub_26B9944E4(v2, _s18ResolutionStrategyOMa);
  sub_26B9944E4(v1, type metadata accessor for TypedValueResultBuilder.Config);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);

  v3 = v0[1];

  return v3();
}

uint64_t sub_26B992DC4()
{
  v1 = v0[38];
  v2 = v0[33];

  sub_26B9944E4(v2, _s18ResolutionStrategyOMa);
  sub_26B9944E4(v1, type metadata accessor for TypedValueResultBuilder.Config);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);

  v3 = v0[1];

  return v3();
}

uint64_t sub_26B992F04(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_26B993620(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26B992FFC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_26B9ACB44();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_26B9ACB44();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_26B928DFC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_26B932FF0(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t TypedValueResultQueryDataSource.__deallocating_deinit()
{
  ToolKitQueryDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_26B993178(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8F40D4;

  return sub_26B99477C(a1);
}

uint64_t sub_26B99320C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426518, &qword_26B9B1C70);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &aBlock - v9;
  v11 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v12 = sub_26B9AC4C4();
  v13 = [v11 initWithQueryString:v12 queryContext:a4];

  v14 = swift_allocObject();
  *(v14 + 16) = MEMORY[0x277D84F90];
  v24 = sub_26B99612C;
  v25 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_26B930024;
  v23 = &block_descriptor_4;
  v15 = _Block_copy(&aBlock);
  sub_26B9AAAE4();

  [v13 setFoundItemsHandler_];
  _Block_release(v15);
  (*(v7 + 16))(v10, a1, v6);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v16, v10, v6);
  *(v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  v24 = sub_26B9333F0;
  v25 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_26B9300A8;
  v23 = &block_descriptor_31_0;
  v18 = _Block_copy(&aBlock);
  sub_26B9AAAE4();

  [v13 setCompletionHandler_];
  _Block_release(v18);
  [v13 start];
}

uint64_t sub_26B9934F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8F4CF4;

  return sub_26B99535C(a1);
}

uint64_t sub_26B99358C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8F4CF4;

  return sub_26B994C78(a1);
}

char *sub_26B993620(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427180, &qword_26B9B5868);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26B993740(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804271B8, &unk_26B9B5AA8);
  v37 = v4;
  result = sub_26B9ACD74();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 24 * v21);
      v25 = v24[1];
      v38 = *v24;
      v39 = *v22;
      v26 = v24[2];
      if ((v37 & 1) == 0)
      {
        v27 = v26;

        sub_26B9AAAE4();
      }

      sub_26B9ACFB4();
      sub_26B9AC574();
      result = sub_26B9ACFF4();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v39;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v38;
      v17[1] = v25;
      v17[2] = v26;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26B993A10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804271C0, &unk_26B9B5AC0);
  v30 = v4;
  result = sub_26B9ACD74();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_26B9ACFB4();
      MEMORY[0x26D686E90](v20);
      result = sub_26B9ACFF4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26B993CA0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26B9ACB24() + 1) & ~v5;
    do
    {
      sub_26B9ACFB4();

      sub_26B9AC574();
      v10 = sub_26B9ACFF4();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (v3 != v6 || v16 >= v17 + 24)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_26B993E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_26B9201A8(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_26B993740(v20, a6 & 1);
      v15 = sub_26B9201A8(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_26B9ACF24();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_26B994018();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 24 * v15);
    v31 = v26[2];
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a4;
  v27[1] = a5;
  v28 = (v25[7] + 24 * v15);
  *v28 = a1;
  v28[1] = a2;
  v28[2] = a3;
  v29 = v25[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v30;
}

void *sub_26B994018()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804271B8, &unk_26B9B5AA8);
  v2 = *v0;
  v3 = sub_26B9ACD64();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 24;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = (*(v4 + 48) + v18);
        *v26 = v20;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        *v27 = v23;
        v27[1] = v24;
        v27[2] = v25;
        v28 = v25;

        result = sub_26B9AAAE4();
      }

      while (v12);
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
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26B9941B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804271C0, &unk_26B9B5AC0);
  v2 = *v0;
  v3 = sub_26B9ACD64();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
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
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26B99430C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804271C0, &unk_26B9B5AC0);
  v3 = sub_26B9ACD84();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_26B8F6AB0(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_26B8F6AB0(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26B99441C(uint64_t a1, uint64_t a2)
{
  v4 = _s18ResolutionStrategyOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B994480(uint64_t a1, uint64_t a2)
{
  v4 = _s18ResolutionStrategyOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9944E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26B994548()
{
  result = qword_2804271A0;
  if (!qword_2804271A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804271A0);
  }

  return result;
}

void sub_26B99461C(uint64_t a1)
{
  sub_26B994690();
  if (v1 <= 0x3F)
  {
    sub_26B9946F4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_26B994690()
{
  if (!qword_2804271A8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2804271A8);
    }
  }
}

void sub_26B9946F4()
{
  if (!qword_2804271B0)
  {
    v0 = sub_26B9AB104();
    if (!v1)
    {
      atomic_store(v0, &qword_2804271B0);
    }
  }
}

uint64_t sub_26B99477C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = _s18ResolutionStrategyOMa(0);
  v1[4] = swift_task_alloc();
  v2 = sub_26B9AB104();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B99486C, 0, 0);
}

uint64_t sub_26B99486C()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[6];
    v22 = (v3 + 32);
    v23 = (v3 + 8);
    v4 = (v1 + 48);
    v5 = MEMORY[0x277D84F90];
    do
    {
      v9 = *(v4 - 1);
      v27 = *(v4 - 2);
      v10 = *(*v9 + 104);
      v28 = *v4;
      v26 = *v4;
      v11 = sub_26B9AAAE4();
      v10(v11);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v12 = v0[7];
        (*v22)(v12, v0[4], v0[5]);
        v13 = sub_26B93F048(v12);
        if (v13)
        {
          v14 = [objc_opt_self() resultBuilderWithResult_];
          swift_retain_n();
          v25 = v14;
          v28 = [v14 buildResult];
          v24 = v28;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_26B993620(0, *(v5 + 2) + 1, 1, v5);
          }

          v16 = *(v5 + 2);
          v15 = *(v5 + 3);
          v17 = v16 + 1;
          if (v16 >= v15 >> 1)
          {
            v5 = sub_26B993620((v15 > 1), v16 + 1, 1, v5);
          }

          v6 = v0[7];
          v7 = v0[5];

          (*v23)(v6, v7);
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_26B993620(0, *(v5 + 2) + 1, 1, v5);
          }

          v16 = *(v5 + 2);
          v19 = *(v5 + 3);
          v17 = v16 + 1;
          if (v16 >= v19 >> 1)
          {
            v5 = sub_26B993620((v19 > 1), v16 + 1, 1, v5);
          }

          (*v23)(v0[7], v0[5]);
        }
      }

      else
      {
        sub_26B9944E4(v0[4], _s18ResolutionStrategyOMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_26B993620(0, *(v5 + 2) + 1, 1, v5);
        }

        v16 = *(v5 + 2);
        v18 = *(v5 + 3);
        v17 = v16 + 1;
        if (v16 >= v18 >> 1)
        {
          v5 = sub_26B993620((v18 > 1), v16 + 1, 1, v5);
        }
      }

      v4 += 3;
      *(v5 + 2) = v17;
      v8 = &v5[24 * v16];
      *(v8 + 4) = v27;
      *(v8 + 5) = v9;
      *(v8 + 6) = v28;
      --v2;
    }

    while (v2);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v20 = v0[1];

  return v20(v5);
}

uint64_t sub_26B994C98()
{
  v1 = v0[2];
  v2 = v1[2];
  v0[3] = v2;
  if (v2)
  {
    v0[4] = MEMORY[0x277D84F90];
    v0[5] = 0;
    v0[6] = v1[4];
    v3 = v1[5];
    v0[7] = v3;
    v4 = v1[6];
    v0[8] = v4;
    v5 = *(*v3 + 120);
    swift_retain_n();
    v6 = v4;
    v11 = (v5 + *v5);
    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = sub_26B994E38;

    return v11();
  }

  else
  {
    v9 = v0[1];
    v10 = MEMORY[0x277D84F90];

    return v9(v10);
  }
}

uint64_t sub_26B994E38(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {

    v4 = sub_26B9951CC;
  }

  else
  {
    v4 = sub_26B994F54;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26B994F54()
{
  v1 = *(v0 + 64);
  v23 = *(v0 + 80);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 32);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_26B993620(0, *(v3 + 2) + 1, 1, *(v0 + 32));
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_26B993620((v4 > 1), v5 + 1, 1, v3);
  }

  v6 = *(v0 + 80);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v10 = *(v0 + 40);
  v9 = *(v0 + 48);
  v11 = *(v0 + 24);

  *(v3 + 2) = v5 + 1;
  v12 = &v3[24 * v5];
  *(v12 + 4) = v9;
  *(v12 + 5) = v7;
  *(v12 + 6) = v6;
  if (v10 + 1 == v11)
  {
    v13 = *(v0 + 8);

    return v13(v3);
  }

  else
  {
    v15 = *(v0 + 40);
    *(v0 + 32) = v3;
    *(v0 + 40) = v15 + 1;
    v16 = (*(v0 + 16) + 24 * v15);
    *(v0 + 48) = v16[7];
    v17 = v16[8];
    *(v0 + 56) = v17;
    v18 = v16[9];
    *(v0 + 64) = v18;
    v19 = *(*v17 + 120);
    swift_retain_n();
    v20 = v18;
    v22 = (v19 + *v19);
    v21 = swift_task_alloc();
    *(v0 + 72) = v21;
    *v21 = v0;
    v21[1] = sub_26B994E38;

    return v22();
  }
}

uint64_t sub_26B9951CC()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_26B99523C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804271B8, &unk_26B9B5AA8);
    v3 = sub_26B9ACD84();
    sub_26B9AAAE4();
    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;
      v10 = *i;

      sub_26B9AAAE4();
      result = sub_26B9201A8(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 24 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26B99535C(uint64_t a1)
{
  v1[4] = a1;
  v1[5] = _s18ResolutionStrategyOMa(0);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B9953F0, 0, 0);
}

uint64_t sub_26B9953F0()
{
  v1 = v0[4];
  v2 = MEMORY[0x277D84F90];
  v53 = sub_26B99523C(MEMORY[0x277D84F90]);
  v54 = v0;
  v3 = *(v1 + 16);
  if (v3)
  {
    v50 = v0[6];
    v4 = (v0[4] + 48);
    v55 = v2;
    do
    {
      v58 = v3;
      v59 = v2;
      v7 = *(v4 - 2);
      v6 = *(v4 - 1);
      v8 = *v4;
      v9 = *(*v6 + 104);
      v56 = *v4;
      v10 = sub_26B9AAAE4();
      v9(v10);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v12 = v54[6];
      if (EnumCaseMultiPayload)
      {
        sub_26B9944E4(v12, _s18ResolutionStrategyOMa);
        v13 = v55;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_26B993620(0, *(v55 + 2) + 1, 1, v55);
        }

        v15 = *(v13 + 2);
        v14 = *(v13 + 3);
        if (v15 >= v14 >> 1)
        {
          v13 = sub_26B993620((v14 > 1), v15 + 1, 1, v13);
        }

        *(v13 + 2) = v15 + 1;
        v55 = v13;
        v5 = &v13[24 * v15];
        *(v5 + 4) = v7;
        *(v5 + 5) = v6;
        *(v5 + 6) = v8;
      }

      else
      {
        v16 = *v12;
        v17 = v50[1];
        v51 = *v12;
        v52 = v50[2];
        v18 = v50[3];
        v19 = v50[4];
        v20 = v50[5];

        MEMORY[0x26D686470](46, 0xE100000000000000);

        MEMORY[0x26D686470](v16, v17);

        MEMORY[0x26D686470](46, 0xE100000000000000);
        MEMORY[0x26D686470](v19, v20);
        sub_26B9AAAE4();
        v57 = v56;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_26B993E5C(v7, v6, v8, v52, v18, isUniquelyReferenced_nonNull_native);

        sub_26B9ACBF4();
        MEMORY[0x26D686470](0xD000000000000024, 0x800000026B9BA3C0);
        MEMORY[0x26D686470](v19, v20);

        MEMORY[0x26D686470](0xD000000000000024, 0x800000026B9BA3F0);

        MEMORY[0x26D686470](v51, v17);

        MEMORY[0x26D686470](0xD000000000000015, 0x800000026B9BA420);

        MEMORY[0x26D686470](v52, v18);

        swift_bridgeObjectRelease_n();
        v2 = v59;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_26B91F91C(0, *(v59 + 2) + 1, 1, v59);
        }

        v23 = *(v2 + 2);
        v22 = *(v2 + 3);
        if (v23 >= v22 >> 1)
        {
          v2 = sub_26B91F91C((v22 > 1), v23 + 1, 1, v2);
        }

        *(v2 + 2) = v23 + 1;
        v24 = &v2[16 * v23];
        *(v24 + 4) = 0;
        *(v24 + 5) = 0xE000000000000000;
      }

      v4 += 3;
      v3 = v58 - 1;
    }

    while (v58 != 1);
  }

  else
  {
    v55 = v2;
  }

  v54[9] = v2;
  v54[10] = v53;
  v54[7] = v53;
  v54[8] = v55;
  v25 = *(v2 + 2);
  if (v25)
  {
    v60 = MEMORY[0x277D84F90];
    sub_26B921238(0, v25, 0);
    v26 = (v2 + 40);
    do
    {
      v27 = *(v26 - 1);
      v28 = *v26;

      MEMORY[0x26D686470](v27, v28);
      MEMORY[0x26D686470](41, 0xE100000000000000);

      v30 = *(v60 + 16);
      v29 = *(v60 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_26B921238((v29 > 1), v30 + 1, 1);
      }

      *(v60 + 16) = v30 + 1;
      v31 = v60 + 16 * v30;
      *(v31 + 32) = 40;
      *(v31 + 40) = 0xE100000000000000;
      v26 += 2;
      --v25;
    }

    while (v25);
    v54[2] = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426788, &qword_26B9B2A70);
    sub_26B8F7938(&qword_280426790, &qword_280426788, &qword_26B9B2A70, MEMORY[0x277D83958]);
    v32 = sub_26B9AC484();
    v34 = v33;

    v54[11] = v34;
    v35 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
    v54[12] = v35;
    v36 = rankingPrefetchedAttributesArray();
    if (v36)
    {
      v44 = v36;
      [v35 setFetchAttributes_];

      [v35 setDisableSemanticSearch_];
      v45 = swift_task_alloc();
      v54[13] = v45;
      v45[2] = v32;
      v45[3] = v34;
      v45[4] = v35;
      v46 = swift_task_alloc();
      v54[14] = v46;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804264F0, &qword_26B9B1C58);
      *v46 = v54;
      v46[1] = sub_26B995AA4;
      v41 = sub_26B996120;
      v39 = 0x2865766C6F736572;
      v40 = 0xEF293A736B736174;
      v36 = v54 + 3;
      v37 = 0;
      v38 = 0;
      v42 = v45;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2822008A0](v36, v37, v38, v39, v40, v41, v42, v43);
  }

  else
  {

    v47 = v54[4];

    v48 = v54[1];

    return v48(v47);
  }
}

uint64_t sub_26B995AA4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = sub_26B9960A4;
  }

  else
  {

    v2 = sub_26B995C20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B995C20()
{
  v1 = v0[3];
  if (v1 >> 62)
  {
    v41 = v0[3];
    result = sub_26B9ACB44();
    v1 = v41;
    v44 = v0;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_33:
    v49 = v0[8];
LABEL_34:
    v42 = v44[12];

    v43 = v44[1];

    return v43(v49);
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_33;
  }

LABEL_3:
  if (result >= 1)
  {
    v3 = 0;
    v4 = &selRef_setObject_forKey_;
    v49 = v0[8];
    v50 = v0[10];
    v45 = v0[7];
    v46 = v1 & 0xC000000000000001;
    v47 = result;
    v48 = v1;
    while (1)
    {
      if (v46)
      {
        v5 = MEMORY[0x26D686B00](v3);
      }

      else
      {
        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = [v5 v4[21]];
      v8 = [v7 bundleID];

      if (v8)
      {
        v9 = sub_26B9AC504();
        v11 = v10;
      }

      else
      {
        v9 = 0;
        v11 = 0xE000000000000000;
      }

      v12 = [v6 v4[21]];
      v13 = [v12 appEntityType];

      if (v13)
      {
        v14 = sub_26B9AC504();
        v16 = v15;
      }

      else
      {
        v14 = 0;
        v16 = 0xE000000000000000;
      }

      v17 = v4;
      v18 = [v6 v4[21]];
      v19 = [v18 appEntityInstanceId];

      if (v19)
      {
        v20 = sub_26B9AC504();
        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0xE000000000000000;
      }

      MEMORY[0x26D686470](46, 0xE100000000000000);
      MEMORY[0x26D686470](v14, v16);

      MEMORY[0x26D686470](46, 0xE100000000000000);
      MEMORY[0x26D686470](v20, v22);

      v23 = v11;
      if (*(v50 + 16))
      {
        v24 = sub_26B9201A8(v9, v11);
        if ((v25 & 1) == 0)
        {
          v4 = v17;

          goto LABEL_7;
        }

        v26 = *(v50 + 56) + 24 * v24;
        v27 = *v26;
        v28 = *(v26 + 8);
        v29 = *(v26 + 16);
        swift_retain_n();
        v30 = sub_26B9201A8(v9, v23);
        v32 = v31;

        if (v32)
        {
          v33 = v45;
          if (!swift_isUniquelyReferenced_nonNull_native())
          {
            sub_26B994018();
            v33 = v45;
          }

          v34 = *(*(v33 + 56) + 24 * v30 + 16);

          sub_26B993CA0(v30, v33);
          v45 = v33;
          v50 = v33;
        }

        v35 = [objc_opt_self() resultBuilderForItem_];
        v36 = [v35 buildResult];

        v37 = v36;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_26B993620(0, *(v49 + 2) + 1, 1, v49);
        }

        v39 = *(v49 + 2);
        v38 = *(v49 + 3);
        if (v39 >= v38 >> 1)
        {
          v49 = sub_26B993620((v38 > 1), v39 + 1, 1, v49);
        }

        *(v49 + 2) = v39 + 1;
        v40 = &v49[24 * v39];
        *(v40 + 4) = v27;
        *(v40 + 5) = v28;
        *(v40 + 6) = v36;
      }

      else
      {
      }

      v4 = v17;
LABEL_7:
      ++v3;
      v1 = v48;
      if (v47 == v3)
      {
        goto LABEL_34;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26B9960A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B99612C(uint64_t a1)
{
  swift_beginAccess();

  sub_26B992FFC(v1);
  return swift_endAccess();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_26B9AAAE4();
}

uint64_t WebsiteQuery.searchString.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t WebsiteQuery.init(command:searchString:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

__n128 WebsiteQuery.platterBehavior.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_26B92CEE8();
  v3 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v3;
  result = v2[2];
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_26B996230()
{
  result = qword_2804271C8;
  if (!qword_2804271C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804271C8);
  }

  return result;
}

__n128 sub_26B996284@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_26B92CEE8();
  v3 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v3;
  result = v2[2];
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_26B9962B8(uint64_t a1)
{
  result = sub_26B996230();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B9962E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B996550();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B9963BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B996550();
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

unint64_t sub_26B996470(uint64_t a1)
{
  result = sub_26B996498();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B996498()
{
  result = qword_2804271D0;
  if (!qword_2804271D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804271D0);
  }

  return result;
}

uint64_t sub_26B9964EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B996230();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_26B996550()
{
  result = qword_2804271D8;
  if (!qword_2804271D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804271D8);
  }

  return result;
}

uint64_t sub_26B9965C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 120) = a3;
  *(v4 + 128) = a4;
  *(v4 + 136) = *a1;
  *(v4 + 144) = *(a1 + 8);
  *(v4 + 160) = *(a2 + 24);
  v5 = sub_26B92A538();
  swift_beginAccess();
  v6 = *v5;
  *(v4 + 168) = v6;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B996668, v6, 0);
}

uint64_t sub_26B996668()
{
  v1 = [*(v0 + 136) entityIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = [*(v0 + 136) bundleIdentifier];
    if (!v3)
    {
      sub_26B9AC504();
      v3 = sub_26B9AC4C4();
    }

    v4 = *(v0 + 152);
    v5 = [objc_allocWithZone(MEMORY[0x277D65850]) init];
    [v5 setResultBundleId_];

    if (v4)
    {
      v6 = sub_26B9AC4C4();
    }

    else
    {
      v6 = 0;
    }

    v8 = [objc_opt_self() cardSectionForSearchWebsiteCommand:*(v0 + 136) searchString:v6];

    v9 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_26B9B1290;
    *(v10 + 32) = v8;
    sub_26B9294B8(0, &qword_2804272E0, 0x277D4C238);
    v11 = v8;
    v12 = sub_26B9AC6E4();

    [v9 setCardSections_];

    [v5 setInlineCard_];
    [v5 setIdentifier_];

    v13 = [objc_allocWithZone(MEMORY[0x277D65848]) init];
    v14 = sub_26B9AC4C4();
    [v13 setIdentifier_];

    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26B9B1290;
    *(v15 + 32) = v5;
    sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
    v16 = sub_26B9AC6E4();

    [v13 setResults_];

    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_26B9B1290;
    *(v7 + 32) = v13;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v7 >> 62)
  {
    sub_26B9294B8(0, &qword_280426400, 0x277D4C588);

    v17 = sub_26B9ACD34();
  }

  else
  {

    sub_26B9ACEC4();
    sub_26B9294B8(0, &qword_280426400, 0x277D4C588);
    v17 = v7;
  }

  v18 = *(v0 + 160);
  v19 = *(v0 + 120);

  v20 = sub_26B906128();
  SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(v17, v18, 1, 1, 0, v20 & 1, v0 + 16);
  v21 = *(v0 + 24);
  v22 = *(v0 + 32);
  v23 = *(v0 + 33);
  v24 = *(v0 + 40);
  v25 = *(v0 + 48);
  *(v0 + 56) = *(v0 + 16);
  *(v0 + 64) = v21;
  *(v0 + 72) = v22;
  *(v0 + 73) = v23;
  *(v0 + 80) = v24;
  *(v0 + 88) = v25;
  v28 = (v19 + *v19);
  v26 = swift_task_alloc();
  *(v0 + 176) = v26;
  *v26 = v0;
  v26[1] = sub_26B996B00;

  return v28(v0 + 56);
}

uint64_t sub_26B996B00()
{
  v1 = *(*v0 + 168);

  return MEMORY[0x2822009F8](sub_26B996C50, v1, 0);
}

uint64_t sub_26B996C50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B996CC8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 80))();
  *a1 = result;
  return result;
}

uint64_t sub_26B996D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 88) + **(**v4 + 88));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_26B8EB6C8;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WebsiteQueryDataSource.start(with:context:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 88) + **(*v4 + 88));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_26B8EB6C8;

  return v12(a1, a2, a3, a4);
}

__n128 TopLevelFiltersQuery.platterBehavior.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_26B92CA84();
  v3 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v3;
  result = v2[2];
  *(a1 + 32) = result;
  return result;
}

SpotlightUIShared::TopLevelFiltersQuery __swiftcall TopLevelFiltersQuery.init()()
{
  *v0 = MEMORY[0x277D84F90];
  *(v0 + 8) = 0;
  return result;
}

unint64_t sub_26B997054(uint64_t a1)
{
  result = sub_26B92C01C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B99707C@<X0>(void *a1@<X8>)
{
  sub_26B9973C0();

  return StaticQuery.representation.getter(a1);
}

uint64_t sub_26B9970C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B9973C0();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return StaticQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B9971A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  sub_26B9973C0();
  *v1 = v0;
  v1[1] = sub_26B8EB6C8;

  return StaticQuery.stop(with:)();
}

unint64_t sub_26B997258(uint64_t a1)
{
  result = sub_26B997280();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B997280()
{
  result = qword_2804271E0;
  if (!qword_2804271E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804271E0);
  }

  return result;
}

uint64_t sub_26B9972D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B92C01C();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_26B997328(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_26B997370(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26B9973C0()
{
  result = qword_2804271E8;
  if (!qword_2804271E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804271E8);
  }

  return result;
}

unint64_t sub_26B997434(uint64_t a1)
{
  result = sub_26B99745C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B99745C()
{
  result = qword_2804271F0;
  if (!qword_2804271F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804271F0);
  }

  return result;
}

uint64_t sub_26B9974B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B997720();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B99758C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B997720();
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

unint64_t sub_26B997640(uint64_t a1)
{
  result = sub_26B997668();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B997668()
{
  result = qword_2804271F8;
  if (!qword_2804271F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804271F8);
  }

  return result;
}

uint64_t sub_26B9976BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B99745C();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_26B997720()
{
  result = qword_280427200;
  if (!qword_280427200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280427200);
  }

  return result;
}

uint64_t sub_26B99778C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[17] = *(a2 + 24);
  v5 = sub_26B92A538();
  swift_beginAccess();
  v6 = *v5;
  v4[18] = v6;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B997824, v6, 0);
}