uint64_t sub_214890680()
{
  sub_214897F28(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_2148906C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21498E5D0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21489076C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_21498E5D0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_214890810()
{
  v1 = type metadata accessor for MASettingsRemoteView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);
  if (v6 >> 60 != 15)
  {
    sub_21489B4F8(*v5, v6);
  }

  __swift_destroy_boxed_opaque_existential_1((v5 + 24));

  v7 = *(v1 + 32);
  v8 = sub_21498E5D0();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_214890964()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2148909B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_2148909EC@<X0>(void *a1@<X8>)
{
  sub_2148AA930();
  result = sub_21498EDD0();
  *a1 = v3;
  return result;
}

uint64_t sub_214890A88()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214890AC0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214890B24(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_21498E900();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A808, &unk_21499B730);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A810, qword_214993110);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v16 = sub_21498E5D0();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[10];

  return v17(v18, a2, v16);
}

uint64_t sub_214890D44(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_21498E900();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A808, &unk_21499B730);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A810, qword_214993110);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v16 = sub_21498E5D0();
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[10];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_214890F64()
{
  v1 = type metadata accessor for CustomRemoteContent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v19 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;

  v5 = v1[5];
  v6 = sub_21498E900();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v1[6];
  if (!(*(v7 + 48))(v0 + v3 + v9, 1, v6))
  {
    v8(v4 + v9, v6);
  }

  v10 = v1[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A838, &qword_21499B640);
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v4 + v10, 1, v11))
  {
    (*(v12 + 8))(v4 + v10, v11);
  }

  v13 = v1[8];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A848, &qword_214993160);
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v4 + v13, 1, v14))
  {
    (*(v15 + 8))(v4 + v13, v14);
  }

  v16 = v1[10];
  v17 = sub_21498E5D0();
  (*(*(v17 - 8) + 8))(v4 + v16, v17);
  sub_2148B45A0(*(v4 + v1[11]), *(v4 + v1[11] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v19, v2 | 7);
}

uint64_t sub_214891258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21498E350();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_214891318(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21498E350();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2148913D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21498E350();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_214891490(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21498E350();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_214891564()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214891A08(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_21498E900();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_15;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABB0, &qword_214993E38);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_15;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABB8, &qword_214993E40);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[8];
    goto LABEL_15;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABC0, &qword_214993E48);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[10];
    goto LABEL_15;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABC8, qword_214993E50);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[11];

  return v18(v19, a2, v17);
}

uint64_t sub_214891C88(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_21498E900();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABB0, &qword_214993E38);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABB8, &qword_214993E40);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[8];
    goto LABEL_13;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABC0, &qword_214993E48);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[10];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABC8, qword_214993E50);
  v18 = *(*(v17 - 8) + 56);
  v19 = v5 + a4[11];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_214891F0C()
{
  v1 = sub_21498E6A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_214891F94()
{
  v1 = v0;
  v2 = sub_21498E900();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  v7 = type metadata accessor for OBKLiftUIView(0);
  v50 = *(*(v7 - 1) + 64);
  v48 = *(*(v7 - 1) + 80);
  v8 = *(v3 + 8);
  v8(v1 + v5, v2);
  v49 = (v5 + v6 + v48) & ~v48;
  v9 = v1 + v49;

  v51 = v8;
  v8(v1 + v49 + v7[5], v2);
  v10 = v7[6];
  if (!(*(v3 + 48))(v1 + v49 + v10, 1, v2))
  {
    v8(v9 + v10, v2);
  }

  v11 = v7[7];
  v12 = type metadata accessor for HeaderImage(0);
  if (!(*(*(v12 - 8) + 48))(v9 + v11, 1, v12))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v14 = sub_21498E6A0();
      (*(*(v14 - 8) + 8))(v9 + v11, v14);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      v51(v9 + v11, v2);
    }
  }

  v15 = v9 + v7[8];
  v16 = type metadata accessor for OBKLiftUIContent(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v35 = swift_getEnumCaseMultiPayload();
    switch(v35)
    {
      case 2:
        v37 = sub_21498E6A0();
        (*(*(v37 - 8) + 8))(v15, v37);
        v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC70, &unk_214993FF0) + 48);
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v15 + v38, 1, v39))
        {
          (*(v40 + 8))(v15 + v38, v39);
        }

        break;
      case 1:
        v36 = sub_21498E6A0();
        (*(*(v36 - 8) + 8))(v15, v36);
        break;
      case 0:

        break;
    }
  }

  v17 = v9 + v7[10];
  v18 = type metadata accessor for OBKLiftUICaption(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    v19 = swift_getEnumCaseMultiPayload();
    if (v19 >= 2)
    {
      if (v19 != 2)
      {
        goto LABEL_14;
      }

      v51(v17, v2);
      v17 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD38, &qword_214994070) + 64);
    }

    v51(v17, v2);
  }

LABEL_14:
  v47 = v2;
  v20 = v9 + v7[11];
  v21 = type metadata accessor for OBKLiftUIButton(0);
  v22 = *(*(v21 - 8) + 48);
  if (!v22(v20, 1, v21))
  {
    v43 = v7;
    v44 = v1;
    v45 = v4;
    v51(v20, v47);
    v23 = *(v21 + 20);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
    v25 = *(v24 - 8);
    v26 = *(v25 + 48);
    if (!v26(v20 + v23, 1, v24))
    {
      (*(v25 + 8))(v20 + v23, v24);
    }

    v42 = v25;
    v27 = *(v21 + 24);
    if (!v26(v20 + v27, 1, v24))
    {
      (*(v42 + 8))(v20 + v27, v24);
    }

    v1 = v44;
    v4 = v45;
    v7 = v43;
  }

  v28 = v9 + v7[12];
  if (!v22(v28, 1, v21))
  {
    v46 = v4;
    v29 = v1;
    v51(v28, v47);
    v30 = *(v21 + 20);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
    v32 = *(v31 - 8);
    v33 = *(v32 + 48);
    if (!v33(v28 + v30, 1, v31))
    {
      (*(v32 + 8))(v28 + v30, v31);
    }

    v34 = *(v21 + 24);
    if (!v33(v28 + v34, 1, v31))
    {
      (*(v32 + 8))(v28 + v34, v31);
    }

    v1 = v29;
    v4 = v46;
  }

  return MEMORY[0x2821FE8E8](v1, v49 + v50, v4 | v48 | 7);
}

uint64_t sub_2148926B8()
{
  v1 = type metadata accessor for OBKLiftUIButton(0);
  v42 = *(v1 - 8);
  v45 = *(v42 + 80);
  v2 = (v45 + 16) & ~v45;
  v3 = *(v42 + 64);
  v4 = type metadata accessor for OBKLiftUIView(0);
  v5 = *(*(v4 - 1) + 80);
  v6 = v2 + v3 + v5;
  v44 = *(*(v4 - 1) + 64);
  v49 = v0;
  v7 = v0 + v2;
  v8 = sub_21498E900();
  v9 = *(v8 - 8);
  v48 = v8;
  v47 = *(v9 + 8);
  v47(v0 + v2);
  v10 = *(v1 + 20);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
  v46 = *(v11 - 8);
  v12 = *(v46 + 48);
  if (!v12(v7 + v10, 1, v11))
  {
    (*(v46 + 8))(v7 + v10, v11);
  }

  v43 = v5;
  v13 = v6 & ~v5;
  v14 = *(v1 + 24);
  v41 = v12;
  if (!v12(v7 + v14, 1, v11))
  {
    (*(v46 + 8))(v7 + v14, v11);
  }

  v15 = v49;
  v16 = v49 + v13;

  v17 = v48;
  v18 = v47;
  (v47)(v49 + v13 + v4[5], v48);
  v19 = v4[6];
  if (!(*(v9 + 48))(v49 + v13 + v19, 1, v48))
  {
    (v47)(v16 + v19, v48);
  }

  v20 = v4[7];
  v21 = type metadata accessor for HeaderImage(0);
  if (!(*(*(v21 - 8) + 48))(v16 + v20, 1, v21))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v23 = sub_21498E6A0();
      (*(*(v23 - 8) + 8))(v16 + v20, v23);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      (v47)(v16 + v20, v48);
    }
  }

  v24 = v16 + v4[8];
  v25 = type metadata accessor for OBKLiftUIContent(0);
  if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    v36 = swift_getEnumCaseMultiPayload();
    switch(v36)
    {
      case 2:
        v38 = sub_21498E6A0();
        (*(*(v38 - 8) + 8))(v24, v38);
        v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC70, &unk_214993FF0) + 48);
        if (!v41(v24 + v39, 1, v11))
        {
          (*(v46 + 8))(v24 + v39, v11);
        }

        break;
      case 1:
        v37 = sub_21498E6A0();
        (*(*(v37 - 8) + 8))(v24, v37);
        break;
      case 0:

        break;
    }
  }

  v26 = v16 + v4[10];
  v27 = type metadata accessor for OBKLiftUICaption(0);
  if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
  {
    v28 = swift_getEnumCaseMultiPayload();
    if (v28 >= 2)
    {
      if (v28 != 2)
      {
        goto LABEL_18;
      }

      (v47)(v26, v48);
      v26 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD38, &qword_214994070) + 64);
    }

    (v47)(v26, v48);
  }

LABEL_18:
  v29 = v16 + v4[11];
  v30 = *(v42 + 48);
  if (!v30(v29, 1, v1))
  {
    (v47)(v29, v48);
    v31 = *(v1 + 20);
    if (!v41(v29 + v31, 1, v11))
    {
      (*(v46 + 8))(v29 + v31, v11);
    }

    v32 = *(v1 + 24);
    if (!v41(v29 + v32, 1, v11))
    {
      (*(v46 + 8))(v29 + v32, v11);
    }

    v15 = v49;
    v17 = v48;
    v18 = v47;
  }

  v33 = v16 + v4[12];
  if (!v30(v33, 1, v1))
  {
    v18(v33, v17);
    v34 = *(v1 + 20);
    if (!v41(v33 + v34, 1, v11))
    {
      (*(v46 + 8))(v33 + v34, v11);
    }

    v35 = *(v1 + 24);
    if (!v41(v33 + v35, 1, v11))
    {
      (*(v46 + 8))(v33 + v35, v11);
    }

    v15 = v49;
  }

  return MEMORY[0x2821FE8E8](v15, v13 + v44, v45 | v43 | 7);
}

double sub_214892EA4@<D0>(uint64_t a1@<X8>)
{
  result = 1.75067341e97;
  *a1 = xmmword_214994620;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_214892EC4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214892F04()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_214892FD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21498ED90();
  *a1 = result & 1;
  return result;
}

uint64_t sub_214893064@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21498ED40();
  *a1 = result;
  return result;
}

uint64_t sub_2148930F4()
{
  sub_214897F28(v0[2], v0[3]);

  if (v0[8])
  {
  }

  if (v0[18])
  {
  }

  if (v0[28])
  {
  }

  if (v0[36])
  {
  }

  if (v0[44])
  {
  }

  return MEMORY[0x2821FE8E8](v0, 417, 7);
}

uint64_t sub_214893204()
{
  swift_unknownObjectRelease();
  sub_214897F28(v0[4], v0[5]);

  if (v0[10])
  {
  }

  if (v0[20])
  {
  }

  if (v0[30])
  {
  }

  if (v0[38])
  {
  }

  if (v0[46])
  {
  }

  return MEMORY[0x2821FE8E8](v0, 433, 7);
}

uint64_t sub_21489332C()
{
  sub_214897F28(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_2148933B8()
{
  sub_214897F28(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 137, 7);
}

uint64_t sub_214893424()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21489345C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_214893550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA8, &unk_214993E28);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21489360C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA8, &unk_214993E28);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_214893778(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B610, &qword_214995EF0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA1B618, qword_214995EF8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_21498E6A0();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_2148938FC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B610, &qword_214995EF0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA1B618, qword_214995EF8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_21498E6A0();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_214893A84()
{
  v1 = type metadata accessor for BusinessLogoView(0);
  v13 = *(*(v1 - 1) + 80);
  v2 = (v13 + 32) & ~v13;
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;

  v5 = v1[5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B610, &qword_214995EF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v2 + v5, v6);
  v9 = v1[6];
  if (!(*(v7 + 48))(v0 + v2 + v9, 1, v6))
  {
    v8(v4 + v9, v6);
  }

  v10 = v1[9];
  v11 = sub_21498E6A0();
  (*(*(v11 - 8) + 8))(v4 + v10, v11);

  return MEMORY[0x2821FE8E8](v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v13 | 7);
}

uint64_t sub_214893CB4()
{
  v1 = type metadata accessor for BusinessLogoView(0);
  v13 = *(*(v1 - 1) + 80);
  v2 = (v13 + 32) & ~v13;
  v3 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v2;

  v5 = v1[5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B610, &qword_214995EF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v2 + v5, v6);
  v9 = v1[6];
  if (!(*(v7 + 48))(v0 + v2 + v9, 1, v6))
  {
    v8(v4 + v9, v6);
  }

  v10 = v1[9];
  v11 = sub_21498E6A0();
  (*(*(v11 - 8) + 8))(v4 + v10, v11);

  return MEMORY[0x2821FE8E8](v0, ((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v13 | 7);
}

uint64_t sub_214893EF8()
{
  v1 = type metadata accessor for BusinessLogoView(0);
  v14 = *(*(v1 - 1) + 80);
  v2 = (v14 + 16) & ~v14;
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;

  v5 = v1[5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B610, &qword_214995EF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v2 + v5, v6);
  v9 = v1[6];
  if (!(*(v7 + 48))(v0 + v2 + v9, 1, v6))
  {
    v8(v4 + v9, v6);
  }

  v10 = (((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  v11 = v1[9];
  v12 = sub_21498E6A0();
  (*(*(v12 - 8) + 8))(v4 + v11, v12);

  return MEMORY[0x2821FE8E8](v0, v10 + 8, v14 | 7);
}

uint64_t sub_214894130()
{
  v1 = type metadata accessor for BusinessLogoView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v15 = v0;
  v5 = v0 + v3;

  v6 = v1[5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B610, &qword_214995EF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v3 + v6, v7);
  v10 = v1[6];
  if (!(*(v8 + 48))(v0 + v3 + v10, 1, v7))
  {
    v9(v5 + v10, v7);
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v12 = v1[9];
  v13 = sub_21498E6A0();
  (*(*(v13 - 8) + 8))(v5 + v12, v13);

  return MEMORY[0x2821FE8E8](v15, v11 + 8, v2 | 7);
}

uint64_t sub_214894354()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21489438C()
{
  v1 = type metadata accessor for BusinessLogoView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v13 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;

  v5 = v1[5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B610, &qword_214995EF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v1[6];
  if (!(*(v7 + 48))(v0 + v3 + v9, 1, v6))
  {
    v8(v4 + v9, v6);
  }

  v10 = v1[9];
  v11 = sub_21498E6A0();
  (*(*(v11 - 8) + 8))(v4 + v10, v11);

  return MEMORY[0x2821FE8E8](v0, v3 + v13, v2 | 7);
}

uint64_t sub_2148945AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_214894668(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19iCloudMailAssistant9MATipIconVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_214894748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21498E320();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2148947F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21498E320();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_214894898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A848, &qword_214993160);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_214894954(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A848, &qword_214993160);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_214894A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21498E900();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC78, qword_214999F40);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_214894B8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21498E900();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC78, qword_214999F40);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_214894CA8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_21498E900();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ADD0, &qword_2149940E0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_214894E2C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_21498E900();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ADD0, &qword_2149940E0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_214894FB0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214894FF8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_214895070(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21489512C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2148951E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MALiftUISource(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_214895314(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MALiftUISource(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_214895454(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C020, &qword_214999818);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2148954BC()
{
  v1 = type metadata accessor for MARemoteView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[5];
  type metadata accessor for MALiftUISource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      sub_21489B4F8(*v6, *(v6 + 8));
      break;
    case 1:

      break;
    case 0:
      v8 = sub_21498E1B0();
      (*(*(v8 - 8) + 8))(v6, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1C8, &qword_214994C20);

      break;
  }

  sub_214897F28(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  if (*(v5 + v1[7]))
  {
  }

  v9 = v1[11];
  v10 = sub_21498E5D0();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_214895734(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_214895744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_214895800(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_214895950(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE500000000000000;
  v5 = 0x6C6562616CLL;
  if (*v1 != 2)
  {
    v5 = 0x74616E6974736564;
    v4 = 0xEB000000006E6F69;
  }

  if (*v1)
  {
    v3 = 0x6576697463417369;
    v2 = 0xE800000000000000;
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

uint64_t sub_2148959C8()
{
  v1 = 25705;
  v2 = 0x6C6562616CLL;
  if (*v0 != 2)
  {
    v2 = 0x74616E6974736564;
  }

  if (*v0)
  {
    v1 = 0x6576697463417369;
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

uint64_t sub_214895A50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C218, &unk_21499A220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214895AB8()
{
  v1 = (type metadata accessor for MANavigationLinkView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[8];
  v8 = sub_21498E6A0();
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v3 + v7, v8);
  v9(v0 + v3 + v1[9], v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_214895CA8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214895CE0()
{
  v1 = sub_21498DEE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_214895DB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C338, &qword_21499A670);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_214895E54()
{
  MEMORY[0x216059B90](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214895F60()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_214895FB0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2148960A8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_214896104()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21489613C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C640, &qword_21499B520);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2148961F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214896230()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2148962A8()
{
  v1 = sub_21498E1B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2148963E8()
{
  v1 = sub_21498E6C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2148964B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CA08, qword_21499CE20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_214896588(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CA08, qword_21499CE20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_214896650@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21498ED60();
  *a1 = result;
  return result;
}

uint64_t sub_2148966F0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214896738()
{
  swift_unknownObjectRelease();

  if (v0[8])
  {
  }

  if (v0[18])
  {
  }

  if (v0[28])
  {
  }

  if (v0[36])
  {
  }

  if (v0[44])
  {
  }

  return MEMORY[0x2821FE8E8](v0, 488, 7);
}

uint64_t sub_21489686C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

uint64_t sub_2148968B8(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 224);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_214896910()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214896960()
{
  swift_unknownObjectRelease();

  if (*(v0 + 104))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2148969FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214896A64(uint64_t a1)
{
  sub_21498F900();
}

void sub_214896ACC(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x736E6F69746361;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_214896B00()
{
  if (*v0)
  {
    return 0x736E6F69746361;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_214896B58()
{
  v1 = sub_21498E7C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_214896C30()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214896CC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A848, &qword_214993160);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_214896D40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A848, &qword_214993160);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_214896DBC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_214896DF8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214896E30()
{
  v1 = sub_21498EB00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_214896F04()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_214896F44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_214896FBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2148970B8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_214897104()
{
  v1 = *v0;

  return v1;
}

id _MALogSystem(uint64_t a1)
{
  if (_MALogSystem_onceToken[0] != -1)
  {
    _MALogSystem_cold_1();
  }

  v2 = _MALogSystem_log;

  return v2;
}

uint64_t sub_21489726C(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for iCloudMailAssistantProviderSwift();
  sub_214897CD8(&qword_27CA1A0C0, type metadata accessor for iCloudMailAssistantProviderSwift, &protocol conformance descriptor for iCloudMailAssistantProviderSwift);

  return sub_21498EB80();
}

__n128 sub_214897300@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  sub_214897F3C(v3, v4);
  v7 = sub_21498EFF0();
  sub_21498F4E0();
  sub_21498EC00();
  *&v9[38] = v12;
  *&v9[22] = v11;
  *&v9[6] = v10;
  *(a1 + 18) = *v9;
  *a1 = sub_214897F30;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  *(a1 + 17) = v7;
  *(a1 + 34) = *&v9[16];
  result = *&v9[32];
  *(a1 + 50) = *&v9[32];
  *(a1 + 64) = *(&v12 + 1);
  return result;
}

id sub_2148973F0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  type metadata accessor for iCloudMailAssistantProviderSwift();
  sub_214897CD8(&qword_27CA1A0C0, type metadata accessor for iCloudMailAssistantProviderSwift, &protocol conformance descriptor for iCloudMailAssistantProviderSwift);
  v1 = *(*sub_21498EB80() + 224);
  v2 = v0;
  v1(v0);

  return v2;
}

uint64_t sub_214897524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2148981A4();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_214897588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2148981A4();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2148975EC(uint64_t a1)
{
  sub_2148981A4();
  sub_21498EF90();
  __break(1u);
}

uint64_t sub_21489761C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x216058BC0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_214897670(uint64_t a1, uint64_t a2)
{
  v3 = sub_21498FB40();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_2148976C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21498FB50();
  *a1 = result;
  return result;
}

BOOL sub_214897718(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_214897778(uint64_t a1, id *a2)
{
  result = sub_21498F850();
  *a2 = 0;
  return result;
}

uint64_t sub_2148977F0(uint64_t a1, id *a2)
{
  v3 = sub_21498F860();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_214897870@<X0>(uint64_t *a1@<X8>)
{
  sub_21498F870();
  v2 = sub_21498F840();

  *a1 = v2;
  return result;
}

uint64_t sub_2148978B4()
{
  v0 = sub_21498F870();
  v1 = MEMORY[0x2160589F0](v0);

  return v1;
}

uint64_t sub_2148978F0(uint64_t a1)
{
  sub_21498F870();
  sub_21498F900();
}

uint64_t sub_214897944(uint64_t a1)
{
  sub_21498F870();
  sub_214990160();
  sub_21498F900();
  v1 = sub_214990190();

  return v1;
}

void *sub_2148979B8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2148979D4(void *a1, uint64_t *a2)
{
  v2 = sub_21498F870();
  v4 = v3;
  if (v2 == sub_21498F870() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_214990080();
  }

  return v7 & 1;
}

uint64_t sub_214897A5C(uint64_t a1)
{
  sub_214897CD8(&qword_27CA1A0B0, type metadata accessor for UIBackgroundTaskIdentifier, &unk_214991200);
  sub_214897CD8(&qword_27CA1A0B8, type metadata accessor for UIBackgroundTaskIdentifier, &unk_2149911A0);
  return sub_21498FEE0();
}

uint64_t sub_214897B18@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_21498F840();

  *a2 = v3;
  return result;
}

uint64_t sub_214897B60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21498F870();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_214897B8C(uint64_t a1)
{
  sub_214897CD8(&qword_27CA1A020, type metadata accessor for OpenExternalURLOptionsKey, &unk_214990FC4);
  sub_214897CD8(&qword_27CA1A028, type metadata accessor for OpenExternalURLOptionsKey, &unk_214990F18);

  return sub_21498FEE0();
}

uint64_t sub_214897CD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_214897D7C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_214897F44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_214897F8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_214897FE0()
{
  result = qword_27CA1A0C8;
  if (!qword_27CA1A0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A0D0, &qword_2149912B0);
    sub_2148980B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A0C8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2148980B4()
{
  result = qword_27CA1A0D8;
  if (!qword_27CA1A0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A0E0, &qword_2149912B8);
    sub_214898140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A0D8);
  }

  return result;
}

unint64_t sub_214898140()
{
  result = qword_27CA1A0E8;
  if (!qword_27CA1A0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A0E8);
  }

  return result;
}

unint64_t sub_2148981A4()
{
  result = qword_27CA1A0F0;
  if (!qword_27CA1A0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A0F0);
  }

  return result;
}

uint64_t sub_21489820C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x736E6F69746361;
  if (v2 != 1)
  {
    v4 = 7955819;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x636E657571657266;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000079;
  }

  v7 = 0xE700000000000000;
  v8 = 0x736E6F69746361;
  if (*a2 != 1)
  {
    v8 = 7955819;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x636E657571657266;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000079;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_214990080();
  }

  return v11 & 1;
}

uint64_t sub_214898300()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148983A0(uint64_t a1)
{
  sub_21498F900();
}

uint64_t sub_21489842C(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

unint64_t sub_2148984C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214899484(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2148984F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000079;
  v4 = 0xE700000000000000;
  v5 = 0x736E6F69746361;
  if (v2 != 1)
  {
    v5 = 7955819;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x636E657571657266;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_214898554()
{
  v1 = 0x736E6F69746361;
  if (*v0 != 1)
  {
    v1 = 7955819;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x636E657571657266;
  }
}

unint64_t sub_2148985AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214899484(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2148985E0(uint64_t a1)
{
  v2 = sub_21489960C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21489861C(uint64_t a1)
{
  v2 = sub_21489960C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214898658(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_21489867C, 0, 0);
}

uint64_t sub_21489867C()
{
  v1 = sub_21498E8F0();
  v3 = sub_2148EDBD4(v1, v2);

  if ((v3 & 1) != 0 && (v8 = *(v0[9] + 16), v0[10] = v8, v9 = *(v8 + 16), (v0[11] = v9) != 0))
  {
    v0[12] = 0;
    if (*(v8 + 16))
    {
      sub_2148994D0(v8 + 32, (v0 + 2));
      v10 = v0[5];
      v11 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
      v12 = swift_task_alloc();
      v0[13] = v12;
      *v12 = v0;
      v12[1] = sub_2148987EC;
      v5 = v0[8];
      v4 = v0[7];
      v6 = v10;
      v7 = v11;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2821820A8](v4, v5, v6, v7);
  }

  else
  {
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2148987EC()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  if (v0)
  {
    v3 = sub_214898A38;
  }

  else
  {
    v3 = sub_214898908;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_214898908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[12] + 1;
  if (v5 == v4[11])
  {
    v6 = v4[1];

    return v6();
  }

  else
  {
    v4[12] = v5;
    v8 = v4[10];
    if (v5 >= *(v8 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_2148994D0(v8 + 40 * v5 + 32, (v4 + 2));
      v9 = v4[5];
      v10 = v4[6];
      __swift_project_boxed_opaque_existential_1(v4 + 2, v9);
      v11 = swift_task_alloc();
      v4[13] = v11;
      *v11 = v4;
      v11[1] = sub_2148987EC;
      a2 = v4[8];
      a1 = v4[7];
      a3 = v9;
      a4 = v10;
    }

    return MEMORY[0x2821820A8](a1, a2, a3, a4);
  }
}

void *sub_214898A50(void *a1)
{
  v3 = sub_21498E900();
  v13 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A2A8, &qword_2149914B0);
  v14 = *(v6 - 8);
  v15 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21489960C();
  v9 = v16;
  sub_2149901B0();
  if (v9)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v14;
    v19 = 0;
    sub_214899660();
    sub_21498FFA0();
    v18 = 1;
    *(v1 + 16) = sub_21498FF50();
    v17 = 2;
    sub_2148996B4(&qword_27CA1A2C0, MEMORY[0x277D23340], MEMORY[0x277D23348]);
    v16 = v5;
    v12 = v15;
    sub_21498FFA0();
    (*(v10 + 8))(v8, v12);
    (*(v13 + 32))(v1 + OBJC_IVAR____TtC19iCloudMailAssistant19IntervalGuardAction_key, v16, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_214898D94()
{

  v1 = OBJC_IVAR____TtC19iCloudMailAssistant19IntervalGuardAction_key;
  v2 = sub_21498E900();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IntervalGuardAction(uint64_t a1)
{
  result = qword_27CA1A280;
  if (!qword_27CA1A280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214898E8C(uint64_t a1)
{
  result = sub_21498E900();
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

uint64_t sub_214898F38(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214899964;

  return MEMORY[0x2821820D8](a1, a2);
}

uint64_t sub_214898FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_214899964;

  return MEMORY[0x2821820C8](a1, a2, a3);
}

uint64_t sub_214899090(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214899138;

  return sub_214898658(a1, a2);
}

uint64_t sub_214899138()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_21489939C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_214898A50(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_214899484(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2148994D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_21489960C()
{
  result = qword_27CA1A2B0;
  if (!qword_27CA1A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A2B0);
  }

  return result;
}

unint64_t sub_214899660()
{
  result = qword_27CA1A2B8;
  if (!qword_27CA1A2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A2B8);
  }

  return result;
}

uint64_t sub_2148996B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for IntervalGuardAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IntervalGuardAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_214899860()
{
  result = qword_27CA1A2C8;
  if (!qword_27CA1A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A2C8);
  }

  return result;
}

unint64_t sub_2148998B8()
{
  result = qword_27CA1A2D0;
  if (!qword_27CA1A2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A2D0);
  }

  return result;
}

unint64_t sub_214899910()
{
  result = qword_27CA1A2D8;
  if (!qword_27CA1A2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A2D8);
  }

  return result;
}

uint64_t type metadata accessor for MASettingsRemoteView(uint64_t a1)
{
  result = qword_27CA1A2E0;
  if (!qword_27CA1A2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2148999DC(uint64_t a1)
{
  sub_214899AC8(319);
  if (v1 <= 0x3F)
  {
    sub_214899B2C();
    if (v2 <= 0x3F)
    {
      sub_214899B90(319, &qword_27CA1A308, 0x277CB8F30);
      if (v3 <= 0x3F)
      {
        sub_214899B90(319, &qword_27CA1A310, 0x277CB8F48);
        if (v4 <= 0x3F)
        {
          sub_21498E5D0();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_214899AC8(uint64_t a1)
{
  if (!qword_27CA1A2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A2F8, &unk_214999610);
    v1 = sub_21498F440();
    if (!v2)
    {
      atomic_store(v1, &qword_27CA1A2F0);
    }
  }
}

unint64_t sub_214899B2C()
{
  result = qword_27CA1A300;
  if (!qword_27CA1A300)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CA1A300);
  }

  return result;
}

uint64_t sub_214899B90(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_214899BF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_21489E320(a1);
  v15 = 0xD00000000000002ELL;
  v16 = 0x80000002149A0BD0;
  v13 = v7;
  v14 = v8;
  v13 = sub_21498F970();
  v14 = v9;
  sub_21498F920();
  sub_21498E1A0();
  v10 = sub_21498E1B0();
  v11 = *(v10 - 8);
  result = (*(v11 + 48))(v6, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v11 + 32))(a2, v6, v10);
  }

  return result;
}

uint64_t sub_214899D78@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21498E350();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21498E600();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = xmmword_214991610;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A2F8, &unk_214999610);
  sub_21498F400();
  v14 = v25;
  *a3 = v24[1];
  *(a3 + 16) = v14;
  if (qword_281190DA8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_281194E30);
  (*(v11 + 16))(v13, v15, v10);
  type metadata accessor for MASettingsRemoteView(0);
  sub_21498E5F0();
  sub_21498E5B0();
  (*(v11 + 8))(v13, v10);
  *(a3 + 64) = a1;
  *(a3 + 72) = a2;
  v16 = type metadata accessor for MARepositoryDefault();
  v17 = swift_allocObject();
  v18 = a1;
  v19 = a2;
  sub_21498E340();
  v20 = sub_21498E330();
  v22 = v21;
  result = (*(v7 + 8))(v9, v6);
  v17[2] = v20;
  v17[3] = v22;
  v17[4] = v19;
  v17[5] = v18;
  *(a3 + 48) = v16;
  *(a3 + 56) = &off_2826CB168;
  *(a3 + 24) = v17;
  return result;
}

uint64_t sub_21489A000@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v85 = type metadata accessor for MASettingsRemoteView(0);
  v81 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = v2;
  v91 = (v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  MEMORY[0x28223BE20](v3 - 8);
  v80 = v74 - v4;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A318, &qword_2149916C8);
  MEMORY[0x28223BE20](v93);
  v6 = v74 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
  MEMORY[0x28223BE20](v7 - 8);
  v90 = v74 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A328, &unk_2149933A0);
  MEMORY[0x28223BE20](v9 - 8);
  v89 = v74 - v10;
  v11 = sub_21498E510();
  v86 = *(v11 - 8);
  v87 = v11;
  MEMORY[0x28223BE20](v11);
  v84 = v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  MEMORY[0x28223BE20](v13 - 8);
  v88 = (v74 - v14);
  v79 = sub_21498E1B0();
  v15 = *(v79 - 1);
  MEMORY[0x28223BE20](v79);
  v17 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TracingContext(0);
  MEMORY[0x28223BE20](v18);
  v20 = v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MALiftUISource(0);
  v82 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = (v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v92 = type metadata accessor for MARemoteView(0);
  MEMORY[0x28223BE20](v92);
  v25 = (v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v1 + 16);
  v95 = *v1;
  *&v96 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A338, &qword_2149916E8);
  sub_21498F410();
  v27 = v99;
  if (v99 >> 60 == 15)
  {
    v28 = sub_21498FAE0();
    v29 = v80;
    (*(*(v28 - 8) + 56))(v80, 1, 1, v28);
    v30 = v91;
    sub_21489B888(v1, v91, type metadata accessor for MASettingsRemoteView);
    sub_21498FAB0();
    v31 = sub_21498FAA0();
    v32 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v33 = swift_allocObject();
    v34 = MEMORY[0x277D85700];
    *(v33 + 16) = v31;
    *(v33 + 24) = v34;
    sub_21489B54C(v30, v33 + v32);
    sub_214926978(0, 0, v29, &unk_2149916F8, v33);

    swift_storeEnumTagMultiPayload();
    sub_21489B6A0();
    return sub_21498EE90();
  }

  else
  {
    v83 = v6;
    v36 = v98;
    *v23 = v98;
    v23[1] = v27;
    v91 = v23;
    v37 = v20;
    v38 = v27;
    v78 = v21;
    swift_storeEnumTagMultiPayload();
    v39 = v1;
    v41 = *(v1 + 64);
    v40 = *(v1 + 72);
    v81 = v36;
    v80 = v38;
    v42 = v38;
    v43 = v37;
    sub_21489B6F8(v36, v42);
    v76 = v40;
    v44 = v41;
    sub_214899BF4(v44, v17);
    v45 = sub_21498E170();
    v47 = v46;
    (*(v15 + 8))(v17, v79);
    v48 = *(v18 + 20);
    v77 = v48;
    v49 = *(v85 + 32);
    v50 = sub_21498E5D0();
    v85 = v50;
    v51 = *(v50 - 8);
    (*(v51 + 16))(v43 + v48, v39 + v49, v50);
    v79 = *(v51 + 56);
    (v79)(v43 + v48, 0, 1, v50);
    *v43 = v45;
    v43[1] = v47;
    *v25 = v45;
    v25[1] = v47;
    v52 = v92;
    v53 = *(v92 + 20);
    v75 = type metadata accessor for MALiftUISource;
    sub_21489B888(v91, v25 + v53, type metadata accessor for MALiftUISource);
    *(v25 + v52[9]) = v76;
    *(v25 + v52[10]) = v44;
    v54 = (v25 + v52[7]);
    sub_21498E8C0();
    *v54 = 0;
    v54[1] = 0;
    swift_allocObject();
    v76 = v44;

    v55 = sub_21498E8B0();
    v74[1] = "Assistant19IntervalGuardAction";
    v56 = swift_allocObject();
    v58 = v86;
    v57 = v87;
    v59 = v84;
    (*(v86 + 104))(v84, *MEMORY[0x277D245A0], v87);
    LOBYTE(v54) = sub_21498E500();
    (*(v58 + 8))(v59, v57);
    *(v56 + 16) = v54 & 1;
    v60 = v88;
    *v88 = v56;
    v61 = *MEMORY[0x277D23258];
    v62 = sub_21498E7C0();
    v63 = *(v62 - 8);
    (*(v63 + 104))(v60, v61, v62);
    (*(v63 + 56))(v60, 0, 1, v62);
    sub_21498E8E0();
    v64 = v89;
    sub_21489B888(v91, v89, v75);
    (*(v82 + 56))(v64, 0, 1, v78);
    type metadata accessor for MARemoteViewModel(0);
    v95 = 0u;
    v96 = 0u;
    v97 = 0;
    swift_allocObject();

    v65 = sub_21490B164(v76, v64, v55, &v95);
    v66 = v25 + v52[6];
    *v66 = sub_21489B760;
    *(v66 + 1) = v65;
    v66[16] = 0;
    v67 = v77;
    sub_21489B768(v43 + v77, v25 + v52[11]);
    v68 = v90;
    sub_21489B768(v43 + v67, v90);
    type metadata accessor for MARemoteViewDelegate(0);
    v69 = swift_allocObject();
    v70 = OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID;
    (v79)(v69 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID, 1, 1, v85);
    v71 = qword_281190DA8;

    if (v71 != -1)
    {
      swift_once();
    }

    sub_21489B904(v43, type metadata accessor for TracingContext);
    sub_21489B904(v91, type metadata accessor for MALiftUISource);
    v72 = sub_21498E600();
    __swift_project_value_buffer(v72, qword_281194E30);
    *(v69 + 16) = "LoadRemoteView";
    *(v69 + 24) = 14;
    *(v69 + 32) = 2;
    swift_beginAccess();
    sub_21489B818(v68, v69 + v70);
    swift_endAccess();
    v73 = (v69 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_onRetry);
    *v73 = sub_21489B7D8;
    v73[1] = v65;
    *(v25 + v52[8]) = v69;
    sub_21489B888(v25, v83, type metadata accessor for MARemoteView);
    swift_storeEnumTagMultiPayload();
    sub_21489B6A0();
    sub_21498EE90();
    sub_21489B8F0(v81, v80);
    return sub_21489B904(v25, type metadata accessor for MARemoteView);
  }
}

uint64_t sub_21489AB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_21498E690();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = sub_21498E1B0();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = sub_21498E5D0();
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v8 = sub_21498E600();
  v4[22] = v8;
  v4[23] = *(v8 - 8);
  v4[24] = swift_task_alloc();
  sub_21498FAB0();
  v4[25] = sub_21498FAA0();
  v10 = sub_21498FA50();
  v4[26] = v10;
  v4[27] = v9;

  return MEMORY[0x2822009F8](sub_21489AD70, v10, v9);
}

uint64_t sub_21489AD70()
{
  if (qword_281190DA8 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[18];
  v6 = v0[19];
  v7 = v0[11];
  v8 = __swift_project_value_buffer(v3, qword_281194E30);
  (*(v2 + 16))(v1, v8, v3);
  v9 = type metadata accessor for MASettingsRemoteView(0);
  v28 = *(v6 + 16);
  v28(v4, v7 + *(v9 + 32), v5);
  v10 = sub_21498E5F0();
  v11 = sub_21498FC80();
  if (sub_21498FCE0())
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_21498E5C0();
    _os_signpost_emit_with_name_impl(&dword_21488E000, v10, v11, v13, "LoadRemoteView", "", v12, 2u);
    MEMORY[0x216059AC0](v12, -1, -1);
  }

  v14 = v0[23];
  v15 = v0[21];
  v26 = v0[22];
  v27 = v0[24];
  v17 = v0[19];
  v16 = v0[20];
  v18 = v0[17];
  v19 = v0[18];
  v20 = v0[11];

  v28(v16, v15, v19);
  sub_21498E650();
  swift_allocObject();
  sub_21498E640();

  (*(v17 + 8))(v15, v19);
  (*(v14 + 8))(v27, v26);
  sub_214899BF4(*(v20 + 64), v18);
  __swift_project_boxed_opaque_existential_1((v20 + 24), *(v20 + 48));
  v21 = sub_21498E130();
  v23 = v22;
  v0[28] = v22;
  v24 = swift_task_alloc();
  v0[29] = v24;
  *v24 = v0;
  v24[1] = sub_21489B004;

  return sub_214937744(v21, v23, 1, 0, 0xF000000000000000);
}

uint64_t sub_21489B004(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 240) = v2;

  if (v2)
  {
    v7 = v6[26];
    v8 = v6[27];
    v9 = sub_21489B288;
  }

  else
  {
    v6[31] = a2;
    v6[32] = a1;
    v7 = v6[26];
    v8 = v6[27];
    v9 = sub_21489B154;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21489B154()
{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v6 = v0[11];

  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v0[5] = *v6;
  v0[6] = v8;
  v0[7] = v9;
  v0[8] = v1;
  v0[9] = v2;
  sub_21489B6F8(v7, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A338, &qword_2149916E8);
  sub_21498F420();
  sub_21489B8F0(v0[5], v0[6]);

  (*(v4 + 8))(v3, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_21489B288()
{
  v25 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];

  (*(v2 + 8))(v1, v3);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v4 = v0[30];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  v8 = __swift_project_value_buffer(v7, qword_281194E18);
  (*(v6 + 16))(v5, v8, v7);
  v9 = v4;
  v10 = sub_21498E670();
  v11 = sub_21498FBB0();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[30];
  v15 = v0[13];
  v14 = v0[14];
  v16 = v0[12];
  if (v12)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315138;
    swift_getErrorValue();
    v19 = sub_214990100();
    v21 = sub_2149079F4(v19, v20, &v24);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_21488E000, v10, v11, "Unable to load entry point: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x216059AC0](v18, -1, -1);
    MEMORY[0x216059AC0](v17, -1, -1);

    (*(v15 + 8))(v14, v16);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_21489B4F8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_21489B54C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MASettingsRemoteView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21489B5B0(uint64_t a1)
{
  v4 = *(type metadata accessor for MASettingsRemoteView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_214899138;

  return sub_21489AB5C(a1, v6, v7, v1 + v5);
}

unint64_t sub_21489B6A0()
{
  result = qword_27CA1A340;
  if (!qword_27CA1A340)
  {
    type metadata accessor for MARemoteView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A340);
  }

  return result;
}

uint64_t sub_21489B6F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21489B70C(a1, a2);
  }

  return a1;
}

uint64_t sub_21489B70C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_21489B768(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21489B818(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21489B888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21489B8F0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21489B4F8(result, a2);
  }

  return result;
}

uint64_t sub_21489B904(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21489B964()
{
  result = qword_27CA1A350;
  if (!qword_27CA1A350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A358, &qword_214991708);
    sub_21489B6A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A350);
  }

  return result;
}

uint64_t sub_21489B9F0()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_21489BA38()
{
  v56 = sub_21498DFB0();
  v1 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v53 - v4;
  v6 = sub_21498E1B0();
  v60 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v59 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21498E690();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UnifiedRulesAPIRequest(0);
  v58 = v0;
  v69.receiver = v0;
  v69.super_class = v12;
  v13 = objc_msgSendSuper2(&v69, sel_urlString);
  v14 = sub_21498F870();
  v16 = v15;

  v70 = v14;
  v71 = v16;
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  v57 = v6;
  if (!v17)
  {
    v54 = v1;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v8, qword_281194E18);
    (*(v9 + 16))(v11, v18, v8);
    v19 = v58;
    v20 = sub_21498E670();
    v21 = sub_21498FBD0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v61 = v53;
      *v22 = 136315394;
      *(v22 + 4) = sub_2149079F4(0xD00000000000002FLL, 0x80000002149A0C40, &v61);
      *(v22 + 12) = 2080;

      v23 = sub_2149079F4(v14, v16, &v61);

      *(v22 + 14) = v23;
      _os_log_impl(&dword_21488E000, v20, v21, "Using fallback url for %s: %s", v22, 0x16u);
      v24 = v53;
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v24, -1, -1);
      MEMORY[0x216059AC0](v22, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    v61 = sub_21498BF80();
    v62 = v25;

    MEMORY[0x2160589C0](0xD000000000000024, 0x80000002149A0C70);

    v14 = v61;
    v26 = v62;
    swift_beginAccess();
    v70 = v14;
    v71 = v26;

    v16 = v26;
    v1 = v54;
    v6 = v57;
  }

  v27 = v60;
  v67 = v14;
  v68 = v16;
  v65 = 0x776574616763636DLL;
  v66 = 0xEA00000000007961;
  v63 = 6513517;
  v64 = 0xE300000000000000;
  sub_21489CA00();
  sub_21498FD20();
  v29 = v28;

  sub_21498E1A0();

  result = (*(v27 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v31 = v59;
    (*(v27 + 32))(v59, v5, v6);
    v32 = *&v58[qword_281191540];
    if (v32)
    {
      v33 = *(v32 + 16);
      v34 = MEMORY[0x277D84F90];
      if (v33)
      {
        v58 = v29;
        v54 = v1;
        v67 = MEMORY[0x277D84F90];
        sub_2148A9BB8(0, v33, 0);
        v35 = (v32 + 32);
        v34 = v67;
        v36 = 0x4E4F4D4D4F43;
        do
        {
          v38 = *v35++;
          v37 = v38;
          v39 = v38 == 1;
          if (v38 == 1)
          {
            v40 = 0x4B434F4C42;
          }

          else
          {
            v40 = 0x4954414D4F545541;
          }

          if (v39)
          {
            v41 = 0xE500000000000000;
          }

          else
          {
            v41 = 0xEA00000000004E4FLL;
          }

          if (v37)
          {
            v42 = v40;
          }

          else
          {
            v42 = v36;
          }

          if (v37)
          {
            v43 = v41;
          }

          else
          {
            v43 = 0xE600000000000000;
          }

          v67 = v34;
          v45 = *(v34 + 16);
          v44 = *(v34 + 24);
          if (v45 >= v44 >> 1)
          {
            v47 = v36;
            sub_2148A9BB8((v44 > 1), v45 + 1, 1);
            v36 = v47;
            v34 = v67;
          }

          *(v34 + 16) = v45 + 1;
          v46 = v34 + 16 * v45;
          *(v46 + 32) = v42;
          *(v46 + 40) = v43;
          --v33;
        }

        while (v33);
        v48 = v56;
        v1 = v54;
        v31 = v59;
        v27 = v60;
      }

      else
      {
        v48 = v56;
      }

      v67 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
      sub_21489CA54();
      sub_21498F810();

      v49 = v55;
      sub_21498DFA0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A380, &qword_214991820);
      v50 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_214991720;
      (*(v1 + 16))(v51 + v50, v49, v48);
      sub_21498E190();

      (*(v1 + 8))(v49, v48);
      v6 = v57;
    }

    v52 = sub_21498E130();
    (*(v27 + 8))(v31, v6);

    return v52;
  }

  return result;
}

id sub_21489C1E4(void *a1)
{
  v1 = a1;
  sub_21489BA38();

  v2 = sub_21498F840();

  return v2;
}

id sub_21489C26C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnifiedRulesAPIRequest(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for UnifiedRulesAPIRequest(uint64_t a1)
{
  result = qword_281191530;
  if (!qword_281191530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21489C35C()
{
  sub_214990160();
  MEMORY[0x216059200](0);
  return sub_214990190();
}

uint64_t sub_21489C3A0(uint64_t a1)
{
  sub_214990160();
  MEMORY[0x216059200](0);
  return sub_214990190();
}

uint64_t sub_21489C3E0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A370, &qword_214991818);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21489C88C();
  sub_2149901C0();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A368, &qword_214991810);
  sub_21489C934(&qword_281190D58, sub_21489C9AC, MEMORY[0x277D83948]);
  sub_214990040();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21489C588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C75526C69616DLL && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_214990080();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21489C618(uint64_t a1)
{
  v2 = sub_21489C88C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21489C654(uint64_t a1)
{
  v2 = sub_21489C88C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_21489C690@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_21489C6D8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_21489C6D8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A360, &qword_214991808);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21489C88C();
  sub_2149901B0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A368, &qword_214991810);
    sub_21489C934(&qword_281190D50, sub_21489C8E0, MEMORY[0x277D83978]);
    sub_21498FFA0();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

unint64_t sub_21489C88C()
{
  result = qword_281191378[0];
  if (!qword_281191378[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281191378);
  }

  return result;
}

unint64_t sub_21489C8E0()
{
  result = qword_281191C60;
  if (!qword_281191C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191C60);
  }

  return result;
}

uint64_t sub_21489C934(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A368, &qword_214991810);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21489C9AC()
{
  result = qword_281191C68;
  if (!qword_281191C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191C68);
  }

  return result;
}

unint64_t sub_21489CA00()
{
  result = qword_281190D78;
  if (!qword_281190D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190D78);
  }

  return result;
}

unint64_t sub_21489CA54()
{
  result = qword_281190CF0;
  if (!qword_281190CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A378, &qword_214993B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190CF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExecutionFrequency(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ExecutionFrequency(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_21489CB9C()
{
  result = qword_27CA1A388;
  if (!qword_27CA1A388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A388);
  }

  return result;
}

unint64_t sub_21489CBF4()
{
  result = qword_281191368;
  if (!qword_281191368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191368);
  }

  return result;
}

unint64_t sub_21489CC4C()
{
  result = qword_281191370;
  if (!qword_281191370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191370);
  }

  return result;
}

uint64_t sub_21489CCA0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E7265746E497369;
  }

  else
  {
    v3 = 7107189;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xEA00000000006C61;
  }

  if (*a2)
  {
    v5 = 0x6E7265746E497369;
  }

  else
  {
    v5 = 7107189;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006C61;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_214990080();
  }

  return v8 & 1;
}

uint64_t sub_21489CD44()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_21489CDC4(uint64_t a1)
{
  sub_21498F900();
}

uint64_t sub_21489CE30(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_21489CEAC@<X0>(char *a2@<X8>)
{
  v3 = sub_21498FEF0();

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

void sub_21489CF0C(uint64_t *a1@<X8>)
{
  v2 = 7107189;
  if (*v1)
  {
    v2 = 0x6E7265746E497369;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006C61;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21489CF48()
{
  if (*v0)
  {
    return 0x6E7265746E497369;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_21489CF80@<X0>(char *a3@<X8>)
{
  v4 = sub_21498FEF0();

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

uint64_t sub_21489CFE4(uint64_t a1)
{
  v2 = sub_21489E02C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21489D020(uint64_t a1)
{
  v2 = sub_21489E02C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t *sub_21489D05C(void *a1)
{
  v3 = v1;
  v5 = *v1;
  v19 = sub_21498E900();
  v17 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v18 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A3C8, &qword_214991A70);
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21489E02C();
  sub_2149901B0();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v5;
    v16 = v7;
    v10 = v17;
    v22 = 0;
    sub_21489E080(&qword_27CA1A2C0, MEMORY[0x277D23340], MEMORY[0x277D23348]);
    v12 = v18;
    v11 = v19;
    sub_21498FFA0();
    (*(v10 + 32))(v1 + OBJC_IVAR____TtC19iCloudMailAssistant14DeeplinkAction_urlReference, v12, v11);
    v21 = 1;
    v14 = sub_21498FF30();
    (*(v16 + 8))(v9, v20);
    *(v3 + OBJC_IVAR____TtC19iCloudMailAssistant14DeeplinkAction_isInternal) = (v14 == 2) | v14 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_21489D3B4()
{
  v1 = OBJC_IVAR____TtC19iCloudMailAssistant14DeeplinkAction_urlReference;
  v2 = sub_21498E900();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeeplinkAction(uint64_t a1)
{
  result = qword_27CA1A390;
  if (!qword_27CA1A390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21489D4A4(uint64_t a1)
{
  result = sub_21498E900();
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

uint64_t sub_21489D53C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_214899138;

  return sub_21489D7FC(a1);
}

uint64_t *sub_21489D714@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_21489D05C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_21489D7FC(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  v2[19] = swift_task_alloc();
  v3 = sub_21498E1B0();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v4 = sub_21498E690();
  v2[23] = v4;
  v2[24] = *(v4 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21489D968, 0, 0);
}

id sub_21489D968()
{
  v1 = sub_21498E8F0();
  if (*(v0[18] + OBJC_IVAR____TtC19iCloudMailAssistant14DeeplinkAction_isInternal) == 1)
  {
    v3 = v1;
    v4 = v2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v5 = v0[27];
    v6 = v0[23];
    v7 = v0[24];
    v8 = __swift_project_value_buffer(v6, qword_281194E18);
    (*(v7 + 16))(v5, v8, v6);
    v9 = sub_21498E670();
    v10 = sub_21498FBD0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21488E000, v9, v10, "Opening Mail Cleanup internal link...", v11, 2u);
      MEMORY[0x216059AC0](v11, -1, -1);
    }

    v12 = v0[27];
    v13 = v0[23];
    v14 = v0[24];

    (*(v14 + 8))(v12, v13);
    v15 = [objc_opt_self() defaultCenter];
    v16 = sub_21498F840();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A3B0, &qword_214991A60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_214991720;
    v0[15] = 0x6B6E696C70656564;
    v0[16] = 0xE800000000000000;
    v18 = MEMORY[0x277D837D0];
    sub_21498FDB0();
    *(inited + 96) = v18;
    *(inited + 72) = v3;
    *(inited + 80) = v4;
    sub_2148E09E0(inited);
    swift_setDeallocating();
    sub_21489DFCC(inited + 32, &qword_27CA1A3B8, &qword_214991A68);
    v19 = sub_21498F7D0();

    [v15 postNotificationName:v16 object:0 userInfo:v19];
  }

  else
  {
    v20 = v0[20];
    v21 = v0[21];
    v22 = v0[19];
    sub_21498E1A0();
    if ((*(v21 + 48))(v22, 1, v20) == 1)
    {
      v23 = v0[19];

      sub_21489DFCC(v23, &qword_27CA1A348, &qword_214991700);
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v25 = v0[24];
      v24 = v0[25];
      v26 = v0[23];
      v27 = __swift_project_value_buffer(v26, qword_281194E18);
      (*(v25 + 16))(v24, v27, v26);
      v28 = sub_21498E670();
      v29 = sub_21498FBB0();
      v30 = os_log_type_enabled(v28, v29);
      v32 = v0[24];
      v31 = v0[25];
      v33 = v0[23];
      if (v30)
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_21488E000, v28, v29, "Deeplink is not a URL", v34, 2u);
        MEMORY[0x216059AC0](v34, -1, -1);
      }

      (*(v32 + 8))(v31, v33);
    }

    else
    {
      (*(v0[21] + 32))(v0[22], v0[19], v0[20]);
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v35 = v0[26];
      v36 = v0[23];
      v37 = v0[24];
      v38 = __swift_project_value_buffer(v36, qword_281194E18);
      (*(v37 + 16))(v35, v38, v36);
      v39 = sub_21498E670();
      v40 = sub_21498FBD0();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_21488E000, v39, v40, "Opening universal link...", v41, 2u);
        MEMORY[0x216059AC0](v41, -1, -1);
      }

      v42 = v0[26];
      v43 = v0[23];
      v44 = v0[24];

      (*(v44 + 8))(v42, v43);
      result = [objc_opt_self() defaultWorkspace];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v46 = result;
      v48 = v0[21];
      v47 = v0[22];
      v49 = v0[20];

      v50 = sub_21498E140();
      sub_2148E0B1C(MEMORY[0x277D84F90]);
      v51 = sub_21498F7D0();

      [v46 openSensitiveURL:v50 withOptions:v51];

      (*(v48 + 8))(v47, v49);
    }
  }

  v52 = v0[1];

  return v52();
}

uint64_t sub_21489DFCC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_21489E02C()
{
  result = qword_27CA1A3D0;
  if (!qword_27CA1A3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A3D0);
  }

  return result;
}

uint64_t sub_21489E080(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for DeeplinkAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeeplinkAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21489E21C()
{
  result = qword_27CA1A3D8;
  if (!qword_27CA1A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A3D8);
  }

  return result;
}

unint64_t sub_21489E274()
{
  result = qword_27CA1A3E0;
  if (!qword_27CA1A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A3E0);
  }

  return result;
}

unint64_t sub_21489E2CC()
{
  result = qword_27CA1A3E8[0];
  if (!qword_27CA1A3E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CA1A3E8);
  }

  return result;
}

unint64_t sub_21489E320(void *a1)
{
  v2 = sub_21498E690();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 propertiesForDataclass_];
  if (v6)
  {
    v7 = v6;
    v8 = sub_21498F7E0();

    v17 = 0xD000000000000020;
    v18 = 0x80000002149A0D20;
    sub_21498FDB0();
    if (*(v8 + 16) && (v9 = sub_214908014(v19), (v10 & 1) != 0))
    {
      sub_21489E614(*(v8 + 56) + 32 * v9, v20);
      sub_21489E5C0(v19);

      if (swift_dynamicCast())
      {
        return v17;
      }
    }

    else
    {

      sub_21489E5C0(v19);
    }
  }

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v2, qword_281194E18);
  (*(v3 + 16))(v5, v12, v2);
  v13 = sub_21498E670();
  v14 = sub_21498FB90();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_21488E000, v13, v14, "[AccountBagKeys] getDomain - domain is empty", v15, 2u);
    MEMORY[0x216059AC0](v15, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_21489E614(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21489E6FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = qword_281190E48;
  swift_beginAccess();
  type metadata accessor for MSRequest.RequestBody(255, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58), v6);
  v7 = sub_21498FCF0();
  return (*(*(v7 - 8) + 16))(a1, &v1[v5], v7);
}

id sub_21489E7D0()
{
  v1 = *(v0 + qword_281190E68);
  if (v1)
  {
    v2 = *(v0 + qword_281190E68);
LABEL_5:
    v7 = v1;
    return v2;
  }

  v3 = objc_opt_self();
  v4 = [v3 defaultStore];
  v5 = *(v0 + qword_281190E68);
  *(v0 + qword_281190E68) = v4;

  result = [v3 defaultStore];
  if (result)
  {
    v2 = result;
    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_21489E86C()
{
  v1 = qword_281190E50;
  v2 = *(v0 + qword_281190E50);
  if (v2)
  {
    v3 = *(v0 + qword_281190E50);
  }

  else
  {
    sub_21489F128(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

unint64_t sub_21489E8D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21489E91C(unsigned __int8 a1)
{
  v1 = 5522759;
  v2 = 5526864;
  if (a1 != 2)
  {
    v2 = 0x4554454C4544;
  }

  if (a1)
  {
    v1 = 1414745936;
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

uint64_t sub_21489E97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21489E9F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_21489EA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21489EACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_21489EB3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21489E8D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_21489EB6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21489E91C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21489EB98()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*((*MEMORY[0x277D85000] & *v0) + 0xF0))(v3);
  v8 = v7;
  v10 = v9;
  v11 = [*(v0 + qword_281190E60) propertiesForDataclass_];
  if (v11)
  {
    v12 = v11;
    v13 = sub_21498F7E0();

    v30 = v8;
    v31 = v10;

    sub_21498FDB0();
    if (*(v13 + 16) && (v14 = sub_214908014(v32), (v15 & 1) != 0))
    {
      sub_21489E614(*(v13 + 56) + 32 * v14, v33);
      sub_21489E5C0(v32);

      if (swift_dynamicCast())
      {

        return v30;
      }
    }

    else
    {

      sub_21489E5C0(v32);
    }
  }

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v1, qword_281194E18);
  (*(v2 + 16))(v5, v17, v1);
  v18 = v6;

  v19 = sub_21498E670();
  v20 = sub_21498FBB0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v29 = v1;
    v22 = v2;
    v23 = v21;
    v24 = swift_slowAlloc();
    v32[0] = v24;
    *v23 = 136315394;

    v25 = sub_2149079F4(v8, v10, v32);

    *(v23 + 4) = v25;
    *(v23 + 12) = 2080;
    v26 = sub_21498F870();
    v28 = sub_2149079F4(v26, v27, v32);

    *(v23 + 14) = v28;
    _os_log_impl(&dword_21488E000, v19, v20, "Account bag has no value for key: %s in %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v24, -1, -1);
    MEMORY[0x216059AC0](v23, -1, -1);

    (*(v22 + 8))(v5, v29);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
  }

  return 0;
}

id sub_21489EF60(void *a1)
{
  v1 = a1;
  sub_21489EB98();

  v2 = sub_21498F840();

  return v2;
}

uint64_t sub_21489F030(uint64_t a1)
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_21489F024(ObjCClassMetadata, v2, v3, v4);

  return swift_getObjCClassFromMetadata();
}

void sub_21489F128(uint64_t a1)
{
  v2 = sub_21489E7D0();
  v3 = sub_21489E7D0();
  v4 = [v3 aida:*(a1 + qword_281190E60) accountForiCloudAccount:?];

  v5 = objc_allocWithZone(MEMORY[0x277CEC808]);
  v6 = sub_21498F840();
  v7 = [v5 initWithAccountStore:v2 grandSlamAccount:v4 appTokenID:v6];

  if (!v7)
  {
    __break(1u);
  }
}

id sub_21489F1F0(void *a1)
{
  v2 = sub_21498DEE0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  sub_21489F2E8(v5);

  v7 = sub_21498DE70();
  (*(v3 + 8))(v5, v2);

  return v7;
}

void sub_21489F2E8(uint64_t a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  v78 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = MEMORY[0x277D85000];
  v5 = *MEMORY[0x277D85000];
  v6 = sub_21498E690();
  v68 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v67 = &v66[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v66[-v10];
  v12 = *((v5 & v3) + 0x50);
  v13 = *((v5 & v3) + 0x58);
  v15 = type metadata accessor for MSRequest(0, v12, v13, v14);
  v70.receiver = v2;
  v70.super_class = v15;
  v16 = objc_msgSendSuper2(&v70, sel_urlRequest);
  if (!v16)
  {
    __break(1u);
  }

  v17 = v16;
  [v16 mutableCopy];

  sub_21498FD40();
  swift_unknownObjectRelease();
  sub_214899B90(0, &qword_27CA1A4D8, 0x277CCAB70);
  v18 = swift_dynamicCast();
  v19 = v74;
  if ((*((*v4 & *v2) + 0x100))(v18))
  {
    v20 = sub_21489E86C();
    [v20 setUseAltDSID_];

    if (([*(v2 + qword_281190E50) signURLRequest:v19 isUserInitiated:1] & 1) == 0)
    {
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v21 = __swift_project_value_buffer(v6, qword_281194E18);
      (*(v68 + 16))(v11, v21, v6);
      v22 = sub_21498E670();
      v23 = sub_21498FBB0();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_21488E000, v22, v23, "Unable to sign grandslam request", v24, 2u);
        v25 = v24;
        v4 = MEMORY[0x277D85000];
        MEMORY[0x216059AC0](v25, -1, -1);
      }

      (*(v68 + 8))(v11, v6);
    }

    v26 = [v19 aa:*(v2 + qword_281190E60) addBasicAuthorizationHeaderWithAccount:0 preferUsingPassword:?];
  }

  else
  {
    v26 = [v19 aa:*(v2 + qword_281190E60) addAuthTokenOrBasicAuthHeaderWithAccount:0 preferUsingPassword:?];
  }

  (*((*v4 & *v2) + 0xF8))(v26);
  v27 = sub_21498F840();

  [v19 setHTTPMethod_];

  sub_21489E6FC(&v74);
  if (v75[24] == 255)
  {
    v31 = v6;
    type metadata accessor for MSRequest.RequestBody(255, v12, v13, v28);
    v34 = sub_21498FCF0();
    (*(*(v34 - 8) + 8))(&v74, v34);
  }

  else
  {
    v76 = v74;
    v77[0] = *v75;
    *(v77 + 9) = *&v75[9];
    v29 = type metadata accessor for MSRequest.RequestBody(0, v12, v13, v28);
    v30 = *(v29 - 8);
    (*(v30 + 16))(&v74, &v76, v29);
    if (v75[24])
    {
      v31 = v6;
      v32 = v74;
      v33 = sub_21498E1C0();
      [v19 setHTTPBody_];
      sub_21489B4F8(v32, *(&v32 + 1));

      (*(v30 + 8))(&v76, v29);
    }

    else
    {
      sub_2148970B8(&v74, v71);
      v35 = v72;
      v36 = v73;
      __swift_project_boxed_opaque_existential_1(v71, v72);
      v31 = v6;
      v37 = sub_21489FF88(v35, v36);
      v39 = v38;
      v40 = sub_21498E1C0();
      sub_21489B4F8(v37, v39);
      [v19 setHTTPBody_];

      (*(v30 + 8))(&v76, v29);
      __swift_destroy_boxed_opaque_existential_1(v71);
    }

    v4 = MEMORY[0x277D85000];
  }

  v41 = sub_21498F840();
  v42 = sub_21498F840();
  [v19 setValue:v41 forHTTPHeaderField:v42];

  v43 = [objc_allocWithZone(MEMORY[0x277CEC7B8]) init];
  v44 = [v43 udid];

  v45 = sub_21498F840();
  [v19 setValue:v44 forHTTPHeaderField:v45];

  v46 = sub_21498F840();

  v47 = sub_21498F840();
  [v19 setValue:v46 forHTTPHeaderField:v47];

  if ((*((*v4 & *v2) + 0x108))())
  {
    v48 = [objc_allocWithZone(MEMORY[0x277CF0168]) init];
    *&v76 = 0;
    v49 = [v48 anisetteDataWithError_];
    if (v49)
    {
      v50 = v49;
      v51 = v76;
      v52 = [v50 machineID];
      v53 = sub_21498F840();
      [v19 setValue:v52 forHTTPHeaderField:v53];

      v54 = [v50 oneTimePassword];
      v55 = sub_21498F840();
      [v19 setValue:v54 forHTTPHeaderField:v55];

      *&v76 = [v50 routingInfo];
      sub_214990050();
      v56 = sub_21498F840();

      v57 = sub_21498F840();
      [v19 setValue:v56 forHTTPHeaderField:v57];
    }

    else
    {
      v58 = v76;
      v59 = sub_21498E100();

      swift_willThrow();
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v60 = __swift_project_value_buffer(v31, qword_281194E18);
      v61 = v68;
      v62 = v67;
      (*(v68 + 16))(v67, v60, v31);
      v63 = sub_21498E670();
      v64 = sub_21498FBB0();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_21488E000, v63, v64, "Can't get anisette data", v65, 2u);
        MEMORY[0x216059AC0](v65, -1, -1);
      }

      (*(v61 + 8))(v62, v31);
    }
  }

  sub_21498DE80();
}

uint64_t sub_21489FF88(uint64_t a1, uint64_t a2)
{
  sub_21498DF70();
  swift_allocObject();
  sub_21498DF60();
  v2 = sub_21498DF50();

  return v2;
}

uint64_t sub_2148A0088(char *a1)
{
  v2 = *a1;
  v3 = *MEMORY[0x277D85000];

  v4 = qword_281190E48;
  type metadata accessor for MSRequest.RequestBody(255, *((v3 & v2) + 0x50), *((v3 & v2) + 0x58), v5);
  v6 = sub_21498FCF0();
  (*(*(v6 - 8) + 8))(&a1[v4], v6);
}

uint64_t sub_2148A019C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for MSResult(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2148A0230@<X0>(uint64_t *a1@<X0>, id a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v94 = a3;
  v84 = sub_21498E1B0();
  v83 = *(v84 - 8);
  v8 = MEMORY[0x28223BE20](v84);
  v87 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v4;
  v95 = v4[10];
  v81 = *(v95 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21498E690();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v86 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v80 = &v80 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v82 = &v80 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v80 - v21;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v88 = v12;
  v23 = __swift_project_value_buffer(v13, qword_281194E18);
  v24 = *(v14 + 2);
  v90 = v23;
  v91 = v24;
  v92 = v14 + 16;
  (v24)(v22);
  v25 = sub_21498E670();
  v26 = sub_21498FBD0();
  v27 = os_log_type_enabled(v25, v26);
  v93 = a4;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v85 = v10;
    v30 = v29;
    v96 = v29;
    *v28 = 136315138;
    v31 = sub_2149901F0();
    v89 = a2;
    v33 = v13;
    v34 = sub_2149079F4(v31, v32, &v96);
    a2 = v89;

    *(v28 + 4) = v34;
    v13 = v33;
    _os_log_impl(&dword_21488E000, v25, v26, "Parsing response %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    v35 = v30;
    a4 = v93;
    v10 = v85;
    MEMORY[0x216059AC0](v35, -1, -1);
    MEMORY[0x216059AC0](v28, -1, -1);
  }

  v36 = *(v14 + 1);
  v36(v22, v13);
  if (!swift_conformsToProtocol2())
  {
    v85 = a1;
    sub_21498DF10();
    swift_allocObject();
    sub_21498DF00();
    v43 = v10[11];
    v44 = v88;
    v45 = a2;
    v46 = v94;
    sub_21498DEF0();
    v89 = 0;

    v74 = v95;
    v75 = (v93 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v81 + 4))(v93, v44, v74);
    *v75 = v45;
    v75[1] = v46;
    type metadata accessor for MSResult(0, v74, v43, v76);
    swift_storeEnumTagMultiPayload();
    v41 = v45;
    v42 = v46;
    return sub_21489B70C(v41, v42);
  }

  if ([a1 statusCode] - 200 <= 0x63)
  {
    v37 = v95;
    v38 = (a4 + *(swift_getTupleTypeMetadata2() + 48));
    swift_dynamicCast();
    v39 = v94;
    *v38 = a2;
    v38[1] = v39;
    type metadata accessor for MSResult(0, v37, v10[11], v40);
    swift_storeEnumTagMultiPayload();
    v41 = a2;
    v42 = v39;
    return sub_21489B70C(v41, v42);
  }

  v81 = v36;
  v88 = v14;
  v47 = v13;
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v49 = [objc_opt_self() bundleForClass_];
  v96 = 2777980912;
  v97 = 0xA400000000000000;
  MEMORY[0x2160589C0](0xD000000000000015, 0x80000002149A0E50);
  MEMORY[0x2160589C0](2777980912, 0xA400000000000000);
  v50 = sub_21498E0A0();
  v52 = v51;

  sub_2148A2800();
  v53 = swift_allocError();
  *v54 = v50;
  *(v54 + 8) = v52;
  *(v54 + 16) = 0;
  *(v54 + 24) = 1;
  *(v54 + 32) = 0;
  *(v54 + 40) = 1;
  v89 = v53;
  swift_willThrow();
  v55 = [a1 allHeaderFields];
  v56 = sub_21498F7E0();

  sub_2148A1314(v56);

  sub_21498DF10();
  swift_allocObject();
  sub_21498DF00();
  sub_2148A3F10();
  sub_21498DEF0();

  v58 = v96;
  v57 = v97;
  v59 = v82;
  v60 = v47;
  v91(v82, v90, v47);
  v61 = a1;

  v62 = sub_21498E670();
  v63 = sub_21498FBB0();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v85 = v10;
    v65 = a4;
    v66 = v64;
    v67 = swift_slowAlloc();
    v96 = v67;
    *v66 = 134218242;
    *(v66 + 4) = [v61 statusCode];

    *(v66 + 12) = 2080;

    v68 = sub_2149079F4(v58, v57, &v96);
    *&v94 = v58;
    v69 = v60;
    v70 = v68;

    *(v66 + 14) = v70;
    _os_log_impl(&dword_21488E000, v62, v63, "[%ld] %s", v66, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v67);
    MEMORY[0x216059AC0](v67, -1, -1);
    v71 = v66;
    a4 = v65;
    v10 = v85;
    MEMORY[0x216059AC0](v71, -1, -1);

    v72 = v59;
    v73 = v69;
    v58 = v94;
  }

  else
  {

    v72 = v59;
    v73 = v60;
  }

  v81(v72, v73);
  v78 = [v61 statusCode];

  *a4 = v58;
  *(a4 + 8) = v57;
  *(a4 + 16) = v78;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  type metadata accessor for MSResult(0, v95, v10[11], v79);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2148A1314(uint64_t a1)
{
  v35 = sub_21498E690();
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v33 = (&v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v9 = &qword_214992018;
  while (1)
  {
    v10 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v5)) | (v7 << 6);
    sub_2148A411C(*(a1 + 48) + 40 * v11, v43);
    sub_21489E614(*(a1 + 56) + 32 * v11, v44);
    sub_2148A411C(v43, &v36);
    if (swift_dynamicCast())
    {
      v40 = v39;
      sub_21489E614(v44, &v41);
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
    }

    v5 &= v5 - 1;
    sub_21489DFCC(v43, &qword_27CA1A4A8, &qword_214992010);
    if (*(&v40 + 1))
    {
      v36 = v40;
      v37 = v41;
      v38 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_2148A934C(0, v8[2] + 1, 1, v8);
      }

      v13 = v8[2];
      v12 = v8[3];
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        v32 = v13 + 1;
        v18 = sub_2148A934C((v12 > 1), v13 + 1, 1, v8);
        v14 = v32;
        v8 = v18;
      }

      v8[2] = v14;
      v15 = &v8[6 * v13];
      v16 = v36;
      v17 = v38;
      v15[3] = v37;
      v15[4] = v17;
      v15[2] = v16;
    }

    else
    {
      sub_21489DFCC(&v40, &qword_27CA1A4B0, &qword_214992018);
    }
  }

  while (1)
  {
    v7 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_27:
      swift_once();
      goto LABEL_22;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(a1 + 64 + 8 * v7);
    ++v10;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  if (v8[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4B8, &qword_214992020);
    v19 = sub_21498FEC0();
  }

  else
  {
    v19 = MEMORY[0x277D84F98];
  }

  a1 = v35;
  v6 = v34;
  v9 = v33;
  v43[0] = v19;

  sub_2148A2D3C(v20, 1, v43);

  sub_2148A30F8(v43[0]);

  if (qword_281190DA0 != -1)
  {
    goto LABEL_27;
  }

LABEL_22:
  v21 = __swift_project_value_buffer(a1, qword_281194E18);
  (*(v6 + 16))(v9, v21, a1);

  v22 = sub_21498E670();
  v23 = sub_21498FBB0();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v43[0] = v25;
    *v24 = 136380675;
    v26 = sub_21498F7F0();
    v28 = v27;

    v29 = sub_2149079F4(v26, v28, v43);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_21488E000, v22, v23, "Response headers: %{private}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x216059AC0](v25, -1, -1);
    MEMORY[0x216059AC0](v24, -1, -1);
  }

  else
  {
  }

  return (*(v6 + 8))(v9, a1);
}

uint64_t sub_2148A181C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = sub_21498E1D0();
  v11 = v10;

  sub_2148A378C(v7, v9, v11, v5);
  v13 = v12;
  sub_21489B4F8(v9, v11);

  return v13;
}

uint64_t sub_2148A18B0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = sub_21498E1D0();
  v9 = v8;

  sub_2148A395C(v5, v7, v9);
  v11 = v10;
  sub_21489B4F8(v7, v9);

  return v11;
}

uint64_t sub_2148A1930(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_21498E1D0();
  v12 = v11;

  v13 = sub_21498F870();
  v15 = v14;

  sub_2148A3B20(v7, v10, v12, v13, v15);
  v17 = v16;

  sub_21489B4F8(v10, v12);

  return v17;
}

uint64_t sub_2148A19EC(void *a1, void *a2)
{
  v2 = sub_21498F8E0();
  v4 = v3;
  if (v2 == sub_21498F8E0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_214990080();
  }

  return v7 & 1;
}

id sub_2148A1AF4(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x277D85000] & *v1) + 0x50), *((*MEMORY[0x277D85000] & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2148A1B6C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  v6 = type metadata accessor for MSResult(0, *((*MEMORY[0x277D85000] & *a1) + 0x50), *((*MEMORY[0x277D85000] & *a1) + 0x58), a4);
  v7 = *(*(v6 - 8) + 8);

  return v7(&a1[v5], v6);
}

uint64_t getEnumTagSinglePayload for UnsubscribeEmailParams.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UnsubscribeEmailParams.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2148A1DC4(uint64_t a1)
{
  result = swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    result = sub_2148A2138();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2148A1E50(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 41;
  if (((*(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x29)
  {
    v4 = ((*(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
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
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
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
    goto LABEL_25;
  }

LABEL_14:
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

void sub_2148A1F74(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v5 <= 0x29)
  {
    v5 = 41;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

ValueMetadata *sub_2148A2138()
{
  result = qword_281190FA8;
  if (!qword_281190FA8)
  {
    result = &type metadata for MSError;
    atomic_store(&type metadata for MSError, &qword_281190FA8);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2148A217C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_2148A21C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2148A2220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2148A2290(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2148A22CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_2148A2318(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_2148A2358()
{
  sub_214990160();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_2148A23CC(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_2148A2468@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_21498FEF0();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2148A24C0(uint64_t a1)
{
  v2 = sub_2148A3EBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148A24FC(uint64_t a1)
{
  v2 = sub_2148A3EBC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2148A2538@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_2148A3D2C(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_2148A257C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A480, &unk_214992000);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148A3EBC();
  sub_2149901C0();
  sub_214990000();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2148A26D4()
{
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  MEMORY[0x2160589C0](0xD000000000000015, 0x80000002149A0E50);
  MEMORY[0x2160589C0](2777980912, 0xA400000000000000);
  v2 = sub_21498E0A0();
  v4 = v3;

  qword_27CA30F98 = v2;
  xmmword_27CA30FA0 = v4;
  byte_27CA30FB0 = 1;
  qword_27CA30FB8 = 0;
  byte_27CA30FC0 = 1;
  return result;
}

unint64_t sub_2148A2800()
{
  result = qword_281190F98;
  if (!qword_281190F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190F98);
  }

  return result;
}

uint64_t sub_2148A2854()
{
  sub_214990160();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_2148A28C8(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_2148A2928@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_21498FEF0();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2148A29B4@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_21498FEF0();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2148A2A0C(uint64_t a1)
{
  v2 = sub_2148A4400();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148A2A48(uint64_t a1)
{
  v2 = sub_2148A4400();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2148A2A84@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4F8, &qword_214992210);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148A4400();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_21498FF60();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_2148A2C00(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A508, &qword_214992218);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148A4400();
  sub_2149901C0();
  sub_214990000();
  return (*(v3 + 8))(v5, v2);
}

void sub_2148A2D3C(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_2148A41A8(a1 + 32, &v44);
  v8 = v44;
  v7 = v45;
  v42 = v44;
  v43 = v45;
  sub_2148A4198(v46, v41);
  v9 = *a3;
  v10 = sub_214907F9C(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_214955F74(v15, a2 & 1);
    v10 = sub_214907F9C(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_2149900F0();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_2149857A4();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v47 = v18;
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1(v41);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  sub_2148A4198(v41, (v21[7] + 32 * v10));
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v14)
  {
    v21[2] = v24;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v25 = a1 + 80;
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      sub_2148A41A8(v25, &v44);
      v28 = v44;
      v27 = v45;
      v42 = v44;
      v43 = v45;
      sub_2148A4198(v46, v41);
      v29 = *a3;
      v30 = sub_214907F9C(v28, v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_23;
      }

      v35 = v31;
      if (v29[3] < v34)
      {
        sub_214955F74(v34, 1);
        v30 = sub_214907F9C(v28, v27);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v28;
      v38[1] = v27;
      sub_2148A4198(v41, (v37[7] + 32 * v30));
      v39 = v37[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v37[2] = v40;
      v25 += 48;
      if (v4 == v26)
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
  sub_21498FE00();
  MEMORY[0x2160589C0](0xD00000000000001BLL, 0x80000002149A0F60);
  sub_21498FE70();
  MEMORY[0x2160589C0](39, 0xE100000000000000);
  sub_21498FE80();
  __break(1u);
}

unint64_t *sub_2148A30F8(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_2148A3258(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_2148A3464(v8, v4, v2);
  result = MEMORY[0x216059AC0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_2148A3258(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a2;
  v24 = result;
  v25 = 0;
  v26 = a3;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v31 = v4;
    v11 = __clz(__rbit64(v9));
    v27 = (v9 - 1) & v9;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v26 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = v14;
    sub_21489E614(*(v26 + 56) + 32 * v14, v30);
    v28[0] = v17;
    v28[1] = v16;
    v19 = sub_21489E614(v30, &v29);
    MEMORY[0x28223BE20](v19);
    v22[2] = v28;
    swift_bridgeObjectRetain_n();
    v20 = v31;
    LOBYTE(v17) = sub_214923544(sub_2148A4178, v22, &unk_2826C4140);
    v4 = v20;
    swift_arrayDestroy();
    sub_21489DFCC(v28, &qword_27CA1A4C0, &qword_214992028);
    __swift_destroy_boxed_opaque_existential_1(v30);

    v9 = v27;
    if (v17)
    {
      *(v24 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        return sub_2148A34DC(v24, v23, v25, v26);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_2148A34DC(v24, v23, v25, v26);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v31 = v4;
      v11 = __clz(__rbit64(v13));
      v27 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_2148A3464(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_2148A3258(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_2148A34DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4B8, &qword_214992020);
  result = sub_21498FEC0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_21489E614(v17 + 32 * v16, v33);
    sub_2148A4198(v33, v32);
    sub_214990160();

    sub_21498F900();
    result = sub_214990190();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_2148A4198(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_2148A378C(uint64_t *a1, void *a2, uint64_t a3, int a4)
{
  v5 = v4;
  v22 = a4;
  swift_getObjectType();
  v9 = *((*MEMORY[0x277D85000] & *v4) + 0x50);
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x58);
  v12 = type metadata accessor for MSResult(0, *((*MEMORY[0x277D85000] & *v5) + 0x50), *((*MEMORY[0x277D85000] & *v5) + 0x58), v11);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21[-v14];
  sub_2148A0230(a1, a2, a3, &v21[-v14]);
  (*(v13 + 32))(&v5[*((*MEMORY[0x277D85000] & *v5) + 0x60)], v15, v12);
  v16 = a1;
  v17 = sub_21498E1C0();
  v19 = type metadata accessor for MSAPIResponse(0, v9, v10, v18);
  v23.receiver = v5;
  v23.super_class = v19;
  v20 = objc_msgSendSuper2(&v23, sel_initWithHTTPResponse_data_bodyIsPlist_, v16, v17, v22 & 1);

  if (!v20)
  {
    __break(1u);
  }
}

void sub_2148A395C(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x50);
  v9 = *((*MEMORY[0x277D85000] & *v3) + 0x58);
  v11 = type metadata accessor for MSResult(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), v10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  sub_2148A0230(a1, a2, a3, &v20 - v13);
  (*(v12 + 32))(&v4[*((*MEMORY[0x277D85000] & *v4) + 0x60)], v14, v11);
  v15 = a1;
  v16 = sub_21498E1C0();
  v18 = type metadata accessor for MSAPIResponse(0, v8, v9, v17);
  v20.receiver = v4;
  v20.super_class = v18;
  v19 = objc_msgSendSuper2(&v20, sel_initWithHTTPResponse_data_, v15, v16);

  if (!v19)
  {
    __break(1u);
  }
}

void sub_2148A3B20(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v23 = a4;
  v24 = a5;
  swift_getObjectType();
  v10 = *((*MEMORY[0x277D85000] & *v5) + 0x50);
  v11 = *((*MEMORY[0x277D85000] & *v5) + 0x58);
  v13 = type metadata accessor for MSResult(0, *((*MEMORY[0x277D85000] & *v6) + 0x50), *((*MEMORY[0x277D85000] & *v6) + 0x58), v12);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  sub_2148A0230(a1, a2, a3, &v23 - v15);
  (*(v14 + 32))(&v6[*((*MEMORY[0x277D85000] & *v6) + 0x60)], v16, v13);
  v17 = a1;
  v18 = sub_21498E1C0();
  v19 = sub_21498F840();
  v21 = type metadata accessor for MSAPIResponse(0, v10, v11, v20);
  v25.receiver = v6;
  v25.super_class = v21;
  v22 = objc_msgSendSuper2(&v25, sel_initWithHTTPResponse_data_mediaType_, v17, v18, v19, v23, v24);

  if (!v22)
  {
    __break(1u);
  }
}

uint64_t sub_2148A3D2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A470, &qword_214991FF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148A3EBC();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_21498FF60();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  return result;
}

unint64_t sub_2148A3EBC()
{
  result = qword_27CA1A478;
  if (!qword_27CA1A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A478);
  }

  return result;
}

unint64_t sub_2148A3F10()
{
  result = qword_281190FA0;
  if (!qword_281190FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190FA0);
  }

  return result;
}

unint64_t sub_2148A3F64()
{
  result = qword_281190CA0;
  if (!qword_281190CA0)
  {
    sub_214899B90(255, &qword_281190CA8, 0x277CCA9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190CA0);
  }

  return result;
}

unint64_t sub_2148A3FCC()
{
  result = qword_281190D70;
  if (!qword_281190D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190D70);
  }

  return result;
}

unint64_t sub_2148A4020()
{
  result = qword_27CA1A490;
  if (!qword_27CA1A490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A490);
  }

  return result;
}

unint64_t sub_2148A4074()
{
  result = qword_27CA1A498;
  if (!qword_27CA1A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A498);
  }

  return result;
}

unint64_t sub_2148A40C8()
{
  result = qword_27CA1A4A0;
  if (!qword_27CA1A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A4A0);
  }

  return result;
}

_OWORD *sub_2148A4198(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2148A41A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2148A4254(uint64_t a1, int a2)
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

uint64_t sub_2148A429C(uint64_t result, int a2, int a3)
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

unint64_t sub_2148A42FC()
{
  result = qword_27CA1A4E0;
  if (!qword_27CA1A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A4E0);
  }

  return result;
}

unint64_t sub_2148A4354()
{
  result = qword_27CA1A4E8;
  if (!qword_27CA1A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A4E8);
  }

  return result;
}

unint64_t sub_2148A43AC()
{
  result = qword_27CA1A4F0;
  if (!qword_27CA1A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A4F0);
  }

  return result;
}

unint64_t sub_2148A4400()
{
  result = qword_27CA1A500;
  if (!qword_27CA1A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A500);
  }

  return result;
}

unint64_t sub_2148A4468()
{
  result = qword_27CA1A510;
  if (!qword_27CA1A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A510);
  }

  return result;
}

unint64_t sub_2148A44C0()
{
  result = qword_27CA1A518;
  if (!qword_27CA1A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A518);
  }

  return result;
}

unint64_t sub_2148A4518()
{
  result = qword_27CA1A520;
  if (!qword_27CA1A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A520);
  }

  return result;
}

uint64_t sub_2148A457C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

unint64_t sub_2148A45C4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x736D657469;
    v6 = 0xD000000000000016;
    if (a1 != 2)
    {
      v6 = 0xD000000000000018;
    }

    if (a1)
    {
      v5 = 0x6C69616D65;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7365636375536E6FLL;
    v2 = 0x726F7272456E6FLL;
    if (a1 != 7)
    {
      v2 = 0x656C706D6F436E6FLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000016;
    if (a1 != 4)
    {
      v3 = 0xD00000000000001ALL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2148A46F8()
{
  v1 = *v0;
  sub_214990160();
  sub_2148DA734(v3, v1);
  return sub_214990190();
}

uint64_t sub_2148A4748(uint64_t a1)
{
  v2 = *v1;
  sub_214990160();
  sub_2148DA734(v4, v2);
  return sub_214990190();
}

unint64_t sub_2148A478C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2148AADF0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2148A47BC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2148A45C4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2148A4804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2148AADF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2148A4838(uint64_t a1)
{
  v2 = sub_2148AA984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148A4874(uint64_t a1)
{
  v2 = sub_2148AA984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t (**sub_2148A48B0(void *a1))(char *, uint64_t, uint64_t)
{
  v2 = v1;
  v84 = *v2;
  v80 = sub_21498E890();
  v77 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v81 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A578, &qword_2149924B8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v78 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v79 = &v72 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v72 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v72 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A580, &unk_2149924C0);
  v83 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v82 = &v72 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5D0, &unk_214992530);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v72 - v19;
  *(v2 + 16) = MEMORY[0x277D84FA0];
  *(v2 + 24) = 0;
  v85 = a1;
  v86 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148AA984();
  v21 = v87;
  sub_2149901B0();
  if (v21)
  {
    v87 = v21;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = v86;
    goto LABEL_4;
  }

  v22 = v14;
  v87 = v12;
  v76 = v18;
  LOBYTE(v88[0]) = 0;
  sub_2148AA9D8(&qword_27CA1A5E0, &qword_27CA1A580, &unk_2149924C0);
  v23 = v82;
  sub_21498FFA0();
  v24 = v15;
  v32 = v86;
  (*(v83 + 32))(v86 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_items, v23, v15);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A560, &qword_2149923D8);
  LOBYTE(v88[0]) = 3;
  sub_2148AA9D8(&qword_27CA1A5E8, &qword_27CA1A560, &qword_2149923D8);
  v82 = v34;
  sub_21498FF40();
  sub_2148AAA2C(v22, v32 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_delayMailtoUnsubscribeMs);
  LOBYTE(v88[0]) = 2;
  v35 = v87;
  sub_21498FF40();
  sub_2148AAA2C(v35, v32 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_delayPostUnsubscribeMs);
  LOBYTE(v88[0]) = 4;
  v36 = v79;
  sub_21498FF40();
  sub_2148AAA2C(v36, v32 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_delayUnsubscribeLinkMs);
  LOBYTE(v88[0]) = 5;
  v37 = v78;
  sub_21498FF40();
  sub_2148AAA2C(v37, v32 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_mailtoUnsubscribeTimeoutMs);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5F0, &qword_21499B770);
  LOBYTE(v89) = 6;
  v39 = sub_2148AAA9C();
  v40 = 0;
  sub_21498FF40();
  v75 = v39;
  v78 = v38;
  if (*&v88[0])
  {
    v41 = *&v88[0];
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  v42 = *(v41 + 16);
  v73 = v20;
  v74 = v17;
  if (v42)
  {
    v87 = 0;
    v72 = v24;
    v89 = MEMORY[0x277D84F90];
    sub_2148A9BD8(0, v42, 0);
    v43 = v89;
    v82 = *(v77 + 16);
    v44 = v41 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    v79 = *(v77 + 72);
    v45 = (v77 + 8);
    v47 = v80;
    v46 = v81;
    do
    {
      (v82)(v46, v44, v47);
      sub_21498E880();
      v46 = v81;
      (*v45)(v81, v47);
      v89 = v43;
      v49 = *(v43 + 16);
      v48 = *(v43 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_2148A9BD8((v48 > 1), v49 + 1, 1);
        v46 = v81;
        v43 = v89;
      }

      *(v43 + 16) = v49 + 1;
      sub_2148970B8(v88, v43 + 40 * v49 + 32);
      v47 = v80;
      v44 += v79;
      --v42;
    }

    while (v42);

    v32 = v86;
    v40 = v87;
    v17 = v74;
    v50 = v43;
    v24 = v72;
    v20 = v73;
  }

  else
  {

    v50 = MEMORY[0x277D84F90];
    v47 = v80;
  }

  *(v32 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_onSuccessActions) = v50;
  LOBYTE(v89) = 7;
  sub_21498FF40();
  if (v40)
  {
    v87 = v40;
    v15 = v24;
    (*(v76 + 8))(v20, v17);
    v31 = 0;
    v25 = 1;
    v26 = 1;
    v27 = 1;
    v28 = 1;
    v29 = 1;
    v30 = 1;
    goto LABEL_4;
  }

  if (*&v88[0])
  {
    v51 = *&v88[0];
  }

  else
  {
    v51 = MEMORY[0x277D84F90];
  }

  v52 = *(v51 + 16);
  if (v52)
  {
    v87 = 0;
    v72 = v24;
    v89 = MEMORY[0x277D84F90];
    sub_2148A9BD8(0, v52, 0);
    v53 = v89;
    v82 = *(v77 + 16);
    v54 = v51 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    v79 = *(v77 + 72);
    v55 = (v77 + 8);
    v56 = v81;
    do
    {
      (v82)(v56, v54, v47);
      sub_21498E880();
      v56 = v81;
      (*v55)(v81, v47);
      v89 = v53;
      v58 = *(v53 + 16);
      v57 = *(v53 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_2148A9BD8((v57 > 1), v58 + 1, 1);
        v56 = v81;
        v53 = v89;
      }

      *(v53 + 16) = v58 + 1;
      sub_2148970B8(v88, v53 + 40 * v58 + 32);
      v47 = v80;
      v54 += v79;
      --v52;
    }

    while (v52);
    v59 = v53;

    v24 = v72;
    v20 = v73;
    v32 = v86;
    v40 = v87;
    v17 = v74;
  }

  else
  {

    v59 = MEMORY[0x277D84F90];
  }

  *(v32 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_onErrorActions) = v59;
  LOBYTE(v89) = 8;
  sub_21498FF40();
  v87 = v40;
  if (v40)
  {
    v15 = v24;
    (*(v76 + 8))(v20, v17);
    v25 = 1;
    v26 = 1;
    v27 = 1;
    v28 = 1;
    v29 = 1;
    v30 = 1;
    v31 = 1;
LABEL_4:

    if (v25)
    {
      (*(v83 + 8))(v32 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_items, v15);
      if (!v26)
      {
LABEL_6:
        if (!v27)
        {
          goto LABEL_7;
        }

        goto LABEL_16;
      }
    }

    else if (!v26)
    {
      goto LABEL_6;
    }

    sub_21489DFCC(v32 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_delayPostUnsubscribeMs, &qword_27CA1A578, &qword_2149924B8);
    if (!v27)
    {
LABEL_7:
      if (!v28)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_21489DFCC(v32 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_delayMailtoUnsubscribeMs, &qword_27CA1A578, &qword_2149924B8);
    if (!v28)
    {
LABEL_8:
      if (!v29)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

LABEL_17:
    sub_21489DFCC(v32 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_delayUnsubscribeLinkMs, &qword_27CA1A578, &qword_2149924B8);
    if (!v29)
    {
LABEL_9:
      if (!v30)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_21489DFCC(v32 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_mailtoUnsubscribeTimeoutMs, &qword_27CA1A578, &qword_2149924B8);
    if (!v30)
    {
LABEL_10:
      if (!v31)
      {
LABEL_12:
        swift_deallocPartialClassInstance();
        __swift_destroy_boxed_opaque_existential_1(v85);
        return v32;
      }

LABEL_11:

      goto LABEL_12;
    }

LABEL_19:

    if (!v31)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (*&v88[0])
  {
    v60 = *&v88[0];
  }

  else
  {
    v60 = MEMORY[0x277D84F90];
  }

  v61 = *(v60 + 16);
  if (v61)
  {
    v89 = MEMORY[0x277D84F90];
    sub_2148A9BD8(0, v61, 0);
    v62 = v89;
    v64 = *(v77 + 16);
    v63 = v77 + 16;
    v83 = v60;
    v84 = v64;
    v65 = v60 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    v86 = *(v77 + 72);
    v66 = (v77 + 8);
    v67 = v81;
    do
    {
      v68 = v80;
      v69 = v63;
      v84(v67, v65, v80);
      sub_21498E880();
      v67 = v81;
      (*v66)(v81, v68);
      v89 = v62;
      v71 = *(v62 + 16);
      v70 = *(v62 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_2148A9BD8((v70 > 1), v71 + 1, 1);
        v67 = v81;
        v62 = v89;
      }

      *(v62 + 16) = v71 + 1;
      sub_2148970B8(v88, v62 + 40 * v71 + 32);
      v65 += v86;
      --v61;
      v63 = v69;
    }

    while (v61);
    (*(v76 + 8))(v73, v74);
  }

  else
  {

    (*(v76 + 8))(v73, v74);
    v62 = MEMORY[0x277D84F90];
  }

  *(v32 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_onCompletionActions) = v62;
  __swift_destroy_boxed_opaque_existential_1(v85);
  return v32;
}

uint64_t sub_2148A5614@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v28 = *(v4 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_onErrorActions);

  sub_2148A8A04(v7);

  sub_2148A8A04(v8);
  v9 = v28;
  result = sub_2148994D0(a1, &v22);
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v9 + 32;
    while (v12 < *(v9 + 16))
    {
      sub_2148994D0(v13, v21);
      __swift_project_boxed_opaque_existential_1(v21, v21[3]);
      sub_21498E7E0();
      if (v5)
      {
        __swift_destroy_boxed_opaque_existential_1(&v22);

        v18 = v21;
        return __swift_destroy_boxed_opaque_existential_1(v18);
      }

      ++v12;
      __swift_destroy_boxed_opaque_existential_1(&v22);
      __swift_destroy_boxed_opaque_existential_1(v21);
      result = sub_2148970B8(&v20, &v22);
      v13 += 40;
      if (v11 == v12)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    sub_2148970B8(&v22, v25);
    v14 = v26;
    v15 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    swift_getKeyPath();
    v16 = type metadata accessor for MARemoteViewModel(255);
    v17 = sub_2148AAB50(&qword_27CA1A5B0, type metadata accessor for MARemoteViewModel, &unk_214999798);
    *&v22 = v14;
    *(&v22 + 1) = v16;
    v23 = v15;
    v24 = v17;
    a4[3] = swift_getOpaqueTypeMetadata2();
    *&v22 = v14;
    *(&v22 + 1) = v16;
    v23 = v15;
    v24 = v17;
    a4[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(a4);

    sub_21498F1C0();

    v18 = v25;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  return result;
}

void *sub_2148A58AC@<X0>(void *a1@<X8>)
{
  sub_2148AA930();
  result = sub_21498EDD0();
  *a1 = v3;
  return result;
}

uint64_t sub_2148A58FC(uint64_t *a1)
{
  sub_2148AA930();

  return sub_21498EDE0();
}

uint64_t sub_2148A595C(uint64_t a1, uint64_t a2)
{
  v3[60] = a2;
  v3[61] = v2;
  v3[59] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  v3[62] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  v3[63] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A578, &qword_2149924B8);
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v4 = sub_21498E7C0();
  v3[68] = v4;
  v3[69] = *(v4 - 8);
  v3[70] = swift_task_alloc();
  v5 = sub_21498E690();
  v3[71] = v5;
  v3[72] = *(v5 - 8);
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2148A5B78, 0, 0);
}

uint64_t sub_2148A5B78()
{
  v98 = v0;
  if (qword_281190DA0 != -1)
  {
LABEL_75:
    swift_once();
  }

  v1 = *(v0 + 616);
  v2 = *(v0 + 576);
  v3 = __swift_project_value_buffer(*(v0 + 568), qword_281194E18);
  *(v0 + 624) = v3;
  v4 = *(v2 + 16);
  *(v0 + 632) = v4;
  *(v0 + 640) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v89 = v3;
  v4(v1);
  v5 = sub_21498E670();
  v6 = sub_21498FBA0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "[MAUnsubscribeAction] performAction", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v8 = *(v0 + 616);
  v9 = *(v0 + 576);
  v10 = *(v0 + 568);

  v11 = *(v9 + 8);
  *(v0 + 648) = v11;
  v11(v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A580, &unk_2149924C0);
  sub_2148A8ED0();
  sub_21498E750();
  v87 = v11;
  v88 = v4;
  v13 = *(v0 + 416);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = *(v0 + 552);
    v17 = *(v15 + 16);
    v16 = v15 + 16;
    v90 = v17;
    v18 = v13 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v19 = *(v16 + 56);
    v20 = MEMORY[0x277D84F90];
    do
    {
      v21 = *(v0 + 560);
      v90(v21, v18, *(v0 + 544));
      sub_2148AAE40(v21, v91);
      (*(v16 - 8))(*(v0 + 560), *(v0 + 544));
      v95 = v91[2];
      v96 = v91[3];
      v97 = v92;
      v93 = v91[0];
      v94 = v91[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_2148A91D4(0, *(v20 + 2) + 1, 1, v20);
      }

      v23 = *(v20 + 2);
      v22 = *(v20 + 3);
      if (v23 >= v22 >> 1)
      {
        v20 = sub_2148A91D4((v22 > 1), v23 + 1, 1, v20);
      }

      *(v20 + 2) = v23 + 1;
      v24 = &v20[72 * v23];
      *(v24 + 2) = v93;
      v25 = v94;
      v26 = v95;
      v27 = v96;
      *(v24 + 12) = v97;
      *(v24 + 4) = v26;
      *(v24 + 5) = v27;
      *(v24 + 3) = v25;
      v18 += v19;
      --v14;
    }

    while (v14);

    v28 = *(v20 + 2);
    if (v28)
    {
      goto LABEL_17;
    }

LABEL_30:
    v30 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v20 = MEMORY[0x277D84F90];
  v28 = *(MEMORY[0x277D84F90] + 16);
  if (!v28)
  {
    goto LABEL_30;
  }

LABEL_17:
  v29 = 0;
  v30 = MEMORY[0x277D84F90];
  while (2)
  {
    v31 = &v20[72 * v29 + 32];
    v32 = v29;
    while (1)
    {
      if (v32 >= *(v20 + 2))
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v33 = *(v31 + 16);
      v34 = *(v31 + 32);
      v35 = *(v31 + 48);
      *(v0 + 80) = *(v31 + 64);
      *(v0 + 48) = v34;
      *(v0 + 64) = v35;
      *(v0 + 32) = v33;
      *(v0 + 16) = *v31;
      v29 = v32 + 1;
      if (*(v0 + 40))
      {
        break;
      }

      v31 += 72;
      ++v32;
      if (v28 == v29)
      {
        goto LABEL_31;
      }
    }

    sub_2148A8F4C(v0 + 16, v0 + 88);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v93 = v30;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2148A9B98(0, *(v30 + 16) + 1, 1);
      v30 = v93;
    }

    v38 = *(v30 + 16);
    v37 = *(v30 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      sub_2148A9B98((v37 > 1), v38 + 1, 1);
      v39 = v38 + 1;
      v30 = v93;
    }

    *(v30 + 16) = v39;
    v40 = v30 + 72 * v38;
    *(v40 + 32) = *(v0 + 16);
    v41 = *(v0 + 32);
    v42 = *(v0 + 48);
    v43 = *(v0 + 64);
    *(v40 + 96) = *(v0 + 80);
    *(v40 + 64) = v42;
    *(v40 + 80) = v43;
    *(v40 + 48) = v41;
    if (v28 - 1 != v32)
    {
      continue;
    }

    break;
  }

LABEL_31:
  *(v0 + 656) = v30;
  v44 = *(v0 + 536);
  v45 = *(v0 + 488);

  sub_2148AA824(v45 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_delayUnsubscribeLinkMs, v44, &qword_27CA1A578, &qword_2149924B8);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A560, &qword_2149923D8);
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);
  if (v48(v44, 1, v46) == 1)
  {
    sub_21489DFCC(*(v0 + 536), &qword_27CA1A578, &qword_2149924B8);
    v49 = 0;
  }

  else
  {
    sub_21498E750();
    result = (*(v47 + 8))(*(v0 + 536), v46);
    v49 = *(v0 + 424);
    if (v49 < 0)
    {
      __break(1u);
      goto LABEL_77;
    }
  }

  *(v0 + 664) = v49;
  v50 = *(v0 + 528);
  sub_2148AA824(*(v0 + 488) + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_delayPostUnsubscribeMs, v50, &qword_27CA1A578, &qword_2149924B8);
  if (v48(v50, 1, v46) == 1)
  {
    sub_21489DFCC(*(v0 + 528), &qword_27CA1A578, &qword_2149924B8);
    v51 = 0;
    goto LABEL_37;
  }

  sub_21498E750();
  result = (*(v47 + 8))(*(v0 + 528), v46);
  v51 = *(v0 + 432);
  if (v51 < 0)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

LABEL_37:
  *(v0 + 672) = v51;
  v52 = *(v0 + 520);
  sub_2148AA824(*(v0 + 488) + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_delayMailtoUnsubscribeMs, v52, &qword_27CA1A578, &qword_2149924B8);
  if (v48(v52, 1, v46) == 1)
  {
    sub_21489DFCC(*(v0 + 520), &qword_27CA1A578, &qword_2149924B8);
    v53 = 0;
    goto LABEL_40;
  }

  sub_21498E750();
  result = (*(v47 + 8))(*(v0 + 520), v46);
  v53 = *(v0 + 440);
  if (v53 < 0)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

LABEL_40:
  *(v0 + 680) = v53;
  v54 = *(v0 + 512);
  sub_2148AA824(*(v0 + 488) + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_mailtoUnsubscribeTimeoutMs, v54, &qword_27CA1A578, &qword_2149924B8);
  if (v48(v54, 1, v46) == 1)
  {
    sub_21489DFCC(*(v0 + 512), &qword_27CA1A578, &qword_2149924B8);
    v55 = v89;
    v57 = v87;
    v56 = v88;
    v58 = 5000;
    goto LABEL_43;
  }

  sub_21498E750();
  v55 = v89;
  v57 = v87;
  v56 = v88;
  result = (*(v47 + 8))(*(v0 + 512), v46);
  v58 = *(v0 + 448);
  if (v58 < 0)
  {
LABEL_79:
    __break(1u);
    return result;
  }

LABEL_43:
  *(v0 + 688) = v58;
  v59 = *(*(v0 + 488) + 24);
  if (v59)
  {
    sub_2148994D0(v59 + OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel_repository, v0 + 296);
    sub_2148970B8((v0 + 296), v0 + 256);
    v60 = *(v30 + 16);
    if (v60)
    {
      v61 = 0;
      v62 = v30 + 48;
      v63 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v61 >= *(v30 + 16))
        {
          goto LABEL_70;
        }

        v64 = *v62;
        v65 = *(*v62 + 16);
        v66 = *(v63 + 2);
        v67 = v66 + v65;
        if (__OFADD__(v66, v65))
        {
          goto LABEL_71;
        }

        v68 = swift_isUniquelyReferenced_nonNull_native();
        if (v68 && v67 <= *(v63 + 3) >> 1)
        {
          if (!*(v64 + 16))
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v66 <= v67)
          {
            v69 = v66 + v65;
          }

          else
          {
            v69 = v66;
          }

          v63 = sub_2148A90C8(v68, v69, 1, v63);
          if (!*(v64 + 16))
          {
LABEL_46:

            if (v65)
            {
              goto LABEL_72;
            }

            goto LABEL_47;
          }
        }

        if ((*(v63 + 3) >> 1) - *(v63 + 2) < v65)
        {
          goto LABEL_73;
        }

        swift_arrayInitWithCopy();

        if (v65)
        {
          v70 = *(v63 + 2);
          v71 = __OFADD__(v70, v65);
          v72 = v70 + v65;
          if (v71)
          {
            goto LABEL_74;
          }

          *(v63 + 2) = v72;
        }

LABEL_47:
        ++v61;
        v62 += 72;
        if (v60 == v61)
        {
          goto LABEL_66;
        }
      }
    }

    v63 = MEMORY[0x277D84F90];
LABEL_66:
    *(v0 + 696) = v63;
    v81 = sub_2148AA3C0(*(v0 + 472), v30);
    v83 = v82;
    v85 = v84;
    *(v0 + 704) = v82;
    *(v0 + 712) = v84;
    __swift_project_boxed_opaque_existential_1((v0 + 256), *(v0 + 280));

    v86 = swift_task_alloc();
    *(v0 + 720) = v86;
    *v86 = v0;
    v86[1] = sub_2148A684C;

    return sub_214936B2C(v63, v81, v83, v85);
  }

  else
  {
    v73 = *(v0 + 600);
    v74 = *(v0 + 568);

    v56(v73, v55, v74);
    v75 = sub_21498E670();
    v76 = sub_21498FBB0();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_21488E000, v75, v76, "No repository found", v77, 2u);
      MEMORY[0x216059AC0](v77, -1, -1);
    }

    v78 = *(v0 + 600);
    v79 = *(v0 + 568);

    v57(v78, v79);
    sub_21498FA20();
    sub_21498FA20();

    v80 = *(v0 + 8);

    return v80();
  }
}

uint64_t sub_2148A684C()
{
  *(*v1 + 728) = v0;

  if (v0)
  {

    v2 = sub_2148A6B38;
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v2 = sub_2148A69AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2148A69AC()
{
  (*(v0 + 632))(*(v0 + 608), *(v0 + 624), *(v0 + 568));
  v1 = sub_21498E670();
  v2 = sub_21498FBD0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21488E000, v1, v2, "MAUnsubscribeAction: Accepted", v3, 2u);
    MEMORY[0x216059AC0](v3, -1, -1);
  }

  v4 = *(v0 + 648);
  v5 = *(v0 + 608);
  v6 = *(v0 + 568);

  v4(v5, v6);
  v7 = swift_allocObject();
  *(v0 + 736) = v7;
  *(v7 + 16) = *MEMORY[0x277D767B0];
  *(v0 + 744) = objc_opt_self();
  sub_21498FAB0();
  *(v0 + 752) = sub_21498FAA0();
  v9 = sub_21498FA50();

  return MEMORY[0x2822009F8](sub_2148A7130, v9, v8);
}

uint64_t sub_2148A6B38()
{
  v55 = v0;
  v1 = *(v0 + 728);

  *(v0 + 456) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 632);
    v4 = *(v0 + 624);
    v5 = *(v0 + 592);
    v6 = *(v0 + 568);

    v8 = *(v0 + 208);
    v7 = *(v0 + 216);
    v3(v5, v4, v6);

    v9 = sub_21498E670();
    v10 = sub_21498FBB0();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 648);
    v13 = *(v0 + 592);
    v14 = *(v0 + 568);
    if (v11)
    {
      v52 = *(v0 + 592);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v54 = v16;
      *v15 = 136315138;

      v51 = v12;
      v17 = v8;
      v18 = sub_2149079F4(v8, v7, &v54);

      *(v15 + 4) = v18;
      v8 = v17;
      _os_log_impl(&dword_21488E000, v9, v10, "MAUnsubscribeAction: MSError %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x216059AC0](v16, -1, -1);
      MEMORY[0x216059AC0](v15, -1, -1);

      v51(v52, v14);
    }

    else
    {

      v12(v13, v14);
    }

    v35 = *(v0 + 552);
    v36 = *(v0 + 544);
    v37 = *(v0 + 496);
    v38 = swift_allocObject();
    *(v38 + 16) = v8;
    *(v38 + 24) = v7;
    *v37 = v38;
    (*(v35 + 104))(v37, *MEMORY[0x277D232A0], v36);
    (*(v35 + 56))(v37, 0, 1, v36);
    sub_21498E8E0();
    sub_21498FA20();
    sub_21498FA20();
    v39 = *(v0 + 456);
  }

  else
  {
    v19 = *(v0 + 728);
    v20 = *(v0 + 632);
    v21 = *(v0 + 624);
    v22 = *(v0 + 584);
    v23 = *(v0 + 568);

    *(v0 + 400) = 0;
    *(v0 + 408) = 0xE000000000000000;
    *(v0 + 464) = v19;
    sub_21498FE70();
    v25 = *(v0 + 400);
    v24 = *(v0 + 408);
    v20(v22, v21, v23);

    v26 = sub_21498E670();
    v27 = sub_21498FBB0();

    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 648);
    v30 = *(v0 + 584);
    v31 = *(v0 + 568);
    if (v28)
    {
      v53 = *(v0 + 648);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v54 = v33;
      *v32 = 136315138;
      v34 = sub_2149079F4(v25, v24, &v54);

      *(v32 + 4) = v34;
      _os_log_impl(&dword_21488E000, v26, v27, "MAUnsubscribeAction: Unknown Error %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x216059AC0](v33, -1, -1);
      MEMORY[0x216059AC0](v32, -1, -1);

      v53(v30, v31);
    }

    else
    {

      v29(v30, v31);
    }

    v40 = *(v0 + 728);
    sub_21498FA20();
    sub_21498FA20();
    v39 = v40;
  }

  (*(v0 + 632))(*(v0 + 608), *(v0 + 624), *(v0 + 568));
  v41 = sub_21498E670();
  v42 = sub_21498FBD0();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_21488E000, v41, v42, "MAUnsubscribeAction: Accepted", v43, 2u);
    MEMORY[0x216059AC0](v43, -1, -1);
  }

  v44 = *(v0 + 648);
  v45 = *(v0 + 608);
  v46 = *(v0 + 568);

  v44(v45, v46);
  v47 = swift_allocObject();
  *(v0 + 736) = v47;
  *(v47 + 16) = *MEMORY[0x277D767B0];
  *(v0 + 744) = objc_opt_self();
  sub_21498FAB0();
  *(v0 + 752) = sub_21498FAA0();
  v49 = sub_21498FA50();

  return MEMORY[0x2822009F8](sub_2148A7130, v49, v48);
}

uint64_t sub_2148A7130()
{
  v1 = *(v0 + 744);

  *(v0 + 760) = [v1 sharedApplication];

  return MEMORY[0x2822009F8](sub_2148A71B8, 0, 0);
}

uint64_t sub_2148A71B8()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 736);
  v13 = *(v0 + 656);
  v3 = *(v0 + 504);
  v11 = *(v0 + 680);
  v12 = *(v0 + 664);
  v4 = sub_21498F840();
  *(v0 + 192) = sub_2148AA6B8;
  *(v0 + 200) = v2;
  *(v0 + 160) = MEMORY[0x277D85DD0];
  *(v0 + 168) = 1107296256;
  *(v0 + 176) = sub_2148A457C;
  *(v0 + 184) = &block_descriptor;
  v5 = _Block_copy((v0 + 160));

  v6 = [v1 beginBackgroundTaskWithName:v4 expirationHandler:v5];
  _Block_release(v5);

  swift_beginAccess();
  *(v2 + 16) = v6;
  v7 = sub_21498FAE0();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  sub_2148994D0(v0 + 256, v0 + 336);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v13;
  sub_2148970B8((v0 + 336), v8 + 40);
  *(v8 + 80) = v12;
  *(v8 + 96) = v11;
  *(v8 + 112) = v2;

  sub_214926978(0, 0, v3, &unk_2149924D8, v8);

  sub_21498FA20();
  sub_21498FA20();

  __swift_destroy_boxed_opaque_existential_1((v0 + 256));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2148A74C4(uint64_t a1)
{
  v2 = sub_21498E690();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_281194E18);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_21498E670();
  v8 = sub_21498FBD0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_21488E000, v7, v8, "MAUnsubscribeAction: Background Task Timeout (30s)", v9, 2u);
    MEMORY[0x216059AC0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  result = swift_beginAccess();
  v11 = *MEMORY[0x277D767B0];
  if (*(a1 + 16) != *MEMORY[0x277D767B0])
  {
    v12 = [objc_opt_self() sharedApplication];
    swift_beginAccess();
    [v12 endBackgroundTask_];

    result = swift_beginAccess();
    *(a1 + 16) = v11;
  }

  return result;
}

uint64_t sub_2148A76F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[49] = v12;
  v8[50] = v13;
  v8[47] = a7;
  v8[48] = a8;
  v8[45] = a5;
  v8[46] = a6;
  v8[44] = a4;
  v9 = sub_21498E690();
  v8[51] = v9;
  v8[52] = *(v9 - 8);
  v8[53] = swift_task_alloc();
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2148A77E0, 0, 0);
}

uint64_t sub_2148A77E0()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 440);
  v2 = *(v0 + 408);
  v3 = *(v0 + 416);
  v4 = __swift_project_value_buffer(v2, qword_281194E18);
  *(v0 + 448) = v4;
  v5 = *(v3 + 16);
  *(v0 + 456) = v5;
  *(v0 + 464) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_21498E670();
  v7 = sub_21498FBD0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21488E000, v6, v7, "MAUnsubscribeAction: Background Task Started", v8, 2u);
    MEMORY[0x216059AC0](v8, -1, -1);
  }

  v9 = *(v0 + 440);
  v10 = *(v0 + 408);
  v11 = *(v0 + 416);
  v12 = *(v0 + 352);

  v13 = *(v11 + 8);
  *(v0 + 472) = v13;
  v13(v9, v10);
  v14 = *(v12 + 16);
  *(v0 + 480) = v14;
  if (v14)
  {
    v16 = *(v0 + 352);
    v15 = *(v0 + 360);
    *(v0 + 488) = 0;
    v17 = *(v16 + 48);
    v18 = *(v16 + 64);
    v19 = *(v16 + 80);
    *(v0 + 152) = *(v16 + 96);
    *(v0 + 136) = v19;
    *(v0 + 120) = v18;
    *(v0 + 104) = v17;
    *(v0 + 88) = *(v16 + 32);
    v21 = *(v16 + 64);
    v20 = *(v16 + 80);
    v22 = *(v16 + 48);
    *(v0 + 80) = *(v16 + 96);
    *(v0 + 48) = v21;
    *(v0 + 64) = v20;
    *(v0 + 32) = v22;
    *(v0 + 16) = *(v16 + 32);
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v23 = *(v0 + 64);
    *(v0 + 192) = *(v0 + 48);
    *(v0 + 208) = v23;
    *(v0 + 224) = *(v0 + 80);
    v24 = *(v0 + 32);
    *(v0 + 160) = *(v0 + 16);
    *(v0 + 176) = v24;
    sub_2148A8F4C(v0 + 88, v0 + 232);
    v25 = swift_task_alloc();
    *(v0 + 496) = v25;
    *v25 = v0;
    v25[1] = sub_2148A7B4C;
    v26 = *(v0 + 384);
    v27 = *(v0 + 392);
    v28 = *(v0 + 368);
    v29 = *(v0 + 376);

    return sub_2149346F4(v0 + 160, 0, v28, v29, v26, v27);
  }

  else
  {
    (*(v0 + 456))(*(v0 + 432), *(v0 + 448), *(v0 + 408));
    v31 = sub_21498E670();
    v32 = sub_21498FBD0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_21488E000, v31, v32, "MAUnsubscribeAction: Background Task Completed", v33, 2u);
      MEMORY[0x216059AC0](v33, -1, -1);
    }

    v34 = *(v0 + 472);
    v35 = *(v0 + 432);
    v36 = *(v0 + 408);

    v34(v35, v36);
    *(v0 + 512) = objc_opt_self();
    sub_21498FAB0();
    *(v0 + 520) = sub_21498FAA0();
    v38 = sub_21498FA50();

    return MEMORY[0x2822009F8](sub_2148A820C, v38, v37);
  }
}

uint64_t sub_2148A7B4C()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = sub_2148A7ED8;
  }

  else
  {
    sub_2148AA7D0(v2 + 16);
    v3 = sub_2148A7C68;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2148A7C68()
{
  v1 = *(v0 + 488) + 1;
  if (v1 == *(v0 + 480))
  {
    (*(v0 + 456))(*(v0 + 432), *(v0 + 448), *(v0 + 408));
    v2 = sub_21498E670();
    v3 = sub_21498FBD0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_21488E000, v2, v3, "MAUnsubscribeAction: Background Task Completed", v4, 2u);
      MEMORY[0x216059AC0](v4, -1, -1);
    }

    v5 = *(v0 + 472);
    v6 = *(v0 + 432);
    v7 = *(v0 + 408);

    v5(v6, v7);
    *(v0 + 512) = objc_opt_self();
    sub_21498FAB0();
    *(v0 + 520) = sub_21498FAA0();
    v9 = sub_21498FA50();

    return MEMORY[0x2822009F8](sub_2148A820C, v9, v8);
  }

  else
  {
    *(v0 + 488) = v1;
    v10 = *(v0 + 360);
    v11 = *(v0 + 352) + 72 * v1;
    *(v0 + 88) = *(v11 + 32);
    v13 = *(v11 + 64);
    v12 = *(v11 + 80);
    v14 = *(v11 + 96);
    *(v0 + 104) = *(v11 + 48);
    *(v0 + 152) = v14;
    *(v0 + 136) = v12;
    *(v0 + 120) = v13;
    v16 = *(v11 + 64);
    v15 = *(v11 + 80);
    v17 = *(v11 + 48);
    *(v0 + 80) = *(v11 + 96);
    *(v0 + 48) = v16;
    *(v0 + 64) = v15;
    *(v0 + 32) = v17;
    *(v0 + 16) = *(v11 + 32);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v18 = *(v0 + 64);
    *(v0 + 192) = *(v0 + 48);
    *(v0 + 208) = v18;
    *(v0 + 224) = *(v0 + 80);
    v19 = *(v0 + 32);
    *(v0 + 160) = *(v0 + 16);
    *(v0 + 176) = v19;
    sub_2148A8F4C(v0 + 88, v0 + 232);
    v20 = swift_task_alloc();
    *(v0 + 496) = v20;
    *v20 = v0;
    v20[1] = sub_2148A7B4C;
    v21 = *(v0 + 384);
    v22 = *(v0 + 392);
    v23 = *(v0 + 368);
    v24 = *(v0 + 376);

    return sub_2149346F4(v0 + 160, 1, v23, v24, v21, v22);
  }
}

uint64_t sub_2148A7ED8()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 448);
  v3 = *(v0 + 424);
  v4 = *(v0 + 408);
  sub_2148AA7D0(v0 + 16);
  v1(v3, v2, v4);
  v5 = sub_21498E670();
  v6 = sub_21498FBB0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "MAUnsubscribeAction: Error While Unsubscribing", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v8 = *(v0 + 472);
  v9 = *(v0 + 424);
  v10 = *(v0 + 408);

  v8(v9, v10);
  v11 = *(v0 + 488) + 1;
  if (v11 == *(v0 + 480))
  {
    (*(v0 + 456))(*(v0 + 432), *(v0 + 448), *(v0 + 408));
    v12 = sub_21498E670();
    v13 = sub_21498FBD0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_21488E000, v12, v13, "MAUnsubscribeAction: Background Task Completed", v14, 2u);
      MEMORY[0x216059AC0](v14, -1, -1);
    }

    v15 = *(v0 + 472);
    v16 = *(v0 + 432);
    v17 = *(v0 + 408);

    v15(v16, v17);
    *(v0 + 512) = objc_opt_self();
    sub_21498FAB0();
    *(v0 + 520) = sub_21498FAA0();
    v19 = sub_21498FA50();

    return MEMORY[0x2822009F8](sub_2148A820C, v19, v18);
  }

  else
  {
    *(v0 + 488) = v11;
    v20 = *(v0 + 360);
    v21 = *(v0 + 352) + 72 * v11;
    *(v0 + 88) = *(v21 + 32);
    v23 = *(v21 + 64);
    v22 = *(v21 + 80);
    v24 = *(v21 + 96);
    *(v0 + 104) = *(v21 + 48);
    *(v0 + 152) = v24;
    *(v0 + 136) = v22;
    *(v0 + 120) = v23;
    v26 = *(v21 + 64);
    v25 = *(v21 + 80);
    v27 = *(v21 + 48);
    *(v0 + 80) = *(v21 + 96);
    *(v0 + 48) = v26;
    *(v0 + 64) = v25;
    *(v0 + 32) = v27;
    *(v0 + 16) = *(v21 + 32);
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    v28 = *(v0 + 64);
    *(v0 + 192) = *(v0 + 48);
    *(v0 + 208) = v28;
    *(v0 + 224) = *(v0 + 80);
    v29 = *(v0 + 32);
    *(v0 + 160) = *(v0 + 16);
    *(v0 + 176) = v29;
    sub_2148A8F4C(v0 + 88, v0 + 232);
    v30 = swift_task_alloc();
    *(v0 + 496) = v30;
    *v30 = v0;
    v30[1] = sub_2148A7B4C;
    v31 = *(v0 + 384);
    v32 = *(v0 + 392);
    v33 = *(v0 + 368);
    v34 = *(v0 + 376);

    return sub_2149346F4(v0 + 160, 1, v33, v34, v31, v32);
  }
}

uint64_t sub_2148A820C()
{
  v1 = *(v0 + 512);

  *(v0 + 528) = [v1 sharedApplication];

  return MEMORY[0x2822009F8](sub_2148A8294, 0, 0);
}

uint64_t sub_2148A8294()
{
  v1 = v0[66];
  v2 = v0[50];
  swift_beginAccess();
  [v1 endBackgroundTask_];

  v3 = *MEMORY[0x277D767B0];
  swift_beginAccess();
  *(v2 + 16) = v3;

  v4 = v0[1];

  return v4();
}

uint64_t sub_2148A8374()
{

  v1 = OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_items;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A580, &unk_2149924C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21489DFCC(v0 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_delayPostUnsubscribeMs, &qword_27CA1A578, &qword_2149924B8);
  sub_21489DFCC(v0 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_delayMailtoUnsubscribeMs, &qword_27CA1A578, &qword_2149924B8);
  sub_21489DFCC(v0 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_delayUnsubscribeLinkMs, &qword_27CA1A578, &qword_2149924B8);
  sub_21489DFCC(v0 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_mailtoUnsubscribeTimeoutMs, &qword_27CA1A578, &qword_2149924B8);

  return v0;
}

uint64_t sub_2148A8498()
{
  sub_2148A8374();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MAUnsubscribeAction(uint64_t a1)
{
  result = qword_27CA1A528;
  if (!qword_27CA1A528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2148A8544(uint64_t a1)
{
  sub_2148A8638(319);
  if (v1 <= 0x3F)
  {
    sub_2148A875C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2148A8638(uint64_t a1)
{
  if (!qword_27CA1A538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A540, &qword_2149923D0);
    sub_2148A86A8();
    v1 = sub_21498E770();
    if (!v2)
    {
      atomic_store(v1, &qword_27CA1A538);
    }
  }
}

unint64_t sub_2148A86A8()
{
  result = qword_27CA1A548;
  if (!qword_27CA1A548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A540, &qword_2149923D0);
    sub_2148AAB50(&qword_27CA1A550, MEMORY[0x277D232B0], MEMORY[0x277D232C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A548);
  }

  return result;
}

void sub_2148A875C(uint64_t a1)
{
  if (!qword_27CA1A558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A560, &qword_2149923D8);
    v1 = sub_21498FCF0();
    if (!v2)
    {
      atomic_store(v1, &qword_27CA1A558);
    }
  }
}

uint64_t sub_2148A87C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214899138;

  return sub_2148A595C(a1, a2);
}

uint64_t (**sub_2148A891C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>))(char *, uint64_t, uint64_t)
{
  v5 = swift_allocObject();
  result = sub_2148A48B0(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void *sub_2148A8A04(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_2148A9494(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5C0, &qword_214992520);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2148A8B48(uint64_t result)
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

  result = sub_2148A962C(result, v10, 1, v3);
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

uint64_t sub_2148A8C40(uint64_t result)
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

  result = sub_2148A9750(result, v10, 1, v3);
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

uint64_t sub_2148A8D74(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_2148A99BC(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}