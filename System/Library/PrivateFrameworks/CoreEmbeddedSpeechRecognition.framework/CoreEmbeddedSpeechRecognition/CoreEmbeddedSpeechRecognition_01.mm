id sub_225F25A4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v12 = 0;
  v4 = 0;
  v8 = sub_226099138();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v10 = &v4 - v5;
  v12 = v2;
  sub_225F270DC();
  (*(v6 + 16))(v10, v9, v8);
  result = sub_225F25B44(v10);
  *v11 = result;
  return result;
}

id sub_225F25B44(uint64_t a1)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  MEMORY[0x22AA72230]();
  sub_225F27014();
  sub_226099918();

  v6 = sub_226099868();

  sub_226099108();
  sub_2260990F8();
  sub_225F2C484();
  sub_226099918();

  v4 = sub_226099868();

  sub_226099128();
  v5 = [v8 initWithSpeechRecognitionFeatures:v6 acousticFeatures:v4 snr:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v6);
  if (v5)
  {
    v3 = v5;
  }

  else
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CESRUtilities.swift", 49, 2, 445, 0);
    __break(1u);
  }

  MEMORY[0x277D82BE0](v3);
  v1 = sub_226099138();
  (*(*(v1 - 8) + 8))(a1);
  MEMORY[0x277D82BD8](v3);
  return v3;
}

uint64_t sub_225F25E38@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v18 = a7;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v25 = a6;
  v39 = a4;
  v38 = a5;
  v26 = *(a4 - 8);
  v27 = a4 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v29 = v17 - v28;
  v35 = *(v8 + 16);
  v37 = v35;
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v30 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v31 = v17 - v30;
  v32 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v36 = v17 - v32;
  sub_225F317FC(v12, v17 - v32, v13, v14);
  if ((*(v33 + 48))(v36, 1, v35) == 1)
  {
    result = (*(*(v23 - 8) + 56))(v18, 1);
    v17[1] = v24;
  }

  else
  {
    (*(v33 + 32))(v31, v36, v35);
    v16 = v24;
    v19(v31, v29);
    v17[0] = v16;
    (*(v33 + 8))(v31, v35);
    if (v16)
    {
      return (*(v26 + 32))(v25, v29, v22);
    }

    else
    {
      (*(*(v23 - 8) + 56))(v18, 0, 1);
      return v17[0];
    }
  }

  return result;
}

id sub_225F261A4(uint64_t a1)
{
  v22 = a1;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786060, &qword_2260A0110);
  v21 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v28 = &v13 - v21;
  v27 = sub_226099768();
  v25 = *(v27 - 8);
  v26 = v27 - 8;
  v23 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v22);
  v24 = &v13 - v23;
  v31 = &v13 - v23;
  v30 = v4;
  v29 = v1;
  sub_225F2D73C(v4, v5, v3);
  if ((*(v25 + 48))(v28, 1, v27) == 1)
  {
    sub_225F271E8(v28, v6);
    return 0;
  }

  (*(v25 + 32))(v24, v28, v27);
  if ((sub_226099708() & 1) == 0)
  {
    (*(v25 + 8))(v24, v27);
    return 0;
  }

  v13 = sub_225F2D864();
  v14 = sub_226099748();
  v15 = v7;
  sub_226099738();
  v18 = v8;
  sub_226099758();
  v16 = v9;
  sub_226099718();
  v17 = v10;
  sub_226099728();
  v19 = sub_225F2B008(v14, v15, v18, v16, v17, v11);
  (*(v25 + 8))(v24, v27);
  return v19;
}

id sub_225F26438@<X0>(uint64_t *a1@<X8>, double *a2@<X0>)
{
  v3 = *a2;
  sub_225F27014();
  result = sub_225F26494(v3);
  *a1 = result;
  return result;
}

id sub_225F265F4(uint64_t a1, double a2)
{
  v53 = a1;
  v31 = "Fatal error";
  v32 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v33 = "CoreEmbeddedSpeechRecognition/CESRUtilities.swift";
  v34 = "Unexpectedly found nil while unwrapping an Optional value";
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v83 = 0.0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v72 = 0;
  v58 = sub_2260990C8();
  v54 = *(v58 - 8);
  v55 = v58 - 8;
  v36 = *(v54 + 64);
  v35 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v56 = &v20 - v35;
  v37 = v35;
  MEMORY[0x28223BE20](v3);
  v57 = &v20 - v37;
  v91 = v4;
  v90 = v2;
  v50 = sub_225F1E118();
  v47 = sub_225F26174();
  v89 = v47;
  v44 = 1;
  sub_226099AA8();
  v38 = v5;
  v39 = sub_2260999F8();

  [v47 setText_];
  MEMORY[0x277D82BD8](v39);
  v40 = 0.0;
  [v47 setStartTime_];
  [v47 setEndTime_];
  [v47 setSilenceStartTime_];
  v67 = 0;
  [v47 setRemoveSpaceBefore_];
  [v47 setRemoveSpaceAfter_];
  v43 = "";
  sub_226099AA8();
  v41 = v6;
  v42 = sub_2260999F8();

  [v47 setPhoneSequence_];
  MEMORY[0x277D82BD8](v42);
  sub_226099AA8();
  v45 = v7;
  v46 = sub_2260999F8();

  [v47 setIpaPhoneSequence_];
  MEMORY[0x277D82BD8](v46);
  v65 = sub_225F2CB58();
  v63 = sub_225F26174();
  v88 = v63;
  v75 = 1;
  v49 = sub_22609A4F8();
  v48 = v8;
  MEMORY[0x277D82BE0](v47);
  *v48 = v47;
  sub_225EF5418();
  v51 = v9;
  v52 = sub_226099C78();

  [v63 setTokens_];
  MEMORY[0x277D82BD8](v52);
  sub_226098EE8();
  (*(v54 + 104))(v56, *MEMORY[0x277CDCBA0], v58);
  v61 = sub_2260990B8();
  v60 = *(v54 + 8);
  v59 = v54 + 8;
  v60(v56, v58);
  v60(v57, v58);
  v87 = v61 & 1;
  sub_226098F58();
  v84 = v92;
  v85 = v93;
  v86 = v94;
  sub_22609A0F8();
  v62 = v10;
  v83 = v10;
  v74 = sub_225F2C904();
  v66 = sub_22609A4F8();
  v64 = v11;
  MEMORY[0x277D82BE0](v63);
  *v64 = v63;
  sub_225EF5418();
  v79 = sub_225F2736C(v12, v67 & 1);
  v82 = v79;
  v68 = sub_225F2C780();
  v70 = sub_225F27014();
  v71 = sub_22609A4F8();
  v69 = v13;
  *v13 = sub_22609A108();
  sub_225EF5418();
  v73 = sub_225F273B8(v14, v72);
  v81 = v73;
  v76 = sub_225F27290();
  v77 = sub_22609A4F8();
  v78 = v15;
  MEMORY[0x277D82BE0](v79);
  if (v79)
  {
    v30 = v79;
  }

  else
  {
    sub_22609A3B8(v31, 11, 2, v34, 57, 2, v33, 49, 2, 160, 0);
    __break(1u);
  }

  *v78 = v30;
  sub_225EF5418();
  v27 = v16;
  v28 = sub_22609A4F8();
  v29 = v17;
  MEMORY[0x277D82BE0](v73);
  if (v73)
  {
    v26 = v73;
  }

  else
  {
    sub_22609A3B8(v31, 11, 2, v34, 57, 2, v33, 49, 2, 160, 0);
    __break(1u);
  }

  *v29 = v26;
  sub_225EF5418();
  v23 = sub_225F27400(v27, v18);
  v80 = v23;
  v24 = 0;
  sub_225F2C420();
  MEMORY[0x277D82BE0](v23);
  MEMORY[0x277D82BE0](v23);
  MEMORY[0x277D82BE0](v23);
  v25 = sub_225F27448(v23, v23, v23, v24, v61 & 1, v24, 1, v62);
  if (v25)
  {
    v22 = v25;
  }

  else
  {
    sub_22609A3B8(v31, 11, 2, v32, 68, 2, v33, 49, 2, 161, 0);
    __break(1u);
  }

  v21 = v22;
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v73);
  MEMORY[0x277D82BD8](v79);
  MEMORY[0x277D82BD8](v63);
  MEMORY[0x277D82BD8](v47);
  return v21;
}

unint64_t sub_225F27014()
{
  v2 = qword_280D76390;
  if (!qword_280D76390)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76390);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F27078()
{
  v2 = qword_280D76518;
  if (!qword_280D76518)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76518);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F270DC()
{
  v2 = qword_280D76490;
  if (!qword_280D76490)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76490);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_225F27140(uint64_t a1)
{
  v3 = sub_226099138();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_225F271E8(uint64_t a1, double a2)
{
  v4 = sub_226099768();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  return a1;
}

unint64_t sub_225F27290()
{
  v2 = qword_280D764C8;
  if (!qword_280D764C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D764C8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F272F4()
{
  v2 = qword_280D764C0;
  if (!qword_280D764C0)
  {
    sub_225F27290();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D764C0);
    return WitnessTable;
  }

  return v2;
}

id sub_225F274C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v70 = a1;
  v71 = a3;
  v72 = a4;
  v73 = a5;
  v80 = 0;
  v84 = sub_225F27F18;
  v62 = sub_225F2D734;
  v63 = sub_225F2D374;
  v64 = sub_225EF7434;
  v65 = sub_225EF7434;
  v66 = sub_225EF71D0;
  v67 = "Fatal error";
  v68 = "Unexpectedly found nil while unwrapping an Optional value";
  v69 = "CoreEmbeddedSpeechRecognition/CESRUtilities.swift";
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v87 = 0;
  v79 = 0;
  v74 = sub_226098C58();
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  v77 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v78 = &v27 - v77;
  v102 = v6;
  v101 = a2;
  v100 = v7;
  v99 = v8;
  v98 = v9;
  v81 = sub_226098B08();
  v82 = sub_225F27014();
  v10 = sub_225F300F4();
  v11 = sub_225F15970(v84, v80, v81, v82, MEMORY[0x277D84A98], v10, MEMORY[0x277D84AC0], v83);
  v85 = 0;
  v86 = v11;
  v60 = v11;
  v97 = v11;
  v96 = 0;
  sub_225F2CB58();
  v61 = sub_225F26174();
  v95 = v61;
  if (v70 < v71)
  {
    v56 = sub_226098F48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786048, &qword_2260A00F8);
    sub_226099D38();
    v57 = v88;

    v59 = sub_225F1D820(v57, 0);

    v87 = v59;
    sub_2260998E8();
    sub_225F1E118();
    v58 = sub_226099C78();

    [v61 setTokens_];
    MEMORY[0x277D82BD8](v58);
  }

  else
  {
    v12 = v78;
    v13 = sub_225F1CF74();
    (*(v75 + 16))(v12, v13, v74);
    v45 = 7;
    v46 = swift_allocObject();
    *(v46 + 16) = v70;
    v54 = sub_226098C48();
    v55 = sub_22609A0A8();
    v43 = 17;
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    v49 = swift_allocObject();
    *(v49 + 16) = 8;
    v44 = 32;
    v14 = swift_allocObject();
    v15 = v46;
    v47 = v14;
    *(v14 + 16) = v62;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v47;
    v51 = v16;
    *(v16 + 16) = v63;
    *(v16 + 24) = v17;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v50 = sub_22609A4F8();
    v52 = v18;

    v19 = v48;
    v20 = v52;
    *v52 = v64;
    v20[1] = v19;

    v21 = v49;
    v22 = v52;
    v52[2] = v65;
    v22[3] = v21;

    v23 = v51;
    v24 = v52;
    v52[4] = v66;
    v24[5] = v23;
    sub_225EF5418();

    if (os_log_type_enabled(v54, v55))
    {
      v25 = v85;
      v36 = sub_22609A188();
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v35 = 0;
      v37 = sub_225EF5468(0, v34, v34);
      v38 = sub_225EF5468(v35, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v39 = &v93;
      v93 = v36;
      v40 = &v92;
      v92 = v37;
      v41 = &v91;
      v91 = v38;
      sub_225EF54BC(0, &v93);
      sub_225EF54BC(1, v39);
      v89 = v64;
      v90 = v48;
      sub_225EF73E8(&v89, v39, v40, v41);
      v42 = v25;
      if (v25)
      {

        __break(1u);
      }

      else
      {
        v89 = v65;
        v90 = v49;
        sub_225EF73E8(&v89, &v93, &v92, &v91);
        v33 = 0;
        v89 = v66;
        v90 = v51;
        sub_225EF73E8(&v89, &v93, &v92, &v91);
        _os_log_impl(&dword_225EEB000, v54, v55, "AFSpeechUtterance at index %ld will have a nil AFSpeechInterpretation (used for lossless n-best) since the lossless n-best does not have an entry at this index.)", v36, 0xCu);
        v32 = 0;
        sub_225EF7AF4(v37, 0, v34);
        sub_225EF7AF4(v38, v32, MEMORY[0x277D84F70] + 8);
        sub_22609A168();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v54);
    (*(v75 + 8))(v78, v74);
  }

  v30 = 0;
  sub_225F2C780();
  sub_2260998E8();
  MEMORY[0x277D82BE0](v61);
  v31 = sub_225F27FB4(v60, v30, v61);
  if (v31)
  {
    v29 = v31;
  }

  else
  {
    sub_22609A3B8(v67, 11, 2, v68, 57, 2, v69, 49, 2, 203, 0);
    __break(1u);
  }

  v28 = v29;
  v94 = v29;
  [v29 setSource_];
  MEMORY[0x277D82BD8](v61);

  return v28;
}

id sub_225F27F18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_225F27014();
  result = sub_225F27F74(v3);
  *a2 = result;
  return result;
}

uint64_t sub_225F28004@<X0>(char *a1@<X0>, uint64_t (*a2)(uint64_t, char *)@<X1>, uint64_t *a3@<X8>)
{
  v7 = *a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786288, &qword_2260A02D8);
  result = a2(v7, &a1[*(v3 + 48)]);
  *a3 = result;
  return result;
}

char *sub_225F28084@<X0>(uint64_t *a1@<X0>, id *a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  result = [*a2 confidenceScore];
  if (__OFADD__(v6, result))
  {
    __break(1u);
  }

  else
  {
    *a3 = &result[v6];
  }

  return result;
}

void sub_225F280FC(id *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = 0;
  v16 = *a1;
  v11 = objc_opt_self();
  v12 = [v16 tokens];
  if (v12)
  {
    sub_225F1E118();
    v8 = sub_226099C88();
    MEMORY[0x277D82BD8](v12);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v14 = v9;
  if (v9)
  {
    v15 = v14;
  }

  else
  {
    sub_225F1E118();
    v15 = sub_22609A4F8();
  }

  sub_225F1E118();
  v6 = sub_226099C78();

  v7 = [v11 transcriptFromTokens_];
  MEMORY[0x277D82BD8](v6);
  if (v7)
  {
    *&v4 = sub_226099A08();
    *(&v4 + 1) = v2;
    MEMORY[0x277D82BD8](v7);
    v5 = v4;
  }

  else
  {
    v5 = 0uLL;
  }

  v13 = v5;
  if (*(&v5 + 1))
  {
    *a2 = v13;
  }

  else
  {
    *a2 = sub_226099AA8();
    *(a2 + 8) = v3;
    if (*(&v13 + 1))
    {
      sub_225EFE6BC(&v13);
    }
  }
}

uint64_t sub_225F28350@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_2260998E8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_225F28384(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  v18 = 0;
  memset(v16, 0, sizeof(v16));
  v19 = a1;
  v20 = a2;
  v17 = sub_226099AA8();
  v18 = v2;
  sub_2260998E8();
  v14[6] = a1;
  v14[7] = a2;
  v13 = sub_225F2D8C8();
  MEMORY[0x22AA72AD0](v15, MEMORY[0x277D837D0]);
  v14[4] = v15[0];
  v14[5] = v15[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786178, &qword_2260A01E8);
  sub_22609A418();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786180, &unk_2260A01F0);
    sub_22609A428();
    if (!v14[3])
    {
      break;
    }

    if ((sub_226099988() & 1) == 0)
    {

      break;
    }

    v7 = v17;
    v8 = v18;
    sub_2260998E8();
    sub_2260998E8();
    v3 = sub_226099A88();
    v9 = MEMORY[0x22AA72BB0](v7, v8, v3);
    v10 = v4;

    v17 = v9;
    v18 = v10;
  }

  sub_225EFE6BC(v16);
  sub_2260998E8();
  MEMORY[0x22AA72AD0](v14, MEMORY[0x277D837D0], v13);
  sub_225F2D940();
  v6 = sub_226099BC8();
  sub_225EFE6BC(&v17);
  return v6;
}

void sub_225F28614(id *a1@<X0>, _OWORD *a2@<X8>)
{
  v40 = a2;
  v46 = 0;
  v41 = *a1;
  v46 = v41;
  v42 = objc_opt_self();
  v43 = [v41 tokens];
  if (v43)
  {
    v39 = v43;
    v36 = v43;
    v35 = sub_225F1E118();
    v37 = sub_226099C88();

    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  v34 = v38;
  if (v38)
  {
    v33 = v34;
  }

  else
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CESRUtilities.swift", 49, 2, 279, 0);
    __break(1u);
  }

  v29 = v33;
  v28 = sub_225F1E118();
  v30 = sub_226099C78();

  v32 = [v42 transcriptFromTokens_];
  v31 = v32;

  if (v32)
  {
    v27 = v31;
    v22 = v31;
    v23 = sub_226099A08();
    v24 = v2;

    v25 = v23;
    v26 = v24;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v20 = v26;
  v21 = v25;
  if (v26)
  {
    v18 = v21;
    v19 = v20;
    v44[0] = v21;
    v44[1] = v20;
    v12 = sub_2260987C8();
    v9 = *(v12 - 8);
    v10 = v9;
    v13 = &v9;
    MEMORY[0x28223BE20](&v9);
    v11 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2260987B8();
    sub_225F2CF00();
    v14 = v44;
    v4 = sub_22609A1F8();
    v15 = v5;
    v16 = v4;
    (*(v10 + 8))(v11, v12);
    sub_225EFE6BC(v14);
    *&v17 = v16;
    *(&v17 + 1) = v15;
  }

  else
  {
    v17 = 0uLL;
  }

  v45 = v17;
  if (*(&v17 + 1))
  {
    *v40 = v45;
  }

  else
  {
    v6 = sub_226099AA8();
    v7 = v40;
    *v40 = v6;
    *(v7 + 1) = v8;
    if (*(&v45 + 1))
    {
      sub_225EFE6BC(&v45);
    }
  }
}

uint64_t sub_225F28A40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2260993F8();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_225F28A8C(uint64_t *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  sub_225F3006C();
  return (sub_226099C38() ^ 1) & 1;
}

uint64_t sub_225F28B30@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x22AA72BB0]();
  *a1 = result;
  a1[1] = v2;
  return result;
}

void sub_225F28BA4(uint64_t *a1)
{
  v8 = 0;
  v9 = 0;
  v5 = a1[1];
  v8 = *a1;
  v4 = v8;
  v9 = v5;
  sub_2260998E8();
  v7[6] = v8;
  v7[7] = v5;
  sub_225F2D16C();
  sub_226099FF8();
  v7[2] = v7[8];
  v7[3] = v7[9];
  v7[4] = v7[10];
  v7[5] = v7[11];
  sub_225F2FED8();
  v2 = sub_22609A1E8();
  v3 = v1;

  v7[0] = v2;
  v7[1] = v3;
  sub_2260998E8();
  v6[4] = v4;
  v6[5] = v5;
  sub_225F28D40();
  sub_22609A018();
  v6[0] = v6[6];
  v6[1] = v6[7];
  v6[2] = v6[8];
  v6[3] = v6[9];
  sub_225F2FF50();
  sub_225F2FFC8();
  sub_22609A048();
  sub_225F30040(v6);
  sub_225EFE6BC(v7);
}

uint64_t sub_225F28D58(uint64_t a1)
{
  v7[1] = 0;
  v6[0] = 0;
  v6[1] = 0;
  v7[2] = a1;
  sub_225F1E118();
  v7[0] = sub_226099848();
  sub_2260998E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  sub_225F156F8();
  sub_22609A028();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D785E48, &unk_22609F970);
    sub_22609A388();
    if (!v5)
    {
      break;
    }

    v4 = sub_225F26174();
    sub_2260998E8();
    v3 = sub_2260999F8();

    [v4 setText_];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BE0](v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786028, &qword_2260A00D0);
    sub_226099CE8();
    MEMORY[0x277D82BD8](v4);
  }

  sub_225EFE6E8(v6);
  v2 = v7[0];
  sub_2260998E8();
  sub_225EFE6E8(v7);
  return v2;
}

uint64_t sub_225F28F88(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  swift_endAccess();
  return v3;
}

uint64_t sub_225F28FDC@<X0>(uint64_t *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786028, &qword_2260A00D0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869E0, &qword_2260A02D0);
  v1 = sub_225F2D1E4();
  result = sub_225F15970(sub_225F290AC, 0, v4, v5, MEMORY[0x277D84A98], v1, MEMORY[0x277D84AC0], v6);
  *a1 = result;
  return result;
}

id sub_225F290AC@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [*a1 text];
  v9 = result;
  if (result)
  {
    v4 = sub_226099A08();
    v5 = v3;
    result = MEMORY[0x277D82BD8](v9);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *a2 = v6;
  a2[1] = v7;
  return result;
}

id sub_225F291C0(uint64_t a1)
{
  sub_225F27078();
  v6 = sub_225F292E0(a1, 1);
  v5 = sub_225F292E0(a1, 0);
  sub_225F2D9C8();
  sub_2260998E8();
  sub_2260998E8();
  v4 = sub_225F29F24(v6, v5);
  sub_225F2DA2C();
  MEMORY[0x277D82BE0](v4);
  v3 = sub_225F29F6C(v4);
  MEMORY[0x277D82BD8](v4);

  return v3;
}

uint64_t sub_225F292E0(uint64_t a1, int a2)
{
  v84 = a2;
  v75 = a1;
  v81 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v103 = 0;
  v102 = 0;
  v101 = 0;
  memset(v100, 0, sizeof(v100));
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v64 = 0;
  v87 = 0;
  v86 = 0;
  v65 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786058, &qword_2260A0E00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v66 = &v21 - v65;
  v67 = sub_226098FA8();
  v68 = *(v67 - 8);
  v69 = v68;
  v71 = *(v68 + 64);
  MEMORY[0x28223BE20](v67 - 8);
  v73 = (v71 + 15) & 0xFFFFFFFFFFFFFFF0;
  v70 = &v21 - v73;
  v107 = &v21 - v73;
  MEMORY[0x28223BE20](&v21 - v73);
  v72 = &v21 - v73;
  MEMORY[0x28223BE20](&v21 - v73);
  v74 = &v21 - v73;
  v106 = &v21 - v73;
  v77 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0) - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v79 = (v77 + 15) & 0xFFFFFFFFFFFFFFF0;
  v76 = &v21 - v79;
  MEMORY[0x28223BE20](v3);
  v78 = &v21 - v79;
  MEMORY[0x28223BE20](v4);
  v80 = &v21 - v79;
  v105 = &v21 - v79;
  v104 = v5;
  v103 = v6;
  v102 = v2;
  v82 = sub_225F2DA90();
  v83 = v82;
  v101 = sub_22609A4F8();
  if (v84)
  {
    v63 = type metadata accessor for CombinedTranscriberOutput(0);
    sub_225F1D0EC((v75 + *(v63 + 28)), v78);
    sub_225F2DAF4(v78, v80);
    (*(v69 + 16))(v72, v75 + *(v63 + 24), v67);
  }

  else
  {
    v7 = type metadata accessor for CombinedTranscriberOutput(0);
    sub_225F1D0EC((v75 + *(v7 + 20)), v78);
    sub_225F2DAF4(v78, v80);
    (*(v69 + 16))(v72, v75, v67);
  }

  (*(v69 + 32))(v74, v72, v67);
  (*(v69 + 16))(v72, v74, v67);
  sub_226098F88();
  v59 = *(v69 + 8);
  v60 = (v69 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v59(v72, v67);
  sub_225F2C610(v66);
  sub_225F1D0EC(v80, v76);
  v61 = sub_226099458();
  v62 = *(v61 - 8);
  if ((*(v62 + 48))(v76, 1) == 1)
  {
    sub_225F2DC1C(v76);
    v58 = 0;
  }

  else
  {
    v57 = sub_226099448();
    (*(v62 + 8))(v76, v61);
    v58 = v57;
  }

  v97 = v58;
  if (v58)
  {
    v98 = v97;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7861A8, &qword_2260A0200);
    v98 = sub_22609A4F8();
    if (v97)
    {
      sub_225EFE6E8(&v97);
    }
  }

  v8 = v64;
  v96 = v98;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7861B0, &qword_2260A0208);
  v9 = sub_225F2DCC4();
  v55 = &v96;
  MEMORY[0x22AA72D20](&v99, v54, v9);
  sub_225EFE6E8(v55);
  v95 = v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7861C0, &qword_2260A0210);
  sub_22609A3F8();
  for (i = v8; ; i = v25)
  {
    v51 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7861C8, &qword_2260A0218);
    sub_22609A408();
    v52 = v93;
    v53 = v94;
    if (!v94)
    {
      sub_225EFE6E8(v100);
      v22 = v101;
      sub_2260998E8();
      v59(v70, v67);
      v59(v74, v67);
      sub_225F2DC1C(v80);
      sub_225EFE6E8(&v101);
      return v22;
    }

    v49 = v52;
    v50 = v53;
    v10 = v51;
    v35 = v53;
    v26 = v52;
    v92 = v52;
    v91 = v53;
    v28 = MEMORY[0x22AA72040]();
    v41 = 0;
    v31 = sub_226098828();
    v27 = *(v31 - 8);
    v29 = v27;
    v36 = &v21;
    MEMORY[0x28223BE20](v26);
    v30 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_226099D38();

    v32 = sub_226098818();
    v34 = &v21;
    MEMORY[0x28223BE20](&v21);
    v33 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_226098808();
    (*(v29 + 8))(v30, v31);
    sub_225F2DD4C();
    v38 = sub_226099BC8();
    v39 = v13;
    v37 = v38;
    v45 = v13;
    v89 = v38;
    v90 = v13;
    v88 = v35;
    sub_2260998E8();
    v40 = &v21;
    MEMORY[0x28223BE20](v38);
    v42 = &v21 - 4;
    *(&v21 - 2) = v14;
    *(&v21 - 1) = v15;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7861A8, &qword_2260A0200);
    v44 = sub_225F2DDF4();
    v16 = sub_225F2DE58();
    v18 = sub_225F15970(sub_225F2DDC4, v42, v43, v44, MEMORY[0x277D84A98], v16, MEMORY[0x277D84AC0], v17);
    v46 = v10;
    v47 = v18;
    v48 = v45;
    if (v10)
    {
      break;
    }

    v24 = v47;
    v25 = 0;

    v87 = v24;
    sub_2260998E8();
    sub_2260998E8();
    v23 = sub_225F2AFB8(v37, v45, v24);
    v86 = v23;
    v19 = v23;
    v85 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7861E8, &unk_2260A0220);
    sub_226099CE8();
  }

  __break(1u);
  return result;
}

void sub_225F29FAC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v147 = a3;
  v146 = a2;
  v133 = a1;
  v134 = a4;
  v152 = 0;
  v199 = 0;
  v198 = 0;
  v197 = 0;
  v196 = 0;
  v195 = 0;
  v194 = 0;
  memset(v193, 0, sizeof(v193));
  v189 = 0;
  v188 = 0;
  v187 = 0;
  v186 = 0;
  v182 = 0;
  v178 = 0;
  v177 = 0;
  v176 = 0;
  v175[1] = 0;
  v175[0] = 0;
  v170 = 0;
  v166 = 0;
  v165 = 0;
  v164 = 0;
  v135 = sub_2260994A8();
  v136 = *(v135 - 8);
  v137 = v136;
  v138 = *(v136 + 64);
  MEMORY[0x28223BE20](0);
  v140 = (v138 + 15) & 0xFFFFFFFFFFFFFFF0;
  v139 = &v41[-v140];
  MEMORY[0x28223BE20](v5);
  v141 = &v41[-v140];
  v142 = sub_2260994C8();
  v143 = *(v142 - 8);
  v144 = v143;
  MEMORY[0x28223BE20](v142 - 8);
  v145 = &v41[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v199 = v145;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7861F0, &qword_2260A0270);
  v148 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v150 = (v148 + 15) & 0xFFFFFFFFFFFFFFF0;
  v149 = &v41[-v150];
  MEMORY[0x28223BE20](&v41[-v150]);
  v151 = &v41[-v150];
  v198 = a1;
  v196 = v8;
  v197 = v9;
  v157 = 1;
  v195 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7861F8, &qword_2260A0278);
  v153 = sub_22609A4F8();
  v154 = sub_225F2FAD0();
  v194 = sub_2260998A8();
  v191 = sub_226099438();
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786208, &qword_2260A0280);
  v10 = sub_225F2FB34();
  v156 = &v191;
  MEMORY[0x22AA72D20](&v192, v155, v10);
  sub_225EFE6E8(v156);
  v190 = v192;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786218, &qword_2260A0288);
  sub_22609A3F8();
  v159 = v157;
  for (i = v158; ; i = v43)
  {
    v129 = i;
    v131 = v159;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786220, &qword_2260A0290);
    sub_22609A408();
    sub_225F2FBBC(v149, v151);
    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786228, &qword_2260A0298);
    v11 = (*(*(v130 - 8) + 48))(v151, 1);
    v132 = v131;
    if (v11 == 1)
    {
      v123 = v132;
      v128 = v129;
      sub_225EFE6E8(v193);
      v121 = sub_225F2DDF4();
      v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
      v127 = v41;
      v120 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v41);
      v122 = &v41[-v120];
      sub_226099428();
      v124 = sub_226099418();
      v125 = v13;
      v126 = v194;
      sub_2260998E8();
      v14 = sub_225F2AF54(v122, v124, v125, v123 & 1, v126);
      *v134 = v14;
      sub_225EFE6E8(&v194);
      return;
    }

    v118 = *v151;
    v15 = v151 + *(v130 + 48);
    v189 = v118;
    (*(v144 + 32))(v145, v15, v142);
    v119 = [objc_opt_self() voiceCommandsParamKeyBuilder_];
    if (v119)
    {
      v117 = v119;
      v112 = v119;
      v113 = sub_226099A08();
      v114 = v16;

      v115 = v113;
      v116 = v114;
    }

    else
    {
      v115 = 0;
      v116 = 0;
    }

    v110 = v116;
    v111 = v115;
    if (v116)
    {
      v108 = v111;
      v109 = v110;
    }

    else
    {
      sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/CESRUtilities.swift", 49, 2, 346, 0);
      __break(1u);
    }

    v99 = v109;
    v100 = v108;
    v187 = v108;
    v188 = v109;
    sub_2260994B8();
    v17 = *MEMORY[0x277CDCCB8];
    v101 = *(v137 + 104);
    v102 = (v137 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v101(v139, v17, v135);
    v107 = sub_226099498();
    v106 = *(v137 + 8);
    v105 = v137 + 8;
    v103 = v106;
    v104 = (v137 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v106(v139, v135);
    v106(v141, v135);
    if (v107)
    {
      v98 = 1;
    }

    else
    {
      sub_2260994B8();
      v101(v139, *MEMORY[0x277CDCCC0], v135);
      v97 = sub_226099498();
      v103(v139, v135);
      v103(v141, v135);
      v98 = v97;
    }

    if (v98)
    {
      break;
    }

    v45 = 0;
    v195 = 0;
    v35 = sub_226099AA8();
    v44 = sub_225F2AE48(v35, v36);
    v186 = v44;
    sub_2260998E8();
    v37 = v44;
    v185 = v44;
    v183 = v100;
    v184 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786230, &qword_2260A02A8);
    sub_226099948();

    v46 = v45;
    v47 = v129;
LABEL_26:
    v43 = v47;
    v42 = v46;

    (*(v144 + 8))(v145, v142);
    v159 = v42;
  }

  sub_226099478();
  v95 = v18;
  v96 = sub_226099B18();

  if ((v96 & 1) == 0)
  {
    v19 = sub_226099478();
    v92 = sub_225F2AE48(v19, v20);
    v164 = v92;
    sub_2260998E8();
    v21 = v92;
    v163 = v92;
    v161 = v100;
    v162 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786230, &qword_2260A02A8);
    sub_226099948();

    v93 = v131;
    v94 = v129;
LABEL_24:
    v46 = v93;
    v47 = v94;
    goto LABEL_26;
  }

  v86 = sub_226098AF8();
  v82 = v86;
  v83 = *(v86 - 8);
  v85 = v83;
  v84 = *(v83 + 64);
  v90 = v41;
  MEMORY[0x28223BE20](v41);
  v87 = &v41[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_226099488();
  v91 = sub_226098AC8();
  v88 = *(v85 + 8);
  v89 = (v85 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v88(v87, v86);
  if (v91)
  {
    v49 = 0;
    v195 = 0;
    v32 = sub_226099AA8();
    v48 = sub_225F2AE48(v32, v33);
    v182 = v48;
    sub_2260998E8();
    v34 = v48;
    v181 = v48;
    v179 = v100;
    v180 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786230, &qword_2260A02A8);
    sub_226099948();

    v55 = v49;
    v56 = v129;
LABEL_23:
    v93 = v55;
    v94 = v56;
    goto LABEL_24;
  }

  v77 = v129;
  v66 = 0;
  v177 = sub_226099AA8();
  v178 = v23;
  v65 = v41;
  MEMORY[0x28223BE20](v41);
  v73 = &v41[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_226099488();
  v75 = sub_226098AD8();
  v67 = v75;
  v68 = *(v75 - 8);
  v69 = v68;
  v70 = v41;
  MEMORY[0x28223BE20](v41);
  v72 = &v41[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = v72;
  sub_226098AE8();
  v88(v73, v82);
  sub_2260998E8();
  v78 = v41;
  MEMORY[0x28223BE20](v41);
  v74 = &v38;
  v39 = v146;
  v40 = v26;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786238, &qword_2260A02B0);
  sub_225F2FD50();
  v27 = v77;
  v28 = sub_226099BF8();
  v79 = v27;
  v80 = v28;
  v81 = v78;
  if (!v27)
  {
    v62 = v80;

    (*(v69 + 8))(v71, v67);
    v176 = v62;
    sub_2260998E8();
    v174 = v62;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786248, &qword_2260A02B8);
    sub_225F2FDC8();
    sub_22609A028();
    for (j = v79; ; j = v51)
    {
      v59 = j;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786258, &qword_2260A02C0);
      sub_22609A388();
      v60 = v171;
      v61 = v172;
      if (v173)
      {
        break;
      }

      v57 = v60;
      v58 = v61;
      v51 = v59;
      v165 = v60;
      v166 = v61;
      v30 = sub_226099BE8();
      v50 = v31;
      MEMORY[0x22AA72C10](v30);
    }

    sub_225EFE6E8(v175);
    v52 = v177;
    v53 = v178;
    sub_2260998E8();
    v54 = sub_225F2AE48(v52, v53);
    v170 = v54;
    sub_2260998E8();
    v29 = v54;
    v169 = v54;
    v167 = v100;
    v168 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786230, &qword_2260A02A8);
    sub_226099948();

    sub_225EFE6BC(&v177);
    v55 = v131;
    v56 = v59;
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t sub_225F2AE90@<X0>(uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786260, &qword_2260A02C8);
  sub_225F2FE50();
  sub_225EF9438();
  sub_22609A148();
  result = sub_22609A058();
  *a4 = result;
  *(a4 + 8) = v5;
  *(a4 + 16) = v6 & 1;
  return result;
}

id sub_225F2B008(uint64_t a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  *&v7 = a3;
  *&v8 = a4;
  *&v9 = a5;
  *&v10 = a6;
  return sub_225F2C230(a1, a2, v7, v8, v9, v10);
}

BOOL sub_225F2B070(uint64_t a1, uint64_t a2)
{
  v7[2] = 0;
  v7[3] = a1;
  v7[4] = a2;
  sub_2260998E8();
  MEMORY[0x277D82BE0](@"Dictation");
  v7[0] = sub_226099A08();
  v7[1] = v2;
  v6 = MEMORY[0x22AA72BD0](v7[0], v2, a1, a2);
  sub_225EFE6BC(v7);
  MEMORY[0x277D82BD8](@"Dictation");

  return (v6 & 1) != 0;
}

BOOL sub_225F2B178(uint64_t a1, uint64_t a2)
{
  v11[2] = 0;
  v11[3] = a1;
  v11[4] = a2;
  sub_2260998E8();
  MEMORY[0x277D82BE0](@"SearchOrMessaging");
  v11[0] = sub_226099A08();
  v11[1] = v2;
  v10[2] = a1;
  v10[3] = a2;
  v9 = MEMORY[0x22AA72BD0](v11[0], v2, a1, a2);
  sub_225EFE6BC(v11);
  MEMORY[0x277D82BD8](@"SearchOrMessaging");

  if (v9)
  {
    return 1;
  }

  else
  {
    sub_2260998E8();
    MEMORY[0x277D82BE0](@"SiriDictation");
    v10[0] = sub_226099A08();
    v10[1] = v3;
    v5 = MEMORY[0x22AA72BD0](v10[0], v3, a1, a2);
    sub_225EFE6BC(v10);
    MEMORY[0x277D82BD8](@"SiriDictation");

    return (v5 & 1) != 0;
  }
}

id sub_225F2B328(uint64_t a1)
{
  v12[1] = a1;
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12[0] = MEMORY[0x22AA721F0]();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786AA0, &qword_2260A0AD0);
  v10 = sub_225F27014();
  v1 = sub_225F2DEE0();
  sub_225F15970(sub_225F26438, 0, v9, v10, MEMORY[0x277D84A98], v1, MEMORY[0x277D84AC0], v11);
  sub_225EFE6E8(v12);
  v5 = sub_226099C78();

  sub_2260990E8();
  v6 = [v8 initWithAcousticFeatureValue:v5 frameDuration:?];
  MEMORY[0x277D82BD8](v5);
  if (v6)
  {
    v4 = v6;
  }

  else
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CESRUtilities.swift", 49, 2, 438, 0);
    __break(1u);
  }

  MEMORY[0x277D82BE0](v4);
  v13 = v4;
  v2 = sub_2260990F8();
  (*(*(v2 - 8) + 8))(a1);
  MEMORY[0x277D82BD8](v13);
  return v4;
}

id sub_225F2B554@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v12 = 0;
  v4 = 0;
  v8 = sub_2260990F8();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v10 = &v4 - v5;
  v12 = v2;
  sub_225F2C484();
  (*(v6 + 16))(v10, v9, v8);
  result = sub_225F2B328(v10);
  *v11 = result;
  return result;
}

id sub_225F2B694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, char a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a13)
  {
    v23 = sub_2260999F8();

    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (a15)
  {
    v21 = sub_2260999F8();

    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  LOBYTE(v19) = a7;
  BYTE1(v19) = a8;
  v20 = [v34 initWithRecognition:a1 unfilteredRecognition:a2 rawRecognition:a3 audioAnalytics:a4 isFinal:a5 & 1 utteranceStart:a6 latticeMitigatorResult:a9 recognitionPaused:v19 speechProfileUsed:a10 resultCandidateId:a11 endOfSentenceLikelihood:v24 modelVersion:v22 acousticModelVersion:a16 potentialCommandPrecedingUtterance:a17 potentialCommandUtterance:a18 numOneBestTokensExcludingTriggerPhrase:?];
  MEMORY[0x277D82BD8](a17);
  MEMORY[0x277D82BD8](a16);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](a11);
  MEMORY[0x277D82BD8](a6);
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v20;
}

id sub_225F2B908(uint64_t a1)
{
  if (a1)
  {
    sub_225F2CB58();
    v3 = sub_226099C78();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v2 = [v5 initWithInterpretations_isLowConfidence_];
  MEMORY[0x277D82BD8](v4);
  return v2;
}

id sub_225F2B9C4(uint64_t a1)
{
  if (a1)
  {
    sub_225F27014();
    v3 = sub_226099C78();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v2 = [v5 initWithInterpretationIndices_confidenceScore_];
  MEMORY[0x277D82BD8](v4);
  return v2;
}

id sub_225F2BA7C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_225F2C904();
    v7 = sub_226099C78();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (a2)
  {
    sub_225F2C780();
    v6 = sub_226099C78();

    v2 = [v10 initWithPhrases:v8 utterances:v6];
  }

  else
  {
    v2 = [v10 initWithPhrases:v8 utterances:0];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v8);
  return v5;
}

id sub_225F2BBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  LOBYTE(v9) = a7;
  v15 = [v7 initWithRecognition:a1 unfilteredRecognition:a2 rawRecognition:a3 audioAnalytics:a4 isFinal:a5 & 1 utteranceStart:v9 latticeMitigatorResult:? recognitionPaused:?];
  MEMORY[0x277D82BD8](a6);
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v15;
}

id sub_225F2BC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    sub_225F27014();
    v7 = sub_226099C78();

    v3 = [v9 initWithInterpretationIndices:v7 confidenceScore:? interpretation:?];
  }

  else
  {
    v3 = [v9 initWithInterpretationIndices:0 confidenceScore:? interpretation:?];
  }

  v6 = v3;
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v5);
  return v6;
}

id sub_225F2BD68(uint64_t a1, uint64_t a2, double a3)
{
  if (a1)
  {
    sub_225F2C904();
    v7 = sub_226099C78();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (a2)
  {
    sub_225F2C780();
    v5 = sub_226099C78();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v4 = [v11 initWithPhrases:v8 utterances:a3 processedAudioDuration:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v8);
  return v4;
}

id sub_225F2BE9C(uint64_t a1, uint64_t a2, double a3)
{
  sub_225F2DA90();
  v6 = sub_226099C78();
  v5 = sub_226099C78();
  v7 = [v4 initWithNBestParses:v6 preITNNBestParses:?];
  MEMORY[0x277D82BD8](v5);

  MEMORY[0x277D82BD8](v6);

  return v7;
}

id sub_225F2BF48(uint64_t a1)
{
  v4 = [v1 initWithCommandGrammarParsePackage_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id sub_225F2BF98(uint64_t a1, uint64_t a2)
{
  v4 = sub_2260999F8();
  v5 = [v3 initWithText_];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

id sub_225F2BFFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v14 = sub_226098A78();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = sub_226098A38();
    (*(v15 + 8))(a1, v14);
    v10 = v9;
  }

  v7 = sub_2260999F8();
  sub_225F2FAD0();
  v6 = sub_226099868();
  v8 = [v12 initWithVoiceCommandUUID:v10 commandId:v7 isComplete:a4 & 1 paramMatches:?];
  MEMORY[0x277D82BD8](v6);

  MEMORY[0x277D82BD8](v7);

  MEMORY[0x277D82BD8](v10);
  return v8;
}

id sub_225F2C194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2260999F8();
  sub_225F2DDF4();
  v5 = sub_226099C78();
  v7 = [v4 initWithUtterance:v6 parseCandidates:?];
  MEMORY[0x277D82BD8](v5);

  MEMORY[0x277D82BD8](v6);

  return v7;
}

id sub_225F2C230(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = LODWORD(a3);
  v12 = LODWORD(a4);
  v13 = LODWORD(a5);
  v14 = LODWORD(a6);
  if (a2)
  {
    v9 = sub_2260999F8();

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  LODWORD(a6) = v14;
  LODWORD(a5) = v13;
  LODWORD(a4) = v12;
  LODWORD(a3) = v11;
  v8 = [v15 initWithResults:a3 score:a4 threshold:a5 calibrationScale:a6 calibrationOffset:v10];
  MEMORY[0x277D82BD8](v7);
  return v8;
}

uint64_t sub_225F2C300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v8[1] = a4;
  v9 = *(a3 - 8);
  v10 = a3 - 8;
  v8[0] = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](a1);
  v11 = v8 - v8[0];
  v5(v4);
  v13 = sub_22609A488();
  v14 = v6;
  (*(v9 + 8))(v11, v12);
  return v13;
}

uint64_t sub_225F2C3E4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_225F2C420()
{
  v2 = qword_280D76508;
  if (!qword_280D76508)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76508);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F2C484()
{
  v2 = qword_280D76480;
  if (!qword_280D76480)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76480);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_225F2C4E8(const void *a1, void *a2)
{
  v6 = sub_226098FA8();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786058, &qword_2260A0E00);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_225F2C610(uint64_t a1)
{
  v3 = sub_226098FA8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_225F2C6B8()
{
  v2 = qword_280D76660;
  if (!qword_280D76660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7860A8, &qword_2260A0158);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76660);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2C780()
{
  v2 = qword_280D764D0;
  if (!qword_280D764D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D764D0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F2C7E4()
{
  v2 = qword_280D76338;
  if (!qword_280D76338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7860B0, &qword_2260A0160);
    sub_225F2C87C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76338);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2C87C()
{
  v2 = qword_280D76658;
  if (!qword_280D76658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7860A8, &qword_2260A0158);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76658);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2C904()
{
  v2 = qword_280D76510;
  if (!qword_280D76510)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76510);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F2C968()
{
  v2 = qword_280D76630;
  if (!qword_280D76630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786030, &qword_2260A00D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76630);
    return WitnessTable;
  }

  return v2;
}

void *sub_225F2C9F0(void *a1, void *a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7860C8, &qword_2260A0178);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7860A0, &qword_2260A0150);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v6 = a2 + *(v9 + 48);
    v5 = a1 + *(v9 + 48);
    v2 = sub_2260995E8();
    (*(*(v2 - 8) + 32))(v6, v5);
    (*(v10 + 56))(a2, 0, 1, v9);
  }

  return a2;
}

unint64_t sub_225F2CB58()
{
  v2 = qword_280D76488;
  if (!qword_280D76488)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76488);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F2CBBC()
{
  v2 = qword_280D765F0;
  if (!qword_280D765F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7860D0, &qword_2260A0180);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D765F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2CC44()
{
  v2 = qword_27D7860F8;
  if (!qword_27D7860F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7860F0, &qword_2260A01A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7860F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2CCCC()
{
  v2 = qword_27D786100;
  if (!qword_27D786100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7860F0, &qword_2260A01A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786100);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2CD54()
{
  v2 = qword_27D786110;
  if (!qword_27D786110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786108, &qword_2260A01A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786110);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F2CE10()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  v1 = sub_225F2CE78();

  return sub_225F2C300(v5, v3, v4, v1);
}

unint64_t sub_225F2CE78()
{
  v2 = qword_27D786118;
  if (!qword_27D786118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7869D0, &qword_2260A01B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786118);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2CF00()
{
  v2 = qword_27D786430;
  if (!qword_27D786430)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786430);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2CF78()
{
  v2 = qword_27D786128;
  if (!qword_27D786128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786120, &qword_2260A01B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786128);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2D02C()
{
  v2 = qword_27D786130;
  if (!qword_27D786130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7869D0, &qword_2260A01B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786130);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2D0B4()
{
  v2 = qword_27D786138;
  if (!qword_27D786138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7864A0, &qword_2260A01C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786138);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2D16C()
{
  v2 = qword_27D7863F0;
  if (!qword_27D7863F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7863F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2D1E4()
{
  v2 = qword_280D765C0;
  if (!qword_280D765C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786028, &qword_2260A00D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D765C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F2D284()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786148, &qword_2260A01D0);
  v1 = sub_225F2D2EC();

  return sub_225F2C300(v5, v3, v4, v1);
}

unint64_t sub_225F2D2EC()
{
  v2 = qword_27D786150;
  if (!qword_27D786150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786148, &qword_2260A01D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786150);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2D380()
{
  v2 = qword_27D786158;
  if (!qword_27D786158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786108, &qword_2260A01A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786158);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2D408()
{
  v2 = qword_280D765E8;
  if (!qword_280D765E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7860D0, &qword_2260A0180);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D765E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2D490()
{
  v2 = qword_280D76640;
  if (!qword_280D76640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786048, &qword_2260A00F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76640);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F2D518(uint64_t a1)
{
  v3 = sub_226099598();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_225F2D5C0()
{
  v2 = qword_280D765C8;
  if (!qword_280D765C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786028, &qword_2260A00D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D765C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2D648()
{
  v2 = qword_280D765B0;
  if (!qword_280D765B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786160, &qword_2260A01D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D765B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2D6D0()
{
  v2 = qword_280D76380;
  if (!qword_280D76380)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76380);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_225F2D73C(const void *a1, void *a2, double a3)
{
  v7 = sub_226099768();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786060, &qword_2260A0110);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(a2, a1, v7);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  return a2;
}

unint64_t sub_225F2D864()
{
  v2 = qword_280D763E8;
  if (!qword_280D763E8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D763E8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F2D8C8()
{
  v2 = qword_27D786170;
  if (!qword_27D786170)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786170);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2D940()
{
  v2 = qword_27D786188;
  if (!qword_27D786188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786178, &qword_2260A01E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786188);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2D9C8()
{
  v2 = qword_27D786190;
  if (!qword_27D786190)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786190);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F2DA2C()
{
  v2 = qword_27D786198;
  if (!qword_27D786198)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786198);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F2DA90()
{
  v2 = qword_27D7861A0;
  if (!qword_27D7861A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7861A0);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_225F2DAF4(const void *a1, void *a2)
{
  v6 = sub_226099458();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_225F2DC1C(uint64_t a1)
{
  v3 = sub_226099458();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_225F2DCC4()
{
  v2 = qword_27D7861B8;
  if (!qword_27D7861B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7861B0, &qword_2260A0208);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7861B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2DD4C()
{
  v2 = qword_27D7861D0;
  if (!qword_27D7861D0)
  {
    sub_226098818();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7861D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2DDF4()
{
  v2 = qword_27D7861D8;
  if (!qword_27D7861D8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7861D8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F2DE58()
{
  v2 = qword_27D7861E0;
  if (!qword_27D7861E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7861A8, &qword_2260A0200);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7861E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2DEE0()
{
  v2 = qword_280D765D8;
  if (!qword_280D765D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D786AA0, &qword_2260A0AD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D765D8);
    return WitnessTable;
  }

  return v2;
}

char *initializeBufferWithCopyOfBuffer for CombinedTranscriberOutput(char *a1, uint64_t *a2, int *a3)
{
  v20 = *(*(a3 - 1) + 80);
  if ((v20 & 0x20000) != 0)
  {
    v15 = *a2;

    *a1 = v15;
    return (*a1 + ((v20 + 16) & ~v20));
  }

  else
  {
    v8 = sub_226098FA8();
    v9 = *(*(v8 - 8) + 16);
    v9(a1, a2);
    __dst = &a1[a3[5]];
    __src = a2 + a3[5];
    v12 = sub_226099458();
    v13 = *(v12 - 8);
    v14 = *(v13 + 48);
    if ((v14)(__src, 1))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
      memcpy(__dst, __src, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v13 + 16))(__dst, __src, v12);
      (*(v13 + 56))(__dst, 0, 1, v12);
    }

    (v9)(&a1[a3[6]], a2 + a3[6], v8);
    v6 = &a1[a3[7]];
    v7 = a2 + a3[7];
    if (v14())
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
      memcpy(v6, v7, *(*(v4 - 8) + 64));
    }

    else
    {
      (*(v13 + 16))(v6, v7, v12);
      (*(v13 + 56))(v6, 0, 1, v12);
    }

    return a1;
  }
}

uint64_t destroy for CombinedTranscriberOutput(uint64_t a1, int *a2)
{
  v4 = sub_226098FA8();
  v5 = *(*(v4 - 8) + 8);
  v5(a1);
  v7 = a2[5];
  v9 = sub_226099458();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!(v11)(a1 + v7, 1))
  {
    (*(v10 + 8))(a1 + v7, v9);
  }

  (v5)(a1 + a2[6], v4);
  v3 = a1 + a2[7];
  result = v11();
  if (!result)
  {
    return (*(v10 + 8))(v3, v9);
  }

  return result;
}

uint64_t initializeWithCopy for CombinedTranscriberOutput(uint64_t a1, uint64_t a2, int *a3)
{
  v9 = sub_226098FA8();
  v10 = *(*(v9 - 8) + 16);
  v10(a1, a2);
  v12 = a3[5];
  v14 = sub_226099458();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if ((v16)(a2 + v12, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    memcpy((a1 + v12), (a2 + v12), *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v15 + 16))();
    (*(v15 + 56))(a1 + v12, 0, 1, v14);
  }

  (v10)(a1 + a3[6], a2 + a3[6], v9);
  __dst = (a1 + a3[7]);
  __src = (a2 + a3[7]);
  if (v16())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v15 + 16))(__dst, __src, v14);
    (*(v15 + 56))(__dst, 0, 1, v14);
  }

  return a1;
}

uint64_t assignWithCopy for CombinedTranscriberOutput(uint64_t a1, uint64_t a2, int *a3)
{
  v11 = sub_226098FA8();
  v12 = *(*(v11 - 8) + 24);
  v12(a1, a2);
  v14 = a3[5];
  v16 = sub_226099458();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if ((v18)(a1 + v14, 1))
  {
    if (v18(a2 + v14, 1, v16))
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
      memcpy((a1 + v14), (a2 + v14), *(*(v4 - 8) + 64));
    }

    else
    {
      (*(v17 + 16))();
      (*(v17 + 56))(a1 + v14, 0, 1, v16);
    }
  }

  else if (v18(a2 + v14, 1, v16))
  {
    (*(v17 + 8))();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    memcpy((a1 + v14), (a2 + v14), *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v17 + 24))(a1 + v14, a2 + v14, v16);
  }

  (v12)(a1 + a3[6], a2 + a3[6], v11);
  v8 = (a1 + a3[7]);
  __src = (a2 + a3[7]);
  if ((v18)())
  {
    if (v18(__src, 1, v16))
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
      memcpy(v8, __src, *(*(v6 - 8) + 64));
    }

    else
    {
      (*(v17 + 16))(v8, __src, v16);
      (*(v17 + 56))(v8, 0, 1, v16);
    }
  }

  else if (v18(__src, 1, v16))
  {
    (*(v17 + 8))(v8, v16);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    memcpy(v8, __src, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v17 + 24))(v8, __src, v16);
  }

  return a1;
}

uint64_t initializeWithTake for CombinedTranscriberOutput(uint64_t a1, uint64_t a2, int *a3)
{
  v9 = sub_226098FA8();
  v10 = *(*(v9 - 8) + 32);
  v10(a1, a2);
  v12 = a3[5];
  v14 = sub_226099458();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if ((v16)(a2 + v12, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    memcpy((a1 + v12), (a2 + v12), *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v15 + 32))();
    (*(v15 + 56))(a1 + v12, 0, 1, v14);
  }

  (v10)(a1 + a3[6], a2 + a3[6], v9);
  __dst = (a1 + a3[7]);
  __src = (a2 + a3[7]);
  if (v16())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v15 + 32))(__dst, __src, v14);
    (*(v15 + 56))(__dst, 0, 1, v14);
  }

  return a1;
}

uint64_t assignWithTake for CombinedTranscriberOutput(uint64_t a1, uint64_t a2, int *a3)
{
  v11 = sub_226098FA8();
  v12 = *(*(v11 - 8) + 40);
  v12(a1, a2);
  v14 = a3[5];
  v16 = sub_226099458();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if ((v18)(a1 + v14, 1))
  {
    if (v18(a2 + v14, 1, v16))
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
      memcpy((a1 + v14), (a2 + v14), *(*(v4 - 8) + 64));
    }

    else
    {
      (*(v17 + 32))();
      (*(v17 + 56))(a1 + v14, 0, 1, v16);
    }
  }

  else if (v18(a2 + v14, 1, v16))
  {
    (*(v17 + 8))();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    memcpy((a1 + v14), (a2 + v14), *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v17 + 40))(a1 + v14, a2 + v14, v16);
  }

  (v12)(a1 + a3[6], a2 + a3[6], v11);
  v8 = (a1 + a3[7]);
  __src = (a2 + a3[7]);
  if ((v18)())
  {
    if (v18(__src, 1, v16))
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
      memcpy(v8, __src, *(*(v6 - 8) + 64));
    }

    else
    {
      (*(v17 + 32))(v8, __src, v16);
      (*(v17 + 56))(v8, 0, 1, v16);
    }
  }

  else if (v18(__src, 1, v16))
  {
    (*(v17 + 8))(v8, v16);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    memcpy(v8, __src, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v17 + 40))(v8, __src, v16);
  }

  return a1;
}

unint64_t sub_225F2F494(uint64_t a1)
{
  v4 = sub_226098FA8();
  if (v1 <= 0x3F)
  {
    v4 = sub_225F2F5C0(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return v4;
}

unint64_t sub_225F2F5C0(uint64_t a1)
{
  v5 = qword_280D76740;
  if (!qword_280D76740)
  {
    sub_226099458();
    v4 = sub_22609A198();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_280D76740);
      return v2;
    }
  }

  return v5;
}

void *initializeBufferWithCopyOfBuffer for CombinedMuxTranscriberOutput(void *a1, void *a2)
{
  v3 = *a2;
  sub_2260998E8();
  *a1 = v3;
  v6 = a2[1];
  sub_2260998E8();
  result = a1;
  a1[1] = v6;
  return result;
}

uint64_t *assignWithCopy for CombinedMuxTranscriberOutput(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  sub_2260998E8();
  *a1 = v3;

  v5 = a2[1];
  sub_2260998E8();
  a1[1] = v5;

  return a1;
}

uint64_t *assignWithTake for CombinedMuxTranscriberOutput(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t getEnumTagSinglePayload for CombinedMuxTranscriberOutput(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CombinedMuxTranscriberOutput(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_225F2FAD0()
{
  v2 = qword_27D786200;
  if (!qword_27D786200)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786200);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F2FB34()
{
  v2 = qword_27D786210;
  if (!qword_27D786210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786208, &qword_2260A0280);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786210);
    return WitnessTable;
  }

  return v2;
}

void *sub_225F2FBBC(void *a1, void *a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786228, &qword_2260A0298);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7861F0, &qword_2260A0270);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v6 = a2 + *(v9 + 48);
    v5 = a1 + *(v9 + 48);
    v2 = sub_2260994C8();
    (*(*(v2 - 8) + 32))(v6, v5);
    (*(v10 + 56))(a2, 0, 1, v9);
  }

  return a2;
}

unint64_t sub_225F2FD50()
{
  v2 = qword_27D786240;
  if (!qword_27D786240)
  {
    sub_226098AD8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786240);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2FDC8()
{
  v2 = qword_27D786250;
  if (!qword_27D786250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786248, &qword_2260A02B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786250);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2FE50()
{
  v2 = qword_27D786268;
  if (!qword_27D786268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786260, &qword_2260A02C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786268);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2FED8()
{
  v2 = qword_27D786270;
  if (!qword_27D786270)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786270);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2FF50()
{
  v2 = qword_27D786278;
  if (!qword_27D786278)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786278);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2FFC8()
{
  v2 = qword_27D786280;
  if (!qword_27D786280)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786280);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F3006C()
{
  v2 = qword_280D76610;
  if (!qword_280D76610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7869D0, &qword_2260A01B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76610);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F300F4()
{
  v2 = qword_280D76F28;
  if (!qword_280D76F28)
  {
    sub_226098B08();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76F28);
    return WitnessTable;
  }

  return v2;
}

char *sub_225F3016C(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_22609A448();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_22609A448();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_225F302E8(uint64_t a1, uint64_t a2)
{
  v7 = sub_225F303A4(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786290, &unk_2260A02E0);
  inited = swift_initStackObject();
  sub_225F30BB4(inited, 1);
  *v3 = 0;
  sub_225F30C00();
  sub_225F30C34(v4);

  v8 = sub_225F30FDC(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_225F303A4(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_226099B28();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_225F314FC();
  }

  v10 = sub_225F30FF4(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_22609A448();
    __break(1u);
    return sub_225F314FC();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_225F31138(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_22609A2C8();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_225F31138(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_22609A268();
  if (v2)
  {
LABEL_29:
    sub_22609A3B8("Fatal error", 11, 2, "Insufficient space allocated to copy string contents", 52, 2, "Swift/StringUTF8View.swift", 26, 2, 531, 0);
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;
  sub_2260998E8();
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_22609A3B8("Fatal error", 11, 2, "invalid Collection: less than 'count' elements in collection", 60, 2, "Swift/ContiguousArrayBuffer.swift", 33, 2, 1145, 0);
    __break(1u);
  }

  sub_225EFE6BC(v17);
  return v10;
}

uint64_t sub_225F30BB4(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void sub_225F30C34(uint64_t a1)
{
  v18 = sub_225F30FDC(a1);
  v2 = sub_225F30FDC(*v1);
  v19 = v2 + v18;
  if (__OFADD__(v2, v18))
  {
    goto LABEL_31;
  }

  v14 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(*v17 + 24) >> 1)
  {
    if (*(*v17 + 16) < v19)
    {
      v13 = v19;
    }

    else
    {
      v13 = *(*v17 + 16);
    }

    v12 = *v17;
    sub_2260998E8();
    *v17 = sub_225F3152C(isUniquelyReferenced_nonNull_native, v13, 1, v12);
  }

  v4 = *(*v17 + 16);
  v10 = (*v17 + 32 + v4);
  v5 = *(*v17 + 24) >> 1;
  v11 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
LABEL_30:
    sub_22609A448();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_225F31698(a1))
  {
LABEL_21:

    if (v18 <= 0)
    {
      goto LABEL_28;
    }

    sub_22609A3B8("Fatal error", 11, 2, "newElements.underestimatedCount was an overestimate", 51, 2, "Swift/Array.swift", 17, 2, 1259, 0);
    __break(1u);
    goto LABEL_30;
  }

  if (v11 < v18)
  {
    sub_22609A3B8("Fatal error", 11, 2, "Insufficient space allocated to copy array contents", 51, 2, "Swift/Array.swift", 17, 2, 1778, 0);
    __break(1u);
    goto LABEL_21;
  }

  sub_225F31138((a1 + 32), v18, v10);
  sub_2260998E8();

  swift_unknownObjectRelease();
  if (v18 <= 0)
  {
    goto LABEL_28;
  }

  v7 = *(*v17 + 16);
  v9 = v7 + v18;
  if (!__OFADD__(v7, v18))
  {
    *(*v17 + 16) = v9;
LABEL_28:
    sub_225EF545C();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_225F30FF4(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786290, &unk_2260A02E0);
    v6 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v4 = _swift_stdlib_malloc_size(v6) - 32;
      v6[2] = a1;
      v6[3] = 2 * v4;
    }

    else
    {
      v6[2] = a1;
      v6[3] = 2 * v7;
    }

    return v6;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];

    return v3;
  }
}

void *sub_225F31138(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_22609A448();
    __break(1u);
  }

  result = sub_22609A448();
  __break(1u);
  return result;
}

unint64_t sub_225F31288(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = MEMORY[0x22AA72C60](15, v10, a2, a3);
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_22609A3B8("Fatal error", 11, 2, "String index is out of bounds", 29, 2, "Swift/StringUTF8View.swift", 26, 2, 167, 0);
    __break(1u);
  }

  v5 = sub_226099B88();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

uint64_t sub_225F314FC()
{
  v1 = MEMORY[0x277D84F90];

  return v1;
}

char *sub_225F3152C(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_225F30FF4(v4, v6);
  if (v7)
  {
    sub_225F316A0((a4 + 32), v4, v5 + 32);
    sub_2260998E8();

    *(a4 + 16) = 0;
  }

  else
  {
    sub_2260998E8();

    sub_225F31138((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_225F316A0(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_22609A448();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

void *sub_225F317FC(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t sub_225F3190C()
{
  v1 = sub_226098C58();
  __swift_allocate_value_buffer(v1, qword_280D76810);
  __swift_project_value_buffer(v1, qword_280D76810);
  return sub_225F31958();
}

uint64_t sub_225F31958()
{
  AFLogInitIfNeeded();
  v1 = MEMORY[0x277CEF0E8];
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  if (!v2)
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CESAEvaluationRecord.swift", 56, 2, 17, 0);
    __break(1u);
  }

  return sub_226098C68();
}

uint64_t sub_225F31A54()
{
  v1 = sub_226098C58();
  __swift_allocate_value_buffer(v1, qword_27D786298);
  __swift_project_value_buffer(v1, qword_27D786298);
  return sub_225F31AA0();
}

uint64_t sub_225F31AA0()
{
  AFLogInitIfNeeded();
  v1 = MEMORY[0x277CEF0B8];
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  if (!v2)
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CESAEvaluationRecord.swift", 56, 2, 22, 0);
    __break(1u);
  }

  return sub_226098C68();
}

uint64_t sub_225F31B9C()
{
  if (qword_27D785D60 != -1)
  {
    swift_once();
  }

  v0 = sub_226098C58();
  return __swift_project_value_buffer(v0, qword_27D786298);
}

uint64_t sub_225F31C08()
{
  v2 = *(v0 + 112);
  sub_2260998E8();
  return v2;
}

uint64_t sub_225F31C40()
{
  v2 = *(v0 + 128);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_225F31C74()
{
  v2 = *(v0 + 136);

  return v2;
}

uint64_t sub_225F31CA0()
{
  swift_beginAccess();
  v2 = *(v0 + 144);
  sub_2260998E8();
  swift_endAccess();
  return v2;
}

uint64_t sub_225F31CF0(uint64_t a1)
{
  sub_2260998E8();
  swift_beginAccess();
  *(v1 + 144) = a1;

  swift_endAccess();
}

uint64_t sub_225F31DEC()
{
  v2 = *(v0 + 152);

  return v2;
}

void *sub_225F31E84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v24 = 0;
  v20 = 0;
  v29 = a1;
  v30 = a2;
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v25 = v5;
  swift_defaultActor_initialize();
  *(v5 + 144) = 0;
  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    v20 = a3;
    v11 = [a3 interactionIdentifier];
    v19[0] = sub_226099A08();
    v19[1] = v6;
    v12 = MEMORY[0x22AA72BD0](v19[0], v6, a1, a2);
    sub_225EFE6BC(v19);
    MEMORY[0x277D82BD8](v11);
    if ((v12 & 1) == 0)
    {
      sub_226099AA8();
      sub_22609A3C8();
      __break(1u);
    }

    MEMORY[0x277D82BD8](a3);
  }

  if (a4)
  {
    v24 = a4;
    v8 = *(a4 + 32);
    v9 = *(a4 + 40);
    sub_2260998E8();
    v23[0] = v8;
    v23[1] = v9;
    v21 = a1;
    v22 = a2;
    v10 = MEMORY[0x22AA72BD0](v8, v9, a1, a2);
    sub_225EFE6BC(v23);
    if ((v10 & 1) == 0)
    {
      sub_226099AA8();
      sub_22609A3C8();
      __break(1u);
    }
  }

  sub_2260998E8();
  v17[14] = a1;
  v17[15] = a2;
  MEMORY[0x277D82BE0](a3);
  v17[16] = a3;

  v17[17] = a4;

  v17[19] = a5;

  MEMORY[0x277D82BD8](a3);

  return v17;
}

uint64_t sub_225F321DC(uint64_t a1, unint64_t a2)
{
  v11 = *(v2 + 128);
  MEMORY[0x277D82BE0](v11);
  if (v11)
  {
    sub_225EF5A38(a1, a2);
    v7 = sub_226098968();
    sub_225EF5990(a1, a2);
    [v11 setProfile_];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v11);
  }

  v6 = *(v10 + 152);

  if (v6)
  {
    sub_225EF5A38(a1, a2);
    sub_225EF5A38(a1, a2);
    swift_beginAccess();
    v4 = *(v6 + 120);
    v5 = *(v6 + 128);
    *(v6 + 120) = a1;
    *(v6 + 128) = a2;
    sub_225EF5990(v4, v5);
    swift_endAccess();
    sub_225EF5990(a1, a2);
  }

  return result;
}

uint64_t sub_225F32368(uint64_t a1)
{
  v4 = *(v1 + 152);

  if (v4)
  {
    sub_2260998E8();
    sub_2260998E8();
    swift_beginAccess();
    *(v4 + 168) = a1;

    swift_endAccess();
  }

  return result;
}

uint64_t sub_225F3242C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 152);

  if (v6)
  {
    sub_2260998E8();
    sub_2260998E8();
    swift_beginAccess();
    *(v6 + 176) = a1;
    *(v6 + 184) = a2;

    swift_endAccess();
  }

  return result;
}

uint64_t sub_225F32504()
{
  v4 = *(v0 + 128);
  MEMORY[0x277D82BE0](v4);
  if (v4)
  {
    [v4 markRecognition];
    MEMORY[0x277D82BD8](v4);
  }

  v2 = *(v3 + 136);

  if (v2)
  {
    sub_2260321B8();
  }

  return result;
}

uint64_t sub_225F325D4(void *a1)
{
  v240 = a1;
  v229 = sub_225F33FE4;
  v230 = sub_225F34100;
  v231 = sub_225EF7450;
  v232 = sub_225EF7B84;
  v233 = sub_225EF7434;
  v234 = sub_225EF7434;
  v235 = sub_225EF7B90;
  v236 = "Fatal error";
  v237 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v238 = "CoreEmbeddedSpeechRecognition/CESAEvaluationRecord.swift";
  v295 = 0;
  v294 = 0;
  v293 = 0;
  v292 = 0;
  v291 = 0;
  v290 = 0;
  v288 = 0;
  v289 = 0;
  v286 = 0;
  v287 = 0;
  v285 = 0;
  v284 = 0;
  v283[0] = 0;
  v283[1] = 0;
  v278 = 0;
  v275 = 0;
  v274[0] = 0;
  v274[1] = 0;
  v271 = 0;
  v269 = 0;
  v270 = 0;
  v267 = 0;
  v266 = 0;
  v264 = 0;
  v265 = 0;
  v262 = 0;
  v263 = 0;
  v261 = 0;
  v258 = 0;
  v239 = 0;
  v249 = 0;
  v241 = sub_226098C58();
  v242 = *(v241 - 8);
  v243 = v241 - 8;
  v244 = (*(v242 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v240);
  v245 = &v38 - v244;
  v295 = v3;
  v294 = v1;
  v246 = [v3 rawRecognition];
  if (v246)
  {
    v227 = v246;
  }

  else
  {
    sub_22609A3B8(v236, 11, 2, v237, 68, 2, v238, 56, 2, 80, 0);
    __break(1u);
  }

  v225 = v227;
  v226 = [v227 oneBestTokenList];
  MEMORY[0x277D82BD8](v225);
  if (v226)
  {
    v224 = v226;
    v221 = v226;
    sub_225F1E118();
    v222 = sub_226099C88();
    MEMORY[0x277D82BD8](v221);
    v223 = v222;
  }

  else
  {
    v223 = 0;
  }

  v220 = v223;
  v293 = v223;
  sub_2260998E8();
  if (v220)
  {
    v219 = v220;
    v4 = v239;
    v247 = v220;
    v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786028, &qword_2260A00D0);
    v5 = sub_225F2D1E4();
    result = sub_225F15970(v229, 0, v215, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v5, MEMORY[0x277D84AC0], v216);
    v217 = v4;
    v218 = result;
    if (v4)
    {
      __break(1u);
      goto LABEL_106;
    }

    v212 = v218;
    sub_225EFE6E8(&v247);
    v213 = v212;
    v214 = v217;
  }

  else
  {
    v213 = 0;
    v214 = v239;
  }

  v209 = v214;
  v210 = v213;
  v292 = v213;
  v211 = [v240 rawRecognition];
  if (v211)
  {
    v208 = v211;
  }

  else
  {
    sub_22609A3B8(v236, 11, 2, v237, 68, 2, v238, 56, 2, 85, 0);
    __break(1u);
  }

  v206 = v208;
  v207 = [v208 nBestTokenListsLossless];
  MEMORY[0x277D82BD8](v206);
  if (v207)
  {
    v205 = v207;
    v202 = v207;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786028, &qword_2260A00D0);
    v203 = sub_226099C88();
    MEMORY[0x277D82BD8](v202);
    v204 = v203;
  }

  else
  {
    v204 = 0;
  }

  v201 = v204;
  v291 = v204;
  sub_2260998E8();
  if (!v201)
  {
    v194 = 0;
    v195 = v209;
    goto LABEL_19;
  }

  v200 = v201;
  v7 = v209;
  v248 = v201;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CB0, &unk_2260A0300);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  v8 = sub_225F3E110();
  result = sub_225F15970(v230, 0, v196, v197, MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v216);
  v198 = v7;
  v199 = result;
  if (v7)
  {
LABEL_106:
    __break(1u);
    return result;
  }

  v193 = v199;
  sub_225EFE6E8(&v248);
  v194 = v193;
  v195 = v198;
LABEL_19:
  v190 = v195;
  v191 = v194;
  v290 = v194;
  v192 = [v240 rawRecognition];
  if (v192)
  {
    v189 = v192;
  }

  else
  {
    sub_22609A3B8(v236, 11, 2, v237, 68, 2, v238, 56, 2, 92, 0);
    __break(1u);
  }

  v187 = v189;
  v188 = [v189 oneBestTranscript];
  MEMORY[0x277D82BD8](v187);
  if (v188)
  {
    v186 = v188;
    v181 = v188;
    v182 = sub_226099A08();
    v183 = v9;
    MEMORY[0x277D82BD8](v181);
    v184 = v182;
    v185 = v183;
  }

  else
  {
    v184 = 0;
    v185 = 0;
  }

  v178 = v185;
  v179 = v184;
  v288 = v184;
  v289 = v185;
  v180 = [v240 recognition];
  if (v180)
  {
    v177 = v180;
  }

  else
  {
    sub_22609A3B8(v236, 11, 2, v237, 68, 2, v238, 56, 2, 93, 0);
    __break(1u);
  }

  v175 = v177;
  v176 = [v177 oneBestTranscript];
  MEMORY[0x277D82BD8](v175);
  if (v176)
  {
    v174 = v176;
    v169 = v176;
    v170 = sub_226099A08();
    v171 = v10;
    MEMORY[0x277D82BD8](v169);
    v172 = v170;
    v173 = v171;
  }

  else
  {
    v172 = 0;
    v173 = 0;
  }

  v167 = v173;
  v168 = v172;
  v286 = v172;
  v287 = v173;
  sub_2260998E8();
  if (v210)
  {
    v166 = v210;
    v164 = v210;
    v267 = v210;
    sub_2260998E8();
    if (v191)
    {
      v163 = v191;
      v162 = v191;
      v266 = v191;
      sub_2260998E8();
      if (v167)
      {
        v160 = v168;
        v161 = v167;
        v158 = v167;
        v159 = v168;
        v264 = v168;
        v265 = v167;
        sub_2260998E8();
        if (v178)
        {
          v156 = v179;
          v157 = v178;
          v153 = v178;
          v154 = v179;
          v262 = v179;
          v263 = v178;
          v155 = v228[16];
          MEMORY[0x277D82BE0](v155);
          if (v155)
          {
            v152 = v155;
            v151 = v155;
            v249 = v155;
            sub_2260998E8();
            v148 = sub_226099C78();

            [v151 setRecognizedText_];
            MEMORY[0x277D82BD8](v148);
            sub_2260998E8();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
            v149 = sub_226099C78();

            [v151 setRecognizedNbest_];
            MEMORY[0x277D82BD8](v149);
            sub_2260998E8();
            v150 = sub_2260999F8();

            [v151 setPostITNRecognizedText_];
            MEMORY[0x277D82BD8](v150);
            MEMORY[0x277D82BD8](v151);
          }

          v147 = v228[17];

          if (v147)
          {
            v146 = v147;
            v11 = v245;
            v130 = v147;
            v258 = v147;
            sub_2260998E8();
            sub_2260998E8();
            v126 = &v257;
            v128 = 33;
            v129 = 0;
            swift_beginAccess();
            v130[11] = v164;

            swift_endAccess();

            sub_2260998E8();
            sub_2260998E8();
            v127 = &v256;
            swift_beginAccess();
            v130[12] = v162;

            swift_endAccess();

            sub_2260998E8();
            sub_2260998E8();
            v131 = &v255;
            swift_beginAccess();
            v12 = v130;
            v13 = v158;
            v130[13] = v159;
            v12[14] = v13;

            swift_endAccess();

            v14 = sub_225EF5354();
            (*(v242 + 16))(v11, v14, v241);
            sub_2260998E8();
            v133 = 32;
            v134 = 7;
            v15 = swift_allocObject();
            v16 = v158;
            v135 = v15;
            *(v15 + 16) = v159;
            *(v15 + 24) = v16;
            v143 = sub_226098C48();
            v144 = sub_22609A088();
            v132 = 17;
            v137 = swift_allocObject();
            *(v137 + 16) = 32;
            v138 = swift_allocObject();
            *(v138 + 16) = 8;
            v17 = swift_allocObject();
            v18 = v135;
            v136 = v17;
            *(v17 + 16) = v231;
            *(v17 + 24) = v18;
            v19 = swift_allocObject();
            v20 = v136;
            v140 = v19;
            *(v19 + 16) = v232;
            *(v19 + 24) = v20;
            v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
            v139 = sub_22609A4F8();
            v141 = v21;

            v22 = v137;
            v23 = v141;
            *v141 = v233;
            v23[1] = v22;

            v24 = v138;
            v25 = v141;
            v141[2] = v234;
            v25[3] = v24;

            v26 = v140;
            v27 = v141;
            v141[4] = v235;
            v27[5] = v26;
            sub_225EF5418();

            if (os_log_type_enabled(v143, v144))
            {
              v28 = v190;
              v119 = sub_22609A188();
              v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
              v120 = sub_225EF5468(0, v118, v118);
              v121 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
              v122 = &v254;
              v254 = v119;
              v123 = &v253;
              v253 = v120;
              v124 = &v252;
              v252 = v121;
              sub_225EF54BC(2, &v254);
              sub_225EF54BC(1, v122);
              v250 = v233;
              v251 = v137;
              sub_225EF73E8(&v250, v122, v123, v124);
              v125 = v28;
              if (v28)
              {

                __break(1u);
              }

              else
              {
                v250 = v234;
                v251 = v138;
                sub_225EF73E8(&v250, &v254, &v253, &v252);
                v116 = 0;
                v250 = v235;
                v251 = v140;
                sub_225EF73E8(&v250, &v254, &v253, &v252);
                v115 = 0;
                _os_log_impl(&dword_225EEB000, v143, v144, "Set recognized text: %s", v119, 0xCu);
                sub_225EF7AF4(v120, 0, v118);
                sub_225EF7AF4(v121, 1, MEMORY[0x277D84F70] + 8);
                sub_22609A168();

                v117 = v115;
              }
            }

            else
            {
              v29 = v190;

              v117 = v29;
            }

            v114 = v117;
            MEMORY[0x277D82BD8](v143);
            (*(v242 + 8))(v245, v241);

            v145 = v114;
          }

          else
          {
            v145 = v190;
          }

          v112 = v145;
          v113 = v228[19];

          if (v113)
          {
            v111 = v113;
            v110 = v113;
            v261 = v113;
            sub_2260998E8();
            sub_2260998E8();
            v106 = &v260;
            v107 = 33;
            v108 = 0;
            swift_beginAccess();
            v30 = v153;
            v31 = v110;
            *(v110 + 136) = v154;
            *(v31 + 144) = v30;

            swift_endAccess();

            sub_2260998E8();
            sub_2260998E8();
            v109 = &v259;
            swift_beginAccess();
            v32 = v158;
            v33 = v110;
            *(v110 + 152) = v159;
            *(v33 + 160) = v32;

            swift_endAccess();
          }

          v165 = v112;
        }

        else
        {

          v165 = v190;
        }
      }

      else
      {

        v165 = v190;
      }
    }

    else
    {

      v165 = v190;
    }
  }

  else
  {
    v165 = v190;
  }

  v105 = v165;
  if (*sub_225F7E5E8())
  {
    v104 = [v240 rawRecognition];
    if (v104)
    {
      v103 = v104;
      v101 = v104;
      v285 = v104;
      v284 = sub_22609A4F8();
      v34 = [v101 phrases];
      v102 = v34;
      if (v34)
      {
        v100 = v102;
        v97 = v102;
        sub_225F2C904();
        v98 = sub_226099C88();
        MEMORY[0x277D82BD8](v97);
        v99 = v98;
      }

      else
      {
        v99 = 0;
      }

      v96 = v99;
      if (v99)
      {
        v95 = v96;
      }

      else
      {
        sub_22609A3B8(v236, 11, 2, v237, 68, 2, v238, 56, 2, 116, 0);
        __break(1u);
      }

      v282 = v95;
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7860E8, &qword_2260A02F0);
      sub_225F3DBB0();
      sub_22609A028();
      for (i = v105; ; i = v43)
      {
        v91 = i;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B0, &qword_2260A02F8);
        sub_22609A388();
        v92 = v281;
        if (!v281)
        {
          break;
        }

        v90 = v92;
        v88 = v92;
        v278 = v92;
        v89 = [v92 interpretations];
        if (v89)
        {
          v87 = v89;
          v84 = v89;
          sub_225F2CB58();
          v85 = sub_226099C88();
          MEMORY[0x277D82BD8](v84);
          v86 = v85;
        }

        else
        {
          v86 = 0;
        }

        v83 = v86;
        if (v86)
        {
          v82 = v83;
        }

        else
        {
          sub_22609A3B8(v236, 11, 2, v237, 68, 2, v238, 56, 2, 117, 0);
          __break(1u);
        }

        v79 = v82;
        v277 = v82;
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7860F0, &qword_2260A01A0);
        sub_225F2CC44();
        sub_226099FE8();
        v81 = v276;
        if (v276)
        {
          v78 = v81;
          v76 = v81;
          v275 = v81;

          v77 = [v76 tokens];
          if (v77)
          {
            v75 = v77;
            v72 = v77;
            sub_225F1E118();
            v73 = sub_226099C88();
            MEMORY[0x277D82BD8](v72);
            v74 = v73;
          }

          else
          {
            v74 = 0;
          }

          v71 = v74;
          if (v74)
          {
            v70 = v71;
          }

          else
          {
            sub_22609A3B8(v236, 11, 2, v237, 68, 2, v238, 56, 2, 118, 0);
            __break(1u);
          }

          v273 = v70;
          v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786028, &qword_2260A00D0);
          sub_225F2D1E4();
          sub_22609A028();
          for (j = v91; ; j = v66)
          {
            v66 = j;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786140, &qword_2260A01C8);
            sub_22609A388();
            v67 = v272;
            if (!v272)
            {
              break;
            }

            v65 = v67;
            v63 = v67;
            v271 = v67;
            v64 = [v67 text];
            if (v64)
            {
              v62 = v64;
              v57 = v64;
              v58 = sub_226099A08();
              v59 = v35;
              MEMORY[0x277D82BD8](v57);
              v60 = v58;
              v61 = v59;
            }

            else
            {
              v60 = 0;
              v61 = 0;
            }

            v55 = v61;
            v56 = v60;
            if (v61)
            {
              v53 = v56;
              v54 = v55;
              v51 = v55;
              v49 = v56;
              v269 = v56;
              v270 = v55;
              sub_226099AA8();
              v50 = v36;
              v52 = sub_226099BA8();

              sub_2260998E8();
              if (v52)
              {
                v48 = 1;
              }

              else
              {
                sub_226099AA8();
                v46 = v37;
                v47 = sub_226099BA8();

                v48 = v47;
              }

              v45 = v48;

              if (v45)
              {
                sub_2260998E8();
                v44 = v268;
                v268[0] = v49;
                v268[1] = v51;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
                sub_226099CE8();
              }

              MEMORY[0x277D82BD8](v63);
            }

            else
            {
              MEMORY[0x277D82BD8](v63);
            }
          }

          sub_225EFE6E8(v274);
          MEMORY[0x277D82BD8](v76);
          MEMORY[0x277D82BD8](v88);
          v43 = v66;
        }

        else
        {

          MEMORY[0x277D82BD8](v88);
          v43 = v91;
        }
      }

      sub_225EFE6E8(v283);
      v41 = v284;
      sub_2260998E8();
      v280 = v41;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
      sub_225F156F8();
      v42 = sub_22609A008();

      if ((v42 & 1) == 0)
      {
        v39 = v284;
        sub_2260998E8();
        sub_2260998E8();
        v38 = &v279;
        swift_beginAccess();
        v228[18] = v39;

        swift_endAccess();
      }

      sub_225EFE6E8(&v284);
      MEMORY[0x277D82BD8](v101);
    }
  }
}

void sub_225F33FE4(id *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = 0;
  v9 = *a1;
  v7 = [v9 text];
  if (v7)
  {
    *&v4 = sub_226099A08();
    *(&v4 + 1) = v2;
    MEMORY[0x277D82BD8](v7);
    v5 = v4;
  }

  else
  {
    v5 = 0uLL;
  }

  v8 = v5;
  if (*(&v5 + 1))
  {
    *a2 = v8;
  }

  else
  {
    *a2 = sub_226099AA8();
    *(a2 + 8) = v3;
    if (*(&v8 + 1))
    {
      sub_225EFE6BC(&v8);
    }
  }
}

uint64_t sub_225F34100@<X0>(uint64_t *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786028, &qword_2260A00D0);
  v1 = sub_225F2D1E4();
  result = sub_225F15970(sub_225F33FE4, 0, v4, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v1, MEMORY[0x277D84AC0], v6);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_225F341D0(void *a1, int a2)
{
  v40 = a2;
  v45 = a1;
  v38 = a2;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v39 = 0;
  v41 = sub_226098C58();
  v42 = *(v41 - 8);
  v43 = v42;
  v3 = MEMORY[0x28223BE20](v45);
  v44 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v5;
  v52 = v6;
  v51 = v2;
  v46 = [v5 hasData];
  v7 = v45;
  if (v46)
  {
    v37 = [v45 hasRecognizedAnything];
  }

  else
  {
    v37 = 0;
  }

  v36 = v37;

  if (v36)
  {
    if (v38)
    {
      [v45 saveOneRecordPerDay];
    }

    else
    {
      [v45 save];
    }

    return v39;
  }

  else
  {
    v8 = v44;
    v9 = sub_225F31B9C();
    (*(v43 + 16))(v8, v9, v41);
    v33 = sub_226098C48();
    v30 = v33;
    v32 = sub_22609A0A8();
    v31 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v34 = sub_22609A4F8();
    if (os_log_type_enabled(v33, v32))
    {
      v10 = v39;
      v21 = sub_22609A188();
      v17 = v21;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v19 = 0;
      v22 = sub_225EF5468(0, v18, v18);
      v20 = v22;
      v23 = sub_225EF5468(v19, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v50 = v21;
      v49 = v22;
      v48 = v23;
      v24 = 0;
      v25 = &v50;
      sub_225EF54BC(0, &v50);
      sub_225EF54BC(v24, v25);
      v47 = v34;
      v26 = &v13;
      MEMORY[0x28223BE20](&v13);
      v27 = &v13 - 6;
      *(&v13 - 4) = v11;
      *(&v13 - 3) = &v49;
      *(&v13 - 2) = &v48;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v29 = v10;
      if (v10)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v30, v31, "Not saving DES Record with no data or recognition", v17, 2u);
        v15 = 0;
        sub_225EF7AF4(v20, 0, v18);
        sub_225EF7AF4(v23, v15, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v16 = v29;
      }
    }

    else
    {

      v16 = v39;
    }

    v14 = v16;

    (*(v43 + 8))(v44, v41);
    return v14;
  }
}

uint64_t sub_225F34670(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v603 = v1;
  v621 = v2;
  v605 = 0;
  v693 = 0;
  v692 = 0;
  v691 = 0;
  v690 = 0;
  v689 = 0;
  v688 = 0;
  v684 = 0;
  v683 = 0;
  v682 = 0;
  v604 = 0;
  v674 = 0;
  v672 = 0;
  v656 = 0;
  v655 = 0;
  v654 = 0;
  v652 = 0;
  v651[1] = 0;
  v651[0] = 0;
  v647 = 0;
  v646 = 0;
  v640 = 0;
  v639 = 0;
  v634 = 0;
  v633 = 0;
  v606 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v607 = &v183 - v606;
  v608 = sub_226098C58();
  v609 = *(v608 - 8);
  v610 = v609;
  v615 = *(v609 + 64);
  MEMORY[0x28223BE20](v621);
  v617 = (v615 + 15) & 0xFFFFFFFFFFFFFFF0;
  v611 = &v183 - v617;
  MEMORY[0x28223BE20](v3);
  v612 = &v183 - v617;
  MEMORY[0x28223BE20](v4);
  v613 = &v183 - v617;
  MEMORY[0x28223BE20](v5);
  v614 = &v183 - v617;
  MEMORY[0x28223BE20](v6);
  v616 = &v183 - v617;
  MEMORY[0x28223BE20](v7);
  v618 = &v183 - v617;
  v693 = v8;
  v692 = v1;
  v622 = v1[14];
  v619 = v622;
  v623 = v1[15];
  v620 = v623;
  sub_2260998E8();
  v690 = v622;
  v691 = v623;
  v624 = [v621 correctedText];
  if (v624)
  {
    v602 = v624;
    v597 = v624;
    v598 = sub_226099A08();
    v599 = v9;

    v600 = v598;
    v601 = v599;
  }

  else
  {
    v600 = 0;
    v601 = 0;
  }

  v595 = v601;
  v596 = v600;
  if (v601)
  {
    v593 = v596;
    v594 = v595;
    v590 = v595;
    v591 = v596;
    v688 = v596;
    v689 = v595;
    v686[0] = sub_226099AA8();
    v686[1] = v10;
    sub_22609A468();
    v592 = [v621 recognizedTextInfo];
    if (v592)
    {
      v589 = v592;
      v586 = v592;
      v587 = sub_226099878();

      v588 = v587;
    }

    else
    {
      v588 = 0;
    }

    v585 = v588;
    if (v588)
    {
      v584 = v585;
    }

    else
    {
      sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CESAEvaluationRecord.swift", 56, 2, 174, 0);
      __break(1u);
    }

    v583 = v584;
    sub_226099938();
    if (v687[3])
    {
      if (swift_dynamicCast())
      {
        v581 = v625;
        v582 = v626;
      }

      else
      {
        v581 = 0;
        v582 = 0;
      }

      v577 = v582;
      v578 = v581;

      sub_225F3E364(v685);
      sub_225EFE6BC(v686);
      v579 = v578;
      v580 = v577;
    }

    else
    {

      sub_225F3E364(v685);
      sub_225EFE6BC(v686);
      sub_225F186BC(v687);
      v579 = 0;
      v580 = 0;
    }

    v575 = v580;
    v576 = v579;
    if (v580)
    {
      v573 = v576;
      v574 = v575;
      v571 = v575;
      v570 = v576;
      v683 = v576;
      v684 = v575;
      v572 = sub_226099B18();
      sub_2260998E8();
      if (v572)
      {
        v569 = 1;
      }

      else
      {
        v569 = sub_226099B18();
      }

      v568 = v569;

      if (v568)
      {

        return v604;
      }

      else
      {
        if (*sub_225F7E5E8() == 1)
        {
          v11 = v618;
          v551 = 9;
          v525 = sub_226099AA8();
          v526 = v12;
          v654 = v525;
          v655 = v12;
          v13 = sub_225EF5354();
          v527 = *(v610 + 16);
          v528 = (v610 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v527(v11, v13, v608);
          sub_2260998E8();
          v541 = 32;
          v546 = 32;
          v547 = 7;
          v14 = swift_allocObject();
          v15 = v620;
          v533 = v14;
          *(v14 + 16) = v619;
          *(v14 + 24) = v15;
          sub_2260998E8();
          v16 = swift_allocObject();
          v17 = v590;
          v538 = v16;
          *(v16 + 16) = v591;
          *(v16 + 24) = v17;
          sub_2260998E8();
          v18 = swift_allocObject();
          v19 = v571;
          v548 = v18;
          *(v18 + 16) = v570;
          *(v18 + 24) = v19;
          v566 = sub_226098C48();
          v529 = v566;
          v565 = sub_22609A078();
          v530 = v565;
          v542 = 17;
          v553 = swift_allocObject();
          v531 = v553;
          *(v553 + 16) = v541;
          v554 = swift_allocObject();
          v532 = v554;
          v544 = 8;
          *(v554 + 16) = 8;
          v20 = swift_allocObject();
          v21 = v533;
          v534 = v20;
          *(v20 + 16) = sub_225EF7450;
          *(v20 + 24) = v21;
          v22 = swift_allocObject();
          v23 = v534;
          v555 = v22;
          v535 = v22;
          *(v22 + 16) = sub_225EF7B84;
          *(v22 + 24) = v23;
          v556 = swift_allocObject();
          v536 = v556;
          *(v556 + 16) = v541;
          v557 = swift_allocObject();
          v537 = v557;
          *(v557 + 16) = v544;
          v24 = swift_allocObject();
          v25 = v538;
          v539 = v24;
          *(v24 + 16) = sub_225EF7450;
          *(v24 + 24) = v25;
          v26 = swift_allocObject();
          v27 = v539;
          v558 = v26;
          v540 = v26;
          *(v26 + 16) = sub_225EF7B84;
          *(v26 + 24) = v27;
          v559 = swift_allocObject();
          v543 = v559;
          *(v559 + 16) = v541;
          v560 = swift_allocObject();
          v545 = v560;
          *(v560 + 16) = v544;
          v28 = swift_allocObject();
          v29 = v548;
          v549 = v28;
          *(v28 + 16) = sub_225EF7450;
          *(v28 + 24) = v29;
          v30 = swift_allocObject();
          v31 = v549;
          v563 = v30;
          v550 = v30;
          *(v30 + 16) = sub_225EF7B84;
          *(v30 + 24) = v31;
          v564 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
          v552 = v564;
          v561 = sub_22609A4F8();
          v562 = v32;

          v33 = v553;
          v34 = v562;
          *v562 = sub_225EF7434;
          v34[1] = v33;

          v35 = v554;
          v36 = v562;
          v562[2] = sub_225EF7434;
          v36[3] = v35;

          v37 = v555;
          v38 = v562;
          v562[4] = sub_225EF7B90;
          v38[5] = v37;

          v39 = v556;
          v40 = v562;
          v562[6] = sub_225EF7434;
          v40[7] = v39;

          v41 = v557;
          v42 = v562;
          v562[8] = sub_225EF7434;
          v42[9] = v41;

          v43 = v558;
          v44 = v562;
          v562[10] = sub_225EF7B90;
          v44[11] = v43;

          v45 = v559;
          v46 = v562;
          v562[12] = sub_225EF7434;
          v46[13] = v45;

          v47 = v560;
          v48 = v562;
          v562[14] = sub_225EF7434;
          v48[15] = v47;

          v49 = v562;
          v50 = v563;
          v562[16] = sub_225EF7B90;
          v49[17] = v50;
          sub_225EF5418();

          if (os_log_type_enabled(v566, v565))
          {
            v51 = v604;
            v518 = sub_22609A188();
            v515 = v518;
            v516 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
            v519 = sub_225EF5468(0, v516, v516);
            v517 = v519;
            v521 = 3;
            v520 = sub_225EF5468(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
            v631[0] = v518;
            v630 = v519;
            v629 = v520;
            v522 = v631;
            sub_225EF54BC(2, v631);
            sub_225EF54BC(v521, v522);
            v627 = sub_225EF7434;
            v628 = v531;
            sub_225EF73E8(&v627, v522, &v630, &v629);
            v523 = v51;
            v524 = v51;
            if (v51)
            {
              v513 = 0;

              __break(1u);
            }

            else
            {
              v627 = sub_225EF7434;
              v628 = v532;
              sub_225EF73E8(&v627, v631, &v630, &v629);
              v511 = 0;
              v512 = 0;
              v627 = sub_225EF7B90;
              v628 = v535;
              sub_225EF73E8(&v627, v631, &v630, &v629);
              v509 = 0;
              v510 = 0;
              v627 = sub_225EF7434;
              v628 = v536;
              sub_225EF73E8(&v627, v631, &v630, &v629);
              v507 = 0;
              v508 = 0;
              v627 = sub_225EF7434;
              v628 = v537;
              sub_225EF73E8(&v627, v631, &v630, &v629);
              v505 = 0;
              v506 = 0;
              v627 = sub_225EF7B90;
              v628 = v540;
              sub_225EF73E8(&v627, v631, &v630, &v629);
              v503 = 0;
              v504 = 0;
              v627 = sub_225EF7434;
              v628 = v543;
              sub_225EF73E8(&v627, v631, &v630, &v629);
              v501 = 0;
              v502 = 0;
              v627 = sub_225EF7434;
              v628 = v545;
              sub_225EF73E8(&v627, v631, &v630, &v629);
              v499 = 0;
              v500 = 0;
              v627 = sub_225EF7B90;
              v628 = v550;
              sub_225EF73E8(&v627, v631, &v630, &v629);
              v497 = 0;
              v498 = 0;
              _os_log_impl(&dword_225EEB000, v529, v530, "Received corrected texts, interactionId: %s, correctedText: %s, correctedTextV2: %s", v515, 0x20u);
              sub_225EF7AF4(v517, 0, v516);
              sub_225EF7AF4(v520, 3, MEMORY[0x277D84F70] + 8);
              sub_22609A168();

              v514 = v497;
            }
          }

          else
          {
            v52 = v604;

            v514 = v52;
          }

          v491 = v514;

          v492 = *(v610 + 8);
          v493 = (v610 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v492(v618, v608);
          v495 = &v653;
          swift_beginAccess();
          v496 = v603[18];
          v494 = v496;
          sub_2260998E8();
          swift_endAccess();
          if (v496)
          {
            v490 = v494;
            v486 = v494;
            v652 = v494;
            sub_2260998E8();
            v650 = v486;
            v487 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
            sub_225F156F8();
            sub_22609A028();
            for (i = v491; ; i = v432)
            {
              v483 = i;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D785E48, &unk_22609F970);
              sub_22609A388();
              v484 = v648;
              v485 = v649;
              if (!v649)
              {
                break;
              }

              v481 = v484;
              v482 = v485;
              v464 = v485;
              v646 = v484;
              v647 = v485;
              v645[2] = v484;
              v645[3] = v485;
              v471 = 1;
              v645[0] = sub_226099AA8();
              v645[1] = v53;
              v644[0] = sub_226099AA8();
              v644[1] = v54;
              v473 = sub_225F2CF00();
              v465 = v473;
              v472 = MEMORY[0x277D837D0];
              sub_225F381C4();
              v467 = v645;
              v466 = v644;
              v470 = 0;
              v469 = sub_22609A208();
              v468 = v55;
              sub_225EFE6BC(v466);
              sub_225EFE6BC(v467);
              v643[0] = v469;
              v643[1] = v468;
              v642[0] = sub_226099AA8();
              v642[1] = v56;
              v641[0] = sub_226099AA8();
              v641[1] = v57;
              sub_225F381C4();
              v477 = v642;
              v474 = v641;
              v478 = v643;
              v480 = sub_22609A208();
              v479 = v58;
              v475 = v480;
              v476 = v58;
              sub_225EFE6BC(v474);
              sub_225EFE6BC(v477);
              sub_225EFE6BC(v478);
              v639 = v480;
              v640 = v479;
              if (sub_226099B18())
              {
                v435 = v483;
              }

              else
              {
                v637 = v591;
                v638 = v590;
                v635 = v475;
                v636 = v476;
                if (sub_22609A228())
                {
                  sub_225F3E494();
                  sub_2260998E8();
                  v463 = sub_225F38200(v475, v476);
                }

                else
                {
                  sub_225F3E494();
                  sub_2260998E8();
                  v463 = sub_225F38248(v475, v476);
                }

                v59 = v616;
                v457 = v463;
                v634 = v463;
                v453 = [objc_opt_self() new];
                v452 = v453;
                v633 = v453;
                sub_2260998E8();
                v454 = sub_2260999F8();

                v455 = 0x1FB87B000uLL;
                [v453 0x1FB87BD78];

                v60 = v457;
                sub_2260998E8();
                v456 = sub_2260999F8();

                [v457 (v455 + 3448)];

                v61 = sub_225EF5354();
                v527(v59, v61, v608);
                v461 = sub_226098C48();
                v458 = v461;
                v460 = sub_22609A078();
                v459 = v460;
                v462 = sub_22609A4F8();
                if (os_log_type_enabled(v461, v460))
                {
                  v62 = v483;
                  v442 = sub_22609A188();
                  v438 = v442;
                  v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
                  v440 = 0;
                  v443 = sub_225EF5468(0, v439, v439);
                  v441 = v443;
                  v444 = sub_225EF5468(v440, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
                  v632 = v442;
                  v631[3] = v443;
                  v631[2] = v444;
                  v445 = 0;
                  v446 = &v632;
                  sub_225EF54BC(0, &v632);
                  sub_225EF54BC(v445, v446);
                  v631[1] = v462;
                  v449 = &v183;
                  MEMORY[0x28223BE20](&v183);
                  v447 = &v183 - 6;
                  v448 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
                  sub_225EFE598();
                  sub_226099C28();
                  v450 = v62;
                  v451 = v449;
                  if (v62)
                  {
                    __break(1u);
                  }

                  else
                  {
                    _os_log_impl(&dword_225EEB000, v458, v459, "Sending dictation feedback to Portrait based on correction", v438, 2u);
                    v436 = 0;
                    sub_225EF7AF4(v441, 0, v439);
                    sub_225EF7AF4(v444, v436, MEMORY[0x277D84F70] + 8);
                    sub_22609A168();

                    v437 = v450;
                  }
                }

                else
                {

                  v437 = v483;
                }

                v434 = v437;

                v492(v616, v608);
                v433 = 0;
                v63 = sub_226099DA8();
                (*(*(v63 - 8) + 56))(v607, 1);
                v64 = v452;
                v65 = v457;
                v66 = swift_allocObject();
                v67 = v433;
                v68 = v607;
                v69 = v452;
                v70 = v457;
                v66[2] = v433;
                v66[3] = v67;
                v66[4] = v69;
                v66[5] = v70;
                sub_225F38F2C(v67, v67, v68, &unk_2260A0330, v66, MEMORY[0x277D84F78] + 8);

                v435 = v434;
              }

              v432 = v435;
            }

            sub_225EFE6E8(v651);

            v489 = v483;
          }

          else
          {
            v489 = v491;
          }

          v430 = v489;

          v431 = v430;
        }

        else
        {
          v431 = v604;
        }

        v429 = v431;
        if (*sub_225F7E704() == 1)
        {
          v428 = v603[16];
          v427 = v428;
          v71 = v428;
          if (v428)
          {
            v426 = v427;
            v422 = v427;
            v672 = v427;
            sub_2260998E8();
            v421 = sub_2260999F8();

            [v422 setCorrectedText_];

            sub_2260998E8();
            v423 = sub_2260999F8();

            [v422 setCorrectedTextV2_];

            v72 = [v621 selectedAlternativesInfo];
            v424 = v72;
            if (v72)
            {
              v420 = v424;
              v417 = v424;
              v418 = sub_226099C88();

              v419 = v418;
            }

            else
            {
              v419 = 0;
            }

            v416 = v419;
            if (v419)
            {
              v415 = v416;
              v412 = v416;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C0, &qword_2260A0318);
              v413 = sub_22609A458();

              v414 = v413;
            }

            else
            {
              v414 = 0;
            }

            v411 = v414;
            if (v414)
            {
              v410 = v411;
              v409 = v411;
              v656 = v411;
              sub_2260998E8();
              v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C0, &qword_2260A0318);
              v406 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C8, &qword_2260A0320);
              v407 = sub_22609A378();
              v408 = sub_226099C78();

              [v422 setAlternatives_];
            }

            else
            {
              v402 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C8, &qword_2260A0320);
              v403 = sub_22609A4F8();
              v404 = sub_226099C78();

              [v422 setAlternatives_];
            }

            v73 = v614;
            v74 = sub_225EF5354();
            v371 = *(v610 + 16);
            v372 = (v610 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
            v371(v73, v74, v608);
            sub_2260998E8();
            v380 = 32;
            v385 = 32;
            v386 = 7;
            v75 = swift_allocObject();
            v76 = v620;
            v77 = v422;
            v377 = v75;
            *(v75 + 16) = v619;
            *(v75 + 24) = v76;
            v78 = v77;
            v387 = swift_allocObject();
            *(v387 + 16) = v422;
            v401 = sub_226098C48();
            v373 = v401;
            v400 = sub_22609A088();
            v374 = v400;
            v381 = 17;
            v391 = swift_allocObject();
            v375 = v391;
            *(v391 + 16) = v380;
            v392 = swift_allocObject();
            v376 = v392;
            v383 = 8;
            *(v392 + 16) = 8;
            v79 = swift_allocObject();
            v80 = v377;
            v378 = v79;
            *(v79 + 16) = sub_225EF7450;
            *(v79 + 24) = v80;
            v81 = swift_allocObject();
            v82 = v378;
            v393 = v81;
            v379 = v81;
            *(v81 + 16) = sub_225EF7B84;
            *(v81 + 24) = v82;
            v394 = swift_allocObject();
            v382 = v394;
            *(v394 + 16) = v380;
            v395 = swift_allocObject();
            v384 = v395;
            *(v395 + 16) = v383;
            v83 = swift_allocObject();
            v84 = v387;
            v388 = v83;
            *(v83 + 16) = sub_225F3E38C;
            *(v83 + 24) = v84;
            v85 = swift_allocObject();
            v86 = v388;
            v398 = v85;
            v389 = v85;
            *(v85 + 16) = sub_225EF7B84;
            *(v85 + 24) = v86;
            v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
            v390 = v399;
            v396 = sub_22609A4F8();
            v397 = v87;

            v88 = v391;
            v89 = v397;
            *v397 = sub_225EF7434;
            v89[1] = v88;

            v90 = v392;
            v91 = v397;
            v397[2] = sub_225EF7434;
            v91[3] = v90;

            v92 = v393;
            v93 = v397;
            v397[4] = sub_225EF7B90;
            v93[5] = v92;

            v94 = v394;
            v95 = v397;
            v397[6] = sub_225EF7434;
            v95[7] = v94;

            v96 = v395;
            v97 = v397;
            v397[8] = sub_225EF7434;
            v97[9] = v96;

            v98 = v397;
            v99 = v398;
            v397[10] = sub_225EF7B90;
            v98[11] = v99;
            sub_225EF5418();

            if (os_log_type_enabled(v401, v400))
            {
              v100 = v429;
              v364 = sub_22609A188();
              v361 = v364;
              v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
              v365 = sub_225EF5468(0, v362, v362);
              v363 = v365;
              v367 = 2;
              v366 = sub_225EF5468(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
              v661 = v364;
              v660 = v365;
              v659 = v366;
              v368 = &v661;
              sub_225EF54BC(v367, &v661);
              sub_225EF54BC(v367, v368);
              v657 = sub_225EF7434;
              v658 = v375;
              sub_225EF73E8(&v657, v368, &v660, &v659);
              v369 = v100;
              v370 = v100;
              if (v100)
              {
                v359 = 0;

                __break(1u);
              }

              else
              {
                v657 = sub_225EF7434;
                v658 = v376;
                sub_225EF73E8(&v657, &v661, &v660, &v659);
                v357 = 0;
                v358 = 0;
                v657 = sub_225EF7B90;
                v658 = v379;
                sub_225EF73E8(&v657, &v661, &v660, &v659);
                v355 = 0;
                v356 = 0;
                v657 = sub_225EF7434;
                v658 = v382;
                sub_225EF73E8(&v657, &v661, &v660, &v659);
                v353 = 0;
                v354 = 0;
                v657 = sub_225EF7434;
                v658 = v384;
                sub_225EF73E8(&v657, &v661, &v660, &v659);
                v351 = 0;
                v352 = 0;
                v657 = sub_225EF7B90;
                v658 = v389;
                sub_225EF73E8(&v657, &v661, &v660, &v659);
                v349 = 0;
                v350 = 0;
                _os_log_impl(&dword_225EEB000, v373, v374, "Set correctedText for CESRFidesASRRecord, interactionId: %s, correctedText: %s", v361, 0x16u);
                sub_225EF7AF4(v363, 0, v362);
                sub_225EF7AF4(v366, 2, MEMORY[0x277D84F70] + 8);
                sub_22609A168();

                v360 = v349;
              }
            }

            else
            {
              v101 = v429;

              v360 = v101;
            }

            v102 = v613;
            v319 = v360;

            v320 = *(v610 + 8);
            v321 = (v610 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v320(v614, v608);
            v103 = sub_225EF5354();
            v371(v102, v103, v608);
            sub_2260998E8();
            v329 = 32;
            v334 = 32;
            v335 = 7;
            v104 = swift_allocObject();
            v105 = v620;
            v106 = v422;
            v326 = v104;
            *(v104 + 16) = v619;
            *(v104 + 24) = v105;
            v107 = v106;
            v336 = swift_allocObject();
            *(v336 + 16) = v422;
            v348 = sub_226098C48();
            v322 = v348;
            v347 = sub_22609A088();
            v323 = v347;
            v330 = 17;
            v339 = swift_allocObject();
            v324 = v339;
            *(v339 + 16) = v329;
            v340 = swift_allocObject();
            v325 = v340;
            v332 = 8;
            *(v340 + 16) = 8;
            v108 = swift_allocObject();
            v109 = v326;
            v327 = v108;
            *(v108 + 16) = sub_225EF7450;
            *(v108 + 24) = v109;
            v110 = swift_allocObject();
            v111 = v327;
            v341 = v110;
            v328 = v110;
            *(v110 + 16) = sub_225EF7B84;
            *(v110 + 24) = v111;
            v342 = swift_allocObject();
            v331 = v342;
            *(v342 + 16) = v329;
            v343 = swift_allocObject();
            v333 = v343;
            *(v343 + 16) = v332;
            v112 = swift_allocObject();
            v113 = v336;
            v337 = v112;
            *(v112 + 16) = sub_225F3E394;
            *(v112 + 24) = v113;
            v114 = swift_allocObject();
            v115 = v337;
            v346 = v114;
            v338 = v114;
            *(v114 + 16) = sub_225EF7B84;
            *(v114 + 24) = v115;
            v344 = sub_22609A4F8();
            v345 = v116;

            v117 = v339;
            v118 = v345;
            *v345 = sub_225EF7434;
            v118[1] = v117;

            v119 = v340;
            v120 = v345;
            v345[2] = sub_225EF7434;
            v120[3] = v119;

            v121 = v341;
            v122 = v345;
            v345[4] = sub_225EF7B90;
            v122[5] = v121;

            v123 = v342;
            v124 = v345;
            v345[6] = sub_225EF7434;
            v124[7] = v123;

            v125 = v343;
            v126 = v345;
            v345[8] = sub_225EF7434;
            v126[9] = v125;

            v127 = v345;
            v128 = v346;
            v345[10] = sub_225EF7B90;
            v127[11] = v128;
            sub_225EF5418();

            if (os_log_type_enabled(v348, v347))
            {
              v129 = v319;
              v312 = sub_22609A188();
              v309 = v312;
              v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
              v313 = sub_225EF5468(0, v310, v310);
              v311 = v313;
              v315 = 2;
              v314 = sub_225EF5468(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
              v666 = v312;
              v665 = v313;
              v664 = v314;
              v316 = &v666;
              sub_225EF54BC(v315, &v666);
              sub_225EF54BC(v315, v316);
              v662 = sub_225EF7434;
              v663 = v324;
              sub_225EF73E8(&v662, v316, &v665, &v664);
              v317 = v129;
              v318 = v129;
              if (v129)
              {
                v307 = 0;

                __break(1u);
              }

              else
              {
                v662 = sub_225EF7434;
                v663 = v325;
                sub_225EF73E8(&v662, &v666, &v665, &v664);
                v305 = 0;
                v306 = 0;
                v662 = sub_225EF7B90;
                v663 = v328;
                sub_225EF73E8(&v662, &v666, &v665, &v664);
                v303 = 0;
                v304 = 0;
                v662 = sub_225EF7434;
                v663 = v331;
                sub_225EF73E8(&v662, &v666, &v665, &v664);
                v301 = 0;
                v302 = 0;
                v662 = sub_225EF7434;
                v663 = v333;
                sub_225EF73E8(&v662, &v666, &v665, &v664);
                v299 = 0;
                v300 = 0;
                v662 = sub_225EF7B90;
                v663 = v338;
                sub_225EF73E8(&v662, &v666, &v665, &v664);
                v297 = 0;
                v298 = 0;
                _os_log_impl(&dword_225EEB000, v322, v323, "Set correctedTextV2 for CESRFidesASRRecord, interactionId: %s, correctedTextV2: %s", v309, 0x16u);
                sub_225EF7AF4(v311, 0, v310);
                sub_225EF7AF4(v314, 2, MEMORY[0x277D84F70] + 8);
                sub_22609A168();

                v308 = v297;
              }
            }

            else
            {
              v130 = v319;

              v308 = v130;
            }

            v131 = v612;
            v268 = v308;

            v320(v613, v608);
            v132 = sub_225EF5354();
            v371(v131, v132, v608);
            sub_2260998E8();
            v277 = 32;
            v282 = 32;
            v283 = 7;
            v133 = swift_allocObject();
            v134 = v620;
            v135 = v422;
            v274 = v133;
            *(v133 + 16) = v619;
            *(v133 + 24) = v134;
            v136 = v135;
            v269 = swift_allocObject();
            *(v269 + 16) = v422;

            v137 = swift_allocObject();
            v138 = v269;
            v284 = v137;
            *(v137 + 16) = sub_225F3E39C;
            *(v137 + 24) = v138;

            v296 = sub_226098C48();
            v270 = v296;
            v295 = sub_22609A088();
            v271 = v295;
            v278 = 17;
            v287 = swift_allocObject();
            v272 = v287;
            *(v287 + 16) = v277;
            v288 = swift_allocObject();
            v273 = v288;
            v280 = 8;
            *(v288 + 16) = 8;
            v139 = swift_allocObject();
            v140 = v274;
            v275 = v139;
            *(v139 + 16) = sub_225EF7450;
            *(v139 + 24) = v140;
            v141 = swift_allocObject();
            v142 = v275;
            v289 = v141;
            v276 = v141;
            *(v141 + 16) = sub_225EF7B84;
            *(v141 + 24) = v142;
            v290 = swift_allocObject();
            v279 = v290;
            *(v290 + 16) = v277;
            v291 = swift_allocObject();
            v281 = v291;
            *(v291 + 16) = v280;
            v143 = swift_allocObject();
            v144 = v284;
            v285 = v143;
            *(v143 + 16) = sub_225F3E3A4;
            *(v143 + 24) = v144;
            v145 = swift_allocObject();
            v146 = v285;
            v294 = v145;
            v286 = v145;
            *(v145 + 16) = sub_225EF7B84;
            *(v145 + 24) = v146;
            v292 = sub_22609A4F8();
            v293 = v147;

            v148 = v287;
            v149 = v293;
            *v293 = sub_225EF7434;
            v149[1] = v148;

            v150 = v288;
            v151 = v293;
            v293[2] = sub_225EF7434;
            v151[3] = v150;

            v152 = v289;
            v153 = v293;
            v293[4] = sub_225EF7B90;
            v153[5] = v152;

            v154 = v290;
            v155 = v293;
            v293[6] = sub_225EF7434;
            v155[7] = v154;

            v156 = v291;
            v157 = v293;
            v293[8] = sub_225EF7434;
            v157[9] = v156;

            v158 = v293;
            v159 = v294;
            v293[10] = sub_225EF7B90;
            v158[11] = v159;
            sub_225EF5418();

            if (os_log_type_enabled(v296, v295))
            {
              v160 = v268;
              v261 = sub_22609A188();
              v258 = v261;
              v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
              v262 = sub_225EF5468(0, v259, v259);
              v260 = v262;
              v264 = 2;
              v263 = sub_225EF5468(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
              v671 = v261;
              v670 = v262;
              v669 = v263;
              v265 = &v671;
              sub_225EF54BC(v264, &v671);
              sub_225EF54BC(v264, v265);
              v667 = sub_225EF7434;
              v668 = v272;
              sub_225EF73E8(&v667, v265, &v670, &v669);
              v266 = v160;
              v267 = v160;
              if (v160)
              {
                v256 = 0;

                __break(1u);
              }

              else
              {
                v667 = sub_225EF7434;
                v668 = v273;
                sub_225EF73E8(&v667, &v671, &v670, &v669);
                v254 = 0;
                v255 = 0;
                v667 = sub_225EF7B90;
                v668 = v276;
                sub_225EF73E8(&v667, &v671, &v670, &v669);
                v252 = 0;
                v253 = 0;
                v667 = sub_225EF7434;
                v668 = v279;
                sub_225EF73E8(&v667, &v671, &v670, &v669);
                v250 = 0;
                v251 = 0;
                v667 = sub_225EF7434;
                v668 = v281;
                sub_225EF73E8(&v667, &v671, &v670, &v669);
                v248 = 0;
                v249 = 0;
                v667 = sub_225EF7B90;
                v668 = v286;
                sub_225EF73E8(&v667, &v671, &v670, &v669);
                v246 = 0;
                v247 = 0;
                _os_log_impl(&dword_225EEB000, v270, v271, "Set alternativeSelection for CESRFidesASRRecord, interactionId: %s, alternatives: %s", v258, 0x16u);
                sub_225EF7AF4(v260, 0, v259);
                sub_225EF7AF4(v263, 2, MEMORY[0x277D84F70] + 8);
                sub_22609A168();

                v257 = v246;
              }
            }

            else
            {
              v161 = v268;

              v257 = v161;
            }

            v245 = v257;

            v320(v612, v608);
            v425 = v245;
          }

          else
          {
            v425 = v429;
          }
        }

        else
        {
          v425 = v429;
        }

        v244 = v425;
        if (*sub_225EF72E8() == 1)
        {
          v243 = v603[17];
          v242 = v243;

          if (v243)
          {
            v241 = v242;
            v237 = v242;
            v682 = v242;
            sub_2260998E8();
            sub_2260998E8();
            v238 = &v681;
            swift_beginAccess();
            v162 = v237;
            v163 = v571;
            *(v237 + 120) = v570;
            *(v162 + 128) = v163;

            swift_endAccess();

            v164 = [v621 selectedAlternativesInfo];
            v239 = v164;
            if (v164)
            {
              v236 = v239;
              v233 = v239;
              v234 = sub_226099C88();

              v235 = v234;
            }

            else
            {
              v235 = 0;
            }

            v232 = v235;
            if (v235)
            {
              v231 = v232;
              v228 = v232;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C0, &qword_2260A0318);
              v229 = sub_22609A458();

              v230 = v229;
            }

            else
            {
              v230 = 0;
            }

            v227 = v230;
            if (v230)
            {
              v226 = v227;
              v225 = v227;
              v674 = v227;
              sub_2260998E8();
              sub_2260998E8();
              v224 = &v673;
              swift_beginAccess();
              *(v237 + 136) = v225;

              swift_endAccess();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C0, &qword_2260A0318);
              v221 = 0;
              v223 = sub_22609A4F8();
              sub_2260998E8();
              v222 = &v680;
              swift_beginAccess();
              *(v237 + 136) = v223;

              swift_endAccess();
            }

            v165 = v611;
            v166 = sub_225EF5354();
            (*(v610 + 16))(v165, v166, v608);
            sub_2260998E8();
            v204 = 32;
            v208 = 32;
            v209 = 7;
            v167 = swift_allocObject();
            v168 = v620;
            v210 = v167;
            *(v167 + 16) = v619;
            *(v167 + 24) = v168;
            v220 = sub_226098C48();
            v202 = v220;
            v219 = sub_22609A088();
            v203 = v219;
            v205 = 17;
            v213 = swift_allocObject();
            v206 = v213;
            *(v213 + 16) = v204;
            v214 = swift_allocObject();
            v207 = v214;
            *(v214 + 16) = 8;
            v169 = swift_allocObject();
            v170 = v210;
            v211 = v169;
            *(v169 + 16) = sub_225EF7450;
            *(v169 + 24) = v170;
            v171 = swift_allocObject();
            v172 = v211;
            v217 = v171;
            v212 = v171;
            *(v171 + 16) = sub_225EF7B84;
            *(v171 + 24) = v172;
            v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
            v215 = sub_22609A4F8();
            v216 = v173;

            v174 = v213;
            v175 = v216;
            *v216 = sub_225EF7434;
            v175[1] = v174;

            v176 = v214;
            v177 = v216;
            v216[2] = sub_225EF7434;
            v177[3] = v176;

            v178 = v216;
            v179 = v217;
            v216[4] = sub_225EF7B90;
            v178[5] = v179;
            sub_225EF5418();

            if (os_log_type_enabled(v220, v219))
            {
              v180 = v244;
              v195 = sub_22609A188();
              v192 = v195;
              v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
              v196 = sub_225EF5468(0, v193, v193);
              v194 = v196;
              v198 = 1;
              v197 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
              v679 = v195;
              v678 = v196;
              v677 = v197;
              v199 = &v679;
              sub_225EF54BC(2, &v679);
              sub_225EF54BC(v198, v199);
              v675 = sub_225EF7434;
              v676 = v206;
              sub_225EF73E8(&v675, v199, &v678, &v677);
              v200 = v180;
              v201 = v180;
              if (v180)
              {
                v190 = 0;

                __break(1u);
              }

              else
              {
                v675 = sub_225EF7434;
                v676 = v207;
                sub_225EF73E8(&v675, &v679, &v678, &v677);
                v188 = 0;
                v189 = 0;
                v675 = sub_225EF7B90;
                v676 = v212;
                sub_225EF73E8(&v675, &v679, &v678, &v677);
                v186 = 0;
                v187 = 0;
                _os_log_impl(&dword_225EEB000, v202, v203, "Set correctedText for Biome edit record, interactionId: %s", v192, 0xCu);
                sub_225EF7AF4(v194, 0, v193);
                sub_225EF7AF4(v197, 1, MEMORY[0x277D84F70] + 8);
                sub_22609A168();

                v191 = v186;
              }
            }

            else
            {
              v181 = v244;

              v191 = v181;
            }

            v185 = v191;

            (*(v610 + 8))(v611, v608);

            v240 = v185;
          }

          else
          {
            v240 = v244;
          }
        }

        else
        {
          v240 = v244;
        }

        v184 = v240;

        return v184;
      }
    }

    else
    {

      return v604;
    }
  }

  else
  {

    return v604;
  }
}

uint64_t sub_225F381C4()
{
  sub_226039094(0);

  return 0;
}

uint64_t sub_225F38290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a5;
  v5[22] = a4;
  v5[18] = v5;
  v5[19] = 0;
  v5[20] = 0;
  v5[21] = 0;
  v6 = sub_226098C58();
  v5[24] = v6;
  v5[25] = *(v6 - 8);
  v5[26] = swift_task_alloc();
  v5[19] = a4;
  v5[20] = a5;

  return MEMORY[0x2822009F8](sub_225F383AC, 0, 0);
}

uint64_t sub_225F383AC()
{
  v3 = *(v0 + 184);
  v4 = *(v0 + 176);
  *(v0 + 144) = v0;
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 56) = v0 + 224;
  *(v0 + 24) = sub_225F384EC;
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862F8, &qword_2260A0478);
  *(v0 + 112) = v2;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 92) = 0;
  *(v0 + 96) = sub_225F38D88;
  *(v0 + 104) = &block_descriptor_0;
  [v4 registerFeedback:v3 completion:?];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_225F384EC()
{
  v4 = *v0;
  v4[18] = *v0;
  v1 = v4[6];
  v4[27] = v1;
  if (v1)
  {
    v2 = sub_225F386E4;
  }

  else
  {
    v2 = sub_225F38644;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225F38644()
{
  *(v0 + 144) = v0;

  v1 = *(*(v0 + 144) + 8);

  return v1();
}

uint64_t sub_225F386E4()
{
  v34 = v0;
  v19 = v0[27];
  v16 = v0[26];
  v17 = v0[25];
  v18 = v0[24];
  v0[18] = v0;
  swift_willThrow();
  v1 = v19;
  v0[21] = v19;
  v2 = sub_225EF5354();
  (*(v17 + 16))(v16, v2, v18);
  v3 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  sub_225F3EAE8();

  v27 = sub_226098C48();
  v28 = sub_22609A098();
  v23 = swift_allocObject();
  *(v23 + 16) = 64;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_225F3EA68;
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_225F3EA70;
  *(v22 + 24) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_225F3E1C8;
  *(v25 + 24) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v26 = v4;

  *v26 = sub_225EF7434;
  v26[1] = v23;

  v26[2] = sub_225EF7434;
  v26[3] = v24;

  v26[4] = sub_225F3E358;
  v26[5] = v25;
  sub_225EF5418();

  if (os_log_type_enabled(v27, v28))
  {
    buf = sub_22609A188();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v13 = sub_225EF5468(1, v11, v11);
    v14 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v29 = buf;
    v30 = v13;
    v31 = v14;
    sub_225EF54BC(2, &v29);
    sub_225EF54BC(1, &v29);
    v32 = sub_225EF7434;
    v33 = v23;
    sub_225EF73E8(&v32, &v29, &v30, &v31);
    v32 = sub_225EF7434;
    v33 = v24;
    sub_225EF73E8(&v32, &v29, &v30, &v31);
    v32 = sub_225F3E358;
    v33 = v25;
    sub_225EF73E8(&v32, &v29, &v30, &v31);
    _os_log_impl(&dword_225EEB000, v27, v28, "Failed to save PersonalizationPortrait feedback: %@", buf, 0xCu);
    sub_225EF7AF4(v13, 1, v11);
    sub_225EF7AF4(v14, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v10 = v15[27];
  v8 = v15[26];
  v9 = v15[24];
  v7 = v15[25];
  MEMORY[0x277D82BD8](v27);
  (*(v7 + 8))(v8, v9);

  v5 = *(v15[18] + 8);

  return v5();
}

uint64_t sub_225F38D88(uint64_t a1, char a2, void *a3)
{
  MEMORY[0x277D82BE0](a3);
  v8 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_225F38E44(v8, a3, MEMORY[0x277D839B0]);
  }

  else
  {
    v9 = a2;
    sub_225F38EA8(v8, &v9, MEMORY[0x277D839B0]);
  }

  return MEMORY[0x277D82BD8](a3);
}

uint64_t sub_225F38E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[1] = a3;
  v7[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786300, &unk_2260A0480);
  return sub_225F3DEC0(v7, a1, a3, v3, MEMORY[0x277D84950]);
}

uint64_t sub_225F38F2C(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a1;
  v46 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v47 = a6;
  v48 = "Fatal error";
  v49 = "Unexpectedly found nil while unwrapping an Optional value";
  v50 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v51 = &unk_2260A0468;
  v52 = 0;
  v65 = a6;
  v53 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v56);
  v57 = &v14 - v53;

  v63 = v55;
  v64 = v56;
  sub_225EF7BD0(v54, v57);
  v58 = sub_226099DA8();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  if ((*(v59 + 48))(v57, 1) == 1)
  {
    sub_225EF7CF8(v57);
    v44 = 0;
  }

  else
  {
    v43 = sub_226099D98();
    (*(v59 + 8))(v57, v58);
    v44 = v43;
  }

  v40 = v44 | 0x1C00;
  v42 = *(v56 + 16);
  v41 = *(v56 + 24);
  swift_unknownObjectRetain();

  if (v42)
  {
    v38 = v42;
    v39 = v41;
    v32 = v41;
    v33 = v42;
    swift_getObjectType();
    v34 = sub_226099D48();
    v35 = v6;
    swift_unknownObjectRelease();
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v30 = v37;
  v31 = v36;
  sub_2260998E8();
  if (v46)
  {
    v28 = v45;
    v29 = v46;
    v7 = v52;
    v25 = v46;
    v26 = sub_226099A68();

    sub_225F3DD00(v26 + 32, &v63, v47, &v61);
    if (v7)
    {
      __break(1u);
    }

    v24 = v61;

    v27 = v24;
  }

  else
  {
    v27 = 0;
  }

  v23 = v27;
  if (v27)
  {
    v17 = v23;
    v16 = v23;
    sub_225EF7CF8(v54);

    v18 = v16;
  }

  else
  {

    sub_225EF7CF8(v54);
    v19 = v63;
    v20 = v64;

    v8 = swift_allocObject();
    v9 = v19;
    v10 = v20;
    v11 = v31;
    v12 = v30;
    v21 = v8;
    v8[2] = v47;
    v8[3] = v9;
    v8[4] = v10;
    v22 = 0;
    if (v11 != 0 || v12 != 0)
    {
      v62[0] = 0;
      v62[1] = 0;
      v62[2] = v31;
      v62[3] = v30;
      v22 = v62;
    }

    v18 = swift_task_create();
  }

  v15 = v18;

  return v15;
}

uint64_t sub_225F394F8(void *a1)
{
  v2 = [a1 correctedText];
  v3 = sub_226099A08();
  MEMORY[0x277D82BD8](v2);
  return v3;
}

uint64_t sub_225F39554(void *a1)
{
  v2 = [a1 correctedTextV2];
  v3 = sub_226099A08();
  MEMORY[0x277D82BD8](v2);
  return v3;
}

uint64_t sub_225F395B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 alternatives];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C8, &qword_2260A0320);
  *a2 = sub_226099C88();
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_225F3966C()
{
  swift_beginAccess();
  v2 = *(v0 + 112);
  sub_2260998E8();
  swift_endAccess();
  return v2;
}

uint64_t sub_225F396BC(uint64_t a1)
{
  sub_2260998E8();
  swift_beginAccess();
  *(v1 + 112) = a1;

  swift_endAccess();
}

uint64_t sub_225F39778(uint64_t a1)
{
  v35 = a1;
  v46 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v34 = 0;
  v36 = sub_226098C58();
  v37 = *(v36 - 8);
  v38 = v37;
  MEMORY[0x28223BE20](v35);
  v39 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v3;
  v63 = v1;
  v44 = *(v3 + 112);
  v40 = v44;
  v45 = *(v3 + 120);
  v41 = v45;
  sub_2260998E8();
  v61 = v44;
  v62 = v45;
  sub_2260998E8();
  v43 = &v60;
  swift_beginAccess();
  v47 = *(v1 + 112);
  v42 = v47;
  sub_2260998E8();
  swift_endAccess();
  v58[0] = v44;
  v58[1] = v45;
  type metadata accessor for CESAEvaluationRecord();
  v48 = v58;
  sub_226099938();
  sub_225EFE6BC(v48);
  v57 = v59;
  v33 = v59 != 0;
  v32 = v33;
  sub_225EF5A0C(&v57);

  if (v32)
  {
    v4 = v39;
    v5 = sub_225EF5354();
    (*(v38 + 16))(v4, v5, v36);
    v30 = sub_226098C48();
    v27 = v30;
    v29 = sub_22609A098();
    v28 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v31 = sub_22609A4F8();
    if (os_log_type_enabled(v30, v29))
    {
      v6 = v34;
      v18 = sub_22609A188();
      v14 = v18;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v16 = 0;
      v19 = sub_225EF5468(0, v15, v15);
      v17 = v19;
      v20 = sub_225EF5468(v16, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v52 = v18;
      v51 = v19;
      v50 = v20;
      v21 = 0;
      v22 = &v52;
      sub_225EF54BC(0, &v52);
      sub_225EF54BC(v21, v22);
      v49 = v31;
      v23 = v9;
      MEMORY[0x28223BE20](v9);
      v24 = &v9[-6];
      v9[-4] = v7;
      v9[-3] = &v51;
      v9[-2] = &v50;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v26 = v6;
      if (v6)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v27, v28, "Duplicate interactionId, overriding record!", v14, 2u);
        v12 = 0;
        sub_225EF7AF4(v17, 0, v15);
        sub_225EF7AF4(v20, v12, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v13 = v26;
      }
    }

    else
    {

      v13 = v34;
    }

    v10 = v13;

    (*(v38 + 8))(v39, v36);
    v11 = v10;
  }

  else
  {
    v11 = v34;
  }

  sub_2260998E8();

  v56 = v35;
  v54 = v40;
  v55 = v41;
  v9[1] = &v53;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862E8, &qword_2260A0338);
  sub_226099948();
  swift_endAccess();
}

uint64_t sub_225F39DF4(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v53 = a2;
  v48 = &unk_2260A0348;
  v55 = sub_225EF7450;
  v59 = sub_225EF7B84;
  v61 = sub_225EF7434;
  v63 = sub_225EF7434;
  v66 = sub_225EF7B90;
  v78 = 0;
  v79 = 0;
  v77 = 0;
  v40 = 0;
  v46 = 0;
  v51 = sub_226098C58();
  v49 = *(v51 - 8);
  v50 = v51 - 8;
  v41 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v2 = v31 - v41;
  v42 = v31 - v41;
  v43 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46);
  v47 = v31 - v43;
  v78 = v52;
  v79 = v3;
  v77 = v4;
  v5 = sub_226099DA8();
  (*(*(v5 - 8) + 56))(v47, 1);

  sub_2260998E8();

  v44 = sub_225F3E72C();
  v57 = 7;
  v6 = swift_allocObject();
  v7 = v44;
  v8 = v45;
  v9 = v46;
  v10 = v47;
  v11 = v48;
  v12 = v53;
  v13 = v6;
  v14 = v52;
  v13[2] = v45;
  v13[3] = v7;
  v13[4] = v8;
  v13[5] = v14;
  v13[6] = v12;
  sub_225F38F2C(v9, v9, v10, v11, v13, MEMORY[0x277D84F78] + 8);

  v15 = sub_225EF5354();
  (*(v49 + 16))(v2, v15, v51);
  sub_2260998E8();
  v56 = 32;
  v16 = swift_allocObject();
  v17 = v53;
  v58 = v16;
  *(v16 + 16) = v52;
  *(v16 + 24) = v17;
  v70 = sub_226098C48();
  v71 = sub_22609A088();
  v54 = 17;
  v62 = swift_allocObject();
  *(v62 + 16) = 32;
  v64 = swift_allocObject();
  *(v64 + 16) = 8;
  v18 = swift_allocObject();
  v19 = v58;
  v60 = v18;
  *(v18 + 16) = v55;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v60;
  v67 = v20;
  *(v20 + 16) = v59;
  *(v20 + 24) = v21;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v65 = sub_22609A4F8();
  v68 = v22;

  v23 = v62;
  v24 = v68;
  *v68 = v61;
  v24[1] = v23;

  v25 = v64;
  v26 = v68;
  v68[2] = v63;
  v26[3] = v25;

  v27 = v67;
  v28 = v68;
  v68[4] = v66;
  v28[5] = v27;
  sub_225EF5418();

  if (os_log_type_enabled(v70, v71))
  {
    v29 = v40;
    v33 = sub_22609A188();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v34 = sub_225EF5468(0, v32, v32);
    v35 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v36 = &v76;
    v76 = v33;
    v37 = &v75;
    v75 = v34;
    v38 = &v74;
    v74 = v35;
    sub_225EF54BC(2, &v76);
    sub_225EF54BC(1, v36);
    v72 = v61;
    v73 = v62;
    sub_225EF73E8(&v72, v36, v37, v38);
    v39 = v29;
    if (v29)
    {

      __break(1u);
    }

    else
    {
      v72 = v63;
      v73 = v64;
      sub_225EF73E8(&v72, &v76, &v75, &v74);
      v31[0] = 0;
      v72 = v66;
      v73 = v67;
      sub_225EF73E8(&v72, &v76, &v75, &v74);
      _os_log_impl(&dword_225EEB000, v70, v71, "Submitted delayed task for records to be written after 30 seconds, interactionId: %s", v33, 0xCu);
      sub_225EF7AF4(v34, 0, v32);
      sub_225EF7AF4(v35, 1, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v70);
  return (*(v49 + 8))(v42, v51);
}

uint64_t sub_225F3A57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a6;
  v6[20] = a5;
  v6[19] = a4;
  v6[14] = v6;
  v6[15] = 0;
  v6[8] = 0;
  v6[9] = 0;
  v6[18] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310);
  v6[22] = swift_task_alloc();
  v7 = sub_226098C58();
  v6[23] = v7;
  v6[24] = *(v7 - 8);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v8 = sub_22609A358();
  v6[27] = v8;
  v6[28] = *(v8 - 8);
  v6[29] = swift_task_alloc();
  v6[15] = a4;
  v6[8] = a5;
  v6[9] = a6;

  return MEMORY[0x2822009F8](sub_225F3A774, a4, 0);
}

uint64_t sub_225F3A774()
{
  *(v0 + 112) = v0;
  *(v0 + 128) = 30;
  sub_225EF81C4();
  *(v0 + 80) = sub_22609A628();
  *(v0 + 88) = v1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  v7 = sub_225F3E9A8();
  sub_225F7E764();
  v2 = swift_task_alloc();
  v6[30] = v2;
  *v2 = v6[14];
  v2[1] = sub_225EF41F0;
  v3 = v6[29];
  v4 = v6[27];

  return sub_225F7E788(v0 + 80, v0 + 40, v3, v4, v7);
}

uint64_t sub_225F3A8E0()
{
  v67 = v0;
  v55 = v0[31];
  v1 = v0[29];
  v2 = v0[28];
  v3 = v0[27];
  v0[14] = v0;
  (*(v2 + 8))(v1, v3);

  v4 = v0[21];
  v0[12] = v0[20];
  v0[13] = v4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862E8, &qword_2260A0338);
  sub_226099888();
  swift_endAccess();
  v56 = v0[17];
  if (v56)
  {
    v5 = v54[25];
    v43 = v54[23];
    v45 = v54[21];
    v44 = v54[20];
    v42 = v54[24];
    v54[18] = v56;
    v6 = sub_225EF5354();
    (*(v42 + 16))(v5, v6, v43);
    sub_2260998E8();
    v46 = swift_allocObject();
    *(v46 + 16) = v44;
    *(v46 + 24) = v45;
    oslog = sub_226098C48();
    v53 = sub_22609A088();
    v48 = swift_allocObject();
    *(v48 + 16) = 32;
    v49 = swift_allocObject();
    *(v49 + 16) = 8;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_225EF7450;
    *(v47 + 24) = v46;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_225EF7B84;
    *(v50 + 24) = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v51 = v7;

    *v51 = sub_225EF7434;
    v51[1] = v48;

    v51[2] = sub_225EF7434;
    v51[3] = v49;

    v51[4] = sub_225EF7B90;
    v51[5] = v50;
    sub_225EF5418();

    if (os_log_type_enabled(oslog, v53))
    {
      buf = sub_22609A188();
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v28 = sub_225EF5468(0, v26, v26);
      v29 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v62 = buf;
      v63 = v28;
      v64 = v29;
      sub_225EF54BC(2, &v62);
      sub_225EF54BC(1, &v62);
      v65 = sub_225EF7434;
      v66 = v48;
      sub_225EF73E8(&v65, &v62, &v63, &v64);
      v65 = sub_225EF7434;
      v66 = v49;
      sub_225EF73E8(&v65, &v62, &v63, &v64);
      v65 = sub_225EF7B90;
      v66 = v50;
      sub_225EF73E8(&v65, &v62, &v63, &v64);
      _os_log_impl(&dword_225EEB000, oslog, v53, "Writing record with interactionId: %s", buf, 0xCu);
      sub_225EF7AF4(v28, 0, v26);
      sub_225EF7AF4(v29, 1, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    else
    {
    }

    v23 = v54[25];
    v24 = v54[23];
    v25 = v54[22];
    v22 = v54[24];
    MEMORY[0x277D82BD8](oslog);
    (*(v22 + 8))(v23, v24);
    v11 = sub_226099DA8();
    (*(*(v11 - 8) + 56))(v25, 1);

    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v56;
    sub_225F3B658(0, 0, v25, &unk_2260A0460, v12, MEMORY[0x277D84F78] + 8);
    sub_225EF7CF8(v25);
  }

  else
  {
    v8 = v54[26];
    v31 = v54[23];
    v33 = v54[21];
    v32 = v54[20];
    v30 = v54[24];
    v9 = sub_225EF5354();
    (*(v30 + 16))(v8, v9, v31);
    sub_2260998E8();
    v34 = swift_allocObject();
    *(v34 + 16) = v32;
    *(v34 + 24) = v33;
    log = sub_226098C48();
    v41 = sub_22609A098();
    v36 = swift_allocObject();
    *(v36 + 16) = 32;
    v37 = swift_allocObject();
    *(v37 + 16) = 8;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_225EF7450;
    *(v35 + 24) = v34;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_225EF7B84;
    *(v38 + 24) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v39 = v10;

    *v39 = sub_225EF7434;
    v39[1] = v36;

    v39[2] = sub_225EF7434;
    v39[3] = v37;

    v39[4] = sub_225EF7B90;
    v39[5] = v38;
    sub_225EF5418();

    if (os_log_type_enabled(log, v41))
    {
      v19 = sub_22609A188();
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v20 = sub_225EF5468(0, v18, v18);
      v21 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v57 = v19;
      v58 = v20;
      v59 = v21;
      sub_225EF54BC(2, &v57);
      sub_225EF54BC(1, &v57);
      v60 = sub_225EF7434;
      v61 = v36;
      sub_225EF73E8(&v60, &v57, &v58, &v59);
      v60 = sub_225EF7434;
      v61 = v37;
      sub_225EF73E8(&v60, &v57, &v58, &v59);
      v60 = sub_225EF7B90;
      v61 = v38;
      sub_225EF73E8(&v60, &v57, &v58, &v59);
      _os_log_impl(&dword_225EEB000, log, v41, "Record for interactionId %s does not exist or was already removed!", v19, 0xCu);
      sub_225EF7AF4(v20, 0, v18);
      sub_225EF7AF4(v21, 1, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    else
    {
    }

    v16 = v54[26];
    v17 = v54[23];
    v15 = v54[24];
    MEMORY[0x277D82BD8](log);
    (*(v15 + 8))(v16, v17);
  }

  v13 = *(v54[14] + 8);

  return v13();
}

uint64_t sub_225F3B658(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a1;
  v45 = a2;
  v53 = a3;
  v54 = a4;
  v55 = a5;
  v46 = a6;
  v47 = "Fatal error";
  v48 = "Unexpectedly found nil while unwrapping an Optional value";
  v49 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v50 = &unk_2260A0448;
  v51 = 0;
  v64 = a6;
  v52 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55);
  v56 = &v15 - v52;

  v62 = v54;
  v63 = v55;
  sub_225EF7BD0(v53, v56);
  v57 = sub_226099DA8();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  if ((*(v58 + 48))(v56, 1) == 1)
  {
    sub_225EF7CF8(v56);
    v43 = 0;
  }

  else
  {
    v42 = sub_226099D98();
    (*(v58 + 8))(v56, v57);
    v43 = v42;
  }

  v39 = v43 | 0x1000;
  v41 = *(v55 + 16);
  v40 = *(v55 + 24);
  swift_unknownObjectRetain();

  if (v41)
  {
    v37 = v41;
    v38 = v40;
    v31 = v40;
    v32 = v41;
    swift_getObjectType();
    v33 = sub_226099D48();
    v34 = v6;
    swift_unknownObjectRelease();
    v35 = v33;
    v36 = v34;
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  v29 = v36;
  v30 = v35;
  if (v45)
  {
    v27 = v44;
    v28 = v45;
    v7 = v51;
    v25 = sub_226099A68();
    sub_225F3DF50(v25 + 32, &v62, v46, &v60);
    if (v7)
    {
      __break(1u);
    }

    v24 = v60;

    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  v23 = v26;
  if (v26)
  {
    v17 = v23;
    v18 = v23;
  }

  else
  {

    v19 = v62;
    v20 = v63;

    v8 = swift_allocObject();
    v9 = v19;
    v10 = v20;
    v11 = v30;
    v12 = v29;
    v21 = v8;
    v8[2] = v46;
    v8[3] = v9;
    v8[4] = v10;
    v22 = 0;
    if (v11 != 0 || v12 != 0)
    {
      v61[0] = 0;
      v61[1] = 0;
      v61[2] = v30;
      v61[3] = v29;
      v22 = v61;
    }

    v18 = swift_task_create();
  }

  sub_225EF7DA0();
  v16 = v13;

  return v16;
}

uint64_t sub_225F3BBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = v3;
  v4[16] = a3;
  v4[15] = a2;
  v4[14] = a1;
  v4[9] = v4;
  v4[10] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[11] = 0;
  v4[13] = 0;
  v5 = sub_226098C58();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310);
  v4[21] = swift_task_alloc();
  v4[10] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[11] = v9;

  return MEMORY[0x2822009F8](sub_225F3BD74, v9, 0);
}

uint64_t sub_225F3BD74()
{
  v38 = v0;
  v31 = v0[16];
  v30 = v0[15];
  v0[9] = v0;
  sub_2260998E8();
  swift_beginAccess();
  sub_2260998E8();
  swift_endAccess();
  v0[7] = v30;
  v0[8] = v31;
  type metadata accessor for CESAEvaluationRecord();
  sub_226099938();
  sub_225EFE6BC((v0 + 7));
  v32 = v0[12];
  if (v32)
  {
    v28 = v29[21];
    v27 = v29[14];
    v29[13] = v32;

    v1 = sub_226099DA8();
    (*(*(v1 - 8) + 56))(v28, 1);

    MEMORY[0x277D82BE0](v27);
    v2 = swift_allocObject();
    v2[2] = 0;
    v2[3] = 0;
    v2[4] = v32;
    v2[5] = v27;
    sub_225F3B658(0, 0, v28, &unk_2260A0360, v2, MEMORY[0x277D84F78] + 8);
    sub_225EF7CF8(v28);
  }

  else
  {
    v3 = v29[20];
    v16 = v29[18];
    v18 = v29[16];
    v17 = v29[15];
    v15 = v29[19];

    v4 = sub_225EF5354();
    (*(v15 + 16))(v3, v4, v16);
    sub_2260998E8();
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = v18;
    oslog = sub_226098C48();
    v26 = sub_22609A088();
    v21 = swift_allocObject();
    *(v21 + 16) = 32;
    v22 = swift_allocObject();
    *(v22 + 16) = 8;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_225EF7450;
    *(v20 + 24) = v19;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_225EF7B84;
    *(v23 + 24) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v24 = v5;

    *v24 = sub_225EF7434;
    v24[1] = v21;

    v24[2] = sub_225EF7434;
    v24[3] = v22;

    v24[4] = sub_225EF7B90;
    v24[5] = v23;
    sub_225EF5418();

    if (os_log_type_enabled(oslog, v26))
    {
      buf = sub_22609A188();
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v13 = sub_225EF5468(0, v11, v11);
      v14 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v33 = buf;
      v34 = v13;
      v35 = v14;
      sub_225EF54BC(2, &v33);
      sub_225EF54BC(1, &v33);
      v36 = sub_225EF7434;
      v37 = v21;
      sub_225EF73E8(&v36, &v33, &v34, &v35);
      v36 = sub_225EF7434;
      v37 = v22;
      sub_225EF73E8(&v36, &v33, &v34, &v35);
      v36 = sub_225EF7B90;
      v37 = v23;
      sub_225EF73E8(&v36, &v33, &v34, &v35);
      _os_log_impl(&dword_225EEB000, oslog, v26, "Correction data not found for interaction id %s", buf, 0xCu);
      sub_225EF7AF4(v13, 0, v11);
      sub_225EF7AF4(v14, 1, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    else
    {
    }

    v9 = v29[20];
    v10 = v29[18];
    v8 = v29[19];
    MEMORY[0x277D82BD8](oslog);
    (*(v8 + 8))(v9, v10);
  }

  v6 = *(v29[9] + 8);

  return v6();
}

uint64_t sub_225F3C5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[3] = a4;
  v5[4] = a5;
  return MEMORY[0x2822009F8](sub_225F3C5FC, a4, 0);
}

uint64_t sub_225F3C5FC()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = v0;
  sub_225F34670(v1);
  v2 = *(*(v0 + 16) + 8);

  return v2();
}

uint64_t sub_225F3C690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = v3;
  v4[16] = a3;
  v4[15] = a2;
  v4[14] = a1;
  v4[9] = v4;
  v4[10] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[11] = 0;
  v4[13] = 0;
  v5 = sub_226098C58();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v4[10] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[11] = v9;

  return MEMORY[0x2822009F8](sub_225F3C7E0, v9, 0);
}

uint64_t sub_225F3C7E0()
{
  v34 = v0;
  v27 = v0[16];
  v26 = v0[15];
  v0[9] = v0;
  sub_2260998E8();
  swift_beginAccess();
  sub_2260998E8();
  swift_endAccess();
  v0[7] = v26;
  v0[8] = v27;
  type metadata accessor for CESAEvaluationRecord();
  sub_226099938();
  sub_225EFE6BC((v0 + 7));
  v28 = v0[12];
  v0[21] = v28;
  if (v28)
  {
    v25[13] = v28;

    return MEMORY[0x2822009F8](sub_225F3CF3C, v28, 0);
  }

  else
  {
    v1 = v25[20];
    v14 = v25[18];
    v16 = v25[16];
    v15 = v25[15];
    v13 = v25[19];

    v2 = sub_225EF5354();
    (*(v13 + 16))(v1, v2, v14);
    sub_2260998E8();
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    v23 = sub_226098C48();
    v24 = sub_22609A088();
    v19 = swift_allocObject();
    *(v19 + 16) = 32;
    v20 = swift_allocObject();
    *(v20 + 16) = 8;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_225EF7450;
    *(v18 + 24) = v17;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_225EF7B84;
    *(v21 + 24) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v22 = v3;

    *v22 = sub_225EF7434;
    v22[1] = v19;

    v22[2] = sub_225EF7434;
    v22[3] = v20;

    v22[4] = sub_225EF7B90;
    v22[5] = v21;
    sub_225EF5418();

    if (os_log_type_enabled(v23, v24))
    {
      buf = sub_22609A188();
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v11 = sub_225EF5468(0, v9, v9);
      v12 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v29 = buf;
      v30 = v11;
      v31 = v12;
      sub_225EF54BC(2, &v29);
      sub_225EF54BC(1, &v29);
      v32 = sub_225EF7434;
      v33 = v19;
      sub_225EF73E8(&v32, &v29, &v30, &v31);
      v32 = sub_225EF7434;
      v33 = v20;
      sub_225EF73E8(&v32, &v29, &v30, &v31);
      v32 = sub_225EF7B90;
      v33 = v21;
      sub_225EF73E8(&v32, &v29, &v30, &v31);
      _os_log_impl(&dword_225EEB000, v23, v24, "Evaluation record not found for interaction id %s", buf, 0xCu);
      sub_225EF7AF4(v11, 0, v9);
      sub_225EF7AF4(v12, 1, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    else
    {
    }

    v7 = v25[20];
    v8 = v25[18];
    v6 = v25[19];
    MEMORY[0x277D82BD8](v23);
    (*(v6 + 8))(v7, v8);

    v4 = *(v25[9] + 8);

    return v4();
  }
}

uint64_t sub_225F3CF3C()
{
  v3 = v0[17];
  v1 = v0[14];
  v0[9] = v0;
  sub_225F32368(v1);

  return MEMORY[0x2822009F8](sub_225F3CFBC, v3, 0);
}

uint64_t sub_225F3CFBC()
{
  *(v0 + 72) = v0;

  v1 = *(*(v0 + 72) + 8);

  return v1();
}

uint64_t sub_225F3D074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[19] = v4;
  v5[18] = a4;
  v5[17] = a3;
  v5[16] = a2;
  v5[15] = a1;
  v5[11] = v5;
  v5[5] = 0;
  v5[6] = 0;
  v5[7] = 0;
  v5[8] = 0;
  v5[12] = 0;
  v5[14] = 0;
  v6 = sub_226098C58();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  v5[5] = a1;
  v5[6] = a2;
  v5[7] = a3;
  v5[8] = a4;
  v5[12] = v11;

  return MEMORY[0x2822009F8](sub_225F3D1D8, v11, 0);
}

uint64_t sub_225F3D1D8()
{
  v34 = v0;
  v27 = v0[18];
  v26 = v0[17];
  v0[11] = v0;
  sub_2260998E8();
  swift_beginAccess();
  sub_2260998E8();
  swift_endAccess();
  v0[9] = v26;
  v0[10] = v27;
  type metadata accessor for CESAEvaluationRecord();
  sub_226099938();
  sub_225EFE6BC((v0 + 9));
  v28 = v0[13];
  v0[23] = v28;
  if (v28)
  {
    v25[14] = v28;

    return MEMORY[0x2822009F8](sub_225F3D934, v28, 0);
  }

  else
  {
    v1 = v25[22];
    v14 = v25[20];
    v16 = v25[18];
    v15 = v25[17];
    v13 = v25[21];

    v2 = sub_225EF5354();
    (*(v13 + 16))(v1, v2, v14);
    sub_2260998E8();
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    v23 = sub_226098C48();
    v24 = sub_22609A088();
    v19 = swift_allocObject();
    *(v19 + 16) = 32;
    v20 = swift_allocObject();
    *(v20 + 16) = 8;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_225EF7450;
    *(v18 + 24) = v17;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_225EF7B84;
    *(v21 + 24) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v22 = v3;

    *v22 = sub_225EF7434;
    v22[1] = v19;

    v22[2] = sub_225EF7434;
    v22[3] = v20;

    v22[4] = sub_225EF7B90;
    v22[5] = v21;
    sub_225EF5418();

    if (os_log_type_enabled(v23, v24))
    {
      buf = sub_22609A188();
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v11 = sub_225EF5468(0, v9, v9);
      v12 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v29 = buf;
      v30 = v11;
      v31 = v12;
      sub_225EF54BC(2, &v29);
      sub_225EF54BC(1, &v29);
      v32 = sub_225EF7434;
      v33 = v19;
      sub_225EF73E8(&v32, &v29, &v30, &v31);
      v32 = sub_225EF7434;
      v33 = v20;
      sub_225EF73E8(&v32, &v29, &v30, &v31);
      v32 = sub_225EF7B90;
      v33 = v21;
      sub_225EF73E8(&v32, &v29, &v30, &v31);
      _os_log_impl(&dword_225EEB000, v23, v24, "Evaluation record not found for interaction id %s", buf, 0xCu);
      sub_225EF7AF4(v11, 0, v9);
      sub_225EF7AF4(v12, 1, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    else
    {
    }

    v7 = v25[22];
    v8 = v25[20];
    v6 = v25[21];
    MEMORY[0x277D82BD8](v23);
    (*(v6 + 8))(v7, v8);

    v4 = *(v25[11] + 8);

    return v4();
  }
}

uint64_t sub_225F3D934()
{
  v4 = v0[19];
  v1 = v0[16];
  v2 = v0[15];
  v0[11] = v0;
  sub_225F3242C(v2, v1);

  return MEMORY[0x2822009F8](sub_225F3D9B8, v4, 0);
}

uint64_t sub_225F3D9B8()
{
  *(v0 + 88) = v0;

  v1 = *(*(v0 + 88) + 8);

  return v1();
}

uint64_t sub_225F3DA70()
{
  sub_225EFE6E8((v0 + 112));
  swift_defaultActor_destroy();
  return v2;
}

uint64_t sub_225F3DB18()
{
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862F0, &qword_2260A0438);
  sub_22609A4F8();
  type metadata accessor for CESAEvaluationRecord();
  v1 = sub_2260998A8();
  result = v0;
  *(v0 + 112) = v1;
  return result;
}

unint64_t sub_225F3DBB0()
{
  v2 = qword_280D765B8;
  if (!qword_280D765B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7860E8, &qword_2260A02F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D765B8);
    return WitnessTable;
  }

  return v2;
}

id sub_225F3DC38(uint64_t a1, uint64_t a2)
{
  v4 = sub_2260999F8();
  v5 = [v3 initWithImplicitlyEngagedString_];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

id sub_225F3DC9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2260999F8();
  v5 = [v3 initWithExplicitlyRejectedString_];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

uint64_t sub_225F3DD00@<X0>(uint64_t a1@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "_Concurrency/arm64e-apple-ios.private.swiftinterface", 52, 2, 3820, 0);
    __break(1u);
  }

  v8 = *a5;
  v9 = a5[1];

  v10 = swift_allocObject();
  v10[2] = a6;
  v10[3] = v8;
  v10[4] = v9;
  result = swift_task_create();
  *a7 = result;
  return result;
}

uint64_t sub_225F3DEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v5, a1);
  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_225F3DF50@<X0>(uint64_t a1@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "_Concurrency/arm64e-apple-ios.private.swiftinterface", 52, 2, 4058, 0);
    __break(1u);
  }

  v8 = *a5;
  v9 = a5[1];

  v10 = swift_allocObject();
  v10[2] = a6;
  v10[3] = v8;
  v10[4] = v9;
  result = swift_task_create();
  *a7 = result;
  return result;
}

unint64_t sub_225F3E110()
{
  v2 = qword_280D765E0;
  if (!qword_280D765E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786CB0, &unk_2260A0300);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D765E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F3E1D4(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t **, uint64_t))
{
  v9 = a4(a1, a2, a3);
  v8 = *a1;
  MEMORY[0x277D82BE0](v9);
  sub_22609A1B8();
  if (v9)
  {
    MEMORY[0x277D82BD8](v9);
  }

  *a1 = v8 + 8;
  v5 = *a2;
  if (!*a2)
  {
    return MEMORY[0x277D82BD8](v9);
  }

  MEMORY[0x277D82BE0](v9);
  *v5 = v9;
  result = MEMORY[0x277D82BD8](v9);
  *a2 = v5 + 1;
  return result;
}

uint64_t sub_225F3E3A4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862D0, &qword_2260A0530);
  v1 = sub_225F3E40C();

  return sub_225F2C300(v5, v3, v4, v1);
}

unint64_t sub_225F3E40C()
{
  v2 = qword_27D7862D8;
  if (!qword_27D7862D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7862D0, &qword_2260A0530);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7862D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F3E494()
{
  v2 = qword_27D7862E0;
  if (!qword_27D7862E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7862E0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_225F3E4F8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225F38290(a1, v6, v7, v8, v9);
}

uint64_t sub_225F3E5DC()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t sub_225F3E72C()
{
  v2 = qword_280D769A8;
  if (!qword_280D769A8)
  {
    type metadata accessor for CESAPreviousEvaluationRecordStorage();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D769A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F3E7D4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225F3A57C(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_225F3E8C4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225F3C5B0(a1, v6, v7, v8, v9);
}

unint64_t sub_225F3E9A8()
{
  v2 = qword_280D76360;
  if (!qword_280D76360)
  {
    sub_22609A358();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76360);
    return WitnessTable;
  }

  return v2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t sub_225F3EB14()
{
  v1 = sub_226098C58();
  __swift_allocate_value_buffer(v1, qword_27D786308);
  __swift_project_value_buffer(v1, qword_27D786308);
  return sub_225F3EB60();
}

uint64_t sub_225F3EB60()
{
  AFLogInitIfNeeded();
  v1 = MEMORY[0x277CEF0E8];
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  if (!v2)
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CESRAsrReplayCounterfactualABManager.swift", 72, 2, 16, 0);
    __break(1u);
  }

  return sub_226098C68();
}

uint64_t sub_225F3EC5C()
{
  if (qword_27D785D68 != -1)
  {
    swift_once();
  }

  v0 = sub_226098C58();
  return __swift_project_value_buffer(v0, qword_27D786308);
}

uint64_t sub_225F3ECC8(uint64_t a1)
{
  v6[2] = 0;
  v6[3] = a1;
  v6[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786520, &unk_2260A0490);
  v1 = sub_225F3EFC8();
  v6[0] = sub_225F15970(sub_225F3EE10, 0, v4, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v1, MEMORY[0x277D84AC0], v5);
  sub_226099AA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  sub_225F3F050();
  v3 = sub_2260999C8();

  sub_225EFE6E8(v6);
  return v3;
}

uint64_t sub_225F3EE10@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = 0u;
  v12 = 0u;
  v8 = a1[1];
  v11 = *a1;
  v12 = v8;
  v10[0] = sub_22609A4E8();
  v10[1] = v2;
  v3 = sub_226099AA8();
  MEMORY[0x22AA735F0](v3);

  sub_22609A4C8();
  v4 = sub_226099AA8();
  MEMORY[0x22AA735F0](v4);

  sub_22609A4C8();
  v5 = sub_226099AA8();
  MEMORY[0x22AA735F0](v5);

  sub_2260998E8();
  sub_225EFE6BC(v10);
  result = sub_226099A88();
  *a2 = result;
  a2[1] = v7;
  return result;
}

unint64_t sub_225F3EFC8()
{
  v2 = qword_27D786320;
  if (!qword_27D786320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786520, &unk_2260A0490);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786320);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F3F050()
{
  v2 = qword_27D786440;
  if (!qword_27D786440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7869D0, &qword_2260A01B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786440);
    return WitnessTable;
  }

  return v2;
}

uint64_t static CESRAsrReplayCounterfactualABManager.runReplays(event:replayTypes:)(uint64_t a1, uint64_t a2)
{
  v3[133] = a2;
  v3[132] = a1;
  v3[116] = v3;
  v3[117] = 0;
  v3[118] = 0;
  v3[119] = 0;
  v3[62] = 0;
  v3[63] = 0;
  v3[64] = 0;
  v3[65] = 0;
  v3[120] = 0;
  v3[68] = 0;
  v3[69] = 0;
  v3[123] = 0;
  memset(v3 + 26, 0, 0x60uLL);
  v3[124] = 0;
  v3[125] = 0;
  v3[86] = 0;
  v3[87] = 0;
  v4 = sub_226098C58();
  v3[134] = v4;
  v3[135] = *(v4 - 8);
  v3[136] = swift_task_alloc();
  v3[137] = swift_task_alloc();
  v3[138] = swift_task_alloc();
  v3[117] = a1;
  v3[118] = a2;
  v3[119] = v2;

  return MEMORY[0x2822009F8](sub_225F3F278, 0, 0);
}

uint64_t sub_225F3F278()
{
  v175 = v0;
  v1 = *(v0 + 1056);
  *(v0 + 928) = v0;
  v165 = [v1 metadata];
  if (v165)
  {
    v163 = [v165 language];
    if (v163)
    {
      v159 = sub_226099A08();
      v160 = v2;
      MEMORY[0x277D82BD8](v163);
      v161 = v159;
      v162 = v160;
    }

    else
    {
      v161 = 0;
      v162 = 0;
    }

    MEMORY[0x277D82BD8](v165);
    v157 = v161;
    v158 = v162;
  }

  else
  {
    v157 = 0;
    v158 = 0;
  }

  *(v164 + 1120) = v158;
  *(v164 + 1112) = v157;
  if (!v158)
  {
    goto LABEL_94;
  }

  v3 = *(v164 + 1056);
  *(v164 + 496) = v157;
  *(v164 + 504) = v158;
  v4 = [v3 metadata];
  v156 = v4;
  if (v4)
  {
    v5 = [v4 task];
    v155 = v5;
    if (v5)
    {
      v151 = sub_226099A08();
      v152 = v6;
      MEMORY[0x277D82BD8](v155);
      v153 = v151;
      v154 = v152;
    }

    else
    {
      v153 = 0;
      v154 = 0;
    }

    MEMORY[0x277D82BD8](v156);
    v149 = v153;
    v150 = v154;
  }

  else
  {
    v149 = 0;
    v150 = 0;
  }

  *(v164 + 1136) = v150;
  *(v164 + 1128) = v149;
  if (!v150)
  {

LABEL_94:
    v36 = *(v164 + 1096);
    v48 = *(v164 + 1072);
    v49 = *(v164 + 1056);
    v47 = *(v164 + 1080);
    v37 = sub_225F3EC5C();
    (*(v47 + 16))(v36, v37, v48);
    MEMORY[0x277D82BE0](v49);
    v50 = swift_allocObject();
    *(v50 + 16) = v49;
    log = sub_226098C48();
    v57 = sub_22609A088();
    v52 = swift_allocObject();
    *(v52 + 16) = 32;
    v53 = swift_allocObject();
    *(v53 + 16) = 8;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_225F49848;
    *(v51 + 24) = v50;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_225EF7B84;
    *(v54 + 24) = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v55 = v38;

    *v55 = sub_225EF7434;
    v55[1] = v52;

    v55[2] = sub_225EF7434;
    v55[3] = v53;

    v55[4] = sub_225EF7B90;
    v55[5] = v54;
    sub_225EF5418();

    if (os_log_type_enabled(log, v57))
    {
      v44 = sub_22609A188();
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v45 = sub_225EF5468(0, v43, v43);
      v46 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v166 = v44;
      v167 = v45;
      v168 = v46;
      sub_225EF54BC(2, &v166);
      sub_225EF54BC(1, &v166);
      v169 = sub_225EF7434;
      v170 = v52;
      sub_225EF73E8(&v169, &v166, &v167, &v168);
      v169 = sub_225EF7434;
      v170 = v53;
      sub_225EF73E8(&v169, &v166, &v167, &v168);
      v169 = sub_225EF7B90;
      v170 = v54;
      sub_225EF73E8(&v169, &v166, &v167, &v168);
      _os_log_impl(&dword_225EEB000, log, v57, "Replay record for requestId %s is incomplete, skipping replay attempt", v44, 0xCu);
      sub_225EF7AF4(v45, 0, v43);
      sub_225EF7AF4(v46, 1, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    else
    {
    }

    v41 = *(v164 + 1096);
    v42 = *(v164 + 1072);
    v40 = *(v164 + 1080);
    MEMORY[0x277D82BD8](log);
    (*(v40 + 8))(v41, v42);
    goto LABEL_98;
  }

  v147 = *(v164 + 1056);
  *(v164 + 512) = v149;
  *(v164 + 520) = v150;
  v7 = sub_226098A78();
  *(v164 + 1144) = v7;
  *(v164 + 1152) = *(v7 - 8);
  v146 = swift_task_alloc();
  *(v164 + 1160) = v146;
  sub_226098A68();
  *(v164 + 1168) = type metadata accessor for CESASelfHelper();
  v8 = [v147 metadata];
  v148 = v8;
  if (v8 && (v145 = [v8 ids], MEMORY[0x277D82BD8](v148), v145))
  {
    v9 = [v145 asrId];
    v144 = v9;
    if (v9)
    {
      v140 = sub_226099A08();
      v141 = v10;
      MEMORY[0x277D82BD8](v144);
      v142 = v140;
      v143 = v141;
    }

    else
    {
      v142 = 0;
      v143 = 0;
    }

    MEMORY[0x277D82BD8](v145);
    v138 = v142;
    v139 = v143;
  }

  else
  {
    v138 = 0;
    v139 = 0;
  }

  *(v164 + 528) = v138;
  *(v164 + 536) = v139;
  if (*(v164 + 536))
  {
    v11 = *(v164 + 536);
    v171 = *(v164 + 528);
    v172 = v11;
  }

  else
  {
    v171 = sub_226099AA8();
    v172 = v12;
    if (*(v164 + 536))
    {
      sub_225EFE6BC(v164 + 528);
    }
  }

  v136 = *(v164 + 1064);
  sub_22603C3F4(v171, v172, v146);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786328, &unk_2260A05C0);
  sub_22609A4F8();
  *(v164 + 960) = sub_2260998A8();
  sub_2260998E8();
  *(v164 + 968) = v136;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786330, &qword_2260A04C0);
  sub_225F4C138();
  sub_22609A028();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786340, &qword_2260A04C8);
  sub_22609A388();
  v137 = *(v164 + 976);
  *(v164 + 1176) = v137;
  if (v137)
  {
    v13 = *(v164 + 1056);
    *(v164 + 984) = v137;
    v14 = [v13 audio];
    v135 = v14;
    if (v14)
    {
      v131 = sub_226098978();
      v132 = v15;
      MEMORY[0x277D82BD8](v135);
      v133 = v131;
      v134 = v132;
    }

    else
    {
      v133 = 0;
      v134 = 0xF000000000000000;
    }

    v124 = *(v164 + 1128);
    v122 = *(v164 + 1112);
    v123 = *(v164 + 1120);
    v125 = *(v164 + 1136);
    sub_2260998E8();
    sub_2260998E8();
    v126 = sub_225F49850();
    v16 = sub_225F4985C();
    CESRAsrReplayWorkerConfig.init(audio:language:taskHint:useBaseProfile:profileData:requestEntityStrings:)(v133, v134, v122, v123, v124, v125, v126 & 1, 0, (v164 + 112), 0xF000000000000000, v16);
    memcpy((v164 + 208), (v164 + 112), 0x60uLL);
    *(v164 + 592) = sub_226099AA8();
    *(v164 + 600) = v17;
    sub_226099938();
    sub_225EFE6BC(v164 + 592);
    v128 = *(v164 + 576);
    v129 = *(v164 + 584);
    sub_2260998E8();
    v127 = sub_226099AA8();
    v130 = v18;
    sub_2260998E8();
    *(v164 + 400) = v128;
    *(v164 + 408) = v129;
    *(v164 + 416) = v127;
    *(v164 + 424) = v130;
    if (*(v164 + 408))
    {
      sub_225F4C5E0((v164 + 400), (v164 + 880));
      if (*(v164 + 424))
      {
        *(v164 + 896) = *(v164 + 880);
        *(v164 + 912) = *(v164 + 416);
        v120 = MEMORY[0x22AA72BD0](*(v164 + 896), *(v164 + 904), *(v164 + 912), *(v164 + 920));
        sub_225EFE6BC(v164 + 912);
        sub_225EFE6BC(v164 + 896);
        sub_225EFE6BC(v164 + 400);
        v121 = v120;
        goto LABEL_42;
      }

      sub_225EFE6BC(v164 + 880);
    }

    else if (!*(v164 + 424))
    {
      sub_225EFE6BC(v164 + 400);
      v121 = 1;
LABEL_42:

      if (v121)
      {
        v119 = [*(v164 + 1056) profile];
        if (v119)
        {
          v115 = sub_226098978();
          v116 = v19;
          MEMORY[0x277D82BD8](v119);
          v117 = v115;
          v118 = v116;
        }

        else
        {
          v117 = 0;
          v118 = 0xF000000000000000;
        }

        v113 = v117;
        v114 = v118;
      }

      else
      {
        v113 = 0;
        v114 = 0xF000000000000000;
      }

      v20 = *(v164 + 280);
      v21 = *(v164 + 288);
      *(v164 + 280) = v113;
      *(v164 + 288) = v114;
      sub_225F4C1F8(v20, v21);
      *(v164 + 624) = sub_226099AA8();
      *(v164 + 632) = v22;
      sub_226099938();
      sub_225EFE6BC(v164 + 624);
      v110 = *(v164 + 608);
      v111 = *(v164 + 616);
      sub_2260998E8();
      v109 = sub_226099AA8();
      v112 = v23;
      sub_2260998E8();
      *(v164 + 432) = v110;
      *(v164 + 440) = v111;
      *(v164 + 448) = v109;
      *(v164 + 456) = v112;
      if (*(v164 + 440))
      {
        sub_225F4C5E0((v164 + 432), (v164 + 832));
        if (*(v164 + 456))
        {
          *(v164 + 848) = *(v164 + 832);
          *(v164 + 864) = *(v164 + 448);
          v107 = MEMORY[0x22AA72BD0](*(v164 + 848), *(v164 + 856), *(v164 + 864), *(v164 + 872));
          sub_225EFE6BC(v164 + 864);
          sub_225EFE6BC(v164 + 848);
          sub_225EFE6BC(v164 + 432);
          v108 = v107;
          goto LABEL_56;
        }

        sub_225EFE6BC(v164 + 832);
      }

      else if (!*(v164 + 456))
      {
        sub_225EFE6BC(v164 + 432);
        v108 = 1;
LABEL_56:

        if (v108)
        {
          v104 = [*(v164 + 1056) contextualEntities];
          v105 = sub_226099C88();
          MEMORY[0x277D82BD8](v104);
          v106 = v105;
        }

        else
        {
          v106 = sub_22609A4F8();
        }

        *(v164 + 296) = v106;

        *(v164 + 656) = sub_226099AA8();
        *(v164 + 664) = v24;
        sub_226099938();
        sub_225EFE6BC(v164 + 656);
        v101 = *(v164 + 640);
        v102 = *(v164 + 648);
        sub_2260998E8();
        v100 = sub_226099AA8();
        v103 = v25;
        sub_2260998E8();
        *(v164 + 464) = v101;
        *(v164 + 472) = v102;
        *(v164 + 480) = v100;
        *(v164 + 488) = v103;
        if (*(v164 + 472))
        {
          sub_225F4C5E0((v164 + 464), (v164 + 784));
          if (*(v164 + 488))
          {
            *(v164 + 800) = *(v164 + 784);
            *(v164 + 816) = *(v164 + 480);
            v98 = MEMORY[0x22AA72BD0](*(v164 + 800), *(v164 + 808), *(v164 + 816), *(v164 + 824));
            sub_225EFE6BC(v164 + 816);
            sub_225EFE6BC(v164 + 800);
            sub_225EFE6BC(v164 + 464);
            v99 = v98;
LABEL_67:
            v79 = *(v164 + 1104);
            v82 = *(v164 + 1072);
            v83 = *(v164 + 1056);
            v81 = *(v164 + 1080);

            *(v164 + 272) = v99 & 1;
            type metadata accessor for CESRAsrReplayWorker();
            memcpy((v164 + 16), (v164 + 208), 0x60uLL);
            sub_225F4C240(v164 + 16, v164 + 304);
            v80 = CESRAsrReplayWorker.__allocating_init(config:)((v164 + 16));
            *(v164 + 1184) = v80;
            *(v164 + 992) = v80;
            v26 = sub_225F3EC5C();
            v27 = *(v81 + 16);
            *(v164 + 1192) = v27;
            *(v164 + 1200) = (v81 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
            v27(v79, v26, v82);
            MEMORY[0x277D82BE0](v83);
            v85 = swift_allocObject();
            *(v85 + 16) = v83;
            sub_2260998E8();
            v84 = swift_allocObject();
            *(v84 + 16) = v137;

            v87 = swift_allocObject();
            *(v87 + 16) = sub_225F2CE08;
            *(v87 + 24) = v84;

            oslog = sub_226098C48();
            v97 = sub_22609A088();
            v89 = swift_allocObject();
            *(v89 + 16) = 32;
            v90 = swift_allocObject();
            *(v90 + 16) = 8;
            v86 = swift_allocObject();
            *(v86 + 16) = sub_225F49848;
            *(v86 + 24) = v85;
            v91 = swift_allocObject();
            *(v91 + 16) = sub_225EF7B84;
            *(v91 + 24) = v86;
            v92 = swift_allocObject();
            *(v92 + 16) = 32;
            v93 = swift_allocObject();
            *(v93 + 16) = 8;
            v88 = swift_allocObject();
            *(v88 + 16) = sub_225F4C3B4;
            *(v88 + 24) = v87;
            v94 = swift_allocObject();
            *(v94 + 16) = sub_225EF7B84;
            *(v94 + 24) = v88;
            *(v164 + 1208) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
            sub_22609A4F8();
            v95 = v28;

            *v95 = sub_225EF7434;
            v95[1] = v89;

            v95[2] = sub_225EF7434;
            v95[3] = v90;

            v95[4] = sub_225EF7B90;
            v95[5] = v91;

            v95[6] = sub_225EF7434;
            v95[7] = v92;

            v95[8] = sub_225EF7434;
            v95[9] = v93;

            v95[10] = sub_225EF7B90;
            v95[11] = v94;
            sub_225EF5418();

            if (os_log_type_enabled(oslog, v97))
            {
              buf = sub_22609A188();
              v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
              v77 = sub_225EF5468(0, v75, v75);
              v78 = sub_225EF5468(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
              *(v164 + 1032) = buf;
              *(v164 + 1040) = v77;
              *(v164 + 1048) = v78;
              sub_225EF54BC(2, (v164 + 1032));
              sub_225EF54BC(2, (v164 + 1032));
              *(v164 + 768) = sub_225EF7434;
              *(v164 + 776) = v89;
              sub_225EF73E8((v164 + 768), v164 + 1032, v164 + 1040, v164 + 1048);
              *(v164 + 768) = sub_225EF7434;
              *(v164 + 776) = v90;
              sub_225EF73E8((v164 + 768), v164 + 1032, v164 + 1040, v164 + 1048);
              *(v164 + 768) = sub_225EF7B90;
              *(v164 + 776) = v91;
              sub_225EF73E8((v164 + 768), v164 + 1032, v164 + 1040, v164 + 1048);
              *(v164 + 768) = sub_225EF7434;
              *(v164 + 776) = v92;
              sub_225EF73E8((v164 + 768), v164 + 1032, v164 + 1040, v164 + 1048);
              *(v164 + 768) = sub_225EF7434;
              *(v164 + 776) = v93;
              sub_225EF73E8((v164 + 768), v164 + 1032, v164 + 1040, v164 + 1048);
              *(v164 + 768) = sub_225EF7B90;
              *(v164 + 776) = v94;
              sub_225EF73E8((v164 + 768), v164 + 1032, v164 + 1040, v164 + 1048);
              _os_log_impl(&dword_225EEB000, oslog, v97, "Attempting replay for requestId %s, replayType %s", buf, 0x16u);
              sub_225EF7AF4(v77, 0, v75);
              sub_225EF7AF4(v78, 2, MEMORY[0x277D84F70] + 8);
              sub_22609A168();
            }

            v73 = *(v164 + 1104);
            v74 = *(v164 + 1072);
            v72 = *(v164 + 1080);
            MEMORY[0x277D82BD8](oslog);
            v29 = *(v72 + 8);
            *(v164 + 1216) = v29;
            *(v164 + 1224) = (v72 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v29(v73, v74);
            v30 = swift_task_alloc();
            *(v164 + 1232) = v30;
            *v30 = *(v164 + 928);
            v30[1] = sub_225F41CD4;

            return CESRAsrReplayWorker.runTranscription()();
          }

          sub_225EFE6BC(v164 + 784);
        }

        else if (!*(v164 + 488))
        {
          sub_225EFE6BC(v164 + 464);
          v99 = 1;
          goto LABEL_67;
        }

        sub_225F4C1C0(v164 + 464);
        v99 = 0;
        goto LABEL_67;
      }

      sub_225F4C1C0(v164 + 432);
      v108 = 0;
      goto LABEL_56;
    }

    sub_225F4C1C0(v164 + 400);
    v121 = 0;
    goto LABEL_42;
  }

  v70 = *(v164 + 1056);
  sub_225EFE6E8((v164 + 544));
  v71 = [v70 metadata];
  if (v71 && (v69 = [v71 ids], MEMORY[0x277D82BD8](v71), v69))
  {
    v32 = [v69 asrId];
    v68 = v32;
    if (v32)
    {
      v64 = sub_226099A08();
      v65 = v33;
      MEMORY[0x277D82BD8](v68);
      v66 = v64;
      v67 = v65;
    }

    else
    {
      v66 = 0;
      v67 = 0;
    }

    MEMORY[0x277D82BD8](v69);
    v62 = v66;
    v63 = v67;
  }

  else
  {
    v62 = 0;
    v63 = 0;
  }

  *(v164 + 560) = v62;
  *(v164 + 568) = v63;
  if (*(v164 + 568))
  {
    v34 = *(v164 + 568);
    v173 = *(v164 + 560);
    v174 = v34;
  }

  else
  {
    v173 = sub_226099AA8();
    v174 = v35;
    if (*(v164 + 568))
    {
      sub_225EFE6BC(v164 + 560);
    }
  }

  v61 = *(v164 + 1160);
  v60 = *(v164 + 1144);
  v59 = *(v164 + 1152);
  v58 = *(v164 + 960);
  sub_2260998E8();
  sub_22603C688(v173, v174, v61, v58);

  sub_225EFE6E8((v164 + 960));
  (*(v59 + 8))(v61, v60);

LABEL_98:

  v39 = *(*(v164 + 928) + 8);

  return v39();
}

uint64_t sub_225F41CD4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[116] = *v3;
  v6[155] = v2;
  v6[156] = a1;
  v6[157] = a2;

  if (v2)
  {
    v4 = sub_225F443D0;
  }

  else
  {
    v4 = sub_225F41E4C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225F41E4C()
{
  v31 = v0[157];
  v30 = v0[156];
  v28 = v0[147];
  v33 = v0[132];
  v0[116] = v0;
  v0[86] = v30;
  v0[87] = v31;
  type metadata accessor for CESRAsrReplayCounterfactualABManager();
  v29 = sub_225F3ECC8(v28);
  v32 = v1;
  sub_2260998E8();
  v0[88] = v30;
  v0[89] = v31;
  v0[90] = v29;
  v0[91] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786520, &unk_2260A0490);
  sub_226099948();
  v34 = [v33 postITNTranscript];
  if (v34)
  {
    v23 = sub_226099A08();
    v24 = v2;
    MEMORY[0x277D82BD8](v34);
    v25 = v23;
    v26 = v24;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v27[158] = v26;
  v21 = v27[132];
  sub_225F4C57C();
  v22 = [v21 metadata];
  if (v22 && (v20 = [v22 ids], MEMORY[0x277D82BD8](v22), v20))
  {
    v3 = [v20 requestId];
    v19 = v3;
    if (v3)
    {
      v15 = sub_226099A08();
      v16 = v4;
      MEMORY[0x277D82BD8](v19);
      v17 = v15;
      v18 = v16;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    MEMORY[0x277D82BD8](v20);
    v13 = v17;
    v14 = v18;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v27[94] = v13;
  v27[95] = v14;
  if (v27[95])
  {
    v5 = v27[95];
    v27[92] = v27[94];
    v27[93] = v5;
  }

  else
  {
    v27[92] = sub_226099AA8();
    v27[93] = v6;
    if (v27[95])
    {
      sub_225EFE6BC((v27 + 94));
    }
  }

  v11 = v27[147];
  v12 = sub_225F49880(v27[92], v27[93]);
  v27[159] = v12;
  v7 = swift_task_alloc();
  v27[160] = v7;
  *v7 = v27[116];
  v7[1] = sub_225F424AC;
  v8 = v27[157];
  v9 = v27[156];

  return sub_225F498C8(v9, v8, v25, v26, v12, v11);
}

uint64_t sub_225F424AC()
{
  v5 = *v1;
  v4 = *v1 + 16;
  *(v5 + 928) = *v1;
  *(v5 + 1288) = v0;

  if (v0)
  {
    v2 = sub_225F46D04;
  }

  else
  {

    v2 = sub_225F4263C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225F4263C()
{
  v0[116] = v0;

  v102 = v0[161];

  sub_225F4C4A4(v0 + 26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786340, &qword_2260A04C8);
  sub_22609A388();
  v103 = v0[122];
  v0[147] = v103;
  if (!v103)
  {
    v35 = *(v101 + 1056);
    sub_225EFE6E8((v101 + 544));
    v36 = [v35 metadata];
    if (v36 && (v34 = [v36 ids], MEMORY[0x277D82BD8](v36), v34))
    {
      v19 = [v34 asrId];
      v33 = v19;
      if (v19)
      {
        v29 = sub_226099A08();
        v30 = v20;
        MEMORY[0x277D82BD8](v33);
        v31 = v29;
        v32 = v30;
      }

      else
      {
        v31 = 0;
        v32 = 0;
      }

      MEMORY[0x277D82BD8](v34);
      v27 = v31;
      v28 = v32;
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    *(v101 + 560) = v27;
    *(v101 + 568) = v28;
    if (*(v101 + 568))
    {
      v104 = *(v101 + 560);
      v105 = *(v101 + 568);
    }

    else
    {
      v104 = sub_226099AA8();
      v105 = v21;
      if (*(v101 + 568))
      {
        sub_225EFE6BC(v101 + 560);
      }
    }

    v26 = *(v101 + 1160);
    v25 = *(v101 + 1144);
    v24 = *(v101 + 1152);
    v23 = *(v101 + 960);
    sub_2260998E8();
    sub_22603C688(v104, v105, v26, v23);

    sub_225EFE6E8((v101 + 960));
    (*(v24 + 8))(v26, v25);

    v22 = *(*(v101 + 928) + 8);

    return v22();
  }

  v1 = *(v101 + 1056);
  *(v101 + 984) = v103;
  v100 = [v1 audio];
  if (v100)
  {
    v96 = sub_226098978();
    v97 = v2;
    MEMORY[0x277D82BD8](v100);
    v98 = v96;
    v99 = v97;
  }

  else
  {
    v98 = 0;
    v99 = 0xF000000000000000;
  }

  v89 = *(v101 + 1128);
  v87 = *(v101 + 1112);
  v88 = *(v101 + 1120);
  v90 = *(v101 + 1136);
  sub_2260998E8();
  sub_2260998E8();
  v91 = sub_225F49850();
  v3 = sub_225F4985C();
  CESRAsrReplayWorkerConfig.init(audio:language:taskHint:useBaseProfile:profileData:requestEntityStrings:)(v98, v99, v87, v88, v89, v90, v91 & 1, 0, (v101 + 112), 0xF000000000000000, v3);
  memcpy((v101 + 208), (v101 + 112), 0x60uLL);
  *(v101 + 592) = sub_226099AA8();
  *(v101 + 600) = v4;
  sub_226099938();
  sub_225EFE6BC(v101 + 592);
  v93 = *(v101 + 576);
  v94 = *(v101 + 584);
  sub_2260998E8();
  v92 = sub_226099AA8();
  v95 = v5;
  sub_2260998E8();
  *(v101 + 400) = v93;
  *(v101 + 408) = v94;
  *(v101 + 416) = v92;
  *(v101 + 424) = v95;
  if (*(v101 + 408))
  {
    sub_225F4C5E0((v101 + 400), (v101 + 880));
    if (*(v101 + 424))
    {
      *(v101 + 896) = *(v101 + 880);
      *(v101 + 912) = *(v101 + 416);
      v85 = MEMORY[0x22AA72BD0](*(v101 + 896), *(v101 + 904), *(v101 + 912), *(v101 + 920));
      sub_225EFE6BC(v101 + 912);
      sub_225EFE6BC(v101 + 896);
      sub_225EFE6BC(v101 + 400);
      v86 = v85;
      goto LABEL_11;
    }

    sub_225EFE6BC(v101 + 880);
    goto LABEL_13;
  }

  if (*(v101 + 424))
  {
LABEL_13:
    sub_225F4C1C0(v101 + 400);
    v86 = 0;
    goto LABEL_11;
  }

  sub_225EFE6BC(v101 + 400);
  v86 = 1;
LABEL_11:

  if (v86)
  {
    v84 = [*(v101 + 1056) profile];
    if (v84)
    {
      v80 = sub_226098978();
      v81 = v6;
      MEMORY[0x277D82BD8](v84);
      v82 = v80;
      v83 = v81;
    }

    else
    {
      v82 = 0;
      v83 = 0xF000000000000000;
    }

    v78 = v82;
    v79 = v83;
  }

  else
  {
    v78 = 0;
    v79 = 0xF000000000000000;
  }

  v7 = *(v101 + 280);
  v8 = *(v101 + 288);
  *(v101 + 280) = v78;
  *(v101 + 288) = v79;
  sub_225F4C1F8(v7, v8);
  *(v101 + 624) = sub_226099AA8();
  *(v101 + 632) = v9;
  sub_226099938();
  sub_225EFE6BC(v101 + 624);
  v75 = *(v101 + 608);
  v76 = *(v101 + 616);
  sub_2260998E8();
  v74 = sub_226099AA8();
  v77 = v10;
  sub_2260998E8();
  *(v101 + 432) = v75;
  *(v101 + 440) = v76;
  *(v101 + 448) = v74;
  *(v101 + 456) = v77;
  if (*(v101 + 440))
  {
    sub_225F4C5E0((v101 + 432), (v101 + 832));
    if (*(v101 + 456))
    {
      *(v101 + 848) = *(v101 + 832);
      *(v101 + 864) = *(v101 + 448);
      v72 = MEMORY[0x22AA72BD0](*(v101 + 848), *(v101 + 856), *(v101 + 864), *(v101 + 872));
      sub_225EFE6BC(v101 + 864);
      sub_225EFE6BC(v101 + 848);
      sub_225EFE6BC(v101 + 432);
      v73 = v72;
      goto LABEL_25;
    }

    sub_225EFE6BC(v101 + 832);
    goto LABEL_27;
  }

  if (*(v101 + 456))
  {
LABEL_27:
    sub_225F4C1C0(v101 + 432);
    v73 = 0;
    goto LABEL_25;
  }

  sub_225EFE6BC(v101 + 432);
  v73 = 1;
LABEL_25:

  if (v73)
  {
    v69 = [*(v101 + 1056) contextualEntities];
    v70 = sub_226099C88();
    MEMORY[0x277D82BD8](v69);
    v71 = v70;
  }

  else
  {
    v71 = sub_22609A4F8();
  }

  *(v101 + 296) = v71;

  *(v101 + 656) = sub_226099AA8();
  *(v101 + 664) = v11;
  sub_226099938();
  sub_225EFE6BC(v101 + 656);
  v66 = *(v101 + 640);
  v67 = *(v101 + 648);
  sub_2260998E8();
  v65 = sub_226099AA8();
  v68 = v12;
  sub_2260998E8();
  *(v101 + 464) = v66;
  *(v101 + 472) = v67;
  *(v101 + 480) = v65;
  *(v101 + 488) = v68;
  if (!*(v101 + 472))
  {
    if (!*(v101 + 488))
    {
      sub_225EFE6BC(v101 + 464);
      v64 = 1;
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  sub_225F4C5E0((v101 + 464), (v101 + 784));
  if (!*(v101 + 488))
  {
    sub_225EFE6BC(v101 + 784);
LABEL_38:
    sub_225F4C1C0(v101 + 464);
    v64 = 0;
    goto LABEL_36;
  }

  *(v101 + 800) = *(v101 + 784);
  *(v101 + 816) = *(v101 + 480);
  v63 = MEMORY[0x22AA72BD0](*(v101 + 800), *(v101 + 808), *(v101 + 816), *(v101 + 824));
  sub_225EFE6BC(v101 + 816);
  sub_225EFE6BC(v101 + 800);
  sub_225EFE6BC(v101 + 464);
  v64 = v63;
LABEL_36:
  v44 = *(v101 + 1104);
  v47 = *(v101 + 1072);
  v48 = *(v101 + 1056);
  v46 = *(v101 + 1080);

  *(v101 + 272) = v64 & 1;
  type metadata accessor for CESRAsrReplayWorker();
  memcpy((v101 + 16), (v101 + 208), 0x60uLL);
  sub_225F4C240(v101 + 16, v101 + 304);
  v45 = CESRAsrReplayWorker.__allocating_init(config:)((v101 + 16));
  *(v101 + 1184) = v45;
  *(v101 + 992) = v45;
  v13 = sub_225F3EC5C();
  v14 = *(v46 + 16);
  *(v101 + 1192) = v14;
  *(v101 + 1200) = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v44, v13, v47);
  MEMORY[0x277D82BE0](v48);
  v50 = swift_allocObject();
  *(v50 + 16) = v48;
  sub_2260998E8();
  v49 = swift_allocObject();
  *(v49 + 16) = v103;

  v52 = swift_allocObject();
  *(v52 + 16) = sub_225F2CE08;
  *(v52 + 24) = v49;

  oslog = sub_226098C48();
  v62 = sub_22609A088();
  v54 = swift_allocObject();
  *(v54 + 16) = 32;
  v55 = swift_allocObject();
  *(v55 + 16) = 8;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_225F49848;
  *(v51 + 24) = v50;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_225EF7B84;
  *(v56 + 24) = v51;
  v57 = swift_allocObject();
  *(v57 + 16) = 32;
  v58 = swift_allocObject();
  *(v58 + 16) = 8;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_225F4C3B4;
  *(v53 + 24) = v52;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_225EF7B84;
  *(v59 + 24) = v53;
  *(v101 + 1208) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v60 = v15;

  *v60 = sub_225EF7434;
  v60[1] = v54;

  v60[2] = sub_225EF7434;
  v60[3] = v55;

  v60[4] = sub_225EF7B90;
  v60[5] = v56;

  v60[6] = sub_225EF7434;
  v60[7] = v57;

  v60[8] = sub_225EF7434;
  v60[9] = v58;

  v60[10] = sub_225EF7B90;
  v60[11] = v59;
  sub_225EF5418();

  if (os_log_type_enabled(oslog, v62))
  {
    buf = sub_22609A188();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v42 = sub_225EF5468(0, v40, v40);
    v43 = sub_225EF5468(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v101 + 1032) = buf;
    *(v101 + 1040) = v42;
    *(v101 + 1048) = v43;
    sub_225EF54BC(2, (v101 + 1032));
    sub_225EF54BC(2, (v101 + 1032));
    *(v101 + 768) = sub_225EF7434;
    *(v101 + 776) = v54;
    sub_225EF73E8((v101 + 768), v101 + 1032, v101 + 1040, v101 + 1048);
    if (v102)
    {
    }

    *(v101 + 768) = sub_225EF7434;
    *(v101 + 776) = v55;
    sub_225EF73E8((v101 + 768), v101 + 1032, v101 + 1040, v101 + 1048);
    *(v101 + 768) = sub_225EF7B90;
    *(v101 + 776) = v56;
    sub_225EF73E8((v101 + 768), v101 + 1032, v101 + 1040, v101 + 1048);
    *(v101 + 768) = sub_225EF7434;
    *(v101 + 776) = v57;
    sub_225EF73E8((v101 + 768), v101 + 1032, v101 + 1040, v101 + 1048);
    *(v101 + 768) = sub_225EF7434;
    *(v101 + 776) = v58;
    sub_225EF73E8((v101 + 768), v101 + 1032, v101 + 1040, v101 + 1048);
    *(v101 + 768) = sub_225EF7B90;
    *(v101 + 776) = v59;
    sub_225EF73E8((v101 + 768), v101 + 1032, v101 + 1040, v101 + 1048);
    _os_log_impl(&dword_225EEB000, oslog, v62, "Attempting replay for requestId %s, replayType %s", buf, 0x16u);
    sub_225EF7AF4(v42, 0, v40);
    sub_225EF7AF4(v43, 2, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v38 = *(v101 + 1104);
  v39 = *(v101 + 1072);
  v37 = *(v101 + 1080);
  MEMORY[0x277D82BD8](oslog);
  v17 = *(v37 + 8);
  *(v101 + 1216) = v17;
  *(v101 + 1224) = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v38, v39);
  v18 = swift_task_alloc();
  *(v101 + 1232) = v18;
  *v18 = *(v101 + 928);
  v18[1] = sub_225F41CD4;

  return CESRAsrReplayWorker.runTranscription()();
}

uint64_t sub_225F443D0()
{
  v0[116] = v0;
  v118 = v0[155];
  v116 = v0[149];
  v1 = v0[136];
  v115 = v0[134];
  v117 = v0[132];
  v2 = v118;
  v0[125] = v118;
  v3 = sub_225F3EC5C();
  v116(v1, v3, v115);
  MEMORY[0x277D82BE0](v117);
  v119 = swift_allocObject();
  *(v119 + 16) = v117;
  v4 = v118;
  v121 = swift_allocObject();
  *(v121 + 16) = v118;
  sub_225F3EAE8();

  v131 = sub_226098C48();
  v132 = sub_22609A088();
  v124 = swift_allocObject();
  *(v124 + 16) = 32;
  v125 = swift_allocObject();
  *(v125 + 16) = 8;
  v120 = swift_allocObject();
  *(v120 + 16) = sub_225F49848;
  *(v120 + 24) = v119;
  v126 = swift_allocObject();
  *(v126 + 16) = sub_225EF7B84;
  *(v126 + 24) = v120;
  v127 = swift_allocObject();
  *(v127 + 16) = 64;
  v128 = swift_allocObject();
  *(v128 + 16) = 8;
  v122 = swift_allocObject();
  *(v122 + 16) = sub_225F3EA68;
  *(v122 + 24) = v121;
  v123 = swift_allocObject();
  *(v123 + 16) = sub_225F3EA70;
  *(v123 + 24) = v122;
  v129 = swift_allocObject();
  *(v129 + 16) = sub_225F3E1C8;
  *(v129 + 24) = v123;
  sub_22609A4F8();
  v130 = v5;

  *v130 = sub_225EF7434;
  v130[1] = v124;

  v130[2] = sub_225EF7434;
  v130[3] = v125;

  v130[4] = sub_225EF7B90;
  v130[5] = v126;

  v130[6] = sub_225EF7434;
  v130[7] = v127;

  v130[8] = sub_225EF7434;
  v130[9] = v128;

  v130[10] = sub_225F3E358;
  v130[11] = v129;
  sub_225EF5418();

  if (os_log_type_enabled(v131, v132))
  {
    v32 = sub_22609A188();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v33 = sub_225EF5468(1, v31, v31);
    v34 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v114 + 1008) = v32;
    *(v114 + 1016) = v33;
    *(v114 + 1024) = v34;
    sub_225EF54BC(2, (v114 + 1008));
    sub_225EF54BC(2, (v114 + 1008));
    *(v114 + 672) = sub_225EF7434;
    *(v114 + 680) = v124;
    sub_225EF73E8((v114 + 672), v114 + 1008, v114 + 1016, v114 + 1024);
    *(v114 + 672) = sub_225EF7434;
    *(v114 + 680) = v125;
    sub_225EF73E8((v114 + 672), v114 + 1008, v114 + 1016, v114 + 1024);
    *(v114 + 672) = sub_225EF7B90;
    *(v114 + 680) = v126;
    sub_225EF73E8((v114 + 672), v114 + 1008, v114 + 1016, v114 + 1024);
    *(v114 + 672) = sub_225EF7434;
    *(v114 + 680) = v127;
    sub_225EF73E8((v114 + 672), v114 + 1008, v114 + 1016, v114 + 1024);
    *(v114 + 672) = sub_225EF7434;
    *(v114 + 680) = v128;
    sub_225EF73E8((v114 + 672), v114 + 1008, v114 + 1016, v114 + 1024);
    *(v114 + 672) = sub_225F3E358;
    *(v114 + 680) = v129;
    sub_225EF73E8((v114 + 672), v114 + 1008, v114 + 1016, v114 + 1024);
    _os_log_impl(&dword_225EEB000, v131, v132, "Replay for requestId %s failed with error %@", v32, 0x16u);
    sub_225EF7AF4(v33, 1, v31);
    sub_225EF7AF4(v34, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  v30 = *(v114 + 1216);
  v28 = *(v114 + 1088);
  v29 = *(v114 + 1072);
  MEMORY[0x277D82BD8](v131);
  v30(v28, v29);

  sub_225F4C4A4((v114 + 208));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786340, &qword_2260A04C8);
  sub_22609A388();
  v112 = *(v114 + 976);
  *(v114 + 1176) = v112;
  if (v112)
  {
    v6 = *(v114 + 1056);
    *(v114 + 984) = v112;
    v113 = [v6 audio];
    if (v113)
    {
      v108 = sub_226098978();
      v109 = v7;
      MEMORY[0x277D82BD8](v113);
      v110 = v108;
      v111 = v109;
    }

    else
    {
      v110 = 0;
      v111 = 0xF000000000000000;
    }

    v101 = *(v114 + 1128);
    v99 = *(v114 + 1112);
    v100 = *(v114 + 1120);
    v102 = *(v114 + 1136);
    sub_2260998E8();
    sub_2260998E8();
    v103 = sub_225F49850();
    v8 = sub_225F4985C();
    CESRAsrReplayWorkerConfig.init(audio:language:taskHint:useBaseProfile:profileData:requestEntityStrings:)(v110, v111, v99, v100, v101, v102, v103 & 1, 0, (v114 + 112), 0xF000000000000000, v8);
    memcpy((v114 + 208), (v114 + 112), 0x60uLL);
    *(v114 + 592) = sub_226099AA8();
    *(v114 + 600) = v9;
    sub_226099938();
    sub_225EFE6BC(v114 + 592);
    v105 = *(v114 + 576);
    v106 = *(v114 + 584);
    sub_2260998E8();
    v104 = sub_226099AA8();
    v107 = v10;
    sub_2260998E8();
    *(v114 + 400) = v105;
    *(v114 + 408) = v106;
    *(v114 + 416) = v104;
    *(v114 + 424) = v107;
    if (*(v114 + 408))
    {
      sub_225F4C5E0((v114 + 400), (v114 + 880));
      if (*(v114 + 424))
      {
        *(v114 + 896) = *(v114 + 880);
        *(v114 + 912) = *(v114 + 416);
        v97 = MEMORY[0x22AA72BD0](*(v114 + 896), *(v114 + 904), *(v114 + 912), *(v114 + 920));
        sub_225EFE6BC(v114 + 912);
        sub_225EFE6BC(v114 + 896);
        sub_225EFE6BC(v114 + 400);
        v98 = v97;
        goto LABEL_12;
      }

      sub_225EFE6BC(v114 + 880);
    }

    else if (!*(v114 + 424))
    {
      sub_225EFE6BC(v114 + 400);
      v98 = 1;
LABEL_12:

      if (v98)
      {
        v96 = [*(v114 + 1056) profile];
        if (v96)
        {
          v92 = sub_226098978();
          v93 = v11;
          MEMORY[0x277D82BD8](v96);
          v94 = v92;
          v95 = v93;
        }

        else
        {
          v94 = 0;
          v95 = 0xF000000000000000;
        }

        v90 = v94;
        v91 = v95;
      }

      else
      {
        v90 = 0;
        v91 = 0xF000000000000000;
      }

      v12 = *(v114 + 280);
      v13 = *(v114 + 288);
      *(v114 + 280) = v90;
      *(v114 + 288) = v91;
      sub_225F4C1F8(v12, v13);
      *(v114 + 624) = sub_226099AA8();
      *(v114 + 632) = v14;
      sub_226099938();
      sub_225EFE6BC(v114 + 624);
      v87 = *(v114 + 608);
      v88 = *(v114 + 616);
      sub_2260998E8();
      v86 = sub_226099AA8();
      v89 = v15;
      sub_2260998E8();
      *(v114 + 432) = v87;
      *(v114 + 440) = v88;
      *(v114 + 448) = v86;
      *(v114 + 456) = v89;
      if (*(v114 + 440))
      {
        sub_225F4C5E0((v114 + 432), (v114 + 832));
        if (*(v114 + 456))
        {
          *(v114 + 848) = *(v114 + 832);
          *(v114 + 864) = *(v114 + 448);
          v84 = MEMORY[0x22AA72BD0](*(v114 + 848), *(v114 + 856), *(v114 + 864), *(v114 + 872));
          sub_225EFE6BC(v114 + 864);
          sub_225EFE6BC(v114 + 848);
          sub_225EFE6BC(v114 + 432);
          v85 = v84;
          goto LABEL_26;
        }

        sub_225EFE6BC(v114 + 832);
      }

      else if (!*(v114 + 456))
      {
        sub_225EFE6BC(v114 + 432);
        v85 = 1;
LABEL_26:

        if (v85)
        {
          v81 = [*(v114 + 1056) contextualEntities];
          v82 = sub_226099C88();
          MEMORY[0x277D82BD8](v81);
          v83 = v82;
        }

        else
        {
          v83 = sub_22609A4F8();
        }

        *(v114 + 296) = v83;

        *(v114 + 656) = sub_226099AA8();
        *(v114 + 664) = v16;
        sub_226099938();
        sub_225EFE6BC(v114 + 656);
        v78 = *(v114 + 640);
        v79 = *(v114 + 648);
        sub_2260998E8();
        v77 = sub_226099AA8();
        v80 = v17;
        sub_2260998E8();
        *(v114 + 464) = v78;
        *(v114 + 472) = v79;
        *(v114 + 480) = v77;
        *(v114 + 488) = v80;
        if (*(v114 + 472))
        {
          sub_225F4C5E0((v114 + 464), (v114 + 784));
          if (*(v114 + 488))
          {
            *(v114 + 800) = *(v114 + 784);
            *(v114 + 816) = *(v114 + 480);
            v75 = MEMORY[0x22AA72BD0](*(v114 + 800), *(v114 + 808), *(v114 + 816), *(v114 + 824));
            sub_225EFE6BC(v114 + 816);
            sub_225EFE6BC(v114 + 800);
            sub_225EFE6BC(v114 + 464);
            v76 = v75;
LABEL_37:
            v56 = *(v114 + 1104);
            v59 = *(v114 + 1072);
            v60 = *(v114 + 1056);
            v58 = *(v114 + 1080);

            *(v114 + 272) = v76 & 1;
            type metadata accessor for CESRAsrReplayWorker();
            memcpy((v114 + 16), (v114 + 208), 0x60uLL);
            sub_225F4C240(v114 + 16, v114 + 304);
            v57 = CESRAsrReplayWorker.__allocating_init(config:)((v114 + 16));
            *(v114 + 1184) = v57;
            *(v114 + 992) = v57;
            v18 = sub_225F3EC5C();
            v19 = *(v58 + 16);
            *(v114 + 1192) = v19;
            *(v114 + 1200) = (v58 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
            v19(v56, v18, v59);
            MEMORY[0x277D82BE0](v60);
            v62 = swift_allocObject();
            *(v62 + 16) = v60;
            sub_2260998E8();
            v61 = swift_allocObject();
            *(v61 + 16) = v112;

            v64 = swift_allocObject();
            *(v64 + 16) = sub_225F2CE08;
            *(v64 + 24) = v61;

            oslog = sub_226098C48();
            v74 = sub_22609A088();
            v66 = swift_allocObject();
            *(v66 + 16) = 32;
            v67 = swift_allocObject();
            *(v67 + 16) = 8;
            v63 = swift_allocObject();
            *(v63 + 16) = sub_225F49848;
            *(v63 + 24) = v62;
            v68 = swift_allocObject();
            *(v68 + 16) = sub_225EF7B84;
            *(v68 + 24) = v63;
            v69 = swift_allocObject();
            *(v69 + 16) = 32;
            v70 = swift_allocObject();
            *(v70 + 16) = 8;
            v65 = swift_allocObject();
            *(v65 + 16) = sub_225F4C3B4;
            *(v65 + 24) = v64;
            v71 = swift_allocObject();
            *(v71 + 16) = sub_225EF7B84;
            *(v71 + 24) = v65;
            *(v114 + 1208) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
            sub_22609A4F8();
            v72 = v20;

            *v72 = sub_225EF7434;
            v72[1] = v66;

            v72[2] = sub_225EF7434;
            v72[3] = v67;

            v72[4] = sub_225EF7B90;
            v72[5] = v68;

            v72[6] = sub_225EF7434;
            v72[7] = v69;

            v72[8] = sub_225EF7434;
            v72[9] = v70;

            v72[10] = sub_225EF7B90;
            v72[11] = v71;
            sub_225EF5418();

            if (os_log_type_enabled(oslog, v74))
            {
              buf = sub_22609A188();
              v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
              v54 = sub_225EF5468(0, v52, v52);
              v55 = sub_225EF5468(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
              *(v114 + 1032) = buf;
              *(v114 + 1040) = v54;
              *(v114 + 1048) = v55;
              sub_225EF54BC(2, (v114 + 1032));
              sub_225EF54BC(2, (v114 + 1032));
              *(v114 + 768) = sub_225EF7434;
              *(v114 + 776) = v66;
              sub_225EF73E8((v114 + 768), v114 + 1032, v114 + 1040, v114 + 1048);
              *(v114 + 768) = sub_225EF7434;
              *(v114 + 776) = v67;
              sub_225EF73E8((v114 + 768), v114 + 1032, v114 + 1040, v114 + 1048);
              *(v114 + 768) = sub_225EF7B90;
              *(v114 + 776) = v68;
              sub_225EF73E8((v114 + 768), v114 + 1032, v114 + 1040, v114 + 1048);
              *(v114 + 768) = sub_225EF7434;
              *(v114 + 776) = v69;
              sub_225EF73E8((v114 + 768), v114 + 1032, v114 + 1040, v114 + 1048);
              *(v114 + 768) = sub_225EF7434;
              *(v114 + 776) = v70;
              sub_225EF73E8((v114 + 768), v114 + 1032, v114 + 1040, v114 + 1048);
              *(v114 + 768) = sub_225EF7B90;
              *(v114 + 776) = v71;
              sub_225EF73E8((v114 + 768), v114 + 1032, v114 + 1040, v114 + 1048);
              _os_log_impl(&dword_225EEB000, oslog, v74, "Attempting replay for requestId %s, replayType %s", buf, 0x16u);
              sub_225EF7AF4(v54, 0, v52);
              sub_225EF7AF4(v55, 2, MEMORY[0x277D84F70] + 8);
              sub_22609A168();
            }

            v50 = *(v114 + 1104);
            v51 = *(v114 + 1072);
            v49 = *(v114 + 1080);
            MEMORY[0x277D82BD8](oslog);
            v21 = *(v49 + 8);
            *(v114 + 1216) = v21;
            *(v114 + 1224) = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v21(v50, v51);
            v22 = swift_task_alloc();
            *(v114 + 1232) = v22;
            *v22 = *(v114 + 928);
            v22[1] = sub_225F41CD4;

            return CESRAsrReplayWorker.runTranscription()();
          }

          sub_225EFE6BC(v114 + 784);
        }

        else if (!*(v114 + 488))
        {
          sub_225EFE6BC(v114 + 464);
          v76 = 1;
          goto LABEL_37;
        }

        sub_225F4C1C0(v114 + 464);
        v76 = 0;
        goto LABEL_37;
      }

      sub_225F4C1C0(v114 + 432);
      v85 = 0;
      goto LABEL_26;
    }

    sub_225F4C1C0(v114 + 400);
    v98 = 0;
    goto LABEL_12;
  }

  v47 = *(v114 + 1056);
  sub_225EFE6E8((v114 + 544));
  v48 = [v47 metadata];
  if (v48 && (v46 = [v48 ids], MEMORY[0x277D82BD8](v48), v46))
  {
    v24 = [v46 asrId];
    v45 = v24;
    if (v24)
    {
      v41 = sub_226099A08();
      v42 = v25;
      MEMORY[0x277D82BD8](v45);
      v43 = v41;
      v44 = v42;
    }

    else
    {
      v43 = 0;
      v44 = 0;
    }

    MEMORY[0x277D82BD8](v46);
    v39 = v43;
    v40 = v44;
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  *(v114 + 560) = v39;
  *(v114 + 568) = v40;
  if (*(v114 + 568))
  {
    v133 = *(v114 + 560);
    v134 = *(v114 + 568);
  }

  else
  {
    v133 = sub_226099AA8();
    v134 = v26;
    if (*(v114 + 568))
    {
      sub_225EFE6BC(v114 + 560);
    }
  }

  v38 = *(v114 + 1160);
  v37 = *(v114 + 1144);
  v36 = *(v114 + 1152);
  v35 = *(v114 + 960);
  sub_2260998E8();
  sub_22603C688(v133, v134, v38, v35);

  sub_225EFE6E8((v114 + 960));
  (*(v36 + 8))(v38, v37);

  v27 = *(*(v114 + 928) + 8);

  return v27();
}