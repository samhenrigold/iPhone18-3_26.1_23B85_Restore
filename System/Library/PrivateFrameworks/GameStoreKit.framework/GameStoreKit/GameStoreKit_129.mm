unint64_t sub_24F31B614()
{
  result = qword_27F23ED78;
  if (!qword_27F23ED78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ED78);
  }

  return result;
}

unint64_t sub_24F31B668()
{
  result = qword_27F22D320;
  if (!qword_27F22D320)
  {
    sub_24F91F008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D320);
  }

  return result;
}

unint64_t sub_24F31B6E8()
{
  result = qword_27F23ED80;
  if (!qword_27F23ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ED80);
  }

  return result;
}

unint64_t sub_24F31B740()
{
  result = qword_27F23ED88;
  if (!qword_27F23ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ED88);
  }

  return result;
}

unint64_t sub_24F31B798()
{
  result = qword_27F23ED90;
  if (!qword_27F23ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ED90);
  }

  return result;
}

unint64_t sub_24F31B7F0()
{
  result = qword_27F23ED98;
  if (!qword_27F23ED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ED98);
  }

  return result;
}

unint64_t sub_24F31B844()
{
  result = qword_27F23EDA0;
  if (!qword_27F23EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EDA0);
  }

  return result;
}

unint64_t sub_24F31B898()
{
  result = qword_27F23EDA8;
  if (!qword_27F23EDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EDA8);
  }

  return result;
}

unint64_t sub_24F31B8EC()
{
  result = qword_27F23EDB0;
  if (!qword_27F23EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EDB0);
  }

  return result;
}

unint64_t sub_24F31B950()
{
  result = qword_27F23EDB8;
  if (!qword_27F23EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EDB8);
  }

  return result;
}

BOOL sub_24F31B9B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223138, &unk_24F972860);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v6 = (&v23 - v5);
  MEMORY[0x28223BE20](v7);
  v9 = (&v23 - v8);
  sub_24F32961C(v0, &v23 - v8);
  v10 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v9, 1, v10) == 1)
  {
    sub_24E601704(v9, &qword_27F223138, &unk_24F972860);
  }

  else
  {
    v13 = *v9;
    v12 = v9[1];

    sub_24F327890(v9, type metadata accessor for HeaderPresentation.HeaderLabel);

    v14 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v14 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      return 1;
    }
  }

  v15 = type metadata accessor for HeaderPresentation(0);
  sub_24F32961C(v0 + *(v15 + 20), v6);
  if (v11(v6, 1, v10) != 1)
  {
    v17 = *v6;
    v16 = v6[1];

    sub_24F327890(v6, type metadata accessor for HeaderPresentation.HeaderLabel);

    v18 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v18 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (!v18)
    {
      goto LABEL_12;
    }

    return 1;
  }

  sub_24E601704(v6, &qword_27F223138, &unk_24F972860);
LABEL_12:
  sub_24F32961C(v0 + *(v15 + 24), v3);
  if (v11(v3, 1, v10) == 1)
  {
    sub_24E601704(v3, &qword_27F223138, &unk_24F972860);
    return 0;
  }

  else
  {
    v21 = *v3;
    v20 = v3[1];

    sub_24F327890(v3, type metadata accessor for HeaderPresentation.HeaderLabel);

    v22 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v22 = v21 & 0xFFFFFFFFFFFFLL;
    }

    return v22 != 0;
  }
}

void sub_24F31BC74(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F1A8, &qword_24F9E4500);
  v80 = *(v2 - 8);
  v81 = v2;
  MEMORY[0x28223BE20](v2);
  v79 = &v69 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F1B0, &qword_24F9E4508);
  v83 = *(v4 - 8);
  v84 = v4;
  MEMORY[0x28223BE20](v4);
  v82 = &v69 - v5;
  v88 = sub_24F9289E8();
  v85 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F1B8, &qword_24F9E4510);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v69 - v7;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F1C0, &qword_24F9E4518);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v9 = &v69 - v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F1C8, &qword_24F9E4520);
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v69 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v11 - 8);
  v86 = &v69 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F1D0, &qword_24F9E4528);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v14 = &v69 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C728, &unk_24F956450);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v69 - v16;
  v18 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F1D8, &qword_24F9E4530);
  v22 = *(v21 - 8);
  v90 = v21;
  v91 = v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v69 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F327C64();
  v93 = v24;
  sub_24F92D128();
  sub_24F32757C(v92, v20, type metadata accessor for HeaderPresentation.HeaderIconType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v52 = *v20;
      LOBYTE(v94) = 3;
      sub_24F327DB4();
      v53 = v73;
      v54 = v90;
      v55 = v93;
      sub_24F92CC98();
      v94 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218590, &qword_24F9D7B90);
      sub_24F327F58();
      v56 = v75;
      sub_24F92CD48();
      (*(v74 + 8))(v53, v56);
      (*(v91 + 8))(v55, v54);
    }

    else
    {
      v37 = v93;
      if (EnumCaseMultiPayload == 4)
      {
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223148, &unk_24F9E44F0);
        v39 = &v20[*(v38 + 48)];
        v92 = *v39;
        LODWORD(v86) = v39[8];
        LODWORD(v81) = v20[*(v38 + 64)];
        v40 = v85;
        v41 = v87;
        v42 = v88;
        (*(v85 + 32))(v87, v20, v88);
        LOBYTE(v94) = 4;
        sub_24F327D0C();
        v43 = v82;
        v44 = v90;
        sub_24F92CC98();
        LOBYTE(v94) = 0;
        sub_24F3241D0(&qword_27F214060, MEMORY[0x277D21C48], MEMORY[0x277D21C50]);
        v45 = v84;
        v46 = v89;
        sub_24F92CD48();
        if (v46)
        {
          (*(v83 + 8))(v43, v45);
          (*(v40 + 8))(v41, v42);
          (*(v91 + 8))(v37, v44);
        }

        else
        {
          v66 = v81;
          v94 = v92;
          LOBYTE(v95) = v86;
          v100 = 1;
          sub_24E620F7C();
          v67 = v43;
          sub_24F92CCF8();
          LOBYTE(v94) = v66;
          v100 = 2;
          sub_24F327F04();
          sub_24F92CD48();
          v68 = v87;
          (*(v83 + 8))(v67, v45);
          (*(v40 + 8))(v68, v42);
          (*(v91 + 8))(v93, v44);
        }
      }

      else
      {
        v60 = *(v20 + 2);
        v61 = v20[24];
        LOBYTE(v94) = 5;
        sub_24F327CB8();
        v62 = v79;
        v63 = v90;
        sub_24F92CC98();
        LOBYTE(v94) = 0;
        v64 = v81;
        v65 = v89;
        sub_24F92CD08();

        if (!v65)
        {
          v94 = v60;
          LOBYTE(v95) = v61;
          v100 = 1;
          sub_24E620F7C();
          sub_24F92CCF8();
        }

        (*(v80 + 8))(v62, v64);
        (*(v91 + 8))(v37, v63);
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v26 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48)];
      v27 = v26[1];
      v84 = *v26;
      v85 = v27;
      v28 = v26[3];
      v87 = v26[2];
      v92 = v28;
      v29 = v26[4];
      v30 = v26[5];
      v31 = v86;
      sub_24E6009C8(v20, v86, &qword_27F213FB0, &qword_24F93E6B0);
      LOBYTE(v94) = 1;
      sub_24F327E5C();
      v32 = v76;
      v33 = v90;
      v34 = v93;
      sub_24F92CC98();
      LOBYTE(v94) = 0;
      sub_24F3241D0(&qword_27F214060, MEMORY[0x277D21C48], MEMORY[0x277D21C50]);
      v35 = v78;
      v36 = v89;
      sub_24F92CCF8();
      if (v36)
      {
        sub_24E6E8664(v84, v85, v87, v92, v29, v30);
        (*(v77 + 8))(v32, v35);
        sub_24E601704(v31, &qword_27F213FB0, &qword_24F93E6B0);
        (*(v91 + 8))(v34, v33);
      }

      else
      {
        v94 = v84;
        v95 = v85;
        v96 = v87;
        v97 = v92;
        v98 = v29;
        v99 = v30;
        v100 = 1;
        sub_24E6E8610();
        sub_24F92CCF8();
        (*(v77 + 8))(v32, v35);
        sub_24E601704(v86, &qword_27F213FB0, &qword_24F93E6B0);
        (*(v91 + 8))(v93, v33);
        sub_24E6E8664(v84, v85, v87, v92, v29, v30);
      }
    }

    else
    {
      LOBYTE(v94) = 2;
      sub_24F327E08();
      v57 = v90;
      v58 = v93;
      sub_24F92CC98();
      v59 = v72;
      sub_24F92CD08();

      (*(v71 + 8))(v9, v59);
      (*(v91 + 8))(v58, v57);
    }
  }

  else
  {
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470);
    sub_24E6009C8(&v20[*(v47 + 48)], v17, &qword_27F21C728, &unk_24F956450);
    LOBYTE(v94) = 0;
    sub_24F327EB0();
    v48 = v90;
    v49 = v93;
    sub_24F92CC98();
    LOBYTE(v94) = 0;
    v50 = v70;
    v51 = v89;
    sub_24F92CD08();

    if (!v51)
    {
      LOBYTE(v94) = 1;
      type metadata accessor for JSColor(0);
      sub_24F3241D0(&qword_27F21C778, type metadata accessor for JSColor, &protocol conformance descriptor for JSColor);
      sub_24F92CCF8();
    }

    (*(v69 + 8))(v14, v50);
    sub_24E601704(v17, &qword_27F21C728, &unk_24F956450);
    (*(v91 + 8))(v49, v48);
  }
}

uint64_t sub_24F31CA74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F130, &qword_24F9E44B8);
  v101 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v113 = &v85 - v3;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F138, &qword_24F9E44C0);
  v103 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v112 = &v85 - v4;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F140, &qword_24F9E44C8);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v111 = &v85 - v5;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F148, &qword_24F9E44D0);
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v105 = &v85 - v6;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F150, &qword_24F9E44D8);
  v99 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v106 = &v85 - v7;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F158, &qword_24F9E44E0);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v109 = &v85 - v8;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F160, &qword_24F9E44E8);
  v114 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v10 = &v85 - v9;
  v108 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  MEMORY[0x28223BE20](v108);
  v91 = (&v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v104 = &v85 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v85 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = (&v85 - v18);
  MEMORY[0x28223BE20](v20);
  v22 = &v85 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = (&v85 - v24);
  MEMORY[0x28223BE20](v26);
  v28 = &v85 - v27;
  v29 = a1[3];
  v117 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_24F327C64();
  v115 = v10;
  v30 = v116;
  sub_24F92D108();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_1(v117);
  }

  v86 = v19;
  v87 = v16;
  v88 = v25;
  v89 = v22;
  v31 = v109;
  v33 = v111;
  v32 = v112;
  v34 = v113;
  v116 = 0;
  v90 = v28;
  v35 = v110;
  v36 = v115;
  v37 = sub_24F92CC78();
  v38 = (2 * *(v37 + 16)) | 1;
  v120 = v37;
  v121 = v37 + 32;
  v122 = 0;
  v123 = v38;
  v39 = sub_24E64343C();
  if (v39 == 6 || v122 != v123 >> 1)
  {
    v48 = sub_24F92C918();
    swift_allocError();
    v49 = v36;
    v51 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
    *v51 = v108;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v48 - 8) + 104))(v51, *MEMORY[0x277D84160], v48);
    swift_willThrow();
    v46 = *(v114 + 8);
    v47 = v49;
    v52 = v35;
LABEL_11:
    v46(v47, v52);
LABEL_12:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v117);
  }

  if (v39 <= 2u)
  {
    if (v39)
    {
      v40 = v107;
      v41 = v35;
      v42 = v116;
      if (v39 == 1)
      {
        LOBYTE(v118) = 1;
        sub_24F327E5C();
        v43 = v106;
        sub_24F92CBA8();
        if (!v42)
        {
          sub_24F9289E8();
          LOBYTE(v118) = 0;
          sub_24F3241D0(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
          v44 = v89;
          v45 = v96;
          sub_24F92CC18();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0);
          LOBYTE(v118) = 1;
          sub_24E6E8474();
          sub_24F92CC18();
          (*(v99 + 8))(v43, v45);
          (*(v114 + 8))(v36, v41);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v83 = v44;
LABEL_34:
          v82 = v90;
          sub_24F327AF4(v83, v90, type metadata accessor for HeaderPresentation.HeaderIconType);
          goto LABEL_35;
        }

        v46 = *(v114 + 8);
        v47 = v36;
        goto LABEL_24;
      }

      LOBYTE(v118) = 2;
      sub_24F327E08();
      v61 = v105;
      v57 = v36;
      sub_24F92CBA8();
      if (v42)
      {
LABEL_23:
        v46 = *(v114 + 8);
        v47 = v57;
LABEL_24:
        v52 = v41;
        goto LABEL_11;
      }

      v66 = v93;
      v77 = sub_24F92CC28();
      v79 = v78;
      (*(v92 + 8))(v61, v66);
      (*(v114 + 8))(v36, v41);
      swift_unknownObjectRelease();
      v74 = v86;
      *v86 = v77;
      v74[1] = v79;
    }

    else
    {
      LOBYTE(v118) = 0;
      sub_24F327EB0();
      v41 = v35;
      v57 = v36;
      v58 = v116;
      sub_24F92CBA8();
      v40 = v107;
      if (v58)
      {
        goto LABEL_23;
      }

      LOBYTE(v118) = 0;
      v59 = v95;
      v71 = sub_24F92CC28();
      v73 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470);
      v74 = v88;
      *v88 = v71;
      v74[1] = v73;
      type metadata accessor for JSColor(0);
      LOBYTE(v118) = 1;
      sub_24F3241D0(&qword_27F21C758, type metadata accessor for JSColor, &protocol conformance descriptor for JSColor);
      sub_24F92CC18();
      (*(v94 + 8))(v31, v59);
      (*(v114 + 8))(v115, v41);
      swift_unknownObjectRelease();
    }

    swift_storeEnumTagMultiPayload();
    v83 = v74;
    goto LABEL_34;
  }

  if (v39 == 3)
  {
    LOBYTE(v118) = 3;
    sub_24F327DB4();
    v60 = v116;
    sub_24F92CBA8();
    if (v60)
    {
      goto LABEL_17;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218590, &qword_24F9D7B90);
    sub_24E6DCCC8();
    v64 = v98;
    sub_24F92CC68();
    (*(v97 + 8))(v33, v64);
    (*(v114 + 8))(v36, v35);
    swift_unknownObjectRelease();
    v75 = v87;
    *v87 = v118;
    goto LABEL_32;
  }

  if (v39 != 4)
  {
    LOBYTE(v118) = 5;
    sub_24F327CB8();
    v62 = v116;
    sub_24F92CBA8();
    v63 = v114;
    if (v62)
    {
      (*(v114 + 8))(v36, v35);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v117);
    }

    LOBYTE(v118) = 0;
    v67 = v100;
    v68 = sub_24F92CC28();
    v70 = v69;
    v116 = v68;
    v124 = 1;
    sub_24E620E90();
    sub_24F92CC18();
    (*(v101 + 8))(v34, v67);
    (*(v63 + 8))(v36, v35);
    swift_unknownObjectRelease();
    v80 = v118;
    v81 = v119;
    v75 = v91;
    *v91 = v116;
    v75[1] = v70;
    v75[2] = v80;
    *(v75 + 24) = v81;
LABEL_32:
    swift_storeEnumTagMultiPayload();
    v84 = v75;
    goto LABEL_33;
  }

  LOBYTE(v118) = 4;
  sub_24F327D0C();
  v54 = v35;
  v55 = v116;
  sub_24F92CBA8();
  v56 = v114;
  if (v55)
  {
LABEL_17:
    (*(v114 + 8))(v36, v35);
    goto LABEL_12;
  }

  sub_24F9289E8();
  LOBYTE(v118) = 0;
  sub_24F3241D0(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
  v65 = v102;
  sub_24F92CC68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223148, &unk_24F9E44F0);
  LOBYTE(v118) = 1;
  sub_24E620E90();
  v76 = v104;
  sub_24F92CC18();
  LOBYTE(v118) = 2;
  sub_24F327D60();
  sub_24F92CC68();
  (*(v103 + 8))(v32, v65);
  (*(v56 + 8))(v115, v54);
  swift_unknownObjectRelease();
  swift_storeEnumTagMultiPayload();
  v84 = v76;
LABEL_33:
  v82 = v90;
  sub_24F327AF4(v84, v90, type metadata accessor for HeaderPresentation.HeaderIconType);
  v40 = v107;
LABEL_35:
  sub_24F327AF4(v82, v40, type metadata accessor for HeaderPresentation.HeaderIconType);
  return __swift_destroy_boxed_opaque_existential_1(v117);
}

uint64_t sub_24F31DC60(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6C616E696769726FLL;
  }

  else
  {
    v2 = 0x6574616C706D6574;
  }

  if (*a2)
  {
    v3 = 0x6C616E696769726FLL;
  }

  else
  {
    v3 = 0x6574616C706D6574;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_24F92CE08();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_24F31DCE8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F31DD60(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F31DDBC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F31DE3C(uint64_t *a1@<X8>)
{
  v2 = 0x6574616C706D6574;
  if (*v1)
  {
    v2 = 0x6C616E696769726FLL;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

uint64_t sub_24F31DF24()
{
  v1 = 1702521203;
  if (*v0 != 1)
  {
    v1 = 0x6E697265646E6572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B726F77747261;
  }
}

uint64_t sub_24F31DF84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F326668(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F31DFAC(uint64_t a1)
{
  v2 = sub_24F327D0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F31DFE8(uint64_t a1)
{
  v2 = sub_24F327D0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F31E024()
{
  if (*v0)
  {
    return 1702521203;
  }

  else
  {
    return 0x6D614E6567616D69;
  }
}

uint64_t sub_24F31E05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D614E6567616D69 && a2 == 0xE900000000000065;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F31E140(uint64_t a1)
{
  v2 = sub_24F327CB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F31E17C(uint64_t a1)
{
  v2 = sub_24F327CB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F31E1B8()
{
  v1 = *v0;
  v2 = 0x6C6F626D7973;
  v3 = 0x7641726579616C70;
  v4 = 0x6B726F77747261;
  if (v1 != 4)
  {
    v4 = 0x656C646E7562;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F6349656D6167;
  if (v1 != 1)
  {
    v5 = 0x7641726579616C70;
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

uint64_t sub_24F31E280@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F326788(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F31E2A8(uint64_t a1)
{
  v2 = sub_24F327C64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F31E2E4(uint64_t a1)
{
  v2 = sub_24F327C64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F31E320(uint64_t a1)
{
  v2 = sub_24F327E5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F31E35C(uint64_t a1)
{
  v2 = sub_24F327E5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F31E398(uint64_t a1)
{
  v2 = sub_24F327E08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F31E3D4(uint64_t a1)
{
  v2 = sub_24F327E08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F31E428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73726174617661 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F31E4B0(uint64_t a1)
{
  v2 = sub_24F327DB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F31E4EC(uint64_t a1)
{
  v2 = sub_24F327DB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F31E528()
{
  if (*v0)
  {
    return 1953393012;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_24F31E54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1953393012 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F31E628(uint64_t a1)
{
  v2 = sub_24F327EB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F31E664(uint64_t a1)
{
  v2 = sub_24F327EB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F31E6D0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F110, &qword_24F9E44A0);
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x28223BE20](v2);
  v23 = &v20 - v3;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F118, &qword_24F9E44A8);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v21 = &v20 - v4;
  v20 = type metadata accessor for JSColor(0);
  MEMORY[0x28223BE20](v20);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F120, &qword_24F9E44B0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F327A4C();
  sub_24F92D128();
  sub_24F32757C(v27, v9, type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v9;
    v30 = 1;
    sub_24F327AA0();
    v15 = v23;
    sub_24F92CC98();
    v28 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BB70, &unk_24FA2EBE0);
    sub_24F327BB0();
    v16 = v26;
    sub_24F92CD48();
    (*(v25 + 8))(v15, v16);
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    sub_24F327AF4(v9, v6, type metadata accessor for JSColor);
    v29 = 0;
    sub_24F327B5C();
    v18 = v21;
    sub_24F92CC98();
    sub_24F3241D0(&qword_27F21C778, type metadata accessor for JSColor, &protocol conformance descriptor for JSColor);
    v19 = v24;
    sub_24F92CD48();
    (*(v22 + 8))(v18, v19);
    sub_24F327890(v6, type metadata accessor for JSColor);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_24F31EB60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F0E0, &qword_24F9E4480);
  v45 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v46 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F0E8, &qword_24F9E4488);
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v48 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F0F0, &unk_24F9E4490);
  v47 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - v7;
  v9 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  v18 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24F327A4C();
  v19 = v49;
  sub_24F92D108();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  v49 = v14;
  v39 = v11;
  v40 = v17;
  v21 = v47;
  v20 = v48;
  v22 = sub_24F92CC78();
  v23 = (2 * *(v22 + 16)) | 1;
  v51 = v22;
  v52 = v22 + 32;
  v53 = 0;
  v54 = v23;
  v24 = sub_24E643430();
  v25 = v6;
  v26 = v8;
  if (v24 == 2 || v53 != v54 >> 1)
  {
    v28 = sub_24F92C918();
    swift_allocError();
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
    *v30 = v9;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
    swift_willThrow();
    (*(v21 + 8))(v8, v6);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  if (v24)
  {
    LOBYTE(v55) = 1;
    sub_24F327AA0();
    v27 = v46;
    sub_24F92CBA8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BB70, &unk_24FA2EBE0);
    sub_24EC28644();
    v35 = v42;
    sub_24F92CC68();
    (*(v45 + 8))(v27, v35);
    (*(v21 + 8))(v26, v6);
    swift_unknownObjectRelease();
    v36 = v39;
    *v39 = v55;
    swift_storeEnumTagMultiPayload();
    v37 = v36;
  }

  else
  {
    LOBYTE(v55) = 0;
    sub_24F327B5C();
    v32 = v20;
    sub_24F92CBA8();
    type metadata accessor for JSColor(0);
    sub_24F3241D0(&qword_27F21C758, type metadata accessor for JSColor, &protocol conformance descriptor for JSColor);
    v33 = v49;
    v34 = v44;
    sub_24F92CC68();
    (*(v43 + 8))(v32, v34);
    (*(v21 + 8))(v8, v25);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v37 = v33;
  }

  v38 = v40;
  sub_24F327AF4(v37, v40, type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle);
  sub_24F327AF4(v38, v41, type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle);
  return __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t sub_24F31F1EC(void *a1, uint64_t a2, int a3)
{
  v26 = a2;
  v27 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F230, &qword_24F9E4558);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F238, &qword_24F9E4560);
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F240, &qword_24F9E4568);
  v20 = *(v10 - 8);
  v21 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F248, &unk_24F9E4570);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F328060();
  sub_24F92D128();
  if (v27)
  {
    v17 = (v14 + 8);
    if (v26)
    {
      v29 = 1;
      sub_24F328108();
      sub_24F92CC98();
      (*(v22 + 8))(v9, v23);
    }

    else
    {
      v28 = 0;
      sub_24F32815C();
      sub_24F92CC98();
      (*(v20 + 8))(v12, v21);
    }

    return (*v17)(v16, v13);
  }

  else
  {
    v30 = 2;
    sub_24F3280B4();
    sub_24F92CC98();
    v18 = v25;
    sub_24F92CD38();
    (*(v24 + 8))(v6, v18);
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_24F31F5A0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EFF8, &qword_24F9E4418);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F32742C();
  sub_24F92D128();
  LOBYTE(v14) = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v9 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
    LOBYTE(v14) = 1;
    type metadata accessor for HeaderPresentation.HeaderIconType(0);
    sub_24F3241D0(&qword_27F23F008, type metadata accessor for HeaderPresentation.HeaderIconType, &unk_24F9E3C84);
    sub_24F92CCF8();
    LOBYTE(v14) = *(v3 + *(v9 + 24));
    v17 = 2;
    sub_24F327480();
    sub_24F92CCF8();
    LOBYTE(v14) = 3;
    type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
    sub_24F3241D0(&qword_27F23F018, type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle, &unk_24F9E3CD4);
    sub_24F92CCF8();
    LOBYTE(v14) = 4;
    sub_24F92CCB8();
    v10 = (v3 + *(v9 + 36));
    v11 = *v10;
    v12 = *(v10 + 8);
    LOBYTE(v10) = *(v10 + 9);
    v14 = v11;
    v15 = v12;
    v16 = v10;
    v17 = 5;
    sub_24F3274D4();
    sub_24F92CCF8();
    LOBYTE(v14) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8, &unk_24F93D030);
    sub_24E641F68(&qword_27F21BE88, MEMORY[0x277D21FE0]);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F31F904@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223128, &qword_24F9E3A10);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223130, &qword_24F96D648);
  MEMORY[0x28223BE20](v5 - 8);
  v36 = v32 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F080, &unk_24F9E4450);
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v8 = v32 - v7;
  v9 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v12 + 20);
  v14 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  v15 = *(*(v14 - 8) + 56);
  v42 = v13;
  v15(v11 + v13, 1, 1, v14);
  v16 = v9[7];
  v17 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  v18 = *(*(v17 - 8) + 56);
  v41 = v16;
  v18(v11 + v16, 1, 1, v17);
  v19 = v11;
  v20 = v11 + v9[10];
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  v40 = v20;
  sub_24E61DA68(v43, v20, qword_27F21B590, &unk_24F93BE30);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F32742C();
  v38 = v8;
  v21 = v39;
  sub_24F92D108();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v24 = v41;
    sub_24E601704(v11 + v42, &qword_27F223130, &qword_24F96D648);
    sub_24E601704(v11 + v24, &qword_27F223128, &qword_24F9E3A10);
    return sub_24E601704(v40, &qword_27F213EA8, &unk_24F93D030);
  }

  else
  {
    v32[1] = v17;
    v23 = v35;
    v22 = v36;
    v39 = a1;
    LOBYTE(v43[0]) = 0;
    v25 = v19;
    *v19 = sub_24F92CC28();
    v19[1] = v26;
    v32[0] = v26;
    LOBYTE(v43[0]) = 1;
    sub_24F3241D0(&qword_27F23F088, type metadata accessor for HeaderPresentation.HeaderIconType, &unk_24F9E3CAC);
    sub_24F92CC18();
    sub_24E61DA68(v22, v19 + v42, &qword_27F223130, &qword_24F96D648);
    v45 = 2;
    sub_24F3277E8();
    sub_24F92CC18();
    *(v19 + v9[6]) = v43[0];
    LOBYTE(v43[0]) = 3;
    sub_24F3241D0(&qword_27F23F098, type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle, &unk_24F9E3CFC);
    v27 = v34;
    sub_24F92CC18();
    sub_24E61DA68(v27, v25 + v41, &qword_27F223128, &qword_24F9E3A10);
    LOBYTE(v43[0]) = 4;
    *(v25 + v9[8]) = sub_24F92CBD8();
    v45 = 5;
    sub_24F32783C();
    sub_24F92CC18();
    v28 = v25 + v9[9];
    v29 = BYTE8(v43[0]);
    v30 = BYTE9(v43[0]);
    *v28 = *&v43[0];
    *(v28 + 8) = v29;
    *(v28 + 9) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8, &unk_24F93D030);
    v45 = 6;
    sub_24E641F68(&qword_27F21BEE8, MEMORY[0x277D21FE8]);
    sub_24F92CC68();
    (*(v23 + 8))(v38, v37);
    sub_24E61DA68(v43, v40, &qword_27F213EA8, &unk_24F93D030);
    sub_24F32757C(v25, v33, type metadata accessor for HeaderPresentation.HeaderLabel);
    __swift_destroy_boxed_opaque_existential_1(v39);
    return sub_24F327890(v25, type metadata accessor for HeaderPresentation.HeaderLabel);
  }
}

uint64_t sub_24F31FFD4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F028, &qword_24F9E4420);
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x28223BE20](v2);
  v48 = &v47 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F030, &qword_24F9E4428);
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C728, &unk_24F956450);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F038, &qword_24F9E4430);
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223130, &qword_24F96D648);
  MEMORY[0x28223BE20](v11 - 8);
  v56 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v55 = &v47 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v18 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F040, &qword_24F9E4438);
  v60 = *(v21 - 8);
  v61 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v47 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F327528();
  v59 = v23;
  sub_24F92D128();
  sub_24F32757C(v57, v20, type metadata accessor for HeaderPresentation.HeaderStyle);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348, &qword_24F948480);
      v26 = v25[12];
      LODWORD(v57) = *(v20 + v25[16]);
      v27 = v25[20];
      v28 = v55;
      sub_24E6009C8(v20, v55, &qword_27F223130, &qword_24F96D648);
      sub_24E6009C8(v20 + v26, v56, &qword_27F223130, &qword_24F96D648);
      v29 = v54;
      sub_24E6009C8(v20 + v27, v54, &qword_27F21C728, &unk_24F956450);
      LOBYTE(v63) = 1;
      sub_24F3276EC();
      v30 = v51;
      v31 = v61;
      v32 = v59;
      sub_24F92CC98();
      LOBYTE(v63) = 0;
      type metadata accessor for HeaderPresentation.HeaderIconType(0);
      sub_24F3241D0(&qword_27F23F008, type metadata accessor for HeaderPresentation.HeaderIconType, &unk_24F9E3C84);
      v33 = v53;
      v34 = v58;
      sub_24F92CCF8();
      if (v34)
      {
        (*(v52 + 8))(v30, v33);
        sub_24E601704(v29, &qword_27F21C728, &unk_24F956450);
        sub_24E601704(v56, &qword_27F223130, &qword_24F96D648);
        sub_24E601704(v28, &qword_27F223130, &qword_24F96D648);
        return (*(v60 + 8))(v32, v31);
      }

      else
      {
        v43 = v57;
        LOBYTE(v63) = 1;
        v44 = v56;
        sub_24F92CCF8();
        LOBYTE(v63) = v43;
        v62 = 2;
        sub_24F327740();
        sub_24F92CD48();
        v45 = v54;
        v46 = v55;
        LOBYTE(v63) = 3;
        type metadata accessor for JSColor(0);
        sub_24F3241D0(&qword_27F21C778, type metadata accessor for JSColor, &protocol conformance descriptor for JSColor);
        sub_24F92CCF8();
        (*(v52 + 8))(v30, v33);
        sub_24E601704(v45, &qword_27F21C728, &unk_24F956450);
        sub_24E601704(v44, &qword_27F223130, &qword_24F96D648);
        sub_24E601704(v46, &qword_27F223130, &qword_24F96D648);
        return (*(v60 + 8))(v32, v61);
      }
    }

    else
    {
      v38 = *v20;
      LOBYTE(v63) = 2;
      sub_24F3275E4();
      v39 = v48;
      v40 = v61;
      v41 = v59;
      sub_24F92CC98();
      v63 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F058, &unk_24F9E4440);
      sub_24F327638();
      v42 = v50;
      sub_24F92CD48();
      (*(v49 + 8))(v39, v42);
      (*(v60 + 8))(v41, v40);
    }
  }

  else
  {
    sub_24E6009C8(v20, v17, &qword_27F223130, &qword_24F96D648);
    LOBYTE(v63) = 0;
    sub_24F327794();
    v36 = v61;
    v37 = v59;
    sub_24F92CC98();
    type metadata accessor for HeaderPresentation.HeaderIconType(0);
    sub_24F3241D0(&qword_27F23F008, type metadata accessor for HeaderPresentation.HeaderIconType, &unk_24F9E3C84);
    sub_24F92CCF8();
    (*(v47 + 8))(v10, v8);
    sub_24E601704(v17, &qword_27F223130, &qword_24F96D648);
    return (*(v60 + 8))(v37, v36);
  }
}

uint64_t sub_24F32092C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F0A8, &qword_24F9E4460);
  v4 = *(v3 - 8);
  v59 = v3;
  v60 = v4;
  MEMORY[0x28223BE20](v3);
  v65 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F0B0, &qword_24F9E4468);
  v7 = *(v6 - 8);
  v61 = v6;
  v62 = v7;
  MEMORY[0x28223BE20](v6);
  v63 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F0B8, &qword_24F9E4470);
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x28223BE20](v9);
  v64 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F0C0, &qword_24F9E4478);
  v67 = *(v11 - 8);
  v68 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - v12;
  v14 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v54 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v54 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v54 - v24;
  v26 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_24F327528();
  v27 = v69;
  sub_24F92D108();
  if (!v27)
  {
    v69 = v22;
    v54 = v16;
    v55 = v25;
    v28 = v64;
    v29 = v65;
    v56 = v14;
    v30 = v66;
    v31 = v68;
    v32 = sub_24F92CC78();
    v33 = (2 * *(v32 + 16)) | 1;
    v71 = v32;
    v72 = v32 + 32;
    v73 = 0;
    v74 = v33;
    v34 = sub_24E643434();
    v35 = v31;
    if (v34 == 3 || v73 != v74 >> 1)
    {
      v39 = sub_24F92C918();
      swift_allocError();
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
      *v41 = v56;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
      swift_willThrow();
      (*(v67 + 8))(v13, v35);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v34)
      {
        if (v34 == 1)
        {
          LOBYTE(v75) = 1;
          sub_24F3276EC();
          v36 = v63;
          sub_24F92CBA8();
          type metadata accessor for HeaderPresentation.HeaderIconType(0);
          LOBYTE(v75) = 0;
          v37 = sub_24F3241D0(&qword_27F23F088, type metadata accessor for HeaderPresentation.HeaderIconType, &unk_24F9E3CAC);
          v38 = v61;
          v69 = v37;
          sub_24F92CC18();
          v65 = v13;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348, &qword_24F948480);
          LOBYTE(v75) = 1;
          sub_24F92CC18();
          LOBYTE(v75) = 2;
          sub_24F3279A4();
          sub_24F92CC68();
          v50 = v38;
          v51 = v19;
          v52 = v50;
          type metadata accessor for JSColor(0);
          LOBYTE(v75) = 3;
          sub_24F3241D0(&qword_27F21C758, type metadata accessor for JSColor, &protocol conformance descriptor for JSColor);
          sub_24F92CC18();
          (*(v62 + 8))(v36, v52);
          (*(v67 + 8))(v65, v68);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v53 = v51;
        }

        else
        {
          LOBYTE(v75) = 2;
          sub_24F3275E4();
          sub_24F92CBA8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F058, &unk_24F9E4440);
          sub_24F3278F0();
          v45 = v59;
          sub_24F92CC68();
          v46 = v29;
          v47 = v67;
          (*(v60 + 8))(v46, v45);
          (*(v47 + 8))(v13, v31);
          swift_unknownObjectRelease();
          v48 = v54;
          *v54 = v75;
          swift_storeEnumTagMultiPayload();
          v53 = v48;
        }
      }

      else
      {
        LOBYTE(v75) = 0;
        sub_24F327794();
        sub_24F92CBA8();
        type metadata accessor for HeaderPresentation.HeaderIconType(0);
        sub_24F3241D0(&qword_27F23F088, type metadata accessor for HeaderPresentation.HeaderIconType, &unk_24F9E3CAC);
        v43 = v69;
        v44 = v58;
        sub_24F92CC18();
        (*(v57 + 8))(v28, v44);
        (*(v67 + 8))(v13, v31);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v53 = v43;
      }

      v49 = v55;
      sub_24F327AF4(v53, v55, type metadata accessor for HeaderPresentation.HeaderStyle);
      sub_24F327AF4(v49, v30, type metadata accessor for HeaderPresentation.HeaderStyle);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v70);
}

uint64_t sub_24F3213BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6B72614473756C70;
  }

  else
  {
    v3 = 0x6867694C73756C70;
  }

  if (v2)
  {
    v4 = 0xEB00000000726574;
  }

  else
  {
    v4 = 0xEA00000000007265;
  }

  if (*a2)
  {
    v5 = 0x6B72614473756C70;
  }

  else
  {
    v5 = 0x6867694C73756C70;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007265;
  }

  else
  {
    v6 = 0xEB00000000726574;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F321470()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F321500(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F32157C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F321614(uint64_t *a1@<X8>)
{
  v2 = 0x6867694C73756C70;
  if (*v1)
  {
    v2 = 0x6B72614473756C70;
  }

  v3 = 0xEB00000000726574;
  if (*v1)
  {
    v3 = 0xEA00000000007265;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24F321710()
{
  if (*v0)
  {
    return 0x746E656964617267;
  }

  else
  {
    return 0x726F6C6F63;
  }
}

uint64_t sub_24F321748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E656964617267 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F321820(uint64_t a1)
{
  v2 = sub_24F327A4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F32185C(uint64_t a1)
{
  v2 = sub_24F327A4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F321898(uint64_t a1)
{
  v2 = sub_24F327B5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3218D4(uint64_t a1)
{
  v2 = sub_24F327B5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F321924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73726F6C6F63 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F3219A8(uint64_t a1)
{
  v2 = sub_24F327AA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3219E4(uint64_t a1)
{
  v2 = sub_24F327AA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F321A50()
{
  v1 = 0x7665684368746977;
  if (*v0 != 1)
  {
    v1 = 0x6F66664165726F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74786554796C6E6FLL;
  }
}

uint64_t sub_24F321AC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F326988(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F321AE8(uint64_t a1)
{
  v2 = sub_24F328060();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F321B24(uint64_t a1)
{
  v2 = sub_24F328060();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F321B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696D694C656E696CLL && a2 == 0xE900000000000074)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F321C0C(uint64_t a1)
{
  v2 = sub_24F3280B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F321C48(uint64_t a1)
{
  v2 = sub_24F3280B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F321C84(uint64_t a1)
{
  v2 = sub_24F32815C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F321CC0(uint64_t a1)
{
  v2 = sub_24F32815C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F321CFC(uint64_t a1)
{
  v2 = sub_24F328108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F321D38(uint64_t a1)
{
  v2 = sub_24F328108();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F321D74@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_24F326080(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_24F321DC8()
{
  v1 = *v0;
  v2 = 1954047348;
  v3 = 0x6C79745374786574;
  if (v1 != 5)
  {
    v3 = 0x6575676573;
  }

  v4 = 0x756F726765726F66;
  if (v1 != 3)
  {
    v4 = 0x436C616974726170;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1852793705;
  if (v1 != 1)
  {
    v5 = 0x7265746C6966;
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

uint64_t sub_24F321EA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F326AAC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F321ED0(uint64_t a1)
{
  v2 = sub_24F32742C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F321F0C(uint64_t a1)
{
  v2 = sub_24F32742C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F322034()
{
  v1 = 0x746954656772616CLL;
  if (*v0 != 1)
  {
    v1 = 0x6465646E65747865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x54746361706D6F63;
  }
}

uint64_t sub_24F32209C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F326D04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F3220C4(uint64_t a1)
{
  v2 = sub_24F327528();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F322100(uint64_t a1)
{
  v2 = sub_24F327528();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F32215C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x49676E696461656CLL && a2 == 0xEB000000006E6F63)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F3221E8(uint64_t a1)
{
  v2 = sub_24F327794();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F322224(uint64_t a1)
{
  v2 = sub_24F327794();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F322280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4964656B63617473 && a2 == 0xEC000000736E6F63)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F32230C(uint64_t a1)
{
  v2 = sub_24F3275E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F322348(uint64_t a1)
{
  v2 = sub_24F3275E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F322384()
{
  v1 = 0x6E6F6349706F74;
  v2 = 0x6E656D6E67696C61;
  if (*v0 != 2)
  {
    v2 = 0x756F72676B636162;
  }

  if (*v0)
  {
    v1 = 0x676E696C69617274;
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

uint64_t sub_24F322418@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F326E28(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F322440(uint64_t a1)
{
  v2 = sub_24F3276EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F32247C(uint64_t a1)
{
  v2 = sub_24F3276EC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F3224E8()
{
  v1 = 0x756E654D656D6167;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x657250616964656DLL;
  }

  if (*v0)
  {
    v1 = 0x7246657469766E69;
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

uint64_t sub_24F32257C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F326FA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F3225A4(uint64_t a1)
{
  v2 = sub_24F323024();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3225E0(uint64_t a1)
{
  v2 = sub_24F323024();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F32261C(uint64_t a1)
{
  v2 = sub_24F323174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F322658(uint64_t a1)
{
  v2 = sub_24F323174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F322694()
{
  if (*v0)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_24F3226C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F32279C(uint64_t a1)
{
  v2 = sub_24F323120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3227D8(uint64_t a1)
{
  v2 = sub_24F323120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F322814(uint64_t a1)
{
  v2 = sub_24F3230CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F322850(uint64_t a1)
{
  v2 = sub_24F3230CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F3228A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D726F6674616C70 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F322938(uint64_t a1)
{
  v2 = sub_24F323078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F322974(uint64_t a1)
{
  v2 = sub_24F323078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HeaderPresentation.AccessoryType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EDC0, &qword_24F9E3740);
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - v3;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EDC8, &qword_24F9E3748);
  v29 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EDD0, &qword_24F9E3750);
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EDD8, &qword_24F9E3758);
  v28 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EDE0, &qword_24F9E3760);
  v36 = *(v13 - 8);
  v37 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F323024();
  sub_24F92D128();
  sub_24E836C08(v35, &v41);
  v16 = v41;
  if (v44)
  {
    if (v44 == 1)
    {
      LOBYTE(v39[0]) = 3;
      sub_24F323078();
      v17 = v37;
      sub_24F92CC98();
      *&v39[0] = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214448, &qword_24F93CBF0);
      sub_24F323A9C(&qword_27F22B6E0, sub_24EC0BC94, MEMORY[0x277D83948]);
      v18 = v34;
      sub_24F92CD48();
      (*(v33 + 8))(v4, v18);
      (*(v36 + 8))(v15, v17);
    }

    else
    {
      v24 = vorrq_s8(*v42, *&v42[16]);
      if (*&vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL)) | *&v42[32] | v43 | v41)
      {
        LOBYTE(v39[0]) = 2;
        sub_24F3230CC();
        v25 = v37;
        sub_24F92CC98();
        (*(v29 + 8))(v6, v30);
        return (*(v36 + 8))(v15, v25);
      }

      else
      {
        LOBYTE(v39[0]) = 0;
        sub_24F323174();
        v26 = v37;
        sub_24F92CC98();
        (*(v28 + 8))(v12, v10);
        return (*(v36 + 8))(v15, v26);
      }
    }
  }

  else
  {
    v20 = v31;
    v39[0] = *&v42[8];
    v39[1] = *&v42[24];
    v40 = v43;
    v45 = 1;
    sub_24F323120();
    v21 = v37;
    sub_24F92CC98();
    v45 = 0;
    v22 = v32;
    v23 = v38;
    sub_24F92CD08();

    if (!v23)
    {
      v45 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8, &unk_24F93D030);
      sub_24E641F68(&qword_27F21BE88, MEMORY[0x277D21FE0]);
      sub_24F92CD48();
    }

    (*(v20 + 8))(v9, v22);
    sub_24E601704(v39, &qword_27F213EA8, &unk_24F93D030);
    return (*(v36 + 8))(v15, v21);
  }
}

unint64_t sub_24F323024()
{
  result = qword_27F23EDE8;
  if (!qword_27F23EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EDE8);
  }

  return result;
}

unint64_t sub_24F323078()
{
  result = qword_27F23EDF0;
  if (!qword_27F23EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EDF0);
  }

  return result;
}

unint64_t sub_24F3230CC()
{
  result = qword_27F23EDF8;
  if (!qword_27F23EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EDF8);
  }

  return result;
}

unint64_t sub_24F323120()
{
  result = qword_27F23EE00;
  if (!qword_27F23EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EE00);
  }

  return result;
}

unint64_t sub_24F323174()
{
  result = qword_27F23EE08;
  if (!qword_27F23EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EE08);
  }

  return result;
}

uint64_t HeaderPresentation.AccessoryType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EE10, &qword_24F9E3768);
  v52 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - v3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EE18, &qword_24F9E3770);
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v55 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EE20, &qword_24F9E3778);
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EE28, &qword_24F9E3780);
  v50 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EE30, &unk_24F9E3788);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - v13;
  v15 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24F323024();
  v16 = v59;
  sub_24F92D108();
  if (!v16)
  {
    v17 = v10;
    v46 = v8;
    v18 = v55;
    v47 = v7;
    v19 = v54;
    v48 = 0;
    v21 = v56;
    v20 = v57;
    v59 = v12;
    v22 = v58;
    v23 = sub_24F92CC78();
    v24 = (2 * *(v23 + 16)) | 1;
    v65 = v23;
    v66 = v23 + 32;
    v67 = 0;
    v68 = v24;
    v25 = sub_24E643440();
    if (v25 == 4 || v67 != v68 >> 1)
    {
      v35 = sub_24F92C918();
      swift_allocError();
      v37 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
      *v37 = &type metadata for HeaderPresentation.AccessoryType;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
      swift_willThrow();
    }

    else
    {
      if (v25 <= 1u)
      {
        if (v25)
        {
          LOBYTE(v61) = 1;
          sub_24F323120();
          v40 = v48;
          sub_24F92CBA8();
          v28 = v59;
          if (!v40)
          {
            v69 = 0;
            *&v61 = sub_24F92CC28();
            *(&v61 + 1) = v43;
            v57 = v43;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8, &unk_24F93D030);
            v69 = 1;
            sub_24E641F68(&qword_27F21BEE8, MEMORY[0x277D21FE8]);
            v44 = v47;
            sub_24F92CC68();
            (*(v53 + 8))(v44, v19);
            (*(v28 + 8))(v14, v11);
            swift_unknownObjectRelease();
            v31 = 0;
            v30 = v61;
            v32 = v62;
            v33 = v63;
            v29 = v64;
            goto LABEL_8;
          }
        }

        else
        {
          LOBYTE(v61) = 0;
          sub_24F323174();
          v26 = v17;
          v27 = v48;
          sub_24F92CBA8();
          v28 = v59;
          if (!v27)
          {
            (*(v50 + 8))(v26, v46);
            (*(v28 + 8))(v14, v11);
            swift_unknownObjectRelease();
            v29 = 0;
            v30 = 0uLL;
            v31 = 2;
            v32 = 0uLL;
            v33 = 0uLL;
LABEL_8:
            v34 = v22;
LABEL_20:
            *v34 = v30;
            *(v34 + 16) = v32;
            *(v34 + 32) = v33;
            *(v34 + 48) = v29;
            *(v34 + 56) = v31;
            return __swift_destroy_boxed_opaque_existential_1(v60);
          }
        }

        goto LABEL_11;
      }

      if (v25 == 2)
      {
        LOBYTE(v61) = 2;
        sub_24F3230CC();
        v39 = v48;
        sub_24F92CBA8();
        if (!v39)
        {
          v34 = v22;
          (*(v49 + 8))(v18, v51);
          (*(v59 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v29 = 0;
          v30 = xmmword_24F950E90;
          v32 = 0uLL;
          v31 = 2;
          v33 = 0uLL;
          goto LABEL_20;
        }
      }

      else
      {
        LOBYTE(v61) = 3;
        sub_24F323078();
        v41 = v48;
        sub_24F92CBA8();
        if (!v41)
        {
          v34 = v22;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214448, &qword_24F93CBF0);
          sub_24F323A9C(&qword_27F214450, sub_24E62AC48, MEMORY[0x277D83978]);
          sub_24F92CC68();
          v42 = v59;
          (*(v52 + 8))(v21, v20);
          (*(v42 + 8))(v14, v11);
          swift_unknownObjectRelease();
          *&v30 = v61;
          v31 = 1;
          goto LABEL_20;
        }
      }
    }

    v28 = v59;
LABEL_11:
    (*(v28 + 8))(v14, v11);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v60);
}

uint64_t sub_24F323A9C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214448, &qword_24F93CBF0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F323B14(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x62614C656C746974;
    v6 = 0x656C746974627573;
    if (a1 != 2)
    {
      v6 = 0x726F737365636361;
    }

    if (a1)
    {
      v5 = 0x4C676E6964616568;
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
    v1 = 0xD00000000000001CLL;
    v2 = 0x436C616974726170;
    if (a1 != 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x7453726564616568;
    if (a1 != 4)
    {
      v3 = 0x736E696772616DLL;
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

uint64_t sub_24F323CAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F327118(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F323CD4(uint64_t a1)
{
  v2 = sub_24F3240C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F323D10(uint64_t a1)
{
  v2 = sub_24F3240C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HeaderPresentation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EE38, &qword_24F9E3798);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3240C8();
  sub_24F92D128();
  v11[31] = 0;
  type metadata accessor for HeaderPresentation.HeaderLabel(0);
  sub_24F3241D0(&qword_27F23EE48, type metadata accessor for HeaderPresentation.HeaderLabel, &unk_24F9E420C);
  sub_24F92CCF8();
  if (!v2)
  {
    v9 = type metadata accessor for HeaderPresentation(0);
    v11[30] = 1;
    sub_24F92CCF8();
    v11[29] = 2;
    sub_24F92CCF8();
    v11[28] = 3;
    sub_24F32415C();
    sub_24F92CCF8();
    v11[27] = 4;
    type metadata accessor for HeaderPresentation.HeaderStyle(0);
    sub_24F3241D0(&qword_27F23EE58, type metadata accessor for HeaderPresentation.HeaderStyle, &unk_24F9E41E4);
    sub_24F92CCF8();
    v11[26] = *(v3 + *(v9 + 36));
    v11[25] = 5;
    sub_24E777488();
    sub_24F92CCF8();
    v11[24] = 6;
    sub_24F92CCB8();
    v11[15] = 7;
    sub_24F92CCB8();
    v11[14] = 8;
    sub_24F92CCB8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24F3240C8()
{
  result = qword_27F23EE40;
  if (!qword_27F23EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EE40);
  }

  return result;
}

unint64_t sub_24F32415C()
{
  result = qword_27F23EE50;
  if (!qword_27F23EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EE50);
  }

  return result;
}

uint64_t sub_24F3241D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t HeaderPresentation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v41 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DBA0, &qword_24F9DDA30);
  MEMORY[0x28223BE20](v2 - 8);
  v43 = &v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223138, &unk_24F972860);
  MEMORY[0x28223BE20](v4 - 8);
  v48 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v47 = &v35 - v7;
  MEMORY[0x28223BE20](v8);
  v50 = &v35 - v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EE60, &unk_24F9E37A0);
  v46 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v54 = &v35 - v10;
  v11 = type metadata accessor for HeaderPresentation(0);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v16 = *(*(v15 - 8) + 56);
  v16(v14, 1, 1, v15);
  v45 = v12[7];
  v16(&v14[v45], 1, 1, v15);
  v44 = v12[8];
  v49 = v15;
  v16(&v14[v44], 1, 1, v15);
  v17 = &v14[v12[9]];
  *(v17 + 48) = 0;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *v17 = 0u;
  *(v17 + 56) = -1;
  v18 = v12[10];
  v19 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  v20 = *(*(v19 - 8) + 56);
  v42 = v18;
  v20(&v14[v18], 1, 1, v19);
  v21 = v12[11];
  v14[v21] = 7;
  v22 = v12[12];
  v14[v22] = 2;
  v23 = v12[13];
  v14[v23] = 2;
  v24 = v12[14];
  v53 = v14;
  v14[v24] = 2;
  __swift_project_boxed_opaque_existential_1(v55, v55[3]);
  sub_24F3240C8();
  v25 = v52;
  sub_24F92D108();
  if (v25)
  {
    v26 = v53;
  }

  else
  {
    v40 = v17;
    v52 = v19;
    v27 = v47;
    v39 = v21;
    v28 = v48;
    v38 = v22;
    v37 = v23;
    v36 = v24;
    v29 = v46;
    v56[0] = 0;
    sub_24F3241D0(&qword_27F23EE68, type metadata accessor for HeaderPresentation.HeaderLabel, &unk_24F9E41BC);
    v30 = v50;
    sub_24F92CC18();
    v26 = v53;
    sub_24E61DA68(v30, v53, &qword_27F223138, &unk_24F972860);
    v56[0] = 1;
    sub_24F92CC18();
    sub_24E61DA68(v27, v26 + v45, &qword_27F223138, &unk_24F972860);
    v56[0] = 2;
    sub_24F92CC18();
    sub_24E61DA68(v28, v26 + v44, &qword_27F223138, &unk_24F972860);
    v57 = 3;
    sub_24F324974();
    sub_24F92CC18();
    sub_24E61DA68(v56, v40, &qword_27F238828, &unk_24F9C52F0);
    v56[0] = 4;
    sub_24F3241D0(&qword_27F23EE78, type metadata accessor for HeaderPresentation.HeaderStyle, &unk_24F9E4194);
    v31 = v43;
    sub_24F92CC18();
    sub_24E61DA68(v31, v26 + v42, &qword_27F23DBA0, &qword_24F9DDA30);
    v57 = 5;
    sub_24E777690();
    sub_24F92CC18();
    *(v26 + v39) = v56[0];
    v56[0] = 6;
    *(v26 + v38) = sub_24F92CBD8();
    v56[0] = 7;
    *(v26 + v37) = sub_24F92CBD8();
    v56[0] = 8;
    v33 = v51;
    v34 = v54;
    LOBYTE(v31) = sub_24F92CBD8();
    (*(v29 + 8))(v34, v33);
    *(v26 + v36) = v31;
    sub_24F32757C(v26, v41, type metadata accessor for HeaderPresentation);
  }

  __swift_destroy_boxed_opaque_existential_1(v55);
  return sub_24F327890(v26, type metadata accessor for HeaderPresentation);
}

unint64_t sub_24F324974()
{
  result = qword_27F23EE70;
  if (!qword_27F23EE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EE70);
  }

  return result;
}

uint64_t sub_24F324A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223138, &unk_24F972860);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DBA0, &qword_24F9DDA30);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 32);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40));
  if (v14 >= 2)
  {
    v15 = ((v14 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v15 = -2;
  }

  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_24F324B60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223138, &unk_24F972860);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DBA0, &qword_24F9DDA30);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 32);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24F324C80(uint64_t a1)
{
  sub_24F324DEC(319, &qword_27F23EE90, type metadata accessor for HeaderPresentation.HeaderLabel, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24E66ECF0(319, &qword_27F23EE98, &type metadata for HeaderPresentation.AccessoryType);
    if (v2 <= 0x3F)
    {
      sub_24F324DEC(319, &qword_27F23EEA0, type metadata accessor for HeaderPresentation.HeaderStyle, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_24E66ECF0(319, &qword_27F220ED0, &type metadata for Margins);
        if (v4 <= 0x3F)
        {
          sub_24E66ECF0(319, &qword_27F2169A0, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24F324DEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit18HeaderPresentationV13AccessoryTypeO(uint64_t a1)
{
  if ((*(a1 + 56) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 56) & 3;
  }
}

uint64_t sub_24F324E6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24F324EA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

void sub_24F324F68(uint64_t a1)
{
  sub_24F325458(319, &qword_27F23EEB8, &qword_27F23EEC0, type metadata accessor for HeaderPresentation.HeaderIconType, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24F325080(319);
    if (v2 <= 0x3F)
    {
      sub_24F325458(319, &qword_27F23EED0, &qword_27F23EED8, type metadata accessor for HeaderPresentation.HeaderIconType, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24F325080(uint64_t a1)
{
  if (!qword_27F23EEC8)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223130, &qword_24F96D648);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C728, &unk_24F956450);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F23EEC8);
    }
  }
}

void sub_24F3251E4(uint64_t a1)
{
  sub_24E869A90();
  if (v1 <= 0x3F)
  {
    sub_24F325458(319, &qword_27F23EEF0, &qword_27F23EEF8, type metadata accessor for JSColor, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24F325290(uint64_t a1)
{
  sub_24F325534(319, &qword_27F23EF10, &qword_27F21C728, &unk_24F956450, "name tint ");
  if (v1 <= 0x3F)
  {
    sub_24F3253CC(319);
    if (v2 <= 0x3F)
    {
      sub_24E8711C8();
      if (v3 <= 0x3F)
      {
        sub_24F325458(319, &qword_27F23EF20, &qword_27F214D28, type metadata accessor for PlayerAvatar, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_24F3254AC(319);
          if (v5 <= 0x3F)
          {
            sub_24F325534(319, &qword_27F23EF30, &qword_27F21CFA8, &qword_24F958530, "imageName size ");
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_24F3253CC(uint64_t a1)
{
  if (!qword_27F23EF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213FB0, &qword_24F93E6B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227628, &qword_24F97EF60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F23EF18);
    }
  }
}

void sub_24F325458(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_24F324DEC(0, a3, a4, a5);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_24F3254AC(uint64_t a1)
{
  if (!qword_27F23EF28)
  {
    sub_24F9289E8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21CFA8, &qword_24F958530);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F23EF28);
    }
  }
}

void sub_24F325534(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_24F3255C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223130, &qword_24F96D648);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223128, &qword_24F9E3A10);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F325718(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223130, &qword_24F96D648);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223128, &qword_24F9E3A10);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24F325854(uint64_t a1)
{
  sub_24F324DEC(319, &qword_27F23EEC0, type metadata accessor for HeaderPresentation.HeaderIconType, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24E66ECF0(319, &qword_27F23EF48, &type metadata for HeaderPresentation.HeaderLabel.CompositingFilter);
    if (v2 <= 0x3F)
    {
      sub_24F324DEC(319, &qword_27F23EF50, type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_24E66ECF0(319, &qword_27F2169A0, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          sub_24E66ECF0(319, &qword_27F23EF58, &type metadata for HeaderPresentation.HeaderLabel.TextStyle);
          if (v5 <= 0x3F)
          {
            sub_24E7CA5E4(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_24F3259FC()
{
  result = qword_27F23EF60;
  if (!qword_27F23EF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EF60);
  }

  return result;
}

unint64_t sub_24F325A54()
{
  result = qword_27F23EF68;
  if (!qword_27F23EF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EF68);
  }

  return result;
}

unint64_t sub_24F325AAC()
{
  result = qword_27F23EF70;
  if (!qword_27F23EF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EF70);
  }

  return result;
}

unint64_t sub_24F325B04()
{
  result = qword_27F23EF78;
  if (!qword_27F23EF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EF78);
  }

  return result;
}

unint64_t sub_24F325B5C()
{
  result = qword_27F23EF80;
  if (!qword_27F23EF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EF80);
  }

  return result;
}

unint64_t sub_24F325BB4()
{
  result = qword_27F23EF88;
  if (!qword_27F23EF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EF88);
  }

  return result;
}

unint64_t sub_24F325C0C()
{
  result = qword_27F23EF90;
  if (!qword_27F23EF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EF90);
  }

  return result;
}

unint64_t sub_24F325C64()
{
  result = qword_27F23EF98;
  if (!qword_27F23EF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EF98);
  }

  return result;
}

unint64_t sub_24F325CBC()
{
  result = qword_27F23EFA0;
  if (!qword_27F23EFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EFA0);
  }

  return result;
}

unint64_t sub_24F325D14()
{
  result = qword_27F23EFA8;
  if (!qword_27F23EFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EFA8);
  }

  return result;
}

unint64_t sub_24F325D6C()
{
  result = qword_27F23EFB0;
  if (!qword_27F23EFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EFB0);
  }

  return result;
}

unint64_t sub_24F325DC4()
{
  result = qword_27F23EFB8;
  if (!qword_27F23EFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EFB8);
  }

  return result;
}

unint64_t sub_24F325E1C()
{
  result = qword_27F23EFC0;
  if (!qword_27F23EFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EFC0);
  }

  return result;
}

unint64_t sub_24F325E74()
{
  result = qword_27F23EFC8;
  if (!qword_27F23EFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EFC8);
  }

  return result;
}

unint64_t sub_24F325ECC()
{
  result = qword_27F23EFD0;
  if (!qword_27F23EFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EFD0);
  }

  return result;
}

unint64_t sub_24F325F24()
{
  result = qword_27F23EFD8;
  if (!qword_27F23EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EFD8);
  }

  return result;
}

unint64_t sub_24F325F7C()
{
  result = qword_27F23EFE0;
  if (!qword_27F23EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EFE0);
  }

  return result;
}

unint64_t sub_24F325FD4()
{
  result = qword_27F23EFE8;
  if (!qword_27F23EFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EFE8);
  }

  return result;
}

unint64_t sub_24F32602C()
{
  result = qword_27F23EFF0;
  if (!qword_27F23EFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EFF0);
  }

  return result;
}

uint64_t sub_24F326080(void *a1)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F1F0, &qword_24F9E4538);
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - v2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F1F8, &qword_24F9E4540);
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F200, &qword_24F9E4548);
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F208, &qword_24F9E4550);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = a1[3];
  v37 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_24F328060();
  v14 = v36;
  sub_24F92D108();
  if (!v14)
  {
    v29 = v5;
    v36 = 0;
    v16 = v34;
    v15 = v35;
    v17 = v9;
    v18 = sub_24F92CC78();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_24E643434();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_24F92C918();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
      *v24 = &type metadata for HeaderPresentation.HeaderLabel.TextStyle;
      v13 = v11;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
    }

    else if (v20)
    {
      if (v20 == 1)
      {
        v42 = 1;
        sub_24F328108();
        v13 = v11;
        v21 = v36;
        sub_24F92CBA8();
        if (!v21)
        {
          (*(v32 + 8))(v4, v30);
          (*(v9 + 8))(v11, v8);
          swift_unknownObjectRelease();
          v13 = 1;
          goto LABEL_10;
        }
      }

      else
      {
        v42 = 2;
        sub_24F3280B4();
        v13 = v11;
        v27 = v36;
        sub_24F92CBA8();
        if (!v27)
        {
          v13 = sub_24F92CC58();
          (*(v33 + 8))(v16, v15);
          (*(v9 + 8))(v11, v8);
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }
    }

    else
    {
      v42 = 0;
      sub_24F32815C();
      v13 = v11;
      v26 = v36;
      sub_24F92CBA8();
      if (!v26)
      {
        (*(v31 + 8))(v7, v29);
        (*(v9 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v13 = 0;
        goto LABEL_10;
      }
    }

    (*(v17 + 8))(v11, v8);
    swift_unknownObjectRelease();
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v37);
  return v13;
}

uint64_t sub_24F326668(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E697265646E6572 && a2 == 0xED000065646F4D67)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F326788(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7641726579616C70 && a2 == 0xEC00000072617461 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7641726579616C70 && a2 == 0xED00007372617461 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C646E7562 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24F326988(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74786554796C6E6FLL && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7665684368746977 && a2 == 0xEB000000006E6F72 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F66664165726F6DLL && a2 == 0xEE0065636E616472)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F326AAC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265746C6966 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F726765726F66 && a2 == 0xEF656C797453646ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x436C616974726170 && a2 == 0xEE00746E65746E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C79745374786574 && a2 == 0xE900000000000065 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_24F326D04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54746361706D6F63 && a2 == 0xEC000000656C7469;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746954656772616CLL && a2 == 0xEA0000000000656CLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465646E65747865 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F326E28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6349706F74 && a2 == 0xE700000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696C69617274 && a2 == 0xEC0000006E6F6349 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F326FA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756E654D656D6167 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7246657469766E69 && a2 == 0xED000073646E6569 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA73C40 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657250616964656DLL && a2 == 0xEC00000077656976)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F327118(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x62614C656C746974 && a2 == 0xEA00000000006C65;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C676E6964616568 && a2 == 0xEC0000006C656261 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xED00006C6562614CLL || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED00006570795479 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7453726564616568 && a2 == 0xEB00000000656C79 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736E696772616DLL && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024FA73C60 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x436C616974726170 && a2 == 0xEE00746E65746E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA51D90 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_24F32742C()
{
  result = qword_27F23F000;
  if (!qword_27F23F000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F000);
  }

  return result;
}

unint64_t sub_24F327480()
{
  result = qword_27F23F010;
  if (!qword_27F23F010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F010);
  }

  return result;
}

unint64_t sub_24F3274D4()
{
  result = qword_27F23F020;
  if (!qword_27F23F020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F020);
  }

  return result;
}

unint64_t sub_24F327528()
{
  result = qword_27F23F048;
  if (!qword_27F23F048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F048);
  }

  return result;
}

uint64_t sub_24F32757C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F3275E4()
{
  result = qword_27F23F050;
  if (!qword_27F23F050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F050);
  }

  return result;
}

unint64_t sub_24F327638()
{
  result = qword_27F23F060;
  if (!qword_27F23F060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F058, &unk_24F9E4440);
    sub_24F3241D0(&qword_27F23F008, type metadata accessor for HeaderPresentation.HeaderIconType, &unk_24F9E3C84);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F060);
  }

  return result;
}

unint64_t sub_24F3276EC()
{
  result = qword_27F23F068;
  if (!qword_27F23F068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F068);
  }

  return result;
}

unint64_t sub_24F327740()
{
  result = qword_27F23F070;
  if (!qword_27F23F070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F070);
  }

  return result;
}

unint64_t sub_24F327794()
{
  result = qword_27F23F078;
  if (!qword_27F23F078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F078);
  }

  return result;
}

unint64_t sub_24F3277E8()
{
  result = qword_27F23F090;
  if (!qword_27F23F090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F090);
  }

  return result;
}

unint64_t sub_24F32783C()
{
  result = qword_27F23F0A0;
  if (!qword_27F23F0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F0A0);
  }

  return result;
}

uint64_t sub_24F327890(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F3278F0()
{
  result = qword_27F23F0C8;
  if (!qword_27F23F0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F058, &unk_24F9E4440);
    sub_24F3241D0(&qword_27F23F088, type metadata accessor for HeaderPresentation.HeaderIconType, &unk_24F9E3CAC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F0C8);
  }

  return result;
}

unint64_t sub_24F3279A4()
{
  result = qword_27F23F0D0;
  if (!qword_27F23F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F0D0);
  }

  return result;
}

unint64_t sub_24F3279F8()
{
  result = qword_27F23F0D8;
  if (!qword_27F23F0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F0D8);
  }

  return result;
}

unint64_t sub_24F327A4C()
{
  result = qword_27F23F0F8;
  if (!qword_27F23F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F0F8);
  }

  return result;
}

unint64_t sub_24F327AA0()
{
  result = qword_27F23F100;
  if (!qword_27F23F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F100);
  }

  return result;
}

uint64_t sub_24F327AF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F327B5C()
{
  result = qword_27F23F108;
  if (!qword_27F23F108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F108);
  }

  return result;
}

unint64_t sub_24F327BB0()
{
  result = qword_27F23F128;
  if (!qword_27F23F128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22BB70, &unk_24FA2EBE0);
    sub_24F3241D0(&qword_27F21C778, type metadata accessor for JSColor, &protocol conformance descriptor for JSColor);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F128);
  }

  return result;
}

unint64_t sub_24F327C64()
{
  result = qword_27F23F168;
  if (!qword_27F23F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F168);
  }

  return result;
}

unint64_t sub_24F327CB8()
{
  result = qword_27F23F170;
  if (!qword_27F23F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F170);
  }

  return result;
}

unint64_t sub_24F327D0C()
{
  result = qword_27F23F178;
  if (!qword_27F23F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F178);
  }

  return result;
}

unint64_t sub_24F327D60()
{
  result = qword_27F23F180;
  if (!qword_27F23F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F180);
  }

  return result;
}

unint64_t sub_24F327DB4()
{
  result = qword_27F23F188;
  if (!qword_27F23F188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F188);
  }

  return result;
}

unint64_t sub_24F327E08()
{
  result = qword_27F23F190;
  if (!qword_27F23F190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F190);
  }

  return result;
}

unint64_t sub_24F327E5C()
{
  result = qword_27F23F198;
  if (!qword_27F23F198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F198);
  }

  return result;
}

unint64_t sub_24F327EB0()
{
  result = qword_27F23F1A0;
  if (!qword_27F23F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F1A0);
  }

  return result;
}

unint64_t sub_24F327F04()
{
  result = qword_27F23F1E0;
  if (!qword_27F23F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F1E0);
  }

  return result;
}

unint64_t sub_24F327F58()
{
  result = qword_27F218A30;
  if (!qword_27F218A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218590, &qword_24F9D7B90);
    sub_24F3241D0(&qword_27F218A38, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218A30);
  }

  return result;
}

unint64_t sub_24F32800C()
{
  result = qword_27F23F1E8;
  if (!qword_27F23F1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F1E8);
  }

  return result;
}

unint64_t sub_24F328060()
{
  result = qword_27F23F210;
  if (!qword_27F23F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F210);
  }

  return result;
}

unint64_t sub_24F3280B4()
{
  result = qword_27F23F218;
  if (!qword_27F23F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F218);
  }

  return result;
}

unint64_t sub_24F328108()
{
  result = qword_27F23F220;
  if (!qword_27F23F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F220);
  }

  return result;
}

unint64_t sub_24F32815C()
{
  result = qword_27F23F228;
  if (!qword_27F23F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F228);
  }

  return result;
}

unint64_t sub_24F3281B0()
{
  result = qword_27F23F250;
  if (!qword_27F23F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F250);
  }

  return result;
}

unint64_t sub_24F328338()
{
  result = qword_27F23F258;
  if (!qword_27F23F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F258);
  }

  return result;
}

unint64_t sub_24F328390()
{
  result = qword_27F23F260;
  if (!qword_27F23F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F260);
  }

  return result;
}

unint64_t sub_24F3283E8()
{
  result = qword_27F23F268;
  if (!qword_27F23F268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F268);
  }

  return result;
}

unint64_t sub_24F328440()
{
  result = qword_27F23F270;
  if (!qword_27F23F270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F270);
  }

  return result;
}

unint64_t sub_24F328498()
{
  result = qword_27F23F278;
  if (!qword_27F23F278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F278);
  }

  return result;
}

unint64_t sub_24F3284F0()
{
  result = qword_27F23F280;
  if (!qword_27F23F280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F280);
  }

  return result;
}

unint64_t sub_24F328548()
{
  result = qword_27F23F288;
  if (!qword_27F23F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F288);
  }

  return result;
}

unint64_t sub_24F3285A0()
{
  result = qword_27F23F290;
  if (!qword_27F23F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F290);
  }

  return result;
}

unint64_t sub_24F3285F8()
{
  result = qword_27F23F298;
  if (!qword_27F23F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F298);
  }

  return result;
}

unint64_t sub_24F328650()
{
  result = qword_27F23F2A0;
  if (!qword_27F23F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F2A0);
  }

  return result;
}

unint64_t sub_24F3286A8()
{
  result = qword_27F23F2A8;
  if (!qword_27F23F2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F2A8);
  }

  return result;
}

unint64_t sub_24F328700()
{
  result = qword_27F23F2B0;
  if (!qword_27F23F2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F2B0);
  }

  return result;
}

unint64_t sub_24F328758()
{
  result = qword_27F23F2B8;
  if (!qword_27F23F2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F2B8);
  }

  return result;
}

unint64_t sub_24F3287B0()
{
  result = qword_27F23F2C0;
  if (!qword_27F23F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F2C0);
  }

  return result;
}

unint64_t sub_24F328808()
{
  result = qword_27F23F2C8;
  if (!qword_27F23F2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F2C8);
  }

  return result;
}

unint64_t sub_24F328860()
{
  result = qword_27F23F2D0;
  if (!qword_27F23F2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F2D0);
  }

  return result;
}

unint64_t sub_24F3288B8()
{
  result = qword_27F23F2D8;
  if (!qword_27F23F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F2D8);
  }

  return result;
}

unint64_t sub_24F328910()
{
  result = qword_27F23F2E0;
  if (!qword_27F23F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F2E0);
  }

  return result;
}

unint64_t sub_24F328968()
{
  result = qword_27F23F2E8;
  if (!qword_27F23F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F2E8);
  }

  return result;
}

unint64_t sub_24F3289C0()
{
  result = qword_27F23F2F0;
  if (!qword_27F23F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F2F0);
  }

  return result;
}

unint64_t sub_24F328A18()
{
  result = qword_27F23F2F8;
  if (!qword_27F23F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F2F8);
  }

  return result;
}

unint64_t sub_24F328A70()
{
  result = qword_27F23F300;
  if (!qword_27F23F300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F300);
  }

  return result;
}

unint64_t sub_24F328AC8()
{
  result = qword_27F23F308;
  if (!qword_27F23F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F308);
  }

  return result;
}

unint64_t sub_24F328B20()
{
  result = qword_27F23F310;
  if (!qword_27F23F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F310);
  }

  return result;
}

unint64_t sub_24F328B78()
{
  result = qword_27F23F318;
  if (!qword_27F23F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F318);
  }

  return result;
}

unint64_t sub_24F328BD0()
{
  result = qword_27F23F320;
  if (!qword_27F23F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F320);
  }

  return result;
}

unint64_t sub_24F328C28()
{
  result = qword_27F23F328;
  if (!qword_27F23F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F328);
  }

  return result;
}

unint64_t sub_24F328C80()
{
  result = qword_27F23F330;
  if (!qword_27F23F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F330);
  }

  return result;
}

unint64_t sub_24F328CD8()
{
  result = qword_27F23F338;
  if (!qword_27F23F338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F338);
  }

  return result;
}

unint64_t sub_24F328D30()
{
  result = qword_27F23F340;
  if (!qword_27F23F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F340);
  }

  return result;
}

unint64_t sub_24F328D88()
{
  result = qword_27F23F348;
  if (!qword_27F23F348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F348);
  }

  return result;
}

unint64_t sub_24F328DE0()
{
  result = qword_27F23F350;
  if (!qword_27F23F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F350);
  }

  return result;
}

unint64_t sub_24F328E38()
{
  result = qword_27F23F358;
  if (!qword_27F23F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F358);
  }

  return result;
}

unint64_t sub_24F328E90()
{
  result = qword_27F23F360;
  if (!qword_27F23F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F360);
  }

  return result;
}

unint64_t sub_24F328EE8()
{
  result = qword_27F23F368;
  if (!qword_27F23F368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F368);
  }

  return result;
}

unint64_t sub_24F328F40()
{
  result = qword_27F23F370;
  if (!qword_27F23F370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F370);
  }

  return result;
}

unint64_t sub_24F328F98()
{
  result = qword_27F23F378;
  if (!qword_27F23F378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F378);
  }

  return result;
}

unint64_t sub_24F328FF0()
{
  result = qword_27F23F380;
  if (!qword_27F23F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F380);
  }

  return result;
}

unint64_t sub_24F329048()
{
  result = qword_27F23F388;
  if (!qword_27F23F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F388);
  }

  return result;
}

unint64_t sub_24F3290A0()
{
  result = qword_27F23F390;
  if (!qword_27F23F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F390);
  }

  return result;
}

unint64_t sub_24F3290F8()
{
  result = qword_27F23F398;
  if (!qword_27F23F398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F398);
  }

  return result;
}

unint64_t sub_24F329150()
{
  result = qword_27F23F3A0;
  if (!qword_27F23F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F3A0);
  }

  return result;
}

unint64_t sub_24F3291A8()
{
  result = qword_27F23F3A8;
  if (!qword_27F23F3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F3A8);
  }

  return result;
}

unint64_t sub_24F329200()
{
  result = qword_27F23F3B0;
  if (!qword_27F23F3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F3B0);
  }

  return result;
}

unint64_t sub_24F329258()
{
  result = qword_27F23F3B8;
  if (!qword_27F23F3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F3B8);
  }

  return result;
}

unint64_t sub_24F3292B0()
{
  result = qword_27F23F3C0;
  if (!qword_27F23F3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F3C0);
  }

  return result;
}

unint64_t sub_24F329308()
{
  result = qword_27F23F3C8;
  if (!qword_27F23F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F3C8);
  }

  return result;
}

unint64_t sub_24F329360()
{
  result = qword_27F23F3D0;
  if (!qword_27F23F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F3D0);
  }

  return result;
}

unint64_t sub_24F3293B8()
{
  result = qword_27F23F3D8;
  if (!qword_27F23F3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F3D8);
  }

  return result;
}

unint64_t sub_24F329410()
{
  result = qword_27F23F3E0;
  if (!qword_27F23F3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F3E0);
  }

  return result;
}

unint64_t sub_24F329468()
{
  result = qword_27F23F3E8;
  if (!qword_27F23F3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F3E8);
  }

  return result;
}

unint64_t sub_24F3294C0()
{
  result = qword_27F23F3F0;
  if (!qword_27F23F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F3F0);
  }

  return result;
}

unint64_t sub_24F329518()
{
  result = qword_27F23F3F8;
  if (!qword_27F23F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F3F8);
  }

  return result;
}

unint64_t sub_24F329570()
{
  result = qword_27F23F400;
  if (!qword_27F23F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F400);
  }

  return result;
}

unint64_t sub_24F3295C8()
{
  result = qword_27F23F408;
  if (!qword_27F23F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F408);
  }

  return result;
}

uint64_t sub_24F32961C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223138, &unk_24F972860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NotImplementedShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NotImplementedShelfIntent.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t NotImplementedShelfIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x656C746974;
  v8 = MEMORY[0x277D837D0];
  v9 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v9;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v6;
  *(inited + 56) = v5;
  *(inited + 88) = 0x444965676170;
  *(inited + 96) = 0xE600000000000000;
  *(inited + 128) = v8;
  *(inited + 136) = v9;
  *(inited + 104) = v4;
  *(inited + 112) = v3;

  v10 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v10;
  return result;
}

uint64_t sub_24F329848()
{
  if (*v0)
  {
    return 0x656C746974;
  }

  else
  {
    return 0x444965676170;
  }
}

uint64_t sub_24F32987C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F329950(uint64_t a1)
{
  v2 = sub_24F329EE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F32998C(uint64_t a1)
{
  v2 = sub_24F329EE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NotImplementedShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F410, &qword_24F9E5A18);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F329EE4();
  sub_24F92D128();
  v12 = 0;
  v8 = v10[3];
  sub_24F92CD08();
  if (!v8)
  {
    v11 = 1;
    sub_24F92CD08();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t NotImplementedShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F420, &qword_24F9E5A20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F329EE4();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_24F92CC28();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F329DAC@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x656C746974;
  v8 = MEMORY[0x277D837D0];
  v9 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v9;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v6;
  *(inited + 56) = v5;
  *(inited + 88) = 0x444965676170;
  *(inited + 96) = 0xE600000000000000;
  *(inited + 128) = v8;
  *(inited + 136) = v9;
  *(inited + 104) = v4;
  *(inited + 112) = v3;

  v10 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v10;
  return result;
}

unint64_t sub_24F329EE4()
{
  result = qword_27F23F418;
  if (!qword_27F23F418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F418);
  }

  return result;
}

unint64_t sub_24F329F5C()
{
  result = qword_27F23F428;
  if (!qword_27F23F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F428);
  }

  return result;
}

unint64_t sub_24F329FB4()
{
  result = qword_27F23F430;
  if (!qword_27F23F430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F430);
  }

  return result;
}

unint64_t sub_24F32A00C()
{
  result = qword_27F23F438;
  if (!qword_27F23F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F438);
  }

  return result;
}

uint64_t sub_24F32A074(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
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
      v13 = type metadata accessor for Player(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F32A1B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
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
      v13 = type metadata accessor for Player(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for AchievementsCountHeaderItemIntent(uint64_t a1)
{
  result = qword_27F23F440;
  if (!qword_27F23F440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F32A334(uint64_t a1)
{
  sub_24E7D231C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Player(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F32A3D0@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D837D0];
  v7 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v7;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x756F72676B636162;
  *(inited + 96) = 0xEA0000000000646ELL;
  v8 = type metadata accessor for AchievementsCountHeaderItemIntent(0);
  v9 = v8[5];
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  *(inited + 136) = sub_24E7D17FC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E7D14D8(v1 + v9, boxed_opaque_existential_1);
  strcpy((inited + 144), "gameBundleID");
  *(inited + 157) = 0;
  *(inited + 158) = -5120;
  v11 = (v1 + v8[6]);
  v12 = *v11;
  v13 = v11[1];
  *(inited + 184) = v6;
  *(inited + 192) = v7;
  *(inited + 160) = v12;
  *(inited + 168) = v13;
  *(inited + 200) = 0x726579616C70;
  *(inited + 208) = 0xE600000000000000;
  v14 = v8[7];
  *(inited + 240) = type metadata accessor for Player(0);
  *(inited + 248) = sub_24F32B050(&qword_27F215388, type metadata accessor for Player, &protocol conformance descriptor for Player);
  v15 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24F32B098(v1 + v14, v15, type metadata accessor for Player);
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x800000024FA46670;
  v16 = *(v1 + v8[8]);
  v17 = MEMORY[0x277D22598];
  *(inited + 296) = MEMORY[0x277D839B0];
  *(inited + 304) = v17;
  *(inited + 272) = v16;

  v18 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v19 = sub_24E80FFAC(v18);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v19;
  return result;
}

uint64_t sub_24F32A65C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F460, &unk_24F9E5D68);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F32AF9C();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for AchievementsCountHeaderItemIntent(0);
    v8[14] = 1;
    type metadata accessor for Page.Background(0);
    sub_24F32B050(&qword_27F21D920, type metadata accessor for Page.Background, &protocol conformance descriptor for Page.Background);
    sub_24F92CCF8();
    v8[13] = 2;
    sub_24F92CD08();
    v8[12] = 3;
    type metadata accessor for Player(0);
    sub_24F32B050(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
    sub_24F92CD48();
    v8[11] = 4;
    sub_24F92CD18();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F32A8E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v24 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v24);
  v26 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v22 - v5;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F450, &qword_24F9E5D60);
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = v22 - v7;
  v9 = type metadata accessor for AchievementsCountHeaderItemIntent(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F32AF9C();
  v12 = v28;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v25;
  v14 = v26;
  v33 = 0;
  *v11 = sub_24F92CC28();
  v11[1] = v15;
  v28 = v15;
  type metadata accessor for Page.Background(0);
  v32 = 1;
  sub_24F32B050(&qword_27F21D930, type metadata accessor for Page.Background, &protocol conformance descriptor for Page.Background);
  sub_24F92CC18();
  sub_24E7DF71C(v6, v11 + v9[5]);
  v31 = 2;
  v22[1] = 0;
  v16 = sub_24F92CC28();
  v17 = a1;
  v18 = (v11 + v9[6]);
  *v18 = v16;
  v18[1] = v19;
  v30 = 3;
  sub_24F32B050(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  sub_24F92CC68();
  sub_24E61C0A8(v14, v11 + v9[7]);
  v29 = 4;
  v21 = sub_24F92CC38();
  (*(v13 + 8))(v8, v27);
  *(v11 + v9[8]) = v21 & 1;
  sub_24F32B098(v11, v23, type metadata accessor for AchievementsCountHeaderItemIntent);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return sub_24F32AFF0(v11, type metadata accessor for AchievementsCountHeaderItemIntent);
}

uint64_t sub_24F32ADF0()
{
  v1 = *v0;
  v2 = 0x444965676170;
  v3 = 0x646E7542656D6167;
  v4 = 0x726579616C70;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x756F72676B636162;
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

uint64_t sub_24F32AE94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F32B218(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F32AEBC(uint64_t a1)
{
  v2 = sub_24F32AF9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F32AEF8(uint64_t a1)
{
  v2 = sub_24F32AF9C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F32AF9C()
{
  result = qword_27F23F458;
  if (!qword_27F23F458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F458);
  }

  return result;
}

uint64_t sub_24F32AFF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F32B050(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F32B098(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F32B114()
{
  result = qword_27F23F468;
  if (!qword_27F23F468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F468);
  }

  return result;
}

unint64_t sub_24F32B16C()
{
  result = qword_27F23F470;
  if (!qword_27F23F470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F470);
  }

  return result;
}

unint64_t sub_24F32B1C4()
{
  result = qword_27F23F478;
  if (!qword_27F23F478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F478);
  }

  return result;
}

uint64_t sub_24F32B218(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E7542656D6167 && a2 == 0xEC0000004449656CLL || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA46670 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_24F32B3F0()
{
  result = qword_27F23F500;
  if (!qword_27F23F500)
  {
    type metadata accessor for UpdateCrossUseConsentAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F500);
  }

  return result;
}

uint64_t sub_24F32B448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  updated = type metadata accessor for UpdateCrossUseConsentAction(0);
  v10 = *(updated - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](updated - 8);
  sub_24ED61DF4(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  sub_24F32C6B8(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24F9E5F20;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24F32B678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  v4[9] = swift_task_alloc();
  v6 = sub_24F921338();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F32B7DC, 0, 0);
}

uint64_t sub_24F32B7DC()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_24F92B098();
  [v1 setBool:0 forKey:v2];

  v3 = [objc_opt_self() shared];
  if (v3)
  {
    v6 = v3;
    [v3 setForceGamesCrossUseNotice_];

    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_24F32B924;
    v3 = v0[12];
    v4 = v0[10];
    v5 = v4;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x28217F228](v3, v4, v5);
}

uint64_t sub_24F32B924()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24F32BF38;
  }

  else
  {
    v2 = sub_24F32BA38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F32BA38()
{
  v1 = v0[9];
  sub_24E6364A0(v0[4], v1);
  v2 = type metadata accessor for Player(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[9];
    (*(v0[11] + 8))(v0[12], v0[10]);
    sub_24E601704(v3, &unk_27F23E1F0, &unk_24F9549C0);
    v4 = v0[2];
    v5 = *MEMORY[0x277D21CA8];
    v6 = sub_24F928AE8();
    (*(*(v6 - 8) + 104))(v4, v5, v6);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[9];
    v10 = v0[4];

    sub_24E71BF38(v9);
    sub_24F920FC8();
    v11 = *(v10 + *(type metadata accessor for UpdateCrossUseConsentAction(0) + 20));
    v12 = [objc_opt_self() ams:*MEMORY[0x277CEE160] sharedAccountStoreForMediaType:?];
    v13 = [v12 ams_activeiTunesAccount];
    v14 = [v13 ams_DSID];

    if (v14)
    {
      v15 = [v14 integerValue];
    }

    else
    {
      v15 = 0;
    }

    v16 = swift_task_alloc();
    v0[15] = v16;
    *v16 = v0;
    v16[1] = sub_24F32BCF0;
    v17 = v0[12];
    v18 = v0[8];
    v19 = v0[3];

    return sub_24F32C858(v17, v18, v11, v15, v14 == 0, v19);
  }
}

uint64_t sub_24F32BCF0()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_24F32BE48, 0, 0);
}

uint64_t sub_24F32BE48()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[2];
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_24F928AE8();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24F32BF38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F32BFB8()
{
  updated = type metadata accessor for UpdateCrossUseConsentAction(0);
  v2 = *(*(updated - 8) + 80);

  v3 = v0 + ((v2 + 32) & ~v2);
  v4 = type metadata accessor for Player(0);
  if (!(*(*(v4 - 1) + 48))(v3, 1, v4))
  {

    v5 = v4[6];
    v33 = sub_24F9289E8();
    v31 = (*(v33 - 8) + 8);
    v32 = *(v33 - 8);
    v30 = *v31;
    (*v31)(v3 + v5);

    if (*(v3 + v4[9] + 8) != 1)
    {
    }

    v6 = v3 + v4[13];
    v7 = type metadata accessor for CallProviderConversationHandleSet(0);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {
      v8 = type metadata accessor for CallProviderConversationHandle(0);
      v9 = *(*(v8 - 8) + 48);
      if (!v9(v6, 1, v8))
      {

        v10 = *(type metadata accessor for CallProvider(0) + 24);
        if (!(*(v32 + 48))(v6 + v10, 1, v33))
        {
          (v30)(v6 + v10, v33);
        }
      }

      v11 = v6 + *(v7 + 20);
      if (!v9(v11, 1, v8))
      {

        v12 = *(type metadata accessor for CallProvider(0) + 24);
        if (!(*(v32 + 48))(v11 + v12, 1, v33))
        {
          (v30)(v11 + v12, v33);
        }
      }
    }

    if (*(v3 + v4[15] + 8))
    {
    }

    v13 = v3 + v4[16];
    PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
    if (!(*(*(PlayedTogetherInfo - 8) + 48))(v13, 1, PlayedTogetherInfo))
    {

      v15 = type metadata accessor for Game(0);
      (v30)(v13 + v15[18], v33);
      v16 = v15[19];
      if (!(*(v32 + 48))(v13 + v16, 1, v33))
      {
        (v30)(v13 + v16, v33);
      }

      v17 = v15[21];
      v18 = sub_24F920818();
      v19 = *(v18 - 8);
      if (!(*(v19 + 48))(v13 + v17, 1, v18))
      {
        (*(v19 + 8))(v13 + v17, v18);
      }
    }

    v20 = v3 + v4[17];
    ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
    if (!(*(*(ChallengeInfo - 8) + 48))(v20, 1, ChallengeInfo))
    {

      v22 = type metadata accessor for Game(0);
      (v30)(v20 + v22[18], v33);
      v23 = v22[19];
      if (!(*(v32 + 48))(v20 + v23, 1, v33))
      {
        (v30)(v20 + v23, v33);
      }

      v24 = v22[21];
      v25 = sub_24F920818();
      v26 = *(v25 - 8);
      if (!(*(v26 + 48))(v20 + v24, 1, v25))
      {
        (*(v26 + 8))(v20 + v24, v25);
      }
    }
  }

  v27 = *(updated + 24);
  v28 = sub_24F928AD8();
  (*(*(v28 - 8) + 8))(v3 + v27, v28);

  return swift_deallocObject();
}

uint64_t sub_24F32C6B8(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateCrossUseConsentAction(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_24F32C71C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for UpdateCrossUseConsentAction(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24F32B678(a1, v7, v1 + v6, v4);
}

uint64_t sub_24F32C810()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F32C858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 120) = a4;
  *(v6 + 128) = a6;
  *(v6 + 65) = a5;
  *(v6 + 104) = a2;
  *(v6 + 112) = a3;
  *(v6 + 96) = a1;
  v7 = sub_24F921668();
  *(v6 + 136) = v7;
  *(v6 + 144) = *(v7 - 8);
  *(v6 + 152) = swift_task_alloc();
  v8 = sub_24F920988();
  *(v6 + 160) = v8;
  *(v6 + 168) = *(v8 - 8);
  *(v6 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F32C980, 0, 0);
}

uint64_t sub_24F32C980(uint64_t a1)
{
  if (*(v1 + 65))
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v2 = sub_24F9220D8();
    __swift_project_value_buffer(v2, qword_27F39E8E0);
    v3 = sub_24F9220B8();
    v4 = sub_24F92BDB8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24E5DD000, v3, v4, "UpdateCrossUseConsentActionImplementation: linkedDSID should not be nil. Is App Store signed in?", v5, 2u);
      MEMORY[0x2530542D0](v5, -1, -1);
    }
  }

  sub_24F9212E8();
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v6);
  sub_24F920968();
  v8 = swift_task_alloc();
  *(v1 + 184) = v8;
  *v8 = v1;
  v8[1] = sub_24F32CB4C;
  v9 = *(v1 + 176);
  v10 = *(v1 + 104);

  return MEMORY[0x282165200](v9, v10, v6, v7);
}

uint64_t sub_24F32CB4C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  (*(v2[21] + 8))(v2[22], v2[20]);
  if (v0)
  {
    v3 = sub_24F32D8E0;
  }

  else
  {
    v3 = sub_24F32CCB4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24F32CCB4()
{
  v33 = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E8E0);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 65);
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32[0] = v8;
    *v7 = 134218242;
    *(v7 + 4) = v6;
    *(v7 + 12) = 2080;
    *(v0 + 72) = v5;
    *(v0 + 80) = v4 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390, &qword_24F93FC50);
    v9 = sub_24F92B188();
    v11 = sub_24E7620D4(v9, v10, v32);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_24E5DD000, v2, v3, "UpdateCrossUseConsentActionImplementation: Acknowledged Cross Use Privacy (version %ld, linkedDSID %s)", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v12 = *(v0 + 192);
  *(v0 + 200) = sub_24F920FD8();
  *(v0 + 208) = v13;
  if (v12)
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v1, qword_27F39E8E0);
    v14 = v12;
    v15 = sub_24F9220B8();
    v16 = sub_24F92BDB8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 65);
      v19 = *(v0 + 112);
      v18 = *(v0 + 120);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32[0] = v22;
      *v20 = 134218498;
      *(v20 + 4) = v19;
      *(v20 + 12) = 2080;
      *(v0 + 56) = v18;
      *(v0 + 64) = v17 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390, &qword_24F93FC50);
      v23 = sub_24F92B188();
      v25 = sub_24E7620D4(v23, v24, v32);

      *(v20 + 14) = v25;
      *(v20 + 22) = 2112;
      v26 = v12;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 24) = v27;
      *v21 = v27;
      _os_log_impl(&dword_24E5DD000, v15, v16, "UpdateCrossUseConsentActionImplementation: Failed to acknowledge Cross Use Privacy (version %ld, linkedDSID %s), reason: %@", v20, 0x20u);
      sub_24E601704(v21, &qword_27F227B20, &qword_24F944D30);
      MEMORY[0x2530542D0](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x2530542D0](v22, -1, -1);
      MEMORY[0x2530542D0](v20, -1, -1);
    }

    else
    {
    }

    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F518, &qword_24F9E5F38);
    v29 = swift_task_alloc();
    *(v0 + 216) = v29;
    *v29 = v0;
    v29[1] = sub_24F32D104;

    return MEMORY[0x28217F228](v0 + 88, v28, v28);
  }
}

uint64_t sub_24F32D104()
{
  *(*v1 + 224) = v0;

  if (v0)
  {

    v2 = sub_24F32DB3C;
  }

  else
  {
    v2 = sub_24F32D220;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F32D220()
{
  v1 = v0[11];
  v0[29] = v1;
  swift_unknownObjectRetain();
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_24F32D2D0;
  v3 = v0[19];

  return MEMORY[0x282140780](v3, v1);
}

uint64_t sub_24F32D2D0()
{
  v2 = *v1;
  v2[31] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24F32DD90, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[32] = v3;
    *v3 = v2;
    v3[1] = sub_24F32D494;
    v4 = v2[25];
    v5 = v2[26];
    v6 = v2[19];

    return sub_24F567434(v6, v4, v5, 1802398060, 0xE400000000000000, 0x6C7070612E6D6F63, 0xEF73656D61672E65);
  }
}

uint64_t sub_24F32D494()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_24F32D664;
  }

  else
  {
    v2 = sub_24F32D5C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F32D5C8()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24F32D664()
{
  v23 = v0;
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 264);
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v5 = sub_24F9220D8();
  __swift_project_value_buffer(v5, qword_27F39E8E0);
  v6 = v4;
  v7 = sub_24F9220B8();
  v8 = sub_24F92BDB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 65);
    v11 = *(v0 + 112);
    v10 = *(v0 + 120);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v12 = 134218498;
    *(v12 + 4) = v11;
    *(v12 + 12) = 2080;
    *(v0 + 56) = v10;
    *(v0 + 64) = v9 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390, &qword_24F93FC50);
    v15 = sub_24F92B188();
    v17 = sub_24E7620D4(v15, v16, &v22);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2112;
    v18 = v4;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v19;
    *v13 = v19;
    _os_log_impl(&dword_24E5DD000, v7, v8, "UpdateCrossUseConsentActionImplementation: Failed to acknowledge Cross Use Privacy (version %ld, linkedDSID %s), reason: %@", v12, 0x20u);
    sub_24E601704(v13, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x2530542D0](v14, -1, -1);
    MEMORY[0x2530542D0](v12, -1, -1);
  }

  else
  {
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_24F32D8E0()
{
  v20 = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 192);
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 65);
    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 134218498;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    *(v0 + 56) = v7;
    *(v0 + 64) = v6 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390, &qword_24F93FC50);
    v12 = sub_24F92B188();
    v14 = sub_24E7620D4(v12, v13, &v19);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2112;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v16;
    *v10 = v16;
    _os_log_impl(&dword_24E5DD000, v4, v5, "UpdateCrossUseConsentActionImplementation: Failed to acknowledge Cross Use Privacy (version %ld, linkedDSID %s), reason: %@", v9, 0x20u);
    sub_24E601704(v10, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_24F32DB3C()
{
  v20 = v0;
  v1 = *(v0 + 224);
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 65);
    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 134218498;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    *(v0 + 56) = v7;
    *(v0 + 64) = v6 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390, &qword_24F93FC50);
    v12 = sub_24F92B188();
    v14 = sub_24E7620D4(v12, v13, &v19);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2112;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v16;
    *v10 = v16;
    _os_log_impl(&dword_24E5DD000, v4, v5, "UpdateCrossUseConsentActionImplementation: Failed to acknowledge Cross Use Privacy (version %ld, linkedDSID %s), reason: %@", v9, 0x20u);
    sub_24E601704(v10, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_24F32DD90()
{
  v20 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 248);
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 65);
    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 134218498;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    *(v0 + 56) = v7;
    *(v0 + 64) = v6 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390, &qword_24F93FC50);
    v12 = sub_24F92B188();
    v14 = sub_24E7620D4(v12, v13, &v19);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2112;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v16;
    *v10 = v16;
    _os_log_impl(&dword_24E5DD000, v4, v5, "UpdateCrossUseConsentActionImplementation: Failed to acknowledge Cross Use Privacy (version %ld, linkedDSID %s), reason: %@", v9, 0x20u);
    sub_24E601704(v10, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_24F32E01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F32E160(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for LeaderboardEntryTable(uint64_t a1)
{
  result = qword_27F23F520;
  if (!qword_27F23F520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F32E2DC(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24F32E420(319, &qword_27F23F530, type metadata accessor for LeaderboardEntryTableRow, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Player(319);
      if (v3 <= 0x3F)
      {
        sub_24E61C8D4(319);
        if (v4 <= 0x3F)
        {
          sub_24F32E420(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24F32E420(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_24F32E484(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F650, &qword_24F9E6238);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F33213C();
  sub_24F92D128();
  LOBYTE(v11) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v2)
  {
    v11 = *(v3 + 40);
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F5F8, &qword_24F9E61D0);
    sub_24F332190(&qword_27F23F658, &qword_27F23F660, &unk_24F954EA0, MEMORY[0x277D83948]);
    sub_24F92CD48();
    LOBYTE(v11) = *(v3 + 48);
    HIBYTE(v10) = 2;
    sub_24F33239C();
    sub_24F92CD48();
    LOBYTE(v11) = *(v3 + 49);
    HIBYTE(v10) = 3;
    sub_24F3323F0();
    sub_24F92CD48();
    type metadata accessor for LeaderboardEntryTable(0);
    LOBYTE(v11) = 4;
    type metadata accessor for Player(0);
    sub_24F332444(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
    sub_24F92CD48();
    LOBYTE(v11) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    LOBYTE(v11) = 6;
    sub_24F929608();
    sub_24F332444(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F32E898@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v30 = v28 - v4;
  v31 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v31);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F620, &unk_24F9E6228);
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v28 - v8;
  v10 = type metadata accessor for LeaderboardEntryTable(0);
  MEMORY[0x28223BE20](v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v12[*(v13 + 36)];
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0;
  v36 = v14;
  sub_24E61DA68(&v39, v14, qword_27F21B590, &unk_24F93BE30);
  v15 = *(v10 + 40);
  v16 = sub_24F929608();
  v17 = *(*(v16 - 8) + 56);
  v38 = v15;
  v17(&v12[v15], 1, 1, v16);
  v18 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24F33213C();
  v34 = v9;
  v19 = v35;
  sub_24F92D108();
  if (v19)
  {
    v22 = v36;
    __swift_destroy_boxed_opaque_existential_1(v37);
    sub_24E601704(v22, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(&v12[v38], &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v35 = v6;
    v28[1] = v16;
    v20 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v42 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    v21 = v33;
    sub_24F92CC68();
    v23 = v40;
    *v12 = v39;
    *(v12 + 1) = v23;
    *(v12 + 4) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F5F8, &qword_24F9E61D0);
    v42 = 1;
    sub_24F332190(&qword_27F23F630, &qword_27F23F638, &unk_24F954EC8, MEMORY[0x277D83978]);
    sub_24F92CC68();
    v24 = v36;
    *(v12 + 5) = v39;
    v42 = 2;
    sub_24F33222C();
    sub_24F92CC68();
    v12[48] = v39;
    v42 = 3;
    sub_24F332280();
    sub_24F92CC68();
    v12[49] = v39;
    LOBYTE(v39) = 4;
    sub_24F332444(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
    v25 = v35;
    sub_24F92CC68();
    sub_24F3322D4(v25, &v12[*(v10 + 32)], type metadata accessor for Player);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v42 = 5;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v39, v24, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v39) = 6;
    sub_24F332444(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v26 = v30;
    sub_24F92CC18();
    (*(v20 + 8))(v34, v21);
    sub_24E61DA68(v26, &v12[v38], &qword_27F213E68, &unk_24F93BC80);
    sub_24F332064(v12, v29, type metadata accessor for LeaderboardEntryTable);
    __swift_destroy_boxed_opaque_existential_1(v37);
    return sub_24F33233C(v12, type metadata accessor for LeaderboardEntryTable);
  }
}

unint64_t sub_24F32F020()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6575676573;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x706F6353656D6974;
  if (v1 != 3)
  {
    v4 = 0x616C506C61636F6CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x736D657469;
  if (v1 != 1)
  {
    v5 = 0x6353726579616C70;
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

uint64_t sub_24F32F100@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F3325E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F32F128(uint64_t a1)
{
  v2 = sub_24F33213C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F32F164(uint64_t a1)
{
  v2 = sub_24F33213C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F32F220()
{
  result = qword_27F23F538;
  if (!qword_27F23F538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F538);
  }

  return result;
}

uint64_t sub_24F32F274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a3;
  v30 = a2;
  v32 = a1;
  v36 = a5;
  v6 = type metadata accessor for LeaderboardEntryTable(0);
  v37 = *(v6 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v35 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24F924098();
  v8 = *(v34 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v34);
  v10 = sub_24F925068();
  MEMORY[0x28223BE20](v10);
  v33 = sub_24F924C98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F550, &qword_24F9E6170);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24F93DE60;
  sub_24F925058();
  v43 = v11;
  sub_24F332444(&qword_27F23F558, MEMORY[0x277CE0428], MEMORY[0x277CE0440]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F560, &qword_24F9E6178);
  sub_24E602068(&qword_27F23F568, &qword_27F23F560, &qword_24F9E6178, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  v39 = v30;
  v40 = v31 & 1;
  v12 = a4;
  v41 = a4;
  v13 = v32;
  v42 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F570, &qword_24F9E6180);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F578, &qword_24F9E6188);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F580, &qword_24F9E6190);
  v16 = sub_24F331478();
  v17 = sub_24F331670();
  v43 = v15;
  v44 = &type metadata for LeaderboardEntryPlayerScopeOption;
  v45 = v16;
  v46 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_24F3316C4();
  v43 = v14;
  v44 = &type metadata for LeaderboardEntryTimeScopeOption;
  v45 = OpaqueTypeConformance2;
  v46 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v36;
  sub_24F9233F8();
  v21 = v13;
  v22 = v34;
  (*(v8 + 16))(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v34);
  v23 = v35;
  sub_24F332064(v12, v35, type metadata accessor for LeaderboardEntryTable);
  v24 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v25 = (v9 + *(v37 + 80) + v24) & ~*(v37 + 80);
  v26 = swift_allocObject();
  (*(v8 + 32))(v26 + v24, &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  sub_24F3322D4(v23, v26 + v25, type metadata accessor for LeaderboardEntryTable);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F5E0, &qword_24F9E61B8);
  v28 = (v20 + *(result + 36));
  *v28 = sub_24F33283C;
  v28[1] = v26;
  v28[2] = 0;
  v28[3] = 0;
  return result;
}

uint64_t sub_24F32F73C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a4;
  v54 = a5;
  v9 = type metadata accessor for LeaderboardEntryTable(0);
  v49 = *(v9 - 8);
  v55 = *(v49 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F924098();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F580, &qword_24F9E6190);
  v17 = *(v16 - 8);
  v50 = v16;
  v51 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F578, &qword_24F9E6188);
  v21 = *(v20 - 8);
  v52 = v20;
  v53 = v21;
  MEMORY[0x28223BE20](v20);
  v56 = &v39 - v22;
  v57 = a1;
  v58 = a2 & 1;
  v45 = a3;
  v59 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F598, &qword_24F9E6198);
  sub_24F331508();
  sub_24F9272B8();
  LOBYTE(v60) = *(a3 + 48);
  v47 = *(v13 + 16);
  v42 = v12;
  v47(v15, a4, v12);
  v46 = type metadata accessor for LeaderboardEntryTable;
  v40 = v11;
  sub_24F332064(a3, v11, type metadata accessor for LeaderboardEntryTable);
  v23 = *(v13 + 80);
  v24 = (v23 + 16) & ~v23;
  v25 = *(v49 + 80);
  v26 = (v14 + v25 + v24) & ~v25;
  v49 = v23 | v25;
  v27 = swift_allocObject();
  v44 = *(v13 + 32);
  v44(v27 + v24, v15, v12);
  v43 = type metadata accessor for LeaderboardEntryTable;
  sub_24F3322D4(v11, v27 + v26, type metadata accessor for LeaderboardEntryTable);
  v41 = sub_24F331478();
  v28 = sub_24F331670();
  v29 = v50;
  sub_24F926AC8();

  v30 = v29;
  (*(v51 + 8))(v19, v29);
  v31 = v45;
  v64[0] = *(v45 + 49);
  v32 = v42;
  v47(v15, v48, v42);
  v33 = v31;
  v34 = v40;
  sub_24F332064(v33, v40, v46);
  v35 = swift_allocObject();
  v44(v35 + v24, v15, v32);
  sub_24F3322D4(v34, v35 + v26, v43);
  v60 = v30;
  v61 = &type metadata for LeaderboardEntryPlayerScopeOption;
  v62 = v41;
  v63 = v28;
  swift_getOpaqueTypeConformance2();
  sub_24F3316C4();
  v36 = v52;
  v37 = v56;
  sub_24F926AC8();

  return (*(v53 + 8))(v37, v36);
}

uint64_t sub_24F32FCA0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F5E8, &qword_24F9E61C0);
  MEMORY[0x28223BE20](v53);
  v52 = &v46 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F5B8, &qword_24F9E61A8);
  v8 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v10 = &v46 - v9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F5F0, &qword_24F9E61C8);
  MEMORY[0x28223BE20](v55);
  v56 = &v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215FD0, &qword_24F9415F0);
  v50 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v49 = &v46 - v13;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238340, &unk_24F9C3820);
  MEMORY[0x28223BE20](v48);
  v51 = &v46 - v14;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F5A8, &qword_24F9E61A0);
  MEMORY[0x28223BE20](v54);
  v16 = &v46 - v15;
  v17 = sub_24F924848();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    sub_24F92BDC8();
    v21 = sub_24F9257A8();
    v47 = v16;
    v22 = v10;
    v23 = v12;
    v24 = v8;
    v25 = a3;
    v26 = v21;
    sub_24F921FD8();

    a3 = v25;
    v8 = v24;
    v12 = v23;
    v10 = v22;
    v16 = v47;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(a1, 0);
    (*(v18 + 8))(v20, v17);
    LOBYTE(a1) = v59;
  }

  if (a1 == 2 || (a1 & 1) == 0)
  {
    *&v59 = *(a3 + 40);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F5F8, &qword_24F9E61D0);
    sub_24E602068(&qword_27F23F600, &qword_27F23F5F8, &qword_24F9E61D0, MEMORY[0x277D83980]);
    sub_24F921BA8();
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F5C8, &qword_24F9E61B0);
    sub_24E602068(&qword_27F23F608, &qword_27F23F5E8, &qword_24F9E61C0, MEMORY[0x277D7EC38]);
    sub_24E602068(&qword_27F23F5C0, &qword_27F23F5C8, &qword_24F9E61B0, MEMORY[0x277CE1148]);
    sub_24F927228();
    v45 = v57;
    (*(v8 + 16))(v56, v10, v57);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F23F5A0, &qword_27F23F5A8, &qword_24F9E61A0, MEMORY[0x277CE1138]);
    sub_24F3315C0();
    sub_24F924E28();
    return (*(v8 + 8))(v10, v45);
  }

  else
  {
    *v16 = sub_24F9249A8();
    *(v16 + 1) = 0;
    v16[16] = 1;
    v27 = v49;
    sub_24F923798();
    sub_24F927618();
    v28 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F610, &unk_24F9E6210) + 44)];
    sub_24F9242E8();
    v29 = v51;
    (*(v50 + 32))(v51, v27, v12);
    v30 = (v29 + *(v48 + 36));
    v31 = v64;
    v30[4] = v63;
    v30[5] = v31;
    v30[6] = v65;
    v32 = v60;
    *v30 = v59;
    v30[1] = v32;
    v33 = v62;
    v30[2] = v61;
    v30[3] = v33;
    v34 = sub_24F925868();
    sub_24F923318();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    sub_24F331FF4(v29, v28);
    v43 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211A80, &qword_24F935578) + 36);
    *v43 = v34;
    *(v43 + 8) = v36;
    *(v43 + 16) = v38;
    *(v43 + 24) = v40;
    *(v43 + 32) = v42;
    *(v43 + 40) = 0;
    sub_24E60169C(v16, v56, &qword_27F23F5A8, &qword_24F9E61A0);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F23F5A0, &qword_27F23F5A8, &qword_24F9E61A0, MEMORY[0x277CE1138]);
    sub_24F3315C0();
    sub_24F924E28();
    return sub_24E601704(v16, &qword_27F23F5A8, &qword_24F9E61A0);
  }
}

double sub_24F33049C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a1;
  v36 = a3;
  v34 = sub_24F929888();
  v4 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220208, &qword_24F9629D0);
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F5C8, &qword_24F9E61B0);
  MEMORY[0x28223BE20](v31);
  v14 = &v29 - v13;
  v15 = type metadata accessor for LeaderboardEntryTableRow(0);
  v42[3] = v15;
  v42[4] = sub_24F332444(&qword_27F21ACA8, type metadata accessor for LeaderboardEntryTableRow, &unk_24F954EF0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
  sub_24F332064(a2, boxed_opaque_existential_1, type metadata accessor for LeaderboardEntryTableRow);
  type metadata accessor for GSKComponentContentBuilder(0);
  sub_24F332444(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder, &unk_24F9FB114);
  v40 = sub_24F923598();
  v41 = v17 & 1;
  v35 = a2;
  v38 = 0u;
  v39 = 0u;
  memset(v37, 0, sizeof(v37));

  sub_24F929828();

  sub_24E601704(v37, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v38, &qword_27F2129B0, &unk_24F945320);
  *&v37[0] = v30;
  sub_24E9B5BEC();
  v18 = sub_24F92C638();
  *(&v39 + 1) = MEMORY[0x277D837D0];
  *&v38 = v18;
  *(&v38 + 1) = v19;
  sub_24F929868();
  v20 = *(v4 + 8);
  v21 = v6;
  v22 = v34;
  v20(v21, v34);
  sub_24E601704(&v38, &qword_27F2129B0, &unk_24F945320);
  sub_24E66C1E0();
  sub_24F925EE8();
  v20(v9, v22);
  sub_24E88F154(&v40);
  v23 = v35 + *(v15 + 20);
  v24 = (v23 + *(type metadata accessor for LeaderboardEntry(0) + 20));
  v26 = *v24;
  v25 = v24[1];
  (*(v32 + 32))(v14, v12, v33);
  v27 = &v14[*(v31 + 52)];
  *v27 = v26;
  *(v27 + 1) = v25;
  sub_24F3320CC(v14, v36);

  return result;
}

double sub_24F3308E0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F618, &qword_24F9E6220) + 48);

  return sub_24F33049C(v3, v4, a2);
}

uint64_t sub_24F3309AC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v5 = type metadata accessor for LeaderboardEntryTable(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = *v2;
  v9 = *(v2 + 8);
  sub_24F332064(a1, &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LeaderboardEntryTable);
  v10 = (*(v6 + 80) + 25) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v9;
  sub_24F3322D4(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for LeaderboardEntryTable);
  *a2 = sub_24F3313E0;
  a2[1] = v11;
  return sub_24E62AB1C(v8, v9);
}

uint64_t sub_24F330AF0(uint64_t a1)
{
  sub_24E62AB1C(*v1, *(v1 + 8));
  sub_24F32F220();
  return sub_24F9218E8();
}

unint64_t sub_24F330B9C()
{
  result = qword_27F23F548;
  if (!qword_27F23F548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F548);
  }

  return result;
}

uint64_t sub_24F330C9C()
{
  v1 = type metadata accessor for LeaderboardEntryTable(0);
  v2 = *(*(v1 - 1) + 80);
  sub_24E62A5EC(*(v0 + 16), *(v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + ((v2 + 25) & ~v2)));

  v37 = v0 + ((v2 + 25) & ~v2);
  v3 = v37 + v1[8];

  v4 = type metadata accessor for Player(0);
  v5 = v4[6];
  v6 = sub_24F9289E8();
  v38 = *(v6 - 8);
  v36 = *(v38 + 8);
  v36(v3 + v5, v6);

  if (*(v3 + v4[9] + 8) != 1)
  {
  }

  v7 = v3 + v4[13];
  v8 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v34 = v1;
    v9 = type metadata accessor for CallProviderConversationHandle(0);
    v10 = *(*(v9 - 8) + 48);
    if (!v10(v7, 1, v9))
    {

      v11 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v38 + 48))(v7 + v11, 1, v6))
      {
        v36(v7 + v11, v6);
      }
    }

    v12 = v7 + *(v8 + 20);
    v13 = v10(v12, 1, v9);
    v1 = v34;
    if (!v13)
    {

      v14 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v38 + 48))(v12 + v14, 1, v6))
      {
        v36(v12 + v14, v6);
      }
    }
  }

  if (*(v3 + v4[15] + 8))
  {
  }

  v15 = v3 + v4[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v15, 1, PlayedTogetherInfo))
  {
    v35 = v1;

    v17 = type metadata accessor for Game(0);
    v36(v15 + v17[18], v6);
    v18 = v17[19];
    if (!(*(v38 + 48))(v15 + v18, 1, v6))
    {
      v36(v15 + v18, v6);
    }

    v19 = v17[21];
    v20 = sub_24F920818();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v15 + v19, 1, v20))
    {
      (*(v21 + 8))(v15 + v19, v20);
    }

    v1 = v35;
  }

  v22 = v3 + v4[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v22, 1, ChallengeInfo))
  {

    v24 = type metadata accessor for Game(0);
    v36(v22 + v24[18], v6);
    v25 = v24[19];
    if (!(*(v38 + 48))(v22 + v25, 1, v6))
    {
      v36(v22 + v25, v6);
    }

    v26 = v24[21];
    v27 = sub_24F920818();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v22 + v26, 1, v27))
    {
      (*(v28 + 8))(v22 + v26, v27);
    }
  }

  v29 = (v37 + v1[9]);
  if (v29[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v30 = v1[10];
  v31 = sub_24F929608();
  v32 = *(v31 - 8);
  if (!(*(v32 + 48))(v37 + v30, 1, v31))
  {
    (*(v32 + 8))(v37 + v30, v31);
  }

  return swift_deallocObject();
}

uint64_t sub_24F3313E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LeaderboardEntryTable(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 25) & ~*(v5 + 80));

  return sub_24F32F274(a1, v6, v7, v8, a2);
}

unint64_t sub_24F331478()
{
  result = qword_27F23F588;
  if (!qword_27F23F588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F580, &qword_24F9E6190);
    sub_24F331508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F588);
  }

  return result;
}

unint64_t sub_24F331508()
{
  result = qword_27F23F590;
  if (!qword_27F23F590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F598, &qword_24F9E6198);
    sub_24E602068(&qword_27F23F5A0, &qword_27F23F5A8, &qword_24F9E61A0, MEMORY[0x277CE1138]);
    sub_24F3315C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F590);
  }

  return result;
}

unint64_t sub_24F3315C0()
{
  result = qword_27F23F5B0;
  if (!qword_27F23F5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F5B8, &qword_24F9E61A8);
    sub_24E602068(&qword_27F23F5C0, &qword_27F23F5C8, &qword_24F9E61B0, MEMORY[0x277CE1148]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F5B0);
  }

  return result;
}

unint64_t sub_24F331670()
{
  result = qword_27F23F5D0;
  if (!qword_27F23F5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F5D0);
  }

  return result;
}

unint64_t sub_24F3316C4()
{
  result = qword_27F23F5D8;
  if (!qword_27F23F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F5D8);
  }

  return result;
}

uint64_t sub_24F331730()
{
  v1 = *(sub_24F924098() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for LeaderboardEntryTable(0) - 8);
  return sub_24F330944(v0 + v2, v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t objectdestroy_9Tm_2()
{
  v1 = v0;
  v2 = sub_24F924098();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for LeaderboardEntryTable(0);
  v44 = *(*(v6 - 8) + 80);
  (*(v3 + 8))(v1 + v4, v2);
  v43 = (v4 + v5 + v44) & ~v44;
  __swift_destroy_boxed_opaque_existential_1((v1 + v43));

  v41 = v6;
  v42 = v1 + v43;
  v7 = v1 + v43 + *(v6 + 32);

  v8 = type metadata accessor for Player(0);
  v9 = v8[6];
  v10 = sub_24F9289E8();
  v45 = *(v10 - 8);
  v11 = *(v45 + 8);
  v11(v7 + v9, v10);

  if (*(v7 + v8[9] + 8) != 1)
  {
  }

  v12 = v7 + v8[13];
  v13 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v40 = v11;
    v14 = type metadata accessor for CallProviderConversationHandle(0);
    v15 = *(*(v14 - 8) + 48);
    if (!v15(v12, 1, v14))
    {

      v16 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v45 + 48))(v12 + v16, 1, v10))
      {
        v40(v12 + v16, v10);
      }
    }

    v17 = v12 + *(v13 + 20);
    v18 = v15(v17, 1, v14);
    v11 = v40;
    if (!v18)
    {

      v19 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v45 + 48))(v17 + v19, 1, v10))
      {
        v40(v17 + v19, v10);
      }
    }
  }

  if (*(v7 + v8[15] + 8))
  {
  }

  v20 = v7 + v8[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v20, 1, PlayedTogetherInfo))
  {

    v22 = type metadata accessor for Game(0);
    v11(v20 + v22[18], v10);
    v23 = v22[19];
    if (!(*(v45 + 48))(v20 + v23, 1, v10))
    {
      v11(v20 + v23, v10);
    }

    v24 = v11;

    v25 = v22[21];
    v26 = sub_24F920818();
    v27 = *(v26 - 8);
    if (!(*(v27 + 48))(v20 + v25, 1, v26))
    {
      (*(v27 + 8))(v20 + v25, v26);
    }

    v11 = v24;
  }

  v28 = v7 + v8[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v28, 1, ChallengeInfo))
  {

    v30 = type metadata accessor for Game(0);
    v11(v28 + v30[18], v10);
    v31 = v30[19];
    if (!(*(v45 + 48))(v28 + v31, 1, v10))
    {
      v11(v28 + v31, v10);
    }

    v32 = v30[21];
    v33 = sub_24F920818();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v28 + v32, 1, v33))
    {
      (*(v34 + 8))(v28 + v32, v33);
    }
  }

  v35 = (v42 + *(v41 + 36));
  if (v35[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v36 = *(v41 + 40);
  v37 = sub_24F929608();
  v38 = *(v37 - 8);
  if (!(*(v38 + 48))(v42 + v36, 1, v37))
  {
    (*(v38 + 8))(v42 + v36, v37);
  }

  return swift_deallocObject();
}

double sub_24F331F9C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1, v5, &qword_27F213F18, &qword_24F93BE20);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_24F331FF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238340, &unk_24F9C3820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F332064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F3320CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F5C8, &qword_24F9E61B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F33213C()
{
  result = qword_27F23F628;
  if (!qword_27F23F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F628);
  }

  return result;
}

uint64_t sub_24F332190(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F5F8, &qword_24F9E61D0);
    sub_24F332444(a2, type metadata accessor for LeaderboardEntryTableRow, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F33222C()
{
  result = qword_27F23F640;
  if (!qword_27F23F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F640);
  }

  return result;
}

unint64_t sub_24F332280()
{
  result = qword_27F23F648;
  if (!qword_27F23F648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F648);
  }

  return result;
}

uint64_t sub_24F3322D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F33233C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F33239C()
{
  result = qword_27F23F668;
  if (!qword_27F23F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F668);
  }

  return result;
}

unint64_t sub_24F3323F0()
{
  result = qword_27F23F670;
  if (!qword_27F23F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F670);
  }

  return result;
}

uint64_t sub_24F332444(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F3324E4()
{
  result = qword_27F23F688;
  if (!qword_27F23F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F688);
  }

  return result;
}

unint64_t sub_24F33253C()
{
  result = qword_27F23F690;
  if (!qword_27F23F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F690);
  }

  return result;
}

unint64_t sub_24F332594()
{
  result = qword_27F23F698;
  if (!qword_27F23F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F698);
  }

  return result;
}

uint64_t sub_24F3325E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6353726579616C70 && a2 == 0xEB0000000065706FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x706F6353656D6974 && a2 == 0xE900000000000065 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616C506C61636F6CLL && a2 == 0xEB00000000726579 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_24F332858(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F332928(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SignInGameCenterView(uint64_t a1)
{
  result = qword_27F23F6A0;
  if (!qword_27F23F6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F332A24(uint64_t a1)
{
  sub_24F264544(319);
  if (v1 <= 0x3F)
  {
    sub_24F2645E8(319, &qword_27F218170, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_24E6CAE80();
      if (v3 <= 0x3F)
      {
        sub_24F332C10(319, &qword_27F218180, &unk_27F22C070, &unk_24F947CB0, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24F928FD8();
          if (v5 <= 0x3F)
          {
            sub_24F332C10(319, &qword_27F254DC0, &qword_27F215598, &qword_24F945EF0, MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_24F2645E8(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_24F332C10(319, &qword_27F22CC10, &unk_27F237670, &qword_24F989C80, MEMORY[0x277CE10B8]);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_24F332C10(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

double sub_24F332C90(uint64_t a1)
{
  v1 = sub_24F927618();
  v3 = v2;
  v4 = sub_24F9258D8();
  result = 12.0;
  xmmword_27F39E330 = xmmword_24F947C50;
  unk_27F39E340 = xmmword_24F9DA310;
  *&xmmword_27F39E350 = 0;
  *(&xmmword_27F39E350 + 1) = v1;
  qword_27F39E360 = v3;
  unk_27F39E368 = v4;
  return result;
}

double sub_24F332CE0(uint64_t a1)
{
  v1 = sub_24F927618();
  v3 = v2;
  v4 = sub_24F9258D8();
  result = 12.0;
  xmmword_27F39E370 = xmmword_24F947C70;
  unk_27F39E380 = xmmword_24F9DA310;
  *&xmmword_27F39E390 = 0;
  *(&xmmword_27F39E390 + 1) = v1;
  qword_27F39E3A0 = v3;
  unk_27F39E3A8 = v4;
  return result;
}

double sub_24F332D30@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v74 = a1;
  v3 = type metadata accessor for SignInGameCenterView(0);
  v4 = v3 - 8;
  v62 = *(v3 - 8);
  v61 = *(v62 + 64);
  MEMORY[0x28223BE20](v3);
  v59 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F6B0, &qword_24F9E63D0);
  MEMORY[0x28223BE20](v66);
  v7 = v58 - v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F6B8, &qword_24F9E63D8);
  v73 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = v58 - v8;
  v9 = type metadata accessor for ProgressPerformAction(0);
  MEMORY[0x28223BE20](v9);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255040, &unk_24F93B590);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24F93DE60;
  sub_24E615E00((v1 + 6), v12 + 32);
  v13 = v1 + *(v4 + 64);
  LODWORD(v78) = *v13;
  v77 = *(v13 + 1);
  LOBYTE(v87) = v78;
  v88 = v77;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F58();
  v14 = v81;
  v15 = v82;
  v16 = (v1 + *(v4 + 68));
  v18 = *v16;
  v17 = v16[1];
  v70 = v18;
  v69 = v17;
  v87 = v18;
  v88 = v17;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCE8, &unk_24F9E63E0);
  sub_24F926F58();
  v65 = v81;
  v19 = v82;
  sub_24F928A98();
  *v11 = v12;
  *(v11 + 8) = v14;
  v11[24] = v15;
  *(v11 + 2) = v65;
  *(v11 + 6) = v19;
  v67 = v11;
  v20 = v2[12];
  *&v65 = v2[11];
  v64 = v20;

  v63 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  *(v7 + 6) = v9;
  *(v7 + 7) = sub_24E6CF670(&qword_27F2162F0, type metadata accessor for ProgressPerformAction, &unk_24F975958);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7 + 3);
  sub_24F333EE8(v11, boxed_opaque_existential_1, type metadata accessor for ProgressPerformAction);
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0u;
  *(v7 + 15) = 0;
  LOBYTE(v81) = v78;
  *(&v81 + 1) = v77;
  sub_24F926F38();
  v60 = v87;
  v22 = v2[18];
  v23 = v2;
  v24 = v2;
  v25 = v59;
  sub_24F333EE8(v23, v59, type metadata accessor for SignInGameCenterView);
  v26 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v27 = swift_allocObject();
  sub_24F333F54(v25, v27 + v26);
  v75 = v24;
  sub_24F333EE8(v24, v25, type metadata accessor for SignInGameCenterView);
  v28 = swift_allocObject();
  sub_24F333F54(v25, v28 + v26);
  sub_24F333EE8(v24, v25, type metadata accessor for SignInGameCenterView);
  v29 = swift_allocObject();
  sub_24F333F54(v25, v29 + v26);
  v30 = v66;
  v31 = *(v66 + 136);
  v32 = type metadata accessor for HeaderPresentation(0);
  (*(*(v32 - 8) + 56))(&v7[v31], 1, 1, v32);
  v33 = &v7[v30[37]];
  LOBYTE(v87) = 0;
  v58[1] = v22;

  sub_24F926F28();
  v34 = *(&v81 + 1);
  *v33 = v81;
  *(v33 + 1) = v34;
  v35 = &v7[v30[38]];
  LOBYTE(v87) = 0;
  sub_24F926F28();
  v36 = *(&v81 + 1);
  *v35 = v81;
  *(v35 + 1) = v36;
  v37 = &v7[v30[39]];
  v87 = 0;
  sub_24F926F28();
  v38 = *(&v81 + 1);
  *v37 = v81;
  *(v37 + 1) = v38;
  v39 = v30[40];
  *&v7[v39] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v40 = v30[41];
  *&v7[v40] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v41 = v30[42];
  *&v7[v41] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v42 = &v7[v30[43]];
  *v42 = sub_24F923398() & 1;
  *(v42 + 1) = v43;
  v42[16] = v44 & 1;
  v45 = v64;
  *v7 = v65;
  *(v7 + 1) = v45;
  *(v7 + 2) = v63;
  v7[128] = 0;
  *(v7 + 9) = 0;
  *(v7 + 10) = 0;
  *(v7 + 8) = 0;
  v7[129] = v60;
  *(v7 + 17) = v22;
  *(v7 + 18) = 0;
  *(v7 + 19) = 0;
  *(v7 + 20) = sub_24F333FB8;
  *(v7 + 21) = v27;
  *(v7 + 22) = sub_24F334038;
  *(v7 + 23) = v28;
  *(v7 + 24) = sub_24F334340;
  *(v7 + 25) = v29;
  *(v7 + 26) = CGSizeMake;
  *(v7 + 27) = 0;
  v46 = v30;
  v7[v30[35]] = 7;
  v7[v30[36]] = 0;
  sub_24E60169C(v75 + 104, &v81, qword_27F21B590, &unk_24F93BE30);
  LOBYTE(v87) = v78;
  v88 = v77;
  sub_24F926F38();
  LOBYTE(v27) = v80;
  KeyPath = swift_getKeyPath();
  v48 = swift_allocObject();
  *(v48 + 16) = v27;
  v84 = KeyPath;
  v85 = sub_24E600A48;
  v86 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F6C0, &unk_24F9E64B0);
  v50 = sub_24E602068(&qword_27F23F6C8, &qword_27F23F6B0, &qword_24F9E63D0, &unk_24F9651C8);
  v51 = sub_24F33552C();
  v52 = v71;
  sub_24F926588();
  sub_24E601704(&v81, &qword_27F23F6C0, &unk_24F9E64B0);
  sub_24E601704(v7, &qword_27F23F6B0, &qword_24F9E63D0);
  v79 = v75;
  sub_24F928FD8();
  *&v81 = v46;
  *(&v81 + 1) = v49;
  v82 = v50;
  v83 = v51;
  swift_getOpaqueTypeConformance2();
  v53 = v74;
  v54 = v72;
  sub_24F925EB8();
  (*(v73 + 8))(v52, v54);
  v87 = v70;
  v88 = v69;
  sub_24F926F58();
  sub_24F335640(v67);
  v78 = v81;
  v55 = v82;
  v56 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F6E0, &unk_24F9E64C0) + 36);
  result = *&v78;
  *v56 = v78;
  *(v56 + 16) = v55;
  return result;
}

void *sub_24F333664@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_24F924C88();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  sub_24F333714(a2, __src);
  memcpy(__dst, __src, 0x129uLL);
  memcpy(v9, __src, 0x129uLL);
  sub_24E60169C(__dst, &v6, &qword_27F23F6E8, &qword_24F9E6510);
  sub_24E601704(v9, &qword_27F23F6E8, &qword_24F9E6510);
  return memcpy((a3 + 24), __dst, 0x129uLL);
}

uint64_t sub_24F333714@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  if (v4[2])
  {
    v5 = v4[4];
    v6 = v4[5];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  sub_24F33569C(v79);
  v37 = v79[0];
  v38 = v79[1];
  v39 = v79[2];
  v40 = v79[3];
  KeyPath = swift_getKeyPath();
  v41 = 0;
  sub_24F335F48(v79, v65);
  v8 = sub_24F925818();
  sub_24F33569C(v80);
  sub_24F923318();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v78 = 0;
  v17 = a1[3];
  v18 = a1[5];
  v29 = a1[4];
  v30 = a1[2];

  sub_24F33569C(v81);
  v33 = v81[0];
  v34 = v81[1];
  v35 = v81[2];
  v36 = v81[3];
  sub_24F335F48(v81, v65);
  v19 = sub_24F925818();
  sub_24F33569C(&v82);
  sub_24F923318();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  LOBYTE(v65[0]) = 0;
  *&v42[0] = v5;
  *(&v42[0] + 1) = v6;
  v42[1] = v37;
  v42[2] = v38;
  v42[3] = v39;
  v42[4] = v40;
  *&v43 = KeyPath;
  BYTE8(v43) = 0;
  LOBYTE(v44) = v8;
  *(&v44 + 1) = v10;
  *v45 = v12;
  *&v45[8] = v14;
  *&v45[16] = v16;
  v45[24] = 0;
  __src[2] = v38;
  __src[3] = v39;
  __src[0] = v42[0];
  __src[1] = v37;
  *(&__src[7] + 9) = *&v45[9];
  __src[6] = v44;
  __src[7] = *v45;
  __src[4] = v40;
  __src[5] = v43;
  *&v46 = v30;
  *(&v46 + 1) = v17;
  *&v47 = v29;
  *(&v47 + 1) = v18;
  v48 = v33;
  v49 = v34;
  v50 = v35;
  v51 = v36;
  LOBYTE(v52) = v19;
  *(&v52 + 1) = v20;
  *v53 = v22;
  *&v53[8] = v24;
  *&v53[16] = v26;
  v53[24] = 0;
  *(&__src[16] + 9) = *&v53[9];
  __src[9] = v46;
  __src[10] = v47;
  __src[15] = v52;
  __src[16] = *v53;
  __src[13] = v35;
  __src[14] = v36;
  __src[11] = v33;
  __src[12] = v34;
  memcpy(a2, __src, 0x120uLL);
  *(a2 + 288) = 0;
  *(a2 + 296) = 1;
  v54[0] = v30;
  v54[1] = v17;
  v54[2] = v29;
  v54[3] = v18;
  v55 = v33;
  v56 = v34;
  v57 = v35;
  v58 = v36;
  v59 = v19;
  v60 = v21;
  v61 = v23;
  v62 = v25;
  v63 = v27;
  v64 = 0;
  sub_24E60169C(v42, v65, &qword_27F23F6F0, &qword_24F9E6518);
  sub_24E60169C(&v46, v65, &qword_27F23F6F8, &qword_24F9E6520);
  sub_24E601704(v54, &qword_27F23F6F8, &qword_24F9E6520);
  v65[0] = v5;
  v65[1] = v6;
  v66 = v37;
  v67 = v38;
  v68 = v39;
  v69 = v40;
  v70 = KeyPath;
  v71 = 0;
  v72 = v8;
  v73 = v10;
  v74 = v12;
  v75 = v14;
  v76 = v16;
  v77 = 0;
  return sub_24E601704(v65, &qword_27F23F6F0, &qword_24F9E6518);
}

uint64_t sub_24F333B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  if (v4[2])
  {
    v6 = v4[4];
    v5 = v4[5];
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  sub_24F33569C(v12);
  KeyPath = swift_getKeyPath();
  v11[64] = 0;
  *a2 = v6;
  *(a2 + 8) = v5;
  v8 = v12[1];
  *(a2 + 16) = v12[0];
  *(a2 + 32) = v8;
  v9 = v12[3];
  *(a2 + 48) = v12[2];
  *(a2 + 64) = v9;
  *(a2 + 80) = KeyPath;
  *(a2 + 88) = 0;
  return sub_24F335F48(v12, v11);
}

uint64_t sub_24F333BA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];

  sub_24F33569C(v11);
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  v7 = v11[1];
  *(a2 + 32) = v11[0];
  *(a2 + 48) = v7;
  v8 = v11[3];
  *(a2 + 64) = v11[2];
  *(a2 + 80) = v8;
  return sub_24F335F48(v11, &v10);
}

uint64_t sub_24F333C20@<X0>(uint64_t a2@<X8>)
{
  v14[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v14 - v7;
  swift_unknownObjectWeakInit();
  v16 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CFF8 &unk_24F9E64D0))];
  swift_unknownObjectWeakAssign();
  v14[0] = sub_24F928FD8();
  sub_24F929298();
  v9 = *(v3 + 16);
  v9(v8, v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D000, &qword_24F9DA440);
  sub_24E602068(&qword_27F23D008, &qword_27F23D000, &qword_24F9DA440, &protocol conformance descriptor for GamesSignInActionImplementation<A>);
  sub_24F929238();
  v10 = *(v3 + 8);
  v10(v5, v2);
  sub_24E601704(v15, &qword_27F23D000, &qword_24F9DA440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF8, &qword_24F9C34B0);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v9((v12 + v11), v8, v2);
  sub_24F929298();
  v9(v5, (v12 + v11), v2);
  swift_setDeallocating();
  v10((v12 + v11), v2);
  swift_deallocClassInstance();
  sub_24F929228();
  v10(v5, v2);
  return (v10)(v8, v2);
}

uint64_t sub_24F333EE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F333F54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignInGameCenterView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_24F333FB8@<X0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for SignInGameCenterView(0) - 8);
  v5 = (v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  return sub_24F333664(v5, a2);
}

uint64_t sub_24F334038@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SignInGameCenterView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24F333B08(v4, a1);
}

uint64_t objectdestroyTm_63()
{
  v1 = type metadata accessor for SignInGameCenterView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  __swift_destroy_boxed_opaque_existential_1((v2 + 48));

  if (*(v2 + 128))
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 104));
  }

  v3 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F925218();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  v6 = v1[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24F925218();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v2 + v6, 1, v7))
    {
      (*(v8 + 8))(v2 + v6, v7);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F334340@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SignInGameCenterView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24F333BA0(v4, a1);
}

uint64_t sub_24F3343C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225A28, &unk_24F9770A0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  sub_24E60169C(v2, &v13, qword_27F21B590, &unk_24F93BE30);
  if (v14)
  {
    sub_24E612C80(&v13, v15);
    v11 = sub_24F9232F8();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    sub_24E615E00(v15, &v13);
    sub_24F921788();
    __swift_destroy_boxed_opaque_existential_1(v15);
    (*(v8 + 32))(a1, v10, v7);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }

  else
  {
    sub_24E601704(&v13, qword_27F21B590, &unk_24F93BE30);
    return (*(v8 + 56))(a1, 1, 1, v7);
  }
}

uint64_t sub_24F3345F4@<X0>(uint64_t a1@<X8>)
{
  v2._object = 0x800000024FA73C80;
  v2._countAndFlagsBits = 0xD000000000000014;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  localizedString(_:comment:)(v2, v3);
  sub_24E600AEC();
  result = sub_24F925E18();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

__n128 sub_24F334670@<Q0>(uint64_t a2@<X8>)
{
  v4 = sub_24F924C98();
  v5 = *(v2 + 2);
  v6 = *(v2 + 3);
  v7 = *(v2 + 5);
  v33 = *(v2 + 4);
  v34 = v7;
  v39 = v33;
  v40 = v7;
  v8 = *(v2 + 3);
  v9 = *(v2 + 4);
  v10 = *(v2 + 2);
  v32[0] = v5;
  v32[1] = v8;
  v11 = v8;
  v31 = 0;
  v13 = *v2;
  v12 = v2[1];
  v14 = v2[2];
  v15 = v2[3];
  v37 = v5;
  v38 = v8;
  *&v35[0] = v14;
  *(&v35[0] + 1) = v15;
  v16 = *(v2 + 5);
  v35[1] = v10;
  v35[2] = v6;
  v35[3] = v9;
  v35[4] = v16;
  v28 = v6;
  v29 = v9;
  v30 = v16;
  v26 = v35[0];
  v27 = v10;
  v36[0] = v14;
  v36[1] = v15;

  sub_24F335F48(v32, v25);

  sub_24F33619C(v35, v25);
  sub_24F3361D4(v36);

  v17 = v31;
  sub_24F927628();
  sub_24F9242E8();
  *a2 = v4;
  *(a2 + 8) = v11;
  *(a2 + 16) = v17;
  *(a2 + 24) = v13;
  *(a2 + 32) = v12;
  v18 = v26;
  *(a2 + 56) = v27;
  v19 = v29;
  *(a2 + 72) = v28;
  *(a2 + 88) = v19;
  *(a2 + 104) = v30;
  *(a2 + 40) = v18;
  v20 = v25[0];
  v21 = v25[1];
  v22 = v25[3];
  *(a2 + 152) = v25[2];
  *(a2 + 136) = v21;
  *(a2 + 120) = v20;
  result = v25[4];
  v24 = v25[5];
  *(a2 + 216) = v25[6];
  *(a2 + 200) = v24;
  *(a2 + 184) = result;
  *(a2 + 168) = v22;
  return result;
}

uint64_t sub_24F334830@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F929888();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F926E08();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2359E8, &unk_24F9D5820);
  MEMORY[0x28223BE20](v52);
  v49 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v51 = &v41 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2359F0, &unk_24F9B9140);
  v53 = *(v13 - 8);
  v54 = v13;
  MEMORY[0x28223BE20](v13);
  v50 = &v41 - v14;
  v15 = sub_24F924848();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v1 + 8);
  if (!v20)
  {
    return (*(v53 + 56))(a1, 1, 1, v54, v17);
  }

  v45 = *(v1 + 8);
  v46 = v6;
  v44 = *v1;
  static SystemAppIcon.from(iconName:)(v44, v20, &v73);
  v21 = v73;
  if (v73 == 4)
  {
    return (*(v53 + 56))(a1, 1, 1, v54, v17);
  }

  v42 = v4;
  v43 = v3;
  v78 = *(v1 + 88);
  v22 = *(v1 + 80);
  v77 = v22;
  if (v78 == 1)
  {
    v23 = v22;
  }

  else
  {

    sub_24F92BDC8();
    v41 = a1;
    v24 = sub_24F9257A8();
    a1 = v41;
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v77, &qword_27F218208, &qword_24F94E940);
    (*(v16 + 8))(v19, v15);
    v23 = *v68;
  }

  v25 = *(v1 + 40);
  LOBYTE(v68[0]) = v21;
  if (!sub_24EFFE798(v68, 0, v25, v25, v23))
  {
    return (*(v53 + 56))(a1, 1, 1, v54, v17);
  }

  v41 = sub_24F926DE8();
  v27 = v47;
  v26 = v48;
  (*(v47 + 104))(v9, *MEMORY[0x277CE0FE0], v48);
  v28 = sub_24F926E88();
  (*(v27 + 8))(v9, v26);
  sub_24F927618();
  sub_24F9238C8();
  v71 = 1;
  *&v70[6] = v74;
  *&v70[22] = v75;
  *&v70[38] = v76;
  sub_24F9242E8();
  v29 = sub_24F925838();
  sub_24F923318();
  *(v57 + 2) = *v70;
  *(&v57[1] + 2) = *&v70[16];
  *(&v57[2] + 2) = *&v70[32];
  *(&v57[6] + 8) = v64;
  *(&v57[7] + 8) = v65;
  *(&v57[8] + 8) = v66;
  *(&v57[9] + 8) = v67;
  *(&v57[3] + 8) = v61;
  *(&v57[4] + 8) = v62;
  v72 = 0;
  v56 = v28;
  LOWORD(v57[0]) = 1;
  *&v57[3] = *&v70[46];
  *(&v57[5] + 8) = v63;
  BYTE8(v57[10]) = v29;
  *&v58 = v30;
  *(&v58 + 1) = v31;
  *&v59 = v32;
  *(&v59 + 1) = v33;
  v60 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2359F8, &unk_24F9B9150);
  sub_24EFC15FC();
  v34 = v49;
  sub_24F9265E8();
  v68[12] = v58;
  v68[13] = v59;
  v69 = v60;
  v68[8] = v57[7];
  v68[9] = v57[8];
  v68[10] = v57[9];
  v68[11] = v57[10];
  v68[4] = v57[3];
  v68[5] = v57[4];
  v68[6] = v57[5];
  v68[7] = v57[6];
  v68[0] = v56;
  v68[1] = v57[0];
  v68[2] = v57[1];
  v68[3] = v57[2];
  sub_24E601704(v68, &qword_27F2359F8, &unk_24F9B9150);
  v35 = v51;
  sub_24F923FE8();
  sub_24E601704(v34, &qword_27F2359E8, &unk_24F9D5820);
  v56 = 0u;
  v57[0] = 0u;
  memset(v55, 0, sizeof(v55));
  v36 = v46;
  sub_24F9297A8();
  sub_24E601704(v55, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v56, &qword_27F2129B0, &unk_24F945320);
  sub_24EFC17A0();
  v37 = v50;
  sub_24F925EE8();

  (*(v42 + 8))(v36, v43);
  sub_24E601704(v35, &qword_27F2359E8, &unk_24F9D5820);
  v39 = v53;
  v38 = v54;
  (*(v53 + 32))(a1, v37, v54);
  return (*(v39 + 56))(a1, 0, 1, v38);
}

uint64_t sub_24F334F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v29 = sub_24F929888();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v26 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215110, &qword_24F93F700);
  MEMORY[0x28223BE20](v25);
  v7 = &v24 - v6;
  *&v31 = a1;
  *(&v31 + 1) = a2;
  sub_24E600AEC();

  v8 = sub_24F925E18();
  v10 = v9;
  v12 = v11;
  sub_24F925988();
  v13 = sub_24F925C98();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_24E600B40(v8, v10, v12 & 1);

  *&v31 = v13;
  *(&v31 + 1) = v15;
  v17 &= 1u;
  LOBYTE(v32) = v17;
  *(&v32 + 1) = v19;
  sub_24F9268B8();
  sub_24E600B40(v13, v15, v17);

  KeyPath = swift_getKeyPath();
  v21 = v26;
  v22 = &v7[*(v25 + 36)];
  *v22 = KeyPath;
  v22[8] = 0;
  v31 = 0u;
  v32 = 0u;
  memset(v30, 0, sizeof(v30));
  sub_24F9297A8();
  sub_24E601704(v30, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v31, &qword_27F2129B0, &unk_24F945320);
  sub_24E64575C();
  sub_24F925EE8();
  (*(v27 + 8))(v21, v29);
  return sub_24F336328(v7);
}

uint64_t sub_24F335248@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v27 = sub_24F929888();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v1[1];
  v30 = *v1;
  v31 = v4;
  sub_24E600AEC();

  v5 = sub_24F925E18();
  v7 = v6;
  v9 = v8;
  v10 = sub_24F925C98();
  v12 = v11;
  v14 = v13;
  sub_24E600B40(v5, v7, v9 & 1);

  LODWORD(v30) = sub_24F9251C8();
  v15 = sub_24F925C58();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_24E600B40(v10, v12, v14 & 1);

  KeyPath = swift_getKeyPath();
  v30 = v15;
  v31 = v17;
  v32 = v19 & 1;
  v33 = v21;
  v34 = KeyPath;
  v35 = 0;
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  sub_24F9297A8();
  sub_24E601704(v28, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(v29, &qword_27F2129B0, &unk_24F945320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146D8, &unk_24F964BD0);
  sub_24E62FBF4();
  sub_24F925EE8();
  (*(v25 + 8))(v3, v27);
  sub_24E600B40(v15, v17, v19 & 1);
}

unint64_t sub_24F33552C()
{
  result = qword_27F23F6D0;
  if (!qword_27F23F6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F6C0, &unk_24F9E64B0);
    sub_24F3355E4();
    sub_24E602068(&qword_27F2129F0, &qword_27F255320, &unk_24F9397C0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F6D0);
  }

  return result;
}

unint64_t sub_24F3355E4()
{
  result = qword_27F23F6D8;
  if (!qword_27F23F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F6D8);
  }

  return result;
}

uint64_t sub_24F335640(uint64_t a1)
{
  v2 = type metadata accessor for ProgressPerformAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_24F33569C@<D0>(__int128 *a1@<X8>)
{
  v68 = a1;
  v2 = sub_24F925218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v55 = &v51[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v5);
  v64 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v51[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v10 - 8);
  v54 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v62 = &v51[-v13];
  MEMORY[0x28223BE20](v14);
  v63 = &v51[-v15];
  MEMORY[0x28223BE20](v16);
  v67 = &v51[-v17];
  MEMORY[0x28223BE20](v18);
  v20 = &v51[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v51[-v22];
  v60 = type metadata accessor for SignInGameCenterView(0);
  v24 = v1;
  sub_24F769764(v23);
  v25 = v3[13];
  v59 = *MEMORY[0x277CE0560];
  v58 = v25;
  v56 = v3 + 13;
  v25(v20);
  v57 = v3[7];
  v57(v20, 0, 1, v2);
  v61 = v5;
  v26 = *(v5 + 48);
  sub_24E60169C(v23, v9, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v20, &v9[v26], &qword_27F215598, &qword_24F945EF0);
  v66 = v3;
  v27 = v3[6];
  if (v27(v9, 1, v2) != 1)
  {
    sub_24E60169C(v9, v67, &qword_27F215598, &qword_24F945EF0);
    if (v27(&v9[v26], 1, v2) != 1)
    {
      v65 = v27;
      v53 = v24;
      v29 = v55;
      (v66[4])(v55, &v9[v26], v2);
      sub_24E6CF670(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v30 = v67;
      v52 = sub_24F92AFF8();
      v31 = v66[1];
      v31(v29, v2);
      sub_24E601704(v20, &qword_27F215598, &qword_24F945EF0);
      sub_24E601704(v23, &qword_27F215598, &qword_24F945EF0);
      v31(v30, v2);
      sub_24E601704(v9, &qword_27F215598, &qword_24F945EF0);
      if ((v52 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_24E601704(v20, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v23, &qword_27F215598, &qword_24F945EF0);
    (v66[1])(v67, v2);
LABEL_6:
    v28 = v9;
LABEL_14:
    sub_24E601704(v28, &unk_27F254F20, &qword_24F940790);
    goto LABEL_15;
  }

  v53 = v24;
  v65 = v27;
  sub_24E601704(v20, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v23, &qword_27F215598, &qword_24F945EF0);
  if (v65(&v9[v26], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_24E601704(v9, &qword_27F215598, &qword_24F945EF0);
LABEL_8:
  v32 = v63;
  sub_24F769764(v63);
  v33 = v62;
  v58(v62, v59, v2);
  v57(v33, 0, 1, v2);
  v34 = *(v61 + 48);
  v35 = v64;
  sub_24E60169C(v32, v64, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v33, &v35[v34], &qword_27F215598, &qword_24F945EF0);
  v36 = v65;
  if (v65(v35, 1, v2) == 1)
  {
    sub_24E601704(v33, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v32, &qword_27F215598, &qword_24F945EF0);
    if (v36(&v35[v34], 1, v2) == 1)
    {
      sub_24E601704(v35, &qword_27F215598, &qword_24F945EF0);
LABEL_20:
      if (qword_27F211120 != -1)
      {
        swift_once();
      }

      v38 = &xmmword_27F39E370;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v37 = v54;
  sub_24E60169C(v35, v54, &qword_27F215598, &qword_24F945EF0);
  if (v36(&v35[v34], 1, v2) == 1)
  {
    sub_24E601704(v33, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v32, &qword_27F215598, &qword_24F945EF0);
    (v66[1])(v37, v2);
LABEL_13:
    v28 = v35;
    goto LABEL_14;
  }

  v45 = v33;
  v46 = v66;
  v47 = &v35[v34];
  v48 = v55;
  (v66[4])(v55, v47, v2);
  sub_24E6CF670(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v49 = sub_24F92AFF8();
  v50 = v46[1];
  v50(v48, v2);
  sub_24E601704(v45, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v32, &qword_27F215598, &qword_24F945EF0);
  v50(v37, v2);
  sub_24E601704(v35, &qword_27F215598, &qword_24F945EF0);
  if (v49)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (qword_27F211118 != -1)
  {
    swift_once();
  }

  v38 = &xmmword_27F39E330;
LABEL_18:
  v39 = v38[1];
  v69 = *v38;
  v70 = v39;
  v40 = v38[3];
  v71 = v38[2];
  v72 = v40;
  v41 = v70;
  v42 = v68;
  *v68 = v69;
  v42[1] = v41;
  result = *&v71;
  v44 = v72;
  v42[2] = v71;
  v42[3] = v44;
  return result;
}

unint64_t sub_24F335FCC()
{
  result = qword_27F23F700;
  if (!qword_27F23F700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F6E0, &unk_24F9E64C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F6B8, &qword_24F9E63D8);
    sub_24F928FD8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F6B0, &qword_24F9E63D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F6C0, &unk_24F9E64B0);
    sub_24E602068(&qword_27F23F6C8, &qword_27F23F6B0, &qword_24F9E63D0, &unk_24F9651C8);
    sub_24F33552C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24F265E8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F700);
  }

  return result;
}

unint64_t sub_24F33622C()
{
  result = qword_27F23F708;
  if (!qword_27F23F708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F710, &qword_24F9E67C0);
    sub_24E602068(&qword_27F23F718, &qword_27F23F720, qword_24F9E67C8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F708);
  }

  return result;
}

uint64_t sub_24F336328(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215110, &qword_24F93F700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBP011_JetEngine_aB0E19automationSemanticsyQr0dE0010AutomationG0VFQOyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_Qo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  a4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t FriendInviteButtonShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t FriendInviteButtonShelfIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x444965676170;
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v3;

  v7 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E6383E8(inited + 32);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v7;
  return result;
}

uint64_t sub_24F336598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x444965676170 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F33661C(uint64_t a1)
{
  v2 = sub_24F336BA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F336658(uint64_t a1)
{
  v2 = sub_24F336BA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FriendInviteButtonShelfIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F728, &qword_24F9E68D8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F336BA4();
  sub_24F92D128();
  sub_24F92CD08();
  return (*(v3 + 8))(v5, v2);
}

uint64_t FriendInviteButtonShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F738, &qword_24F9E68E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F336BA4();
  sub_24F92D108();
  if (!v2)
  {
    v9 = sub_24F92CC28();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F33697C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F728, &qword_24F9E68D8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F336BA4();
  sub_24F92D128();
  sub_24F92CD08();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F336AB8@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x444965676170;
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v3;

  v7 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E6383E8(inited + 32);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v7;
  return result;
}

unint64_t sub_24F336BA4()
{
  result = qword_27F23F730;
  if (!qword_27F23F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F730);
  }

  return result;
}

unint64_t sub_24F336C1C()
{
  result = qword_27F23F740;
  if (!qword_27F23F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F740);
  }

  return result;
}

unint64_t sub_24F336C74()
{
  result = qword_27F23F748;
  if (!qword_27F23F748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F748);
  }

  return result;
}

unint64_t sub_24F336CCC()
{
  result = qword_27F23F750;
  if (!qword_27F23F750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F750);
  }

  return result;
}

uint64_t sub_24F336D34(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F758, &unk_24F9EF1C0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24F336E78(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F758, &unk_24F9EF1C0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8] + 8) = a2;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t type metadata accessor for NicknameSection(uint64_t a1)
{
  result = qword_27F23F760;
  if (!qword_27F23F760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F336FE4(uint64_t a1)
{
  sub_24E600550(319);
  if (v1 <= 0x3F)
  {
    sub_24F337100(319, &qword_27F22C060, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_24F337100(319, &qword_27F23F770, type metadata accessor for NicknameModel, MEMORY[0x277CE12F8]);
      if (v3 <= 0x3F)
      {
        sub_24E654514();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F337100(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_24F337180()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F758, &unk_24F9EF1C0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F780, &qword_24F9E6C50);
  MEMORY[0x28223BE20](v5);
  v7 = v10 - v6;
  *v7 = sub_24F924C88();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F788, &qword_24F9E6C58);
  sub_24F3381F0(v0, &v7[*(v8 + 44)]);
  if (qword_27F2116C0 != -1)
  {
    swift_once();
  }

  v10[4] = qword_27F39EE48;
  v10[5] = unk_27F39EE50;
  type metadata accessor for NicknameSection(0);

  sub_24F927368();
  swift_getKeyPath();
  sub_24F927388();

  (*(v2 + 8))(v4, v1);
  sub_24E602068(&qword_27F23F790, &qword_27F23F780, &qword_24F9E6C50, MEMORY[0x277CE1198]);
  sub_24E600AEC();
  sub_24F926918();

  return sub_24E601704(v7, &qword_27F23F780, &qword_24F9E6C50);
}

uint64_t sub_24F337440(uint64_t a1)
{
  v1[3] = a1;
  sub_24F92B7F8();
  v1[4] = sub_24F92B7E8();
  v3 = sub_24F92B778();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_24F3374D8, v3, v2);
}

uint64_t sub_24F3374D8()
{
  type metadata accessor for NicknameSection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F758, &unk_24F9EF1C0);
  sub_24F927358();
  v0[7] = v0[2];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_24F33759C;

  return sub_24F548E70();
}

uint64_t sub_24F33759C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v2;
  v3[1] = sub_24F3376F8;

  return sub_24F337818();
}

uint64_t sub_24F3376F8()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_24EA9C5F8, v3, v2);
}

uint64_t sub_24F337818()
{
  v1[6] = v0;
  sub_24F92B7F8();
  v1[7] = sub_24F92B7E8();
  v3 = sub_24F92B778();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x2822009F8](sub_24F3378B0, v3, v2);
}

uint64_t sub_24F3378B0()
{
  v1 = *(v0 + 48);
  v2 = type metadata accessor for NicknameSection(0);
  if (*(v1 + *(v2 + 28)))
  {

    if (qword_27F211438 != -1)
    {
      swift_once();
    }

    v3 = sub_24F9220D8();
    __swift_project_value_buffer(v3, qword_27F39E8F8);
    v4 = sub_24F9220B8();
    v5 = sub_24F92BDB8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24E5DD000, v4, v5, "The user is restricted from editing their nickname. Skipping auto-assigning a new nickname.", v6, 2u);
      MEMORY[0x2530542D0](v6, -1, -1);
    }

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    *(v0 + 112) = *(v2 + 24);
    *(v0 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F758, &unk_24F9EF1C0);
    sub_24F927358();
    *(v0 + 88) = *(*(v0 + 16) + 40);

    v9 = swift_task_alloc();
    *(v0 + 96) = v9;
    *v9 = v0;
    v9[1] = sub_24F337A98;

    return sub_24F552A54();
  }
}