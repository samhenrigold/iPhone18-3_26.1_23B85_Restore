void sub_267AF5CA4(uint64_t a1)
{
  if (!qword_2802111F8)
  {
    sub_267AEB9E0();
    v1 = sub_267B16CE0();
    if (!v2)
    {
      atomic_store(v1, &qword_2802111F8);
    }
  }
}

void sub_267AF5D00()
{
  if (!qword_280211200)
  {
    v0 = sub_267B17590();
    if (!v1)
    {
      atomic_store(v0, &qword_280211200);
    }
  }
}

void sub_267AF5D50(uint64_t a1)
{
  if (!qword_280211208)
  {
    sub_267B17030();
    v1 = sub_267B16C90();
    if (!v2)
    {
      atomic_store(v1, &qword_280211208);
    }
  }
}

double sub_267AF5DC4()
{
  v0 = sub_267B17030();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - v5;
  type metadata accessor for MessageView(0);
  sub_267B06A78(v6);
  (*(v1 + 104))(v4, *MEMORY[0x277CE0270], v0);
  v7 = sub_267AF5F4C(v6, v4);
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  result = 20.0;
  if (!v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802111D8, &qword_267B1A450);
    sub_267B16CD0();
    return *&v10[1];
  }

  return result;
}

BOOL sub_267AF5F4C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = sub_267B17030();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(v4 + 16);
  v10(&v18 - v8, a2, v3);
  v11 = *(v4 + 88);
  v12 = v11(v9, v3);
  v13 = 0;
  v14 = *MEMORY[0x277CE0268];
  if (v12 != *MEMORY[0x277CE0268])
  {
    if (v12 == *MEMORY[0x277CE0298])
    {
      v13 = 1;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x277CE02A0])
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x277CE0290])
    {
      goto LABEL_7;
    }

    if (v12 == *MEMORY[0x277CE0260])
    {
      v13 = 4;
    }

    else if (v12 == *MEMORY[0x277CE0270])
    {
      v13 = 5;
    }

    else if (v12 == *MEMORY[0x277CE0248])
    {
      v13 = 6;
    }

    else if (v12 == *MEMORY[0x277CE0280])
    {
      v13 = 7;
    }

    else if (v12 == *MEMORY[0x277CE0278])
    {
      v13 = 8;
    }

    else if (v12 == *MEMORY[0x277CE0288])
    {
      v13 = 9;
    }

    else if (v12 == *MEMORY[0x277CE0250])
    {
      v13 = 10;
    }

    else
    {
      if (v12 != *MEMORY[0x277CE0258])
      {
        (*(v4 + 8))(v9, v3);
LABEL_7:
        v13 = 3;
        goto LABEL_24;
      }

      v13 = 11;
    }
  }

LABEL_24:
  v10(v7, v19, v3);
  v15 = v11(v7, v3);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else if (v15 == *MEMORY[0x277CE0298])
  {
    v16 = 1;
  }

  else if (v15 == *MEMORY[0x277CE02A0])
  {
    v16 = 2;
  }

  else
  {
    if (v15 != *MEMORY[0x277CE0290])
    {
      if (v15 == *MEMORY[0x277CE0260])
      {
        v16 = 4;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0270])
      {
        v16 = 5;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0248])
      {
        v16 = 6;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0280])
      {
        v16 = 7;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0278])
      {
        v16 = 8;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0288])
      {
        v16 = 9;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0250])
      {
        v16 = 10;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0258])
      {
        v16 = 11;
        return v13 < v16;
      }

      (*(v4 + 8))(v7, v3);
    }

    v16 = 3;
  }

  return v13 < v16;
}

uint64_t sub_267AF6364()
{
  v1 = type metadata accessor for MessageView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211210, &qword_267B1A4C0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  *v6 = sub_267B16FB0();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211218, &qword_267B1A4C8);
  sub_267AF653C(v0, &v6[*(v7 + 44)]);
  sub_267AFAB40(v0, &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v9 = swift_allocObject();
  sub_267AFAEA0(&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  OUTLINED_FUNCTION_1_5();
  sub_267ADCE94(v10, &qword_280211210, &qword_267B1A4C0, v11);
  sub_267B173E0();

  return sub_267AEC1D4(v6, &qword_280211210, &qword_267B1A4C0);
}

uint64_t sub_267AF653C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211228, &qword_267B1A4D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26[-1] - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211230, &qword_267B1A4D8);
  MEMORY[0x28223BE20](v10);
  v12 = &v26[-1] - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211238, &qword_267B1A4E0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v26[-1] - v17;
  v26[3] = &type metadata for Features;
  v26[4] = sub_267AE7B88();
  LOBYTE(v26[0]) = 2;
  v19 = sub_267B16630();
  __swift_destroy_boxed_opaque_existential_1(v26);
  if (v19)
  {
    *v12 = sub_267B16FB0();
    *(v12 + 1) = 0x4020000000000000;
    v12[16] = 0;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211250, &qword_267B1A4F8);
    sub_267AF6858(a1, &v12[*(v20 + 44)]);
    sub_267AEBA3C(v12, v18, &qword_280211230, &qword_267B1A4D8);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  __swift_storeEnumTagSinglePayload(v18, v21, 1, v10);
  *v9 = sub_267B17050();
  *(v9 + 1) = 0x4008000000000000;
  v9[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211240, &qword_267B1A4E8);
  sub_267AF765C(a1, &v9[*(v22 + 44)]);
  sub_267AEBA8C(v18, v16, &qword_280211238, &qword_267B1A4E0);
  sub_267AEBA8C(v9, v7, &qword_280211228, &qword_267B1A4D0);
  sub_267AEBA8C(v16, a2, &qword_280211238, &qword_267B1A4E0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211248, &qword_267B1A4F0);
  sub_267AEBA8C(v7, a2 + *(v23 + 48), &qword_280211228, &qword_267B1A4D0);
  sub_267AEC1D4(v9, &qword_280211228, &qword_267B1A4D0);
  sub_267AEC1D4(v18, &qword_280211238, &qword_267B1A4E0);
  sub_267AEC1D4(v7, &qword_280211228, &qword_267B1A4D0);
  return sub_267AEC1D4(v16, &qword_280211238, &qword_267B1A4E0);
}

uint64_t sub_267AF6858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_267B165C0();
  v73 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v72 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_267B165F0();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_267B176F0();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v66 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EB8, &qword_267B19E18);
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = v58 - v9;
  v10 = sub_267B17280();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211258, &qword_267B1A500);
  MEMORY[0x28223BE20](v63);
  v15 = (v58 - v14);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211260, &qword_267B1A508);
  MEMORY[0x28223BE20](v61);
  v17 = v58 - v16;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211268, &qword_267B1A510);
  MEMORY[0x28223BE20](v62);
  v19 = v58 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211270, &qword_267B1A518);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v65 = v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v64 = v58 - v23;
  v24 = a1 + *(type metadata accessor for MessageView(0) + 20);
  v59 = type metadata accessor for WidgetMessage(0);
  v25 = *(v59 + 44);
  v60 = v24;
  if (*(v24 + v25) == 1)
  {
    sub_267AF71A0(v19);
    sub_267AF5DC4();
    sub_267B17680();
    sub_267B16D20();
    v26 = &v19[*(v62 + 36)];
    v27 = v78;
    *v26 = v77;
    *(v26 + 1) = v27;
    *(v26 + 2) = v79;
    sub_267AEBA8C(v19, v17, &qword_280211268, &qword_267B1A510);
    swift_storeEnumTagMultiPayload();
    sub_267AFB17C();
    sub_267AFB45C();
    v28 = v64;
    sub_267B17080();
    v29 = v19;
    v30 = &qword_280211268;
    v31 = &qword_267B1A510;
  }

  else
  {
    v32 = sub_267B17510();
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211278, &qword_267B1A520) + 36);
    v58[1] = a1;
    v34 = v3;
    v35 = (v15 + v33);
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E58, &qword_267B19D88) + 28);
    v58[2] = v7;
    v37 = *MEMORY[0x277CE1050];
    v38 = sub_267B17530();
    (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
    *v35 = swift_getKeyPath();
    v3 = v34;
    *v15 = v32;
    sub_267B172B0();
    (*(v11 + 104))(v13, *MEMORY[0x277CE0A10], v10);
    v39 = sub_267B172A0();

    (*(v11 + 8))(v13, v10);
    KeyPath = swift_getKeyPath();
    v41 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211280, &qword_267B1A588) + 36));
    *v41 = KeyPath;
    v41[1] = v39;
    v42 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211288, &qword_267B1A590) + 36));
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211290, &qword_267B1A598) + 28);
    sub_267B17060();
    v44 = sub_267B17070();
    __swift_storeEnumTagSinglePayload(v42 + v43, 0, 1, v44);
    *v42 = swift_getKeyPath();
    sub_267AF5DC4();
    sub_267B17650();
    sub_267B16D20();
    v45 = (v15 + *(v63 + 36));
    v46 = v78;
    *v45 = v77;
    v45[1] = v46;
    v45[2] = v79;
    sub_267AEBA8C(v15, v17, &qword_280211258, &qword_267B1A500);
    swift_storeEnumTagMultiPayload();
    sub_267AFB17C();
    sub_267AFB45C();
    v28 = v64;
    sub_267B17080();
    v29 = v15;
    v30 = &qword_280211258;
    v31 = &qword_267B1A500;
  }

  sub_267AEC1D4(v29, v30, v31);
  sub_267B165E0();
  v47 = v66;
  sub_267B17700();
  v49 = v72;
  v48 = v73;
  (*(v73 + 104))(v72, *MEMORY[0x277D62A90], v3);
  v50 = sub_267AEC278(&qword_280210EC0, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
  v51 = v67;
  v52 = v71;
  sub_267B17380();
  (*(v48 + 8))(v49, v3);
  (*(v69 + 8))(v47, v52);
  v75 = v52;
  v76 = v50;
  swift_getOpaqueTypeConformance2();
  v53 = v70;
  v54 = sub_267B17350();
  (*(v68 + 8))(v51, v53);
  v55 = v65;
  sub_267AEBA8C(v28, v65, &qword_280211270, &qword_267B1A518);
  v56 = v74;
  sub_267AEBA8C(v55, v74, &qword_280211270, &qword_267B1A518);
  *(v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802112F8, &qword_267B1A5E8) + 48)) = v54;

  sub_267AEC1D4(v28, &qword_280211270, &qword_267B1A518);

  return sub_267AEC1D4(v55, &qword_280211270, &qword_267B1A518);
}

uint64_t sub_267AF71A0@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_267B17280();
  v42 = *(v1 - 8);
  v43 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_267B17530();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211278, &qword_267B1A520);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = (v39 - v10);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211280, &qword_267B1A588);
  MEMORY[0x28223BE20](v41);
  v13 = v39 - v12;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802112B8, &qword_267B1A5D8);
  MEMORY[0x28223BE20](v40);
  v15 = v39 - v14;
  v16 = sub_267B17510();
  v45[3] = &type metadata for Features;
  v45[4] = sub_267AE7B88();
  LOBYTE(v45[0]) = 2;
  v17 = sub_267B16630();
  __swift_destroy_boxed_opaque_existential_1(v45);
  v18 = MEMORY[0x277CE1058];
  if ((v17 & 1) == 0)
  {
    v18 = MEMORY[0x277CE1050];
  }

  (*(v5 + 104))(v7, *v18, v4);
  KeyPath = swift_getKeyPath();
  v20 = (v11 + *(v9 + 44));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E58, &qword_267B19D88);
  (*(v5 + 32))(v20 + *(v21 + 28), v7, v4);
  v22 = v39[1];
  *v20 = KeyPath;
  *v11 = v16;
  v23 = type metadata accessor for MessageView(0);
  v24 = v22 + *(v23 + 20);
  if (*(v24 + *(type metadata accessor for WidgetMessage(0) + 40)) == 1 && (*(v22 + *(v23 + 28)) & 1) == 0)
  {
    sub_267B172B0();
  }

  else
  {
    sub_267B171F0();
  }

  v26 = v42;
  v25 = v43;
  (*(v42 + 104))(v3, *MEMORY[0x277CE0A10], v43);
  v27 = sub_267B172A0();

  (*(v26 + 8))(v3, v25);
  v28 = swift_getKeyPath();
  sub_267AEBA3C(v11, v13, &qword_280211278, &qword_267B1A520);
  v29 = &v13[*(v41 + 36)];
  *v29 = v28;
  v29[1] = v27;
  v30 = sub_267B17490();
  v31 = swift_getKeyPath();
  sub_267AEBA3C(v13, v15, &qword_280211280, &qword_267B1A588);
  v32 = &v15[*(v40 + 36)];
  *v32 = v31;
  v32[1] = v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802112A8, &qword_267B1A5D0);
  v34 = v44;
  v35 = (v44 + *(v33 + 36));
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211290, &qword_267B1A598) + 28);
  sub_267B17060();
  v37 = sub_267B17070();
  __swift_storeEnumTagSinglePayload(v35 + v36, 0, 1, v37);
  *v35 = swift_getKeyPath();
  return sub_267AEBA3C(v15, v34, &qword_2802112B8, &qword_267B1A5D8);
}

uint64_t sub_267AF765C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211308, &qword_267B1A628);
  MEMORY[0x28223BE20](v87);
  v84 = v83 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211310, &qword_267B1A630);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v91 = v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v89 = v83 - v7;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211318, &qword_267B1A638) - 8;
  v8 = MEMORY[0x28223BE20](v85);
  v90 = v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v83 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211320, &qword_267B1A640);
  v13 = v12 - 8;
  v14 = MEMORY[0x28223BE20](v12);
  v88 = v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v83 - v16;
  *v17 = sub_267B16FA0();
  *(v17 + 1) = 0x4000000000000000;
  v17[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211328, &qword_267B1A648);
  sub_267AF7E78(a1, &v17[*(v18 + 44)]);
  KeyPath = swift_getKeyPath();
  v20 = type metadata accessor for MessageView(0);
  v21 = (a1 + v20[12]);
  v22 = *v21;
  v23 = v21[1];
  v93 = v22;
  v94 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211330, &qword_267B1A670);
  sub_267B17580();
  v25 = v99;
  v26 = v100;
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 32) = v26;
  *(v27 + 40) = KeyPath;
  v28 = sub_267B17670();
  v29 = *(v13 + 44);
  v86 = v17;
  v30 = &v17[v29];
  *v30 = sub_267B11D5C;
  v30[1] = 0;
  v30[2] = sub_267AFB5F8;
  v30[3] = v27;
  v30[4] = v28;
  v30[5] = v31;
  *v11 = sub_267B16FA0();
  *(v11 + 1) = 0x4010000000000000;
  v11[16] = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211338, &qword_267B1A678);
  sub_267AF8F78(a1, &v11[*(v32 + 44)]);
  v33 = swift_getKeyPath();
  v34 = (a1 + v20[13]);
  v35 = *v34;
  v36 = v34[1];
  v93 = v35;
  v94 = v36;
  v83[1] = v24;
  v37 = v20;
  sub_267B17580();
  v38 = v99;
  v39 = v100;
  v40 = swift_allocObject();
  *(v40 + 16) = v38;
  *(v40 + 32) = v39;
  *(v40 + 40) = v33;
  v41 = sub_267B17670();
  v42 = v11;
  v43 = &v11[*(v85 + 44)];
  *v43 = sub_267B11D5C;
  v43[1] = 0;
  v43[2] = sub_267AFB884;
  v43[3] = v40;
  v43[4] = v41;
  v43[5] = v44;
  if (*(a1 + v20[5] + 56) && (v45 = *(a1 + v20[6]), v45 >= 1))
  {
    v85 = sub_267B16FA0();
    LOBYTE(v96) = 0;
    sub_267AFA8D0(&v99);
    *&__src[7] = v99;
    *&__src[23] = v100;
    *&__src[39] = v101;
    *&__src[55] = v102;
    v46 = v96;
    v47 = swift_getKeyPath();
    LOBYTE(v93) = 0;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211348, &qword_267B1A6B8);
    v49 = v84;
    v50 = &v84[*(v48 + 36)];
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E58, &qword_267B19D88) + 28);
    v52 = *MEMORY[0x277CE1050];
    v53 = sub_267B17530();
    (*(*(v53 - 8) + 104))(v50 + v51, v52, v53);
    *v50 = swift_getKeyPath();
    *v49 = v85;
    *(v49 + 8) = 0x4010000000000000;
    *(v49 + 16) = v46;
    memcpy((v49 + 17), __src, 0x47uLL);
    *(v49 + 88) = v47;
    *(v49 + 96) = v45;
    *(v49 + 104) = 0;
    v54 = sub_267B171F0();
    v55 = swift_getKeyPath();
    v56 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211350, &qword_267B1A6C0) + 36));
    *v56 = v55;
    v56[1] = v54;
    v57 = swift_getKeyPath();
    v58 = (a1 + v37[14]);
    v59 = *v58;
    v60 = v58[1];
    v96 = v59;
    v97 = v60;
    sub_267B17580();
    v61 = v93;
    v62 = v94;
    v63 = v95;
    v64 = swift_allocObject();
    *(v64 + 2) = v61;
    *(v64 + 3) = v62;
    *(v64 + 4) = v63;
    *(v64 + 5) = v57;
    v65 = sub_267B17670();
    v66 = v87;
    v67 = (v49 + *(v87 + 36));
    *v67 = sub_267B11D5C;
    v67[1] = 0;
    v67[2] = sub_267AFB884;
    v67[3] = v64;
    v67[4] = v65;
    v67[5] = v68;
    v69 = v89;
    sub_267AEBA3C(v49, v89, &qword_280211308, &qword_267B1A628);
    v70 = v69;
    v71 = 0;
    v72 = v66;
  }

  else
  {
    v69 = v89;
    v70 = v89;
    v71 = 1;
    v72 = v87;
  }

  __swift_storeEnumTagSinglePayload(v70, v71, 1, v72);
  v73 = v86;
  v74 = v88;
  sub_267AEBA8C(v86, v88, &qword_280211320, &qword_267B1A640);
  v75 = v42;
  v76 = v42;
  v77 = v90;
  sub_267AEBA8C(v76, v90, &qword_280211318, &qword_267B1A638);
  v78 = v91;
  sub_267AEBA8C(v69, v91, &qword_280211310, &qword_267B1A630);
  v79 = v92;
  sub_267AEBA8C(v74, v92, &qword_280211320, &qword_267B1A640);
  v80 = v69;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211340, &qword_267B1A680);
  sub_267AEBA8C(v77, v79 + *(v81 + 48), &qword_280211318, &qword_267B1A638);
  sub_267AEBA8C(v78, v79 + *(v81 + 64), &qword_280211310, &qword_267B1A630);
  sub_267AEC1D4(v80, &qword_280211310, &qword_267B1A630);
  sub_267AEC1D4(v75, &qword_280211318, &qword_267B1A638);
  sub_267AEC1D4(v73, &qword_280211320, &qword_267B1A640);
  sub_267AEC1D4(v78, &qword_280211310, &qword_267B1A630);
  sub_267AEC1D4(v77, &qword_280211318, &qword_267B1A638);
  return sub_267AEC1D4(v74, &qword_280211320, &qword_267B1A640);
}

uint64_t sub_267AF7E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211398, &qword_267B1A6F8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - v7;
  *v8 = sub_267B16FA0();
  *(v8 + 1) = 0x4010000000000000;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802113A0, &qword_267B1A700);
  sub_267AF81D0(a1, &v8[*(v9 + 44)]);
  type metadata accessor for MessageView(0);
  v42 = sub_267B12470();
  v43 = v10;
  sub_267ADCFA4();
  v11 = sub_267B17340();
  v36 = v12;
  LOBYTE(a1) = v13;
  v15 = v14;
  KeyPath = swift_getKeyPath();
  v40 = a1 & 1;
  v39 = 0;
  v34 = sub_267B17290();
  v16 = swift_getKeyPath();
  v30 = v16;
  v17 = v40;
  v32 = v40;
  v18 = v39;
  v33 = sub_267B174F0();
  v31 = swift_getKeyPath();
  v37 = v6;
  sub_267AEBA8C(v8, v6, &qword_280211398, &qword_267B1A6F8);
  v19 = v38;
  sub_267AEBA8C(v6, v38, &qword_280211398, &qword_267B1A6F8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802113A8, &qword_267B1A708);
  v21 = v19 + *(v20 + 48);
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = *(v20 + 64);
  __src[0] = v11;
  v23 = v36;
  __src[1] = v36;
  LOBYTE(__src[2]) = v17;
  v24 = v15;
  __src[3] = v15;
  __src[4] = 0x3FF0000000000000;
  v25 = KeyPath;
  __src[5] = KeyPath;
  __src[6] = 1;
  LOBYTE(__src[7]) = v18;
  __src[8] = v16;
  v26 = v34;
  v27 = v31;
  __src[9] = v34;
  __src[10] = v31;
  v28 = v33;
  __src[11] = v33;
  __src[12] = 0x3FE8000000000000;
  memcpy((v19 + v22), __src, 0x68uLL);
  sub_267AEBA8C(__src, &v42, &qword_2802113B0, &qword_267B1A710);
  sub_267AEC1D4(v8, &qword_280211398, &qword_267B1A6F8);
  v42 = v11;
  v43 = v23;
  v44 = v32;
  v45 = v24;
  v46 = 0x3FF0000000000000;
  v47 = v25;
  v48 = 1;
  v49 = v18;
  v50 = v30;
  v51 = v26;
  v52 = v27;
  v53 = v28;
  v54 = 0x3FE8000000000000;
  sub_267AEC1D4(&v42, &qword_2802113B0, &qword_267B1A710);
  return sub_267AEC1D4(v37, &qword_280211398, &qword_267B1A6F8);
}

uint64_t sub_267AF81D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211288, &qword_267B1A590);
  MEMORY[0x28223BE20](v90);
  v4 = (&v85 - v3);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211258, &qword_267B1A500);
  v5 = MEMORY[0x28223BE20](v94);
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v85 - v8;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802113B8, &qword_267B1A718);
  MEMORY[0x28223BE20](v92);
  v93 = &v85 - v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802113C0, &qword_267B1A720);
  MEMORY[0x28223BE20](v86);
  v87 = &v85 - v11;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802113C8, &qword_267B1A728);
  MEMORY[0x28223BE20](v91);
  v88 = &v85 - v12;
  v13 = sub_267B17280();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211268, &qword_267B1A510);
  MEMORY[0x28223BE20](v85);
  v18 = (&v85 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802113D0, &qword_267B1A730);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v95 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v97 = &v85 - v22;
  v23 = type metadata accessor for MessageView(0);
  v24 = a1;
  v25 = a1 + *(v23 + 20);
  v26 = type metadata accessor for WidgetMessage(0);
  if (*(v25 + *(v26 + 40)) == 1 && (*(v24 + *(v23 + 28)) & 1) == 0)
  {
    v46 = sub_267B17510();
    v47 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211278, &qword_267B1A520) + 36));
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E58, &qword_267B19D88) + 28);
    v49 = *MEMORY[0x277CE1050];
    v50 = sub_267B17530();
    (*(*(v50 - 8) + 104))(v47 + v48, v49, v50);
    *v47 = swift_getKeyPath();
    *v18 = v46;
    sub_267B171F0();
    (*(v14 + 104))(v16, *MEMORY[0x277CE0A10], v13);
    v51 = sub_267B172A0();

    (*(v14 + 8))(v16, v13);
    KeyPath = swift_getKeyPath();
    v53 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211280, &qword_267B1A588) + 36));
    *v53 = KeyPath;
    v53[1] = v51;
    v54 = sub_267B174E0();
    v55 = swift_getKeyPath();
    v56 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802112B8, &qword_267B1A5D8) + 36));
    *v56 = v55;
    v56[1] = v54;
    v57 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802112A8, &qword_267B1A5D0) + 36));
    v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211290, &qword_267B1A598) + 28);
    sub_267B17060();
    v59 = sub_267B17070();
    __swift_storeEnumTagSinglePayload(v57 + v58, 0, 1, v59);
    *v57 = swift_getKeyPath();
    sub_267AF5DC4();
    sub_267B17670();
    sub_267B16D20();
    v60 = (v18 + *(v85 + 36));
    v61 = v112;
    *v60 = v111;
    v60[1] = v61;
    v60[2] = v113;
    sub_267AEBA8C(v18, v87, &qword_280211268, &qword_267B1A510);
    swift_storeEnumTagMultiPayload();
    sub_267AFB17C();
    v62 = v88;
    sub_267B17080();
    sub_267AEBA8C(v62, v93, &qword_2802113C8, &qword_267B1A728);
    swift_storeEnumTagMultiPayload();
    sub_267AFB778();
    sub_267AFB45C();
    v63 = v97;
    sub_267B17080();
    sub_267AEC1D4(v62, &qword_2802113C8, &qword_267B1A728);
    v64 = v18;
    v42 = v63;
    sub_267AEC1D4(v64, &qword_280211268, &qword_267B1A510);
    v39 = v24;
  }

  else
  {
    v89 = v24;
    if (*(v25 + *(v26 + 44)) == 1 && (v104 = &type metadata for Features, v105 = sub_267AE7B88(), LOBYTE(v101) = 2, v27 = sub_267B16630(), __swift_destroy_boxed_opaque_existential_1(&v101), (v27 & 1) == 0))
    {
      v39 = v89;
      sub_267AF71A0(v18);
      sub_267AF5DC4();
      sub_267B17670();
      sub_267B16D20();
      v65 = (v18 + *(v85 + 36));
      v66 = v112;
      *v65 = v111;
      v65[1] = v66;
      v65[2] = v113;
      sub_267AEBA8C(v18, v87, &qword_280211268, &qword_267B1A510);
      swift_storeEnumTagMultiPayload();
      sub_267AFB17C();
      v67 = v88;
      sub_267B17080();
      sub_267AEBA8C(v67, v93, &qword_2802113C8, &qword_267B1A728);
      swift_storeEnumTagMultiPayload();
      sub_267AFB778();
      sub_267AFB45C();
      v68 = v97;
      sub_267B17080();
      sub_267AEC1D4(v67, &qword_2802113C8, &qword_267B1A728);
      v43 = v18;
      v42 = v68;
      v44 = &qword_280211268;
      v45 = &qword_267B1A510;
    }

    else
    {
      v28 = sub_267B17510();
      v29 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211278, &qword_267B1A520) + 36));
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E58, &qword_267B19D88) + 28);
      v31 = *MEMORY[0x277CE1050];
      v32 = sub_267B17530();
      (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
      *v29 = swift_getKeyPath();
      *v4 = v28;
      sub_267B172B0();
      (*(v14 + 104))(v16, *MEMORY[0x277CE0A10], v13);
      v33 = sub_267B172A0();

      (*(v14 + 8))(v16, v13);
      v34 = swift_getKeyPath();
      v35 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211280, &qword_267B1A588) + 36));
      *v35 = v34;
      v35[1] = v33;
      v36 = (v4 + *(v90 + 36));
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211290, &qword_267B1A598) + 28);
      sub_267B17060();
      v38 = sub_267B17070();
      __swift_storeEnumTagSinglePayload(v36 + v37, 0, 1, v38);
      *v36 = swift_getKeyPath();
      v104 = &type metadata for Features;
      v105 = sub_267AE7B88();
      LOBYTE(v101) = 2;
      sub_267B16630();
      __swift_destroy_boxed_opaque_existential_1(&v101);
      v39 = v89;
      sub_267AF5DC4();
      sub_267B17650();
      sub_267B16D20();
      sub_267AEBA3C(v4, v7, &qword_280211288, &qword_267B1A590);
      v40 = &v7[*(v94 + 36)];
      v41 = v112;
      *v40 = v111;
      *(v40 + 1) = v41;
      *(v40 + 2) = v113;
      sub_267AEBA3C(v7, v9, &qword_280211258, &qword_267B1A500);
      sub_267AEBA8C(v9, v93, &qword_280211258, &qword_267B1A500);
      swift_storeEnumTagMultiPayload();
      sub_267AFB778();
      sub_267AFB45C();
      v42 = v97;
      sub_267B17080();
      v43 = v9;
      v44 = &qword_280211258;
      v45 = &qword_267B1A500;
    }

    sub_267AEC1D4(v43, v44, v45);
  }

  sub_267AFA6C0(v39, &v101);
  v69 = v101;
  v94 = v102;
  v93 = v103;
  v92 = v104;
  v70 = v105;
  v71 = swift_getKeyPath();
  v89 = v71;
  v99 = v70;
  v98 = 0;
  sub_267B172C0();
  sub_267B17240();
  v91 = sub_267B17270();

  v72 = swift_getKeyPath();
  v73 = v99;
  LODWORD(v90) = v99;
  v74 = v98;
  v75 = v42;
  v76 = v95;
  sub_267AEBA8C(v75, v95, &qword_2802113D0, &qword_267B1A730);
  v77 = v96;
  sub_267AEBA8C(v76, v96, &qword_2802113D0, &qword_267B1A730);
  v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802113E0, &qword_267B1A738) + 48);
  __src[0] = v69;
  v79 = v94;
  __src[1] = v94;
  v80 = v93;
  __src[2] = v93;
  v81 = v92;
  __src[3] = v92;
  LOBYTE(__src[4]) = v73;
  __src[5] = v71;
  __src[6] = 1;
  LOBYTE(__src[7]) = v74;
  __src[8] = v72;
  v82 = v72;
  v83 = v91;
  __src[9] = v91;
  memcpy((v77 + v78), __src, 0x50uLL);
  sub_267AEBA8C(__src, &v101, &qword_280211390, &qword_267B1A6F0);
  sub_267AEC1D4(v97, &qword_2802113D0, &qword_267B1A730);
  v101 = v69;
  v102 = v79;
  v103 = v80;
  v104 = v81;
  LOBYTE(v105) = v90;
  v106 = v89;
  v107 = 1;
  v108 = v74;
  v109 = v82;
  v110 = v83;
  sub_267AEC1D4(&v101, &qword_280211390, &qword_267B1A6F0);
  return sub_267AEC1D4(v76, &qword_2802113D0, &qword_267B1A730);
}

uint64_t sub_267AF8F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802112A8, &qword_267B1A5D0);
  MEMORY[0x28223BE20](v115);
  v114 = (&v112 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211358, &qword_267B1A6C8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v117 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v116 = &v112 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v123 = &v112 - v10;
  MEMORY[0x28223BE20](v9);
  v132 = &v112 - v11;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211260, &qword_267B1A508);
  MEMORY[0x28223BE20](v125);
  v13 = &v112 - v12;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211268, &qword_267B1A510);
  MEMORY[0x28223BE20](v126);
  v15 = &v112 - v14;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211270, &qword_267B1A518);
  MEMORY[0x28223BE20](v130);
  v17 = &v112 - v16;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211360, &qword_267B1A6D0);
  MEMORY[0x28223BE20](v129);
  v19 = &v112 - v18;
  v121 = sub_267B17280();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v21 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211258, &qword_267B1A500);
  MEMORY[0x28223BE20](v127);
  v23 = (&v112 - v22);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211368, &qword_267B1A6D8);
  MEMORY[0x28223BE20](v128);
  v25 = &v112 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211370, &qword_267B1A6E0);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v131 = &v112 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v133 = &v112 - v29;
  v138 = &type metadata for Features;
  v139 = sub_267AE7B88();
  LOBYTE(v135) = 2;
  v30 = sub_267B16630();
  __swift_destroy_boxed_opaque_existential_1(&v135);
  v122 = type metadata accessor for MessageView(0);
  v31 = a1 + *(v122 + 20);
  v119 = type metadata accessor for WidgetMessage(0);
  if (v30)
  {
    if (*(v31 + v119[10]) && *(a1 + *(v122 + 28)) != 1)
    {
      v45 = a1;
      v49 = 1;
      v46 = v127;
    }

    else
    {
      v32 = sub_267B17510();
      v33 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211278, &qword_267B1A520) + 36));
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E58, &qword_267B19D88) + 28);
      v35 = *MEMORY[0x277CE1050];
      v36 = sub_267B17530();
      (*(*(v36 - 8) + 104))(v33 + v34, v35, v36);
      *v33 = swift_getKeyPath();
      *v23 = v32;
      sub_267B172B0();
      v37 = v120;
      v38 = v121;
      (*(v120 + 104))(v21, *MEMORY[0x277CE0A10], v121);
      v39 = sub_267B172A0();

      (*(v37 + 8))(v21, v38);
      KeyPath = swift_getKeyPath();
      v41 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211280, &qword_267B1A588) + 36));
      *v41 = KeyPath;
      v41[1] = v39;
      v42 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211288, &qword_267B1A590) + 36));
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211290, &qword_267B1A598) + 28);
      sub_267B17060();
      v44 = sub_267B17070();
      __swift_storeEnumTagSinglePayload(v42 + v43, 0, 1, v44);
      *v42 = swift_getKeyPath();
      v45 = a1;
      sub_267AF5DC4();
      sub_267B17650();
      sub_267B16D20();
      v46 = v127;
      v47 = (v23 + *(v127 + 36));
      v48 = v151;
      *v47 = v150;
      v47[1] = v48;
      v47[2] = v152;
      sub_267AEBA3C(v23, v25, &qword_280211258, &qword_267B1A500);
      v49 = 0;
    }

    __swift_storeEnumTagSinglePayload(v25, v49, 1, v46);
    sub_267AEBA8C(v25, v19, &qword_280211368, &qword_267B1A6D8);
    swift_storeEnumTagMultiPayload();
    sub_267AFB668();
    sub_267AFB6EC();
    sub_267B17080();
    v70 = v25;
    v71 = &qword_280211368;
    v72 = &qword_267B1A6D8;
  }

  else
  {
    if (*(v31 + v119[10]) && (*(a1 + *(v122 + 28)) & 1) == 0 && *(v31 + v119[11]) == 1)
    {
      sub_267AF71A0(v15);
      v45 = a1;
      sub_267AF5DC4();
      sub_267B17670();
      sub_267B16D20();
      v50 = &v15[*(v126 + 36)];
      v51 = v151;
      *v50 = v150;
      *(v50 + 1) = v51;
      *(v50 + 2) = v152;
      v52 = &qword_280211268;
      v53 = &qword_267B1A510;
      sub_267AEBA8C(v15, v13, &qword_280211268, &qword_267B1A510);
      swift_storeEnumTagMultiPayload();
      sub_267AFB17C();
      sub_267AFB45C();
      sub_267B17080();
      v54 = v15;
    }

    else
    {
      v55 = sub_267B17510();
      v56 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211278, &qword_267B1A520) + 36));
      v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E58, &qword_267B19D88) + 28);
      v58 = *MEMORY[0x277CE1050];
      v59 = sub_267B17530();
      (*(*(v59 - 8) + 104))(v56 + v57, v58, v59);
      *v56 = swift_getKeyPath();
      *v23 = v55;
      sub_267B172B0();
      v60 = v120;
      v61 = v121;
      (*(v120 + 104))(v21, *MEMORY[0x277CE0A10], v121);
      v62 = sub_267B172A0();

      (*(v60 + 8))(v21, v61);
      v63 = swift_getKeyPath();
      v64 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211280, &qword_267B1A588) + 36));
      *v64 = v63;
      v64[1] = v62;
      v65 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211288, &qword_267B1A590) + 36));
      v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211290, &qword_267B1A598) + 28);
      sub_267B17060();
      v67 = sub_267B17070();
      __swift_storeEnumTagSinglePayload(v65 + v66, 0, 1, v67);
      *v65 = swift_getKeyPath();
      v45 = a1;
      sub_267AF5DC4();
      sub_267B17650();
      sub_267B16D20();
      v68 = (v23 + *(v127 + 36));
      v69 = v151;
      *v68 = v150;
      v68[1] = v69;
      v68[2] = v152;
      v52 = &qword_280211258;
      v53 = &qword_267B1A500;
      sub_267AEBA8C(v23, v13, &qword_280211258, &qword_267B1A500);
      swift_storeEnumTagMultiPayload();
      sub_267AFB17C();
      sub_267AFB45C();
      sub_267B17080();
      v54 = v23;
    }

    sub_267AEC1D4(v54, v52, v53);
    sub_267AEBA8C(v17, v19, &qword_280211270, &qword_267B1A518);
    swift_storeEnumTagMultiPayload();
    sub_267AFB668();
    sub_267AFB6EC();
    sub_267B17080();
    v70 = v17;
    v71 = &qword_280211270;
    v72 = &qword_267B1A518;
  }

  sub_267AEC1D4(v70, v71, v72);
  sub_267AFA7C8(v45, &v135);
  v130 = v135;
  v129 = v136;
  v128 = v137;
  v127 = v138;
  v73 = v139;
  v126 = swift_getKeyPath();
  v147 = v73;
  v146 = 0;
  v113 = sub_267B171F0();
  v112 = swift_getKeyPath();
  v124 = v147;
  LODWORD(v125) = v146;
  v74 = v45 + *(v122 + 20);
  v75 = v119;
  v76 = v115;
  if (*(v74 + v119[12]) == 1)
  {
    v77 = v114;
    sub_267AFA174(v114);
    v78 = v77;
    v80 = v132;
    sub_267AEBA3C(v78, v132, &qword_2802112A8, &qword_267B1A5D0);
    v79 = 0;
  }

  else
  {
    v79 = 1;
    v80 = v132;
  }

  v81 = 1;
  __swift_storeEnumTagSinglePayload(v80, v79, 1, v76);
  if (*(v74 + v75[13]) == 1)
  {
    v82 = sub_267B17510();
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211278, &qword_267B1A520);
    v84 = v114;
    v85 = (v114 + *(v83 + 36));
    v86 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E58, &qword_267B19D88) + 28);
    v87 = *MEMORY[0x277CE1050];
    v88 = sub_267B17530();
    (*(*(v88 - 8) + 104))(v85 + v86, v87, v88);
    *v85 = swift_getKeyPath();
    *v84 = v82;
    sub_267B172B0();
    v89 = v120;
    v90 = v121;
    (*(v120 + 104))(v21, *MEMORY[0x277CE0A10], v121);
    v91 = sub_267B172A0();

    (*(v89 + 8))(v21, v90);
    v92 = swift_getKeyPath();
    v93 = (v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211280, &qword_267B1A588) + 36));
    *v93 = v92;
    v93[1] = v91;
    v94 = sub_267B17480();
    v95 = swift_getKeyPath();
    v96 = (v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802112B8, &qword_267B1A5D8) + 36));
    *v96 = v95;
    v96[1] = v94;
    v97 = (v84 + *(v76 + 36));
    v98 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211290, &qword_267B1A598) + 28);
    sub_267B17060();
    v99 = sub_267B17070();
    __swift_storeEnumTagSinglePayload(v97 + v98, 0, 1, v99);
    *v97 = swift_getKeyPath();
    sub_267AEBA3C(v84, v123, &qword_2802112A8, &qword_267B1A5D0);
    v81 = 0;
  }

  v100 = v123;
  __swift_storeEnumTagSinglePayload(v123, v81, 1, v76);
  v101 = v131;
  sub_267AEBA8C(v133, v131, &qword_280211370, &qword_267B1A6E0);
  v102 = v80;
  v103 = v116;
  sub_267AEBA8C(v102, v116, &qword_280211358, &qword_267B1A6C8);
  v104 = v117;
  sub_267AEBA8C(v100, v117, &qword_280211358, &qword_267B1A6C8);
  v105 = v118;
  sub_267AEBA8C(v101, v118, &qword_280211370, &qword_267B1A6E0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211388, &qword_267B1A6E8);
  v107 = v106[12];
  __src[0] = v130;
  __src[1] = v129;
  __src[2] = v128;
  __src[3] = v127;
  LOBYTE(__src[4]) = v124;
  *(&__src[4] + 1) = *v149;
  HIDWORD(__src[4]) = *&v149[3];
  __src[5] = v126;
  __src[6] = 1;
  LOBYTE(__src[7]) = v125;
  *(&__src[7] + 1) = *v148;
  HIDWORD(__src[7]) = *&v148[3];
  v108 = v112;
  v109 = v113;
  __src[8] = v112;
  __src[9] = v113;
  memcpy((v105 + v107), __src, 0x50uLL);
  v110 = v105 + v106[16];
  *v110 = 0;
  *(v110 + 8) = 0;
  sub_267AEBA8C(v103, v105 + v106[20], &qword_280211358, &qword_267B1A6C8);
  sub_267AEBA8C(v104, v105 + v106[24], &qword_280211358, &qword_267B1A6C8);
  sub_267AEBA8C(__src, &v135, &qword_280211390, &qword_267B1A6F0);
  sub_267AEC1D4(v100, &qword_280211358, &qword_267B1A6C8);
  sub_267AEC1D4(v132, &qword_280211358, &qword_267B1A6C8);
  sub_267AEC1D4(v133, &qword_280211370, &qword_267B1A6E0);
  sub_267AEC1D4(v104, &qword_280211358, &qword_267B1A6C8);
  sub_267AEC1D4(v103, &qword_280211358, &qword_267B1A6C8);
  v135 = v130;
  v136 = v129;
  v137 = v128;
  v138 = v127;
  LOBYTE(v139) = v124;
  *(&v139 + 1) = *v149;
  HIDWORD(v139) = *&v149[3];
  v140 = v126;
  v141 = 1;
  v142 = v125;
  *v143 = *v148;
  *&v143[3] = *&v148[3];
  v144 = v108;
  v145 = v109;
  sub_267AEC1D4(&v135, &qword_280211390, &qword_267B1A6F0);
  return sub_267AEC1D4(v131, &qword_280211370, &qword_267B1A6E0);
}

uint64_t sub_267AFA174@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_267B17280();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_267B17510();
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211278, &qword_267B1A520) + 36));
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E58, &qword_267B19D88) + 28);
  v9 = *MEMORY[0x277CE1050];
  v10 = sub_267B17530();
  (*(*(v10 - 8) + 104))(v7 + v8, v9, v10);
  *v7 = swift_getKeyPath();
  *a1 = v6;
  sub_267B172B0();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0A10], v2);
  v11 = sub_267B172A0();

  (*(v3 + 8))(v5, v2);
  KeyPath = swift_getKeyPath();
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211280, &qword_267B1A588) + 36));
  *v13 = KeyPath;
  v13[1] = v11;
  v14 = [objc_opt_self() tertiaryLabelColor];
  v15 = sub_267B17470();
  v16 = swift_getKeyPath();
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802112B8, &qword_267B1A5D8) + 36));
  *v17 = v16;
  v17[1] = v15;
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802112A8, &qword_267B1A5D0) + 36));
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211290, &qword_267B1A598) + 28);
  sub_267B17060();
  v20 = sub_267B17070();
  __swift_storeEnumTagSinglePayload(v18 + v19, 0, 1, v20);
  result = swift_getKeyPath();
  *v18 = result;
  return result;
}

uint64_t sub_267AFA428(void **a1)
{
  v2 = sub_267B165B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EF8, &qword_267B19EB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = a1 + *(type metadata accessor for MessageView(0) + 20);
  v10 = type metadata accessor for WidgetMessage(0);
  sub_267AEBA8C(&v9[*(v10 + 56)], v8, &qword_280210EF8, &qword_267B19EB0);
  v11 = sub_267B16500();
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    sub_267AEC1D4(v8, &qword_280210EF8, &qword_267B19EB0);
    v12 = *a1;
    if (*a1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_267B164F0();
    (*(*(v11 - 8) + 8))(v8, v11);
    v12 = *a1;
    if (*a1)
    {
LABEL_5:
      v13 = v12;
      sub_267B165A0();
      sub_267B178F0();

      return (*(v3 + 8))(v5, v2);
    }
  }

  sub_267B17910();
  sub_267AEC278(&qword_280211600, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  result = sub_267B16DF0();
  __break(1u);
  return result;
}

double sub_267AFA6C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MessageView(0);
  v5 = a1 + *(v4 + 20);
  if (*(v5 + 24))
  {
    v7 = *(v5 + 16);
  }

  else
  {
    v7 = *(a1 + *(v4 + 32));
  }

  sub_267ADCFA4();

  sub_267B17340();
  sub_267B17080();
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  return result;
}

double sub_267AFA7C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MessageView(0);
  v5 = a1 + *(v4 + 20);
  if (*(v5 + 40))
  {
    v7 = *(v5 + 32);
  }

  else
  {
    v7 = *(a1 + *(v4 + 36));
  }

  sub_267ADCFA4();

  sub_267B17340();
  sub_267B17080();
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  return result;
}

uint64_t sub_267AFA8D0@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_267B17000();
  MEMORY[0x28223BE20](v4 - 8);
  sub_267B17010();
  v23 = sub_267B17330();
  v24 = v5;
  v7 = v6;
  v22 = v8;
  sub_267B16FF0();
  sub_267B16FE0();
  sub_267B17520();
  sub_267B16FC0();

  sub_267B16FE0();
  sub_267B16FD0();
  sub_267B16FE0();
  sub_267B17020();
  v9 = sub_267B17330();
  v11 = v10;
  v13 = v12;
  sub_267B170B0();
  v14 = sub_267B17310();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_267AEC140(v9, v11, v13 & 1);

  *a3 = v23;
  *(a3 + 8) = v7;
  *(a3 + 16) = v22 & 1;
  *(a3 + 24) = v24;
  *(a3 + 32) = v14;
  *(a3 + 40) = v16;
  *(a3 + 48) = v18 & 1;
  *(a3 + 56) = v20;
  sub_267AFB658(v23, v7, v22 & 1);

  sub_267AFB658(v14, v16, v18 & 1);

  sub_267AEC140(v14, v16, v18 & 1);

  sub_267AEC140(v23, v7, v22 & 1);
}

uint64_t sub_267AFAB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267AFABA4()
{
  v1 = type metadata accessor for MessageView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[5];

  v7 = type metadata accessor for WidgetMessage(0);
  v8 = *(v7 + 36);
  sub_267B16530();
  OUTLINED_FUNCTION_0();
  (*(v9 + 8))(v6 + v8);
  v10 = *(v7 + 56);
  v11 = sub_267B16500();
  if (!__swift_getEnumTagSinglePayload(v6 + v10, 1, v11))
  {
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_2(v1[8]);

  OUTLINED_FUNCTION_3_2(v1[9]);

  OUTLINED_FUNCTION_3_2(v1[10]);

  v12 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802111D8, &qword_267B1A450);
  OUTLINED_FUNCTION_0();
  (*(v13 + 8))(v5 + v12);
  OUTLINED_FUNCTION_3_2(v1[12]);

  OUTLINED_FUNCTION_3_2(v1[13]);

  OUTLINED_FUNCTION_3_2(v1[14]);

  v14 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E10, &unk_267B19D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_267B17030();
    OUTLINED_FUNCTION_0();
    (*(v15 + 8))(v5 + v14);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_267AFAEA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267AFAF04()
{
  v1 = *(type metadata accessor for MessageView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_267AFA428(v2);
}

uint64_t sub_267AFAFAC(uint64_t a1)
{
  v2 = sub_267B17530();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_267B16E30();
}

uint64_t sub_267AFB0D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211300, &qword_267B1A620);
  MEMORY[0x28223BE20](v2 - 8);
  sub_267AEBA8C(a1, &v5 - v3, &qword_280211300, &qword_267B1A620);
  return sub_267B16F10();
}

unint64_t sub_267AFB17C()
{
  result = qword_280211298;
  if (!qword_280211298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211268, &qword_267B1A510);
    sub_267AFB514(&qword_2802112A0, &qword_2802112A8, &qword_267B1A5D0, sub_267AFB234);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211298);
  }

  return result;
}

unint64_t sub_267AFB234()
{
  result = qword_2802112B0;
  if (!qword_2802112B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802112B8, &qword_267B1A5D8);
    sub_267AFB2EC();
    sub_267ADCE94(&qword_2802112D0, &qword_2802112D8, &qword_267B1A5E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802112B0);
  }

  return result;
}

unint64_t sub_267AFB2EC()
{
  result = qword_2802112C0;
  if (!qword_2802112C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211280, &qword_267B1A588);
    sub_267AFB3A4();
    sub_267ADCE94(&qword_2802108F0, &qword_2802108F8, &qword_267B18B20, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802112C0);
  }

  return result;
}

unint64_t sub_267AFB3A4()
{
  result = qword_2802112C8;
  if (!qword_2802112C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211278, &qword_267B1A520);
    sub_267ADCE94(&qword_280210E78, &qword_280210E58, &qword_267B19D88, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802112C8);
  }

  return result;
}

unint64_t sub_267AFB45C()
{
  result = qword_2802112E8;
  if (!qword_2802112E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211258, &qword_267B1A500);
    sub_267AFB514(&qword_2802112F0, &qword_280211288, &qword_267B1A590, sub_267AFB2EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802112E8);
  }

  return result;
}

uint64_t sub_267AFB514(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_267ADCE94(&qword_2802112E0, &qword_280211290, &qword_267B1A598, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267AFB5C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267B16E90();
  *a1 = result;
  return result;
}

uint64_t objectdestroy_18Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_267AFB658(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_267AFB668()
{
  result = qword_280211378;
  if (!qword_280211378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211368, &qword_267B1A6D8);
    sub_267AFB45C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211378);
  }

  return result;
}

unint64_t sub_267AFB6EC()
{
  result = qword_280211380;
  if (!qword_280211380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211270, &qword_267B1A518);
    sub_267AFB17C();
    sub_267AFB45C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211380);
  }

  return result;
}

unint64_t sub_267AFB778()
{
  result = qword_2802113D8;
  if (!qword_2802113D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802113C8, &qword_267B1A728);
    sub_267AFB17C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802113D8);
  }

  return result;
}

uint64_t sub_267AFB7FC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211210, &qword_267B1A4C0);
  OUTLINED_FUNCTION_1_5();
  sub_267ADCE94(v0, &qword_280211210, &qword_267B1A4C0, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_267AFB8A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_267AFB8E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_267AFB958()
{
  objc_allocWithZone(type metadata accessor for RecipientViewController_Phone());
  sub_267AFC1B0(v0, v2);
  return sub_267AFCC1C(v0);
}

uint64_t sub_267AFB9A4(void *a1)
{
  v2 = v1;
  v4 = sub_267B176B0();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_267B176D0();
  OUTLINED_FUNCTION_0_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280210880 != -1)
  {
    swift_once();
  }

  v15 = sub_267B16BA0();
  __swift_project_value_buffer(v15, static Logger.siriMail);
  v16 = sub_267B16B80();
  v17 = sub_267B17AB0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_267ADA000, v16, v17, "RecipientTextView.updateUIViewController(_:context:)", v18, 2u);
    MEMORY[0x26D600E60](v18, -1, -1);
  }

  sub_267AFC0C8();
  v19 = sub_267B17AC0();
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  memcpy((v20 + 24), v2, 0x68uLL);
  aBlock[4] = sub_267AFC18C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_267AFBDE8;
  aBlock[3] = &block_descriptor;
  v21 = _Block_copy(aBlock);
  v22 = a1;
  sub_267AFC1B0(v2, v26);

  sub_267B176C0();
  v26[0] = MEMORY[0x277D84F90];
  sub_267AFC5D4(&unk_280211650, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802113F8, &qword_267B1A890);
  sub_267AFC1E8();
  sub_267B17B30();
  MEMORY[0x26D600640](0, v14, v9, v21);
  _Block_release(v21);

  (*(v6 + 8))(v9, v4);
  return (*(v11 + 8))(v14, v25);
}

void sub_267AFBD18(uint64_t a1, uint64_t a2)
{
  sub_267AFC6F8();
  v4 = v3;
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211400, &qword_267B1ABF0);
  MEMORY[0x26D600130](&v7);
  v6 = sub_267AFC3C0(v4, v7);

  if ((v6 & 1) == 0)
  {
    v8 = *(a2 + 64);
    v9 = *(a2 + 80);
    MEMORY[0x26D600130](&v7, v5);
    sub_267AFC8E4(v7);
  }
}

uint64_t sub_267AFBDE8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_267AFBEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_267AFC61C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_267AFBF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_267AFC61C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_267AFBFBC(uint64_t a1)
{
  sub_267AFC61C();
  sub_267B17120();
  __break(1u);
}

unint64_t sub_267AFBFE8()
{
  result = qword_2802113E8;
  if (!qword_2802113E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802113E8);
  }

  return result;
}

uint64_t sub_267AFC03C()
{
  v1 = [objc_opt_self() stringFromContact:v0 style:0];
  if (!v1)
  {
    v1 = [v0 givenName];
  }

  v2 = sub_267B17980();

  return v2;
}

unint64_t sub_267AFC0C8()
{
  result = qword_2802113F0;
  if (!qword_2802113F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802113F0);
  }

  return result;
}

uint64_t sub_267AFC10C()
{

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_267AFC1E8()
{
  result = qword_280211660;
  if (!qword_280211660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802113F8, &qword_267B1A890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211660);
  }

  return result;
}

uint64_t sub_267AFC24C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetMessage(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_267AFC670(v13, v10);
        sub_267AFC670(v14, v7);
        v16 = static WidgetMessage.__derived_struct_equals(_:_:)();
        sub_267AEB1F8(v7);
        sub_267AEB1F8(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_267AFC3C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_267B168C0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_267AFC5D4(&qword_280211408, MEMORY[0x277D5CA58], MEMORY[0x277D5CA68]);
    v21 = sub_267B17950();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_267AFC5D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267AFC61C()
{
  result = qword_280211410;
  if (!qword_280211410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211410);
  }

  return result;
}

uint64_t sub_267AFC670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267AFC6D4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

void sub_267AFC6F8()
{
  OUTLINED_FUNCTION_11_2();
  v18 = sub_267B168C0();
  OUTLINED_FUNCTION_0_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v6 = v5 - v4;
  v7 = sub_267AFFF28(*(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeView));
  if (v7)
  {
    v8 = sub_267AFFA70(v7);

    v9 = sub_267AFC6D4(v8);
    if (!v9)
    {
LABEL_11:

      OUTLINED_FUNCTION_10_2();
      return;
    }

    v10 = v9;
    v19 = MEMORY[0x277D84F90];
    sub_267ADF1AC(0, v9 & ~(v9 >> 63), 0);
    if ((v10 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v17 = v8 & 0xC000000000000001;
      v12 = v8;
      do
      {
        if (v17)
        {
          v13 = MEMORY[0x26D6006F0](v11, v8);
        }

        else
        {
          v13 = *(v8 + 8 * v11 + 32);
        }

        v14 = v13;
        sub_267AFCB5C();

        v16 = *(v19 + 16);
        v15 = *(v19 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_267ADF1AC((v15 > 1), v16 + 1, 1);
        }

        ++v11;
        *(v19 + 16) = v16 + 1;
        (*(v2 + 32))(v19 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v16, v6, v18);
        v8 = v12;
      }

      while (v10 != v11);
      goto LABEL_11;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_267AFC8E4(uint64_t a1)
{
  OUTLINED_FUNCTION_11_2();
  v3 = v2;
  v4 = sub_267B168C0();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v28 = v9 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeView);
  v11 = *(v3 + 16);
  if (v11)
  {
    v27 = *(v1 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeView);
    v34 = MEMORY[0x277D84F90];
    sub_267ADF204(0, v11, 0);
    v12 = 0;
    v13 = v34;
    v31 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v30 = v3;
    v29 = (v6 + 8);
    v14 = v28;
    while (v12 < *(v3 + 16))
    {
      v15 = v6;
      (*(v6 + 16))(v14, v31 + *(v6 + 72) * v12, v4);
      v16 = sub_267B168B0();
      v18 = v17;
      v19 = sub_267B168A0();
      v21 = v20;
      v22 = objc_allocWithZone(MEMORY[0x277CFBCA0]);
      v23 = sub_267AFFBF4(0, v16, v18, v19, v21, 0);
      if (!v23)
      {
        goto LABEL_12;
      }

      v24 = v23;
      v33 = sub_267B0033C(0, &qword_2802115F8, 0x277CFBCA0);
      *&v32 = v24;
      (*v29)(v14, v4);
      v34 = v13;
      v26 = *(v13 + 16);
      v25 = *(v13 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_267ADF204((v25 > 1), v26 + 1, 1);
        v14 = v28;
        v13 = v34;
      }

      ++v12;
      *(v13 + 16) = v26 + 1;
      sub_267AFFCE0(&v32, (v13 + 32 * v26 + 32));
      v3 = v30;
      v6 = v15;
      if (v11 == v12)
      {

        v10 = v27;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
LABEL_10:
    sub_267B001B4(v13, v10, MEMORY[0x277D84F70] + 8, &selRef_setRecipients_);
    OUTLINED_FUNCTION_10_2();
  }
}

uint64_t sub_267AFCB5C()
{
  v1 = v0;
  v2 = [v0 contact];
  if (v2)
  {
    v3 = v2;
    v4 = sub_267AFC03C();
    v6 = v5;
  }

  else
  {
    v4 = sub_267AFFF84(v0, &selRef_displayString);
    v6 = v7;
  }

  v8 = sub_267AFFF84(v1, &selRef_address);
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v8 = v4;
    v9 = v6;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2821BC300](v8, v9, v10, v11);
}

void *sub_267AFCC1C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeView;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for ComposeRecipientTextView()) init];
  *&v1[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeViewHeightConstraint] = 0;
  if (sub_267AFC6D4(MEMORY[0x277D84F90]))
  {
    v5 = sub_267AFFCF0(MEMORY[0x277D84F90]);
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  *&v1[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_cancellables] = v5;
  v6 = OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableViewController;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277CFBC80]) init];
  v7 = OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableView;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x277D75B40]) init];
  *&v1[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableViewHeightConstraint] = 0;
  v8 = [objc_allocWithZone(MEMORY[0x277CFBC98]) initWithAutocompleteSearchType_];
  if (v8)
  {
    *&v1[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_searchManager] = v8;
    v1[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_foundSearchResults] = 0;
    *&v1[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_currentSearchTaskID] = 0;
    memcpy(&v1[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container], a1, 0x68uLL);
    sub_267AFC1B0(a1, v20);
    v19.receiver = v1;
    v19.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
    v10 = *(v9 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_searchManager);
    v11 = v9;
    [v10 setSearchTypes_];
    v12 = a1[11];
    if (v12)
    {
      v13 = v12;
      v14 = sub_267B178D0();

      v20[0] = v14;
      OUTLINED_FUNCTION_9_1();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211608, &qword_267B1A8F0);
      sub_267ADCE94(&qword_280211610, &qword_280211608, &qword_267B1A8F0, MEMORY[0x277CBCD90]);
      sub_267B16BF0();

      swift_beginAccess();
      sub_267B16BB0();
      swift_endAccess();

      sub_267B0007C(a1);

      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  sub_267B17910();
  OUTLINED_FUNCTION_0_4();
  v18 = sub_267B00258(v16, v17, MEMORY[0x277D63F50]);
  result = OUTLINED_FUNCTION_3_3(v18);
  __break(1u);
  return result;
}

void sub_267AFCF04(uint64_t a1, uint64_t a2)
{
  v3 = sub_267B178E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v6, a1, v3);
  if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D63F38])
  {
    (*(v4 + 96))(v6, v3);
    if (*v6 == 4)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        v9 = *(Strong + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeView);

        [v9 resignFirstResponder];
      }
    }
  }

  else
  {
    (*(v4 + 8))(v6, v3);
  }
}

void sub_267AFD098()
{
  v1 = OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for ComposeRecipientTextView()) init];
  *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeViewHeightConstraint) = 0;
  if (sub_267AFC6D4(MEMORY[0x277D84F90]))
  {
    v2 = sub_267AFFCF0(MEMORY[0x277D84F90]);
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_cancellables) = v2;
  v3 = OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableViewController;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277CFBC80]) init];
  v4 = OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D75B40]) init];
  *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableViewHeightConstraint) = 0;
  v5 = [objc_allocWithZone(MEMORY[0x277CFBC98]) initWithAutocompleteSearchType_];
  if (!v5)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_searchManager) = v5;
  *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_foundSearchResults) = 0;
  *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_currentSearchTaskID) = 0;
  static Logger.logAndCrash(_:file:line:)(0xD000000000000025, 0x8000000267B23310, "/Library/Caches/com.apple.xbs/Sources/SiriMail/SiriMailUI/View/SendMail/Interactive/RecipientTextView/RecipientViewController_Phone.swift", 137, 2, 73);
  __break(1u);
}

void sub_267AFD1F4()
{
  OUTLINED_FUNCTION_11_2();
  ObjectType = swift_getObjectType();
  v2 = sub_267B168C0();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v98 = v7 - v6;
  v109.receiver = v0;
  v109.super_class = ObjectType;
  objc_msgSendSuper2(&v109, sel_viewDidLoad);
  v8 = *&v0[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeView];
  v9 = &off_279C2B000;
  [v8 setDelegate_];
  v99 = v0;
  v10 = &v0[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container];
  v11 = sub_267B17960();
  [v8 setLabel_];

  v12 = [objc_opt_self() preferredFontForTextStyle_];
  sub_267ADD088(v12);
  [v8 setSeparatorHidden_];
  [v8 setBackgroundColor_];
  v106 = *(v10 + 8);
  v107 = *(v10 + 72);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211400, &qword_267B1ABF0);
  MEMORY[0x26D600130](&v104, v13);
  v14 = v104;
  v15 = *(v104 + 16);
  if (v15)
  {
    v97 = v8;
    *&v104 = MEMORY[0x277D84F90];
    sub_267ADF204(0, v15, 0);
    v16 = 0;
    v17 = v104;
    v102 = v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v101 = v14;
    v100 = (v4 + 8);
    v18 = v98;
    while (v16 < *(v14 + 16))
    {
      v19 = v4;
      (*(v4 + 16))(v18, v102 + *(v4 + 72) * v16, v2);
      v20 = sub_267B168B0();
      v22 = v21;
      v23 = sub_267B168A0();
      v25 = v24;
      v26 = objc_allocWithZone(MEMORY[0x277CFBCA0]);
      v27 = sub_267AFFBF4(0, v20, v22, v23, v25, 0);
      if (!v27)
      {
        goto LABEL_25;
      }

      v28 = v27;
      v108 = sub_267B0033C(0, &qword_2802115F8, 0x277CFBCA0);
      v106 = v28;
      (*v100)(v18, v2);
      *&v104 = v17;
      v30 = *(v17 + 16);
      v29 = *(v17 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_267ADF204((v29 > 1), v30 + 1, 1);
        v18 = v98;
        v17 = v104;
      }

      ++v16;
      *(v17 + 16) = v30 + 1;
      sub_267AFFCE0(&v106, (v17 + 32 * v30 + 32));
      v14 = v101;
      v4 = v19;
      if (v15 == v16)
      {

        v8 = v97;
        v9 = &off_279C2B000;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v17 = MEMORY[0x277D84F90];
LABEL_10:
  sub_267B001B4(v17, v8, MEMORY[0x277D84F70] + 8, &selRef_setRecipients_);
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v31 = [v99 view];
  if (!v31)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v32 = v31;
  [v31 addSubview_];

  v33 = *&v99[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableViewController];
  [v33 v9[103]];
  [v99 addChildViewController_];
  v34 = [v33 tableView];
  if (!v34)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v35 = OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableView;
  v36 = *&v99[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableView];
  *&v99[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableView] = v34;
  v37 = v34;

  v38 = [objc_opt_self() clearColor];
  [v37 setBackgroundColor_];

  [*&v99[v35] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v99[v35] setKeyboardDismissMode_];
  [*&v99[v35] setEstimatedRowHeight_];
  [*&v99[v35] setEstimatedSectionHeaderHeight_];
  [*&v99[v35] setEstimatedSectionFooterHeight_];
  [*&v99[v35] setHidden_];
  v39 = [v99 view];
  if (!v39)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v40 = v39;
  [v39 addSubview_];

  sub_267B0033C(0, &qword_280211680, 0x277CCAAD0);
  v108 = type metadata accessor for ComposeRecipientTextView();
  v106 = v8;
  sub_267B0033C(0, &qword_280211688, 0x277CFBCB0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v104 = 0u;
  v105 = 0u;
  v42 = v8;
  [ObjCClassFromMetadata preferredHeight];
  v44 = sub_267AFDBF4(&v106, 8, 0, &v104, 0, 1.0, v43);
  v45 = OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeViewHeightConstraint;
  v46 = *&v99[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeViewHeightConstraint];
  *&v99[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeViewHeightConstraint] = v44;

  v47 = *&v99[v35];
  v108 = sub_267B0033C(0, &qword_280211690, 0x277D75B40);
  v106 = v47;
  v104 = 0u;
  v105 = 0u;
  v48 = v47;
  v49 = sub_267AFDBF4(&v106, 8, 0, &v104, 0, 1.0, 0.0);
  v50 = OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableViewHeightConstraint;
  v51 = *&v99[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableViewHeightConstraint];
  *&v99[OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableViewHeightConstraint] = v49;

  v53 = *&v99[v45];
  if (!v53)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  LODWORD(v52) = 1144750080;
  [v53 setPriority_];
  v103 = v50;
  v55 = *&v99[v50];
  if (!v55)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  LODWORD(v54) = 1132068864;
  [v55 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211698, &unk_267B1A920);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_267B1A8A0;
  v57 = [v42 topAnchor];
  v58 = OUTLINED_FUNCTION_12_1();
  if (!v58)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v59 = v58;
  v60 = [v58 topAnchor];

  v61 = [v15 constraintEqualToAnchor_];
  *(v56 + 32) = v61;
  v62 = [v42 leadingAnchor];
  v63 = OUTLINED_FUNCTION_12_1();
  if (!v63)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v64 = v63;
  v65 = [v63 leadingAnchor];

  v66 = [v15 constraintEqualToAnchor_];
  *(v56 + 40) = v66;
  v67 = [v42 trailingAnchor];
  v68 = OUTLINED_FUNCTION_12_1();
  if (!v68)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v69 = v68;
  v70 = [v68 trailingAnchor];

  v71 = [v15 constraintEqualToAnchor_];
  *(v56 + 48) = v71;
  v72 = *&v99[v45];
  if (!v72)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  *(v56 + 56) = v72;
  v73 = *&v99[v35];
  v74 = v72;
  v75 = [v73 topAnchor];
  v76 = [v42 bottomAnchor];
  v77 = [v75 constraintEqualToAnchor_];

  *(v56 + 64) = v77;
  v78 = [*&v99[v35] leadingAnchor];
  v79 = [v99 view];
  if (!v79)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v80 = v79;
  v81 = [v79 leadingAnchor];

  v82 = OUTLINED_FUNCTION_13_1();
  *(v56 + 72) = v82;
  v83 = [*&v99[v35] trailingAnchor];
  v84 = [v99 view];
  if (!v84)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v85 = v84;
  v86 = [v84 trailingAnchor];

  v87 = OUTLINED_FUNCTION_13_1();
  *(v56 + 80) = v87;
  v88 = [*&v99[v35] bottomAnchor];
  v89 = [v99 view];
  if (!v89)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v90 = v89;
  v91 = [v89 bottomAnchor];

  v92 = OUTLINED_FUNCTION_13_1();
  *(v56 + 88) = v92;
  v93 = *&v99[v103];
  if (v93)
  {
    v94 = objc_opt_self();
    *(v56 + 96) = v93;
    v95 = v93;
    v96 = sub_267B179E0();

    [v94 activateConstraints_];

    OUTLINED_FUNCTION_10_2();
    return;
  }

LABEL_38:
  __break(1u);
}

id sub_267AFDBF4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, double a6, double a7)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_267B17D40();
  v15 = a4[3];
  if (v15)
  {
    v16 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
    v24 = a5;
    v25 = a2;
    v17 = a3;
    v18 = *(v15 - 8);
    MEMORY[0x28223BE20](v16);
    v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v20);
    v21 = sub_267B17D40();
    (*(v18 + 8))(v20, v15);
    a3 = v17;
    a5 = v24;
    a2 = v25;
    __swift_destroy_boxed_opaque_existential_1(a4);
  }

  else
  {
    v21 = 0;
  }

  v22 = [swift_getObjCClassFromMetadata() constraintWithItem:v14 attribute:a2 relatedBy:a3 toItem:v21 attribute:a5 multiplier:a6 constant:a7];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v22;
}

id sub_267AFDE10()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_viewDidLayoutSubviews);
  return sub_267AFDE4C();
}

id sub_267AFDE4C()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  [result bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  Width = CGRectGetWidth(v18);
  result = [v0 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v12 = result;
  [result systemLayoutSizeFittingSize_];
  v14 = v13;
  v16 = v15;

  return [v0 setPreferredContentSize_];
}

void sub_267AFDF90(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableView;
  [*(v1 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableView) setHidden_];
  [*(v1 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeView) setSeparatorHidden_];
  sub_267B000D0(a1, *(v1 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableViewController));
  v4 = *(v1 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableViewHeightConstraint);
  if (v4)
  {
    v5 = *(v1 + v3);
    v6 = v4;
    [v5 contentSize];
    [v6 setConstant_];

    [*(v1 + v3) setNeedsUpdateConstraints];
    v8 = *(v1 + v3);

    [v8 isHidden];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211630, &qword_267B1A900);
    sub_267B175D0();
  }

  else
  {
    __break(1u);
  }
}

id sub_267AFE158()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_267AFE2D0()
{
  v1 = v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container;
  OUTLINED_FUNCTION_17_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211630, &qword_267B1A900);
  OUTLINED_FUNCTION_14_1(v2, v3, v4, v5, v6, v7, v8, v9, v15, SWORD2(v15), SBYTE6(v15), SHIBYTE(v15));
  v10 = *(v1 + 88);
  if (v10)
  {
    v11 = v10;
    sub_267B178A0();
  }

  else
  {
    sub_267B17910();
    OUTLINED_FUNCTION_0_4();
    v14 = sub_267B00258(v12, v13, MEMORY[0x277D63F50]);
    OUTLINED_FUNCTION_3_3(v14);
    __break(1u);
  }
}

void sub_267AFE3D8(uint64_t a1, void *a2)
{
  v4 = v2 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container;
  OUTLINED_FUNCTION_17_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211630, &qword_267B1A900);
  OUTLINED_FUNCTION_14_1(v5, v6, v7, v8, v9, v10, v11, v12, v23, SWORD2(v23), SBYTE6(v23), SHIBYTE(v23));
  v13 = *(v4 + 88);
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = v13;
  sub_267B178A0();

  v15 = [a2 emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211678, &qword_267B1A918);
  v16 = sub_267B179F0();

  if (!sub_267AFC6D4(v16))
  {

    return;
  }

  if ((v16 & 0xC000000000000001) == 0)
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v17 = *(v16 + 32);
      goto LABEL_6;
    }

    __break(1u);
LABEL_12:
    sub_267B17910();
    OUTLINED_FUNCTION_0_4();
    v22 = sub_267B00258(v20, v21, MEMORY[0x277D63F50]);
    OUTLINED_FUNCTION_3_3(v22);
    __break(1u);
    return;
  }

  v17 = MEMORY[0x26D6006F0](0, v16);
LABEL_6:
  v18 = v17;

  v19 = [v18 value];

  if (v19)
  {
    sub_267B17970();
  }
}

void sub_267AFE63C(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = v2 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container;
  v6 = *(v2 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container + 48);
  v7 = *(v2 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container + 56);
  *&v21 = *(v2 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container + 40);
  *(&v21 + 1) = v6;
  LOBYTE(v22) = v7;
  LOBYTE(v19) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211630, &qword_267B1A900);
  sub_267B175D0();
  v8 = *(v5 + 88);
  if (v8)
  {
    v9 = v8;
    sub_267B178A0();

    if ([a2 value])
    {
      sub_267B17B20();
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }

    v21 = v19;
    v22 = v20;
    if (*(&v20 + 1))
    {
      if (swift_dynamicCast())
      {
        v10 = *(v3 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeView);
        v11 = [a2 contact];
        v12 = objc_allocWithZone(MEMORY[0x277CFBCA0]);
        v13 = sub_267AFFB68(v11, v17, v18, 0);
        [v10 addRecipient_];
      }
    }

    else
    {
      sub_267B002D4(&v21);
    }
  }

  else
  {
    sub_267B17910();
    OUTLINED_FUNCTION_0_4();
    v16 = sub_267B00258(v14, v15, MEMORY[0x277D63F50]);
    OUTLINED_FUNCTION_3_3(v16);
    __break(1u);
  }
}

void sub_267AFE870()
{
  v1 = *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeViewHeightConstraint);
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_composeView);
  v3 = v1;
  v4 = [v2 textView];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 contentSize];
  v7 = v6;

  [v3 setConstant_];

  [v2 setNeedsUpdateConstraints];
}

void sub_267AFEA24()
{
  OUTLINED_FUNCTION_11_2();
  v2 = v1;
  v4 = v3;
  sub_267B176B0();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v22 = sub_267B176D0();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  sub_267B0033C(0, &qword_2802113F0, 0x277D85C78);
  v12 = sub_267B17AC0();
  OUTLINED_FUNCTION_9_1();
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  v23[4] = v4;
  v23[5] = v13;
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_4_5(COERCE_DOUBLE(1107296256));
  v23[2] = v14;
  v23[3] = v2;
  v15 = _Block_copy(v23);
  v16 = v0;

  sub_267B176C0();
  v23[0] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6_3();
  sub_267B00258(v17, v18, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802113F8, &qword_267B1A890);
  OUTLINED_FUNCTION_7_4(&qword_280211660);
  OUTLINED_FUNCTION_8_2();
  sub_267B17B30();
  v19 = OUTLINED_FUNCTION_16_1();
  MEMORY[0x26D600640](v19);
  _Block_release(v15);

  v20 = OUTLINED_FUNCTION_15_1();
  v21(v20);
  (*(v7 + 8))(v11, v22);
  OUTLINED_FUNCTION_10_2();
}

void sub_267AFECE0(id a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    if (a3)
    {
      a3 = sub_267B17960();
    }

    v4 = a3;
    [a1 addAddress_];
  }

  else
  {
    __break(1u);
  }
}

id sub_267AFEDDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(MEMORY[0x277CFBCA0]);

  return sub_267AFFB68(0, a2, a3, 0);
}

void sub_267AFEEC8()
{
  OUTLINED_FUNCTION_11_2();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_267B176B0();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v23 = sub_267B176D0();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  if (v3)
  {
    sub_267AFF120(v5, v3);
    sub_267B0033C(0, &qword_2802113F0, 0x277D85C78);
    v13 = sub_267B17AC0();
    OUTLINED_FUNCTION_9_1();
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    v24[4] = sub_267B00224;
    v24[5] = v14;
    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_4_5(COERCE_DOUBLE(1107296256));
    v24[2] = v15;
    v24[3] = &block_descriptor_0;
    v16 = _Block_copy(v24);
    v17 = v1;

    sub_267B176C0();
    v24[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_6_3();
    sub_267B00258(v18, v19, MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802113F8, &qword_267B1A890);
    OUTLINED_FUNCTION_7_4(&qword_280211660);
    OUTLINED_FUNCTION_8_2();
    sub_267B17B30();
    v20 = OUTLINED_FUNCTION_16_1();
    MEMORY[0x26D600640](v20);
    _Block_release(v16);

    v21 = OUTLINED_FUNCTION_15_1();
    v22(v21);
    (*(v8 + 8))(v12, v23);
    OUTLINED_FUNCTION_10_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_267AFF120(uint64_t a1, unint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_foundSearchResults) = 0;
  v5 = *(v2 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_searchManager);
  v6 = OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_currentSearchTaskID;
  if (*(v2 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_currentSearchTaskID))
  {
    [*(v2 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_searchManager) cancelTaskWithID_];
    v7 = *(v2 + v6);
    *(v2 + v6) = 0;
  }

  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    *(v2 + v6) = sub_267B0014C(a1, a2, 0, v2, v5);

    MEMORY[0x2821F96F8]();
  }

  else
  {
    v9 = MEMORY[0x277D84F90];

    sub_267AFDF90(v9);
  }
}

uint64_t sub_267AFF208(uint64_t a1)
{
  sub_267AFC6F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211400, &qword_267B1ABF0);
  return sub_267B175D0();
}

void sub_267AFF374(uint64_t a1, void (*a2)(void))
{
  v3 = *(v2 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_container + 88);
  if (v3)
  {
    v8 = v3;
    a2();
  }

  else
  {
    sub_267B17910();
    OUTLINED_FUNCTION_0_4();
    v7 = sub_267B00258(v5, v6, MEMORY[0x277D63F50]);
    OUTLINED_FUNCTION_3_3(v7);
    __break(1u);
  }
}

void sub_267AFF488()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211630, &qword_267B1A900);
  OUTLINED_FUNCTION_14_1(v2, v3, v4, v5, v6, v7, v8, v9, *v16, *&v16[4], v16[6], 0);
  v10 = [objc_allocWithZone(MEMORY[0x277CBDC18]) init];
  [v10 setDelegate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211638, &qword_267B1A908);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_267B1A8B0;
  *(v11 + 32) = sub_267B17980();
  *(v11 + 40) = v12;
  sub_267B001B4(v11, v10, MEMORY[0x277D837D0], &selRef_setDisplayedPropertyKeys_);
  sub_267B0033C(0, &unk_280211640, 0x277CCAC30);
  v13 = sub_267B17A70();
  [v10 setPredicateForEnablingContact_];

  v14 = sub_267B17A70();
  [v10 setPredicateForSelectionOfContact_];

  v15 = sub_267B17A70();
  [v10 setPredicateForSelectionOfProperty_];

  [v1 presentViewController:v10 animated:1 completion:0];
}

uint64_t sub_267AFF6DC(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_foundSearchResults) = 1;
  if (a1 && (v2 = sub_267AFF748(a1)) != 0)
  {
    v3 = v2;
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
  }

  sub_267AFDF90(v3);
}

uint64_t sub_267AFF748(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_267B17BE0();
  v3 = a1 + 32;
  if (!v2)
  {
    return v6;
  }

  while (1)
  {
    sub_267AFFFE4(v3, v5);
    sub_267B0033C(0, &qword_2802115F8, 0x277CFBCA0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_267B17BC0();
    sub_267B17BF0();
    sub_267B17C00();
    sub_267B17BD0();
    v3 += 32;
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void sub_267AFF8D8()
{
  if ((*(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_foundSearchResults) & 1) == 0)
  {
    sub_267AFDF90(MEMORY[0x277D84F90]);
  }

  v1 = *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_currentSearchTaskID);
  *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_currentSearchTaskID) = 0;
}

void sub_267AFF9E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableViewHeightConstraint);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableView;
    v3 = *(v0 + OBJC_IVAR____TtC10SiriMailUI29RecipientViewController_Phone_resultsTableView);
    v4 = v1;
    [v3 contentSize];
    [v4 setConstant_];

    v6 = *(v0 + v2);

    [v6 setNeedsUpdateConstraints];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_267AFFA70(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v6 = MEMORY[0x277D84F90];
    sub_267B17BE0();
    v4 = a1 + 32;
    do
    {
      sub_267AFFFE4(v4, &v5);
      sub_267B0033C(0, &qword_2802115F8, 0x277CFBCA0);
      swift_dynamicCast();
      sub_267B17BC0();
      sub_267B17BF0();
      sub_267B17C00();
      sub_267B17BD0();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

id sub_267AFFB68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a3)
  {
    v8 = sub_267B17960();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithContact:a1 address:v8 kind:a4];

  return v9;
}

id sub_267AFFBF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (!a3)
  {
    v11 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v11 = sub_267B17960();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = sub_267B17960();

LABEL_6:
  v13 = [v7 initWithContact:a1 address:v11 displayString:v12 kind:a6];

  return v13;
}

unint64_t sub_267AFFCBC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

_OWORD *sub_267AFFCE0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_267AFFCF0(unint64_t a1)
{
  v1 = a1;
  if (sub_267AFC6D4(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211618, &qword_267B1A8F8);
    v2 = sub_267B17B40();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v18 = sub_267AFC6D4(v1);
  if (v18)
  {
    v3 = 0;
    v4 = v2 + 56;
    v16 = v1;
    v17 = v1 & 0xC000000000000001;
    v15 = v1 + 32;
    while (1)
    {
      sub_267AFFCBC(v3, v17 == 0, v1);
      if (v17)
      {
        result = MEMORY[0x26D6006F0](v3, v1);
        v6 = result;
      }

      else
      {
        v6 = *(v15 + 8 * v3);
      }

      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      sub_267B16BC0();
      sub_267B00258(&qword_280211620, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
      result = sub_267B17940();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_267B00258(&qword_280211628, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
        if (sub_267B17950())
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v13 = *(v2 + 16);
      v7 = __OFADD__(v13, 1);
      v14 = v13 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v14;
LABEL_17:
      v1 = v16;
      if (v3 == v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t sub_267AFFF28(void *a1)
{
  v1 = [a1 recipients];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267B179F0();

  return v3;
}

uint64_t sub_267AFFF84(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_267B17980();

  return v4;
}

uint64_t sub_267AFFFE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_267B00040()
{
  MEMORY[0x26D600F00](v0 + 16);
  OUTLINED_FUNCTION_9_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void sub_267B000D0(uint64_t a1, void *a2)
{
  sub_267B0033C(0, &qword_2802115F8, 0x277CFBCA0);
  v3 = sub_267B179E0();
  [a2 setRecipients_];
}

id sub_267B0014C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_267B17960();
  v9 = [a5 searchForText:v8 withAutocompleteFetchContext:a3 consumer:a4];

  return v9;
}

void sub_267B001B4(uint64_t a1, void *a2, uint64_t a3, SEL *a4)
{
  v6 = sub_267B179E0();

  [a2 *a4];
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_267B00258(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267B002A0()
{
  OUTLINED_FUNCTION_9_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_267B002D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211670, &qword_267B1A910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267B0033C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t OUTLINED_FUNCTION_3_3(uint64_t a1)
{

  return sub_267B16DF0();
}

uint64_t OUTLINED_FUNCTION_7_4(unint64_t *a1)
{
  v4 = MEMORY[0x277D83970];

  return sub_267ADCE94(a1, v1, v2, v4);
}

id OUTLINED_FUNCTION_12_1()
{

  return [v1 (v0 + 2808)];
}

id OUTLINED_FUNCTION_13_1()
{

  return [v0 (v2 + 3941)];
}

uint64_t OUTLINED_FUNCTION_14_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12)
{

  return sub_267B175D0();
}

uint64_t sub_267B00550(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211760, &qword_267B1A950);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210DB8, &unk_267B19E20);
      v10 = *(a3 + 44);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_267B00648(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211760, &qword_267B1A950);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210DB8, &unk_267B19E20);
      v10 = *(a4 + 44);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for SceneClientView(uint64_t a1)
{
  result = qword_280211768;
  if (!qword_280211768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267B00774(uint64_t a1)
{
  sub_267B00844(319);
  if (v1 <= 0x3F)
  {
    sub_267AEB810();
    if (v2 <= 0x3F)
    {
      sub_267B008D8(319);
      if (v3 <= 0x3F)
      {
        sub_267AE0D9C(319);
        if (v4 <= 0x3F)
        {
          sub_267AEB8A4(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_267B00844(uint64_t a1)
{
  if (!qword_280211778)
  {
    type metadata accessor for SiriMailModel(255);
    sub_267B0656C(&qword_280211780, type metadata accessor for SiriMailModel, &protocol conformance descriptor for SiriMailModel);
    v1 = sub_267B16DA0();
    if (!v2)
    {
      atomic_store(v1, &qword_280211778);
    }
  }
}

void sub_267B008D8(uint64_t a1)
{
  if (!qword_280211788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211790, &qword_267B1A970);
    sub_267B05AE0(&qword_280211798, &qword_2802117A0, MEMORY[0x277D5C9F0], MEMORY[0x277D84F48]);
    v1 = sub_267B16C50();
    if (!v2)
    {
      atomic_store(v1, &qword_280211788);
    }
  }
}

uint64_t sub_267B0099C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211400, &qword_267B1ABF0);
  sub_267AF3DE0(&qword_2802118E8, &qword_2802118F0, &qword_267B1ABF8, MEMORY[0x277D83960]);
  sub_267B175F0();
  sub_267B17600();
  return 1;
}

uint64_t sub_267B00A78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E90, &qword_267B19E00);
  sub_267B17560();
  if (v1 != 1)
  {
    return 0;
  }

  sub_267B17560();
  sub_267B17560();
  return v1;
}

uint64_t sub_267B00B40@<X0>(uint64_t a2@<X8>)
{
  sub_267B17550();
  OUTLINED_FUNCTION_11_3();
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  OUTLINED_FUNCTION_7_5(v5, v6, v7, v8, v9, v10, v11, v12, v47, *v50, *&v50[4], v50[6], 1, v59);
  OUTLINED_FUNCTION_11_3();
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  OUTLINED_FUNCTION_7_5(v15, v16, v17, v18, v19, v20, v21, v22, v48, v51, v53, v55, v57, v60);
  OUTLINED_FUNCTION_11_3();
  *(a2 + 48) = v23;
  *(a2 + 56) = v24;
  OUTLINED_FUNCTION_7_5(v25, v26, v27, v28, v29, v30, v31, v32, v49, v52, v54, v56, v58, v61);
  OUTLINED_FUNCTION_11_3();
  *(a2 + 64) = v33;
  *(a2 + 72) = v34;
  v35 = type metadata accessor for SceneClientView(0);
  sub_267B16850();
  OUTLINED_FUNCTION_3_4();
  sub_267B0656C(v36, v37, MEMORY[0x277D5C9F0]);
  sub_267B16C40();
  v38 = (a2 + *(v35 + 40));
  sub_267B17910();
  OUTLINED_FUNCTION_5_4();
  sub_267B0656C(v39, v40, MEMORY[0x277D63F50]);
  *v38 = sub_267B16E00();
  v38[1] = v41;
  v42 = *(v35 + 44);
  *(a2 + v42) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210898, &qword_267B19C50);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SiriMailModel(0);
  OUTLINED_FUNCTION_4_6();
  sub_267B0656C(v43, v44, &protocol conformance descriptor for SiriMailModel);
  result = sub_267B16D70();
  *a2 = result;
  *(a2 + 8) = v46;
  return result;
}

uint64_t sub_267B00CEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v83 = a1;
  sub_267B16860();
  OUTLINED_FUNCTION_0_0();
  v86 = v4;
  v87 = v3;
  v5 = MEMORY[0x28223BE20](v3);
  v85 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v84 = &v64 - v7;
  v8 = type metadata accessor for SceneClientView(0);
  v9 = v8 - 8;
  v81 = *(v8 - 8);
  v80 = *(v81 + 64);
  MEMORY[0x28223BE20](v8);
  v79 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v11);
  v78 = &v64 - v12;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802117A8, &qword_267B1A9C8);
  OUTLINED_FUNCTION_0_0();
  v71 = v13;
  v70 = *(v14 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_3();
  v69 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v64 - v18;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802117B0, &qword_267B1A9D0);
  OUTLINED_FUNCTION_0_0();
  v75 = v20;
  v74 = *(v21 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10_3();
  v73 = v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v64 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802117B8, &qword_267B1A9D8);
  OUTLINED_FUNCTION_16_0(v27);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v28);
  v30 = &v64 - v29;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802117C0, &qword_267B1A9E0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v31);
  v33 = &v64 - v32;
  *v30 = sub_267B17050();
  *(v30 + 1) = 0;
  v30[16] = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802117C8, &qword_267B1A9E8);
  sub_267B01580(v2, &v30[*(v34 + 44)]);
  v77 = *(v2 + 8);
  v88 = v2;
  type metadata accessor for SiriMailModel(0);
  OUTLINED_FUNCTION_4_6();
  sub_267B0656C(v35, v36, &protocol conformance descriptor for SiriMailModel);
  sub_267B16D80();
  swift_getKeyPath();
  v65 = v26;
  sub_267B16D90();

  v67 = *(v9 + 44);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211760, &qword_267B1A950);
  sub_267B16C20();
  v37 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802117D0, &qword_267B1AA18) + 36)];
  MEMORY[0x26D600130](v68);
  v38 = v69;
  sub_267AF2D08(v19, v69, &qword_2802117A8, &qword_267B1A9C8);
  v39 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v40 = swift_allocObject();
  sub_267AF3EE4(v38, v40 + v39, &qword_2802117A8, &qword_267B1A9C8);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802117D8, &qword_267B1AA20);
  v42 = &v37[*(v41 + 36)];
  *v42 = sub_267B05528;
  v42[1] = v40;
  sub_267AF2D08(v30, v33, &qword_2802117B8, &qword_267B1A9D8);
  v43 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802117E0, &unk_267B1AA28) + 36)];
  sub_267B16C30();
  sub_267AF3430(v19, &qword_2802117A8);
  sub_267AF3430(v30, &qword_2802117B8);
  v44 = v73;
  sub_267AF3EE4(v65, v73, &qword_2802117B0, &qword_267B1A9D0);
  v45 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v46 = swift_allocObject();
  sub_267AF3EE4(v44, v46 + v45, &qword_2802117B0, &qword_267B1A9D0);
  v47 = &v43[*(v41 + 36)];
  *v47 = sub_267B05724;
  v47[1] = v46;
  v48 = &v33[*(v72 + 36)];
  *v48 = sub_267B04A88;
  v48[1] = 0;
  v48[2] = 0;
  v48[3] = 0;
  v49 = v88;
  v50 = v78;
  sub_267B16C10();
  v51 = v79;
  sub_267B057D4(v49, v79);
  v52 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v53 = swift_allocObject();
  sub_267B0583C(v51, v53 + v52);
  sub_267B058B8();
  sub_267B05AE0(&qword_280211810, &qword_280211818, MEMORY[0x277D5C9F8], MEMORY[0x277D84F50]);
  v54 = v83;
  sub_267B17450();

  sub_267AF3430(v50, &qword_280211790);
  sub_267AF3430(v33, &qword_2802117C0);
  sub_267B057D4(v88, v51);
  v55 = swift_allocObject();
  sub_267B0583C(v51, v55 + v52);
  v56 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211820, &qword_267B1AA38) + 36));
  *v56 = 0;
  v56[1] = 0;
  v56[2] = sub_267B05D7C;
  v56[3] = v55;
  swift_getKeyPath();
  swift_getKeyPath();
  v57 = v84;
  sub_267B16A50();

  v58 = v85;
  v59 = v86;
  v60 = v87;
  (*(v86 + 104))(v85, *MEMORY[0x277D5CA08], v87);
  v61 = v58;
  LOBYTE(v58) = sub_267B06980();
  v62 = *(v59 + 8);
  v62(v61, v60);
  v62(v57, v60);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211828, &unk_267B1AA88);
  *(v54 + *(result + 36)) = v58 & 1;
  return result;
}

uint64_t sub_267B01580@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v322 = a2;
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211838, &qword_267B1AA98);
  MEMORY[0x28223BE20](v321);
  v300 = (&v262 - v3);
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211840, &qword_267B1AAA0);
  MEMORY[0x28223BE20](v299);
  v291 = (&v262 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211848, &qword_267B1AAA8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v290 = &v262 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v289 = (&v262 - v8);
  v341 = sub_267B16850();
  v326 = *(v341 - 8);
  MEMORY[0x28223BE20](v341);
  v273 = &v262 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211850, &qword_267B1AAB0);
  v10 = MEMORY[0x28223BE20](v285);
  v280 = &v262 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v295 = &v262 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211858, &qword_267B1AAB8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v298 = &v262 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v297 = &v262 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211860, &qword_267B1AAC0);
  MEMORY[0x28223BE20](v17 - 8);
  v314 = (&v262 - v18);
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211868, &qword_267B1AAC8);
  MEMORY[0x28223BE20](v292);
  v315 = &v262 - v19;
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211870, &qword_267B1AAD0);
  v20 = MEMORY[0x28223BE20](v294);
  v296 = &v262 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v293 = &v262 - v23;
  MEMORY[0x28223BE20](v22);
  v316 = &v262 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211878, &qword_267B1AAD8);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v320 = &v262 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v319 = &v262 - v28;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211880, &qword_267B1AAE0);
  MEMORY[0x28223BE20](v334);
  v288 = (&v262 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211888, &qword_267B1AAE8);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v318 = &v262 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v317 = &v262 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v340 = &v262 - v36;
  MEMORY[0x28223BE20](v35);
  v346 = &v262 - v37;
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  v38 = MEMORY[0x28223BE20](v332);
  v272 = &v262 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v303 = &v262 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v275 = &v262 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v274 = &v262 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v301 = &v262 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v302 = &v262 - v49;
  MEMORY[0x28223BE20](v48);
  v329 = &v262 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802117A8, &qword_267B1A9C8);
  MEMORY[0x28223BE20](v51 - 8);
  v328 = &v262 - v52;
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211890, &qword_267B1AAF0);
  v336 = *(v333 - 8);
  v53 = MEMORY[0x28223BE20](v333);
  v279 = &v262 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x28223BE20](v53);
  v284 = &v262 - v56;
  MEMORY[0x28223BE20](v55);
  v337 = &v262 - v57;
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211898, &qword_267B1AAF8);
  v58 = MEMORY[0x28223BE20](v331);
  v277 = &v262 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x28223BE20](v58);
  v283 = &v262 - v61;
  MEMORY[0x28223BE20](v60);
  v313 = &v262 - v62;
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802118A0, &qword_267B1AB00);
  v63 = MEMORY[0x28223BE20](v330);
  v276 = &v262 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x28223BE20](v63);
  v278 = &v262 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v342 = &v262 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v281 = &v262 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v282 = &v262 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v312 = &v262 - v74;
  MEMORY[0x28223BE20](v73);
  v345 = &v262 - v75;
  v76 = *(a1 + 1);
  v77 = *(v76 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_toLabel + 8);
  v311 = *(v76 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_toLabel);
  v79 = *(a1 + 3);
  LOBYTE(v350[0]) = a1[16];
  v78 = LOBYTE(v350[0]);
  v350[1] = v79;

  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E90, &qword_267B19E00);
  sub_267B17580();
  v309 = __dst[1];
  v310 = __dst[0];
  LODWORD(v308) = LOBYTE(__dst[2]);
  v81 = *(a1 + 9);
  LODWORD(v287) = a1[64];
  LOBYTE(v350[0]) = v287;
  v286 = v81;
  v350[1] = v81;
  sub_267B17580();
  v306 = __dst[1];
  v307 = __dst[0];
  LODWORD(v305) = LOBYTE(__dst[2]);
  v82 = *a1;
  v83 = type metadata accessor for SiriMailModel(0);
  v84 = sub_267B0656C(&qword_280211780, type metadata accessor for SiriMailModel, &protocol conformance descriptor for SiriMailModel);
  *&v325 = v82;
  v335 = v76;
  v323 = v83;
  sub_267B16D80();
  swift_getKeyPath();
  v324 = v84;
  sub_267B16D90();

  v85 = __dst[0];
  v86 = sub_267B17910();
  v87 = sub_267B0656C(&qword_280211600, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  v304 = *&__dst[1];
  v344 = v86;
  v343 = v87;
  v88 = sub_267B16E00();
  v90 = v89;
  LODWORD(v338) = v78;
  LOBYTE(__dst[0]) = v78;
  v339 = v79;
  __dst[1] = v79;
  v327 = v80;
  sub_267B17560();
  v91 = v350[0];
  v350[0] = v311;
  v350[1] = v77;
  v350[2] = v310;
  v350[3] = v309;
  LOBYTE(v350[4]) = v308;
  v350[5] = v307;
  v92 = v341;
  v350[6] = v306;
  LOBYTE(v350[7]) = v305;
  *&v350[9] = v304;
  v350[8] = v85;
  v350[11] = v88;
  v350[12] = v90;
  LOBYTE(v350[13]) = 0;
  BYTE1(v350[13]) = v91;
  v93 = type metadata accessor for SceneClientView(0);
  v94 = &a1[*(v93 + 36)];
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211760, &qword_267B1A950);
  v96 = v328;
  v308 = v95;
  v310 = v94;
  sub_267B16C20();
  v97 = *MEMORY[0x277D5C9C8];
  v98 = *(v326 + 104);
  v99 = v329;
  v309 = v326 + 104;
  v307 = v98;
  v98(v329, v97, v92);
  __swift_storeEnumTagSinglePayload(v99, 0, 1, v92);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802118A8, &qword_267B1AB30);
  v101 = sub_267B05E14();
  v102 = sub_267B05AE0(&qword_280211798, &qword_2802117A0, MEMORY[0x277D5C9F0], MEMORY[0x277D84F48]);
  v305 = v101;
  v306 = v100;
  *&v304 = v102;
  sub_267B17430();
  sub_267AF3430(v99, &qword_280211790);
  sub_267AF3430(v96, &qword_2802117A8);
  memcpy(__dst, v350, 0x6AuLL);
  v103 = a1;
  sub_267AF3430(__dst, &qword_2802118A8);
  v104 = *&a1[*(v93 + 40)];
  if (v104)
  {
    v105 = v104;
    v106 = sub_267B17880();
    v311 = v105;

    if (v106)
    {
      sub_267B17680();
    }

    else
    {
      sub_267B17670();
    }

    v107 = v334;
    v108 = v336;
    sub_267B16D20();
    v110 = *(v108 + 32);
    v109 = v108 + 32;
    v111 = v313;
    v112 = v337;
    v337 = v110;
    (v110)(v313, v112, v333);
    v113 = &v111[*(v331 + 36)];
    v114 = v352;
    *v113 = v351;
    *(v113 + 1) = v114;
    *(v113 + 2) = v353;
    v115 = sub_267B16E00();
    v117 = v116;
    v118 = v111;
    v119 = v312;
    sub_267AF3EE4(v118, v312, &qword_280211898, &qword_267B1AAF8);
    v120 = (v119 + *(v330 + 36));
    *v120 = v115;
    v120[1] = v117;
    sub_267AF3EE4(v119, v345, &qword_2802118A0, &qword_267B1AB00);
    LOBYTE(v350[0]) = v338;
    v350[1] = v339;
    sub_267B17560();
    if (v347[0] == 1 && (sub_267B16D80(), swift_getKeyPath(), sub_267B16D90(), , , v121 = sub_267B0099C(), , , , (v121 & 1) == 0))
    {
      v336 = v109;
      v312 = sub_267B16E00();
      v271 = v122;
      v123 = *(v335 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_ccLabel);
      v269 = *(v335 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_ccLabel + 8);
      v270 = v123;
      v124 = v103[32];
      v313 = v103;
      v125 = *(v103 + 5);
      v347[0] = v124;
      *&v347[8] = v125;

      sub_267B17580();
      v267 = v350[1];
      v268 = v350[0];
      v266 = LOBYTE(v350[2]);
      v347[0] = v287;
      *&v347[8] = v286;
      sub_267B17580();
      v264 = v350[1];
      v265 = v350[0];
      v263 = LOBYTE(v350[2]);
      sub_267B16D80();
      swift_getKeyPath();
      sub_267B16D90();

      v126 = v350[0];
      v262 = *&v350[1];
      v127 = sub_267B16E00();
      v129 = v128;
      LOBYTE(v350[0]) = v124;
      v350[1] = v125;
      sub_267B17560();
      v130 = v347[0];
      *&v347[33] = *v349;
      *&v347[36] = *&v349[3];
      *&v347[57] = *v348;
      *&v347[60] = *&v348[3];
      *v347 = v270;
      *&v347[8] = v269;
      *&v347[16] = v268;
      *&v347[24] = v267;
      v347[32] = v266;
      *&v347[40] = v265;
      *&v347[48] = v264;
      v347[56] = v263;
      v131 = v341;
      *&v347[64] = v126;
      *&v347[72] = v262;
      *&v347[88] = v127;
      *&v347[96] = v129;
      v347[104] = 0;
      v347[105] = v130;
      v132 = v328;
      sub_267B16C20();
      v133 = v329;
      v307(v329, *MEMORY[0x277D5C9C0], v131);
      __swift_storeEnumTagSinglePayload(v133, 0, 1, v131);
      v134 = v284;
      sub_267B17430();
      sub_267AF3430(v133, &qword_280211790);
      sub_267AF3430(v132, &qword_2802117A8);
      memcpy(v350, v347, 0x6AuLL);
      sub_267AF3430(v350, &qword_2802118A8);
      v135 = v311;
      LOBYTE(v133) = sub_267B17880();

      if (v133)
      {
        sub_267B17680();
      }

      else
      {
        sub_267B17670();
      }

      v109 = v336;
      sub_267B16D20();
      v136 = v283;
      (v337)(v283, v134, v333);
      v137 = (v136 + *(v331 + 36));
      v138 = v355;
      *v137 = v354;
      v137[1] = v138;
      v137[2] = v356;
      v139 = sub_267B16E00();
      v141 = v140;
      v142 = v281;
      sub_267AF3EE4(v136, v281, &qword_280211898, &qword_267B1AAF8);
      v143 = (v142 + *(v330 + 36));
      *v143 = v139;
      v143[1] = v141;
      v144 = v282;
      sub_267AF3EE4(v142, v282, &qword_2802118A0, &qword_267B1AB00);
      v145 = v342;
      sub_267AF2D08(v144, v342, &qword_2802118A0, &qword_267B1AB00);
      v146 = v288;
      v147 = v312;
      v148 = v271;
      *v288 = v312;
      *(v146 + 8) = v148;
      v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802118E0, &qword_267B1ABC0);
      sub_267AF2D08(v145, v146 + *(v149 + 48), &qword_2802118A0, &qword_267B1AB00);
      v150 = v147;
      sub_267AF3430(v144, &qword_2802118A0);
      sub_267AF3430(v145, &qword_2802118A0);

      v151 = v346;
      sub_267AF3EE4(v146, v346, &qword_280211880, &qword_267B1AAE0);
      v107 = v334;
      __swift_storeEnumTagSinglePayload(v151, 0, 1, v334);
      v103 = v313;
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v346, 1, 1, v107);
    }

    LOBYTE(v350[0]) = v338;
    v350[1] = v339;
    sub_267B17560();
    if (v347[0] == 1 && (v152 = *(v103 + 5), LOBYTE(v350[0]) = v103[32], v350[1] = v152, sub_267B17560(), v347[0] == 1) && (sub_267B16D80(), swift_getKeyPath(), sub_267B16D90(), , , v153 = sub_267B0099C(), , , , (v153 & 1) == 0))
    {
      v336 = v109;
      v339 = sub_267B16E00();
      v338 = v215;
      v216 = *(v335 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_bccLabel + 8);
      v327 = *(v335 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_bccLabel);
      v312 = v216;
      v313 = v103;
      v218 = *(v103 + 7);
      v347[0] = v103[48];
      v217 = v347[0];
      *&v347[8] = v218;

      sub_267B17580();
      v283 = v350[1];
      v284 = v350[0];
      LODWORD(v282) = LOBYTE(v350[2]);
      v347[0] = v287;
      *&v347[8] = v286;
      sub_267B17580();
      v286 = v350[1];
      v287 = v350[0];
      LODWORD(v281) = LOBYTE(v350[2]);
      sub_267B16D80();
      swift_getKeyPath();
      sub_267B16D90();

      v219 = v350[0];
      v325 = *&v350[1];
      v220 = sub_267B16E00();
      v222 = v221;
      LOBYTE(v350[0]) = v217;
      v350[1] = v218;
      sub_267B17560();
      v223 = v347[0];
      *&v347[33] = *v349;
      *&v347[36] = *&v349[3];
      *&v347[57] = *v348;
      *&v347[60] = *&v348[3];
      *v347 = v327;
      *&v347[8] = v312;
      *&v347[16] = v284;
      *&v347[24] = v283;
      v347[32] = v282;
      *&v347[40] = v287;
      *&v347[48] = v286;
      v347[56] = v281;
      v224 = v341;
      *&v347[64] = v219;
      *&v347[72] = v325;
      *&v347[88] = v220;
      *&v347[96] = v222;
      v347[104] = 0;
      v347[105] = v223;
      v225 = v328;
      sub_267B16C20();
      v226 = v329;
      v307(v329, *MEMORY[0x277D5C9D0], v224);
      __swift_storeEnumTagSinglePayload(v226, 0, 1, v224);
      v227 = v279;
      sub_267B17430();
      sub_267AF3430(v226, &qword_280211790);
      sub_267AF3430(v225, &qword_2802117A8);
      memcpy(v350, v347, 0x6AuLL);
      sub_267AF3430(v350, &qword_2802118A8);
      v228 = v311;
      LOBYTE(v224) = sub_267B17880();

      if (v224)
      {
        sub_267B17680();
      }

      else
      {
        sub_267B17670();
      }

      sub_267B16D20();
      v235 = v277;
      (v337)(v277, v227, v333);
      v236 = (v235 + *(v331 + 36));
      v237 = *&v347[16];
      *v236 = *v347;
      v236[1] = v237;
      v236[2] = *&v347[32];
      v238 = sub_267B16E00();
      v240 = v239;
      v241 = v276;
      sub_267AF3EE4(v235, v276, &qword_280211898, &qword_267B1AAF8);
      v242 = (v241 + *(v330 + 36));
      *v242 = v238;
      v242[1] = v240;
      v243 = v278;
      sub_267AF3EE4(v241, v278, &qword_2802118A0, &qword_267B1AB00);
      v244 = v342;
      sub_267AF2D08(v243, v342, &qword_2802118A0, &qword_267B1AB00);
      v245 = v288;
      v246 = v339;
      v247 = v338;
      *v288 = v339;
      *(v245 + 8) = v247;
      v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802118E0, &qword_267B1ABC0);
      sub_267AF2D08(v244, v245 + *(v248 + 48), &qword_2802118A0, &qword_267B1AB00);
      v249 = v246;
      sub_267AF3430(v243, &qword_2802118A0);
      sub_267AF3430(v244, &qword_2802118A0);

      v250 = v340;
      sub_267AF3EE4(v245, v340, &qword_280211880, &qword_267B1AAE0);
      __swift_storeEnumTagSinglePayload(v250, 0, 1, v334);
      v103 = v313;
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v340, 1, 1, v107);
    }

    if ((sub_267B00A78() & 1) == 0)
    {
      v164 = 1;
      v165 = v319;
LABEL_33:
      __swift_storeEnumTagSinglePayload(v165, v164, 1, v321);
      v205 = v342;
      sub_267AF2D08(v345, v342, &qword_2802118A0, &qword_267B1AB00);
      v206 = v317;
      sub_267AF2D08(v346, v317, &qword_280211888, &qword_267B1AAE8);
      v207 = v340;
      v208 = v318;
      sub_267AF2D08(v340, v318, &qword_280211888, &qword_267B1AAE8);
      v209 = v320;
      sub_267AF2D08(v165, v320, &qword_280211878, &qword_267B1AAD8);
      v210 = v322;
      sub_267AF2D08(v205, v322, &qword_2802118A0, &qword_267B1AB00);
      v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802118B8, &qword_267B1AB38);
      sub_267AF2D08(v206, v210 + v211[12], &qword_280211888, &qword_267B1AAE8);
      sub_267AF2D08(v208, v210 + v211[16], &qword_280211888, &qword_267B1AAE8);
      sub_267AF2D08(v209, v210 + v211[20], &qword_280211878, &qword_267B1AAD8);
      sub_267AF3430(v165, &qword_280211878);
      sub_267AF3430(v207, &qword_280211888);
      sub_267AF3430(v346, &qword_280211888);
      sub_267AF3430(v345, &qword_2802118A0);
      sub_267AF3430(v209, &qword_280211878);
      sub_267AF3430(v208, &qword_280211888);
      sub_267AF3430(v206, &qword_280211888);
      return sub_267AF3430(v342, &qword_2802118A0);
    }

    v339 = sub_267B16E00();
    v338 = v154;
    v155 = sub_267B16FA0();
    v156 = v314;
    *v314 = v155;
    v156[1] = 0xC028000000000000;
    *(v156 + 16) = 0;
    v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802118C0, &qword_267B1AB40);
    sub_267B039DC(v103, (v156 + *(v157 + 44)));
    v158 = v311;
    v159 = sub_267B17880();

    if ((v159 & 1) != 0 && (v160 = v158, sub_267B17890(), v162 = v161, v160, v162 > 1.0))
    {
      v163 = sub_267B17210();
    }

    else
    {
      v163 = sub_267B171F0();
    }

    v166 = v163;
    KeyPath = swift_getKeyPath();
    v168 = v315;
    sub_267AF3EE4(v314, v315, &qword_280211860, &qword_267B1AAC0);
    v169 = (v168 + *(v292 + 36));
    *v169 = KeyPath;
    v169[1] = v166;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E18, &qword_267B1A140);
    v170 = swift_allocObject();
    *(v170 + 16) = xmmword_267B1A930;
    v171 = sub_267B171A0();
    *(v170 + 32) = v171;
    v172 = sub_267B17180();
    *(v170 + 33) = v172;
    v173 = sub_267B17190();
    *(v170 + 34) = v173;
    v174 = sub_267B171B0();
    sub_267B171B0();
    if (sub_267B171B0() != v171)
    {
      v174 = sub_267B171B0();
    }

    sub_267B171B0();
    if (sub_267B171B0() != v172)
    {
      v174 = sub_267B171B0();
    }

    v175 = v295;

    sub_267B171B0();
    if (sub_267B171B0() != v173)
    {
      v174 = sub_267B171B0();
    }

    v176 = v302;
    v177 = v303;
    v178 = v301;
    v179 = v293;
    sub_267AF3EE4(v315, v293, &qword_280211868, &qword_267B1AAC8);
    v180 = v179 + *(v294 + 36);
    *v180 = v174;
    *(v180 + 8) = 0u;
    *(v180 + 24) = 0u;
    *(v180 + 40) = 1;
    sub_267AF3EE4(v179, v316, &qword_280211870, &qword_267B1AAD0);
    v181 = SiriMailModel.subject.getter();
    v183 = v182;

    v184 = HIBYTE(v183) & 0xF;
    if ((v183 & 0x2000000000000000) == 0)
    {
      v184 = v181 & 0xFFFFFFFFFFFFLL;
    }

    if (v184)
    {
      goto LABEL_31;
    }

    sub_267B16C10();
    v213 = v341;
    v307(v178, *MEMORY[0x277D5C9E0], v341);
    __swift_storeEnumTagSinglePayload(v178, 0, 1, v213);
    v214 = *(v285 + 48);
    sub_267AF2D08(v176, v175, &qword_280211790, &qword_267B1A970);
    sub_267AF2D08(v178, v175 + v214, &qword_280211790, &qword_267B1A970);
    if (__swift_getEnumTagSinglePayload(v175, 1, v213) == 1)
    {
      sub_267AF3430(v178, &qword_280211790);
      sub_267AF3430(v176, &qword_280211790);
      if (__swift_getEnumTagSinglePayload(v175 + v214, 1, v341) == 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v229 = v274;
      sub_267AF2D08(v175, v274, &qword_280211790, &qword_267B1A970);
      if (__swift_getEnumTagSinglePayload(v175 + v214, 1, v341) != 1)
      {
        v252 = v326;
        v253 = v273;
        v254 = v341;
        (*(v326 + 32))(v273, v175 + v214, v341);
        sub_267B0656C(&qword_280211818, MEMORY[0x277D5C9E8], MEMORY[0x277D5C9F8]);
        LODWORD(v337) = sub_267B17950();
        v255 = v175;
        v256 = *(v252 + 8);
        v256(v253, v254);
        sub_267AF3430(v301, &qword_280211790);
        sub_267AF3430(v302, &qword_280211790);
        v256(v229, v254);
        v177 = v303;
        sub_267AF3430(v255, &qword_280211790);
        if (v337)
        {
          goto LABEL_31;
        }

LABEL_42:
        v230 = v275;
        sub_267B16C10();
        v231 = v341;
        v307(v177, *MEMORY[0x277D5C9D8], v341);
        __swift_storeEnumTagSinglePayload(v177, 0, 1, v231);
        v232 = *(v285 + 48);
        v233 = v177;
        v234 = v280;
        sub_267AF2D08(v230, v280, &qword_280211790, &qword_267B1A970);
        sub_267AF2D08(v233, v234 + v232, &qword_280211790, &qword_267B1A970);
        if (__swift_getEnumTagSinglePayload(v234, 1, v231) == 1)
        {
          sub_267AF3430(v233, &qword_280211790);
          v175 = v280;
          sub_267AF3430(v230, &qword_280211790);
          if (__swift_getEnumTagSinglePayload(v175 + v232, 1, v341) == 1)
          {
LABEL_44:
            sub_267AF3430(v175, &qword_280211790);
LABEL_31:
            v185 = sub_267B16E00();
            v187 = v186;
            v188 = sub_267B17040();
            v189 = v289;
            *v289 = v188;
            *(v189 + 8) = 0;
            *(v189 + 16) = 0;
            v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802118C8, &qword_267B1AB80);
            sub_267B04400(v103, v189 + *(v190 + 44));
            v191 = v290;
            sub_267AF2D08(v189, v290, &qword_280211848, &qword_267B1AAA8);
            v192 = v291;
            *v291 = v185;
            *(v192 + 8) = v187;
            v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802118D0, &qword_267B1AB88);
            sub_267AF2D08(v191, v192 + *(v193 + 48), &qword_280211848, &qword_267B1AAA8);
            v194 = v185;
            sub_267AF3430(v189, &qword_280211848);
            sub_267AF3430(v191, &qword_280211848);

            v195 = v297;
            sub_267AF3EE4(v192, v297, &qword_280211840, &qword_267B1AAA0);
            v196 = 0;
LABEL_32:
            __swift_storeEnumTagSinglePayload(v195, v196, 1, v299);
            v197 = v316;
            v198 = v296;
            sub_267AF2D08(v316, v296, &qword_280211870, &qword_267B1AAD0);
            v199 = v298;
            sub_267AF2D08(v195, v298, &qword_280211858, &qword_267B1AAB8);
            v200 = v300;
            v201 = v339;
            v202 = v338;
            *v300 = v339;
            *(v200 + 8) = v202;
            v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802118D8, &qword_267B1AB90);
            sub_267AF2D08(v198, v200 + *(v203 + 48), &qword_280211870, &qword_267B1AAD0);
            sub_267AF2D08(v199, v200 + *(v203 + 64), &qword_280211858, &qword_267B1AAB8);
            v204 = v201;
            sub_267AF3430(v195, &qword_280211858);
            sub_267AF3430(v197, &qword_280211870);
            sub_267AF3430(v199, &qword_280211858);
            sub_267AF3430(v198, &qword_280211870);

            v165 = v319;
            sub_267AF3EE4(v200, v319, &qword_280211838, &qword_267B1AA98);
            v164 = 0;
            goto LABEL_33;
          }
        }

        else
        {
          v251 = v272;
          sub_267AF2D08(v234, v272, &qword_280211790, &qword_267B1A970);
          if (__swift_getEnumTagSinglePayload(v234 + v232, 1, v341) != 1)
          {
            v257 = v326;
            v258 = v273;
            v259 = v341;
            (*(v326 + 32))(v273, v234 + v232, v341);
            sub_267B0656C(&qword_280211818, MEMORY[0x277D5C9E8], MEMORY[0x277D5C9F8]);
            v260 = sub_267B17950();
            v261 = *(v257 + 8);
            v261(v258, v259);
            sub_267AF3430(v303, &qword_280211790);
            sub_267AF3430(v230, &qword_280211790);
            v261(v251, v259);
            sub_267AF3430(v280, &qword_280211790);
            if (v260)
            {
              goto LABEL_31;
            }

LABEL_50:
            v196 = 1;
            v195 = v297;
            goto LABEL_32;
          }

          sub_267AF3430(v303, &qword_280211790);
          v175 = v280;
          sub_267AF3430(v230, &qword_280211790);
          (*(v326 + 8))(v251, v341);
        }

        sub_267AF3430(v175, &qword_280211850);
        goto LABEL_50;
      }

      sub_267AF3430(v301, &qword_280211790);
      sub_267AF3430(v302, &qword_280211790);
      (*(v326 + 8))(v229, v341);
    }

    sub_267AF3430(v175, &qword_280211850);
    goto LABEL_42;
  }

  result = sub_267B16DF0();
  __break(1u);
  return result;
}

uint64_t sub_267B039DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v81 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  MEMORY[0x28223BE20](v80);
  v76 = v59 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802117A8, &qword_267B1A9C8);
  MEMORY[0x28223BE20](v4 - 8);
  v71 = v59 - v5;
  v63 = sub_267B170A0();
  v64 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v7 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802108E0, &qword_267B1AC40);
  v62 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v9 = v59 - v8;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211918, &qword_267B1AC48);
  v74 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v60 = v59 - v10;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211920, &qword_267B1AC50);
  v79 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v65 = v59 - v11;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211928, &qword_267B1AC58);
  MEMORY[0x28223BE20](v77);
  v70 = v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211930, &qword_267B1AC60);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v78 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v73 = v59 - v16;
  v59[1] = a1;
  v17 = (a1[1] + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_subjectLabel);
  swift_beginAccess();
  v18 = *v17;
  v19 = v17[1];
  *&v86 = v18;
  *(&v86 + 1) = v19;
  sub_267ADCFA4();

  v20 = sub_267B17340();
  v22 = v21;
  v24 = v23;
  LODWORD(v86) = sub_267B170B0();
  v67 = sub_267B17310();
  v66 = v25;
  v68 = v26;
  v69 = v27;
  sub_267AEC140(v20, v22, v24 & 1);

  sub_267B17010();
  type metadata accessor for SiriMailModel(0);
  sub_267B0656C(&qword_280211780, type metadata accessor for SiriMailModel, &protocol conformance descriptor for SiriMailModel);
  sub_267B16D80();
  swift_getKeyPath();
  sub_267B16D90();

  sub_267B17690();
  sub_267B17090();
  v28 = sub_267AF3DE0(&qword_2802108E8, &qword_2802108E0, &qword_267B1AC40, MEMORY[0x277CDF1A8]);
  v29 = sub_267B0656C(&qword_280211938, MEMORY[0x277CDE0C8], MEMORY[0x277CDE0C0]);
  v30 = v60;
  v31 = v61;
  v32 = v63;
  sub_267B17400();
  v33 = v32;
  (*(v64 + 8))(v7, v32);
  (*(v62 + 8))(v9, v31);
  type metadata accessor for SceneClientView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211760, &qword_267B1A950);
  v34 = v71;
  sub_267B16C20();
  v35 = *MEMORY[0x277D5C9E0];
  v36 = sub_267B16850();
  v37 = v76;
  (*(*(v36 - 8) + 104))(v76, v35, v36);
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v36);
  *&v86 = v31;
  *(&v86 + 1) = v33;
  *&v87 = v28;
  *(&v87 + 1) = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = sub_267B05AE0(&qword_280211798, &qword_2802117A0, MEMORY[0x277D5C9F0], MEMORY[0x277D84F48]);
  v40 = v65;
  v41 = v34;
  v42 = v72;
  v43 = v80;
  sub_267B17430();
  sub_267AF3430(v37, &qword_280211790);
  sub_267AF3430(v41, &qword_2802117A8);
  (*(v74 + 8))(v30, v42);
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  v82 = v42;
  v83 = v43;
  v84 = OpaqueTypeConformance2;
  v85 = v39;
  swift_getOpaqueTypeConformance2();
  v44 = v70;
  v45 = v75;
  sub_267B17390();
  sub_267AF3430(&v86, &qword_280210900);
  (*(v79 + 8))(v40, v45);
  LOBYTE(v45) = sub_267B171D0();
  sub_267B16C00();
  v46 = v44 + *(v77 + 36);
  *v46 = v45;
  *(v46 + 8) = v47;
  *(v46 + 16) = v48;
  *(v46 + 24) = v49;
  *(v46 + 32) = v50;
  *(v46 + 40) = 0;
  sub_267B05FF0();
  v51 = v73;
  sub_267B17410();
  sub_267AF3430(v44, &qword_280211928);
  v52 = v78;
  sub_267AF2D08(v51, v78, &qword_280211930, &qword_267B1AC60);
  v53 = v81;
  v54 = v67;
  v55 = v66;
  *v81 = v67;
  v53[1] = v55;
  LOBYTE(v45) = v68 & 1;
  *(v53 + 16) = v68 & 1;
  v53[3] = v69;
  v56 = v53;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211948, &qword_267B1AC98);
  sub_267AF2D08(v52, v56 + *(v57 + 48), &qword_280211930, &qword_267B1AC60);
  sub_267AFB658(v54, v55, v45);

  sub_267AF3430(v51, &qword_280211930);
  sub_267AF3430(v52, &qword_280211930);
  sub_267AEC140(v54, v55, v45);
}

uint64_t sub_267B04400@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  MEMORY[0x28223BE20](v48);
  v4 = &v43 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802117A8, &qword_267B1A9C8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802118F8, &qword_267B1AC00);
  v53 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v47 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211900, &qword_267B1AC08);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v55 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v51 = &v43 - v13;
  v44 = a1;
  v14 = a1[1];
  v50 = type metadata accessor for SiriMailModel(0);
  v49 = sub_267B0656C(&qword_280211780, type metadata accessor for SiriMailModel, &protocol conformance descriptor for SiriMailModel);
  sub_267B16D80();
  swift_getKeyPath();
  sub_267B16D90();

  v43 = v61;
  v15 = v62;
  v16 = (v14 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_messageLabel);
  swift_beginAccess();
  v17 = *v16;
  v18 = v16[1];
  v46 = sub_267B17910();
  v45 = sub_267B0656C(&qword_280211600, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);

  v19 = sub_267B16E00();
  v57 = v43;
  v58 = v15;
  *&v59 = v19;
  *(&v59 + 1) = v20;
  *&v60 = v17;
  *(&v60 + 1) = v18;
  type metadata accessor for SceneClientView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211760, &qword_267B1A950);
  sub_267B16C20();
  v21 = *MEMORY[0x277D5C9D8];
  v22 = sub_267B16850();
  (*(*(v22 - 8) + 104))(v4, v21, v22);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v22);
  v23 = sub_267B05F40();
  v24 = sub_267B05AE0(&qword_280211798, &qword_2802117A0, MEMORY[0x277D5C9F0], MEMORY[0x277D84F48]);
  v25 = v47;
  v26 = v48;
  sub_267B17430();
  sub_267AF3430(v4, &qword_280211790);
  sub_267AF3430(v7, &qword_2802117A8);
  v61 = v57;
  v62 = v58;
  v63 = v59;
  v64 = v60;
  sub_267B05F94(&v61);
  *&v57 = &type metadata for BodyTextEditor;
  *(&v57 + 1) = v26;
  *&v58 = v23;
  *(&v58 + 1) = v24;
  swift_getOpaqueTypeConformance2();
  v27 = v51;
  v28 = v52;
  sub_267B17410();
  (*(v53 + 8))(v25, v28);
  *(v27 + *(v10 + 44)) = 0xBFF0000000000000;

  v29 = sub_267B16D70();
  v31 = v30;
  v32 = sub_267B16E00();
  v34 = v33;
  v56 = 0;
  sub_267B17550();
  v35 = v57;
  v36 = *(&v57 + 1);
  v37 = v55;
  sub_267AF2D08(v27, v55, &qword_280211900, &qword_267B1AC08);
  v38 = v37;
  v39 = v54;
  sub_267AF2D08(v38, v54, &qword_280211900, &qword_267B1AC08);
  v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211910, &qword_267B1AC38) + 48);
  *v40 = v29;
  *(v40 + 8) = v31;
  *(v40 + 16) = v32;
  *(v40 + 24) = v34;
  *(v40 + 32) = v35;
  *(v40 + 40) = v36;
  *(v40 + 48) = 0x3FF0000000000000;

  v41 = v32;
  sub_267AF3430(v27, &qword_280211900);

  return sub_267AF3430(v55, &qword_280211900);
}

void sub_267B04A88()
{
  if (qword_280210880 != -1)
  {
    swift_once();
  }

  v0 = sub_267B16BA0();
  __swift_project_value_buffer(v0, static Logger.siriMail);
  oslog = sub_267B16B80();
  v1 = sub_267B17A80();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_267ADA000, oslog, v1, "View did appear", v2, 2u);
    MEMORY[0x26D600E60](v2, -1, -1);
  }
}

void sub_267B04B70(uint64_t a1)
{
  v2 = sub_267B169C0();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v8 = sub_267B16860();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  (*(v9 + 104))(&v29 - v13, *MEMORY[0x277D5CA08], v8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_267B16A50();

  v15 = sub_267B06980();
  v16 = *(v9 + 8);
  v16(v12, v8);
  v16(v14, v8);
  if (v15)
  {
    v17 = type metadata accessor for SceneClientView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211760, &qword_267B1A950);
    sub_267B16C10();
    v18 = sub_267B16850();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v18);
    sub_267AF3430(v7, &qword_280211790);
    if (EnumTagSinglePayload == 1)
    {
      v20 = *(a1 + 72);
      v33 = *(a1 + 64);
      v34 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E90, &qword_267B19E00);
      sub_267B17560();
      if (v32 == 1)
      {
        if (qword_280210880 != -1)
        {
          swift_once();
        }

        v21 = sub_267B16BA0();
        __swift_project_value_buffer(v21, static Logger.siriMail);
        v22 = sub_267B16B80();
        v23 = sub_267B17A80();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_267ADA000, v22, v23, "Got nil focus field, sending .returnedToVoiceMode Direct Invocation", v24, 2u);
          MEMORY[0x26D600E60](v24, -1, -1);
        }

        v26 = v30;
        v25 = v31;
        (*(v30 + 104))(v4, *MEMORY[0x277D07328], v31);
        sub_267B169B0();
        (*(v26 + 8))(v4, v25);
        v27 = *(a1 + *(v17 + 40));
        if (v27)
        {
          v28 = v27;
          sub_267B17900();
        }

        else
        {
          sub_267B17910();
          sub_267B0656C(&qword_280211600, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
          sub_267B16DF0();
          __break(1u);
        }
      }
    }
  }
}

uint64_t sub_267B05010()
{
  if (qword_280210880 != -1)
  {
    swift_once();
  }

  v0 = sub_267B16BA0();
  __swift_project_value_buffer(v0, static Logger.siriMail);
  v1 = sub_267B16B80();
  v2 = sub_267B17A80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_267ADA000, v1, v2, "View will disappear", v3, 2u);
    MEMORY[0x26D600E60](v3, -1, -1);
  }

  type metadata accessor for SiriMailModel(0);
  sub_267B0656C(&qword_280211830, type metadata accessor for SiriMailModel, &protocol conformance descriptor for SiriMailModel);
  return sub_267B169F0();
}

uint64_t sub_267B05288@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_267B17620();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267B17610();
  if (a1)
  {
    v11 = a1;
    v12 = sub_267B17880();

    if (v12)
    {
      v13 = sub_267B171C0();
    }

    else
    {
      v13 = sub_267B171A0();
    }

    v14 = v13;
    (*(v7 + 32))(a3, v10, v5);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FF8, &qword_267B1A0B0);
    v16 = a3 + *(result + 36);
    *v16 = v14;
    *(v16 + 8) = 0u;
    *(v16 + 24) = 0u;
    *(v16 + 40) = 1;
  }

  else
  {
    sub_267B17910();
    OUTLINED_FUNCTION_5_4();
    sub_267B0656C(v17, v18, MEMORY[0x277D63F50]);
    result = sub_267B16DF0();
    __break(1u);
  }

  return result;
}

uint64_t sub_267B05410()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802117A8, &qword_267B1A9C8) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802117B0, &qword_267B1A9D0) + 32);
  v7 = sub_267B16850();
  if (!OUTLINED_FUNCTION_14_2(v7))
  {
    OUTLINED_FUNCTION_2_6();
    (*(v8 + 8))(v1 + v4 + v6, v0);
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t sub_267B05550(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(char *, uint64_t))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  OUTLINED_FUNCTION_16_0(v9);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - v11;
  sub_267AF2D08(a1, &v15 - v11, &qword_280211790, &qword_267B1A970);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return a5(v12, v13);
}

uint64_t sub_267B0561C()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802117B0, &qword_267B1A9D0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[10];
  v6 = sub_267B16850();
  if (!OUTLINED_FUNCTION_14_2(v6))
  {
    OUTLINED_FUNCTION_2_6();
    (*(v7 + 8))(v0 + v3 + v5, v1);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_267B0574C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(char *, uint64_t))
{
  v9 = OUTLINED_FUNCTION_15_0(a1, a2);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_16_0(v11);
  return sub_267B05550(a1, v4 + ((*(v12 + 80) + 16) & ~*(v12 + 80)), a2, a3, a4);
}

uint64_t sub_267B057D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SceneClientView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B0583C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SceneClientView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_267B058B8()
{
  result = qword_2802117E8;
  if (!qword_2802117E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802117C0, &qword_267B1A9E0);
    sub_267B05944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802117E8);
  }

  return result;
}

unint64_t sub_267B05944()
{
  result = qword_2802117F0;
  if (!qword_2802117F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802117E0, &unk_267B1AA28);
    sub_267B059FC();
    sub_267AF3DE0(&qword_280211808, &qword_2802117D8, &qword_267B1AA20, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802117F0);
  }

  return result;
}

unint64_t sub_267B059FC()
{
  result = qword_2802117F8;
  if (!qword_2802117F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802117D0, &qword_267B1AA18);
    sub_267AF3DE0(&qword_280211800, &qword_2802117B8, &qword_267B1A9D8, MEMORY[0x277CE1198]);
    sub_267AF3DE0(&qword_280211808, &qword_2802117D8, &qword_267B1AA20, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802117F8);
  }

  return result;
}

uint64_t sub_267B05AE0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211790, &qword_267B1A970);
    OUTLINED_FUNCTION_3_4();
    sub_267B0656C(a2, v8, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_6Tm()
{
  v1 = type metadata accessor for SceneClientView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[9];
  v7 = sub_267B16850();
  if (!__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    OUTLINED_FUNCTION_2_6();
    (*(v8 + 8))(v6, v7);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211760, &qword_267B1A950);

  v10 = *(v9 + 40);
  if (!__swift_getEnumTagSinglePayload(v6 + v10, 1, v7))
  {
    OUTLINED_FUNCTION_2_6();
    (*(v11 + 8))(v6 + v10, v7);
  }

  v12 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210898, &qword_267B19C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_267B16C80();
    OUTLINED_FUNCTION_0();
    (*(v13 + 8))(v5 + v12);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_267B05D94(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for SceneClientView(0);
  OUTLINED_FUNCTION_16_0(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

unint64_t sub_267B05E14()
{
  result = qword_2802118B0;
  if (!qword_2802118B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802118A8, &qword_267B1AB30);
    sub_267AFBFE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802118B0);
  }

  return result;
}

uint64_t sub_267B05EA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267B16F20();
  *a1 = result;
  return result;
}

uint64_t sub_267B05ECC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267B16F20();
  *a1 = result;
  return result;
}

unint64_t sub_267B05F40()
{
  result = qword_280211908;
  if (!qword_280211908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211908);
  }

  return result;
}

unint64_t sub_267B05FF0()
{
  result = qword_280211940;
  if (!qword_280211940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211928, &qword_267B1AC58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211920, &qword_267B1AC50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211918, &qword_267B1AC48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211790, &qword_267B1A970);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802108E0, &qword_267B1AC40);
    sub_267B170A0();
    sub_267AF3DE0(&qword_2802108E8, &qword_2802108E0, &qword_267B1AC40, MEMORY[0x277CDF1A8]);
    sub_267B0656C(&qword_280211938, MEMORY[0x277CDE0C8], MEMORY[0x277CDE0C0]);
    swift_getOpaqueTypeConformance2();
    sub_267B05AE0(&qword_280211798, &qword_2802117A0, MEMORY[0x277D5C9F0], MEMORY[0x277D84F48]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211940);
  }

  return result;
}

uint64_t sub_267B06220(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_267B06274(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_267B062D8()
{
  result = qword_280211950;
  if (!qword_280211950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211828, &unk_267B1AA88);
    sub_267B06364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211950);
  }

  return result;
}

unint64_t sub_267B06364()
{
  result = qword_280211958;
  if (!qword_280211958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211820, &qword_267B1AA38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802117C0, &qword_267B1A9E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211790, &qword_267B1A970);
    sub_267B058B8();
    sub_267B05AE0(&qword_280211810, &qword_280211818, MEMORY[0x277D5C9F8], MEMORY[0x277D84F50]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211958);
  }

  return result;
}

unint64_t sub_267B064B0()
{
  result = qword_280211960;
  if (!qword_280211960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210FF8, &qword_267B1A0B0);
    sub_267B0656C(&qword_280211968, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211960);
  }

  return result;
}

uint64_t sub_267B0656C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *OUTLINED_FUNCTION_7_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14)
{

  return sub_267B17550();
}

uint64_t OUTLINED_FUNCTION_14_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t sub_267B0668C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210DB8, &unk_267B19E20);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_267B06734(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210DB8, &unk_267B19E20);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SceneHostView(uint64_t a1)
{
  result = qword_280211970;
  if (!qword_280211970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267B0680C(uint64_t a1)
{
  sub_267B00844(319);
  if (v1 <= 0x3F)
  {
    sub_267AE0D9C(319);
    if (v2 <= 0x3F)
    {
      sub_267B06910(319, &qword_280211980, MEMORY[0x277D5B350]);
      if (v3 <= 0x3F)
      {
        sub_267B06910(319, &qword_280210DE0, MEMORY[0x277CDF3E0]);
        if (v4 <= 0x3F)
        {
          sub_267AEB810();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_267B06910(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_267B16C90();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_267B06980()
{
  sub_267B16860();
  OUTLINED_FUNCTION_1_6();
  sub_267B09F50(v0, v1, MEMORY[0x277D5CA38]);
  sub_267B179D0();
  sub_267B179D0();
  if (v7 == v5 && v8 == v6)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_267B17D60();
  }

  return v3 & 1;
}

uint64_t sub_267B06AA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_267B16F90();
  OUTLINED_FUNCTION_0_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v16);
  v18 = &v22 - v17;
  sub_267AED784(v8, &v22 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    a3(0);
    OUTLINED_FUNCTION_0();
    return (*(v19 + 32))(a4, v18);
  }

  else
  {
    sub_267B17AA0();
    v21 = sub_267B17150();
    sub_267B16B70();

    sub_267B16F80();
    swift_getAtKeyPath();

    return (*(v12 + 8))(v15, v10);
  }
}

uint64_t sub_267B06C80(uint64_t a1)
{
  SiriMailModel.subject.getter();

  OUTLINED_FUNCTION_5_5();
  if (!v1)
  {
    return 1;
  }

  SiriMailModel.body.getter();

  OUTLINED_FUNCTION_5_5();
  if (!v2)
  {
    return 1;
  }

  v3 = *(SiriMailModel.to.getter() + 16);

  if (!v3)
  {
    return 1;
  }

  type metadata accessor for SceneHostView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E90, &qword_267B19E00);
  sub_267B17560();
  return v5;
}

uint64_t sub_267B06D48@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v50 = sub_267B16860();
  OUTLINED_FUNCTION_0_0();
  v52 = v2;
  v4 = MEMORY[0x28223BE20](v3);
  v53 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v48 = &v44 - v6;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  v10 = type metadata accessor for SceneHostView(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v12;
  v14 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211988, &qword_267B1ADC0);
  v45 = v15;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211990, &qword_267B1ADC8);
  OUTLINED_FUNCTION_0_0();
  v49 = v19;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v20);
  v58 = &v44 - v21;
  *v18 = sub_267B17050();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211998, &qword_267B1ADD0);
  sub_267B073B8(v1, &v18[*(v22 + 44)]);
  sub_267B09B40(v1, v14);
  v55 = *(v11 + 80);
  v56 = v13;
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_7_6(v23);
  v24 = &v18[*(v15 + 36)];
  *v24 = sub_267B09C0C;
  v24[1] = v23;
  v24[2] = 0;
  v24[3] = 0;
  v57 = v1[1];
  v54 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_267B16A50();

  sub_267B09B40(v1, v14);
  v25 = swift_allocObject();
  OUTLINED_FUNCTION_7_6(v25);
  v44 = sub_267B09C44();
  v26 = sub_267B09CFC();
  v27 = v45;
  v28 = v46;
  sub_267B17440();

  sub_267AEC1D4(v9, &qword_280211790, &qword_267B1A970);
  sub_267AEC1D4(v18, &qword_280211988, &qword_267B1ADC0);
  swift_getKeyPath();
  swift_getKeyPath();
  v29 = v48;
  sub_267B16A50();

  sub_267B09B40(v54, v14);
  v30 = swift_allocObject();
  OUTLINED_FUNCTION_7_6(v30);
  v59 = v27;
  v60 = v28;
  v61 = v44;
  v62 = v26;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_6();
  sub_267B09F50(v31, v32, MEMORY[0x277D5CA30]);
  v33 = v50;
  v34 = v51;
  v35 = v47;
  v36 = v58;
  sub_267B17440();

  v37 = v52;
  v38 = *(v52 + 8);
  v38(v29, v33);
  (*(v49 + 8))(v36, v35);
  sub_267B09B40(v54, v14);
  v39 = swift_allocObject();
  OUTLINED_FUNCTION_7_6(v39);
  v40 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802119C0, &qword_267B1AE70) + 36));
  *v40 = 0;
  v40[1] = 0;
  v40[2] = sub_267B09E64;
  v40[3] = v39;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_267B16A50();

  v41 = v53;
  (*(v37 + 104))(v53, *MEMORY[0x277D5CA08], v33);
  v42 = v41;
  LOBYTE(v41) = sub_267B06980();
  v38(v42, v33);
  v38(v29, v33);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802119C8, &qword_267B1AE78);
  *(v34 + *(result + 36)) = v41 & 1;
  return result;
}

uint64_t sub_267B073B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802119F0, &qword_267B1AE80);
  MEMORY[0x28223BE20](v84);
  v85 = &v74 - v3;
  v80 = sub_267B177D0();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_267B177F0();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_267B16860();
  v87 = *(v6 - 8);
  v88 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v77 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v86 = &v74 - v9;
  v10 = sub_267B16950();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v75 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v74 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802119F8, &qword_267B1AE88);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v94 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v93 = &v74 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211A00, &qword_267B1AE90);
  MEMORY[0x28223BE20](v20 - 8);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211A08, &qword_267B1AE98);
  v90 = *(v92 - 8);
  v21 = MEMORY[0x28223BE20](v92);
  v91 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v74 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211A10, &qword_267B1AEA0);
  v26 = v25 - 8;
  v27 = MEMORY[0x28223BE20](v25);
  v98 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v74 - v29;
  *v30 = sub_267B16FB0();
  *(v30 + 1) = 0;
  v30[16] = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211A18, &qword_267B1AEA8);
  sub_267B07EF0(a1, &v30[*(v31 + 44)]);
  v32 = sub_267B17170();
  v33 = *(v26 + 44);
  v97 = v30;
  v34 = &v30[v33];
  *v34 = v32;
  *(v34 + 8) = 0u;
  *(v34 + 24) = 0u;
  v34[40] = 1;
  v35 = a1[1];
  type metadata accessor for SiriMailModel(0);
  sub_267B09F50(&qword_280211780, type metadata accessor for SiriMailModel, &protocol conformance descriptor for SiriMailModel);
  sub_267B16D80();
  swift_getKeyPath();
  sub_267B16D90();

  v36 = MEMORY[0x277D5CA80];
  sub_267B09F50(&qword_280210C80, MEMORY[0x277D5CA80], MEMORY[0x277D5CA98]);
  sub_267B09F50(&qword_280210C28, v36, MEMORY[0x277D5CA88]);
  sub_267B09F50(&qword_280211A20, v36, MEMORY[0x277D5CA90]);
  v89 = v24;
  sub_267B16730();
  v96 = v35;
  sub_267B0DBE0();
  v37 = v86;
  sub_267B16870();
  v38 = *(v11 + 8);
  v39 = v10;
  v76 = v11 + 8;
  v38(v15, v10);
  v40 = v87;
  v41 = *(v87 + 88);
  v42 = v37;
  v43 = v37;
  v44 = v88;
  LODWORD(v15) = v41(v42, v88);
  LODWORD(v36) = *MEMORY[0x277D5CA00];
  v45 = *(v40 + 8);
  v46 = v44;
  v45(v43, v44);
  if (v15 == v36)
  {
    v47 = (v96 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_sentLabel);
    swift_beginAccess();
    v48 = *v47;
    v49 = v47[1];
    v101 = MEMORY[0x277D837D0];
    v102 = MEMORY[0x277D63F80];
    v99 = v48;
    v100 = v49;
    (*(v79 + 104))(v78, *MEMORY[0x277D63D60], v80);

    v50 = v81;
    sub_267B177E0();
  }

  else
  {
    v51 = v75;
    sub_267B0DBE0();
    v52 = v77;
    sub_267B16870();
    v38(v51, v39);
    LODWORD(v51) = v41(v52, v46);
    v53 = *MEMORY[0x277D5CA20];
    v45(v52, v46);
    if (v51 != v53)
    {
      v60 = 1;
      v57 = v93;
      goto LABEL_7;
    }

    v54 = (v96 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_cancelledLabel);
    swift_beginAccess();
    v55 = *v54;
    v56 = v54[1];
    v101 = MEMORY[0x277D837D0];
    v102 = MEMORY[0x277D63F80];
    v99 = v55;
    v100 = v56;
    (*(v79 + 104))(v78, *MEMORY[0x277D63D70], v80);

    v50 = v81;
    sub_267B177E0();
  }

  v57 = v93;
  v58 = v82;
  v59 = v83;
  (*(v82 + 16))(v85, v50, v83);
  swift_storeEnumTagMultiPayload();
  sub_267B09F50(&qword_280211178, MEMORY[0x277D63D80], MEMORY[0x277D63D48]);
  sub_267B17080();
  (*(v58 + 8))(v50, v59);
  v60 = 0;
LABEL_7:
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211A28, &qword_267B1AED8);
  __swift_storeEnumTagSinglePayload(v57, v60, 1, v61);
  v62 = v98;
  sub_267B09EE8(v97, v98);
  v63 = v57;
  v65 = v90;
  v64 = v91;
  v66 = *(v90 + 16);
  v67 = v89;
  v68 = v92;
  v66(v91, v89, v92);
  v69 = v94;
  sub_267AED784(v63, v94, &qword_2802119F8, &qword_267B1AE88);
  v70 = v95;
  sub_267B09EE8(v62, v95);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211A30, &qword_267B1AEE0);
  v66((v70 + *(v71 + 48)), v64, v68);
  sub_267AED784(v69, v70 + *(v71 + 64), &qword_2802119F8, &qword_267B1AE88);
  sub_267AEC1D4(v63, &qword_2802119F8, &qword_267B1AE88);
  v72 = *(v65 + 8);
  v72(v67, v68);
  sub_267AEC1D4(v97, &qword_280211A10, &qword_267B1AEA0);
  sub_267AEC1D4(v69, &qword_2802119F8, &qword_267B1AE88);
  v72(v64, v68);
  return sub_267AEC1D4(v98, &qword_280211A10, &qword_267B1AEA0);
}

uint64_t sub_267B07EF0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211A38, &qword_267B1AEE8) - 8;
  v3 = MEMORY[0x28223BE20](v36);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v33 = &v32 - v5;
  v6 = type metadata accessor for SceneHostView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211A40, &qword_267B1AEF0);
  MEMORY[0x28223BE20](v32);
  v10 = &v32 - v9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211A48, &qword_267B1AEF8);
  v39 = *(v35 - 8);
  v11 = MEMORY[0x28223BE20](v35);
  v34 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - v13;
  *v10 = sub_267B17040();
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211A50, &qword_267B1AF00);
  sub_267B083F4(a1);
  sub_267B09B40(a1, &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_267B09BA8(&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_267ADCE94(&qword_280211A58, &qword_280211A40, &qword_267B1AEF0, MEMORY[0x277CE1198]);
  sub_267B173E0();

  sub_267AEC1D4(v10, &qword_280211A40, &qword_267B1AEF0);
  sub_267B09B40(a1, &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = swift_allocObject();
  sub_267B09BA8(&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v15);
  v40 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211A60, &qword_267B1AF08);
  sub_267B0A184();
  v18 = v33;
  v19 = sub_267B175A0();
  LOBYTE(v10) = sub_267B06C80(v19);
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v10 & 1;
  v22 = v35;
  v23 = (v18 + *(v36 + 44));
  *v23 = KeyPath;
  v23[1] = sub_267B0A554;
  v23[2] = v21;
  v24 = *(v39 + 16);
  v25 = v34;
  v24(v34, v14, v22);
  v26 = v37;
  sub_267AED784(v18, v37, &qword_280211A38, &qword_267B1AEE8);
  v27 = v38;
  v24(v38, v25, v22);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211AD0, &qword_267B1AF70);
  v29 = &v27[*(v28 + 48)];
  *v29 = 0;
  v29[8] = 1;
  sub_267AED784(v26, &v27[*(v28 + 64)], &qword_280211A38, &qword_267B1AEE8);
  sub_267AEC1D4(v18, &qword_280211A38, &qword_267B1AEE8);
  v30 = *(v39 + 8);
  v30(v14, v22);
  sub_267AEC1D4(v26, &qword_280211A38, &qword_267B1AEE8);
  return (v30)(v25, v22);
}

uint64_t sub_267B083F4(uint64_t a1)
{
  v1 = SiriMailModel.subject.getter();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    SiriMailModel.subject.getter();
  }

  else
  {
  }

  sub_267ADCFA4();
  v5 = sub_267B17340();
  v7 = v6;
  v9 = v8;
  sub_267B171E0();
  v10 = sub_267B17320();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_267AEC140(v5, v7, v9 & 1);

  v21 = v14 & 1;
  v20 = 0;
  v18[0] = v10;
  v18[1] = v12;
  LOBYTE(v18[2]) = v14 & 1;
  v18[3] = v16;
  v18[4] = swift_getKeyPath();
  v18[5] = 0x3FE0000000000000;
  v18[6] = swift_getKeyPath();
  v18[7] = 2;
  LOBYTE(v18[8]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211AD8, &qword_267B1AFD8);
  sub_267B0A5E8();
  sub_267B17420();
  memcpy(__dst, v18, 0x41uLL);
  return sub_267AEC1D4(__dst, &qword_280211AD8, &qword_267B1AFD8);
}

uint64_t sub_267B085AC(uint64_t a1)
{
  v2 = sub_267B165B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = v6;
    sub_267B165A0();
    sub_267B178F0();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_267B17910();
    sub_267B09F50(&qword_280211600, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_267B16DF0();
    __break(1u);
  }

  return result;
}

void sub_267B08718(uint64_t a1)
{
  v2 = sub_267B16F90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(a1 + 40);

  if ((v6 & 1) == 0)
  {
    sub_267B17AA0();
    v7 = sub_267B17150();
    sub_267B16B70();

    sub_267B16F80();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  v8 = sub_267B16960();
  v20[3] = v8;
  v9 = MEMORY[0x277D5CAA8];
  v20[4] = sub_267B09F50(&qword_2802119D8, MEMORY[0x277D5CAA8], MEMORY[0x277D5CAB8]);
  v20[5] = sub_267B09F50(&qword_2802119E0, v9, MEMORY[0x277D5CAB0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(v8 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D5CAA0], v8);
  sub_267B16740();

  __swift_destroy_boxed_opaque_existential_1(v20);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = v11;
    v13 = sub_267B16610();
    v14 = [v13 identifier];

    sub_267B17980();
    sub_267B17930();
    sub_267B17900();

    v15 = (a1 + *(type metadata accessor for SceneHostView(0) + 32));
    v16 = *v15;
    v17 = *(v15 + 1);
    LOBYTE(v20[0]) = v16;
    v20[1] = v17;
    v19[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E90, &qword_267B19E00);
    sub_267B17570();
    v18 = [objc_opt_self() sharedApplication];
    [v18 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
  }

  else
  {
    sub_267B17910();
    sub_267B09F50(&qword_280211600, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    sub_267B16DF0();
    __break(1u);
  }
}

uint64_t sub_267B08AB4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_267B17510();
  v3 = sub_267B17170();
  sub_267B16C00();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_267B174D0();
  if (sub_267B06C80(v12))
  {
    v13 = sub_267B174A0();
  }

  else
  {
    v13 = sub_267B17490();
  }

  v14 = v13;
  result = sub_267B17170();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = 0;
  *(a1 + 56) = v12;
  *(a1 + 64) = v14;
  *(a1 + 72) = result;
  *(a1 + 73) = 256;
  return result;
}

uint64_t sub_267B08B88(uint64_t a1)
{
  v2 = sub_267B16950();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_267B0E194(v4);
}

void sub_267B08C54(uint64_t a1)
{
  v2 = sub_267B16C80();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  if (qword_280210880 != -1)
  {
    swift_once();
  }

  v9 = sub_267B16BA0();
  __swift_project_value_buffer(v9, static Logger.siriMail);
  v10 = sub_267B16B80();
  v11 = sub_267B17A80();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_267ADA000, v10, v11, "#SceneHostView View did appear", v12, 2u);
    MEMORY[0x26D600E60](v12, -1, -1);
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = v13;
    v15 = sub_267B178C0();

    if (v15)
    {
      if ([v15 respondsToSelector_])
      {
        type metadata accessor for SceneHostView(0);
        sub_267B06AA0(&qword_280210898, &qword_267B19C50, MEMORY[0x277CDF3E0], v8);
        (*(v3 + 104))(v6, *MEMORY[0x277CDF3C0], v2);
        v16 = sub_267B16C70();
        v17 = *(v3 + 8);
        v17(v6, v2);
        v17(v8, v2);
        v18 = objc_opt_self();
        v19 = &selRef_systemBlackColor;
        if ((v16 & 1) == 0)
        {
          v19 = &selRef_systemWhiteColor;
        }

        v20 = [v18 *v19];
        sub_267B09E7C();
        sub_267B17470();
        v21 = sub_267B17AE0();
        [v15 informHostOfBackgroundColor_];

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_267B17910();
    sub_267B09F50(&qword_280211600, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    sub_267B16DF0();
    __break(1u);
  }
}

void sub_267B08FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v30 = a2;
  v4 = sub_267B16860();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v28 = a3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_267B16A50();

  v11 = *(v5 + 88);
  v12 = v11(v10, v4);
  LODWORD(a3) = *MEMORY[0x277D5CA00];
  v13 = *(v5 + 8);
  v13(v10, v4);
  if (v12 == a3)
  {
    if (qword_280210880 != -1)
    {
      swift_once();
    }

    v14 = sub_267B16BA0();
    __swift_project_value_buffer(v14, static Logger.siriMail);
    v15 = sub_267B16B80();
    v16 = sub_267B17AB0();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_12;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "#SceneHostView focus changed, but we're already sending the email: do nothing";
    goto LABEL_11;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_267B16A50();

  v19 = v11(v8, v4);
  v20 = *MEMORY[0x277D5CA20];
  v13(v8, v4);
  if (v19 == v20)
  {
    if (qword_280210880 != -1)
    {
      swift_once();
    }

    v21 = sub_267B16BA0();
    __swift_project_value_buffer(v21, static Logger.siriMail);
    v15 = sub_267B16B80();
    v16 = sub_267B17AB0();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_12;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "#SceneHostView focus changed, but we've already cancelled the email: do nothing";
LABEL_11:
    _os_log_impl(&dword_267ADA000, v15, v16, v18, v17, 2u);
    MEMORY[0x26D600E60](v17, -1, -1);
LABEL_12:

    return;
  }

  v22 = sub_267B16850();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v22);
  v24 = __swift_getEnumTagSinglePayload(v30, 1, v22);
  if (EnumTagSinglePayload == 1)
  {
    if (v24 != 1)
    {
      v25 = *(v28 + 16);
      if (v25)
      {
        v15 = v25;
        sub_267B178B0();
        goto LABEL_12;
      }

LABEL_21:
      sub_267B17910();
      sub_267B09F50(&qword_280211600, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
      sub_267B16DF0();
      __break(1u);
    }
  }

  else if (v24 == 1)
  {
    v26 = *(v28 + 16);
    if (v26)
    {
      v15 = v26;
      sub_267B178A0();
      goto LABEL_12;
    }

    goto LABEL_21;
  }
}

uint64_t sub_267B093D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v4 = sub_267B16F90();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_267B16860();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280210880 != -1)
  {
    swift_once();
  }

  v11 = sub_267B16BA0();
  __swift_project_value_buffer(v11, static Logger.siriMail);
  v12 = sub_267B16B80();
  v13 = sub_267B17A80();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_267ADA000, v12, v13, "#SceneHostView View did change", v14, 2u);
    MEMORY[0x26D600E60](v14, -1, -1);
  }

  sub_267B09F50(&qword_2802119B8, MEMORY[0x277D5CA28], MEMORY[0x277D5CA30]);
  result = sub_267B17950();
  if ((result & 1) == 0)
  {
    (*(v8 + 16))(v10, a2, v7);
    v16 = (*(v8 + 88))(v10, v7);
    v17 = *MEMORY[0x277D5CA00];
    result = (*(v8 + 8))(v10, v7);
    if (v16 == v17)
    {
      v18 = v31 + *(type metadata accessor for SceneHostView(0) + 32);
      v19 = *v18;
      v20 = *(v18 + 8);
      LOBYTE(v32) = *v18;
      v33 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E90, &qword_267B19E00);
      result = sub_267B17560();
      if ((v37 & 1) == 0)
      {
        v21 = sub_267B16B80();
        v22 = sub_267B17AB0();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_267ADA000, v21, v22, "#SceneHostView model state changed to .sent, view sending action", v23, 2u);
          MEMORY[0x26D600E60](v23, -1, -1);
        }

        v24 = *(v31 + 40);

        if ((v24 & 1) == 0)
        {
          sub_267B17AA0();
          v25 = sub_267B17150();
          sub_267B16B70();

          sub_267B16F80();
          swift_getAtKeyPath();

          (*(v29 + 8))(v6, v30);
        }

        v26 = sub_267B16960();
        v34 = v26;
        v27 = MEMORY[0x277D5CAA8];
        v35 = sub_267B09F50(&qword_2802119D8, MEMORY[0x277D5CAA8], MEMORY[0x277D5CAB8]);
        v36 = sub_267B09F50(&qword_2802119E0, v27, MEMORY[0x277D5CAB0]);
        v28 = __swift_allocate_boxed_opaque_existential_1(&v32);
        (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D5CAA0], v26);
        sub_267B16740();

        __swift_destroy_boxed_opaque_existential_1(&v32);
        LOBYTE(v32) = v19;
        v33 = v20;
        v37 = 1;
        return sub_267B17570();
      }
    }
  }

  return result;
}

uint64_t sub_267B098C4()
{
  if (qword_280210880 != -1)
  {
    swift_once();
  }

  v0 = sub_267B16BA0();
  __swift_project_value_buffer(v0, static Logger.siriMail);
  v1 = sub_267B16B80();
  v2 = sub_267B17A80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_267ADA000, v1, v2, "#SceneHostView View will disappear", v3, 2u);
    MEMORY[0x26D600E60](v3, -1, -1);
  }

  type metadata accessor for SiriMailModel(0);
  sub_267B09F50(&qword_280211830, type metadata accessor for SiriMailModel, &protocol conformance descriptor for SiriMailModel);
  return sub_267B169F0();
}

uint64_t sub_267B09B40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SceneHostView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B09BA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SceneHostView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_267B09C44()
{
  result = qword_2802119A0;
  if (!qword_2802119A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211988, &qword_267B1ADC0);
    sub_267ADCE94(&qword_2802119A8, &qword_2802119B0, &qword_267B1AE20, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802119A0);
  }

  return result;
}

unint64_t sub_267B09CFC()
{
  result = qword_280211810;
  if (!qword_280211810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211790, &qword_267B1A970);
    sub_267B09F50(&qword_280211818, MEMORY[0x277D5C9E8], MEMORY[0x277D5C9F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211810);
  }

  return result;
}

uint64_t sub_267B09DD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for SceneHostView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_267B09E7C()
{
  result = qword_2802119E8;
  if (!qword_2802119E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802119E8);
  }

  return result;
}

uint64_t sub_267B09EE8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211A10, &qword_267B1AEA0);
  OUTLINED_FUNCTION_0();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_267B09F50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for SceneHostView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210898, &qword_267B19C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_267B16C80();
    OUTLINED_FUNCTION_0();
    (*(v6 + 8))(v0 + v3 + v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_267B0A108(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SceneHostView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_267B0A184()
{
  result = qword_280211A68;
  if (!qword_280211A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211A60, &qword_267B1AF08);
    sub_267B0A23C();
    sub_267ADCE94(&qword_280211AC0, &qword_280211AC8, &qword_267B1AF38, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211A68);
  }

  return result;
}

unint64_t sub_267B0A23C()
{
  result = qword_280211A70;
  if (!qword_280211A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211A78, &qword_267B1AF10);
    sub_267B0A2F4();
    sub_267ADCE94(&qword_280211AB0, &qword_280211AB8, &qword_267B1AF30, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211A70);
  }

  return result;
}

unint64_t sub_267B0A2F4()
{
  result = qword_280211A80;
  if (!qword_280211A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211A88, &qword_267B1AF18);
    sub_267B0A3AC();
    sub_267ADCE94(&qword_280211AA0, &qword_280211AA8, &qword_267B1AF28, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211A80);
  }

  return result;
}

unint64_t sub_267B0A3AC()
{
  result = qword_280211A90;
  if (!qword_280211A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211A98, &qword_267B1AF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211A90);
  }

  return result;
}

uint64_t sub_267B0A430()
{
  OUTLINED_FUNCTION_3_5();
  result = sub_267B16F60();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_267B0A490()
{
  OUTLINED_FUNCTION_3_5();
  result = sub_267B16F40();
  *v0 = result & 1;
  return result;
}

uint64_t sub_267B0A4BC()
{
  OUTLINED_FUNCTION_3_5();
  result = sub_267B16F40();
  *v0 = result & 1;
  return result;
}

void sub_267B0A564()
{
  OUTLINED_FUNCTION_3_5();
  sub_267B16EE0();
  *v0 = v1;
}

uint64_t sub_267B0A5B4()
{
  OUTLINED_FUNCTION_3_5();
  result = sub_267B16F60();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

unint64_t sub_267B0A5E8()
{
  result = qword_280211AE0;
  if (!qword_280211AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211AD8, &qword_267B1AFD8);
    sub_267B0A6A0();
    sub_267ADCE94(&qword_280211B08, &qword_280211B10, &qword_267B1AFF0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211AE0);
  }

  return result;
}

unint64_t sub_267B0A6A0()
{
  result = qword_280211AE8;
  if (!qword_280211AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211AF0, &qword_267B1AFE0);
    sub_267ADCE94(&qword_280211AF8, &qword_280211B00, &qword_267B1AFE8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211AE8);
  }

  return result;
}

unint64_t sub_267B0A75C()
{
  result = qword_280211B18;
  if (!qword_280211B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802119C8, &qword_267B1AE78);
    sub_267B0A7E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211B18);
  }

  return result;
}

unint64_t sub_267B0A7E8()
{
  result = qword_280211B20;
  if (!qword_280211B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802119C0, &qword_267B1AE70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211990, &qword_267B1ADC8);
    sub_267B16860();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211988, &qword_267B1ADC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211790, &qword_267B1A970);
    sub_267B09C44();
    sub_267B09CFC();
    swift_getOpaqueTypeConformance2();
    sub_267B09F50(&qword_2802119B8, MEMORY[0x277D5CA28], MEMORY[0x277D5CA30]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211B20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_6(uint64_t a1)
{

  return sub_267B09BA8(v2, a1 + v1);
}

uint64_t SendMessageView.message.getter@<X0>(uint64_t a1@<X8>)
{
  sub_267B16950();
  OUTLINED_FUNCTION_0();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t SendMessageView.init(message:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_267B16950();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(a2, a1, v4);
  v7 = *(v5 + 32);
  v7(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  v7((v9 + v8), &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  result = type metadata accessor for SendMessageView(0);
  v11 = a2 + *(result + 20);
  *v11 = sub_267B0ACE4;
  *(v11 + 8) = v9;
  *(v11 + 16) = 0;
  return result;
}

uint64_t sub_267B0AB8C(uint64_t a1)
{
  v2 = sub_267B16950();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  type metadata accessor for SiriMailModel(0);
  swift_allocObject();
  return SiriMailModel.init(message:)(v4);
}

uint64_t sub_267B0AC64()
{
  sub_267B16950();
  OUTLINED_FUNCTION_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_267B0ACE4()
{
  v1 = *(sub_267B16950() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_267B0AB8C(v2);
}

uint64_t type metadata accessor for SendMessageView(uint64_t a1)
{
  result = qword_280211B40;
  if (!qword_280211B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SendMessageView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v30[1] = a1;
  v30[2] = type metadata accessor for SceneClientView(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v1);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211B28, &qword_267B1AFF8);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  v6 = v30 - v5;
  v7 = type metadata accessor for SceneHostView(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v8);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MailUIFeatureFlags.isSceneHostingEnabled()();
  type metadata accessor for SendMessageView(0);
  type metadata accessor for SiriMailModel(0);
  sub_267B0B12C(&qword_280211780, type metadata accessor for SiriMailModel, &protocol conformance descriptor for SiriMailModel);
  sub_267B16CA0();
  if (v11)
  {
    *v10 = sub_267B16D70();
    *(v10 + 1) = v12;
    sub_267B17910();
    sub_267B0B12C(&qword_280211600, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    *(v10 + 2) = sub_267B16E00();
    *(v10 + 3) = v13;
    *(v10 + 4) = swift_getKeyPath();
    v10[40] = 0;
    v14 = *(v7 + 28);
    *&v10[v14] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210898, &qword_267B19C50);
    swift_storeEnumTagMultiPayload();
    v15 = &v10[*(v7 + 32)];
    v31 = 0;
    sub_267B17550();
    v16 = v33;
    *v15 = v32;
    *(v15 + 1) = v16;
    v17 = type metadata accessor for SceneHostView;
    sub_267B0B1DC(v10, v6, type metadata accessor for SceneHostView);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_7();
    sub_267B0B12C(v18, v19, &unk_267B1AD6C);
    OUTLINED_FUNCTION_1_7();
    v22 = sub_267B0B12C(v20, v21, &unk_267B1A978);
    OUTLINED_FUNCTION_3_6(v22);
    v23 = v10;
  }

  else
  {
    sub_267B00B40(v3);
    v17 = type metadata accessor for SceneClientView;
    sub_267B0B1DC(v3, v6, type metadata accessor for SceneClientView);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_7();
    sub_267B0B12C(v24, v25, &unk_267B1AD6C);
    OUTLINED_FUNCTION_1_7();
    v28 = sub_267B0B12C(v26, v27, &unk_267B1A978);
    OUTLINED_FUNCTION_3_6(v28);
    v23 = v3;
  }

  return sub_267B0B23C(v23, v17);
}

uint64_t sub_267B0B12C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267B0B178@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267B16E70();
  *a1 = result;
  return result;
}

uint64_t sub_267B0B1DC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_267B0B23C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_267B0B2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_267B16950();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 16);
    if (v8 > 1)
    {
      return (v8 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_267B0B384(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_267B16950();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

void sub_267B0B430(uint64_t a1)
{
  sub_267B16950();
  if (v1 <= 0x3F)
  {
    sub_267B0B4B4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_267B0B4B4(uint64_t a1)
{
  if (!qword_280211B50)
  {
    type metadata accessor for SiriMailModel(255);
    sub_267B0B12C(&qword_280211780, type metadata accessor for SiriMailModel, &protocol conformance descriptor for SiriMailModel);
    v1 = sub_267B16CB0();
    if (!v2)
    {
      atomic_store(v1, &qword_280211B50);
    }
  }
}

unint64_t sub_267B0B54C()
{
  result = qword_280211B58;
  if (!qword_280211B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211B60, &qword_267B1B0C8);
    sub_267B0B12C(&qword_280211B30, type metadata accessor for SceneHostView, &unk_267B1AD6C);
    sub_267B0B12C(&qword_280211B38, type metadata accessor for SceneClientView, &unk_267B1A978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211B58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_6(uint64_t a1)
{

  return sub_267B17080();
}

uint64_t static Logger.logAndCrash(_:file:line:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211B68, &qword_267B1B0D8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  if (qword_280210880 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v16 = sub_267B16BA0();
  v17 = __swift_project_value_buffer(v16, static Logger.siriMail);
  v18 = *(v16 - 8);
  (*(v18 + 16))(v15, v17, v16);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
  sub_267B0BA80(v15, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v16) == 1)
  {
    sub_267B0BAF0(v13);
  }

  else
  {

    v19 = sub_267B16B80();
    v20 = sub_267B17A90();

    v34 = v20;
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v35 = a6;
      v22 = v21;
      v32 = swift_slowAlloc();
      v37 = v32;
      *v22 = 136315650;
      v23 = sub_267B17B70();
      v33 = a4;
      v25 = sub_267B0BBF4(v23, v24, &v37);
      v31 = v19;
      v26 = v25;

      *(v22 + 4) = v26;
      *(v22 + 12) = 2048;
      *(v22 + 14) = v35;
      *(v22 + 22) = 2080;
      *(v22 + 24) = sub_267B0BBF4(a1, a2, &v37);
      v27 = v31;
      _os_log_impl(&dword_267ADA000, v31, v34, "FatalError at %s:%lu - %s", v22, 0x20u);
      v28 = v32;
      swift_arrayDestroy();
      MEMORY[0x26D600E60](v28, -1, -1);
      MEMORY[0x26D600E60](v22, -1, -1);
    }

    else
    {
    }

    (*(v18 + 8))(v13, v16);
  }

  sub_267B16620();
  result = sub_267B17C10();
  __break(1u);
  return result;
}

uint64_t Logger.siriMail.unsafeMutableAddressor()
{
  if (qword_280210880 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v0 = sub_267B16BA0();

  return __swift_project_value_buffer(v0, static Logger.siriMail);
}

uint64_t sub_267B0BA08()
{
  v0 = sub_267B16BA0();
  __swift_allocate_value_buffer(v0, static Logger.siriMail);
  __swift_project_value_buffer(v0, static Logger.siriMail);
  return sub_267B16B90();
}

uint64_t sub_267B0BA80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211B68, &qword_267B1B0D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B0BAF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211B68, &qword_267B1B0D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Logger.siriMail.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280210880 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v2 = sub_267B16BA0();
  v3 = __swift_project_value_buffer(v2, static Logger.siriMail);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_267B0BBF4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v10 = sub_267B0BCC8(v15, 0, 0, 1, a1, a2, v6, v7, v8, v9);
  v11 = v15[0];
  if (v10)
  {
    v12 = v10;

    ObjectType = swift_getObjectType();
    v15[0] = v12;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v15[0] = a1;
    v15[1] = a2;
  }

  v13 = *a3;
  if (*a3)
  {
    sub_267AFFFE4(v15, *a3);
    *a3 = v13 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v15);
  return v11;
}

unint64_t sub_267B0BCC8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v15 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v15)
        {
          v16[0] = a5;
          v16[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v16, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v15) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_267B0BDC8(a5, a6);
    *a1 = v13;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_267B17BB0();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_267B0BDC8(uint64_t a1, unint64_t a2)
{
  v3 = sub_267B0BE14(a1, a2);
  sub_267B0BF2C(&unk_2878BB420);
  return v3;
}

uint64_t sub_267B0BE14(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_267B179C0())
  {
    result = sub_267B0C010(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_267B17B50();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_267B17BB0();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_267B0BF2C(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_267B0C080(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_267B0C010(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211B70, &qword_267B1B0F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_267B0C080(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211B70, &qword_267B1B0F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_267B0C1EC()
{
  OUTLINED_FUNCTION_17_1();
  result = SiriMailModel.to.getter();
  *v0 = result;
  return result;
}

uint64_t sub_267B0C240()
{
  OUTLINED_FUNCTION_17_1();
  result = SiriMailModel.cc.getter();
  *v0 = result;
  return result;
}

uint64_t sub_267B0C294()
{
  OUTLINED_FUNCTION_17_1();
  result = SiriMailModel.bcc.getter();
  *v0 = result;
  return result;
}

uint64_t sub_267B0C2E8()
{
  OUTLINED_FUNCTION_17_1();
  result = SiriMailModel.subject.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_267B0C328()
{
  OUTLINED_FUNCTION_17_1();
  result = SiriMailModel.body.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_267B0C368(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_267B0C3D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  OUTLINED_FUNCTION_16_0(v2);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - v4;
  sub_267B0F840(a1, &v7 - v4);
  return SiriMailModel.focusedField.setter(v5);
}

uint64_t SiriMailModel.__allocating_init(message:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SiriMailModel.init(message:)(a1);
  return v2;
}

uint64_t (*SiriMailModel.subject.modify())()
{
  v1 = OUTLINED_FUNCTION_23();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_8(v4);
  return sub_267B1132C;
}

uint64_t sub_267B0C5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_11_4();
  v5 = swift_allocObject();
  *(v5 + 16) = a4;
  *(v5 + 24) = 0;
  type metadata accessor for SiriMailModel(0);
  OUTLINED_FUNCTION_0_6();
  sub_267B10D6C(v6, v7, &protocol conformance descriptor for SiriMailModel);
  OUTLINED_FUNCTION_33();
  return sub_267B16A20();
}

uint64_t sub_267B0C640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = *a3;
  sub_267B16780();
  OUTLINED_FUNCTION_0();
  (*(v6 + 104))(a4, v5);
}

uint64_t sub_267B0C6D0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_267B16A50();

  return v3;
}

uint64_t sub_267B0C750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_267B16A60();
}

uint64_t (*SiriMailModel.body.modify())()
{
  v1 = OUTLINED_FUNCTION_23();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_8(v4);
  return sub_267B1132C;
}

uint64_t property wrapper backing initializer of SiriMailModel.attachments(uint64_t a1)
{
  OUTLINED_FUNCTION_11_4();
  v1 = swift_allocObject();
  *(v1 + 16) = sub_267B0F57C;
  *(v1 + 24) = 0;
  type metadata accessor for SiriMailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211B88, &qword_267B1B188);
  OUTLINED_FUNCTION_0_6();
  sub_267B10D6C(v2, v3, &protocol conformance descriptor for SiriMailModel);
  sub_267B0F5C8();
  return sub_267B16A20();
}

uint64_t (*SiriMailModel.attachments.modify())()
{
  v1 = OUTLINED_FUNCTION_23();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_8(v4);
  return sub_267B0C9E4;
}

uint64_t (*SiriMailModel.to.modify())()
{
  v1 = OUTLINED_FUNCTION_23();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_8(v4);
  return sub_267B1132C;
}

uint64_t sub_267B0CAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11_4();
  v4 = swift_allocObject();
  *(v4 + 16) = a3;
  *(v4 + 24) = 0;
  type metadata accessor for SiriMailModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802118F0, &qword_267B1ABF8);
  OUTLINED_FUNCTION_0_6();
  sub_267B10D6C(v5, v6, &protocol conformance descriptor for SiriMailModel);
  sub_267B0F6C8();
  OUTLINED_FUNCTION_33();
  return sub_267B16A20();
}

uint64_t (*SiriMailModel.cc.modify())()
{
  v1 = OUTLINED_FUNCTION_23();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_8(v4);
  return sub_267B1132C;
}

uint64_t sub_267B0CC74@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = *a2;
  sub_267B16780();
  OUTLINED_FUNCTION_0();
  (*(v5 + 104))(a3, v4);
}

uint64_t sub_267B0CD04(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_267B16A50();

  return v3;
}

uint64_t sub_267B0CD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_267B16A60();
}

uint64_t (*SiriMailModel.bcc.modify())()
{
  v1 = OUTLINED_FUNCTION_23();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_8(v4);
  return sub_267B1132C;
}

uint64_t property wrapper backing initializer of SiriMailModel.focusedField(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_29();
  sub_267B0F840(a1, v1);
  type metadata accessor for SiriMailModel(0);
  OUTLINED_FUNCTION_0_6();
  sub_267B10D6C(v4, v5, &protocol conformance descriptor for SiriMailModel);
  sub_267B09CFC();
  OUTLINED_FUNCTION_36();
  sub_267B16A20();
  return sub_267B0F8B4(a1);
}

uint64_t sub_267B0CF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_267B0F840(a1, a2);
  v3 = *MEMORY[0x277D5C930];
  v4 = sub_267B16780();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t SiriMailModel.focusedField.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  OUTLINED_FUNCTION_16_0(v2);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_267B0F840(a1, v5);

  sub_267B16A60();
  return sub_267B0F8B4(a1);
}

uint64_t (*SiriMailModel.focusedField.modify())()
{
  v1 = OUTLINED_FUNCTION_23();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_8(v4);
  return sub_267B1132C;
}

uint64_t property wrapper backing initializer of SiriMailModel.state()
{
  sub_267B16860();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29();
  v1 = OUTLINED_FUNCTION_35();
  v2(v1);
  type metadata accessor for SiriMailModel(0);
  OUTLINED_FUNCTION_0_6();
  sub_267B10D6C(v3, v4, &protocol conformance descriptor for SiriMailModel);
  OUTLINED_FUNCTION_16_2();
  sub_267B10D6C(v5, v6, MEMORY[0x277D5CA30]);
  OUTLINED_FUNCTION_36();
  sub_267B16A20();
  v7 = OUTLINED_FUNCTION_18();
  return v8(v7);
}

uint64_t sub_267B0D270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_267B16860();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = *MEMORY[0x277D5C958];
  v6 = sub_267B16780();
  v7 = *(*(v6 - 8) + 104);

  return v7(a2, v5, v6);
}

uint64_t sub_267B0D338(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_14_3();
  sub_267B16A50();
}

uint64_t sub_267B0D3C8(uint64_t a1)
{
  sub_267B16860();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v5 = v4 - v3;
  (*(v6 + 16))(v4 - v3, a1);
  return SiriMailModel.state.setter(v5);
}

uint64_t SiriMailModel.state.setter(uint64_t a1)
{
  v2 = sub_267B16860();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29();
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = OUTLINED_FUNCTION_35();
  v7(v6);

  sub_267B16A60();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*SiriMailModel.state.modify())()
{
  v1 = OUTLINED_FUNCTION_23();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_22(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_21(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_8(v4);
  return sub_267B1132C;
}

void sub_267B0D5F4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t SiriMailModel.subscription.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_subscription;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_267B0D9DC(void *a1)
{
  v2 = (v1 + *a1);
  OUTLINED_FUNCTION_18_0(a1, v5);
  v3 = *v2;

  return v3;
}

uint64_t sub_267B0DA30(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_267B0DBE0()
{
  v0 = sub_267B16860();
  v1 = OUTLINED_FUNCTION_16_0(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6_2(v3 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  OUTLINED_FUNCTION_16_0(v4);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6_2(v6);
  v8 = OUTLINED_FUNCTION_18_0(v7, v19);
  v9 = OUTLINED_FUNCTION_18_0(v8, v18);
  v10 = OUTLINED_FUNCTION_18_0(v9, v17);
  v11 = OUTLINED_FUNCTION_18_0(v10, v16);
  v12 = OUTLINED_FUNCTION_18_0(v11, v15);
  OUTLINED_FUNCTION_18_0(v12, v14);

  SiriMailModel.to.getter();
  SiriMailModel.cc.getter();
  SiriMailModel.bcc.getter();
  SiriMailModel.subject.getter();
  SiriMailModel.body.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_267B16A50();

  SiriMailModel.attachments.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_267B16A50();

  return sub_267B168F0();
}

uint64_t sub_267B0E194(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  OUTLINED_FUNCTION_16_0(v3);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_29();
  v5 = sub_267B16860();
  v6 = OUTLINED_FUNCTION_16_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v10 = sub_267B16820();
  SiriMailModel.to.setter(v10);
  v11 = sub_267B16810();
  SiriMailModel.cc.setter(v11);
  v12 = sub_267B16830();
  SiriMailModel.bcc.setter(v12);
  sub_267B16870();
  SiriMailModel.state.setter(v9);
  v13 = sub_267B168E0();
  if (!v14)
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  SiriMailModel.subject.setter(v13, v14);
  v15 = sub_267B16840();
  if (!v16)
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  SiriMailModel.body.setter(v15, v16);
  sub_267B167D0();
  SiriMailModel.focusedField.setter(v1);
  v17 = sub_267B16790();
  SiriMailModel.attachments.setter(v17);
  sub_267B16950();
  OUTLINED_FUNCTION_0();
  return (*(v18 + 8))(a1);
}

uint64_t SiriMailModel.init(message:)(uint64_t a1)
{
  v2 = v1;
  v160 = a1;
  v3 = sub_267B169A0();
  v4 = OUTLINED_FUNCTION_16_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6_2(v6 - v5);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BD8, &qword_267B1B340);
  OUTLINED_FUNCTION_0_0();
  v176 = v7;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6_2(v9);
  v170 = sub_267B16860();
  OUTLINED_FUNCTION_0_0();
  v180 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v168 = v12;
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v13);
  v167 = v142 - v14;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BE0, &qword_267B1B348);
  OUTLINED_FUNCTION_0_0();
  v175 = v15;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6_2(v17);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_2();
  v169 = v19;
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v20);
  v166 = v142 - v21;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BE8, &qword_267B1B350);
  OUTLINED_FUNCTION_0_0();
  v173 = v22;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6_2(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BF0, &qword_267B1B358);
  OUTLINED_FUNCTION_0_0();
  v171 = v26;
  v172 = v25;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6_2(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BF8, &qword_267B1B360);
  OUTLINED_FUNCTION_0_0();
  v31 = v30;
  v148 = v30;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v32);
  v34 = v142 - v33;
  v35 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__subject;
  v147 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__subject;
  v183 = 0;
  v184 = 0xE000000000000000;
  OUTLINED_FUNCTION_11_4();
  v36 = swift_allocObject();
  *(v36 + 16) = sub_267B112D4;
  *(v36 + 24) = 0;
  v37 = type metadata accessor for SiriMailModel(0);
  OUTLINED_FUNCTION_0_6();
  v40 = sub_267B10D6C(v38, v39, &protocol conformance descriptor for SiriMailModel);
  sub_267B16A20();
  v41 = *(v31 + 32);
  v42 = v1 + v35;
  v43 = v29;
  v143 = v29;
  v41(v42, v34, v29);
  v44 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__body;
  v150 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__body;
  v183 = 0;
  v184 = 0xE000000000000000;
  OUTLINED_FUNCTION_11_4();
  v45 = swift_allocObject();
  *(v45 + 16) = sub_267B112D8;
  *(v45 + 24) = 0;
  sub_267B16A20();
  v41(v1 + v44, v34, v43);
  v46 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__attachments;
  v149 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__attachments;
  v183 = MEMORY[0x277D84F90];
  v47 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_11_4();
  v48 = swift_allocObject();
  *(v48 + 16) = sub_267B11330;
  *(v48 + 24) = 0;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211B88, &qword_267B1B188);
  v158 = sub_267B0F5C8();
  v49 = v161;
  v165 = v40;
  sub_267B16A20();
  (*(v171 + 32))(v2 + v46, v49, v172);
  v50 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__to;
  v151 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__to;
  v183 = v47;
  OUTLINED_FUNCTION_11_4();
  v51 = swift_allocObject();
  *(v51 + 16) = sub_267B11334;
  *(v51 + 24) = 0;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802118F0, &qword_267B1ABF8);
  v53 = sub_267B0F6C8();
  v54 = v162;
  sub_267B16A20();
  v55 = *(v173 + 32);
  v56 = v179;
  v55(v2 + v50, v54, v179);
  v57 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__cc;
  v154 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__cc;
  v183 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_11_4();
  v58 = swift_allocObject();
  *(v58 + 16) = sub_267B11338;
  *(v58 + 24) = 0;
  OUTLINED_FUNCTION_37();
  v146 = v52;
  v145 = v53;
  sub_267B16A20();
  v59 = v2 + v57;
  v60 = v55;
  v55(v59, v54, v56);
  v61 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__bcc;
  v156 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__bcc;
  v183 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_11_4();
  v62 = swift_allocObject();
  *(v62 + 16) = sub_267B1133C;
  *(v62 + 24) = 0;
  OUTLINED_FUNCTION_37();
  sub_267B16A20();
  v60(v2 + v61, v54, v56);
  v63 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__focusedField;
  v161 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__focusedField;
  v64 = sub_267B16850();
  v65 = v166;
  __swift_storeEnumTagSinglePayload(v166, 1, 1, v64);
  sub_267B0F840(v65, v169);
  v162 = sub_267B09CFC();
  v66 = v157;
  OUTLINED_FUNCTION_36();
  v142[1] = v37;
  sub_267B16A20();
  sub_267B0F8B4(v65);
  (*(v175 + 32))(v2 + v63, v66, v177);
  v67 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__state;
  v144 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__state;
  v68 = v180;
  v69 = v167;
  v70 = v170;
  (*(v180 + 104))(v167, *MEMORY[0x277D5CA08], v170);
  v71 = *(v68 + 16);
  v155 = v68 + 16;
  v157 = v71;
  v72 = OUTLINED_FUNCTION_14_3();
  v73(v72);
  OUTLINED_FUNCTION_16_2();
  v153 = sub_267B10D6C(v74, v75, MEMORY[0x277D5CA30]);
  v76 = v163;
  sub_267B16A20();
  v77 = *(v68 + 8);
  v180 = v68 + 8;
  v152 = v77;
  v77(v69, v70);
  (*(v176 + 32))(v2 + v67, v76, v178);
  v78 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_snippetService;
  sub_267B169E0();
  sub_267B16990();
  *(v2 + v78) = sub_267B169D0();
  *(v2 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_subscription) = 0;
  v79 = v160;
  v80 = sub_267B168E0();
  if (v81)
  {
    v82 = v80;
  }

  else
  {
    v82 = 0;
  }

  if (v81)
  {
    v83 = v81;
  }

  else
  {
    v83 = 0xE000000000000000;
  }

  OUTLINED_FUNCTION_8_3();
  v164 = *(v148 + 8);
  v84 = v143;
  v164(v2 + v70, v143);
  v181 = v82;
  v182 = v83;
  OUTLINED_FUNCTION_11_4();
  v85 = swift_allocObject();
  *(v85 + 16) = sub_267B112D4;
  *(v85 + 24) = 0;
  OUTLINED_FUNCTION_31();
  v86 = MEMORY[0x277D837F8];
  sub_267B16A20();
  swift_endAccess();
  v87 = v79;
  v88 = sub_267B16840();
  if (v89)
  {
    v90 = v88;
  }

  else
  {
    v90 = 0;
  }

  if (v89)
  {
    v91 = v89;
  }

  else
  {
    v91 = 0xE000000000000000;
  }

  v92 = v150;
  OUTLINED_FUNCTION_15_2(v2 + v150);
  v164(v2 + v92, v84);
  v181 = v90;
  v182 = v91;
  OUTLINED_FUNCTION_11_4();
  v93 = swift_allocObject();
  *(v93 + 16) = sub_267B112D8;
  *(v93 + 24) = 0;
  sub_267B16A20();
  swift_endAccess();
  v94 = sub_267B16790();
  OUTLINED_FUNCTION_8_3();
  (*(v171 + 8))(v2 + v86, v172);
  v181 = v94;
  OUTLINED_FUNCTION_11_4();
  v95 = swift_allocObject();
  *(v95 + 16) = sub_267B11330;
  *(v95 + 24) = 0;
  OUTLINED_FUNCTION_31();
  sub_267B16A20();
  swift_endAccess();
  v96 = sub_267B16820();
  OUTLINED_FUNCTION_8_3();
  v173 = *(v173 + 8);
  v97 = v179;
  (v173)(v2 + v86, v179);
  v181 = v96;
  OUTLINED_FUNCTION_11_4();
  v98 = swift_allocObject();
  *(v98 + 16) = sub_267B11334;
  *(v98 + 24) = 0;
  OUTLINED_FUNCTION_31();
  sub_267B16A20();
  swift_endAccess();
  v99 = sub_267B16810();
  OUTLINED_FUNCTION_8_3();
  v100 = v97;
  v101 = v173;
  (v173)(v2 + v86, v100);
  v181 = v99;
  OUTLINED_FUNCTION_11_4();
  v102 = swift_allocObject();
  *(v102 + 16) = sub_267B11338;
  *(v102 + 24) = 0;
  OUTLINED_FUNCTION_31();
  sub_267B16A20();
  swift_endAccess();
  v103 = sub_267B16830();
  OUTLINED_FUNCTION_8_3();
  v101(v2 + v86, v179);
  v181 = v103;
  OUTLINED_FUNCTION_11_4();
  v104 = swift_allocObject();
  *(v104 + 16) = sub_267B1133C;
  *(v104 + 24) = 0;
  OUTLINED_FUNCTION_31();
  sub_267B16A20();
  swift_endAccess();
  v105 = v167;
  sub_267B16870();
  v106 = v144;
  OUTLINED_FUNCTION_15_2(v2 + v144);
  (*(v176 + 8))(v2 + v106, v178);
  v107 = v170;
  v157(v168, v105, v170);
  OUTLINED_FUNCTION_36();
  sub_267B16A20();
  v152(v105, v107);
  swift_endAccess();
  v108 = v166;
  sub_267B167D0();
  v109 = v161;
  OUTLINED_FUNCTION_15_2(v2 + v161);
  (*(v175 + 8))(v2 + v109, v177);
  sub_267B0F840(v108, v169);
  sub_267B16A20();
  sub_267B0F8B4(v108);
  swift_endAccess();
  v110 = sub_267B16900();
  OUTLINED_FUNCTION_12_2(v110, v111, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_toLabel);
  v112 = sub_267B168D0();
  OUTLINED_FUNCTION_12_2(v112, v113, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_ccLabel);
  v114 = sub_267B16910();
  OUTLINED_FUNCTION_12_2(v114, v115, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_bccLabel);
  v116 = sub_267B167F0();
  OUTLINED_FUNCTION_12_2(v116, v117, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_subjectLabel);
  v118 = sub_267B167A0();
  OUTLINED_FUNCTION_12_2(v118, v119, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_cancelLabel);
  v120 = sub_267B16800();
  OUTLINED_FUNCTION_12_2(v120, v121, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_cancelledLabel);
  v122 = sub_267B16930();
  OUTLINED_FUNCTION_12_2(v122, v123, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_sendLabel);
  v124 = sub_267B16940();
  OUTLINED_FUNCTION_12_2(v124, v125, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_sentLabel);
  v126 = sub_267B167E0();
  OUTLINED_FUNCTION_12_2(v126, v127, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_messageLabel);
  v128 = sub_267B167B0();
  OUTLINED_FUNCTION_12_2(v128, v129, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_deleteLabel);
  v130 = sub_267B16770();
  OUTLINED_FUNCTION_12_2(v130, v131, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_replyLabel);
  v132 = sub_267B16920();
  OUTLINED_FUNCTION_12_2(v132, v133, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_nextLabel);
  v134 = sub_267B167C0();
  OUTLINED_FUNCTION_12_2(v134, v135, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_seeAllLabel);
  v136 = sub_267B16760();
  OUTLINED_FUNCTION_12_2(v136, v137, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_moreInMailLabel);
  v138 = sub_267B16750();
  OUTLINED_FUNCTION_12_2(v138, v139, OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_newMessageLabel);
  swift_allocObject();
  swift_weakInit();
  sub_267B16A00();

  sub_267B16950();
  OUTLINED_FUNCTION_0();
  (*(v140 + 8))(v87);
  return v2;
}

uint64_t sub_267B0F3D0()
{

  OUTLINED_FUNCTION_11_4();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t type metadata accessor for SiriMailModel(uint64_t a1)
{
  result = qword_280211C08;
  if (!qword_280211C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267B0F480()
{
  OUTLINED_FUNCTION_17_1();
  result = SiriMailModel.subject.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_267B0F528()
{
  OUTLINED_FUNCTION_17_1();
  result = SiriMailModel.body.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

unint64_t sub_267B0F5C8()
{
  result = qword_280211B90;
  if (!qword_280211B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211B88, &qword_267B1B188);
    sub_267B10D6C(&qword_280211B98, MEMORY[0x277D5C910], MEMORY[0x277D5C918]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211B90);
  }

  return result;
}

uint64_t sub_267B0F67C()
{
  OUTLINED_FUNCTION_17_1();
  result = SiriMailModel.attachments.getter();
  *v0 = result;
  return result;
}

unint64_t sub_267B0F6C8()
{
  result = qword_280211BA8;
  if (!qword_280211BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802118F0, &qword_267B1ABF8);
    sub_267B10D6C(&qword_280211408, MEMORY[0x277D5CA58], MEMORY[0x277D5CA68]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211BA8);
  }

  return result;
}

uint64_t sub_267B0F77C()
{
  OUTLINED_FUNCTION_17_1();
  result = SiriMailModel.to.getter();
  *v0 = result;
  return result;
}

uint64_t sub_267B0F7C8()
{
  OUTLINED_FUNCTION_17_1();
  result = SiriMailModel.cc.getter();
  *v0 = result;
  return result;
}

uint64_t sub_267B0F814()
{
  OUTLINED_FUNCTION_17_1();
  result = SiriMailModel.bcc.getter();
  *v0 = result;
  return result;
}

uint64_t sub_267B0F840(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B0F8B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267B0F970()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_267B0F9A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_267B0FCB0(a1);
  }

  return result;
}

uint64_t SiriMailModel.post(action:)(uint64_t a1)
{
  v3 = sub_267B16780();
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29();
  sub_267B16880();
  OUTLINED_FUNCTION_0();
  (*(v7 + 16))(v1, a1);
  (*(v5 + 104))(v1, *MEMORY[0x277D5C960], v3);
  type metadata accessor for SiriMailModel(0);
  OUTLINED_FUNCTION_0_6();
  sub_267B10D6C(v8, v9, &protocol conformance descriptor for SiriMailModel);
  sub_267B16A10();
  return (*(v5 + 8))(v1, v3);
}

void sub_267B0FCB0(uint64_t a1)
{
  v2 = v1;
  v95 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  v4 = OUTLINED_FUNCTION_16_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  v88 = v5;
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v6);
  v89 = v83 - v7;
  sub_267B16860();
  OUTLINED_FUNCTION_0_0();
  v86 = v9;
  v87 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_2();
  v85 = v10;
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v11);
  v13 = v83 - v12;
  v90 = sub_267B16950();
  OUTLINED_FUNCTION_0_0();
  v92 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v91 = v17 - v16;
  v96 = sub_267B16780();
  OUTLINED_FUNCTION_0_0();
  v19 = v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v83 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = v83 - v27;
  v29 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_subscription;
  swift_beginAccess();
  if (*(v1 + v29) && (, isCancelled = swift_task_isCancelled(), , (isCancelled & 1) != 0))
  {
    if (qword_280210880 != -1)
    {
      OUTLINED_FUNCTION_2_8(&qword_280210880);
    }

    v31 = sub_267B16BA0();
    __swift_project_value_buffer(v31, static Logger.siriMail);
    v32 = sub_267B16B80();
    v33 = sub_267B17A80();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_267ADA000, v32, v33, "Skipping update since this SiriMailModel has been cancelled", v34, 2u);
      OUTLINED_FUNCTION_32();
    }
  }

  else
  {
    v93 = v23;
    if (qword_280210880 != -1)
    {
      OUTLINED_FUNCTION_2_8(&qword_280210880);
    }

    v35 = sub_267B16BA0();
    __swift_project_value_buffer(v35, static Logger.siriMail);
    v36 = v96;
    v94 = *(v19 + 16);
    v94(v28, v95, v96);
    v37 = sub_267B16B80();
    v38 = sub_267B17A80();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v84 = v13;
      v41 = v40;
      v99[0] = v40;
      *v39 = 136315138;
      v94(v26, v28, v96);
      v42 = sub_267B17990();
      v83[1] = v2;
      v44 = v43;
      v45 = *(v19 + 8);
      v45(v28, v96);
      v46 = sub_267B0BBF4(v42, v44, v99);

      *(v39 + 4) = v46;
      _os_log_impl(&dword_267ADA000, v37, v38, "Got change: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      v13 = v84;
      OUTLINED_FUNCTION_32();
      v36 = v96;
      OUTLINED_FUNCTION_32();
    }

    else
    {

      v45 = *(v19 + 8);
      v45(v28, v36);
    }

    type metadata accessor for SiriMailModel(0);
    OUTLINED_FUNCTION_0_6();
    sub_267B10D6C(v47, v48, &protocol conformance descriptor for SiriMailModel);
    sub_267B16BD0();
    sub_267B16BE0();

    v49 = v93;
    v94(v93, v95, v36);
    v50 = OUTLINED_FUNCTION_14_3();
    v52 = v51(v50);
    if (v52 != *MEMORY[0x277D5C928])
    {
      if (v52 == *MEMORY[0x277D5C968] || v52 == *MEMORY[0x277D5C950])
      {
        v66 = OUTLINED_FUNCTION_5_6();
        v67(v66);
        v68 = v49[1];
        v97 = *v49;
        v98 = v68;
        OUTLINED_FUNCTION_6_4();
        v69 = &qword_280211BF8;
        v70 = &qword_267B1B360;
      }

      else if (v52 == *MEMORY[0x277D5C920])
      {
        v71 = OUTLINED_FUNCTION_5_6();
        v72(v71);
        OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_6_4();
        v69 = &qword_280211BF0;
        v70 = &qword_267B1B358;
      }

      else
      {
        if (v52 != *MEMORY[0x277D5C940] && v52 != *MEMORY[0x277D5C938] && v52 != *MEMORY[0x277D5C948])
        {
          if (v52 == *MEMORY[0x277D5C930])
          {
            v75 = OUTLINED_FUNCTION_5_6();
            v76(v75);
            v77 = v89;
            sub_267B11264(v49, v89);
            sub_267B0F840(v77, v88);
            OUTLINED_FUNCTION_6_4();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BE0, &qword_267B1B348);
            sub_267B16A30();
            swift_endAccess();
            sub_267B0F8B4(v77);
          }

          else if (v52 == *MEMORY[0x277D5C960])
          {
            v78 = OUTLINED_FUNCTION_14_3();
            (v45)(v78);
          }

          else if (v52 == *MEMORY[0x277D5C958])
          {
            v79 = OUTLINED_FUNCTION_5_6();
            v80(v79);
            v82 = v86;
            v81 = v87;
            (*(v86 + 32))(v13, v49, v87);
            (*(v82 + 16))(v85, v13, v81);
            OUTLINED_FUNCTION_6_4();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BD8, &qword_267B1B340);
            sub_267B16A30();
            swift_endAccess();
            (*(v82 + 8))(v13, v81);
          }

          else
          {
            sub_267B17D50();
            __break(1u);
          }

          return;
        }

        v73 = OUTLINED_FUNCTION_5_6();
        v74(v73);
        OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_6_4();
        v69 = &qword_280211BE8;
        v70 = &qword_267B1B350;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(v69, v70);
      OUTLINED_FUNCTION_28();
      sub_267B16A30();
      swift_endAccess();
      return;
    }

    v53 = OUTLINED_FUNCTION_5_6();
    v54(v53);
    v56 = v91;
    v55 = v92;
    v57 = v90;
    (*(v92 + 32))(v91, v49, v90);
    v58 = sub_267B168E0();
    if (v59)
    {
      v60 = v58;
    }

    else
    {
      v60 = 0;
    }

    if (v59)
    {
      v61 = v59;
    }

    else
    {
      v61 = 0xE000000000000000;
    }

    v97 = v60;
    v98 = v61;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BF8, &qword_267B1B360);
    sub_267B16A30();
    swift_endAccess();
    v62 = sub_267B16840();
    if (v63)
    {
      v64 = v62;
    }

    else
    {
      v64 = 0;
    }

    if (v63)
    {
      v65 = v63;
    }

    else
    {
      v65 = 0xE000000000000000;
    }

    v97 = v64;
    v98 = v65;
    OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_28();
    sub_267B16A30();
    swift_endAccess();
    v97 = sub_267B16820();
    OUTLINED_FUNCTION_6_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BE8, &qword_267B1B350);
    OUTLINED_FUNCTION_28();
    sub_267B16A30();
    swift_endAccess();
    v97 = sub_267B16810();
    OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_28();
    sub_267B16A30();
    swift_endAccess();
    v97 = sub_267B16830();
    OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_28();
    sub_267B16A30();
    swift_endAccess();
    v97 = sub_267B16790();
    OUTLINED_FUNCTION_6_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BF0, &qword_267B1B358);
    OUTLINED_FUNCTION_28();
    sub_267B16A30();
    swift_endAccess();
    sub_267B16870();
    OUTLINED_FUNCTION_6_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BD8, &qword_267B1B340);
    sub_267B16A30();
    swift_endAccess();
    (*(v55 + 8))(v56, v57);
  }
}

uint64_t SiriMailModel.deinit()
{
  v1 = v0;
  if (qword_280210880 != -1)
  {
    OUTLINED_FUNCTION_2_8(&qword_280210880);
  }

  v2 = sub_267B16BA0();
  __swift_project_value_buffer(v2, static Logger.siriMail);

  v3 = sub_267B16B80();
  v4 = sub_267B17A80();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25 = v6;
    *v5 = 136315138;
    v7 = sub_267B17990();
    v9 = sub_267B0BBF4(v7, v8, &v25);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_267ADA000, v3, v4, "SiriMailModel.deinit on instance %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  v10 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__subject;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BF8, &qword_267B1B360);
  OUTLINED_FUNCTION_0();
  v13 = *(v12 + 8);
  v13(v1 + v10, v11);
  v13(v1 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__body, v11);
  v14 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__attachments;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BF0, &qword_267B1B358);
  OUTLINED_FUNCTION_0();
  (*(v15 + 8))(v1 + v14);
  v16 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__to;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BE8, &qword_267B1B350);
  OUTLINED_FUNCTION_0();
  v19 = *(v18 + 8);
  v19(v1 + v16, v17);
  v19(v1 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__cc, v17);
  v19(v1 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__bcc, v17);
  v20 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__focusedField;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BE0, &qword_267B1B348);
  OUTLINED_FUNCTION_0();
  (*(v21 + 8))(v1 + v20);
  v22 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel__state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211BD8, &qword_267B1B340);
  OUTLINED_FUNCTION_0();
  (*(v23 + 8))(v1 + v22);

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27();
  return v1;
}

uint64_t SiriMailModel.__deallocating_deinit()
{
  SiriMailModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_267B10B8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_subscription;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_267B10C54@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SiriMailModel(0);
  result = sub_267B16BD0();
  *a2 = result;
  return result;
}

uint64_t sub_267B10D6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_267B10DC8(uint64_t a1)
{
  sub_267B11008(319);
  if (v1 <= 0x3F)
  {
    sub_267B110B8(319, &qword_280211C20, &qword_280211B88, &qword_267B1B188, sub_267B0F5C8);
    if (v2 <= 0x3F)
    {
      sub_267B110B8(319, &qword_280211C28, &qword_2802118F0, &qword_267B1ABF8, sub_267B0F6C8);
      if (v3 <= 0x3F)
      {
        sub_267B110B8(319, &qword_280211C30, &qword_280211790, &qword_267B1A970, sub_267B09CFC);
        if (v4 <= 0x3F)
        {
          sub_267B11178(319);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_267B11008(uint64_t a1)
{
  if (!qword_280211C18)
  {
    type metadata accessor for SiriMailModel(255);
    sub_267B10D6C(&qword_280211830, type metadata accessor for SiriMailModel, &protocol conformance descriptor for SiriMailModel);
    v1 = sub_267B16A70();
    if (!v2)
    {
      atomic_store(v1, &qword_280211C18);
    }
  }
}

void sub_267B110B8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    type metadata accessor for SiriMailModel(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_0_6();
    sub_267B10D6C(v9, v10, &protocol conformance descriptor for SiriMailModel);
    a5();
    v11 = sub_267B16A70();
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_267B11178(uint64_t a1)
{
  if (!qword_280211C38)
  {
    type metadata accessor for SiriMailModel(255);
    sub_267B16860();
    sub_267B10D6C(&qword_280211830, type metadata accessor for SiriMailModel, &protocol conformance descriptor for SiriMailModel);
    sub_267B10D6C(&qword_2802119B8, MEMORY[0x277D5CA28], MEMORY[0x277D5CA30]);
    v1 = sub_267B16A70();
    if (!v2)
    {
      atomic_store(v1, &qword_280211C38);
    }
  }
}

uint64_t sub_267B11264(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211790, &qword_267B1A970);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_8(uint64_t a1)
{
  *(v2 + 40) = a1;

  return MEMORY[0x28215BBA8](v2, v1, v3, a1);
}

uint64_t OUTLINED_FUNCTION_6_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_2()
{
}

uint64_t OUTLINED_FUNCTION_15_2(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_18_0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_27()
{
}

void OUTLINED_FUNCTION_32()
{

  JUMPOUT(0x26D600E60);
}

uint64_t sub_267B115A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WidgetMailbox(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 2;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_267B1166C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WidgetMailbox(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 + 1);
  }

  return result;
}

uint64_t type metadata accessor for Snapshot(uint64_t a1)
{
  result = qword_280211C40;
  if (!qword_280211C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267B11760(uint64_t a1)
{
  result = type metadata accessor for WidgetMailbox(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10SiriMailUI8SnapshotV5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_267B11800(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 18))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267B11854(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_267B118B4(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 16) = 0;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_267B118E8(uint64_t a1, uint64_t a2, __int16 a3, unint64_t a4, uint64_t a5, __int16 a6)
{
  if (!a1)
  {
    return !a4;
  }

  if (a1 == 1)
  {
    return a4 == 1;
  }

  if (a4 < 2)
  {
    return 0;
  }

  if ((sub_267AFC24C(a1, a4) & 1) == 0)
  {
    return 0;
  }

  if (a3)
  {
    if ((a6 & 1) == 0)
    {
      return 0;
    }

    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  result = 0;
  if ((a6 & 1) == 0 && a2 == a5)
  {
    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  return result;
}

uint64_t sub_267B119D8@<X0>(void *a1@<X1>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211C50, &qword_267B1B550);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211C58, &qword_267B1B558);
  sub_267B11BD8();
  sub_267B173A0();
  if (a1)
  {
    v9 = a1;
    if (sub_267B17880())
    {
      sub_267B17890();
    }

    v10 = sub_267B17170();
    sub_267B16C00();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    (*(v6 + 32))(a3, v8, v5);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211C68, &unk_267B1B560);
    v20 = a3 + *(result + 36);
    *v20 = v10;
    *(v20 + 8) = v12;
    *(v20 + 16) = v14;
    *(v20 + 24) = v16;
    *(v20 + 32) = v18;
    *(v20 + 40) = 0;
  }

  else
  {
    sub_267B17910();
    sub_267ADC630();
    result = sub_267B16DF0();
    __break(1u);
  }

  return result;
}

unint64_t sub_267B11BD8()
{
  result = qword_280211C60;
  if (!qword_280211C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211C58, &qword_267B1B558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211C60);
  }

  return result;
}

unint64_t sub_267B11C40()
{
  result = qword_280211C70;
  if (!qword_280211C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211C68, &unk_267B1B560);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211C58, &qword_267B1B558);
    sub_267B11BD8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211C70);
  }

  return result;
}

double sub_267B11D08(_OWORD *a1, void (*a2)(__int128 *__return_ptr))
{
  a2(&v4);
  result = *&v4;
  *a1 = v4;
  return result;
}

void sub_267B11D5C(uint64_t *a1@<X8>)
{
  v2 = sub_267B174C0();
  sub_267B16D40();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

uint64_t sub_267B11D9C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{

  swift_getAtKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211C78, &unk_267B1B570);
  sub_267B175D0();
}

uint64_t sub_267B11E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EF8, &qword_267B19EB0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_267B11F38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EF8, &qword_267B19EB0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for WidgetMailbox(uint64_t a1)
{
  result = qword_280211C80;
  if (!qword_280211C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267B12040(uint64_t a1)
{
  sub_267B120E8(319);
  if (v1 <= 0x3F)
  {
    sub_267B1214C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_267B120E8(uint64_t a1)
{
  if (!qword_280211C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211C98, &qword_267B1B5F8);
    v1 = sub_267B17B00();
    if (!v2)
    {
      atomic_store(v1, &qword_280211C90);
    }
  }
}

void sub_267B1214C(uint64_t a1)
{
  if (!qword_280211CA0)
  {
    sub_267B16500();
    v1 = sub_267B17B00();
    if (!v2)
    {
      atomic_store(v1, &qword_280211CA0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10SiriMailUI13WidgetMailboxV13ConfigurationO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_267B121BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267B12214(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

void *sub_267B12264(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_267B12294(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a2)
  {
    case 0:
      return !a4;
    case 1:
      return a4 == 1;
    case 2:
      return a4 == 2;
    case 3:
      return a4 == 3;
    case 4:
      return a4 == 4;
    case 5:
      return a4 == 5;
    default:
      if (a4 < 6)
      {
        return 0;
      }

      if (a1 == a3 && a2 == a4)
      {
        return 1;
      }

      else
      {
        return sub_267B17D60();
      }
  }
}

uint64_t sub_267B12348()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  switch(v2)
  {
    case 0uLL:
      v3 = *(type metadata accessor for WidgetMailbox(0) + 32);
      goto LABEL_8;
    case 1uLL:
      v3 = *(type metadata accessor for WidgetMailbox(0) + 36);
      goto LABEL_8;
    case 2uLL:
      v3 = *(type metadata accessor for WidgetMailbox(0) + 40);
      goto LABEL_8;
    case 3uLL:
      v3 = *(type metadata accessor for WidgetMailbox(0) + 44);
      goto LABEL_8;
    case 4uLL:
      v3 = *(type metadata accessor for WidgetMailbox(0) + 28);
      goto LABEL_8;
    case 5uLL:
      v3 = *(type metadata accessor for WidgetMailbox(0) + 48);
LABEL_8:
      v4 = *(v0 + v3);

      break;
    default:
      v4 = *(v0 + 8);
      break;
  }

  sub_267B1245C(v1, v2);
  return v4;
}

uint64_t sub_267B1245C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_267B12470()
{
  v0 = sub_267B16590();
  OUTLINED_FUNCTION_0_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v6 = v5 - v4;
  sub_267B16580();
  type metadata accessor for WidgetMessage(0);
  v7 = sub_267B16570();
  (*(v2 + 8))(v6, v0);
  if (v7)
  {
    if (qword_280210890 != -1)
    {
      swift_once();
    }

    v8 = &qword_280211CB0;
  }

  else
  {
    if (qword_280210888 != -1)
    {
      swift_once();
    }

    v8 = &qword_280211CA8;
  }

  v9 = *v8;
  v10 = sub_267B16510();
  v11 = [v9 stringFromDate_];

  v12 = sub_267B17980();
  return v12;
}