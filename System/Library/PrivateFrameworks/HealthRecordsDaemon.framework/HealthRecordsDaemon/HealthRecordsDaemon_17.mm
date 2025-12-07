uint64_t sub_251C31F88@<X0>(unint64_t *a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  result = sub_251B15148(*a1);
  if (result)
  {
    *a3 = result;
  }

  else
  {
    sub_251C716A4();

    v6 = [a2 description];
    v7 = sub_251C70F14();
    v9 = v8;

    MEMORY[0x25308CDA0](v7, v9);

    result = sub_251C717E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_251C32080(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = a2;
  v31 = a3;
  sub_251C36BD8(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C36D08(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C36DC0(0);
  v15 = *(v14 - 8);
  v32 = v14;
  v33 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C36F34(0);
  v19 = *(v18 - 8);
  v34 = v18;
  v35 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  sub_251C35248(0, &qword_27F47C8B8, &qword_27F47C8C0, 0x277D115B8, MEMORY[0x277D83940]);
  sub_251C36C84();
  sub_251C710D4();
  sub_251A82284();
  sub_251C708E4();
  (*(v6 + 8))(v8, v5);
  v22 = swift_allocObject();
  v23 = v31;
  *(v22 + 16) = v30;
  *(v22 + 24) = v23;

  v24 = v23;
  sub_251C70964();
  sub_251C3546C(0);
  sub_251C3704C(0, &qword_27F47C9E8, sub_251C3546C, MEMORY[0x277CBCD88]);
  sub_251C37174(&qword_27F47C9F8, sub_251C36D08, MEMORY[0x277CBCD18]);
  sub_251C36EAC();
  sub_251C70B94();

  (*(v11 + 8))(v13, v10);
  sub_251C37174(&qword_27F47CA08, sub_251C36DC0, MEMORY[0x277CBCCE0]);
  v25 = v32;
  sub_251C70B64();
  (*(v33 + 8))(v17, v25);
  sub_251C37174(&qword_27F47CA10, sub_251C36F34, MEMORY[0x277CBCCD0]);
  v26 = v34;
  v27 = sub_251C70A94();
  (*(v35 + 8))(v21, v26);
  return v27;
}

uint64_t sub_251C32518(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = a2;
  v31 = a3;
  sub_251C3658C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C366C4(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C36780(0);
  v15 = *(v14 - 8);
  v32 = v14;
  v33 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C368F4(0);
  v19 = *(v18 - 8);
  v34 = v18;
  v35 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  sub_251C35408(0, &qword_27F47C8D8, sub_251C3546C, MEMORY[0x277D83940]);
  sub_251C3663C();
  sub_251C710D4();
  sub_251A82284();
  sub_251C708E4();
  (*(v6 + 8))(v8, v5);
  v22 = swift_allocObject();
  v23 = v31;
  *(v22 + 16) = v30;
  *(v22 + 24) = v23;

  v24 = v23;
  sub_251C70964();
  sub_251C35700(0);
  sub_251C3704C(0, &qword_27F47C970, sub_251C35700, MEMORY[0x277CBCD88]);
  sub_251C37174(&qword_27F47C980, sub_251C366C4, MEMORY[0x277CBCD18]);
  sub_251C3686C();
  sub_251C70B94();

  (*(v11 + 8))(v13, v10);
  sub_251C37174(&qword_27F47C990, sub_251C36780, MEMORY[0x277CBCCE0]);
  v25 = v32;
  sub_251C70B64();
  (*(v33 + 8))(v17, v25);
  sub_251C37174(&qword_27F47C998, sub_251C368F4, MEMORY[0x277CBCCD0]);
  v26 = v34;
  v27 = sub_251C70A94();
  (*(v35 + 8))(v21, v26);
  return v27;
}

uint64_t sub_251C329B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for PBMedicationTracking(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C35408(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v63 = &v52 - v13;
  v14 = type metadata accessor for PBDateRange(0);
  v64 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v62 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PBTypedData(0);
  v66 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PBMedicationTrackings(0);
  v20 = MEMORY[0x28223BE20](v19);
  v21 = MEMORY[0x28223BE20](v20);
  v24 = *(a1 + 16);
  if (v24)
  {
    v54 = v21;
    v55 = v23;
    v56 = v14;
    v57 = v18;
    v65 = (&v52 - v22);
    v58 = a2;
    v59 = a3;
    v60 = v16;
    v61 = a4;
    v67 = MEMORY[0x277D84F90];
    sub_251C0BE5C(0, v24, 0);
    v25 = v67;
    v26 = (a1 + 48);
    do
    {
      v28 = *(v26 - 2);
      v27 = *(v26 - 1);
      v29 = *v26;
      v30 = *v26;
      v31 = v28;
      v32 = v27;
      sub_251C340CC(v31, v27, v29, v11);

      v67 = v25;
      v34 = *(v25 + 16);
      v33 = *(v25 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_251C0BE5C((v33 > 1), v34 + 1, 1);
        v25 = v67;
      }

      v26 += 3;
      *(v25 + 16) = v34 + 1;
      sub_251C36480(v11, v25 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v34, type metadata accessor for PBMedicationTracking);
      --v24;
    }

    while (v24);
    v35 = v65;
    sub_251C703A4();
    *v35 = v25;
    v36 = v57;
    *v57 = 0;
    *(v36 + 8) = 1;
    v37 = v60;
    v38 = *(v60 + 20);
    v39 = type metadata accessor for PBTypedData.OneOf_Raw(0);
    v40 = *(v39 - 8);
    v53 = *(v40 + 56);
    v54 = v40 + 56;
    v53(v36 + v38, 1, 1, v39);
    sub_251C703A4();
    v41 = *(v37 + 28);
    v42 = *(v64 + 56);
    v43 = v56;
    v42(v36 + v41, 1, 1, v56);
    v44 = sub_251C6FAE4();
    v45 = v63;
    (*(*(v44 - 8) + 56))(v63, 1, 1, v44);
    v46 = v62;
    sub_251BFC468();
    sub_251C36410(v45, &qword_27F478D90, MEMORY[0x277CC88A8]);
    sub_251C36410(v36 + v41, qword_2813E6EE8, type metadata accessor for PBDateRange);
    sub_251C36480(v46, v36 + v41, type metadata accessor for PBDateRange);
    v42(v36 + v41, 0, 1, v43);
    *v36 = 127;
    *(v36 + 8) = 1;
    v47 = v65;
    v48 = v55;
    sub_251C363A8(v65, v55, type metadata accessor for PBMedicationTrackings);
    sub_251C36410(v36 + v38, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251C36480(v48, v36 + v38, type metadata accessor for PBMedicationTrackings);
    swift_storeEnumTagMultiPayload();
    v53(v36 + v38, 0, 1, v39);
    v49 = v61;
    sub_251C36480(v36, v61, type metadata accessor for PBTypedData);
    (*(v66 + 56))(v49, 0, 1, v37);
    return sub_251C364E8(v47);
  }

  else
  {
    v51 = *(v66 + 56);

    return v51(a4, 1, 1, v16);
  }
}

uint64_t sub_251C33028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_251C702E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(a2 + 56);
  (*(v7 + 104))(v9, *MEMORY[0x277D112F8], v6);
  v18 = v9;
  v11 = sub_251BF1DA0(MEMORY[0x277D84F90], sub_251AD6374, v17, v10);
  (*(v7 + 8))(v9, v6);
  if (*(v11 + 16))
  {
    sub_251C363A8(a1, a3, type metadata accessor for PBTypedData);
    v12 = sub_251BFAE40(v11);

    Output = type metadata accessor for ClinicalSharingQueryOutput(0);
    *(a3 + *(Output + 20)) = v12;
    v14 = (a3 + *(Output + 24));
    *v14 = 0;
    v14[1] = 0;
    return (*(*(Output - 8) + 56))(a3, 0, 1, Output);
  }

  else
  {
    v16 = type metadata accessor for ClinicalSharingQueryOutput(0);
    (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
  }
}

void sub_251C33234(id *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v56 = a2;
  sub_251C35408(0, &qword_27F47CA18, sub_251C3546C, MEMORY[0x277CBCE78]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v55 - v8;
  sub_251C3704C(0, &qword_27F47CA20, sub_251C3546C, MEMORY[0x277CBCF38]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v55 - v13;
  sub_251C370C8(0);
  v58 = *(v15 - 8);
  v59 = v15;
  MEMORY[0x28223BE20](v15);
  v57 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = [*a1 firstOntologyCoding];
  if (!v18)
  {
    goto LABEL_66;
  }

  v19 = v18;
  v20 = [v18 code];

  if (!v20)
  {
    goto LABEL_66;
  }

  v55 = a3;
  v21 = sub_251C70F14();
  v23 = v22;

  v24 = HIBYTE(v23) & 0xF;
  v25 = v21 & 0xFFFFFFFFFFFFLL;
  if ((v23 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v23) & 0xF;
  }

  else
  {
    v26 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {

    a3 = v55;
    goto LABEL_66;
  }

  if ((v23 & 0x1000000000000000) != 0)
  {
    v60 = 0;
    v29 = sub_251C359A8(v21, v23, 10);
    v47 = v54;
LABEL_65:

    a3 = v55;
    if ((v47 & 1) == 0)
    {
      v50 = [objc_allocWithZone(MEMORY[0x277CCD1D0]) initWithRawIdentifier_];
      __swift_project_boxed_opaque_existential_1((v56 + 16), *(v56 + 40));
      v61 = off_2863FD788(v50);
      *(swift_allocObject() + 16) = v17;
      sub_251C2BF4C(0);
      sub_251C3546C(0);
      sub_251C37174(&qword_27F47C7C0, sub_251C2BF4C, MEMORY[0x277CBCD90]);
      v51 = v17;
      v52 = v57;
      a3 = v55;
      sub_251C70AE4();

      sub_251C37174(&qword_27F47CA38, sub_251C370C8, MEMORY[0x277CBCC08]);
      v53 = v59;
      v49 = sub_251C70A94();

      (*(v58 + 8))(v52, v53);
      goto LABEL_67;
    }

LABEL_66:
    v61 = v17;
    v62 = 0;
    sub_251C3546C(0);
    v48 = v17;
    sub_251C70A24();
    sub_251A82284();
    sub_251C709F4();
    (*(v7 + 8))(v9, v6);
    sub_251C371BC();
    v49 = sub_251C70A94();
    (*(v12 + 8))(v14, v11);
LABEL_67:
    *a3 = v49;
    return;
  }

  if ((v23 & 0x2000000000000000) == 0)
  {
    if ((v21 & 0x1000000000000000) != 0)
    {
      v27 = ((v23 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v27 = sub_251C71724();
    }

    v28 = *v27;
    if (v28 == 43)
    {
      if (v25 >= 1)
      {
        v24 = v25 - 1;
        if (v25 != 1)
        {
          v29 = 0;
          if (v27)
          {
            v36 = v27 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                goto LABEL_63;
              }

              v38 = 10 * v29;
              if ((v29 * 10) >> 64 != (10 * v29) >> 63)
              {
                goto LABEL_63;
              }

              v29 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                goto LABEL_63;
              }

              ++v36;
              if (!--v24)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_74;
    }

    if (v28 != 45)
    {
      if (v25)
      {
        v29 = 0;
        if (v27)
        {
          while (1)
          {
            v42 = *v27 - 48;
            if (v42 > 9)
            {
              goto LABEL_63;
            }

            v43 = 10 * v29;
            if ((v29 * 10) >> 64 != (10 * v29) >> 63)
            {
              goto LABEL_63;
            }

            v29 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              goto LABEL_63;
            }

            ++v27;
            if (!--v25)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      v29 = 0;
      LOBYTE(v24) = 1;
      goto LABEL_64;
    }

    if (v25 >= 1)
    {
      v24 = v25 - 1;
      if (v25 != 1)
      {
        v29 = 0;
        if (v27)
        {
          v30 = v27 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              goto LABEL_63;
            }

            v32 = 10 * v29;
            if ((v29 * 10) >> 64 != (10 * v29) >> 63)
            {
              goto LABEL_63;
            }

            v29 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              goto LABEL_63;
            }

            ++v30;
            if (!--v24)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v24) = 0;
LABEL_64:
        v60 = v24;
        v47 = v24;
        goto LABEL_65;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v61 = v21;
  v62 = v23 & 0xFFFFFFFFFFFFFFLL;
  if (v21 != 43)
  {
    if (v21 != 45)
    {
      if (v24)
      {
        v29 = 0;
        v44 = &v61;
        while (1)
        {
          v45 = *v44 - 48;
          if (v45 > 9)
          {
            break;
          }

          v46 = 10 * v29;
          if ((v29 * 10) >> 64 != (10 * v29) >> 63)
          {
            break;
          }

          v29 = v46 + v45;
          if (__OFADD__(v46, v45))
          {
            break;
          }

          v44 = (v44 + 1);
          if (!--v24)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v24)
    {
      if (--v24)
      {
        v29 = 0;
        v33 = &v61 + 1;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          v35 = 10 * v29;
          if ((v29 * 10) >> 64 != (10 * v29) >> 63)
          {
            break;
          }

          v29 = v35 - v34;
          if (__OFSUB__(v35, v34))
          {
            break;
          }

          ++v33;
          if (!--v24)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_73;
  }

  if (v24)
  {
    if (--v24)
    {
      v29 = 0;
      v39 = &v61 + 1;
      while (1)
      {
        v40 = *v39 - 48;
        if (v40 > 9)
        {
          break;
        }

        v41 = 10 * v29;
        if ((v29 * 10) >> 64 != (10 * v29) >> 63)
        {
          break;
        }

        v29 = v41 + v40;
        if (__OFADD__(v41, v40))
        {
          break;
        }

        ++v39;
        if (!--v24)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_75:
  __break(1u);
}

uint64_t sub_251C3398C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v43 = a3;
  sub_251C36938(0);
  v38 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C36A4C(0);
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C36B24(0);
  v41 = *(v12 - 8);
  v42 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v36 = *(a1 + 8);
  v37 = v36;
  v16 = v15;
  v17 = [v16 semanticIdentifier];
  v18 = [v17 stringValue];

  if (!v18)
  {
    sub_251C70F14();
    v18 = sub_251C70EE4();
  }

  v19 = [objc_opt_self() predicateForMedicationDoseEventWithMedicationIdentifier_];

  sub_251A8223C(0, &qword_27F478D50, 0x277CCD8D8);
  v20 = [swift_getObjCClassFromMetadata() medicationDoseEventType];
  v21 = [objc_allocWithZone(MEMORY[0x277CCD848]) initWithSampleType:v20 predicate:v19];

  __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  sub_251A82418();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_251C74560;
  *(v22 + 32) = v21;
  v35 = v21;
  v23 = sub_251AFCF70();
  v24 = off_2863FD750(v22, 0xD000000000000017, 0x8000000251C90C80, v23, 1, &type metadata for ClinicalSharingQueryDefaultDataProvider, &off_2863FD718);

  v45 = v24;
  v44 = MEMORY[0x277D84F90];
  sub_251C369BC(0, &qword_27F478D60, &qword_27F478D68, &qword_27F478D70, 0x277CCD8A8);
  sub_251AF2A20();
  sub_251C70AD4();

  sub_251C35248(0, &qword_27F47C918, &qword_27F479700, 0x277CCD650, MEMORY[0x277D83D88]);
  sub_251C37174(&qword_27F47C9B0, sub_251C36938, MEMORY[0x277CBCB70]);
  v25 = v38;
  sub_251C70AE4();
  (*(v6 + 8))(v8, v25);
  v26 = swift_allocObject();
  v27 = v36;
  *(v26 + 16) = v16;
  *(v26 + 24) = v27;
  sub_251C35700(0);
  v28 = v16;
  v29 = v37;
  v30 = v40;
  sub_251C707F4();

  (*(v39 + 8))(v11, v30);
  sub_251C37174(&qword_27F47C9C0, sub_251C36B24, MEMORY[0x277CBCC08]);
  v31 = v42;
  v32 = sub_251C70A94();

  result = (*(v41 + 8))(v14, v31);
  *v43 = v32;
  return result;
}

void sub_251C33F08(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_251B15154(*a1);
  if (!v3)
  {
    if (qword_2813E26F8 == -1)
    {
LABEL_9:
      v7 = sub_251C70764();
      __swift_project_value_buffer(v7, qword_2813E8130);
      v8 = sub_251C70744();
      v9 = sub_251C713D4();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_251A6C000, v8, v9, "[ClinicalSharingMedicationTrackingQuery] Invalid sample type for samples of HKMedicationDoseEvent", v10, 2u);
        MEMORY[0x25308E2B0](v10, -1, -1);
      }

      goto LABEL_14;
    }

LABEL_18:
    swift_once();
    goto LABEL_9;
  }

  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_13:

LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  v11 = v3;
  v12 = sub_251C717F4();
  v3 = v11;
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x25308D460](0);
    goto LABEL_7;
  }

  if (!*(v4 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v5 = *(v3 + 32);
LABEL_7:
  v6 = v5;

LABEL_15:
  *a2 = v6;
}

id sub_251C34078@<X0>(void **a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  *a4 = a2;
  a4[1] = a3;
  a4[2] = v5;
  v6 = v5;
  v7 = a2;

  return a3;
}

uint64_t sub_251C340CC@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v189 = a3;
  v191 = a2;
  v193 = sub_251C70014();
  v190 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v192 = &v186 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_251C70074();
  v187 = *(v7 - 8);
  v188 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v186 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C703A4();
  v10 = *(type metadata accessor for PBMedicationTracking(0) + 20);
  if (qword_27F478818 != -1)
  {
    swift_once();
  }

  *(a4 + v10) = qword_27F47AC10;
  KeyPath = swift_getKeyPath();
  v194 = *MEMORY[0x277CCCE40];
  v12 = sub_251C70F14();
  v14 = v13;

  v15 = sub_251AF310C(KeyPath, v12, v14);
  v17 = v16;

  if (v17)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

  if (!v17)
  {
    v17 = 0xE000000000000000;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(a4 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v20 = sub_251B9234C(v20);
    *(a4 + v10) = v20;
  }

  swift_beginAccess();
  *(v20 + 64) = v18;
  *(v20 + 72) = v17;

  v21 = swift_getKeyPath();
  v22 = sub_251C70F14();
  v24 = sub_251AF310C(v21, v22, v23);
  v26 = v25;

  if (v26)
  {
    v27 = v24;
  }

  else
  {
    v27 = 0;
  }

  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0xE000000000000000;
  }

  v29 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(a4 + v10);
  if ((v29 & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v30 = sub_251B9234C(v30);
    *(a4 + v10) = v30;
  }

  swift_beginAccess();
  *(v30 + 32) = v27;
  *(v30 + 40) = v28;

  v31 = swift_getKeyPath();
  v32 = sub_251C70F14();
  v34 = sub_251AF310C(v31, v32, v33);
  v36 = v35;

  if (v36)
  {
    v37 = v34;
  }

  else
  {
    v37 = 0;
  }

  if (v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = 0xE000000000000000;
  }

  v39 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(a4 + v10);
  if ((v39 & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v40 = sub_251B9234C(v40);
    *(a4 + v10) = v40;
  }

  swift_beginAccess();
  *(v40 + 48) = v37;
  *(v40 + 56) = v38;

  v195 = a1;
  v41 = [a1 semanticIdentifier];
  v42 = [v41 stringValue];
  v43 = sub_251C70F14();
  v45 = v44;

  v201 = v43;
  v202 = v45;
  v199 = sub_251C70F14();
  v200 = v46;
  v197 = 124;
  v198 = 0xE100000000000000;
  sub_251AD87E0();
  v47 = sub_251C715A4();
  v49 = v48;

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *(a4 + v10);
  v52 = v10;
  if ((v50 & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v51 = sub_251B9234C(v51);
    *(a4 + v10) = v51;
  }

  swift_beginAccess();
  *(v51 + 16) = v47;
  *(v51 + 24) = v49;

  v53 = v195;
  v54 = [v195 UUID];
  sub_251C70054();

  v55 = sub_251C70024();
  v57 = v56;
  (*(v187 + 8))(v9, v188);
  v58 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *(a4 + v10);
  if ((v58 & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v59 = sub_251B9234C(v59);
    *(a4 + v10) = v59;
  }

  swift_beginAccess();
  *(v59 + 240) = v55;
  *(v59 + 248) = v57;

  v60 = [v53 freeTextMedicationStrengthQuantity];
  if (v60)
  {
    v61 = v60;
    [v60 _value];
    v62 = sub_251C71264();
    v64 = v63;
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(a4 + v10);
    if ((v65 & 1) == 0)
    {
      type metadata accessor for PBMedicationTracking._StorageClass();
      swift_allocObject();
      v66 = sub_251B9234C(v66);
      *(a4 + v10) = v66;
    }

    swift_beginAccess();
    *(v66 + 112) = v62;
    *(v66 + 120) = v64;

    v67 = [v61 _unit];
    v68 = [v67 unitString];

    v69 = sub_251C70F14();
    v71 = v70;

    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v72 = *(a4 + v10);
    }

    else
    {
      type metadata accessor for PBMedicationTracking._StorageClass();
      swift_allocObject();

      v72 = sub_251B9234C(v73);

      *(a4 + v10) = v72;
    }

    swift_beginAccess();
    *(v72 + 304) = v69;
    *(v72 + 312) = v71;
  }

  v74 = swift_getKeyPath();
  v75 = sub_251C70F14();
  v77 = sub_251AF310C(v74, v75, v76);
  v79 = v78;

  if (v79)
  {
    v80 = v77;
  }

  else
  {
    v80 = 0;
  }

  v81 = 0xE000000000000000;
  if (!v79)
  {
    v79 = 0xE000000000000000;
  }

  v82 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *(a4 + v52);
  if ((v82 & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v83 = sub_251B9234C(v83);
    *(a4 + v52) = v83;
  }

  swift_beginAccess();
  *(v83 + 128) = v80;
  *(v83 + 136) = v79;

  v84 = swift_getKeyPath();
  v85 = sub_251AF310C(v84, 0x53552D6E65, 0xE500000000000000);
  v87 = v86;

  if (v87)
  {
    v88 = v85;
  }

  else
  {
    v88 = 0;
  }

  if (v87)
  {
    v81 = v87;
  }

  v89 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *(a4 + v52);
  if ((v89 & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v90 = sub_251B9234C(v90);
    *(a4 + v52) = v90;
  }

  swift_beginAccess();
  *(v90 + 144) = v88;
  *(v90 + 152) = v81;

  v91 = swift_getKeyPath();
  v92 = sub_251AF310C(v91, 0x53552D6E65, 0xE500000000000000);
  v94 = v93;

  if (v94)
  {
    v95 = v92;
  }

  else
  {
    v95 = 0;
  }

  if (!v94)
  {
    v94 = 0xE000000000000000;
  }

  v96 = swift_isUniquelyReferenced_nonNull_native();
  v97 = *(a4 + v52);
  if ((v96 & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v97 = sub_251B9234C(v97);
    *(a4 + v52) = v97;
  }

  v194 = v52;
  swift_beginAccess();
  *(v97 + 160) = v95;
  *(v97 + 168) = v94;

  v98 = [v195 unlocalizedQuantifiedUnitStrengthPreferredDisplayString];
  if (v98)
  {
    v99 = v98;
    v100 = sub_251C70F14();
    v102 = v101;
  }

  else
  {
    v100 = 0;
    v102 = 0xE000000000000000;
  }

  v103 = v194;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *(a4 + v103);
  if ((v104 & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v105 = sub_251B9234C(v105);
    *(a4 + v103) = v105;
  }

  v106 = 1;
  swift_beginAccess();
  *(v105 + 176) = v100;
  *(v105 + 184) = v102;

  v107 = [v195 freeTextMedicationFormCode];
  if (v107)
  {
    v108 = v107;
    v109 = [v107 longLongValue];

    v110 = sub_251C4E1C8(v109);
    v106 = v111;
  }

  else
  {
    v110 = 0;
  }

  v112 = v194;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v114 = *(a4 + v112);
  if ((v113 & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v114 = sub_251B9234C(v114);
    *(a4 + v112) = v114;
  }

  swift_beginAccess();
  *(v114 + 96) = v110;
  *(v114 + 104) = v106 & 1;
  v115 = [v195 freeTextMedicationName];
  if (v115)
  {
    v116 = v115;
    v117 = sub_251C70F14();
    v119 = v118;
  }

  else
  {
    v117 = 0;
    v119 = 0xE000000000000000;
  }

  v120 = swift_isUniquelyReferenced_nonNull_native();
  v121 = *(a4 + v112);
  if ((v120 & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v121 = sub_251B9234C(v121);
    *(a4 + v112) = v121;
  }

  swift_beginAccess();
  *(v121 + 272) = v117;
  *(v121 + 280) = v119;

  v122 = [v195 creationDate];
  v123 = v192;
  sub_251C6FFE4();

  if (qword_27F478930 != -1)
  {
    swift_once();
  }

  v124 = qword_27F4A2878;
  v125 = sub_251C6FF94();
  v126 = [v124 stringFromDate_];

  v127 = sub_251C70F14();
  v129 = v128;

  v130 = v123;
  v131 = *(v190 + 8);
  v131(v130, v193);
  v132 = v194;
  v133 = swift_isUniquelyReferenced_nonNull_native();
  v134 = *(a4 + v132);
  if ((v133 & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v134 = sub_251B9234C(v134);
    *(a4 + v132) = v134;
  }

  swift_beginAccess();
  *(v134 + 192) = v127;
  *(v134 + 200) = v129;

  if (v189)
  {
    v135 = v189;
    v136 = [v135 startDate];
    v137 = v192;
    sub_251C6FFE4();

    v138 = sub_251C6FF94();
    v139 = [v124 stringFromDate_];

    v140 = sub_251C70F14();
    v142 = v141;

    v131(v137, v193);
    v143 = v194;
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v144 = *(a4 + v143);
    }

    else
    {
      type metadata accessor for PBMedicationTracking._StorageClass();
      swift_allocObject();

      v144 = sub_251B9234C(v145);

      *(a4 + v143) = v144;
    }

    swift_beginAccess();
    *(v144 + 208) = v140;
    *(v144 + 216) = v142;
  }

  v146 = v194;
  if (!v191)
  {
    goto LABEL_110;
  }

  v147 = v191;
  v148 = [v147 RxNormCoding];
  if (v148 && (v149 = v148, v150 = [v148 code], v149, v150))
  {
    v151 = sub_251C70F14();
    v153 = v152;
  }

  else
  {
    v151 = 0;
    v153 = 0xE000000000000000;
  }

  v154 = swift_isUniquelyReferenced_nonNull_native();
  v155 = *(a4 + v146);
  if ((v154 & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v155 = sub_251B9234C(v155);
    *(a4 + v146) = v155;
  }

  swift_beginAccess();
  *(v155 + 80) = v151;
  *(v155 + 88) = v153;

  v156 = sub_251C48234();
  if (v156 && (v157 = v156, v158 = [v156 RxNormCoding], v157, v158) && (v159 = objc_msgSend(v158, sel_code), v158, v159))
  {
    v160 = sub_251C70F14();
    v162 = v161;
  }

  else
  {
    v160 = 0;
    v162 = 0xE000000000000000;
  }

  v163 = swift_isUniquelyReferenced_nonNull_native();
  v164 = *(a4 + v146);
  if ((v163 & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v164 = sub_251B9234C(v164);
    *(a4 + v146) = v164;
  }

  swift_beginAccess();
  *(v164 + 224) = v160;
  *(v164 + 232) = v162;

  v165 = sub_251C4833C(0x3F5uLL);
  if (v165)
  {
    v166 = v165;
    v167 = v165 & 0xFFFFFFFFFFFFFF8;
    if (v165 >> 62)
    {
      result = sub_251C717F4();
      if (result)
      {
        goto LABEL_99;
      }
    }

    else
    {
      result = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_99:
        if ((v166 & 0xC000000000000001) != 0)
        {
          v169 = MEMORY[0x25308D460](0, v166);
        }

        else
        {
          if (!*(v167 + 16))
          {
            __break(1u);
            return result;
          }

          v169 = *(v166 + 32);
        }

        v170 = v169;

        v171 = [v170 identifier];
        v172 = [v171 rawIdentifier];

        v196[0] = v172;
        v173 = sub_251C719A4();
        v175 = v174;
        if (swift_isUniquelyReferenced_nonNull_native())
        {

          v176 = *(a4 + v146);
        }

        else
        {
          type metadata accessor for PBMedicationTracking._StorageClass();
          swift_allocObject();

          v176 = sub_251B9234C(v177);
          v146 = v194;

          *(a4 + v146) = v176;
        }

        swift_beginAccess();
        *(v176 + 288) = v173;
        *(v176 + 296) = v175;
        goto LABEL_109;
      }
    }

LABEL_109:

    goto LABEL_110;
  }

LABEL_110:
  v178 = [v195 freeTextMedicationLoggingUnitCode];
  if (v178)
  {
    v179 = v178;
    v180 = [v178 longLongValue];

    v181 = sub_251BE8FC0(v180);
    v183 = v182;
  }

  else
  {
    v181 = 0;
    v183 = 1;
  }

  v184 = swift_isUniquelyReferenced_nonNull_native();
  v185 = *(a4 + v146);
  if ((v184 & 1) == 0)
  {
    type metadata accessor for PBMedicationTracking._StorageClass();
    swift_allocObject();
    v185 = sub_251B9234C(v185);
    *(a4 + v146) = v185;
  }

  result = swift_beginAccess();
  *(v185 + 256) = v181;
  *(v185 + 264) = v183 & 1;
  return result;
}

void sub_251C35180(uint64_t a1)
{
  if (!qword_27F47C8B0)
  {
    sub_251C369BC(255, &qword_27F47BC38, &qword_27F47BC40, &qword_27F47BC48, 0x277CCDAF0);
    sub_251C35248(255, &qword_27F47C8B8, &qword_27F47C8C0, 0x277D115B8, MEMORY[0x277D83940]);
    sub_251C352B0();
    v1 = sub_251C70784();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C8B0);
    }
  }
}

void sub_251C35248(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_251A8223C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_251C352B0()
{
  result = qword_27F47BC58;
  if (!qword_27F47BC58)
  {
    sub_251C369BC(255, &qword_27F47BC38, &qword_27F47BC40, &qword_27F47BC48, 0x277CCDAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BC58);
  }

  return result;
}

void sub_251C35328(uint64_t a1)
{
  if (!qword_27F47C8C8)
  {
    sub_251C35674(255, &qword_27F47C8D0, &qword_27F47C8D8, sub_251C3546C);
    sub_251C35180(255);
    sub_251C35518();
    sub_251C37174(&qword_27F47C8F0, sub_251C35180, MEMORY[0x277CBCB10]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C8C8);
    }
  }
}

void sub_251C35408(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251C3546C(uint64_t a1)
{
  if (!qword_27F47C8E0)
  {
    sub_251A8223C(255, &qword_27F47C8C0, 0x277D115B8);
    sub_251C35248(255, &qword_27F47B938, &qword_27F479F70, 0x277CCD1B0, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47C8E0);
    }
  }
}

unint64_t sub_251C35518()
{
  result = qword_27F47C8E8;
  if (!qword_27F47C8E8)
  {
    sub_251C35674(255, &qword_27F47C8D0, &qword_27F47C8D8, sub_251C3546C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C8E8);
  }

  return result;
}

void sub_251C35594(uint64_t a1)
{
  if (!qword_27F47C8F8)
  {
    sub_251C35674(255, &qword_27F47C900, &qword_27F47C908, sub_251C35700);
    sub_251C35328(255);
    sub_251C357E4();
    sub_251C37174(&qword_27F47C928, sub_251C35328, MEMORY[0x277CBCCE0]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C8F8);
    }
  }
}

void sub_251C35674(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_251C35408(255, a3, a4, MEMORY[0x277D83940]);
    sub_251A82284();
    v5 = sub_251C70974();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_251C35700(uint64_t a1)
{
  if (!qword_27F47C910)
  {
    sub_251A8223C(255, &qword_27F47C8C0, 0x277D115B8);
    v1 = MEMORY[0x277D83D88];
    sub_251C35248(255, &qword_27F47B938, &qword_27F479F70, 0x277CCD1B0, MEMORY[0x277D83D88]);
    sub_251C35248(255, &qword_27F47C918, &qword_27F479700, 0x277CCD650, v1);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F47C910);
    }
  }
}

unint64_t sub_251C357E4()
{
  result = qword_27F47C920;
  if (!qword_27F47C920)
  {
    sub_251C35674(255, &qword_27F47C900, &qword_27F47C908, sub_251C35700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C920);
  }

  return result;
}

void sub_251C35880(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_251C35594(255);
    a3(255);
    sub_251C37174(&qword_27F47C938, sub_251C35594, MEMORY[0x277CBCCE0]);
    v5 = sub_251C70784();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_251C35934@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_251C32080(*a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_251C35964@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_251C32518(*a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  return result;
}

unsigned __int8 *sub_251C359A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_251C71094();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_251C35F34(result, v5);
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
      result = sub_251C71724();
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

uint64_t sub_251C35F34(uint64_t a1, unint64_t a2)
{
  v2 = sub_251C710A4();
  v6 = sub_251C35FB4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_251C35FB4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_251C71584();
    if (!v9 || (v10 = v9, v11 = sub_251C6CBEC(v9, 0), v12 = sub_251C3610C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_251C70FA4();

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
      return sub_251C70FA4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_251C71724();
LABEL_4:

  return sub_251C70FA4();
}

unint64_t sub_251C3610C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_251C3632C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_251C71044();
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
          result = sub_251C71724();
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

    result = sub_251C3632C(v12, a6, a7);
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

    result = sub_251C71024();
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

unint64_t sub_251C3632C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_251C71054();
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
    v5 = MEMORY[0x25308CDE0](15, a1 >> 16);
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

uint64_t sub_251C363A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C36410(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251C35408(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251C36480(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C364E8(uint64_t a1)
{
  v2 = type metadata accessor for PBMedicationTrackings(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251C3658C(uint64_t a1)
{
  if (!qword_27F47C950)
  {
    sub_251C35408(255, &qword_27F47C8D8, sub_251C3546C, MEMORY[0x277D83940]);
    sub_251C3663C();
    v1 = sub_251C70904();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C950);
    }
  }
}

unint64_t sub_251C3663C()
{
  result = qword_27F47C958;
  if (!qword_27F47C958)
  {
    sub_251C35408(255, &qword_27F47C8D8, sub_251C3546C, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C958);
  }

  return result;
}

void sub_251C366C4(uint64_t a1)
{
  if (!qword_27F47C960)
  {
    sub_251C35408(255, &qword_27F47C8D8, sub_251C3546C, MEMORY[0x277D83940]);
    sub_251A82284();
    sub_251C3663C();
    v1 = sub_251C70904();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C960);
    }
  }
}

void sub_251C36780(uint64_t a1)
{
  if (!qword_27F47C968)
  {
    sub_251C3704C(255, &qword_27F47C970, sub_251C35700, MEMORY[0x277CBCD88]);
    sub_251C366C4(255);
    sub_251C3686C();
    sub_251C37174(&qword_27F47C980, sub_251C366C4, MEMORY[0x277CBCD18]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C968);
    }
  }
}

unint64_t sub_251C3686C()
{
  result = qword_27F47C978;
  if (!qword_27F47C978)
  {
    sub_251C3704C(255, &qword_27F47C970, sub_251C35700, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C978);
  }

  return result;
}

void sub_251C36938(uint64_t a1)
{
  if (!qword_27F47C9A0)
  {
    sub_251C369BC(255, &qword_27F478D60, &qword_27F478D68, &qword_27F478D70, 0x277CCD8A8);
    sub_251AF2A20();
    v1 = sub_251C707C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C9A0);
    }
  }
}

void sub_251C369BC(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    sub_251C35248(255, a3, a4, a5, MEMORY[0x277D83940]);
    sub_251A82284();
    v6 = sub_251C70974();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_251C36A4C(uint64_t a1)
{
  if (!qword_27F47C9A8)
  {
    sub_251C36938(255);
    sub_251C35248(255, &qword_27F47C918, &qword_27F479700, 0x277CCD650, MEMORY[0x277D83D88]);
    sub_251C37174(&qword_27F47C9B0, sub_251C36938, MEMORY[0x277CBCB70]);
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C9A8);
    }
  }
}

void sub_251C36B24(uint64_t a1)
{
  if (!qword_27F47C9B8)
  {
    sub_251C36938(255);
    sub_251C35700(255);
    sub_251C37174(&qword_27F47C9B0, sub_251C36938, MEMORY[0x277CBCB70]);
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C9B8);
    }
  }
}

void sub_251C36BD8(uint64_t a1)
{
  if (!qword_27F47C9C8)
  {
    sub_251C35248(255, &qword_27F47C8B8, &qword_27F47C8C0, 0x277D115B8, MEMORY[0x277D83940]);
    sub_251C36C84();
    v1 = sub_251C70904();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C9C8);
    }
  }
}

unint64_t sub_251C36C84()
{
  result = qword_27F47C9D0;
  if (!qword_27F47C9D0)
  {
    sub_251C35248(255, &qword_27F47C8B8, &qword_27F47C8C0, 0x277D115B8, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C9D0);
  }

  return result;
}

void sub_251C36D08(uint64_t a1)
{
  if (!qword_27F47C9D8)
  {
    sub_251C35248(255, &qword_27F47C8B8, &qword_27F47C8C0, 0x277D115B8, MEMORY[0x277D83940]);
    sub_251A82284();
    sub_251C36C84();
    v1 = sub_251C70904();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C9D8);
    }
  }
}

void sub_251C36DC0(uint64_t a1)
{
  if (!qword_27F47C9E0)
  {
    sub_251C3704C(255, &qword_27F47C9E8, sub_251C3546C, MEMORY[0x277CBCD88]);
    sub_251C36D08(255);
    sub_251C36EAC();
    sub_251C37174(&qword_27F47C9F8, sub_251C36D08, MEMORY[0x277CBCD18]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C9E0);
    }
  }
}

unint64_t sub_251C36EAC()
{
  result = qword_27F47C9F0;
  if (!qword_27F47C9F0)
  {
    sub_251C3704C(255, &qword_27F47C9E8, sub_251C3546C, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C9F0);
  }

  return result;
}

void sub_251C36F70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_251C37174(a4, a5, MEMORY[0x277CBCCE0]);
    v8 = sub_251C708C4();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t objectdestroyTm_11()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_251C3704C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_251A82284();
    v9 = a4(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_251C370C8(uint64_t a1)
{
  if (!qword_27F47CA28)
  {
    sub_251C2BF4C(255);
    sub_251C3546C(255);
    sub_251C37174(&qword_27F47C7C0, sub_251C2BF4C, MEMORY[0x277CBCD90]);
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47CA28);
    }
  }
}

uint64_t sub_251C37174(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_251C371BC()
{
  result = qword_27F47CA30;
  if (!qword_27F47CA30)
  {
    sub_251C3704C(255, &qword_27F47CA20, sub_251C3546C, MEMORY[0x277CBCF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CA30);
  }

  return result;
}

id sub_251C37244@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v6 = *(v2 + 16);
  v3 = *a1;
  *a2 = v6;
  a2[1] = v3;
  v4 = v3;

  return v6;
}

uint64_t sub_251C37288@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_251AF3A84(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  if (a1)
  {
    sub_251C6FE54();
    v10 = sub_251C6FE64();
    v11 = *(v10 - 8);
    result = (*(v11 + 48))(v7, 1, v10);
    if (result != 1)
    {
      return (*(v11 + 32))(a2, v7, v10);
    }

    __break(1u);
    goto LABEL_8;
  }

  sub_251C6FE54();
  v13 = sub_251C6FE64();
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v9, 1, v13);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  return (*(v14 + 32))(a2, v9, v13);
}

uint64_t sub_251C3745C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7972726163;
  }

  else
  {
    v3 = 1685025392;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x7972726163;
  }

  else
  {
    v5 = 1685025392;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_251C719D4();
  }

  return v8 & 1;
}

uint64_t sub_251C374F8()
{
  sub_251C71AA4();
  sub_251C70FB4();

  return sub_251C71AD4();
}

uint64_t sub_251C37570(uint64_t a1)
{
  sub_251C70FB4();
}

uint64_t sub_251C375D4(uint64_t a1)
{
  sub_251C71AA4();
  sub_251C70FB4();

  return sub_251C71AD4();
}

uint64_t sub_251C37648@<X0>(char *a2@<X8>)
{
  v3 = sub_251C71854();

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

void sub_251C376A8(uint64_t *a1@<X8>)
{
  v2 = 1685025392;
  if (*v1)
  {
    v2 = 0x7972726163;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_251C37700()
{
  result = qword_27F47CA40;
  if (!qword_27F47CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CA40);
  }

  return result;
}

uint64_t sub_251C3778C()
{
  if (*v0)
  {
    return 0x73726575737369;
  }

  else
  {
    return 118;
  }
}

uint64_t sub_251C377BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 118 && a2 == 0xE100000000000000 || (sub_251C719D4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x73726575737369 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_251C719D4();

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

uint64_t sub_251C37890(uint64_t a1)
{
  v2 = sub_251C37AE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251C378CC(uint64_t a1)
{
  v2 = sub_251C37AE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VHRDirectory.encode(to:)(void *a1)
{
  sub_251C37D98(0, &qword_27F47CA48, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - v7;
  v10[0] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251C37AE0();
  sub_251C71B14();
  v12 = 0;
  sub_251C71954();
  if (!v2)
  {
    v10[1] = v10[0];
    v11 = 1;
    sub_251C37B34(0);
    sub_251C37DFC(&qword_27F47CA60, &qword_27F47CA68, &protocol conformance descriptor for VHRDirectoryIssuer, MEMORY[0x277D83948]);
    sub_251C71964();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_251C37AE0()
{
  result = qword_27F47CA50;
  if (!qword_27F47CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CA50);
  }

  return result;
}

void sub_251C37B34(uint64_t a1)
{
  if (!qword_27F47CA58)
  {
    type metadata accessor for VHRDirectoryIssuer(255);
    v1 = sub_251C711A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47CA58);
    }
  }
}

uint64_t VHRDirectory.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_251C37D98(0, &qword_27F47CA70, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251C37AE0();
  sub_251C71B04();
  if (!v2)
  {
    v15 = 0;
    v10 = sub_251C718C4();
    sub_251C37B34(0);
    v14 = 1;
    sub_251C37DFC(&qword_27F47CA78, &qword_27F47CA80, &protocol conformance descriptor for VHRDirectoryIssuer, MEMORY[0x277D83978]);
    sub_251C718D4();
    (*(v7 + 8))(v9, v6);
    v12 = v13[1];
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_251C37D98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251C37AE0();
    v7 = a3(a1, &type metadata for VHRDirectory.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_251C37DFC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_251C37B34(255);
    sub_251C37E78(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251C37E78(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VHRDirectoryIssuer(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_251C37F10()
{
  result = qword_27F47CA88;
  if (!qword_27F47CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CA88);
  }

  return result;
}

unint64_t sub_251C37F68()
{
  result = qword_27F47CA90;
  if (!qword_27F47CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CA90);
  }

  return result;
}

unint64_t sub_251C37FC0()
{
  result = qword_27F47CA98;
  if (!qword_27F47CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CA98);
  }

  return result;
}

uint64_t sub_251C38014(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C6FE64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_251C716A4();

  v24 = 60;
  v25 = 0xE100000000000000;
  v23 = a1;
  swift_getMetatypeMetadata();
  v8 = sub_251C70F74();
  MEMORY[0x25308CDA0](v8);

  MEMORY[0x25308CDA0](8736, 0xE200000000000000);
  v9 = (*(a2 + 56))(a1, a2);
  MEMORY[0x25308CDA0](v9);

  MEMORY[0x25308CDA0](2112034, 0xE300000000000000);
  (*(a2 + 8))(&v23, a1, a2);
  v10 = 5522759;
  v11 = 0xE300000000000000;
  v12 = 5526864;
  if (v23 != 6)
  {
    v12 = 0x4543415254;
    v11 = 0xE500000000000000;
  }

  v13 = 0xE700000000000000;
  v14 = 0x534E4F4954504FLL;
  if (v23 != 4)
  {
    v14 = 1414745936;
    v13 = 0xE400000000000000;
  }

  if (v23 <= 5u)
  {
    v12 = v14;
    v11 = v13;
  }

  v15 = 0xE400000000000000;
  if (v23 == 2)
  {
    v15 = 0xE300000000000000;
  }

  else
  {
    v10 = 1145128264;
  }

  v16 = 0xE700000000000000;
  v17 = 0x5443454E4E4F43;
  if (v23)
  {
    v17 = 0x4554454C4544;
    v16 = 0xE600000000000000;
  }

  if (v23 <= 1u)
  {
    v10 = v17;
    v15 = v16;
  }

  if (v23 <= 3u)
  {
    v18 = v10;
  }

  else
  {
    v18 = v12;
  }

  if (v23 <= 3u)
  {
    v19 = v15;
  }

  else
  {
    v19 = v11;
  }

  MEMORY[0x25308CDA0](v18, v19);

  MEMORY[0x25308CDA0](32, 0xE100000000000000);
  (*(a2 + 40))(a1, a2);
  sub_251C3A118();
  v20 = sub_251C719A4();
  MEMORY[0x25308CDA0](v20);

  (*(v5 + 8))(v7, v4);
  MEMORY[0x25308CDA0](62, 0xE100000000000000);
  return v24;
}

uint64_t sub_251C382FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C6FE64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_251C716A4();
  v25 = v23;
  v26 = v24;
  MEMORY[0x25308CDA0](60, 0xE100000000000000);
  v23 = a1;
  swift_getMetatypeMetadata();
  v8 = sub_251C70F74();
  MEMORY[0x25308CDA0](v8);

  MEMORY[0x25308CDA0](8736, 0xE200000000000000);
  v9 = (*(a2 + 56))(a1, a2);
  MEMORY[0x25308CDA0](v9);

  MEMORY[0x25308CDA0](2112034, 0xE300000000000000);
  (*(a2 + 8))(&v23, a1, a2);
  v10 = 5522759;
  v11 = 0xE300000000000000;
  v12 = 5526864;
  if (v23 != 6)
  {
    v12 = 0x4543415254;
    v11 = 0xE500000000000000;
  }

  v13 = 0xE700000000000000;
  v14 = 0x534E4F4954504FLL;
  if (v23 != 4)
  {
    v14 = 1414745936;
    v13 = 0xE400000000000000;
  }

  if (v23 <= 5u)
  {
    v12 = v14;
    v11 = v13;
  }

  v15 = 0xE400000000000000;
  if (v23 == 2)
  {
    v15 = 0xE300000000000000;
  }

  else
  {
    v10 = 1145128264;
  }

  v16 = 0xE700000000000000;
  v17 = 0x5443454E4E4F43;
  if (v23)
  {
    v17 = 0x4554454C4544;
    v16 = 0xE600000000000000;
  }

  if (v23 <= 1u)
  {
    v10 = v17;
    v15 = v16;
  }

  if (v23 <= 3u)
  {
    v18 = v10;
  }

  else
  {
    v18 = v12;
  }

  if (v23 <= 3u)
  {
    v19 = v15;
  }

  else
  {
    v19 = v11;
  }

  MEMORY[0x25308CDA0](v18, v19);

  MEMORY[0x25308CDA0](32, 0xE100000000000000);
  (*(a2 + 40))(a1, a2);
  v20 = sub_251C6FDD4();
  (*(v5 + 8))(v7, v4);
  v21 = HKSensitiveLogItem();

  sub_251C715C4();
  swift_unknownObjectRelease();
  sub_251C717C4();
  __swift_destroy_boxed_opaque_existential_1(&v23);
  MEMORY[0x25308CDA0](62, 0xE100000000000000);
  return v25;
}

uint64_t sub_251C3862C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 56;
    do
    {

      sub_251C6F974();

      v2 += 32;
      --v1;
    }

    while (v1);
  }

  return result;
}

Swift::Void __swiftcall WebRequest.add(header:)(HealthRecordsDaemon::HTTPHeader header)
{
  countAndFlagsBits = header.value._countAndFlagsBits;
  object = header.name._object;
  v4 = *header.name._countAndFlagsBits;
  v3 = *(header.name._countAndFlagsBits + 8);
  v6 = *(header.name._countAndFlagsBits + 16);
  v5 = *(header.name._countAndFlagsBits + 24);
  if ((*(header.value._countAndFlagsBits + 16))(header.name._object, header.value._countAndFlagsBits))
  {

    v8 = (*(countAndFlagsBits + 32))(v17, object, countAndFlagsBits);
    v9 = *v7;
    if (*v7)
    {
      v10 = v7;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v10 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_251C3915C(0, *(v9 + 2) + 1, 1, v9, &qword_27F47A080, &type metadata for HTTPHeader);
        *v10 = v9;
      }

      v13 = *(v9 + 2);
      v12 = *(v9 + 3);
      if (v13 >= v12 >> 1)
      {
        v9 = sub_251C3915C((v12 > 1), v13 + 1, 1, v9, &qword_27F47A080, &type metadata for HTTPHeader);
        *v10 = v9;
      }

      *(v9 + 2) = v13 + 1;
      v14 = &v9[32 * v13];
      *(v14 + 4) = v4;
      *(v14 + 5) = v3;
      *(v14 + 6) = v6;
      *(v14 + 7) = v5;
      v8(v17, 0);
    }

    else
    {
      v8(v17, 0);
    }
  }

  else
  {
    sub_251C3A170(0, &qword_27F47A080, &type metadata for HTTPHeader);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_251C74800;
    *(v15 + 32) = v4;
    *(v15 + 40) = v3;
    *(v15 + 48) = v6;
    *(v15 + 56) = v5;
    v16 = *(countAndFlagsBits + 24);

    v16(v15, object, countAndFlagsBits);
  }
}

Swift::Void __swiftcall WebRequest.removeHeader(name:)(Swift::String name)
{
  v3 = v2;
  v4 = v1;
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v6 = (*(v2 + 16))();
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = v6 + 56;
      v30 = v8 - 1;
      v32 = v3;
      v33 = MEMORY[0x277D84F90];
      v11 = object;
      v31 = v4;
      do
      {
        v12 = (v10 + 32 * v9);
        v13 = v9;
        while (1)
        {
          if (v13 >= *(v7 + 16))
          {
            __break(1u);
            return;
          }

          v14 = *(v12 - 3);
          v15 = *(v12 - 2);
          v16 = v14 == countAndFlagsBits && v15 == v11;
          if (!v16)
          {
            v17 = *(v12 - 1);
            v18 = *v12;
            v19 = v10;
            v20 = v8;
            v21 = v7;
            v22 = sub_251C719D4();
            v11 = object;
            v7 = v21;
            v8 = v20;
            v10 = v19;
            if ((v22 & 1) == 0)
            {
              break;
            }
          }

          ++v13;
          v12 += 4;
          if (v8 == v13)
          {
            v3 = v32;
            v4 = v31;
            goto LABEL_21;
          }
        }

        v23 = v33;
        v36 = v33;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_251C0BE3C(0, *(v33 + 16) + 1, 1);
          v23 = v33;
        }

        v25 = *(v23 + 16);
        v24 = *(v23 + 24);
        v26 = v25 + 1;
        v8 = v20;
        v7 = v21;
        v11 = object;
        if (v25 >= v24 >> 1)
        {
          v34 = v25 + 1;
          v29 = *(v23 + 16);
          sub_251C0BE3C((v24 > 1), v25 + 1, 1);
          v26 = v34;
          v11 = object;
          v25 = v29;
          v7 = v21;
          v8 = v20;
          v23 = v36;
        }

        v9 = v13 + 1;
        *(v23 + 16) = v26;
        v33 = v23;
        v27 = (v23 + 32 * v25);
        v27[4] = v14;
        v27[5] = v15;
        v27[6] = v17;
        v27[7] = v18;
        v16 = v30 == v13;
        v3 = v32;
        v4 = v31;
        v10 = v19;
      }

      while (!v16);
    }

    else
    {
      v33 = MEMORY[0x277D84F90];
    }

LABEL_21:

    v6 = v33;
  }

  v28 = *(v3 + 24);

  v28(v6, v4, v3);
}

uint64_t WebRequest.urlRequest(attribution:timeoutInterval:cachePolicy:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_251C6FE64();
  MEMORY[0x28223BE20](v11 - 8);
  (*(a7 + 40))(a6, a7);
  sub_251C6F954();
  sub_251C6F924();
  (*(a7 + 8))(&v13, a6, a7);
  sub_251C6F914();
  (*(a7 + 48))(a6, a7);
  sub_251C6F984();
  result = (*(a7 + 16))(a6, a7);
  if (result)
  {
    sub_251C3862C(result);
  }

  if ((a3 & 1) == 0)
  {
    result = sub_251C6F944();
  }

  if ((a5 & 1) == 0)
  {
    return sub_251C6F934();
  }

  return result;
}

char *sub_251C38CCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_251C3A170(0, &qword_27F4793D0, MEMORY[0x277D837D0]);
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

char *sub_251C38DF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_251C39FFC(0, &qword_27F47C200, sub_251C3A060, MEMORY[0x277D84560]);
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

char *sub_251C38FD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_251C3A170(0, &qword_27F479720, &type metadata for ClinicalSharingNodeMetadata);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_251C3915C(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_251C3A170(0, a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_251C39308(void *result, int64_t a2, char a3, void *a4)
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
    sub_251C39FFC(0, &qword_27F47CAC0, sub_251B10F10, MEMORY[0x277D84560]);
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
    sub_251B10F10();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_251C39454(char *result, int64_t a2, char a3, char *a4)
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
    sub_251C3A170(0, &qword_27F47CAB8, &type metadata for WellKnownJWKSProcessingContext);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_251C395D0(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    sub_251C0C9AC(0, a5, a6, a7);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[5 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 40 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_251AA98B0(0, a6, a7);
    swift_arrayInitWithCopy();
  }

  return v15;
}

char *sub_251C39724(char *result, int64_t a2, char a3, char *a4)
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
    sub_251C3A170(0, &qword_27F47CAC8, MEMORY[0x277D83A90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_251C398FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_251C3A170(0, &qword_27F47CAE8, &type metadata for PBCycleSymptoms);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void *sub_251C39A9C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_251C39FFC(0, a5, a6, MEMORY[0x277D84560]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_251C39C90(uint64_t a1, uint64_t a2)
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

  sub_251C39FFC(0, &qword_27F479238, MEMORY[0x277CC95F0], MEMORY[0x277D84560]);
  v4 = *(sub_251C70074() - 8);
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

void *sub_251C39DB0(uint64_t a1, uint64_t a2)
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

  sub_251C3A170(0, &qword_27F47BD20, MEMORY[0x277D84F68] + 8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_251C39E40(uint64_t a1, uint64_t a2)
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

  sub_251C3A170(0, &qword_27F479720, &type metadata for ClinicalSharingNodeMetadata);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_251C39EC8(uint64_t a1, uint64_t a2)
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

  sub_251C39FFC(0, &qword_27F47CAF8, type metadata accessor for HKCategoryValueSleepAnalysis, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void sub_251C39FFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251C3A060()
{
  if (!qword_27F47C208)
  {
    v0 = sub_251C712B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C208);
    }
  }
}

void sub_251C3A0B8(uint64_t a1)
{
  if (!qword_2813E33D0[0])
  {
    v2 = type metadata accessor for ClinicalSharingSyncTask(255);
    v4 = type metadata accessor for SingleValuePublisherTaskQueue.PendingTaskWrapper(a1, v2, &off_281CEA850, v3);
    if (!v5)
    {
      atomic_store(v4, qword_2813E33D0);
    }
  }
}

unint64_t sub_251C3A118()
{
  result = qword_27F478E68;
  if (!qword_27F478E68)
  {
    sub_251C6FE64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478E68);
  }

  return result;
}

void sub_251C3A170(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_251C719B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251C3A1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a4;
  v38 = a3;
  v36 = a2;
  v40 = a1;
  v34[0] = type metadata accessor for PBBlobAuth(0);
  v6 = *(v34[0] - 8);
  v7 = MEMORY[0x28223BE20](v34[0]);
  v39 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v34 - v9;
  v11 = type metadata accessor for PBBlobs(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C703A4();
  v15 = type metadata accessor for PBPushBlobsRequest(0);
  v16 = *(v15 + 20);
  v17 = *(v12 + 56);
  v17(a5 + v16, 1, 1, v11);
  v18 = *(v15 + 24);
  v19 = *(v6 + 56);
  v34[1] = v6 + 56;
  v35 = v19;
  v20 = v34[0];
  v19(a5 + v18, 1, 1, v34[0]);
  sub_251C3A63C(v40, v14, type metadata accessor for PBBlobs);
  sub_251C3A6A4(a5 + v16, &qword_27F47A938, type metadata accessor for PBBlobs);
  v21 = v14;
  v22 = v36;
  sub_251C3A754(v21, a5 + v16, type metadata accessor for PBBlobs);
  v23 = a5 + v16;
  v24 = v37;
  v17(v23, 0, 1, v11);
  v25 = v38;
  *(v10 + 8) = xmmword_251C745D0;
  sub_251C703A4();
  *v10 = v22;
  v26 = *(v10 + 1);
  v27 = *(v10 + 2);

  sub_251A858C4(v25, v24);
  sub_251A83028(v26, v27);
  *(v10 + 1) = v25;
  *(v10 + 2) = v24;
  *(v10 + 3) = 0x6977363532414853;
  *(v10 + 4) = 0xEF41534443456874;
  v28 = v39;
  sub_251C3A63C(v10, v39, type metadata accessor for PBBlobAuth);
  sub_251C3A6A4(a5 + v18, qword_2813E7028, type metadata accessor for PBBlobAuth);
  sub_251C3A754(v28, a5 + v18, type metadata accessor for PBBlobAuth);
  v35(a5 + v18, 0, 1, v20);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v29 = sub_251C70764();
  __swift_project_value_buffer(v29, qword_2813E8130);

  sub_251A858C4(v25, v24);
  v30 = sub_251C70744();
  v31 = sub_251C713C4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 134217984;
    *(v32 + 4) = *(v22 + 16);

    sub_251A83028(v25, v24);
    _os_log_impl(&dword_251A6C000, v30, v31, "Generated PBPushBlobsRequest containing number of certs: %ld", v32, 0xCu);
    MEMORY[0x25308E2B0](v32, -1, -1);

    sub_251A83028(v25, v24);
  }

  else
  {

    sub_251A83028(v25, v24);

    sub_251A83028(v25, v24);
  }

  sub_251C3A7BC(v40, type metadata accessor for PBBlobs);
  return sub_251C3A7BC(v10, type metadata accessor for PBBlobAuth);
}

uint64_t sub_251C3A63C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C3A6A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251C3A700(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_251C3A700(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251C3A754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C3A7BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251C3A81C(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void *))
{
  v5[0] = a1;
  v5[1] = a2;
  v6 = a3 & 1;
  return a4(v5);
}

uint64_t sub_251C3A85C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *(swift_allocObject() + 16) = a1;
  sub_251AC5FEC(0, &qword_2813E2000, sub_251AC5BAC);
  swift_allocObject();
  v4 = a1;
  result = sub_251C70A64();
  *a2 = result;
  return result;
}

void sub_251C3A900(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_251AD96B8;
  *(v7 + 24) = v6;
  v9[4] = sub_251C3B924;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_251C3AAD0;
  v9[3] = &block_descriptor_27_0;
  v8 = _Block_copy(v9);

  [a3 fetchAllAccountsWithCompletion_];
  _Block_release(v8);
}

void sub_251C3AA10(void *a1, id a2, void (*a3)(id, _BOOL8))
{
  v4 = a1;
  if (!a1)
  {
    v4 = a2;
    if (!a2)
    {
      sub_251AC6624();
      v4 = swift_allocError();
      v6 = v5;
      a2 = 0;
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 2;
    }

    v7 = a2;
    a1 = 0;
  }

  v8 = a1 == 0;

  a3(v4, v8);

  sub_251B19EEC(v4, v8);
}

uint64_t sub_251C3AAD0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_251A8223C(0, &qword_2813E1D98, 0x277D123D8);
    v4 = sub_251C71154();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_251C3AB74@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = v5;
  sub_251AC5FEC(0, &qword_2813E1FE0, sub_251AC5D0C);
  swift_allocObject();
  v7 = a2;
  v8 = v5;
  result = sub_251C70A64();
  *a3 = result;
  return result;
}

void sub_251C3AC28(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_251C70074();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v13 = [a4 identifier];
  sub_251C70054();

  v14 = sub_251C70034();
  (*(v9 + 8))(v11, v8);
  v15 = swift_allocObject();
  v15[2] = sub_251C3B934;
  v15[3] = v12;
  v15[4] = a4;
  aBlock[4] = sub_251C3B8C4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251AD9914;
  aBlock[3] = &block_descriptor_15;
  v16 = _Block_copy(aBlock);
  v17 = a4;

  [a3 refreshAccountConnectionInformationForAccountWithIdentifier:v14 completion:v16];
  _Block_release(v16);
}

void sub_251C3AE20(void *a1, void *a2, void (*a3)(void), uint64_t a4, void *a5)
{
  if (a1)
  {
    v8 = a1;
    v9 = [v8 authorization];
    if (v9)
    {
      v10 = v9;
      v38 = a5;
      v11 = v10;
      (a3)(a5, v10, 0);
    }

    else
    {
      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v26 = sub_251C70764();
      __swift_project_value_buffer(v26, qword_2813E8130);
      v27 = a2;
      v28 = sub_251C70744();
      v29 = sub_251C713D4();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v39 = v31;
        *v30 = 136315138;
        v32 = a2;
        sub_251C3B864(0);
        v33 = sub_251C70F74();
        v35 = sub_251B10780(v33, v34, &v39);

        *(v30 + 4) = v35;
        _os_log_impl(&dword_251A6C000, v28, v29, "Did not receive a credential on refreshed account connection info for Accounts. Error: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x25308E2B0](v31, -1, -1);
        MEMORY[0x25308E2B0](v30, -1, -1);
      }

      sub_251B26550();
      v36 = swift_allocError();
      *(v37 + 8) = 0;
      *(v37 + 16) = 0;
      *v37 = 3;
      *(v37 + 24) = 3;
      (a3)(v36, 0, 1);
    }
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v12 = sub_251C70764();
    __swift_project_value_buffer(v12, qword_2813E8130);
    v13 = a2;
    v14 = sub_251C70744();
    v15 = sub_251C713D4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v39 = v17;
      *v16 = 136315138;
      v18 = a2;
      sub_251C3B864(0);
      v19 = sub_251C70F74();
      v21 = sub_251B10780(v19, v20, &v39);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_251A6C000, v14, v15, "Could not refresh account connection info for Accounts. Error: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x25308E2B0](v17, -1, -1);
      MEMORY[0x25308E2B0](v16, -1, -1);
    }

    v22 = a2;
    if (!a2)
    {
      sub_251AC6624();
      v22 = swift_allocError();
      *v23 = 0;
      *(v23 + 8) = 0;
      *(v23 + 16) = 2;
    }

    v24 = a2;
    a3(v22);
    sub_251C3B8D0(v22, v25, 1);
  }
}

void sub_251C3B214(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_251C70074();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;

  v12 = sub_251C70034();
  (*(v9 + 16))(aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_251C3B414;
  *(v14 + 24) = v11;
  (*(v9 + 32))(v14 + v13, aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_251C3B7C8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251AD9914;
  aBlock[3] = &block_descriptor_22;
  v15 = _Block_copy(aBlock);

  [a3 refreshAccountConnectionInformationForAccountWithIdentifier:v12 completion:v15];
  _Block_release(v15);
}

void sub_251C3B418(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v10 = sub_251C70074();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12 && (v15 = [v12 authorization]) != 0 && (v16 = v15, v17 = objc_msgSend(v15, sel_accessToken), v16, v17))
  {
    v18 = sub_251C70F14();
    v20 = v19;

    a3(v18, v20, 0);
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v39[1] = a4;
    v21 = sub_251C70764();
    __swift_project_value_buffer(v21, qword_2813E8130);
    (*(v11 + 16))(v14, a5, v10);
    v22 = a2;
    v23 = sub_251C70744();
    v24 = sub_251C713F4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v39[0] = a3;
      v27 = v26;
      v40 = v26;
      *v25 = 136315394;
      sub_251BD3E8C();
      v28 = sub_251C719A4();
      v30 = v29;
      (*(v11 + 8))(v14, v10);
      v31 = sub_251B10780(v28, v30, &v40);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2080;
      v39[2] = a2;
      v32 = a2;
      sub_251C3B864(0);
      v33 = sub_251C70F74();
      v35 = sub_251B10780(v33, v34, &v40);

      *(v25 + 14) = v35;
      _os_log_impl(&dword_251A6C000, v23, v24, "Could not refreshAccessToken. Account: %s. Error: %s", v25, 0x16u);
      swift_arrayDestroy();
      v36 = v27;
      a3 = v39[0];
      MEMORY[0x25308E2B0](v36, -1, -1);
      MEMORY[0x25308E2B0](v25, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }

    sub_251B26550();
    v37 = swift_allocError();
    *(v38 + 8) = 0;
    *(v38 + 16) = 0;
    *v38 = 3;
    *(v38 + 24) = 3;
    a3(v37, 0, 1);
  }
}

void sub_251C3B7C8(uint64_t a1, void *a2)
{
  v5 = *(sub_251C70074() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_251C3B418(a1, a2, v6, v7, v8);
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_251C3B864(uint64_t a1)
{
  if (!qword_2813E1C20)
  {
    sub_251A82284();
    v1 = sub_251C71574();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E1C20);
    }
  }
}

void sub_251C3B8D0(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {

    a1 = a2;
  }
}

uint64_t sub_251C3B940(uint64_t a1)
{
  v26 = a1;
  v25 = sub_251C70014();
  v1 = *(v25 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v25);
  sub_251B45D34(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C3BDB8(0);
  v9 = *(v8 - 8);
  v27 = v8;
  v28 = v9;
  MEMORY[0x28223BE20](v8);
  v24 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_251C71444();
  sub_251C3BE88(0, &qword_2813E2060, &qword_2813E7518, MEMORY[0x277CC9318], MEMORY[0x277CBCEA8]);
  sub_251AE526C(0, &qword_2813E37D0, &type metadata for ClinicalSharingSyncHistory);
  v23[1] = v11;
  sub_251AE9E20();
  sub_251C70AE4();

  sub_251C3CC50(&qword_2813E2580, sub_251B45D34, MEMORY[0x277CBCC08]);
  v12 = sub_251C70A94();
  (*(v5 + 8))(v7, v4);
  v29 = v12;
  v13 = v25;
  (*(v1 + 16))(v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v25);
  v14 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v15 = swift_allocObject();
  (*(v1 + 32))(v15 + v14, v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v16 = v23[0];
  *(v15 + ((v2 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23[0];
  v17 = v16;
  sub_251C70964();
  v18 = MEMORY[0x277CBCD88];
  sub_251C3BE88(0, &qword_2813E21A0, &qword_2813E37D0, &type metadata for ClinicalSharingSyncHistory, MEMORY[0x277CBCD88]);
  sub_251C3BF08(&qword_2813E21A8, &qword_2813E21A0, v18, MEMORY[0x277CBCD90]);
  v19 = v24;
  sub_251C70B94();

  sub_251C3CC50(&qword_2813E2360, sub_251C3BDB8, MEMORY[0x277CBCCE0]);
  v20 = v27;
  v21 = sub_251C70A94();
  (*(v28 + 8))(v19, v20);
  return v21;
}

void sub_251C3BDB8(uint64_t a1)
{
  if (!qword_2813E2358)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_251C3BE88(255, &qword_2813E21A0, &qword_2813E37D0, &type metadata for ClinicalSharingSyncHistory, MEMORY[0x277CBCD88]);
    sub_251C3BF08(&qword_2813E21A8, &qword_2813E21A0, v1, MEMORY[0x277CBCD90]);
    v2 = sub_251C708D4();
    if (!v3)
    {
      atomic_store(v2, &qword_2813E2358);
    }
  }
}

void sub_251C3BE88(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_251AE526C(255, a3, a4);
    v9 = v8;
    v10 = sub_251A82284();
    v11 = a5(a1, v9, v10, MEMORY[0x277D84950]);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_251C3BF08(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_251C3BE88(255, a2, &qword_2813E37D0, &type metadata for ClinicalSharingSyncHistory, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251C3BF60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_251C70014();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = *a1;
  (*(v9 + 16))(v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  (*(v9 + 32))(v13 + v12, v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v13 + ((v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v14 = MEMORY[0x277CBCEA8];
  sub_251C3BE88(0, &qword_2813E2050, &qword_2813E37D0, &type metadata for ClinicalSharingSyncHistory, MEMORY[0x277CBCEA8]);
  swift_allocObject();

  v15 = a3;
  v18[1] = sub_251C70A64();
  sub_251C3BF08(&qword_2813E2058, &qword_2813E2050, v14, MEMORY[0x277CBCEB0]);
  v16 = sub_251C70A94();

  *a4 = v16;
  return result;
}

uint64_t sub_251C3C170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  if (a3)
  {

    v11 = sub_251B09A24(a3);
    sub_251C3CDC0(0, &qword_2813E1C78, MEMORY[0x277CC9578], MEMORY[0x277D84560]);
    v12 = sub_251C70014();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_251C74800;
    (*(v13 + 16))(v15 + v14, a4, v12);
    sub_251BFF7EC(v15);
    v16 = v11;
  }

  else
  {
    sub_251C3CDC0(0, &qword_2813E1C78, MEMORY[0x277CC9578], MEMORY[0x277D84560]);
    v17 = sub_251C70014();
    v18 = *(v17 - 8);
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_251C74800;
    (*(v18 + 16))(v16 + v19, a4, v17);
  }

  sub_251C6FA54();
  swift_allocObject();
  sub_251C6FA44();
  sub_251C3CD48();
  v20 = sub_251C6FA34();
  v22 = v21;

  v23 = sub_251C6FEC4();
  v24 = sub_251C70EE4();
  v25 = swift_allocObject();
  v25[2] = sub_251AD96B8;
  v25[3] = v10;
  v25[4] = v16;
  v28[4] = sub_251C3CD9C;
  v28[5] = v25;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 1107296256;
  v28[2] = sub_251BCB170;
  v28[3] = &block_descriptor_23;
  v26 = _Block_copy(v28);

  [a5 setData:v23 forKey:v24 completion:v26];
  _Block_release(v26);

  return sub_251A83028(v20, v22);
}

void sub_251C3C6A4(char a1, void *a2, void (*a3)(void *, uint64_t), uint64_t a4, void *a5)
{
  if (a1)
  {
    a3(a5, 0);
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v7 = sub_251C70764();
    __swift_project_value_buffer(v7, qword_2813E8130);
    v8 = a2;
    v9 = sub_251C70744();
    v10 = sub_251C713D4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      v13 = a2;
      sub_251C3CDC0(0, &qword_2813E1C20, sub_251A82284, MEMORY[0x277D83D88]);
      v14 = sub_251C70F74();
      v16 = sub_251B10780(v14, v15, &v20);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_251A6C000, v9, v10, "Could not save ClinicalSharingSyncHistory: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x25308E2B0](v12, -1, -1);
      MEMORY[0x25308E2B0](v11, -1, -1);
    }

    v17 = a2;
    if (!a2)
    {
      sub_251AC6624();
      v17 = swift_allocError();
      *v18 = 0;
      *(v18 + 8) = 0;
      *(v18 + 16) = 2;
    }

    v19 = a2;
    a3(v17, 1);
  }
}

void sub_251C3C8C8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  if (v3 >> 60 == 15)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v4 = sub_251C70764();
    __swift_project_value_buffer(v4, qword_2813E8130);
    v5 = sub_251C70744();
    v6 = sub_251C713C4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_251A6C000, v5, v6, "No sync history available to retrieve", v7, 2u);
      MEMORY[0x25308E2B0](v7, -1, -1);
    }

    *a2 = 0;
  }

  else
  {
    v8 = *a1;
    sub_251C6F9F4();
    swift_allocObject();
    sub_251A858C4(v8, v3);
    sub_251C6F9E4();
    sub_251C3CE24();
    sub_251C6F9D4();
    sub_251A8596C(v8, v3);

    *a2 = v9;
  }
}

uint64_t sub_251C3CBA4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_251C70014() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_251C3BF60(a1, v2 + v6, v7, a2);
}

uint64_t sub_251C3CC50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251C3CC98(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_251C70014() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_251C3C170(a1, a2, v8, v2 + v6, v7);
}

unint64_t sub_251C3CD48()
{
  result = qword_2813E37E0;
  if (!qword_2813E37E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E37E0);
  }

  return result;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_251C3CDC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_251C3CE24()
{
  result = qword_2813E37D8;
  if (!qword_2813E37D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E37D8);
  }

  return result;
}

uint64_t sub_251C3CE78()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2898);
  __swift_project_value_buffer(v0, qword_27F4A2898);
  sub_251C3DAB0(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "plaintext";
  *(v7 + 8) = 9;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "signature";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251C3D058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_251C70444();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_251C3D0E8(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_251C704D4();
    }
  }

  return result;
}

uint64_t sub_251C3D0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBPayload(0);
  type metadata accessor for PBPlainText(0);
  sub_251C3DF90(&qword_27F479530, type metadata accessor for PBPlainText, &unk_251C755C8);
  return sub_251C70564();
}

uint64_t sub_251C3D19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C3D270(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = *v3;
    v7 = v3[1];
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_11;
      }

      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((v7 & 0xFF000000000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      v9 = v6;
      v10 = v6 >> 32;
    }

    if (v9 != v10)
    {
LABEL_10:
      sub_251C70624();
    }

LABEL_11:
    type metadata accessor for PBPayload(0);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251C3D270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_251C3DAB0(0, &qword_27F47C278, type metadata accessor for PBPlainText, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBPlainText(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBPayload(0);
  sub_251C3D8CC(a1 + *(v12 + 24), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251C3D960(v7);
  }

  sub_251C3D9EC(v7, v11);
  sub_251C3DF90(&qword_27F479530, type metadata accessor for PBPlainText, &unk_251C755C8);
  sub_251C706A4();
  return sub_251C3DA50(v11, type metadata accessor for PBPlainText);
}

uint64_t sub_251C3D478@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = xmmword_251C745D0;
  sub_251C703A4();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for PBPlainText(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_251C3D550(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C3DF90(&qword_27F47CB20, type metadata accessor for PBPayload, &unk_251C87748);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251C3D5CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F478940 != -1)
  {
    swift_once();
  }

  v2 = sub_251C706D4();
  v3 = __swift_project_value_buffer(v2, qword_27F4A2898);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_251C3D674(uint64_t a1)
{
  v2 = sub_251C3DF90(&qword_27F47C290, type metadata accessor for PBPayload, &unk_251C87780);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251C3D6E0(uint64_t a1, uint64_t a2)
{
  sub_251C3DF90(&qword_27F47C290, type metadata accessor for PBPayload, &unk_251C87780);

  return sub_251C705C4();
}

uint64_t type metadata accessor for PBPayload(uint64_t a1)
{
  result = qword_27F47CB30;
  if (!qword_27F47CB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251C3D8CC(uint64_t a1, uint64_t a2)
{
  sub_251C3DAB0(0, &qword_27F47C278, type metadata accessor for PBPlainText, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251C3D960(uint64_t a1)
{
  sub_251C3DAB0(0, &qword_27F47C278, type metadata accessor for PBPlainText, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251C3D9EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBPlainText(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251C3DA50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251C3DAB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251C3DB14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBPlainText(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C3DAB0(0, &qword_27F47C278, type metadata accessor for PBPlainText, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  sub_251C3DEFC(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for PBPayload(0) + 24);
  v16 = *(v12 + 56);
  sub_251C3D8CC(a1 + v15, v14);
  sub_251C3D8CC(a2 + v15, &v14[v16]);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      sub_251C3D960(v14);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_251C3D8CC(v14, v10);
  if (v17(&v14[v16], 1, v4) == 1)
  {
    sub_251C3DA50(v10, type metadata accessor for PBPlainText);
LABEL_6:
    sub_251C3DA50(v14, sub_251C3DEFC);
    goto LABEL_13;
  }

  sub_251C3D9EC(&v14[v16], v7);
  v18 = *(v4 + 20);
  v19 = *&v10[v18];
  v20 = *&v7[v18];
  if (v19 != v20)
  {

    v21 = sub_251AB8F0C(v19, v20);

    if (!v21)
    {
      sub_251C3DA50(v7, type metadata accessor for PBPlainText);
      sub_251C3DA50(v10, type metadata accessor for PBPlainText);
      sub_251C3D960(v14);
      goto LABEL_13;
    }
  }

  sub_251C703B4();
  sub_251C3DF90(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v22 = sub_251C70ED4();
  sub_251C3DA50(v7, type metadata accessor for PBPlainText);
  sub_251C3DA50(v10, type metadata accessor for PBPlainText);
  sub_251C3D960(v14);
  if ((v22 & 1) == 0)
  {
LABEL_13:
    v23 = 0;
    return v23 & 1;
  }

LABEL_10:
  if (!sub_251A9D1F0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    goto LABEL_13;
  }

  sub_251C703B4();
  sub_251C3DF90(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v23 = sub_251C70ED4();
  return v23 & 1;
}

void sub_251C3DEFC(uint64_t a1)
{
  if (!qword_27F47CB28)
  {
    sub_251C3DAB0(255, &qword_27F47C278, type metadata accessor for PBPlainText, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47CB28);
    }
  }
}

uint64_t sub_251C3DF90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251C3E000(uint64_t a1)
{
  sub_251C703B4();
  if (v1 <= 0x3F)
  {
    sub_251C3DAB0(319, &qword_27F47C278, type metadata accessor for PBPlainText, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_251C3E0C4(uint64_t a1)
{
  v2 = v1;
  sub_251C3E624(0, &qword_27F479400, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCE78]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  sub_251B28C18(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v14 = sub_251C70764();
  __swift_project_value_buffer(v14, qword_2813E8130);

  v15 = sub_251C70744();
  v16 = sub_251C713C4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v26 = a1;
    v20 = v19;
    v28 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_251B10780(*(v2 + 16), *(v2 + 24), &v28);
    _os_log_impl(&dword_251A6C000, v15, v16, "%s DAI is disabled (HK_ENABLE_OSLO_DAI=0), will not make DAI DocRef.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v21 = v20;
    a1 = v26;
    MEMORY[0x25308E2B0](v21, -1, -1);
    v22 = v18;
    v5 = v27;
    MEMORY[0x25308E2B0](v22, -1, -1);
  }

  v28 = a1;
  type metadata accessor for ClinicalSharingSyncContext(0);

  sub_251C70A24();
  sub_251A82284();
  sub_251C709F4();
  (*(v6 + 8))(v8, v5);
  sub_251C3E688();
  v23 = sub_251C70A94();
  (*(v11 + 8))(v13, v10);
  return v23;
}

uint64_t sub_251C3E3DC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  sub_251A7EA4C(*(v0 + 112), *(v0 + 120));
  sub_251A7EA4C(*(v0 + 128), *(v0 + 136));
  sub_251A7EA4C(*(v0 + 144), *(v0 + 152));
  return v0;
}

uint64_t sub_251C3E444()
{
  sub_251C3E3DC();

  return swift_deallocClassInstance();
}

uint64_t sub_251C3E49C()
{
  sub_251AC5608(v0 + OBJC_IVAR____TtC19HealthRecordsDaemonP33_BED11DFC9D090ABA600C4282F599AD2323ClinicalSharingDAIState_startTime);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClinicalSharingDAIState(uint64_t a1)
{
  result = qword_2813E4498;
  if (!qword_2813E4498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251C3E554(uint64_t a1)
{
  sub_251C3E624(319, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_251C3E624(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_251C3E688()
{
  result = qword_27F479410;
  if (!qword_27F479410)
  {
    sub_251B28C18(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479410);
  }

  return result;
}

uint64_t sub_251C3E7B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB2550();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251C3E83C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251A9D358();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251C3E8B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB25A4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251C3E93C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB25F8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_251C3E98C()
{
  result = qword_27F47CB40;
  if (!qword_27F47CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CB40);
  }

  return result;
}

unint64_t sub_251C3EA14()
{
  result = qword_27F47CB58;
  if (!qword_27F47CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CB58);
  }

  return result;
}

unint64_t sub_251C3EA6C()
{
  result = qword_27F47CB60;
  if (!qword_27F47CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CB60);
  }

  return result;
}

uint64_t sub_251C3EAD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB26F4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251C3EB5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB26A0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251C3EBE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB264C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_251C3EC38()
{
  result = qword_27F47CB68;
  if (!qword_27F47CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CB68);
  }

  return result;
}

unint64_t sub_251C3ECC0()
{
  result = qword_27F47CB80;
  if (!qword_27F47CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CB80);
  }

  return result;
}

unint64_t sub_251C3ED18()
{
  result = qword_27F47CB88;
  if (!qword_27F47CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CB88);
  }

  return result;
}

unint64_t sub_251C3ED70()
{
  result = qword_27F47CB90;
  if (!qword_27F47CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CB90);
  }

  return result;
}

unint64_t sub_251C3EDF8()
{
  result = qword_27F47CBA8;
  if (!qword_27F47CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CBA8);
  }

  return result;
}

unint64_t sub_251C3EE50()
{
  result = qword_27F47CBB0;
  if (!qword_27F47CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CBB0);
  }

  return result;
}

unint64_t sub_251C3EEA8()
{
  result = qword_27F47CBB8;
  if (!qword_27F47CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CBB8);
  }

  return result;
}

unint64_t sub_251C3EF30()
{
  result = qword_27F47CBD0;
  if (!qword_27F47CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CBD0);
  }

  return result;
}

unint64_t sub_251C3EF88()
{
  result = qword_27F47CBD8;
  if (!qword_27F47CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CBD8);
  }

  return result;
}

uint64_t sub_251C3F01C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB3178();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251C3F080()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_251C887F8[result];
  }

  return result;
}

void sub_251C3F0C8(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_251C887F8[v2];
  }

  *a1 = v2;
}

uint64_t sub_251C3F0EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB31CC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251C3F194(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C44EAC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251C3F1F8@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_251C3F258@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_251C3F294(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB2748();

  return MEMORY[0x28217E238](a1, a2, v4);
}

BOOL sub_251C3F2E0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = (a5)(*a1, *(a1 + 8), a3, a4);
  return v8 == a5(v6, v7);
}

unint64_t sub_251C3F348()
{
  result = qword_27F47CBE0;
  if (!qword_27F47CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CBE0);
  }

  return result;
}

unint64_t sub_251C3F3D0()
{
  result = qword_27F47CBF8;
  if (!qword_27F47CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CBF8);
  }

  return result;
}

unint64_t sub_251C3F428()
{
  result = qword_27F47CC00;
  if (!qword_27F47CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CC00);
  }

  return result;
}

unint64_t sub_251C3F480()
{
  result = qword_27F47CC08;
  if (!qword_27F47CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CC08);
  }

  return result;
}

unint64_t sub_251C3F508()
{
  result = qword_27F47CC18;
  if (!qword_27F47CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CC18);
  }

  return result;
}

unint64_t sub_251C3F560()
{
  result = qword_27F47CC20;
  if (!qword_27F47CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CC20);
  }

  return result;
}

unint64_t sub_251C3F5B8()
{
  result = qword_27F47CC28;
  if (!qword_27F47CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CC28);
  }

  return result;
}

unint64_t sub_251C3F640()
{
  result = qword_27F47CC40;
  if (!qword_27F47CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CC40);
  }

  return result;
}

unint64_t sub_251C3F698()
{
  result = qword_27F47CC48;
  if (!qword_27F47CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CC48);
  }

  return result;
}

unint64_t sub_251C3F6F0()
{
  result = qword_27F47CC50;
  if (!qword_27F47CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CC50);
  }

  return result;
}

unint64_t sub_251C3F778()
{
  result = qword_27F47CC68;
  if (!qword_27F47CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CC68);
  }

  return result;
}

unint64_t sub_251C3F7D0()
{
  result = qword_27F47CC70;
  if (!qword_27F47CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CC70);
  }

  return result;
}

unint64_t sub_251C3F828()
{
  result = qword_27F47CC78;
  if (!qword_27F47CC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CC78);
  }

  return result;
}

unint64_t sub_251C3F8B0()
{
  result = qword_27F47CC90;
  if (!qword_27F47CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CC90);
  }

  return result;
}

unint64_t sub_251C3F908()
{
  result = qword_27F47CC98;
  if (!qword_27F47CC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CC98);
  }

  return result;
}

uint64_t sub_251C3F95C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A28B0);
  __swift_project_value_buffer(v0, qword_27F4A28B0);
  sub_251ADA5E0(0);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75420;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "GRANULARITY_X";
  *(v7 + 8) = 13;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "HOURLY";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "DAILY";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "WEEKLY";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v10();
  v16 = (v6 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 4;
  *v17 = "MONTHLY";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v10();
  v18 = (v6 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 5;
  *v19 = "ALL";
  *(v19 + 1) = 3;
  v19[16] = 2;
  v10();
  v20 = (v6 + 6 * v3);
  v21 = v20 + *(v2 + 56);
  *v20 = 6;
  *v21 = "QUARTER_HOURLY";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251C3FC6C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A28C8);
  __swift_project_value_buffer(v0, qword_27F4A28C8);
  sub_251ADA5E0(0);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v269 = swift_allocObject();
  *(v269 + 16) = xmmword_251C878B0;
  v5 = v269 + v4;
  v6 = v269 + v4 + *(v2 + 56);
  *(v269 + v4) = 0;
  *v6 = "DATA_TYPE_X";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v269 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "BODY_MASS_INDEX";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v269 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "BODY_FAT_PERCENTAGE";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v269 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "HEIGHT";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v269 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "BODY_MASS";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  v17 = (v269 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "LEAN_BODY_MASS";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  v19 = (v269 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "WAIST_CIRCUMFERENCE";
  *(v20 + 1) = 19;
  v20[16] = 2;
  v9();
  v21 = (v269 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "STEP_COUNT";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v9();
  v23 = v269 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "DISTANCE_WALKING_RUNNING";
  *(v23 + 8) = 24;
  *(v23 + 16) = 2;
  v9();
  v24 = (v269 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "DISTANCE_CYCLING";
  *(v25 + 1) = 16;
  v25[16] = 2;
  v9();
  v26 = (v269 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 10;
  *v27 = "DISTANCE_WHEELCHAIR";
  *(v27 + 1) = 19;
  v27[16] = 2;
  v9();
  v28 = (v269 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "BASAL_ENERGY_BURNED";
  *(v29 + 1) = 19;
  v29[16] = 2;
  v9();
  v30 = (v269 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 12;
  *v31 = "ACTIVE_ENERGY_BURNED";
  *(v31 + 1) = 20;
  v31[16] = 2;
  v9();
  v32 = (v269 + v4 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 13;
  *v33 = "FLIGHTS_CLIMBED";
  *(v33 + 1) = 15;
  v33[16] = 2;
  v9();
  v34 = (v269 + v4 + 14 * v3);
  v35 = v34 + *(v2 + 56);
  *v34 = 14;
  *v35 = "NIKE_FUEL";
  *(v35 + 1) = 9;
  v35[16] = 2;
  v9();
  v36 = (v269 + v4 + 15 * v3);
  v37 = v36 + *(v2 + 56);
  *v36 = 15;
  *v37 = "APPLE_EXERCISE_TIME";
  *(v37 + 1) = 19;
  v37[16] = 2;
  v9();
  v38 = v269 + v4 + 16 * v3 + *(v2 + 56);
  *(v5 + 16 * v3) = 16;
  *v38 = "PUSH_COUNT";
  *(v38 + 8) = 10;
  *(v38 + 16) = 2;
  v9();
  v39 = (v269 + v4 + 17 * v3);
  v40 = v39 + *(v2 + 56);
  *v39 = 17;
  *v40 = "DISTANCE_SWIMMING";
  *(v40 + 1) = 17;
  v40[16] = 2;
  v9();
  v41 = (v269 + v4 + 18 * v3);
  v42 = v41 + *(v2 + 56);
  *v41 = 18;
  *v42 = "SWIMMING_STROKE_COUNT";
  *(v42 + 1) = 21;
  v42[16] = 2;
  v9();
  v43 = (v269 + v4 + 19 * v3);
  v44 = v43 + *(v2 + 56);
  *v43 = 19;
  *v44 = "VO2_MAX";
  *(v44 + 1) = 7;
  v44[16] = 2;
  v9();
  v45 = (v269 + v4 + 20 * v3);
  v46 = v45 + *(v2 + 56);
  *v45 = 20;
  *v46 = "DISTANCE_DOWNHILL_SNOW_SPORTS";
  *(v46 + 1) = 29;
  v46[16] = 2;
  v9();
  v47 = (v269 + v4 + 21 * v3);
  v48 = v47 + *(v2 + 56);
  *v47 = 21;
  *v48 = "APPLE_STAND_TIME";
  *(v48 + 1) = 16;
  v48[16] = 2;
  v9();
  v49 = (v269 + v4 + 22 * v3);
  v50 = v49 + *(v2 + 56);
  *v49 = 22;
  *v50 = "BODY_TEMPERATURE";
  *(v50 + 1) = 16;
  v50[16] = 2;
  v9();
  v51 = (v269 + v4 + 23 * v3);
  v52 = v51 + *(v2 + 56);
  *v51 = 23;
  *v52 = "BASAL_BODY_TEMPERATURE";
  *(v52 + 1) = 22;
  v52[16] = 2;
  v9();
  v53 = (v269 + v4 + 24 * v3);
  v54 = v53 + *(v2 + 56);
  *v53 = 24;
  *v54 = "OXYGEN_SATURATION";
  *(v54 + 1) = 17;
  v54[16] = 2;
  v9();
  v55 = (v269 + v4 + 25 * v3);
  v56 = v55 + *(v2 + 56);
  *v55 = 25;
  *v56 = "PERIPHERAL_PERFUSION_INDEX";
  *(v56 + 1) = 26;
  v56[16] = 2;
  v9();
  v57 = (v269 + v4 + 26 * v3);
  v58 = v57 + *(v2 + 56);
  *v57 = 26;
  *v58 = "ELECTRODERMAL_ACTIVITY";
  *(v58 + 1) = 22;
  v58[16] = 2;
  v9();
  v59 = (v269 + v4 + 27 * v3);
  v60 = v59 + *(v2 + 56);
  *v59 = 27;
  *v60 = "BLOOD_PRESSURE_SYSTOLIC";
  *(v60 + 1) = 23;
  v60[16] = 2;
  v9();
  v61 = (v269 + v4 + 28 * v3);
  v62 = v61 + *(v2 + 56);
  *v61 = 28;
  *v62 = "BLOOD_PRESSURE_DIASTOLIC";
  *(v62 + 1) = 24;
  v62[16] = 2;
  v9();
  v63 = (v269 + v4 + 29 * v3);
  v64 = v63 + *(v2 + 56);
  *v63 = 29;
  *v64 = "BLOOD_ALCOHOL_CONTENT";
  *(v64 + 1) = 21;
  v64[16] = 2;
  v9();
  v65 = (v269 + v4 + 30 * v3);
  v66 = v65 + *(v2 + 56);
  *v65 = 30;
  *v66 = "BLOOD_GLUCOSE";
  *(v66 + 1) = 13;
  v66[16] = 2;
  v9();
  v67 = (v269 + v4 + 31 * v3);
  v68 = v67 + *(v2 + 56);
  *v67 = 31;
  *v68 = "INSULIN_DELIVERY";
  *(v68 + 1) = 16;
  v68[16] = 2;
  v9();
  v69 = v269 + v4 + 32 * v3 + *(v2 + 56);
  *(v5 + 32 * v3) = 32;
  *v69 = "HEART_RATE";
  *(v69 + 8) = 10;
  *(v69 + 16) = 2;
  v9();
  v70 = (v269 + v4 + 33 * v3);
  v71 = v70 + *(v2 + 56);
  *v70 = 33;
  *v71 = "RESPIRATORY_RATE";
  *(v71 + 1) = 16;
  v71[16] = 2;
  v9();
  v72 = (v269 + v4 + 34 * v3);
  v73 = v72 + *(v2 + 56);
  *v72 = 34;
  *v73 = "RESTING_HEART_RATE";
  *(v73 + 1) = 18;
  v73[16] = 2;
  v9();
  v74 = (v269 + v4 + 35 * v3);
  v75 = v74 + *(v2 + 56);
  *v74 = 35;
  *v75 = "WALKING_HEART_RATE_AVERAGE";
  *(v75 + 1) = 26;
  v75[16] = 2;
  v9();
  v76 = (v269 + v4 + 36 * v3);
  v77 = v76 + *(v2 + 56);
  *v76 = 36;
  *v77 = "HEART_RATE_VARIABILITY_S_D_N_N";
  *(v77 + 1) = 30;
  v77[16] = 2;
  v9();
  v78 = (v269 + v4 + 37 * v3);
  v79 = v78 + *(v2 + 56);
  *v78 = 37;
  *v79 = "INHALER_USAGE";
  *(v79 + 1) = 13;
  v79[16] = 2;
  v9();
  v80 = (v269 + v4 + 38 * v3);
  v81 = v80 + *(v2 + 56);
  *v80 = 38;
  *v81 = "FORCED_VITAL_CAPACITY";
  *(v81 + 1) = 21;
  v81[16] = 2;
  v9();
  v82 = (v269 + v4 + 39 * v3);
  v83 = v82 + *(v2 + 56);
  *v82 = 39;
  *v83 = "FORCED_EXPIRATORY_VOLUME1";
  *(v83 + 1) = 25;
  v83[16] = 2;
  v9();
  v84 = (v269 + v4 + 40 * v3);
  v85 = v84 + *(v2 + 56);
  *v84 = 40;
  *v85 = "PEAK_EXPIRATORY_FLOW_RATE";
  *(v85 + 1) = 25;
  v85[16] = 2;
  v9();
  v86 = (v269 + v4 + 41 * v3);
  v87 = v86 + *(v2 + 56);
  *v86 = 41;
  *v87 = "ENVIRONMENTAL_AUDIO_EXPOSURE";
  *(v87 + 1) = 28;
  v87[16] = 2;
  v9();
  v88 = (v269 + v4 + 42 * v3);
  v89 = v88 + *(v2 + 56);
  *v88 = 42;
  *v89 = "HEADPHONE_AUDIO_EXPOSURE";
  *(v89 + 1) = 24;
  v89[16] = 2;
  v9();
  v90 = (v269 + v4 + 43 * v3);
  v91 = v90 + *(v2 + 56);
  *v90 = 43;
  *v91 = "DIETARY_FAT_TOTAL";
  *(v91 + 1) = 17;
  v91[16] = 2;
  v9();
  v92 = (v269 + v4 + 44 * v3);
  v93 = v92 + *(v2 + 56);
  *v92 = 44;
  *v93 = "DIETARY_FAT_POLYUNSATURATED";
  *(v93 + 1) = 27;
  v93[16] = 2;
  v9();
  v94 = (v269 + v4 + 45 * v3);
  v95 = v94 + *(v2 + 56);
  *v94 = 45;
  *v95 = "DIETARY_FAT_MONOUNSATURATED";
  *(v95 + 1) = 27;
  v95[16] = 2;
  v9();
  v96 = (v269 + v4 + 46 * v3);
  v97 = v96 + *(v2 + 56);
  *v96 = 46;
  *v97 = "DIETARY_FAT_SATURATED";
  *(v97 + 1) = 21;
  v97[16] = 2;
  v9();
  v98 = (v269 + v4 + 47 * v3);
  v99 = v98 + *(v2 + 56);
  *v98 = 47;
  *v99 = "DIETARY_CHOLESTEROL";
  *(v99 + 1) = 19;
  v99[16] = 2;
  v9();
  v100 = (v269 + v4 + 48 * v3);
  v101 = v100 + *(v2 + 56);
  *v100 = 48;
  *v101 = "DIETARY_SODIUM";
  *(v101 + 1) = 14;
  v101[16] = 2;
  v9();
  v102 = (v269 + v4 + 49 * v3);
  v103 = v102 + *(v2 + 56);
  *v102 = 49;
  *v103 = "DIETARY_CARBOHYDRATES";
  *(v103 + 1) = 21;
  v103[16] = 2;
  v9();
  v104 = (v269 + v4 + 50 * v3);
  v105 = v104 + *(v2 + 56);
  *v104 = 50;
  *v105 = "DIETARY_FIBER";
  *(v105 + 1) = 13;
  v105[16] = 2;
  v9();
  v106 = (v269 + v4 + 51 * v3);
  v107 = v106 + *(v2 + 56);
  *v106 = 51;
  *v107 = "DIETARY_SUGAR";
  *(v107 + 1) = 13;
  v107[16] = 2;
  v9();
  v108 = (v269 + v4 + 52 * v3);
  v109 = v108 + *(v2 + 56);
  *v108 = 52;
  *v109 = "DIETARY_ENERGY_CONSUMED";
  *(v109 + 1) = 23;
  v109[16] = 2;
  v9();
  v110 = (v269 + v4 + 53 * v3);
  v111 = v110 + *(v2 + 56);
  *v110 = 53;
  *v111 = "DIETARY_PROTEIN";
  *(v111 + 1) = 15;
  v111[16] = 2;
  v9();
  v112 = (v269 + v4 + 54 * v3);
  v113 = v112 + *(v2 + 56);
  *v112 = 54;
  *v113 = "DIETARY_VITAMIN_A";
  *(v113 + 1) = 17;
  v113[16] = 2;
  v9();
  v114 = (v269 + v4 + 55 * v3);
  v115 = v114 + *(v2 + 56);
  *v114 = 55;
  *v115 = "DIETARY_VITAMIN_B6";
  *(v115 + 1) = 18;
  v115[16] = 2;
  v9();
  v116 = (v269 + v4 + 56 * v3);
  v117 = v116 + *(v2 + 56);
  *v116 = 56;
  *v117 = "DIETARY_VITAMIN_B12";
  *(v117 + 1) = 19;
  v117[16] = 2;
  v9();
  v118 = (v269 + v4 + 57 * v3);
  v119 = v118 + *(v2 + 56);
  *v118 = 57;
  *v119 = "DIETARY_VITAMIN_C";
  *(v119 + 1) = 17;
  v119[16] = 2;
  v9();
  v120 = (v269 + v4 + 58 * v3);
  v121 = v120 + *(v2 + 56);
  *v120 = 58;
  *v121 = "DIETARY_VITAMIN_D";
  *(v121 + 1) = 17;
  v121[16] = 2;
  v9();
  v122 = (v269 + v4 + 59 * v3);
  v123 = v122 + *(v2 + 56);
  *v122 = 59;
  *v123 = "DIETARY_VITAMIN_E";
  *(v123 + 1) = 17;
  v123[16] = 2;
  v9();
  v124 = (v269 + v4 + 60 * v3);
  v125 = v124 + *(v2 + 56);
  *v124 = 60;
  *v125 = "DIETARY_VITAMIN_K";
  *(v125 + 1) = 17;
  v125[16] = 2;
  v9();
  v126 = (v269 + v4 + 61 * v3);
  v127 = v126 + *(v2 + 56);
  *v126 = 61;
  *v127 = "DIETARY_CALCIUM";
  *(v127 + 1) = 15;
  v127[16] = 2;
  v9();
  v128 = (v269 + v4 + 62 * v3);
  v129 = v128 + *(v2 + 56);
  *v128 = 62;
  *v129 = "DIETARY_IRON";
  *(v129 + 1) = 12;
  v129[16] = 2;
  v9();
  v130 = (v269 + v4 + 63 * v3);
  v131 = v130 + *(v2 + 56);
  *v130 = 63;
  *v131 = "DIETARY_THIAMIN";
  *(v131 + 1) = 15;
  v131[16] = 2;
  v9();
  v132 = v269 + v4 + (v3 << 6) + *(v2 + 56);
  *(v5 + (v3 << 6)) = 64;
  *v132 = "DIETARY_RIBOFLAVIN";
  *(v132 + 8) = 18;
  *(v132 + 16) = 2;
  v9();
  v133 = (v269 + v4 + 65 * v3);
  v134 = v133 + *(v2 + 56);
  *v133 = 65;
  *v134 = "DIETARY_NIACIN";
  *(v134 + 1) = 14;
  v134[16] = 2;
  v9();
  v135 = (v269 + v4 + 66 * v3);
  v136 = v135 + *(v2 + 56);
  *v135 = 66;
  *v136 = "DIETARY_FOLATE";
  *(v136 + 1) = 14;
  v136[16] = 2;
  v9();
  v137 = (v269 + v4 + 67 * v3);
  v138 = v137 + *(v2 + 56);
  *v137 = 67;
  *v138 = "DIETARY_BIOTIN";
  *(v138 + 1) = 14;
  v138[16] = 2;
  v9();
  v139 = (v269 + v4 + 68 * v3);
  v140 = v139 + *(v2 + 56);
  *v139 = 68;
  *v140 = "DIETARY_PANTOTHENIC_ACID";
  *(v140 + 1) = 24;
  v140[16] = 2;
  v9();
  v141 = (v269 + v4 + 69 * v3);
  v142 = v141 + *(v2 + 56);
  *v141 = 69;
  *v142 = "DIETARY_PHOSPHORUS";
  *(v142 + 1) = 18;
  v142[16] = 2;
  v9();
  v143 = (v269 + v4 + 70 * v3);
  v144 = v143 + *(v2 + 56);
  *v143 = 70;
  *v144 = "DIETARY_IODINE";
  *(v144 + 1) = 14;
  v144[16] = 2;
  v9();
  v145 = (v269 + v4 + 71 * v3);
  v146 = v145 + *(v2 + 56);
  *v145 = 71;
  *v146 = "DIETARY_MAGNESIUM";
  *(v146 + 1) = 17;
  v146[16] = 2;
  v9();
  v147 = (v269 + v4 + 72 * v3);
  v148 = v147 + *(v2 + 56);
  *v147 = 72;
  *v148 = "DIETARY_ZINC";
  *(v148 + 1) = 12;
  v148[16] = 2;
  v9();
  v149 = (v269 + v4 + 73 * v3);
  v150 = v149 + *(v2 + 56);
  *v149 = 73;
  *v150 = "DIETARY_SELENIUM";
  *(v150 + 1) = 16;
  v150[16] = 2;
  v9();
  v151 = (v269 + v4 + 74 * v3);
  v152 = v151 + *(v2 + 56);
  *v151 = 74;
  *v152 = "DIETARY_COPPER";
  *(v152 + 1) = 14;
  v152[16] = 2;
  v9();
  v153 = (v269 + v4 + 75 * v3);
  v154 = v153 + *(v2 + 56);
  *v153 = 75;
  *v154 = "DIETARY_MANGANESE";
  *(v154 + 1) = 17;
  v154[16] = 2;
  v9();
  v155 = (v269 + v4 + 76 * v3);
  v156 = v155 + *(v2 + 56);
  *v155 = 76;
  *v156 = "DIETARY_CHROMIUM";
  *(v156 + 1) = 16;
  v156[16] = 2;
  v9();
  v157 = (v269 + v4 + 77 * v3);
  v158 = v157 + *(v2 + 56);
  *v157 = 77;
  *v158 = "DIETARY_MOLYBDENUM";
  *(v158 + 1) = 18;
  v158[16] = 2;
  v9();
  v159 = (v269 + v4 + 78 * v3);
  v160 = v159 + *(v2 + 56);
  *v159 = 78;
  *v160 = "DIETARY_CHLORIDE";
  *(v160 + 1) = 16;
  v160[16] = 2;
  v9();
  v161 = (v269 + v4 + 79 * v3);
  v162 = v161 + *(v2 + 56);
  *v161 = 79;
  *v162 = "DIETARY_POTASSIUM";
  *(v162 + 1) = 17;
  v162[16] = 2;
  v9();
  v163 = (v269 + v4 + 80 * v3);
  v164 = v163 + *(v2 + 56);
  *v163 = 80;
  *v164 = "DIETARY_CAFFEINE";
  *(v164 + 1) = 16;
  v164[16] = 2;
  v9();
  v165 = (v269 + v4 + 81 * v3);
  v166 = v165 + *(v2 + 56);
  *v165 = 81;
  *v166 = "DIETARY_WATER";
  *(v166 + 1) = 13;
  v166[16] = 2;
  v9();
  v167 = (v269 + v4 + 82 * v3);
  v168 = v167 + *(v2 + 56);
  *v167 = 82;
  *v168 = "UV_EXPOSURE";
  *(v168 + 1) = 11;
  v168[16] = 2;
  v9();
  v169 = (v269 + v4 + 83 * v3);
  v170 = v169 + *(v2 + 56);
  *v169 = 83;
  *v170 = "NUMBER_OF_TIMES_FALLEN";
  *(v170 + 1) = 22;
  v170[16] = 2;
  v9();
  v171 = (v269 + v4 + 84 * v3);
  v172 = v171 + *(v2 + 56);
  *v171 = 84;
  *v172 = "SLEEP_ANALYSIS";
  *(v172 + 1) = 14;
  v172[16] = 2;
  v9();
  v173 = (v269 + v4 + 85 * v3);
  v174 = v173 + *(v2 + 56);
  *v173 = 85;
  *v174 = "APPLE_STAND_HOUR";
  *(v174 + 1) = 16;
  v174[16] = 2;
  v9();
  v175 = (v269 + v4 + 86 * v3);
  v176 = v175 + *(v2 + 56);
  *v175 = 86;
  *v176 = "CERVICAL_MUCUS_QUALITY";
  *(v176 + 1) = 22;
  v176[16] = 2;
  v9();
  v177 = (v269 + v4 + 87 * v3);
  v178 = v177 + *(v2 + 56);
  *v177 = 87;
  *v178 = "MENSTRUAL_FLOW";
  *(v178 + 1) = 14;
  v178[16] = 2;
  v9();
  v179 = (v269 + v4 + 88 * v3);
  v180 = v179 + *(v2 + 56);
  *v179 = 88;
  *v180 = "INTERMENSTRUAL_BLEEDING";
  *(v180 + 1) = 23;
  v180[16] = 2;
  v9();
  v181 = (v269 + v4 + 89 * v3);
  v182 = v181 + *(v2 + 56);
  *v181 = 89;
  *v182 = "OVULATION_TEST_RESULT";
  *(v182 + 1) = 21;
  v182[16] = 2;
  v9();
  v183 = (v269 + v4 + 90 * v3);
  v184 = v183 + *(v2 + 56);
  *v183 = 90;
  *v184 = "SEXUAL_ACTIVITY";
  *(v184 + 1) = 15;
  v184[16] = 2;
  v9();
  v185 = (v269 + v4 + 91 * v3);
  v186 = v185 + *(v2 + 56);
  *v185 = 91;
  *v186 = "MINDFUL_SESSION";
  *(v186 + 1) = 15;
  v186[16] = 2;
  v9();
  v187 = (v269 + v4 + 92 * v3);
  v188 = v187 + *(v2 + 56);
  *v187 = 92;
  *v188 = "HIGH_HEART_RATE_EVENT";
  *(v188 + 1) = 21;
  v188[16] = 2;
  v9();
  v189 = (v269 + v4 + 93 * v3);
  v190 = v189 + *(v2 + 56);
  *v189 = 93;
  *v190 = "LOW_HEART_RATE_EVENT";
  *(v190 + 1) = 20;
  v190[16] = 2;
  v9();
  v191 = (v269 + v4 + 94 * v3);
  v192 = v191 + *(v2 + 56);
  *v191 = 94;
  *v192 = "IRREGULAR_HEART_RHYTHM_EVENT";
  *(v192 + 1) = 28;
  v192[16] = 2;
  v9();
  v193 = (v269 + v4 + 95 * v3);
  v194 = v193 + *(v2 + 56);
  *v193 = 95;
  *v194 = "AUDIO_EXPOSURE_EVENT";
  *(v194 + 1) = 20;
  v194[16] = 2;
  v9();
  v195 = (v269 + v4 + 96 * v3);
  v196 = v195 + *(v2 + 56);
  *v195 = 96;
  *v196 = "TOOTHBRUSHING_EVENT";
  *(v196 + 1) = 19;
  v196[16] = 2;
  v9();
  v197 = (v269 + v4 + 97 * v3);
  v198 = v197 + *(v2 + 56);
  *v197 = 97;
  *v198 = "ECG";
  *(v198 + 1) = 3;
  v198[16] = 2;
  v9();
  v199 = (v269 + v4 + 98 * v3);
  v200 = v199 + *(v2 + 56);
  *v199 = 98;
  *v200 = "WORKOUT";
  *(v200 + 1) = 7;
  v200[16] = 2;
  v9();
  v201 = (v269 + v4 + 99 * v3);
  v202 = v201 + *(v2 + 56);
  *v201 = 99;
  *v202 = "ALLERGY_TYPE";
  *(v202 + 1) = 12;
  v202[16] = 2;
  v9();
  v203 = (v269 + v4 + 100 * v3);
  v204 = v203 + *(v2 + 56);
  *v203 = 100;
  *v204 = "CONDITION_TYPE";
  *(v204 + 1) = 14;
  v204[16] = 2;
  v9();
  v205 = (v269 + v4 + 101 * v3);
  v206 = v205 + *(v2 + 56);
  *v205 = 101;
  *v206 = "IMMUNIZATION_TYPE";
  *(v206 + 1) = 17;
  v206[16] = 2;
  v9();
  v207 = (v269 + v4 + 102 * v3);
  v208 = v207 + *(v2 + 56);
  *v207 = 102;
  *v208 = "LAB_TYPE";
  *(v208 + 1) = 8;
  v208[16] = 2;
  v9();
  v209 = (v269 + v4 + 103 * v3);
  v210 = v209 + *(v2 + 56);
  *v209 = 103;
  *v210 = "MEDICATION_TYPE";
  *(v210 + 1) = 15;
  v210[16] = 2;
  v9();
  v211 = (v269 + v4 + 104 * v3);
  v212 = v211 + *(v2 + 56);
  *v211 = 104;
  *v212 = "PROCEDURE_TYPE";
  *(v212 + 1) = 14;
  v212[16] = 2;
  v9();
  v213 = (v269 + v4 + 105 * v3);
  v214 = v213 + *(v2 + 56);
  *v213 = 105;
  *v214 = "VITAL_RECORD";
  *(v214 + 1) = 12;
  v214[16] = 2;
  v9();
  v215 = (v269 + v4 + 106 * v3);
  v216 = v215 + *(v2 + 56);
  *v215 = 106;
  *v216 = "BLOOD_PRESSURE_SYSTOLIC_CLINICAL";
  *(v216 + 1) = 32;
  v216[16] = 2;
  v9();
  v217 = (v269 + v4 + 107 * v3);
  v218 = v217 + *(v2 + 56);
  *v217 = 107;
  *v218 = "BLOOD_PRESSURE_DIASTOLIC_CLINICAL";
  *(v218 + 1) = 33;
  v218[16] = 2;
  v9();
  v219 = (v269 + v4 + 108 * v3);
  v220 = v219 + *(v2 + 56);
  *v219 = 108;
  *v220 = "BODY_MASS_CLINICAL";
  *(v220 + 1) = 18;
  v220[16] = 2;
  v9();
  v221 = (v269 + v4 + 109 * v3);
  v222 = v221 + *(v2 + 56);
  *v221 = 109;
  *v222 = "CYCLE_ANALYSIS";
  *(v222 + 1) = 14;
  v222[16] = 2;
  v9();
  v223 = (v269 + v4 + 110 * v3);
  v224 = v223 + *(v2 + 56);
  *v223 = 110;
  *v224 = "BODY_MASS_INDEX_CLINICAL";
  *(v224 + 1) = 24;
  v224[16] = 2;
  v9();
  v225 = (v269 + v4 + 111 * v3);
  v226 = v225 + *(v2 + 56);
  *v225 = 111;
  *v226 = "ACTIVITY_SUMMARY";
  *(v226 + 1) = 16;
  v226[16] = 2;
  v9();
  v227 = (v269 + v4 + 112 * v3);
  v228 = v227 + *(v2 + 56);
  *v227 = 112;
  *v228 = "PATIENT_META";
  *(v228 + 1) = 12;
  v228[16] = 2;
  v9();
  v229 = (v269 + v4 + 113 * v3);
  v230 = v229 + *(v2 + 56);
  *v229 = 113;
  *v230 = "SLEEP_SUMMARY";
  *(v230 + 1) = 13;
  v230[16] = 2;
  v9();
  v231 = (v269 + v4 + 114 * v3);
  v232 = v231 + *(v2 + 56);
  *v231 = 114;
  *v232 = "SLEEP_SERIES";
  *(v232 + 1) = 12;
  v232[16] = 2;
  v9();
  v233 = (v269 + v4 + 115 * v3);
  v234 = v233 + *(v2 + 56);
  *v233 = 115;
  *v234 = "SLEEP_SCHEDULE";
  *(v234 + 1) = 14;
  v234[16] = 2;
  v9();
  v235 = (v269 + v4 + 116 * v3);
  v236 = v235 + *(v2 + 56);
  *v235 = 116;
  *v236 = "CYCLE_FACTORS";
  *(v236 + 1) = 13;
  v236[16] = 2;
  v9();
  v237 = (v269 + v4 + 117 * v3);
  v238 = v237 + *(v2 + 56);
  *v237 = 117;
  *v238 = "WALKING_SPEED";
  *(v238 + 1) = 13;
  v238[16] = 2;
  v9();
  v239 = (v269 + v4 + 118 * v3);
  v240 = v239 + *(v2 + 56);
  *v239 = 118;
  *v240 = "WALKING_STEP_LENGTH";
  *(v240 + 1) = 19;
  v240[16] = 2;
  v9();
  v241 = (v269 + v4 + 119 * v3);
  v242 = v241 + *(v2 + 56);
  *v241 = 119;
  *v242 = "WALKING_DOUBLE_SUPPORT_PERCENTAGE";
  *(v242 + 1) = 33;
  v242[16] = 2;
  v9();
  v243 = (v269 + v4 + 120 * v3);
  v244 = v243 + *(v2 + 56);
  *v243 = 120;
  *v244 = "STAIR_ASCENT_SPEED";
  *(v244 + 1) = 18;
  v244[16] = 2;
  v9();
  v245 = (v269 + v4 + 121 * v3);
  v246 = v245 + *(v2 + 56);
  *v245 = 121;
  *v246 = "STAIR_DESCENT_SPEED";
  *(v246 + 1) = 19;
  v246[16] = 2;
  v9();
  v247 = (v269 + v4 + 122 * v3);
  v248 = v247 + *(v2 + 56);
  *v247 = 122;
  *v248 = "SIX_MINUTE_WALK_TEST_DISTANCE";
  *(v248 + 1) = 29;
  v248[16] = 2;
  v9();
  v249 = (v269 + v4 + 123 * v3);
  v250 = v249 + *(v2 + 56);
  *v249 = 123;
  *v250 = "APPLE_WALKING_STEADINESS";
  *(v250 + 1) = 24;
  v250[16] = 2;
  v9();
  v251 = (v269 + v4 + 124 * v3);
  v252 = v251 + *(v2 + 56);
  *v251 = 124;
  *v252 = "WALKING_ASYMMETRY_PERCENTAGE";
  *(v252 + 1) = 28;
  v252[16] = 2;
  v9();
  v253 = (v269 + v4 + 125 * v3);
  v254 = v253 + *(v2 + 56);
  *v253 = 125;
  *v254 = "APPLE_WALKING_STEADINESS_CLASSIFICATION";
  *(v254 + 1) = 39;
  v254[16] = 2;
  v9();
  v255 = (v269 + v4 + 126 * v3);
  v256 = v255 + *(v2 + 56);
  *v255 = 126;
  *v256 = "APPLE_WALKING_STEADINESS_EVENT";
  *(v256 + 1) = 30;
  v256[16] = 2;
  v9();
  v257 = (v269 + v4 + 127 * v3);
  v258 = v257 + *(v2 + 56);
  *v257 = 127;
  *v258 = "MEDICATION_TRACKING";
  *(v258 + 1) = 19;
  v258[16] = 2;
  v9();
  v259 = v269 + v4 + (v3 << 7) + *(v2 + 56);
  *(v5 + (v3 << 7)) = 128;
  *v259 = "MEDICATION_TRACKING_DOSE_EVENT";
  *(v259 + 8) = 30;
  *(v259 + 16) = 2;
  v9();
  v260 = (v269 + v4 + 129 * v3);
  v261 = v260 + *(v2 + 56);
  *v260 = 129;
  *v261 = "MEDICATION_TRACKING_SCHEDULE";
  *(v261 + 1) = 28;
  v261[16] = 2;
  v9();
  v262 = (v269 + v4 + 130 * v3);
  v263 = v262 + *(v2 + 56);
  *v262 = 130;
  *v263 = "BLOOD_GLUCOSE_HISTOGRAM";
  *(v263 + 1) = 23;
  v263[16] = 2;
  v9();
  v264 = (v269 + v4 + 131 * v3);
  v265 = v264 + *(v2 + 56);
  *v264 = 131;
  *v265 = "BLOOD_GLUCOSE_LOW_FREQUENCY";
  *(v265 + 1) = 27;
  v265[16] = 2;
  v9();
  v266 = (v269 + v4 + 132 * v3);
  v267 = v266 + *(v2 + 56);
  *v266 = 132;
  *v267 = "ACTIVE_MEDICATIONS";
  *(v267 + 1) = 18;
  v267[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251C41CC8()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A28E0);
  __swift_project_value_buffer(v0, qword_27F4A28E0);
  sub_251ADA5E0(0);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "GLUCOSE_MEAL_TIME_NOT_SET";
  *(v7 + 8) = 25;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "BEFORE_MEAL";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 2;
  *v12 = "AFTER_MEAL";
  *(v12 + 8) = 10;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251C41EE4()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A28F8);
  __swift_project_value_buffer(v0, qword_27F4A28F8);
  sub_251ADA5E0(0);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C763E0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "SLEEP_NOT_SET";
  *(v7 + 8) = 13;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "IN_BED";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "ASLEEP";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "AWAKE";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251C42138()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2910);
  __swift_project_value_buffer(v0, qword_27F4A2910);
  sub_251ADA5E0(0);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_251C763E0;
  v5 = v15 + v4 + *(v2 + 56);
  *(v15 + v4) = 0;
  *v5 = "WALKING_STEADINESS_CLASSIFICATION_NOT_SET";
  *(v5 + 8) = 41;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_251C706B4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v15 + v4 + v3 + *(v2 + 56);
  *(v15 + v4 + v3) = 1;
  *v9 = "OK";
  *(v9 + 8) = 2;
  *(v9 + 16) = 2;
  v8();
  v10 = (v15 + v4 + 2 * v3);
  v11 = v10 + *(v2 + 56);
  *v10 = 2;
  *v11 = "LOW";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v15 + v4 + 3 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "VERY_LOW";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  return sub_251C706C4();
}

uint64_t sub_251C4237C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2928);
  __swift_project_value_buffer(v0, qword_27F4A2928);
  sub_251ADA5E0(0);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C747F0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "WALKING_STEADINESS_EVENT_NOT_SET";
  *(v7 + 8) = 32;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "INITIAL_LOW";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "INITIAL_VERY_LOW";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "REPEAT_LOW";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v10();
  v16 = v6 + 4 * v3 + *(v2 + 56);
  *(v6 + 4 * v3) = 4;
  *v16 = "REPEAT_VERY_LOW";
  *(v16 + 8) = 15;
  *(v16 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251C42618()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2940);
  __swift_project_value_buffer(v0, qword_27F4A2940);
  sub_251ADA5E0(0);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_251C75810;
  v5 = v27 + v4;
  v6 = v27 + v4 + *(v2 + 56);
  *(v27 + v4) = 0;
  *v6 = "CYCLE_FACTORS_NOT_SET";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v27 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "LACTATION";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v27 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "PREGNANCY";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v27 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "CONTRACEPTIVE_UNSPECIFIED";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = (v27 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "CONTRACEPTIVE_IMPLANT";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v27 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "CONTRACEPTIVE_INJECTION";
  *(v18 + 1) = 23;
  v18[16] = 2;
  v9();
  v19 = (v27 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "CONTRACEPTIVE_INTRAUTERINE_DEVICE";
  *(v20 + 1) = 33;
  v20[16] = 2;
  v9();
  v21 = (v27 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "CONTRACEPTIVE_INTRAVAGINAL_RING";
  *(v22 + 1) = 31;
  v22[16] = 2;
  v9();
  v23 = v27 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "CONTRACEPTIVE_ORAL";
  *(v23 + 8) = 18;
  *(v23 + 16) = 2;
  v9();
  v24 = (v27 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "CONTRACEPTIVE_PATCH";
  *(v25 + 1) = 19;
  v25[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251C429E4()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2958);
  __swift_project_value_buffer(v0, qword_27F4A2958);
  sub_251ADA5E0(0);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_251C878C0;
  v5 = v52 + v4;
  v6 = v52 + v4 + *(v2 + 56);
  *(v52 + v4) = 0;
  *v6 = "SYMPTOMS_NOT_SET";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v52 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "SYMPTOMS_ABDOMINAL_CRAMPS";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v52 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "SYMPTOMS_ACNE";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v52 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "SYMPTOMS_APPETITE_CHANGES";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = (v52 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "SYMPTOMS_BLOATING";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v52 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "SYMPTOMS_BREAST_PAIN";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  v19 = (v52 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "SYMPTOMS_CONSTIPATION";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v9();
  v21 = (v52 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "SYMPTOMS_DIARRHEA";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v9();
  v23 = v52 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "SYMPTOMS_HEADACHE";
  *(v23 + 8) = 17;
  *(v23 + 16) = 2;
  v9();
  v24 = (v52 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "SYMPTOMS_HOT_FLASHES";
  *(v25 + 1) = 20;
  v25[16] = 2;
  v9();
  v26 = (v52 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 10;
  *v27 = "SYMPTOMS_LOWER_BACK_PAIN";
  *(v27 + 1) = 24;
  v27[16] = 2;
  v9();
  v28 = (v52 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "SYMPTOMS_MOOD_CHANGES";
  *(v29 + 1) = 21;
  v29[16] = 2;
  v9();
  v30 = (v52 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 12;
  *v31 = "SYMPTOMS_NAUSEA";
  *(v31 + 1) = 15;
  v31[16] = 2;
  v9();
  v32 = (v52 + v4 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 13;
  *v33 = "SYMPTOMS_PELVIC_PAIN";
  *(v33 + 1) = 20;
  v33[16] = 2;
  v9();
  v34 = (v52 + v4 + 14 * v3);
  v35 = v34 + *(v2 + 56);
  *v34 = 14;
  *v35 = "SYMPTOMS_SLEEP_CHANGES";
  *(v35 + 1) = 22;
  v35[16] = 2;
  v9();
  v36 = (v52 + v4 + 15 * v3);
  v37 = v36 + *(v2 + 56);
  *v36 = 15;
  *v37 = "SYMPTOMS_FATIGUE";
  *(v37 + 1) = 16;
  v37[16] = 2;
  v9();
  v38 = v52 + v4 + 16 * v3 + *(v2 + 56);
  *(v5 + 16 * v3) = 16;
  *v38 = "SYMPTOMS_VAGINAL_DRYNESS";
  *(v38 + 8) = 24;
  *(v38 + 16) = 2;
  v9();
  v39 = (v52 + v4 + 17 * v3);
  v40 = v39 + *(v2 + 56);
  *v39 = 17;
  *v40 = "SYMPTOMS_NIGHT_SWEATS";
  *(v40 + 1) = 21;
  v40[16] = 2;
  v9();
  v41 = (v52 + v4 + 18 * v3);
  v42 = v41 + *(v2 + 56);
  *v41 = 18;
  *v42 = "SYMPTOMS_CHILLS";
  *(v42 + 1) = 15;
  v42[16] = 2;
  v9();
  v43 = (v52 + v4 + 19 * v3);
  v44 = v43 + *(v2 + 56);
  *v43 = 19;
  *v44 = "SYMPTOMS_HAIR_LOSS";
  *(v44 + 1) = 18;
  v44[16] = 2;
  v9();
  v45 = (v52 + v4 + 20 * v3);
  v46 = v45 + *(v2 + 56);
  *v45 = 20;
  *v46 = "SYMPTOMS_DRY_SKIN";
  *(v46 + 1) = 17;
  v46[16] = 2;
  v9();
  v47 = (v52 + v4 + 21 * v3);
  v48 = v47 + *(v2 + 56);
  *v47 = 21;
  *v48 = "SYMPTOMS_BLADDER_INCONTINENCE";
  *(v48 + 1) = 29;
  v48[16] = 2;
  v9();
  v49 = (v52 + v4 + 22 * v3);
  v50 = v49 + *(v2 + 56);
  *v49 = 22;
  *v50 = "SYMPTOMS_MEMORY_LAPSE";
  *(v50 + 1) = 21;
  v50[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251C430B0()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2970);
  __swift_project_value_buffer(v0, qword_27F4A2970);
  sub_251ADA5E0(0);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C78260;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "NOT_SET";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "SINUS_RHYTHM";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "ATRIAL_FIBRILLATION";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "INCONCLUSIVE_LOW_HEART_RATE";
  *(v15 + 1) = 27;
  v15[16] = 2;
  v10();
  v16 = (v6 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 4;
  *v17 = "INCONCLUSIVE_HIGH_HEART_RATE";
  *(v17 + 1) = 28;
  v17[16] = 2;
  v10();
  v18 = (v6 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 5;
  *v19 = "INCONCLUSIVE_POOR_READING";
  *(v19 + 1) = 25;
  v19[16] = 2;
  v10();
  v20 = (v6 + 6 * v3);
  v21 = v20 + *(v2 + 56);
  *v20 = 6;
  *v21 = "INCONCLUSIVE_OTHER";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v10();
  v22 = (v6 + 7 * v3);
  v23 = v22 + *(v2 + 56);
  *v22 = 100;
  *v23 = "UNRECOGNIZED_READING";
  *(v23 + 1) = 20;
  v23[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251C43408()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2988);
  __swift_project_value_buffer(v0, qword_27F4A2988);
  sub_251ADA5E0(0);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C78260;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "CLINICAL_TYPE";
  *(v7 + 8) = 13;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "ALLERGIES";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "CONDITIONS";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "IMMUNIZATIONS";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v10();
  v16 = (v6 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 4;
  *v17 = "LABS";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v10();
  v18 = (v6 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 5;
  *v19 = "MEDICATIONS";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v10();
  v20 = (v6 + 6 * v3);
  v21 = v20 + *(v2 + 56);
  *v20 = 6;
  *v21 = "PROCEDURES";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v10();
  v22 = (v6 + 7 * v3);
  v23 = v22 + *(v2 + 56);
  *v22 = 7;
  *v23 = "VITALS";
  *(v23 + 1) = 6;
  v23[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251C43758()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A29A0);
  __swift_project_value_buffer(v0, qword_27F4A29A0);
  sub_251ADA5E0(0);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v166 = swift_allocObject();
  *(v166 + 16) = xmmword_251C878D0;
  v5 = v166 + v4;
  v6 = v166 + v4 + *(v2 + 56);
  *(v166 + v4) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v166 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "AMERICAN_FOOTBALL";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v166 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "ARCHERY";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v166 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "AUSTRALIAN_FOOTBALL";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = (v166 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "BADMINTON";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  v17 = (v166 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "BASEBALL";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v9();
  v19 = (v166 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "BASKETBALL";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v9();
  v21 = (v166 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "BOWLING";
  *(v22 + 1) = 7;
  v22[16] = 2;
  v9();
  v23 = v166 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "BOXING";
  *(v23 + 8) = 6;
  *(v23 + 16) = 2;
  v9();
  v24 = (v166 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "CLIMBING";
  *(v25 + 1) = 8;
  v25[16] = 2;
  v9();
  v26 = (v166 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 10;
  *v27 = "CRICKET";
  *(v27 + 1) = 7;
  v27[16] = 2;
  v9();
  v28 = (v166 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "CROSS_TRAINING";
  *(v29 + 1) = 14;
  v29[16] = 2;
  v9();
  v30 = (v166 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 12;
  *v31 = "CURLING";
  *(v31 + 1) = 7;
  v31[16] = 2;
  v9();
  v32 = (v166 + v4 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 13;
  *v33 = "CYCLING";
  *(v33 + 1) = 7;
  v33[16] = 2;
  v9();
  v34 = (v166 + v4 + 14 * v3);
  v35 = v34 + *(v2 + 56);
  *v34 = 14;
  *v35 = "DANCE";
  *(v35 + 1) = 5;
  v35[16] = 2;
  v9();
  v36 = (v166 + v4 + 15 * v3);
  v37 = v36 + *(v2 + 56);
  *v36 = 15;
  *v37 = "DANCE_INSPIRED_TRAINING";
  *(v37 + 1) = 23;
  v37[16] = 2;
  v9();
  v38 = v166 + v4 + 16 * v3 + *(v2 + 56);
  *(v5 + 16 * v3) = 16;
  *v38 = "ELLIPTICAL";
  *(v38 + 8) = 10;
  *(v38 + 16) = 2;
  v9();
  v39 = (v166 + v4 + 17 * v3);
  v40 = v39 + *(v2 + 56);
  *v39 = 17;
  *v40 = "EQUESTRIAN_SPORTS";
  *(v40 + 1) = 17;
  v40[16] = 2;
  v9();
  v41 = (v166 + v4 + 18 * v3);
  v42 = v41 + *(v2 + 56);
  *v41 = 18;
  *v42 = "FENCING";
  *(v42 + 1) = 7;
  v42[16] = 2;
  v9();
  v43 = (v166 + v4 + 19 * v3);
  v44 = v43 + *(v2 + 56);
  *v43 = 19;
  *v44 = "FISHING";
  *(v44 + 1) = 7;
  v44[16] = 2;
  v9();
  v45 = (v166 + v4 + 20 * v3);
  v46 = v45 + *(v2 + 56);
  *v45 = 20;
  *v46 = "FUNCTIONAL_STRENGTH_TRAINING";
  *(v46 + 1) = 28;
  v46[16] = 2;
  v9();
  v47 = (v166 + v4 + 21 * v3);
  v48 = v47 + *(v2 + 56);
  *v47 = 21;
  *v48 = "GOLF";
  *(v48 + 1) = 4;
  v48[16] = 2;
  v9();
  v49 = (v166 + v4 + 22 * v3);
  v50 = v49 + *(v2 + 56);
  *v49 = 22;
  *v50 = "GYMNASTICS";
  *(v50 + 1) = 10;
  v50[16] = 2;
  v9();
  v51 = (v166 + v4 + 23 * v3);
  v52 = v51 + *(v2 + 56);
  *v51 = 23;
  *v52 = "HANDBALL";
  *(v52 + 1) = 8;
  v52[16] = 2;
  v9();
  v53 = (v166 + v4 + 24 * v3);
  v54 = v53 + *(v2 + 56);
  *v53 = 24;
  *v54 = "HIKING";
  *(v54 + 1) = 6;
  v54[16] = 2;
  v9();
  v55 = (v166 + v4 + 25 * v3);
  v56 = v55 + *(v2 + 56);
  *v55 = 25;
  *v56 = "HOCKEY";
  *(v56 + 1) = 6;
  v56[16] = 2;
  v9();
  v57 = (v166 + v4 + 26 * v3);
  v58 = v57 + *(v2 + 56);
  *v57 = 26;
  *v58 = "HUNTING";
  *(v58 + 1) = 7;
  v58[16] = 2;
  v9();
  v59 = (v166 + v4 + 27 * v3);
  v60 = v59 + *(v2 + 56);
  *v59 = 27;
  *v60 = "LACROSSE";
  *(v60 + 1) = 8;
  v60[16] = 2;
  v9();
  v61 = (v166 + v4 + 28 * v3);
  v62 = v61 + *(v2 + 56);
  *v61 = 28;
  *v62 = "MARTIAL_ARTS";
  *(v62 + 1) = 12;
  v62[16] = 2;
  v9();
  v63 = (v166 + v4 + 29 * v3);
  v64 = v63 + *(v2 + 56);
  *v63 = 29;
  *v64 = "MIND_AND_BODY";
  *(v64 + 1) = 13;
  v64[16] = 2;
  v9();
  v65 = (v166 + v4 + 30 * v3);
  v66 = v65 + *(v2 + 56);
  *v65 = 30;
  *v66 = "MIXED_METABOLIC_CARDIO_TRAINING";
  *(v66 + 1) = 31;
  v66[16] = 2;
  v9();
  v67 = (v166 + v4 + 31 * v3);
  v68 = v67 + *(v2 + 56);
  *v67 = 31;
  *v68 = "PADDLE_SPORTS";
  *(v68 + 1) = 13;
  v68[16] = 2;
  v9();
  v69 = v166 + v4 + 32 * v3 + *(v2 + 56);
  *(v5 + 32 * v3) = 32;
  *v69 = "PLAY";
  *(v69 + 8) = 4;
  *(v69 + 16) = 2;
  v9();
  v70 = (v166 + v4 + 33 * v3);
  v71 = v70 + *(v2 + 56);
  *v70 = 33;
  *v71 = "PREPARATION_AND_RECOVERY";
  *(v71 + 1) = 24;
  v71[16] = 2;
  v9();
  v72 = (v166 + v4 + 34 * v3);
  v73 = v72 + *(v2 + 56);
  *v72 = 34;
  *v73 = "RACQUETBALL";
  *(v73 + 1) = 11;
  v73[16] = 2;
  v9();
  v74 = (v166 + v4 + 35 * v3);
  v75 = v74 + *(v2 + 56);
  *v74 = 35;
  *v75 = "ROWING";
  *(v75 + 1) = 6;
  v75[16] = 2;
  v9();
  v76 = (v166 + v4 + 36 * v3);
  v77 = v76 + *(v2 + 56);
  *v76 = 36;
  *v77 = "RUGBY";
  *(v77 + 1) = 5;
  v77[16] = 2;
  v9();
  v78 = (v166 + v4 + 37 * v3);
  v79 = v78 + *(v2 + 56);
  *v78 = 37;
  *v79 = "RUNNING";
  *(v79 + 1) = 7;
  v79[16] = 2;
  v9();
  v80 = (v166 + v4 + 38 * v3);
  v81 = v80 + *(v2 + 56);
  *v80 = 38;
  *v81 = "SAILING";
  *(v81 + 1) = 7;
  v81[16] = 2;
  v9();
  v82 = (v166 + v4 + 39 * v3);
  v83 = v82 + *(v2 + 56);
  *v82 = 39;
  *v83 = "SKATING_SPORTS";
  *(v83 + 1) = 14;
  v83[16] = 2;
  v9();
  v84 = (v166 + v4 + 40 * v3);
  v85 = v84 + *(v2 + 56);
  *v84 = 40;
  *v85 = "SNOW_SPORTS";
  *(v85 + 1) = 11;
  v85[16] = 2;
  v9();
  v86 = (v166 + v4 + 41 * v3);
  v87 = v86 + *(v2 + 56);
  *v86 = 41;
  *v87 = "SOCCER";
  *(v87 + 1) = 6;
  v87[16] = 2;
  v9();
  v88 = (v166 + v4 + 42 * v3);
  v89 = v88 + *(v2 + 56);
  *v88 = 42;
  *v89 = "SOFTBALL";
  *(v89 + 1) = 8;
  v89[16] = 2;
  v9();
  v90 = (v166 + v4 + 43 * v3);
  v91 = v90 + *(v2 + 56);
  *v90 = 43;
  *v91 = "SQUASH";
  *(v91 + 1) = 6;
  v91[16] = 2;
  v9();
  v92 = (v166 + v4 + 44 * v3);
  v93 = v92 + *(v2 + 56);
  *v92 = 44;
  *v93 = "STAIR_CLIMBING";
  *(v93 + 1) = 14;
  v93[16] = 2;
  v9();
  v94 = (v166 + v4 + 45 * v3);
  v95 = v94 + *(v2 + 56);
  *v94 = 45;
  *v95 = "SURFING_SPORTS";
  *(v95 + 1) = 14;
  v95[16] = 2;
  v9();
  v96 = (v166 + v4 + 46 * v3);
  v97 = v96 + *(v2 + 56);
  *v96 = 46;
  *v97 = "SWIMMING";
  *(v97 + 1) = 8;
  v97[16] = 2;
  v9();
  v98 = (v166 + v4 + 47 * v3);
  v99 = v98 + *(v2 + 56);
  *v98 = 47;
  *v99 = "TABLE_TENNIS";
  *(v99 + 1) = 12;
  v99[16] = 2;
  v9();
  v100 = (v166 + v4 + 48 * v3);
  v101 = v100 + *(v2 + 56);
  *v100 = 48;
  *v101 = "TENNIS";
  *(v101 + 1) = 6;
  v101[16] = 2;
  v9();
  v102 = (v166 + v4 + 49 * v3);
  v103 = v102 + *(v2 + 56);
  *v102 = 49;
  *v103 = "TRACK_AND_FIELD";
  *(v103 + 1) = 15;
  v103[16] = 2;
  v9();
  v104 = (v166 + v4 + 50 * v3);
  v105 = v104 + *(v2 + 56);
  *v104 = 50;
  *v105 = "TRADITIONAL_STRENGTH_TRAINING";
  *(v105 + 1) = 29;
  v105[16] = 2;
  v9();
  v106 = (v166 + v4 + 51 * v3);
  v107 = v106 + *(v2 + 56);
  *v106 = 51;
  *v107 = "VOLLEYBALL";
  *(v107 + 1) = 10;
  v107[16] = 2;
  v9();
  v108 = (v166 + v4 + 52 * v3);
  v109 = v108 + *(v2 + 56);
  *v108 = 52;
  *v109 = "WALKING";
  *(v109 + 1) = 7;
  v109[16] = 2;
  v9();
  v110 = (v166 + v4 + 53 * v3);
  v111 = v110 + *(v2 + 56);
  *v110 = 53;
  *v111 = "WATER_FITNESS";
  *(v111 + 1) = 13;
  v111[16] = 2;
  v9();
  v112 = (v166 + v4 + 54 * v3);
  v113 = v112 + *(v2 + 56);
  *v112 = 54;
  *v113 = "WATER_POLO";
  *(v113 + 1) = 10;
  v113[16] = 2;
  v9();
  v114 = (v166 + v4 + 55 * v3);
  v115 = v114 + *(v2 + 56);
  *v114 = 55;
  *v115 = "WATER_SPORTS";
  *(v115 + 1) = 12;
  v115[16] = 2;
  v9();
  v116 = (v166 + v4 + 56 * v3);
  v117 = v116 + *(v2 + 56);
  *v116 = 56;
  *v117 = "WRESTLING";
  *(v117 + 1) = 9;
  v117[16] = 2;
  v9();
  v118 = (v166 + v4 + 57 * v3);
  v119 = v118 + *(v2 + 56);
  *v118 = 57;
  *v119 = "YOGA";
  *(v119 + 1) = 4;
  v119[16] = 2;
  v9();
  v120 = (v166 + v4 + 58 * v3);
  v121 = v120 + *(v2 + 56);
  *v120 = 58;
  *v121 = "BARRE";
  *(v121 + 1) = 5;
  v121[16] = 2;
  v9();
  v122 = (v166 + v4 + 59 * v3);
  v123 = v122 + *(v2 + 56);
  *v122 = 59;
  *v123 = "CORE_TRAINING";
  *(v123 + 1) = 13;
  v123[16] = 2;
  v9();
  v124 = (v166 + v4 + 60 * v3);
  v125 = v124 + *(v2 + 56);
  *v124 = 60;
  *v125 = "CROSS_COUNTRY_SKIING";
  *(v125 + 1) = 20;
  v125[16] = 2;
  v9();
  v126 = (v166 + v4 + 61 * v3);
  v127 = v126 + *(v2 + 56);
  *v126 = 61;
  *v127 = "DOWNHILL_SKIING";
  *(v127 + 1) = 15;
  v127[16] = 2;
  v9();
  v128 = (v166 + v4 + 62 * v3);
  v129 = v128 + *(v2 + 56);
  *v128 = 62;
  *v129 = "FLEXIBILITY";
  *(v129 + 1) = 11;
  v129[16] = 2;
  v9();
  v130 = (v166 + v4 + 63 * v3);
  v131 = v130 + *(v2 + 56);
  *v130 = 63;
  *v131 = "HIGH_INTENSITY_INTERVAL_TRAINING";
  *(v131 + 1) = 32;
  v131[16] = 2;
  v9();
  v132 = v166 + v4 + (v3 << 6) + *(v2 + 56);
  *(v5 + (v3 << 6)) = 64;
  *v132 = "JUMP_ROPE";
  *(v132 + 8) = 9;
  *(v132 + 16) = 2;
  v9();
  v133 = (v166 + v4 + 65 * v3);
  v134 = v133 + *(v2 + 56);
  *v133 = 65;
  *v134 = "KICKBOXING";
  *(v134 + 1) = 10;
  v134[16] = 2;
  v9();
  v135 = (v166 + v4 + 66 * v3);
  v136 = v135 + *(v2 + 56);
  *v135 = 66;
  *v136 = "PILATES";
  *(v136 + 1) = 7;
  v136[16] = 2;
  v9();
  v137 = (v166 + v4 + 67 * v3);
  v138 = v137 + *(v2 + 56);
  *v137 = 67;
  *v138 = "SNOWBOARDING";
  *(v138 + 1) = 12;
  v138[16] = 2;
  v9();
  v139 = (v166 + v4 + 68 * v3);
  v140 = v139 + *(v2 + 56);
  *v139 = 68;
  *v140 = "STAIRS";
  *(v140 + 1) = 6;
  v140[16] = 2;
  v9();
  v141 = (v166 + v4 + 69 * v3);
  v142 = v141 + *(v2 + 56);
  *v141 = 69;
  *v142 = "STEP_TRAINING";
  *(v142 + 1) = 13;
  v142[16] = 2;
  v9();
  v143 = (v166 + v4 + 70 * v3);
  v144 = v143 + *(v2 + 56);
  *v143 = 70;
  *v144 = "WHEELCHAIR_WALK_PACE";
  *(v144 + 1) = 20;
  v144[16] = 2;
  v9();
  v145 = (v166 + v4 + 71 * v3);
  v146 = v145 + *(v2 + 56);
  *v145 = 71;
  *v146 = "WHEELCHAIR_RUN_PACE";
  *(v146 + 1) = 19;
  v146[16] = 2;
  v9();
  v147 = (v166 + v4 + 72 * v3);
  v148 = v147 + *(v2 + 56);
  *v147 = 72;
  *v148 = "TAI_CHI";
  *(v148 + 1) = 7;
  v148[16] = 2;
  v9();
  v149 = (v166 + v4 + 73 * v3);
  v150 = v149 + *(v2 + 56);
  *v149 = 73;
  *v150 = "MIXED_CARDIO";
  *(v150 + 1) = 12;
  v150[16] = 2;
  v9();
  v151 = (v166 + v4 + 74 * v3);
  v152 = v151 + *(v2 + 56);
  *v151 = 74;
  *v152 = "HAND_CYCLING";
  *(v152 + 1) = 12;
  v152[16] = 2;
  v9();
  v153 = (v166 + v4 + 75 * v3);
  v154 = v153 + *(v2 + 56);
  *v153 = 75;
  *v154 = "DISC_SPORTS";
  *(v154 + 1) = 11;
  v154[16] = 2;
  v9();
  v155 = (v166 + v4 + 76 * v3);
  v156 = v155 + *(v2 + 56);
  *v155 = 76;
  *v156 = "FITNESS_GAMING";
  *(v156 + 1) = 14;
  v156[16] = 2;
  v9();
  v157 = (v166 + v4 + 77 * v3);
  v158 = v157 + *(v2 + 56);
  *v157 = 77;
  *v158 = "CARDIO_DANCE";
  *(v158 + 1) = 12;
  v158[16] = 2;
  v9();
  v159 = (v166 + v4 + 78 * v3);
  v160 = v159 + *(v2 + 56);
  *v159 = 78;
  *v160 = "SOCIAL_DANCE";
  *(v160 + 1) = 12;
  v160[16] = 2;
  v9();
  v161 = (v166 + v4 + 79 * v3);
  v162 = v161 + *(v2 + 56);
  *v161 = 79;
  *v162 = "PICKLEBALL";
  *(v162 + 1) = 10;
  v162[16] = 2;
  v9();
  v163 = (v166 + v4 + 80 * v3);
  v164 = v163 + *(v2 + 56);
  *v163 = 80;
  *v164 = "COOLDOWN";
  *(v164 + 1) = 8;
  v164[16] = 2;
  v9();
  return sub_251C706C4();
}

unint64_t sub_251C44BD8(unint64_t result)
{
  v1 = 7;
  if (result != 100)
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_251C44C40()
{
  result = qword_27F47CCA0;
  if (!qword_27F47CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CCA0);
  }

  return result;
}

unint64_t sub_251C44CC8()
{
  result = qword_27F47CCB8;
  if (!qword_27F47CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CCB8);
  }

  return result;
}

unint64_t sub_251C44D50()
{
  result = qword_27F47CCD0;
  if (!qword_27F47CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CCD0);
  }

  return result;
}

unint64_t sub_251C44DA8()
{
  result = qword_27F47CCD8;
  if (!qword_27F47CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CCD8);
  }

  return result;
}

unint64_t sub_251C44E00()
{
  result = qword_27F47CCE0;
  if (!qword_27F47CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CCE0);
  }

  return result;
}

unint64_t sub_251C44E58()
{
  result = qword_27F47CCE8;
  if (!qword_27F47CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CCE8);
  }

  return result;
}

unint64_t sub_251C44EAC()
{
  result = qword_27F47CCF0;
  if (!qword_27F47CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CCF0);
  }

  return result;
}

uint64_t sub_251C44F14(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v61 = sub_251C702E4();
  v57 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = (&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  Output = type metadata accessor for ClinicalSharingQueryOutput(0);
  v55 = *(Output - 8);
  v56 = Output;
  v12 = MEMORY[0x28223BE20](Output);
  v54 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v65 = &v47 - v14;
  sub_251AD58F8(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PBTypedData(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C472FC(0);
  v52 = *(v24 - 8);
  v53 = v24;
  MEMORY[0x28223BE20](v24);
  v51 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a3;
  v63 = a4;
  v64 = a5;
  v26 = sub_251C45588(a1, a2, a3, a4, a5);
  v27 = *(v26 + 16);
  if (v27)
  {
    v48 = v19;
    v49 = v17;
    v50 = v16;
    v28 = *(a2 + 56);
    v29 = *(v21 + 80);
    v47 = v26;
    v30 = v26 + ((v29 + 32) & ~v29);
    v58 = *(v21 + 72);
    v59 = v28;
    ++v57;
    v31 = MEMORY[0x277D84F90];
    v32 = a2;
    v33 = v54;
    do
    {
      sub_251C47468(v30, v23, type metadata accessor for PBTypedData);
      v34 = v60;
      v35 = sub_251BF2A0C(v64, v60);
      MEMORY[0x28223BE20](v35);
      *(&v47 - 2) = v34;
      v36 = sub_251BF1DA0(MEMORY[0x277D84F90], sub_251AD6374, (&v47 - 4), v59);
      (*v57)(v34, v61);
      if (*(v36 + 16))
      {
        v37 = v32;
        sub_251C47468(v23, v33, type metadata accessor for PBTypedData);
        v38 = sub_251BFAE40(v36);

        sub_251C474D0(v23, type metadata accessor for PBTypedData);
        v39 = v56;
        *(v33 + *(v56 + 20)) = v38;
        v40 = (v33 + *(v39 + 24));
        *v40 = 0;
        v40[1] = 0;
        sub_251C47400(v33, v65, type metadata accessor for ClinicalSharingQueryOutput);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_251C390E0(0, v31[2] + 1, 1, v31);
        }

        v42 = v31[2];
        v41 = v31[3];
        v32 = v37;
        if (v42 >= v41 >> 1)
        {
          v31 = sub_251C390E0((v41 > 1), v42 + 1, 1, v31);
        }

        v31[2] = v42 + 1;
        sub_251C47400(v65, v31 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v42, type metadata accessor for ClinicalSharingQueryOutput);
      }

      else
      {
        sub_251C474D0(v23, type metadata accessor for PBTypedData);
      }

      v30 += v58;
      --v27;
    }

    while (v27);

    v17 = v49;
    v16 = v50;
    v19 = v48;
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  v66 = v31;
  sub_251C47210(0, &qword_27F479780, type metadata accessor for ClinicalSharingQueryOutput, MEMORY[0x277D83940]);
  sub_251C47274();
  sub_251C710D4();

  sub_251A82284();
  v43 = v51;
  sub_251C708E4();
  (*(v17 + 8))(v19, v16);
  sub_251C473B8(&qword_27F47CD30, sub_251C472FC, MEMORY[0x277CBCD18]);
  v44 = v53;
  v45 = sub_251C70A94();
  (*(v52 + 8))(v43, v44);
  return v45;
}

uint64_t sub_251C45588(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v106 = a2;
  v107 = a5;
  v99 = a3;
  v100 = a4;
  v6 = type metadata accessor for PBCategorySeries(0);
  MEMORY[0x28223BE20](v6 - 8);
  v101 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_251C47210(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v104 = &v87 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v91 = &v87 - v16;
  MEMORY[0x28223BE20](v15);
  v103 = &v87 - v17;
  v97 = type metadata accessor for PBTypedData(0);
  v93 = *(v97 - 8);
  v18 = MEMORY[0x28223BE20](v97);
  v94 = (&v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v102 = (&v87 - v20);
  sub_251C47210(0, &qword_27F478D90, MEMORY[0x277CC88A8], v8);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v87 - v22;
  v24 = type metadata accessor for PBDateRange(0);
  v108 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v90 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v89 = &v87 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v105 = &v87 - v30;
  v109 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_42:
    v85 = v29;
    v31 = sub_251C717F4();
    v29 = v85;
  }

  else
  {
    v31 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v98 = v29;
  v92 = v12;
  if (v31)
  {
    v96 = v23;
    v32 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x25308D460](v32, a1);
      }

      else
      {
        if (v32 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v29 = *(a1 + 8 * v32 + 32);
      }

      v33 = v29;
      v23 = (v32 + 1);
      if (__OFADD__(v32, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v34 = [v29 periods];
      sub_251A8223C(0, &qword_27F47CD38, 0x277CCD9D8);
      v35 = sub_251C71154();

      if (v35 >> 62)
      {
        v36 = sub_251C717F4();
      }

      else
      {
        v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v36 <= 0)
      {
        v12 = [v33 schedules];
        sub_251A8223C(0, &qword_27F47CD40, 0x277CCD9E8);
        v37 = sub_251C71154();

        if (v37 >> 62)
        {
          v12 = v37;
          v38 = sub_251C717F4();
        }

        else
        {
          v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v38 <= 0)
        {
          v39 = [v33 sleepDurationGoal];
          if (!v39)
          {

            goto LABEL_18;
          }
        }
      }

      sub_251C71734();
      v12 = *(v109 + 16);
      sub_251C71774();
      sub_251C71784();
      v29 = sub_251C71744();
LABEL_18:
      ++v32;
      if (v23 == v31)
      {
        v40 = v109;
        v23 = v96;
        if ((v109 & 0x8000000000000000) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_43;
      }
    }
  }

  v40 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

LABEL_27:
  if ((v40 & 0x4000000000000000) != 0)
  {
LABEL_43:
    if (sub_251C717F4())
    {
      goto LABEL_29;
    }

LABEL_44:

    return MEMORY[0x277D84F90];
  }

  if (!*(v40 + 16))
  {
    goto LABEL_44;
  }

LABEL_29:
  v41 = objc_opt_self();
  v42 = sub_251C70114();
  v43 = [v41 hk:v99 sleepDayIntervalForMorningIndexRange:v100 calendar:v42];

  v88 = v43;
  sub_251C6FA74();
  v44 = sub_251C6FAE4();
  (*(*(v44 - 8) + 56))(v23, 0, 1, v44);
  v45 = v105;
  v46 = v98;
  sub_251A7BAA0();
  sub_251C481C4(v23, &qword_27F478D90, MEMORY[0x277CC88A8]);
  v47 = v103;
  sub_251C47468(v45, v103, type metadata accessor for PBDateRange);
  v48 = *(v108 + 56);
  v48(v47, 0, 1, v46);
  v49 = v102;
  *v102 = 0;
  *(v49 + 8) = 1;
  v50 = v97;
  v51 = *(v97 + 20);
  v52 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v53 = *(v52 - 8);
  v54 = *(v53 + 56);
  v95 = v53 + 56;
  v96 = v54;
  (v54)(v49 + v51, 1, 1, v52);
  sub_251C703A4();
  v55 = *(v50 + 28);
  v48(v49 + v55, 1, 1, v46);
  v56 = sub_251B3C450();
  v58 = v49;
  if ((v57 & 0x100) == 0)
  {
    *v49 = v56;
    *(v49 + 8) = v57 & 1;
  }

  v59 = v91;
  sub_251C48144(v103, v91, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v60 = *(v108 + 48);
  v108 += 48;
  v61 = v60(v59, 1, v46);
  v87 = v60;
  if (v61 == 1)
  {
    sub_251C481C4(v59, qword_2813E6EE8, type metadata accessor for PBDateRange);
  }

  else
  {
    v62 = v89;
    sub_251C47400(v59, v89, type metadata accessor for PBDateRange);
    sub_251C481C4(v58 + v55, qword_2813E6EE8, type metadata accessor for PBDateRange);
    sub_251C47400(v62, v58 + v55, type metadata accessor for PBDateRange);
    v48(v58 + v55, 0, 1, v46);
  }

  sub_251C481C4(v103, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v63 = v101;
  sub_251C4622C(v40, v106, v101);
  sub_251C481C4(v58 + v51, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  sub_251C47400(v63, v58 + v51, type metadata accessor for PBCategorySeries);
  swift_storeEnumTagMultiPayload();
  v64 = v96;
  (v96)(v58 + v51, 0, 1, v52);
  *v58 = 84;
  *(v58 + 8) = 1;
  v65 = v104;
  sub_251C47468(v105, v104, type metadata accessor for PBDateRange);
  v48(v65, 0, 1, v46);
  v66 = v46;
  v67 = v94;
  *v94 = 0;
  *(v67 + 8) = 1;
  v68 = v97;
  v69 = *(v97 + 20);
  (v64)(v67 + v69, 1, 1, v52);
  sub_251C703A4();
  v70 = *(v68 + 28);
  v48(v67 + v70, 1, 1, v66);
  v71 = sub_251B3C450();
  v73 = v67;
  if ((v72 & 0x100) == 0)
  {
    *v67 = v71;
    *(v67 + 8) = v72 & 1;
  }

  v74 = v92;
  sub_251C48144(v104, v92, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v75 = v98;
  if (v87(v74, 1, v98) == 1)
  {
    sub_251C481C4(v74, qword_2813E6EE8, type metadata accessor for PBDateRange);
  }

  else
  {
    v76 = v74;
    v77 = v90;
    sub_251C47400(v76, v90, type metadata accessor for PBDateRange);
    sub_251C481C4(v73 + v70, qword_2813E6EE8, type metadata accessor for PBDateRange);
    sub_251C47400(v77, v73 + v70, type metadata accessor for PBDateRange);
    v48(v73 + v70, 0, 1, v75);
  }

  sub_251C481C4(v104, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v78 = v101;
  sub_251C463C0(v40, v106, v99, v100, v107, v101);

  sub_251C481C4(v73 + v69, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  sub_251C47400(v78, v73 + v69, type metadata accessor for PBCategorySeries);
  swift_storeEnumTagMultiPayload();
  (v96)(v73 + v69, 0, 1, v52);
  *v73 = 115;
  *(v73 + 8) = 1;
  sub_251C47210(0, &qword_27F47CAD0, type metadata accessor for PBTypedData, MEMORY[0x277D84560]);
  v79 = *(v93 + 72);
  v80 = (*(v93 + 80) + 32) & ~*(v93 + 80);
  v81 = v73;
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_251C75800;
  v83 = v82 + v80;
  v84 = v102;
  sub_251C47468(v102, v83, type metadata accessor for PBTypedData);
  sub_251C47400(v81, v83 + v79, type metadata accessor for PBTypedData);

  sub_251C474D0(v105, type metadata accessor for PBDateRange);
  sub_251C474D0(v84, type metadata accessor for PBTypedData);
  return v82;
}

void sub_251C4622C(unint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  v6 = type metadata accessor for PBCategorySeries(0);
  sub_251C703A4();
  v7 = *(v6 + 28);
  v8 = type metadata accessor for PBDateRange(0);
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  v16 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v10 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x25308D460](v10, a1);
      }

      else
      {
        if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v15 = v11;
      sub_251C47530(&v16, &v15, a2);

      ++v10;
      if (v13 == i)
      {
        v14 = v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_15:
  *(a3 + 2) = v14;
}

void sub_251C463C0(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v78 = a4;
  v79 = a5;
  v77 = a3;
  v9 = MEMORY[0x277D83D88];
  sub_251C47210(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v76 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v75 = &v63 - v13;
  v14 = type metadata accessor for PBDateRange(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v74 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C47210(0, &qword_27F478D90, MEMORY[0x277CC88A8], v9);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v80 = &v63 - v21;
  v95 = sub_251C6FAE4();
  v22 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v73 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for PBCategorySeries.Event(0);
  v71 = *(v72 - 8);
  v24 = MEMORY[0x28223BE20](v72);
  v85 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v70 = &v63 - v27;
  MEMORY[0x28223BE20](v26);
  v84 = &v63 - v28;
  *a6 = 0;
  a6[1] = 0xE000000000000000;
  v29 = type metadata accessor for PBCategorySeries(0);
  sub_251C703A4();
  v30 = *(v29 + 28);
  v31 = *(v15 + 56);
  v64 = a6;
  v86 = v15 + 56;
  v87 = v14;
  v83 = v31;
  v31(a6 + v30, 1, 1, v14);
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  v32 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v80; v32; i = v80)
  {
    v34 = 0;
    v89 = a1 & 0xFFFFFFFFFFFFFF8;
    v90 = a1 & 0xC000000000000001;
    v88 = (v22 + 56);
    v82 = (v22 + 48);
    v66 = (v22 + 32);
    v65 = (v22 + 8);
    v91 = MEMORY[0x277D84F90];
    v69 = a1;
    v68 = v20;
    v67 = v32;
    while (1)
    {
      if (v90)
      {
        v35 = MEMORY[0x25308D460](v34, a1);
      }

      else
      {
        if (v34 >= *(v89 + 16))
        {
          goto LABEL_23;
        }

        v35 = *(a1 + 8 * v34 + 32);
      }

      v22 = v35;
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      v37 = MEMORY[0x25308DB30]();
      v38 = [v22 primarySchedule];
      if (v38)
      {
        v39 = v38;
        v92 = v37;
        v93 = v34 + 1;
        v94 = v22;
        v40 = [v22 morningIndex];
        v41 = sub_251C70114();
        v42 = [v39 bedtimeDateIntervalForMorningIndex:v40 calendar:v41];

        if (v42)
        {
          sub_251C6FA74();

          v43 = 0;
        }

        else
        {
          v43 = 1;
        }

        v44 = v95;
        (*v88)(v20, v43, 1, v95);
        sub_251AAFBF8(v20, i);
        v45 = (*v82)(i, 1, v44);
        v36 = v93;
        v22 = v94;
        v37 = v92;
        if (v45 != 1)
        {
          v46 = v73;
          (*v66)();
          v47 = v70;
          *v70 = 0;
          *(v47 + 1) = 0;
          *(v47 + 2) = 0xE000000000000000;
          *(v47 + 3) = 0;
          *(v47 + 4) = 0xE000000000000000;
          v48 = v72;
          v49 = *(v72 + 28);
          v50 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
          (*(*(v50 - 8) + 56))(&v47[v49], 1, 1, v50);
          sub_251C703A4();
          v81 = *(v48 + 36);
          v83(&v47[v81], 1, 1, v87);
          v51 = v75;
          v52 = v46;
          sub_251C6FAB4();
          v53 = sub_251C70014();
          v54 = *(*(v53 - 8) + 56);
          v54(v51, 0, 1, v53);
          v55 = v76;
          sub_251C6FA84();
          v54(v55, 0, 1, v53);
          v56 = v74;
          sub_251C0DBA4(v51, v55, a2, v74);
          v57 = MEMORY[0x277CC9578];
          sub_251C481C4(v55, &qword_2813E7500, MEMORY[0x277CC9578]);
          sub_251C481C4(v51, &qword_2813E7500, v57);
          (*v65)(v52, v95);
          v58 = v81;
          sub_251C481C4(&v47[v81], qword_2813E6EE8, type metadata accessor for PBDateRange);
          sub_251C47400(v56, &v47[v58], type metadata accessor for PBDateRange);
          v83(&v47[v58], 0, 1, v87);
          v59 = v84;
          sub_251C47400(v47, v84, type metadata accessor for PBCategorySeries.Event);
          sub_251C47468(v59, v85, type metadata accessor for PBCategorySeries.Event);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v91 = sub_251C39894(0, v91[2] + 1, 1, v91);
          }

          v37 = v92;
          v61 = v91[2];
          v60 = v91[3];
          a1 = v69;
          v20 = v68;
          i = v80;
          v32 = v67;
          v36 = v93;
          if (v61 >= v60 >> 1)
          {
            v91 = sub_251C39894((v60 > 1), v61 + 1, 1, v91);
          }

          sub_251C474D0(v84, type metadata accessor for PBCategorySeries.Event);
          v62 = v91;
          v91[2] = v61 + 1;
          sub_251C47400(v85, v62 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v61, type metadata accessor for PBCategorySeries.Event);
          v22 = v94;
          goto LABEL_6;
        }
      }

      else
      {
        (*v88)(i, 1, 1, v95);
      }

      sub_251C481C4(i, &qword_27F478D90, MEMORY[0x277CC88A8]);
LABEL_6:
      objc_autoreleasePoolPop(v37);

      ++v34;
      if (v36 == v32)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v32 = sub_251C717F4();
  }

  v91 = MEMORY[0x277D84F90];
LABEL_26:
  v64[2] = v91;
}

uint64_t sub_251C46D20()
{
  sub_251C46FAC(0);
  v2 = *(v1 - 8);
  v15 = v1;
  v16 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = v0[1];
  v8 = v0[2];
  v7 = v0[3];
  __swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40));
  v17 = off_2863FD768(v6, v8, 0);
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v6;
  v9[4] = v8;
  v9[5] = v7;

  v10 = v7;
  v14 = sub_251C70964();
  sub_251C470B0(0, &qword_27F47CD00, sub_251C47124);
  type metadata accessor for ClinicalSharingQueryOutput(0);
  sub_251C470B0(0, &qword_2813E21C0, type metadata accessor for ClinicalSharingQueryOutput);
  sub_251C4718C(&qword_27F47CD18, &qword_27F47CD00, sub_251C47124);
  sub_251C4718C(&qword_2813E21C8, &qword_2813E21C0, type metadata accessor for ClinicalSharingQueryOutput);
  sub_251C70B94();

  sub_251C473B8(&qword_27F47CD20, sub_251C46FAC, MEMORY[0x277CBCCE0]);
  v11 = v15;
  v12 = sub_251C70A94();
  (*(v16 + 8))(v4, v11);
  return v12;
}

void sub_251C46FAC(uint64_t a1)
{
  if (!qword_27F47CCF8)
  {
    sub_251C470B0(255, &qword_2813E21C0, type metadata accessor for ClinicalSharingQueryOutput);
    sub_251C470B0(255, &qword_27F47CD00, sub_251C47124);
    sub_251C4718C(&qword_2813E21C8, &qword_2813E21C0, type metadata accessor for ClinicalSharingQueryOutput);
    sub_251C4718C(&qword_27F47CD18, &qword_27F47CD00, sub_251C47124);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47CCF8);
    }
  }
}

void sub_251C470B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_251A82284();
    v4 = sub_251C70974();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_251C47124(uint64_t a1)
{
  if (!qword_27F47CD08)
  {
    sub_251A8223C(255, &qword_27F47CD10, 0x277CCD9B0);
    v1 = sub_251C711A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47CD08);
    }
  }
}

uint64_t sub_251C4718C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_251C470B0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251C471DC@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_251C44F14(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
  *a2 = result;
  return result;
}

void sub_251C47210(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_251C47274()
{
  result = qword_27F479788;
  if (!qword_27F479788)
  {
    sub_251C47210(255, &qword_27F479780, type metadata accessor for ClinicalSharingQueryOutput, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479788);
  }

  return result;
}

void sub_251C472FC(uint64_t a1)
{
  if (!qword_27F47CD28)
  {
    sub_251C47210(255, &qword_27F479780, type metadata accessor for ClinicalSharingQueryOutput, MEMORY[0x277D83940]);
    sub_251A82284();
    sub_251C47274();
    v1 = sub_251C70904();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47CD28);
    }
  }
}

uint64_t sub_251C473B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251C47400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C47468(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C474D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251C47530(uint64_t *a1, id *a2, uint64_t a3)
{
  v99 = a3;
  v80 = a1;
  v116 = sub_251C70014();
  v4 = *(v116 - 8);
  v5 = MEMORY[0x28223BE20](v116);
  v84 = &v74[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v83 = &v74[-v7];
  sub_251C47210(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v114 = &v74[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v98 = &v74[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v115 = &v74[-v14];
  MEMORY[0x28223BE20](v13);
  v113 = &v74[-v15];
  v112 = type metadata accessor for PBDateRange(0);
  v16 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v18 = &v74[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = sub_251C6FAE4();
  v19 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v21 = &v74[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = type metadata accessor for PBCategorySeries.Event(0);
  v95 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v23 = &v74[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = [*a2 periods];
  sub_251A8223C(0, &qword_27F47CD38, 0x277CCD9D8);
  v25 = sub_251C71154();

  v26 = v25;
  v79 = v25;
  if (v25 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v26 = v79)
  {
    v28 = 0;
    v78 = v26 & 0xC000000000000001;
    v76 = v26 & 0xFFFFFFFFFFFFFF8;
    v92 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter;
    v75 = v26 + 32;
    v29 = (v16 + 56);
    v90 = (v4 + 7);
    v89 = (v4 + 6);
    v88 = (v4 + 4);
    v87 = (v4 + 1);
    v85 = (v19 + 8);
    v94 = v18;
    v77 = i;
    v86 = v21;
    v93 = v23;
    v91 = (v16 + 56);
    while (1)
    {
      if (v78)
      {
        v30 = v28;
        v31 = MEMORY[0x25308D460](v28, v26);
      }

      else
      {
        if (v28 >= *(v76 + 16))
        {
          goto LABEL_40;
        }

        v30 = v28;
        v31 = *(v75 + 8 * v28);
      }

      v82 = v31;
      v32 = __OFADD__(v30, 1);
      v4 = (v30 + 1);
      if (v32)
      {
        break;
      }

      v81 = v4;
      v4 = [v82 segments];
      sub_251A8223C(0, &qword_27F47CD48, 0x277CCD9E0);
      v16 = sub_251C71154();

      v33 = v16;
      if (v16 >> 62)
      {
        v4 = v16;
        v34 = sub_251C717F4();
        v33 = v16;
        if (v34)
        {
LABEL_12:
          if (v34 < 1)
          {
            goto LABEL_39;
          }

          v18 = 0;
          v19 = *v80;
          v101 = v33;
          v102 = v33 & 0xC000000000000001;
          v100 = v34;
          while (1)
          {
            v108 = v18;
            v109 = v19;
            v35 = v102 ? MEMORY[0x25308D460](v18) : *(v33 + 8 * v18 + 32);
            v36 = v35;
            v107 = MEMORY[0x25308DB30]();
            v111 = v36;
            v37 = [v36 dateInterval];
            sub_251C6FA74();

            *v23 = 0;
            *(v23 + 1) = 0;
            *(v23 + 2) = 0xE000000000000000;
            *(v23 + 3) = 0;
            *(v23 + 4) = 0xE000000000000000;
            v38 = v97;
            v39 = &v23[*(v97 + 28)];
            v40 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
            v41 = *(v40 - 8);
            v42 = *(v41 + 56);
            v105 = v40;
            v106 = v39;
            v103 = v41 + 56;
            v104 = v42;
            (v42)(v39, 1, 1);
            sub_251C703A4();
            v43 = *(v38 + 36);
            v110 = *v29;
            v110(&v23[v43], 1, 1, v112);
            v44 = v113;
            sub_251C6FAB4();
            v16 = *v90;
            v45 = v116;
            (*v90)(v44, 0, 1, v116);
            v46 = v115;
            sub_251C6FA84();
            (v16)(v46, 0, 1, v45);
            v47 = v94;
            *v94 = 0;
            *(v47 + 8) = 0xE000000000000000;
            *(v47 + 16) = 0;
            *(v47 + 24) = 0xE000000000000000;
            *(v47 + 32) = 0;
            v19 = 1;
            *(v47 + 40) = 1;
            sub_251C703A4();
            v48 = v98;
            v18 = &qword_2813E7500;
            sub_251C48144(v44, v98, &qword_2813E7500, MEMORY[0x277CC9578]);
            v49 = *v89;
            if ((*v89)(v48, 1, v45) == 1)
            {
              sub_251C481C4(v48, &qword_2813E7500, MEMORY[0x277CC9578]);
            }

            else
            {
              v50 = v83;
              (*v88)(v83, v48, v116);
              v51 = *(v99 + v92);
              v52 = sub_251C6FF94();
              v53 = [v51 stringFromDate_];

              v54 = sub_251C70F14();
              v16 = v55;

              v18 = &qword_2813E7500;
              (*v87)(v50, v116);
              *v47 = v54;
              *(v47 + 8) = v16;
            }

            v56 = v114;
            sub_251C48144(v115, v114, &qword_2813E7500, MEMORY[0x277CC9578]);
            v57 = v49(v56, 1, v116);
            v23 = v93;
            if (v57 == 1)
            {
              sub_251C481C4(v114, &qword_2813E7500, MEMORY[0x277CC9578]);
            }

            else
            {
              v58 = v84;
              (*v88)(v84, v114, v116);
              v59 = *(v99 + v92);
              v60 = sub_251C6FF94();
              v16 = [v59 stringFromDate_];

              v61 = sub_251C70F14();
              v63 = v62;

              (*v87)(v58, v116);
              *(v47 + 16) = v61;
              *(v47 + 24) = v63;
              v18 = &qword_2813E7500;
            }

            v29 = v91;
            v21 = MEMORY[0x277CC9578];
            sub_251C481C4(v115, &qword_2813E7500, MEMORY[0x277CC9578]);
            sub_251C481C4(v113, &qword_2813E7500, v21);
            sub_251C481C4(&v23[v43], qword_2813E6EE8, type metadata accessor for PBDateRange);
            sub_251C47400(v47, &v23[v43], type metadata accessor for PBDateRange);
            v110(&v23[v43], 0, 1, v112);
            v4 = &selRef_dateComponentsValue;
            v64 = v111;
            v65 = [v111 category];
            if (v65 < 0xFFFFFFFF80000000)
            {
              break;
            }

            if (v65 > 0x7FFFFFFF)
            {
              goto LABEL_37;
            }

            *v23 = v65;
            v66 = [v64 category];
            v21 = v86;
            (*v85)(v86, v96);
            if (v66 > 5)
            {
              v67 = 0;
            }

            else
            {
              v67 = qword_251C888B8[v66];
            }

            v68 = v108;
            v69 = v106;
            sub_251C481C4(v106, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
            *v69 = v67;
            *(v69 + 8) = 1;
            v70 = v105;
            swift_storeEnumTagMultiPayload();
            v104(v69, 0, 1, v70);
            v19 = v109;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v19 = sub_251C39894(0, *(v19 + 16) + 1, 1, v19);
            }

            v72 = *(v19 + 16);
            v71 = *(v19 + 24);
            v16 = v72 + 1;
            if (v72 >= v71 >> 1)
            {
              v19 = sub_251C39894((v71 > 1), v72 + 1, 1, v19);
            }

            v18 = (v68 + 1);
            *(v19 + 16) = v16;
            sub_251C47400(v23, v19 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v72, type metadata accessor for PBCategorySeries.Event);
            objc_autoreleasePoolPop(v107);

            v33 = v101;
            if (v100 == v18)
            {
              v4 = v101;

              *v80 = v19;
              goto LABEL_4;
            }
          }

          __break(1u);
LABEL_37:
          __break(1u);
          break;
        }
      }

      else
      {
        v34 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v34)
        {
          goto LABEL_12;
        }
      }

      v4 = v33;

LABEL_4:
      v28 = v81;
      v26 = v79;
      if (v81 == v77)
      {
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    i = sub_251C717F4();
  }
}