_BYTE *LocationButton.init(_:action:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  if (v4 <= 2)
  {
    v5 = 2;
    if (v4 != 1)
    {
      v5 = 3;
    }

    if (*result)
    {
      v6 = v5;
    }

    else
    {
      v6 = 1;
    }

    goto LABEL_11;
  }

  if (v4 == 3)
  {
    v6 = 4;
    goto LABEL_11;
  }

  if (v4 == 4)
  {
    v6 = 5;
LABEL_11:
    *a4 = v6;
    *(a4 + 8) = 0;
    *(a4 + 16) = a2;
    *(a4 + 24) = a3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t LocationButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v24 = sub_23B6B1638(&qword_27E1787C0, &qword_23B6B4F60);
  MEMORY[0x28223BE20](v24);
  v3 = (&v23 - v2);
  v23 = sub_23B6B1638(&qword_27E1787C8, &qword_23B6B4F68);
  MEMORY[0x28223BE20](v23);
  v5 = &v23 - v4;
  v6 = sub_23B6B1638(&qword_27E1787D0, &qword_23B6B4F70);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v15 = *v1;
  v16 = *(v1 + 8);
  v18 = *(v1 + 16);
  v17 = *(v1 + 24);
  *v5 = sub_23B6B4B54();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v19 = sub_23B6B1638(&qword_27E1787D8, &qword_23B6B4F78);
  sub_23B6B1680(v15, v16, v18, v17, &v5[*(v19 + 44)]);

  if (sub_23B6B4CD4())
  {
    v20 = sub_23B6B4CB4();
  }

  else
  {
    v20 = sub_23B6B4CA4();
  }

  v21 = v20;
  sub_23B6B4828(v5, v12, &qword_27E1787C8, &qword_23B6B4F68);
  *&v12[*(v6 + 36)] = v21;
  sub_23B6B4828(v12, v14, &qword_27E1787D0, &qword_23B6B4F70);
  sub_23B6B4890(v14, v9, &qword_27E1787D0, &qword_23B6B4F70);
  sub_23B6B1860();
  *v3 = sub_23B6B4CC4();
  swift_storeEnumTagMultiPayload();
  sub_23B6B198C(&qword_27E1787E8, &qword_27E1787C8, &qword_23B6B4F68, MEMORY[0x277CE1198]);
  sub_23B6B4C14();
  return sub_23B6B4778(v14, &qword_27E1787D0, &qword_23B6B4F70);
}

uint64_t sub_23B6B1638(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23B6B1680@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = swift_getKeyPath();
  *(a5 + 8) = 0;
  *(a5 + 16) = swift_getKeyPath();
  *(a5 + 24) = 0;
  v10 = type metadata accessor for ViewRepresentable(0);
  v11 = v10[6];
  *(a5 + v11) = swift_getKeyPath();
  sub_23B6B1638(&qword_27E1788E8, &qword_23B6B5258);
  swift_storeEnumTagMultiPayload();
  v12 = v10[7];
  *(a5 + v12) = swift_getKeyPath();
  sub_23B6B1638(&qword_27E1788F0, &qword_23B6B5260);
  swift_storeEnumTagMultiPayload();
  v13 = a5 + v10[8];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = v10[9];
  *(a5 + v14) = swift_getKeyPath();
  sub_23B6B1638(&qword_27E1788C8, &qword_23B6B5240);
  swift_storeEnumTagMultiPayload();
  v15 = v10[10];
  *(a5 + v15) = swift_getKeyPath();
  sub_23B6B1638(&qword_27E1788D8, &qword_23B6B5248);
  swift_storeEnumTagMultiPayload();
  v16 = v10[11];
  *(a5 + v16) = swift_getKeyPath();
  sub_23B6B1638(&qword_27E1788E0, &qword_23B6B5250);
  result = swift_storeEnumTagMultiPayload();
  *(a5 + v10[12]) = 0x4049000000000000;
  *(a5 + v10[13]) = 0x4024000000000000;
  v18 = a5 + v10[14];
  *v18 = a1;
  *(v18 + 8) = a2 & 1;
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  return result;
}

unint64_t sub_23B6B1860()
{
  result = qword_27E1787E0;
  if (!qword_27E1787E0)
  {
    sub_23B6B1944(&qword_27E1787D0, &qword_23B6B4F70);
    sub_23B6B198C(&qword_27E1787E8, &qword_27E1787C8, &qword_23B6B4F68, MEMORY[0x277CE1198]);
    sub_23B6B198C(&qword_27E1787F0, &qword_27E1787F8, &qword_23B6B4F80, MEMORY[0x277CE0890]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1787E0);
  }

  return result;
}

uint64_t sub_23B6B1944(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23B6B198C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_23B6B1944(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B6B1A34()
{
  v1 = *v0;
  sub_23B6B4D14();
  MEMORY[0x23EEA2B00](v1);
  return sub_23B6B4D34();
}

uint64_t sub_23B6B1AA8(uint64_t a1)
{
  v2 = *v1;
  sub_23B6B4D14();
  MEMORY[0x23EEA2B00](v2);
  return sub_23B6B4D34();
}

uint64_t sub_23B6B1B10()
{
  v1 = sub_23B6B4B14();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ViewRepresentable(0) + 32);
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_23B6B4CF4();
    v8 = sub_23B6B4C34();
    sub_23B6B49A4();

    sub_23B6B4B04();
    swift_getAtKeyPath();
    j__swift_release(v6);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_23B6B1C64@<X0>(void *a1@<X8>)
{
  v3 = sub_23B6B4B14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23B6B1638(&qword_27E1788C8, &qword_23B6B5240);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ViewRepresentable(0);
  sub_23B6B4890(v1 + *(v10 + 36), v9, &qword_27E1788C8, &qword_23B6B5240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23B6B4C54();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23B6B4CF4();
    v13 = sub_23B6B4C34();
    sub_23B6B49A4();

    sub_23B6B4B04();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

__n128 sub_23B6B1E70(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void sub_23B6B1EB4(void *a1)
{
  v2 = v1;
  v105 = a1;
  v3 = sub_23B6B4C54();
  v94 = *(v3 - 8);
  v95 = v3;
  MEMORY[0x28223BE20](v3);
  v93 = &v83[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_23B6B4B14();
  v101 = *(v5 - 8);
  v102 = v5;
  MEMORY[0x28223BE20](v5);
  v100 = &v83[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v99 = sub_23B6B4B44();
  v107 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v87 = &v83[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v106 = sub_23B6B1638(&qword_27E1788B0, &qword_23B6B5238);
  v8 = MEMORY[0x28223BE20](v106);
  v92 = &v83[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v98 = &v83[-v10];
  v11 = sub_23B6B1638(&qword_27E178868, &qword_23B6B50E0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v86 = &v83[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v104 = &v83[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v97 = &v83[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v88 = &v83[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v83[-v21];
  MEMORY[0x28223BE20](v20);
  v24 = &v83[-v23];
  v25 = sub_23B6B49F4();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v83[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27);
  v31 = &v83[-v30];
  v32 = type metadata accessor for ViewRepresentable(0);
  sub_23B6B4398(&qword_27E1788F0, &qword_23B6B5260, MEMORY[0x277CDF8C8], v31);
  sub_23B6B49D4();
  v33 = sub_23B6B49E4();
  v34 = *(v26 + 8);
  v34(v29, v25);
  v34(v31, v25);
  if (v33)
  {
    v35 = 1;
  }

  else
  {
    v35 = 2;
  }

  v96 = v32;
  v36 = *(v32 + 24);
  v37 = v2;
  v38 = v24;
  v39 = v98;
  v103 = v37;
  v89 = v36;
  sub_23B6B4598(v38);
  sub_23B6B4B34();
  v40 = v107;
  v41 = v99;
  v90 = *(v107 + 56);
  v90(v22, 0, 1, v99);
  v42 = *(v106 + 48);
  sub_23B6B4890(v38, v39, &qword_27E178868, &qword_23B6B50E0);
  sub_23B6B4890(v22, v39 + v42, &qword_27E178868, &qword_23B6B50E0);
  v43 = *(v40 + 48);
  v44 = v43(v39, 1, v41);
  v91 = v35;
  if (v44 == 1)
  {
    sub_23B6B4778(v22, &qword_27E178868, &qword_23B6B50E0);
    sub_23B6B4778(v38, &qword_27E178868, &qword_23B6B50E0);
    if (v43(v39 + v42, 1, v41) == 1)
    {
      sub_23B6B4778(v39, &qword_27E178868, &qword_23B6B50E0);
      v45 = v105;
      v46 = v103;
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  v85 = v38;
  v47 = v88;
  sub_23B6B4890(v39, v88, &qword_27E178868, &qword_23B6B50E0);
  if (v43(v39 + v42, 1, v41) == 1)
  {
    sub_23B6B4778(v22, &qword_27E178868, &qword_23B6B50E0);
    sub_23B6B4778(v85, &qword_27E178868, &qword_23B6B50E0);
    (*(v107 + 8))(v47, v41);
LABEL_9:
    sub_23B6B4778(v39, &qword_27E1788B0, &qword_23B6B5238);
    v46 = v103;
    v48 = v104;
    goto LABEL_10;
  }

  v56 = v107;
  v57 = v39 + v42;
  v58 = v87;
  (*(v107 + 32))(v87, v57, v41);
  sub_23B6B48F8(&qword_27E1788C0, MEMORY[0x277CDDEF8], MEMORY[0x277CDDF00]);
  v84 = sub_23B6B4CE4();
  v59 = *(v56 + 8);
  v59(v58, v41);
  sub_23B6B4778(v22, &qword_27E178868, &qword_23B6B50E0);
  sub_23B6B4778(v85, &qword_27E178868, &qword_23B6B50E0);
  v59(v47, v41);
  sub_23B6B4778(v39, &qword_27E178868, &qword_23B6B50E0);
  v48 = v104;
  v45 = v105;
  v46 = v103;
  if (v84)
  {
LABEL_21:
    v53 = 0;
    v60 = v46 + *(v96 + 56);
    if (*(v60 + 8))
    {
      v52 = 1;
    }

    else
    {
      v52 = *v60;
    }

    goto LABEL_24;
  }

LABEL_10:
  v49 = v97;
  sub_23B6B4598(v97);
  sub_23B6B4B24();
  v90(v48, 0, 1, v41);
  v50 = *(v106 + 48);
  v51 = v92;
  sub_23B6B4890(v49, v92, &qword_27E178868, &qword_23B6B50E0);
  sub_23B6B4890(v48, &v51[v50], &qword_27E178868, &qword_23B6B50E0);
  if (v43(v51, 1, v41) == 1)
  {
    sub_23B6B4778(v48, &qword_27E178868, &qword_23B6B50E0);
    sub_23B6B4778(v49, &qword_27E178868, &qword_23B6B50E0);
    if (v43(&v51[v50], 1, v41) == 1)
    {
      sub_23B6B4778(v51, &qword_27E178868, &qword_23B6B50E0);
      v52 = 0;
      v53 = v91;
      v45 = v105;
      goto LABEL_24;
    }
  }

  else
  {
    v54 = v86;
    sub_23B6B4890(v51, v86, &qword_27E178868, &qword_23B6B50E0);
    if (v43(&v51[v50], 1, v41) != 1)
    {
      v77 = v41;
      v78 = v107;
      v79 = &v51[v50];
      v80 = v87;
      (*(v107 + 32))(v87, v79, v77);
      sub_23B6B48F8(&qword_27E1788C0, MEMORY[0x277CDDEF8], MEMORY[0x277CDDF00]);
      v81 = sub_23B6B4CE4();
      v82 = *(v78 + 8);
      v82(v80, v77);
      sub_23B6B4778(v104, &qword_27E178868, &qword_23B6B50E0);
      sub_23B6B4778(v97, &qword_27E178868, &qword_23B6B50E0);
      v82(v54, v77);
      sub_23B6B4778(v51, &qword_27E178868, &qword_23B6B50E0);
      v45 = v105;
      if (v81)
      {
        v52 = 0;
        v53 = v91;
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    sub_23B6B4778(v104, &qword_27E178868, &qword_23B6B50E0);
    sub_23B6B4778(v97, &qword_27E178868, &qword_23B6B50E0);
    (*(v107 + 8))(v54, v41);
  }

  sub_23B6B4778(v51, &qword_27E1788B0, &qword_23B6B5238);
  v45 = v105;
LABEL_16:
  v55 = v46 + *(v96 + 56);
  if (*(v55 + 8))
  {
    v52 = 1;
  }

  else
  {
    v52 = *v55;
  }

  v53 = v91;
LABEL_24:
  [v45 setLabel_];
  [v45 setIcon_];
  v61 = *(v46 + 16);
  v62 = *(v46 + 24);

  if ((v62 & 1) == 0)
  {
    sub_23B6B4CF4();
    v63 = sub_23B6B4C34();
    sub_23B6B49A4();

    v64 = v100;
    sub_23B6B4B04();
    swift_getAtKeyPath();
    j__swift_release(v61);
    (*(v101 + 8))(v64, v102);
    v61 = v108;
  }

  if (!v61)
  {
    sub_23B6B4C94();
  }

  sub_23B6B47D8();
  v65 = sub_23B6B4D04();
  [v45 setBackgroundColor_];

  v66 = *v46;
  v67 = *(v46 + 8);

  if ((v67 & 1) == 0)
  {
    sub_23B6B4CF4();
    v68 = sub_23B6B4C34();
    sub_23B6B49A4();

    v69 = v100;
    sub_23B6B4B04();
    swift_getAtKeyPath();
    j__swift_release(v66);
    (*(v101 + 8))(v69, v102);
    v66 = v108;
  }

  if (!v66)
  {
    sub_23B6B4CB4();
  }

  v70 = sub_23B6B4D04();
  [v45 setTintColor_];

  if (!sub_23B6B1B10())
  {
    v72 = 0;
    if ((sub_23B6B4CD4() & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v71 = v93;
  sub_23B6B1C64(v93);
  v72 = sub_23B6B4C44();

  (*(v94 + 8))(v71, v95);
  [v72 pointSize];
  v74 = [objc_opt_self() systemFontOfSize_];
  [v74 pointSize];
  v76 = v75;

  [v45 setFontSize_];
  if (sub_23B6B4CD4())
  {
LABEL_34:
    [v45 setControlSize_];
    [v45 setCornerRadius_];
  }

LABEL_35:
  [v45 updateConstraints];
}

uint64_t sub_23B6B2BD8()
{
  v16 = sub_23B6B4B14();
  v1 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23B6B1638(&qword_27E1788E0, &qword_23B6B5250);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = sub_23B6B49B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ViewRepresentable(0);
  sub_23B6B4890(v0 + *(v11 + 44), v6, &qword_27E1788E0, &qword_23B6B5250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_23B6B4CF4();
    v12 = sub_23B6B4C34();
    sub_23B6B49A4();

    sub_23B6B4B04();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = (*(v8 + 88))(v10, v7);
  result = 1;
  if (v13 != *MEMORY[0x277CDF418] && v13 != *MEMORY[0x277CDF438])
  {
    if (v13 == *MEMORY[0x277CDF440])
    {
      return 0;
    }

    else
    {
      result = 2;
      if (v13 != *MEMORY[0x277CDF420] && v13 != *MEMORY[0x277CDF410])
      {
        (*(v8 + 8))(v10, v7);
        return 2;
      }
    }
  }

  return result;
}

double sub_23B6B2EEC()
{
  v1 = v0;
  v2 = sub_23B6B4A44();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v21 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v22 = type metadata accessor for ViewRepresentable(0);
  sub_23B6B4398(&qword_27E1788D8, &qword_23B6B5248, MEMORY[0x277CDDBB8], v11);
  v12 = sub_23B6B4A04();
  v14 = v13;
  v15 = *(v3 + 8);
  v15(v11, v2);
  if (v14)
  {
    sub_23B6B4398(&qword_27E1788D8, &qword_23B6B5248, MEMORY[0x277CDDBB8], v9);
    sub_23B6B4A34();
    sub_23B6B48F8(&qword_27E1788D0, MEMORY[0x277CDDBB8], MEMORY[0x277CDDBC0]);
    v16 = sub_23B6B4CE4();
    v15(v6, v2);
    if (v16 & 1) != 0 || (sub_23B6B4A24(), v17 = sub_23B6B4CE4(), v15(v6, v2), (v17))
    {
      v15(v9, v2);
    }

    else
    {
      sub_23B6B4A14();
      v20 = sub_23B6B4CE4();
      v15(v6, v2);
      v15(v9, v2);
      if (v20)
      {
        v18 = *(v22 + 52);
        return *(v1 + v18);
      }
    }

    v18 = *(v22 + 48);
    return *(v1 + v18);
  }

  return *&v12;
}

id sub_23B6B31BC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBFCF8]) init];
  sub_23B6B1638(&qword_27E1788F8, &qword_23B6B5268);
  sub_23B6B4C24();
  [v0 addTarget:v2 action:sel_action forControlEvents:64];

  return v0;
}

id sub_23B6B3254@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (v2 + *(a1 + 56));
  v5 = *v4;
  v6 = *(v4 + 8);
  v8 = v4[2];
  v7 = v4[3];
  v9 = type metadata accessor for Coordinator();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC23_CoreLocationUI_SwiftUIP33_8A043ABF03A1FE75D0192BCB51A8BCAD11Coordinator_config];
  *v11 = v5;
  v11[8] = v6;
  *(v11 + 2) = v8;
  *(v11 + 3) = v7;
  v13.receiver = v10;
  v13.super_class = v9;

  result = objc_msgSendSuper2(&v13, sel_init);
  *a2 = result;
  return result;
}

uint64_t sub_23B6B3334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B6B48F8(&qword_27E178900, type metadata accessor for ViewRepresentable, &unk_23B6B51A8);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23B6B33C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B6B48F8(&qword_27E178900, type metadata accessor for ViewRepresentable, &unk_23B6B51A8);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23B6B345C(uint64_t a1)
{
  sub_23B6B48F8(&qword_27E178900, type metadata accessor for ViewRepresentable, &unk_23B6B51A8);
  sub_23B6B4BF4();
  __break(1u);
}

id sub_23B6B353C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_23B6B35B0()
{
  result = qword_27E178808;
  if (!qword_27E178808)
  {
    sub_23B6B1944(&qword_27E178810, &qword_23B6B5058);
    sub_23B6B198C(&qword_27E1787E8, &qword_27E1787C8, &qword_23B6B4F68, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E178808);
  }

  return result;
}

uint64_t sub_23B6B366C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23B6B3700(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23B6B37D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23B6B381C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23B6B3880(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23B6B1638(&qword_27E178818, &qword_23B6B5098);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_11:
    v14 = *(v8 + 48);

    return v14(a1 + v9, a2, v7);
  }

  v10 = sub_23B6B1638(&qword_27E178820, &qword_23B6B50A0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_11;
  }

  v11 = sub_23B6B1638(&qword_27E178828, &qword_23B6B50A8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[9];
    goto LABEL_11;
  }

  v12 = sub_23B6B1638(&qword_27E178830, &qword_23B6B50B0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[10];
    goto LABEL_11;
  }

  v13 = sub_23B6B1638(&qword_27E178838, &qword_23B6B50B8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v7 = v13;
    v8 = *(v13 - 8);
    v9 = a3[11];
    goto LABEL_11;
  }

  v16 = *(a1 + a3[14] + 16);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_23B6B3AB4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_23B6B1638(&qword_27E178818, &qword_23B6B5098);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    v12 = sub_23B6B1638(&qword_27E178820, &qword_23B6B50A0);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[7];
    }

    else
    {
      v13 = sub_23B6B1638(&qword_27E178828, &qword_23B6B50A8);
      if (*(*(v13 - 8) + 84) == a3)
      {
        v9 = v13;
        v10 = *(v13 - 8);
        v11 = a4[9];
      }

      else
      {
        v14 = sub_23B6B1638(&qword_27E178830, &qword_23B6B50B0);
        if (*(*(v14 - 8) + 84) == a3)
        {
          v9 = v14;
          v10 = *(v14 - 8);
          v11 = a4[10];
        }

        else
        {
          result = sub_23B6B1638(&qword_27E178838, &qword_23B6B50B8);
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[14] + 16) = (a2 - 1);
            return result;
          }

          v9 = result;
          v10 = *(result - 8);
          v11 = a4[11];
        }
      }
    }
  }

  v16 = *(v10 + 56);

  return v16(a1 + v11, a2, a2, v9);
}

uint64_t type metadata accessor for ViewRepresentable(uint64_t a1)
{
  result = qword_27E178840;
  if (!qword_27E178840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B6B3D1C(uint64_t a1)
{
  sub_23B6B3EE4(319, &qword_27E178850, &qword_27E178858, &qword_23B6B50D8);
  if (v1 <= 0x3F)
  {
    sub_23B6B3EE4(319, &qword_27E178860, &qword_27E178868, &qword_23B6B50E0);
    if (v2 <= 0x3F)
    {
      sub_23B6B3F38(319, &qword_27E178870, MEMORY[0x277CDF8C8]);
      if (v3 <= 0x3F)
      {
        sub_23B6B3EE4(319, &qword_27E178878, &qword_27E178880, qword_23B6B50E8);
        if (v4 <= 0x3F)
        {
          sub_23B6B3F38(319, &qword_27E178888, MEMORY[0x277CE0A00]);
          if (v5 <= 0x3F)
          {
            sub_23B6B3F38(319, &qword_27E178890, MEMORY[0x277CDDBB8]);
            if (v6 <= 0x3F)
            {
              sub_23B6B3F38(319, &qword_27E178898, MEMORY[0x277CDF450]);
              if (v7 <= 0x3F)
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

void sub_23B6B3EE4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_23B6B1944(a3, a4);
    v5 = sub_23B6B49C4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_23B6B3F38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23B6B49C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_23B6B3F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E1788A0;
  if (!qword_27E1788A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1788A0);
  }

  return result;
}

uint64_t sub_23B6B4038@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x23EEA28B0]();
  *a1 = result;
  return result;
}

uint64_t sub_23B6B4064@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B6B4A54();
  *a1 = result;
  return result;
}

uint64_t sub_23B6B40E0(uint64_t a1)
{
  v2 = sub_23B6B1638(&qword_27E178868, &qword_23B6B50E0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23B6B4890(a1, &v5 - v3, &qword_27E178868, &qword_23B6B50E0);
  return sub_23B6B4AB4();
}

uint64_t sub_23B6B41D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B6B4AE4();
  *a1 = result;
  return result;
}

uint64_t sub_23B6B42C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_23B6B4398@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = sub_23B6B4B14();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23B6B1638(a1, a2);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  sub_23B6B4890(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_23B6B4CF4();
    v19 = sub_23B6B4C34();
    sub_23B6B49A4();

    sub_23B6B4B04();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_23B6B4598@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_23B6B4B14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23B6B1638(&qword_27E1788E8, &qword_23B6B5258);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_23B6B4890(v2, &v13 - v9, &qword_27E1788E8, &qword_23B6B5258);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_23B6B4828(v10, a1, &qword_27E178868, &qword_23B6B50E0);
  }

  sub_23B6B4CF4();
  v12 = sub_23B6B4C34();
  sub_23B6B49A4();

  sub_23B6B4B04();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_23B6B4778(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_23B6B1638(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_23B6B47D8()
{
  result = qword_27E1788B8;
  if (!qword_27E1788B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1788B8);
  }

  return result;
}

uint64_t sub_23B6B4828(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_23B6B1638(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_23B6B4890(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_23B6B1638(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23B6B48F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata accessor for CLLocationButtonLabel()
{
  if (!qword_27E178908)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27E178908);
    }
  }
}