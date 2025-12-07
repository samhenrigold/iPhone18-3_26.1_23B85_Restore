uint64_t sub_251AA2C40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = sub_251AA2DF8(a2, *a1);
  sub_251AA2528(v8, 0x73746E756F636361, 0xED00006E6F736A2ELL);

  if (!v4)
  {
    if ((*(a3 + *(type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0) + 36)) & 4) != 0)
    {
      sub_251AA8CD8(0, &qword_27F479238, MEMORY[0x277CC95F0], MEMORY[0x277D84560]);
      v10 = sub_251C70074();
      v11 = *(v10 - 8);
      v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_251C74800;
      sub_251C70064();
      v14 = sub_251C5ECD8(v13);
      swift_setDeallocating();
      (*(v11 + 8))(v13 + v12, v10);
      result = swift_deallocClassInstance();
      *a4 = v14;
    }

    else
    {
      *a4 = v7;
    }
  }

  return result;
}

unint64_t sub_251AA2DF8(uint64_t a1, uint64_t a2)
{
  v34 = sub_251C70074();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccountSummary(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v35 = sub_251AA6E30(v10, sub_251C3A1BC, sub_251AA6ED4);
  sub_251AA5010(&v35);
  v11 = v35;
  if ((v35 & 0x8000000000000000) == 0 && (v35 & 0x4000000000000000) == 0)
  {
    v12 = *(v35 + 16);
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_18:

    return MEMORY[0x277D84F90];
  }

  v29 = v35;
  v12 = sub_251C717F4();
  v11 = v29;
  if (!v12)
  {
    goto LABEL_18;
  }

LABEL_4:
  v13 = v11;
  v35 = MEMORY[0x277D84F90];
  sub_251C0B62C(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v15 = v35;
    v16 = v13;
    v31 = v13 & 0xC000000000000001;
    v32 = a2;
    v17 = (v3 + 8);
    v33 = v16;
    do
    {
      v18 = v12;
      if (v31)
      {
        v19 = MEMORY[0x25308D460](v14);
      }

      else
      {
        v19 = *(v16 + 8 * v14 + 32);
      }

      v20 = v19;
      v21 = [v19 identifier];
      sub_251C70054();

      if (*(a2 + 16) && (v22 = sub_251AC8AFC(v5), (v23 & 1) != 0))
      {
        v24 = *(*(a2 + 56) + 8 * v22);
        v25 = *v17;

        v25(v5, v34);
        v26 = v24;
      }

      else
      {
        (*v17)(v5, v34);
        v26 = MEMORY[0x277D84FA0];
      }

      sub_251AA3E60(v20, v26, v9);
      v35 = v15;
      v28 = *(v15 + 16);
      v27 = *(v15 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_251C0B62C((v27 > 1), v28 + 1, 1);
        v15 = v35;
      }

      ++v14;
      *(v15 + 16) = v28 + 1;
      sub_251AA8650(v9, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v28, type metadata accessor for AccountSummary);
      v12 = v18;
      a2 = v32;
      v16 = v33;
    }

    while (v18 != v14);

    return v15;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_251AA3158@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v34 = a5;
  v35 = a4;
  sub_251AA8A58(0);
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_251C70014();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_251C701E4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A823B4(a2, v36);
  (*(v15 + 16))(v17, a3, v14);
  (*(v11 + 16))(v13, v35, v10);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v36, v36[3]);
  MEMORY[0x28223BE20](v18);
  v20 = (&v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);

  v23 = sub_251AA7C78(v22, v20, v17, v13);
  v25 = v24;
  __swift_destroy_boxed_opaque_existential_1(v36);
  result = sub_251BFE2FC(v23, v25);
  v36[0] = result;
  if (v25 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_251AA8C10(0);
    sub_251AA10B4(0);
    v27 = MEMORY[0x277CBCD90];
    sub_251AA11AC(&qword_27F4791F0, sub_251AA8C10, MEMORY[0x277CBCD90]);
    sub_251AA11AC(&qword_2813E21C8, sub_251AA10B4, v27);
    sub_251C70BD4();

    sub_251AA11AC(&qword_27F479200, sub_251AA8A58, MEMORY[0x277CBCCE0]);
    v28 = v33;
    v29 = sub_251C70A94();
    (*(v32 + 8))(v9, v28);
    v30 = sub_251BFECFC(v29, v23, v25);

    *v34 = v30;
  }

  return result;
}

uint64_t sub_251AA3580@<X0>(uint64_t *a2@<X8>)
{
  v4 = *(sub_251C701E4() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_251C70014() - 8);
  v8 = v2 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_251AA3158(v2 + 16, v2 + v5, v8, a2);
}

uint64_t sub_251AA3668(uint64_t *a1)
{
  v3 = *(type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_251C70014() - 8);
  return sub_251AA214C(a1, v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));
}

uint64_t sub_251AA3748(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[2] = a5;
  v13[1] = a4;
  sub_251AA9DA4(0, &qword_27F479320, sub_251AA9E04, &type metadata for QuerySummary.QueryOutputDescription.CodingKeys);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251AA9E04();
  sub_251C71B14();
  v15 = 0;
  v11 = v13[3];
  sub_251C71934();
  if (!v11)
  {
    v14 = 1;
    sub_251C71934();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_251AA38D0()
{
  if (*v0)
  {
    return 6581861;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_251AA3900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v6 || (sub_251C719D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_251C719D4();

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

uint64_t sub_251AA39D8(uint64_t a1)
{
  v2 = sub_251AA9E04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251AA3A14(uint64_t a1)
{
  v2 = sub_251AA9E04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251AA3A70(void *a1)
{
  v3 = v1;
  sub_251AA9DA4(0, &qword_27F4792B8, sub_251AA990C, &type metadata for QuerySummary.CodingKeys);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251AA990C();
  sub_251C71B14();
  v17 = 0;
  sub_251C71934();
  if (!v2)
  {
    v16 = 1;
    sub_251C71934();
    v15 = 2;
    sub_251C71944();
    v14 = 3;
    sub_251C71934();
    v13 = 4;
    sub_251C71934();
    v11[1] = *(v3 + 72);
    v12 = 5;
    sub_251AA9960(0);
    sub_251AA9AD8(&qword_27F4792E0, sub_251AA9960, sub_251AA9AA4);
    sub_251C71964();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_251AA3CC8()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0x646C697562;
  v4 = 0x656369766564;
  if (v1 != 4)
  {
    v4 = 0x74757074756FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x736E6F6974706FLL;
  if (v1 != 1)
  {
    v5 = 0x64657370616C65;
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

uint64_t sub_251AA3D70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_251AAA2E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_251AA3DA4(uint64_t a1)
{
  v2 = sub_251AA990C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251AA3DE0(uint64_t a1)
{
  v2 = sub_251AA990C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_251AA3E60(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a2;
  v5 = sub_251C70014();
  v90 = *(v5 - 8);
  v91 = v5;
  MEMORY[0x28223BE20](v5);
  v86 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AA8CD8(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v84 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v85 = &v83 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v83 - v13;
  MEMORY[0x28223BE20](v12);
  v89 = &v83 - v15;
  v16 = sub_251C70244();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 identifier];
  sub_251C70054();

  v21 = [a1 provenance];
  v22 = [v21 title];

  v23 = sub_251C70F14();
  v25 = v24;

  v26 = type metadata accessor for AccountSummary(0);
  v27 = (a3 + v26[5]);
  *v27 = v23;
  v27[1] = v25;
  v88 = a1;
  v28 = [a1 clinicalSharingStatus];
  v29 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  sub_251C70234();
  v30 = sub_251C70214();
  (*(v17 + 8))(v19, v16);
  v92 = v29;
  [v29 setTimeZone_];

  [v28 featureStatus];
  v31 = HKClinicalSharingFeatureStatusToString();
  v32 = sub_251C70F14();
  v34 = v33;

  v35 = (a3 + v26[6]);
  *v35 = v32;
  v35[1] = v34;
  [v28 userStatus];
  v36 = HKClinicalSharingUserStatusToString();
  v37 = sub_251C70F14();
  v39 = v38;

  v40 = (a3 + v26[7]);
  *v40 = v37;
  v40[1] = v39;
  [v28 multiDeviceStatus];
  v41 = HKClinicalSharingMultiDeviceStatusToString();
  v42 = sub_251C70F14();
  v44 = v43;

  v45 = (a3 + v26[8]);
  *v45 = v42;
  v45[1] = v44;
  v94 = v28;
  v46 = [v28 primaryDeviceName];
  if (v46)
  {
    v47 = v46;
    v48 = sub_251C70F14();
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  v51 = (a3 + v26[9]);
  *v51 = v48;
  v51[1] = v50;
  v52 = [v94 firstSharedDate];
  v54 = v89;
  v53 = v90;
  v93 = a3;
  if (v52)
  {
    v55 = v52;
    sub_251C6FFE4();

    v56 = 0;
  }

  else
  {
    v56 = 1;
  }

  v57 = v91;
  v58 = *(v53 + 56);
  v58(v54, v56, 1, v91);
  sub_251AA926C(v54, v14, &qword_2813E7500, MEMORY[0x277CC9578]);
  v59 = *(v53 + 48);
  if (v59(v14, 1, v57) == 1)
  {
    sub_251AA92EC(v54, &qword_2813E7500, MEMORY[0x277CC9578]);
    v60 = 0;
    v61 = 0;
  }

  else
  {
    v62 = v86;
    (*(v53 + 32))(v86, v14, v57);
    v63 = sub_251C6FF94();
    v64 = [v92 stringFromDate_];

    v60 = sub_251C70F14();
    v61 = v65;

    v57 = v91;
    (*(v53 + 8))(v62, v91);
    sub_251AA92EC(v89, &qword_2813E7500, MEMORY[0x277CC9578]);
  }

  v66 = v85;
  v67 = v94;
  v68 = (v93 + v26[10]);
  *v68 = v60;
  v68[1] = v61;
  v69 = [v67 lastSharedDate];
  if (v69)
  {
    v70 = v69;
    sub_251C6FFE4();

    v71 = 0;
  }

  else
  {
    v71 = 1;
  }

  v58(v66, v71, 1, v57);
  v72 = v84;
  sub_251AA926C(v66, v84, &qword_2813E7500, MEMORY[0x277CC9578]);
  if (v59(v72, 1, v57) == 1)
  {
    sub_251AA92EC(v66, &qword_2813E7500, MEMORY[0x277CC9578]);
    v73 = 0;
    v74 = 0;
  }

  else
  {
    v75 = v90;
    v76 = v86;
    (*(v90 + 32))(v86, v72, v57);
    v77 = sub_251C6FF94();
    v78 = [v92 stringFromDate_];

    v73 = sub_251C70F14();
    v74 = v79;

    (*(v75 + 8))(v76, v57);
    sub_251AA92EC(v66, &qword_2813E7500, MEMORY[0x277CC9578]);
  }

  v80 = v93;
  v81 = (v93 + v26[11]);
  *v81 = v73;
  v81[1] = v74;
  v82 = sub_251AA00E0(v87);

  v95 = v82;

  sub_251AA508C(&v95);

  *(v80 + v26[12]) = v95;
}

uint64_t sub_251AA4620(id *a1, void **a2)
{
  v4 = sub_251C70074();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *a2;
  v12 = [*a1 identifier];
  sub_251C70054();

  v13 = sub_251C70024();
  v15 = v14;
  v16 = *(v5 + 8);
  v16(v10, v4);
  v17 = [v11 identifier];
  sub_251C70054();

  v18 = sub_251C70024();
  v20 = v19;
  v16(v8, v4);
  if (v13 == v18 && v15 == v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_251C719D4();
  }

  return v22 & 1;
}

unint64_t sub_251AA47EC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 1684632949;
    v5 = 0x5365727574616566;
    if (a1 != 2)
    {
      v5 = 0x7461745372657375;
    }

    if (a1)
    {
      v4 = 0x656C746974;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6168537473726966;
    v2 = 0x726168537473616CLL;
    if (a1 != 7)
    {
      v2 = 0x7A69726F68747561;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    if (a1 <= 5u)
    {
      return 0xD000000000000011;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_251AA4930(void *a1)
{
  v3 = v1;
  sub_251AA9DA4(0, &qword_27F479308, sub_251AA9CBC, &type metadata for AccountSummary.CodingKeys);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251AA9CBC();
  sub_251C71B14();
  LOBYTE(v13) = 0;
  sub_251C70074();
  sub_251AA11AC(&qword_2813E74E8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_251C71964();
  if (!v2)
  {
    v10 = type metadata accessor for AccountSummary(0);
    LOBYTE(v13) = 1;
    sub_251C71934();
    LOBYTE(v13) = 2;
    sub_251C71934();
    LOBYTE(v13) = 3;
    sub_251C71934();
    LOBYTE(v13) = 4;
    sub_251C71934();
    LOBYTE(v13) = 5;
    sub_251C718F4();
    LOBYTE(v13) = 6;
    sub_251C718F4();
    LOBYTE(v13) = 7;
    sub_251C718F4();
    v13 = *(v3 + *(v10 + 48));
    v12[15] = 8;
    sub_251AA9A54(0, &qword_2813E1E48, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_251AA9D10();
    sub_251C71964();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_251AA4CA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_251AAA4D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_251AA4CDC(uint64_t a1)
{
  v2 = sub_251AA9CBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251AA4D18(uint64_t a1)
{
  v2 = sub_251AA9CBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251AA4D6C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v37 = a3;
  v38[1] = *MEMORY[0x277D85DE8];
  v8 = sub_251C6FE64();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  result = a2(a1);
  if (!v4)
  {
    v17 = result;
    v33 = v8;
    v34 = v9;
    v31 = a1;
    v32 = a4;
    v35 = v16;
    v36 = 0;
    v18 = v37;
    sub_251C6FDE4();
    sub_251C6FE04();
    v19 = *(v18 + *(type metadata accessor for PublisherOutputWriter(0) + 20));
    v20 = sub_251C6FDD4();
    v38[0] = 0;
    LODWORD(v19) = [v19 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:v38];

    if (v19)
    {
      v21 = v38[0];
      v23 = v35;
      v22 = v36;
      sub_251C6FF04();
      v36 = v22;
      v25 = v33;
      v24 = v34;
      if (!v22)
      {
        v26 = *(v34 + 8);
        v26(v12, v33);
        v26(v14, v25);
        sub_251AA8828(v31, v32, type metadata accessor for ClinicalSharingQueryOutput);
LABEL_7:

        return sub_251A83028(v17, v23);
      }
    }

    else
    {
      v27 = v38[0];
      v28 = sub_251C6FD84();

      v36 = v28;
      swift_willThrow();
      v24 = v34;
      v23 = v35;
      v25 = v33;
    }

    v29 = *(v24 + 8);
    v29(v12, v25);
    v29(v14, v25);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_251AA5010(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_251BFC484(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_251AA50F8(v6);
  return sub_251C71744();
}

uint64_t sub_251AA508C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251BFADF0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_251AA520C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_251AA50F8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_251C71994();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_251A8223C(0, &qword_2813E1D98, 0x277D123D8);
        v6 = sub_251C71184();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_251AA5678(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_251AA5304(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_251AA520C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_251C71994();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_251C71184();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_251AA6034(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_251AA55A8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_251AA5304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v42 = sub_251C70074();
  v8 = MEMORY[0x28223BE20](v42);
  v41 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v40 = &v34 - v12;
  v35 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v39 = (v11 + 8);
    v43 = v13;
    v14 = v13 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_6:
    v37 = v14;
    v38 = a3;
    v16 = *(v43 + 8 * a3);
    v36 = v15;
    while (1)
    {
      v17 = *v14;
      v18 = v16;
      v19 = v17;
      v45 = v18;
      v20 = [v18 identifier];
      v21 = v40;
      sub_251C70054();

      v22 = sub_251C70024();
      v44 = v23;
      v24 = *v39;
      v25 = v42;
      (*v39)(v21, v42);
      v46 = v19;
      v26 = [v19 identifier];
      v27 = v41;
      sub_251C70054();

      v28 = sub_251C70024();
      v30 = v29;
      v24(v27, v25);
      if (v22 == v28 && v44 == v30)
      {

LABEL_5:
        a3 = v38 + 1;
        v14 = v37 + 8;
        v15 = v36 - 1;
        if (v38 + 1 == v35)
        {
          return result;
        }

        goto LABEL_6;
      }

      v31 = sub_251C719D4();

      if ((v31 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v32 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v32;
      v14 -= 8;
      if (__CFADD__(v15++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_251AA55A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_251C719D4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_251AA5678(void ***a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = v5;
  v124 = a1;
  v136 = sub_251C70074();
  v10 = MEMORY[0x28223BE20](v136);
  v133 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v132 = &v119 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v128 = &v119 - v15;
  MEMORY[0x28223BE20](v14);
  v127 = &v119 - v17;
  v18 = a3[1];
  v125 = a3;
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_100:
    v6 = *v124;
    if (!*v124)
    {
      goto LABEL_141;
    }

    v4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v113 = v4;
LABEL_103:
      v142 = v113;
      v4 = *(v113 + 2);
      if (v4 >= 2)
      {
        do
        {
          v114 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          a3 = (v4 - 1);
          v115 = *&v113[16 * v4];
          v116 = v113;
          v117 = *&v113[16 * v4 + 24];
          sub_251AA6610((v114 + 8 * v115), (v114 + 8 * *&v113[16 * v4 + 16]), (v114 + 8 * v117), v6);
          if (v7)
          {
            break;
          }

          if (v117 < v115)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v116 = sub_251BFABE4(v116);
          }

          if (v4 - 2 >= *(v116 + 2))
          {
            goto LABEL_129;
          }

          v118 = &v116[16 * v4];
          *v118 = v115;
          *(v118 + 1) = v117;
          v142 = v116;
          sub_251BFAB58(v4 - 1);
          v113 = v142;
          v4 = *(v142 + 2);
          a3 = v125;
        }

        while (v4 > 1);
      }

LABEL_111:

      return;
    }

LABEL_135:
    v113 = sub_251BFABE4(v4);
    goto LABEL_103;
  }

  v19 = 0;
  v135 = (v16 + 8);
  v20 = MEMORY[0x277D84F90];
  v123 = a4;
  while (2)
  {
    v21 = v19++;
    if (v19 >= v18)
    {
      goto LABEL_27;
    }

    v122 = v20;
    v6 = *a3;
    v22 = *(*a3 + 8 * v19);
    v140 = *(*a3 + 8 * v21);
    v23 = v140;
    v141 = v22;
    v24 = v22;
    v4 = v23;
    LODWORD(v137) = sub_251AA4620(&v141, &v140);
    if (v7)
    {

      return;
    }

    v19 = v21 + 2;
    if (v21 + 2 >= v18)
    {
      v20 = v122;
      if (v137)
      {
        goto LABEL_19;
      }

      goto LABEL_27;
    }

    v121 = 0;
    v120 = v21;
    v25 = &v6[v21 + 2];
    v134 = v18;
    while (1)
    {
      v131 = v19;
      v27 = *(v25 - 1);
      v28 = *v25;
      v29 = v27;
      v138 = v28;
      v30 = [v28 identifier];
      v31 = v127;
      sub_251C70054();

      v4 = sub_251C70024();
      v6 = v32;
      v33 = v136;
      v34 = *v135;
      (*v135)(v31, v136);
      v139 = v29;
      v35 = [v29 identifier];
      v36 = v128;
      sub_251C70054();

      v37 = sub_251C70024();
      v39 = v38;
      v34(v36, v33);
      if (v4 == v37 && v6 == v39)
      {

        v26 = v134;
        if (v137)
        {
          a3 = v125;
          v20 = v122;
          a4 = v123;
          v7 = v121;
          v19 = v131;
          v21 = v120;
          goto LABEL_19;
        }

        goto LABEL_9;
      }

      v4 = sub_251C719D4();

      v26 = v134;
      if ((v137 ^ v4))
      {
        break;
      }

LABEL_9:
      v19 = v131 + 1;
      ++v25;
      if (v26 == v131 + 1)
      {
        v19 = v26;
        a3 = v125;
        v20 = v122;
        a4 = v123;
        v7 = v121;
        goto LABEL_18;
      }
    }

    a3 = v125;
    v20 = v122;
    a4 = v123;
    v7 = v121;
    v19 = v131;
LABEL_18:
    v21 = v120;
    if (v137)
    {
LABEL_19:
      if (v19 < v21)
      {
        goto LABEL_132;
      }

      if (v21 < v19)
      {
        v40 = 8 * v19 - 8;
        v41 = 8 * v21;
        v42 = v19;
        v43 = v21;
        do
        {
          if (v43 != --v42)
          {
            v45 = *a3;
            if (!*a3)
            {
              goto LABEL_138;
            }

            v44 = *(v45 + v41);
            *(v45 + v41) = *(v45 + v40);
            *(v45 + v40) = v44;
          }

          ++v43;
          v40 -= 8;
          v41 += 8;
        }

        while (v43 < v42);
      }
    }

LABEL_27:
    v46 = a3[1];
    if (v19 >= v46)
    {
      goto LABEL_47;
    }

    if (__OFSUB__(v19, v21))
    {
      goto LABEL_131;
    }

    if (v19 - v21 >= a4)
    {
LABEL_47:
      if (v19 < v21)
      {
        goto LABEL_130;
      }

      v67 = v20;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v20 = v67;
      }

      else
      {
        v20 = sub_251C38DF0(0, *(v67 + 2) + 1, 1, v67);
      }

      v4 = *(v20 + 2);
      v68 = *(v20 + 3);
      v69 = v4 + 1;
      if (v4 >= v68 >> 1)
      {
        v20 = sub_251C38DF0((v68 > 1), v4 + 1, 1, v20);
      }

      *(v20 + 2) = v69;
      v70 = &v20[16 * v4];
      *(v70 + 4) = v21;
      *(v70 + 5) = v19;
      v6 = *v124;
      if (!*v124)
      {
        goto LABEL_140;
      }

      if (!v4)
      {
LABEL_3:
        v18 = a3[1];
        a4 = v123;
        if (v19 >= v18)
        {
          goto LABEL_100;
        }

        continue;
      }

      while (1)
      {
        v71 = v69 - 1;
        if (v69 >= 4)
        {
          break;
        }

        if (v69 == 3)
        {
          v72 = *(v20 + 4);
          v73 = *(v20 + 5);
          v82 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          v75 = v82;
LABEL_67:
          if (v75)
          {
            goto LABEL_119;
          }

          v88 = &v20[16 * v69];
          v90 = *v88;
          v89 = *(v88 + 1);
          v91 = __OFSUB__(v89, v90);
          v92 = v89 - v90;
          v93 = v91;
          if (v91)
          {
            goto LABEL_122;
          }

          v94 = &v20[16 * v71 + 32];
          v96 = *v94;
          v95 = *(v94 + 1);
          v82 = __OFSUB__(v95, v96);
          v97 = v95 - v96;
          if (v82)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v92, v97))
          {
            goto LABEL_126;
          }

          if (v92 + v97 >= v74)
          {
            if (v74 < v97)
            {
              v71 = v69 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        v98 = &v20[16 * v69];
        v100 = *v98;
        v99 = *(v98 + 1);
        v82 = __OFSUB__(v99, v100);
        v92 = v99 - v100;
        v93 = v82;
LABEL_81:
        if (v93)
        {
          goto LABEL_121;
        }

        v101 = &v20[16 * v71];
        v103 = *(v101 + 4);
        v102 = *(v101 + 5);
        v82 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v82)
        {
          goto LABEL_124;
        }

        if (v104 < v92)
        {
          goto LABEL_3;
        }

LABEL_88:
        v4 = v71 - 1;
        if (v71 - 1 >= v69)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*a3)
        {
          goto LABEL_137;
        }

        v109 = v20;
        v110 = *&v20[16 * v4 + 32];
        v111 = *&v20[16 * v71 + 40];
        sub_251AA6610((*a3 + 8 * v110), (*a3 + 8 * *&v20[16 * v71 + 32]), (*a3 + 8 * v111), v6);
        if (v7)
        {
          goto LABEL_111;
        }

        if (v111 < v110)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = sub_251BFABE4(v109);
        }

        if (v4 >= *(v109 + 2))
        {
          goto LABEL_116;
        }

        v112 = &v109[16 * v4];
        *(v112 + 4) = v110;
        *(v112 + 5) = v111;
        v142 = v109;
        sub_251BFAB58(v71);
        v20 = v142;
        v69 = *(v142 + 2);
        if (v69 <= 1)
        {
          goto LABEL_3;
        }
      }

      v76 = &v20[16 * v69 + 32];
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_117;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_118;
      }

      v83 = &v20[16 * v69];
      v85 = *v83;
      v84 = *(v83 + 1);
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_120;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_123;
      }

      if (v87 >= v79)
      {
        v105 = &v20[16 * v71 + 32];
        v107 = *v105;
        v106 = *(v105 + 1);
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_127;
        }

        if (v74 < v108)
        {
          v71 = v69 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_67;
    }

    break;
  }

  v47 = v21 + a4;
  if (__OFADD__(v21, a4))
  {
    goto LABEL_133;
  }

  if (v47 >= v46)
  {
    v47 = a3[1];
  }

  if (v47 < v21)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v19 == v47)
  {
    goto LABEL_47;
  }

  v121 = v7;
  v122 = v20;
  v134 = *a3;
  v48 = v134 + 8 * v19 - 8;
  v120 = v21;
  v49 = v21 - v19;
  v126 = v47;
LABEL_38:
  v130 = v48;
  v131 = v19;
  v50 = *(v134 + 8 * v19);
  v129 = v49;
  v51 = v49;
  while (1)
  {
    v52 = *v48;
    v53 = v50;
    v54 = v52;
    v138 = v53;
    v55 = [v53 identifier];
    v56 = v132;
    sub_251C70054();

    v137 = sub_251C70024();
    v58 = v57;
    v6 = v136;
    v59 = *v135;
    (*v135)(v56, v136);
    v139 = v54;
    v60 = [v54 identifier];
    v61 = v133;
    sub_251C70054();

    v62 = sub_251C70024();
    v4 = v63;
    v59(v61, v6);
    if (v137 == v62 && v58 == v4)
    {

LABEL_37:
      v19 = v131 + 1;
      v48 = v130 + 8;
      v49 = v129 - 1;
      if (v131 + 1 == v126)
      {
        v19 = v126;
        v7 = v121;
        v20 = v122;
        a3 = v125;
        v21 = v120;
        goto LABEL_47;
      }

      goto LABEL_38;
    }

    v64 = sub_251C719D4();

    if ((v64 & 1) == 0)
    {
      goto LABEL_37;
    }

    if (!v134)
    {
      break;
    }

    v65 = *v48;
    v50 = *(v48 + 8);
    *v48 = v50;
    *(v48 + 8) = v65;
    v48 -= 8;
    if (__CFADD__(v51++, 1))
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

uint64_t sub_251AA6034(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_251BFABE4(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_251AA6BDC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_251C719D4();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_251C719D4();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_251C38DF0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_251C38DF0((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_251AA6BDC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_251BFABE4(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_251BFAB58(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_251C719D4(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_251AA6610(void **a1, void **a2, void **a3, void **a4)
{
  v75 = sub_251C70074();
  v8 = *(v75 - 8);
  v9 = MEMORY[0x28223BE20](v75);
  v69 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v68 = &v65 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v67 = (&v65 - v14);
  MEMORY[0x28223BE20](v13);
  v66 = &v65 - v15;
  v16 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v16 = a2 - a1;
  }

  v17 = v16 >> 3;
  v70 = a3;
  v18 = a3 - a2;
  v19 = v18 / 8;
  if (v16 >> 3 >= v18 / 8)
  {
    if (a4 != a2 || &a2[v19] <= a4)
    {
      memmove(a4, a2, 8 * v19);
    }

    v77 = &a4[v19];
    if (v18 >= 8 && a2 > a1)
    {
      v66 = (v8 + 8);
      v40 = v70;
      v76 = a4;
      v73 = a1;
      v41 = (v8 + 8);
LABEL_27:
      v74 = a2;
      v42 = a2 - 1;
      v43 = v40;
      v44 = v77;
      v67 = a2 - 1;
      do
      {
        v45 = *(v44 - 8);
        v70 = (v44 - 8);
        v46 = *v42;
        v47 = v45;
        v48 = v46;
        v71 = v47;
        v49 = [v47 identifier];
        v50 = v68;
        sub_251C70054();

        v51 = sub_251C70024();
        v53 = v52;
        v54 = *v41;
        v55 = v50;
        v56 = v75;
        (*v41)(v55, v75);
        v72 = v48;
        v57 = [v48 identifier];
        v58 = v69;
        sub_251C70054();

        v59 = sub_251C70024();
        v61 = v60;
        v54(v58, v56);
        if (v51 == v59 && v53 == v61)
        {

          v40 = v43 - 1;
        }

        else
        {
          v62 = sub_251C719D4();

          v40 = v43 - 1;
          if (v62)
          {
            a4 = v76;
            v63 = v67;
            if (v43 != v74)
            {
              *v40 = *v67;
            }

            if (v77 <= a4 || (a2 = v63, v63 <= v73))
            {
              a2 = v63;
              goto LABEL_41;
            }

            goto LABEL_27;
          }
        }

        a4 = v76;
        v42 = v67;
        v44 = v70;
        if (v77 != v43)
        {
          *v40 = *v70;
        }

        v77 = v44;
        v43 = v40;
      }

      while (v44 > a4);
      v77 = v44;
      a2 = v74;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v17] <= a4)
    {
      memmove(a4, a1, 8 * v17);
    }

    v77 = &a4[v17];
    if (a2 - a1 >= 8 && a2 < v70)
    {
      v69 = (v8 + 8);
      while (1)
      {
        v73 = a1;
        v74 = a2;
        v20 = *a2;
        v76 = a4;
        v21 = *a4;
        v22 = v20;
        v23 = v21;
        v71 = v22;
        v24 = [v22 identifier];
        v25 = v66;
        sub_251C70054();

        v26 = sub_251C70024();
        v28 = v27;
        v29 = *v69;
        v30 = v75;
        (*v69)(v25, v75);
        v72 = v23;
        v31 = [v23 identifier];
        v32 = v67;
        sub_251C70054();

        v33 = sub_251C70024();
        v35 = v34;
        v29(v32, v30);
        if (v26 == v33 && v28 == v35)
        {
          break;
        }

        v36 = sub_251C719D4();

        if ((v36 & 1) == 0)
        {
          goto LABEL_16;
        }

        v37 = v73;
        v38 = v74;
        a2 = v74 + 1;
        v39 = v70;
        a4 = v76;
        if (v73 != v74)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v37 + 1;
        if (a4 >= v77 || a2 >= v39)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      v38 = v76;
      a4 = v76 + 1;
      v37 = v73;
      a2 = v74;
      v39 = v70;
      if (v73 == v76)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v37 = *v38;
      goto LABEL_18;
    }

LABEL_20:
    a2 = a1;
  }

LABEL_41:
  if (a2 != a4 || a2 >= (a4 + ((v77 - a4 + (v77 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v77 - a4));
  }

  return 1;
}

uint64_t sub_251AA6BDC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_251C719D4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_251C719D4() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

unint64_t sub_251AA6E30(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_251C717F4();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_251AA6ED4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_251C717F4();
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
      result = sub_251C717F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_251AA8E98(0, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
          sub_251AA9368();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_251AA752C(v13, i, a3);
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
        sub_251A8223C(0, &qword_2813E1D98, 0x277D123D8);
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

uint64_t sub_251AA7068(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_251C717F4();
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
      result = sub_251C717F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_251AA8E98(0, &qword_27F478D68, &qword_27F478D70, 0x277CCD8A8);
          sub_251AA9C4C();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_251AA75B4(v13, i, a3);
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
        sub_251A8223C(0, &qword_27F478D70, 0x277CCD8A8);
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

uint64_t sub_251AA71FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_251C717F4();
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
      result = sub_251C717F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_251AA8CD8(0, &qword_2813E1EA0, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277D83940]);
          sub_251AA93D8();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_251AA7634(v13, i, a3);
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
        type metadata accessor for ClinicalSharingSyncContext(0);
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

uint64_t sub_251AA7398(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_251C717F4();
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
      result = sub_251C717F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_251AA8E98(0, &qword_27F479270, &qword_27F479268, 0x277D12488);
          sub_251AA9460();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_251AA75B4(v13, i, a3);
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
        sub_251A8223C(0, &qword_27F479268, 0x277D12488);
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

void (*sub_251AA752C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25308D460](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_251AA75AC;
  }

  __break(1u);
  return result;
}

void (*sub_251AA75B4(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25308D460](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_251AAA810;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_251AA7634(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25308D460](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_251AA76B4;
  }

  __break(1u);
  return result;
}

uint64_t sub_251AA76BC(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a2;
  sub_251AA8CD8(0, &qword_27F479208, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v45[3] = v45 - v8;
  v9 = sub_251C70244();
  MEMORY[0x28223BE20](v9 - 8);
  v45[2] = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_251C70094();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v45 - v16;
  v18 = sub_251C701E4();
  v46 = *(v18 - 8);
  v47 = v18;
  MEMORY[0x28223BE20](v18);
  v49 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51[3] = &type metadata for ClinicalSharingQueryDefaultDataProvider;
  v51[4] = &off_2863FD718;
  v20 = swift_allocObject();
  v51[0] = v20;
  v21 = a1[1];
  v20[1] = *a1;
  v20[2] = v21;
  v22 = a1[3];
  v20[3] = a1[2];
  v20[4] = v22;
  type metadata accessor for ClinicalSharingQueryContext(0);
  v23 = swift_allocObject();
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v51, &type metadata for ClinicalSharingQueryDefaultDataProvider);
  MEMORY[0x28223BE20](v24);
  v26 = (v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v50[3] = &type metadata for ClinicalSharingQueryDefaultDataProvider;
  v50[4] = &off_2863FD718;
  v28 = swift_allocObject();
  v50[0] = v28;
  v29 = v26[1];
  v28[1] = *v26;
  v28[2] = v29;
  v30 = v26[3];
  v28[3] = v26[2];
  v28[4] = v30;
  v31 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter;
  *(v23 + v31) = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  *(v23 + 56) = v48;
  sub_251A823B4(v50, v23 + 16);
  v32 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_date;
  v33 = sub_251C70014();
  v34 = *(v33 - 8);
  v35 = *(v34 + 16);
  v48 = a4;
  v35(v23 + v32, a4, v33);
  (*(v12 + 104))(v17, *MEMORY[0x277CC9830], v11);
  v36 = a3;
  sub_251C700B4();
  sub_251AA11AC(&qword_27F479210, MEMORY[0x277CC9840], MEMORY[0x277CC9850]);
  v37 = v17;
  LOBYTE(v32) = sub_251C70ED4();
  v40 = *(v12 + 8);
  v38 = v12 + 8;
  v39 = v40;
  v40(v15, v11);
  if (v32)
  {
    (*(v34 + 8))(v48, v33);
    v39(v37, v11);
    __swift_destroy_boxed_opaque_existential_1(v50);
    v41 = v47;
    v42 = *(v46 + 32);
    v42(v49, v36, v47);
  }

  else
  {
    v45[1] = v38;
    sub_251C700A4();
    sub_251C701A4();
    sub_251C701B4();
    sub_251C70164();
    sub_251C70174();
    (*(v34 + 8))(v48, v33);
    v43 = v46;
    v41 = v47;
    (*(v46 + 8))(v36, v47);
    v39(v37, v11);
    __swift_destroy_boxed_opaque_existential_1(v50);
    v42 = *(v43 + 32);
  }

  v42((v23 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar), v49, v41);
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v23;
}

uint64_t sub_251AA7C78(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v7 = sub_251C70014();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_251C701E4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[3] = &type metadata for ClinicalSharingQueryDefaultDataProvider;
  v27[4] = &off_2863FD718;
  v15 = swift_allocObject();
  v27[0] = v15;
  v16 = a2[1];
  v15[1] = *a2;
  v15[2] = v16;
  v17 = a2[3];
  v15[3] = a2[2];
  v15[4] = v17;
  sub_251A823B4(v27, v26);
  (*(v12 + 16))(v14, a3, v11);
  (*(v8 + 16))(v10, a4, v7);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v26, v26[3]);
  MEMORY[0x28223BE20](v18);
  v20 = (&v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = sub_251AA76BC(v20, v25, v14, v10);
  (*(v8 + 8))(a4, v7);
  (*(v12 + 8))(a3, v11);
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v22;
}

id sub_251AA7F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v80 = a2;
  Output = type metadata accessor for QueryOutput(0);
  v8 = *(Output - 8);
  v9 = MEMORY[0x28223BE20](Output);
  v83 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v84 = &v69 - v11;
  v12 = sub_251C70244();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  sub_251C70234();
  v17 = sub_251C70214();
  (*(v13 + 8))(v15, v12);
  [v16 setTimeZone_];

  v79 = a1;
  v18 = sub_251C6FF94();
  v19 = [v16 stringFromDate_];

  v20 = sub_251C70F14();
  v77 = v21;
  v78 = v20;

  v22 = sub_251B24874();
  v76 = v23;
  sub_251AA85E8(0);
  swift_arrayDestroy();
  result = [objc_opt_self() sharedBehavior];
  if (!result)
  {
    __break(1u);
    goto LABEL_23;
  }

  v25 = result;
  result = [result currentOSBuild];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = result;
  v75 = v22;
  v27 = sub_251C70F14();
  v73 = v28;
  v74 = v27;

  result = [v25 currentInternalDeviceModel];
  if (!result)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v29 = result;
  v72 = sub_251C70F14();
  v71 = v30;

  v31 = sub_251C4BAEC(MEMORY[0x277D84F90]);
  v32 = *(v80 + 16);
  if (v32)
  {
    v69 = v25;
    v70 = a3;
    v33 = v80 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v81 = *(v8 + 72);
    v82 = Output;
    v34 = v84;
    do
    {
      v89 = v32;
      sub_251AA8828(v33, v34, type metadata accessor for QueryOutput);
      v35 = *(v34 + 8);
      v90 = *v34;
      v91 = v35;
      v36 = sub_251C70F74();
      v38 = v36;
      v39 = v37;
      if (*(v31 + 16) && (v40 = sub_251AC8C58(v36, v37), (v41 & 1) != 0))
      {
        v42 = *(*(v31 + 56) + 8 * v40);
      }

      else
      {
        v42 = sub_251C4BB0C(MEMORY[0x277D84F90]);
      }

      v43 = v34 + *(Output + 20);
      v44 = *(v43 + 32);
      LOBYTE(v43) = *(v43 + 40);
      v90 = v44;
      v91 = v43;
      v45 = sub_251C70F74();
      v47 = v46;
      v48 = *(v42 + 16);
      v87 = v38;
      v88 = v39;
      v86 = v45;
      if (v48 && (v49 = sub_251AC8C58(v45, v46), (v50 & 1) != 0))
      {
        v51 = *(*(v42 + 56) + 8 * v49);
      }

      else
      {
        v51 = MEMORY[0x277D84F90];
      }

      v52 = v34;
      v53 = v83;
      sub_251AA8828(v52, v83, type metadata accessor for QueryOutput);
      v54 = (v53 + *(Output + 20));
      v55 = *v54;
      v56 = v54[1];
      v57 = v54[3];
      v85 = v54[2];

      sub_251AA87A8(v54, type metadata accessor for PBDateRange);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_251C38DDC(0, *(v51 + 2) + 1, 1, v51);
      }

      v59 = *(v51 + 2);
      v58 = *(v51 + 3);
      if (v59 >= v58 >> 1)
      {
        v51 = sub_251C38DDC((v58 > 1), v59 + 1, 1, v51);
      }

      *(v51 + 2) = v59 + 1;
      v60 = &v51[32 * v59];
      *(v60 + 4) = v55;
      *(v60 + 5) = v56;
      *(v60 + 6) = v85;
      *(v60 + 7) = v57;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90 = v42;
      sub_251ACCE14(v51, v86, v47, isUniquelyReferenced_nonNull_native);

      v62 = v90;

      v63 = swift_isUniquelyReferenced_nonNull_native();
      v90 = v31;
      sub_251ACCDE8(v62, v87, v88, v63);

      v31 = v90;
      v34 = v84;
      sub_251AA87A8(v84, type metadata accessor for QueryOutput);

      Output = v82;
      v33 += v81;
      v32 = v89 - 1;
    }

    while (v89 != 1);

    a3 = v70;
    v25 = v69;
  }

  else
  {
  }

  v64 = sub_251C70014();
  result = (*(*(v64 - 8) + 8))(v79, v64);
  v65 = v77;
  *a3 = v78;
  *(a3 + 8) = v65;
  v66 = v76;
  *(a3 + 16) = v75;
  *(a3 + 24) = v66;
  *(a3 + 32) = a4;
  v67 = v73;
  *(a3 + 40) = v74;
  *(a3 + 48) = v67;
  v68 = v71;
  *(a3 + 56) = v72;
  *(a3 + 64) = v68;
  *(a3 + 72) = v31;
  return result;
}

unint64_t sub_251AA8594()
{
  result = qword_27F4791B0;
  if (!qword_27F4791B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4791B0);
  }

  return result;
}

void sub_251AA85E8(uint64_t a1)
{
  if (!qword_27F4791B8)
  {
    type metadata accessor for HKClinicalSharingQueryDiagnosticOptions(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4791B8);
    }
  }
}

uint64_t sub_251AA8650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_251AA86EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_251AA10B4(255);
    v9 = v8;
    v10 = a3(255);
    v11 = sub_251AA11AC(&qword_2813E21C8, sub_251AA10B4, MEMORY[0x277CBCD90]);
    v12 = a4(a1, v9, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

uint64_t sub_251AA87A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251AA8828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_8Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_11Tm()
{
  v1 = (type metadata accessor for PublisherOutputWriter(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_251C6FE64();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_251AA8A58(uint64_t a1)
{
  if (!qword_27F4791D0)
  {
    sub_251AA10B4(255);
    sub_251AA8B44(255);
    sub_251AA11AC(&qword_2813E21C8, sub_251AA10B4, MEMORY[0x277CBCD90]);
    sub_251AA11AC(&qword_27F4791F8, sub_251AA8B44, MEMORY[0x277CBCBA0]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4791D0);
    }
  }
}

void sub_251AA8B44(uint64_t a1)
{
  if (!qword_27F4791D8)
  {
    sub_251AA8C10(255);
    sub_251AA98B0(255, &qword_2813E1C30, MEMORY[0x277D84948]);
    sub_251AA11AC(&qword_27F4791F0, sub_251AA8C10, MEMORY[0x277CBCD90]);
    v1 = sub_251C707E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4791D8);
    }
  }
}

void sub_251AA8C10(uint64_t a1)
{
  if (!qword_27F4791E0)
  {
    sub_251AA98B0(255, &qword_27F4791E8, &protocol descriptor for ClinicalSharingQuery);
    v1 = sub_251C70974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4791E0);
    }
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void sub_251AA8CD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251AA8D3C(uint64_t a1)
{
  if (!qword_2813E25A8)
  {
    sub_251AA8E00(255);
    sub_251AA8E98(255, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
    sub_251AA11AC(&qword_2813E2118, sub_251AA8E00, MEMORY[0x277CBCD90]);
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E25A8);
    }
  }
}

void sub_251AA8E00(uint64_t a1)
{
  if (!qword_2813E2110)
  {
    sub_251AA8E98(255, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
    sub_251AA98B0(255, &qword_2813E1C30, MEMORY[0x277D84948]);
    v1 = sub_251C70974();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2110);
    }
  }
}

void sub_251AA8E98(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_251A8223C(255, a3, a4);
    v5 = sub_251C711A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_251AA8EF0(uint64_t a1)
{
  if (!qword_27F479218)
  {
    sub_251AA1134(255);
    sub_251AA8E00(255);
    v1 = MEMORY[0x277CBCD90];
    sub_251AA11AC(&qword_2813E2178, sub_251AA1134, MEMORY[0x277CBCD90]);
    sub_251AA11AC(&qword_2813E2118, sub_251AA8E00, v1);
    v2 = sub_251C708D4();
    if (!v3)
    {
      atomic_store(v2, &qword_27F479218);
    }
  }
}

void *sub_251AA8FD8@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_251AA276C(a1, v6, a2);
}

void sub_251AA9058(uint64_t a1)
{
  if (!qword_27F479228)
  {
    sub_251AA1134(255);
    sub_251AA11AC(&qword_2813E2178, sub_251AA1134, MEMORY[0x277CBCD90]);
    v1 = sub_251C708B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479228);
    }
  }
}

unint64_t sub_251AA9194()
{
  result = qword_27F479248;
  if (!qword_27F479248)
  {
    sub_251AA8CD8(255, &qword_27F479240, type metadata accessor for AccountSummary, MEMORY[0x277D83940]);
    sub_251AA11AC(&qword_27F479250, type metadata accessor for AccountSummary, &unk_251C74FEC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479248);
  }

  return result;
}

uint64_t sub_251AA926C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251AA8CD8(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251AA92EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251AA8CD8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251AA935C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_251AA9368()
{
  result = qword_27F479258;
  if (!qword_27F479258)
  {
    sub_251AA8E98(255, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479258);
  }

  return result;
}

unint64_t sub_251AA93D8()
{
  result = qword_27F479260;
  if (!qword_27F479260)
  {
    sub_251AA8CD8(255, &qword_2813E1EA0, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479260);
  }

  return result;
}

unint64_t sub_251AA9460()
{
  result = qword_27F479278;
  if (!qword_27F479278)
  {
    sub_251AA8E98(255, &qword_27F479270, &qword_27F479268, 0x277D12488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479278);
  }

  return result;
}

void sub_251AA94F8(uint64_t a1)
{
  sub_251C70074();
  if (v1 <= 0x3F)
  {
    sub_251AA9A54(319, &qword_2813E1FA0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_251AA9A54(319, &qword_2813E1E48, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_251AA961C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_251AA9664(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_251AA96F0(uint64_t a1)
{
  result = type metadata accessor for PBDateRange(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_251AA9794(uint64_t a1)
{
  sub_251C70074();
  if (v1 <= 0x3F)
  {
    sub_251A8223C(319, &qword_27F4792B0, 0x277CCAA00);
    if (v2 <= 0x3F)
    {
      sub_251C6FA54();
      if (v3 <= 0x3F)
      {
        sub_251C6FE64();
        if (v4 <= 0x3F)
        {
          sub_251AA98B0(319, qword_2813E7418, &protocol descriptor for ClinicalSharingDaemonEnvironment);
          if (v5 <= 0x3F)
          {
            type metadata accessor for HKClinicalSharingQueryDiagnosticOptions(319);
            if (v6 <= 0x3F)
            {
              sub_251C70014();
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

uint64_t sub_251AA98B0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_251AA990C()
{
  result = qword_27F4792C0;
  if (!qword_27F4792C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4792C0);
  }

  return result;
}

void sub_251AA9960(uint64_t a1)
{
  if (!qword_27F4792C8)
  {
    sub_251AA99C8(255);
    v1 = sub_251C70E74();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4792C8);
    }
  }
}

void sub_251AA99C8(uint64_t a1)
{
  if (!qword_27F4792D0)
  {
    sub_251AA9A54(255, &qword_27F4792D8, &type metadata for QuerySummary.QueryOutputDescription, MEMORY[0x277D83940]);
    v1 = sub_251C70E74();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4792D0);
    }
  }
}

void sub_251AA9A54(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_251AA9AD8(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_251AA9B5C()
{
  result = qword_27F4792F0;
  if (!qword_27F4792F0)
  {
    sub_251AA9A54(255, &qword_27F4792D8, &type metadata for QuerySummary.QueryOutputDescription, MEMORY[0x277D83940]);
    sub_251AA9BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4792F0);
  }

  return result;
}

unint64_t sub_251AA9BF8()
{
  result = qword_27F4792F8;
  if (!qword_27F4792F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4792F8);
  }

  return result;
}

unint64_t sub_251AA9C4C()
{
  result = qword_27F479300;
  if (!qword_27F479300)
  {
    sub_251AA8E98(255, &qword_27F478D68, &qword_27F478D70, 0x277CCD8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479300);
  }

  return result;
}

unint64_t sub_251AA9CBC()
{
  result = qword_27F479310;
  if (!qword_27F479310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479310);
  }

  return result;
}

unint64_t sub_251AA9D10()
{
  result = qword_27F479318;
  if (!qword_27F479318)
  {
    sub_251AA9A54(255, &qword_2813E1E48, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479318);
  }

  return result;
}

void sub_251AA9DA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_251C71974();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_251AA9E04()
{
  result = qword_27F479328;
  if (!qword_27F479328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479328);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountSummary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccountSummary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_251AA9FCC()
{
  result = qword_27F479330;
  if (!qword_27F479330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479330);
  }

  return result;
}

unint64_t sub_251AAA024()
{
  result = qword_27F479338;
  if (!qword_27F479338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479338);
  }

  return result;
}

unint64_t sub_251AAA07C()
{
  result = qword_27F479340;
  if (!qword_27F479340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479340);
  }

  return result;
}

unint64_t sub_251AAA0D4()
{
  result = qword_27F479348;
  if (!qword_27F479348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479348);
  }

  return result;
}

unint64_t sub_251AAA12C()
{
  result = qword_27F479350;
  if (!qword_27F479350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479350);
  }

  return result;
}

unint64_t sub_251AAA184()
{
  result = qword_27F479358;
  if (!qword_27F479358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479358);
  }

  return result;
}

unint64_t sub_251AAA1DC()
{
  result = qword_27F479360;
  if (!qword_27F479360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479360);
  }

  return result;
}

unint64_t sub_251AAA234()
{
  result = qword_27F479368;
  if (!qword_27F479368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479368);
  }

  return result;
}

unint64_t sub_251AAA28C()
{
  result = qword_27F479370;
  if (!qword_27F479370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479370);
  }

  return result;
}

uint64_t sub_251AAA2E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_251C719D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_251C719D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657370616C65 && a2 == 0xE700000000000000 || (sub_251C719D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646C697562 && a2 == 0xE500000000000000 || (sub_251C719D4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656369766564 && a2 == 0xE600000000000000 || (sub_251C719D4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74757074756FLL && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_251C719D4();

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

uint64_t sub_251AAA4D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_251C719D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_251C719D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5365727574616566 && a2 == 0xED00007375746174 || (sub_251C719D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461745372657375 && a2 == 0xEA00000000007375 || (sub_251C719D4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000251C8A090 == a2 || (sub_251C719D4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000251C8A0B0 == a2 || (sub_251C719D4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6168537473726966 && a2 == 0xEB00000000646572 || (sub_251C719D4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726168537473616CLL && a2 == 0xEA00000000006465 || (sub_251C719D4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7A69726F68747561 && a2 == 0xEE00736E6F697461)
  {

    return 8;
  }

  else
  {
    v6 = sub_251C719D4();

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

uint64_t type metadata accessor for ClinicalSharingSampleQuery(uint64_t a1)
{
  result = qword_27F479378;
  if (!qword_27F479378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251AAA894(uint64_t a1)
{
  type metadata accessor for ClinicalSharingQueryContext(319);
  if (v1 <= 0x3F)
  {
    sub_251C6FAE4();
    if (v2 <= 0x3F)
    {
      sub_251A8223C(319, &qword_27F478D50, 0x277CCD8D8);
      if (v3 <= 0x3F)
      {
        sub_251AAFDA0(319, &qword_2813E1DD0, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_251AAA98C()
{
  v1 = type metadata accessor for ClinicalSharingSampleQuery(0);
  v2 = v1 - 8;
  v55 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v56 = v3;
  v57 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AADE3C(0);
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x28223BE20](v4);
  v58 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AADEE8(0);
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x28223BE20](v6);
  v59 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AADFDC(0);
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  v47 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AAE070(0);
  v51 = *(v10 - 8);
  v52 = v10;
  MEMORY[0x28223BE20](v10);
  v48 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_251C70014();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v2;
  v16 = *(v2 + 32);
  v17 = v0;
  v18 = *(v0 + v16);
  v19 = objc_opt_self();
  sub_251C6FAB4();
  v20 = sub_251C6FF94();
  v21 = *(v13 + 8);
  v21(v15, v12);
  sub_251C6FA84();
  v22 = sub_251C6FF94();
  v21(v15, v12);
  v23 = v17;
  v24 = [v19 predicateForSamplesWithStartDate:v20 endDate:v22 options:0];

  v25 = [objc_allocWithZone(MEMORY[0x277CCD848]) initWithSampleType:v18 predicate:v24];
  v26 = sub_251BFC460();
  v28 = v27;
  sub_251A823B4(*v17 + 16, v64);
  __swift_project_boxed_opaque_existential_1(v64, v64[3]);
  sub_251AAFDA0(0, &qword_27F47BD20, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_251C74560;
  *(v29 + 32) = v25;
  v54 = v25;
  v30 = sub_251AFCF70();
  v31 = v53;
  v32 = off_2863FD760(v29, v30, *(v23 + *(v53 + 36)), v26, v28, &type metadata for ClinicalSharingQueryDefaultDataProvider);

  __swift_destroy_boxed_opaque_existential_1(v64);
  if (*(v23 + *(v31 + 44) + 8) == 1)
  {

    v33 = v32;
  }

  else
  {
    v64[0] = v32;
    sub_251A82164(0);
    sub_251AADF94(&qword_27F478D78, sub_251A82164, MEMORY[0x277CBCD90]);

    v34 = v47;
    sub_251C70B64();
    sub_251A821D4(0);
    sub_251AADF94(&qword_27F4793B0, sub_251AADFDC, MEMORY[0x277CBCCD0]);
    v35 = v48;
    v36 = v50;
    sub_251C70AE4();
    (*(v49 + 8))(v34, v36);
    sub_251AADF94(&qword_27F4793C0, sub_251AAE070, MEMORY[0x277CBCC08]);
    v37 = v52;
    v33 = sub_251C70A94();

    (*(v51 + 8))(v35, v37);
  }

  v64[0] = v33;
  sub_251A82164(0);
  sub_251A821D4(0);
  sub_251AADF94(&qword_27F478D78, sub_251A82164, MEMORY[0x277CBCD90]);

  v38 = v58;
  sub_251C70AE4();

  v39 = v57;
  sub_251AB0318(v23, v57, type metadata accessor for ClinicalSharingSampleQuery);
  v40 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v41 = swift_allocObject();
  sub_251AAFD38(v39, v41 + v40, type metadata accessor for ClinicalSharingSampleQuery);
  type metadata accessor for ClinicalSharingQueryOutput(0);
  sub_251AADF94(&qword_27F479398, sub_251AADE3C, MEMORY[0x277CBCC08]);
  v42 = v59;
  v43 = v61;
  sub_251C70AA4();

  (*(v60 + 8))(v38, v43);
  sub_251AADF94(&qword_27F4793B8, sub_251AADEE8, MEMORY[0x277CBCB10]);
  v44 = v63;
  v45 = sub_251C70A94();

  (*(v62 + 8))(v42, v44);
  return v45;
}

uint64_t sub_251AAB254@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_251AAB294(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_251AAB294(uint64_t a1)
{
  v23 = *(a1 + 16);
  if (!v23)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v22 = a1 + 32;
  while (1)
  {
    v4 = *(v22 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      v6 = sub_251C717F4();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v21 = sub_251C717F4();
      v9 = v21 + v6;
      if (__OFADD__(v21, v6))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v7)
      {
        v10 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_251C717F4();
      goto LABEL_15;
    }

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_251C716C4();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v6)
    {
      goto LABEL_36;
    }

    v27 = v6;
    v24 = v2;
    v25 = v1;
    if (v5)
    {
      if (v13 < 1)
      {
        goto LABEL_38;
      }

      sub_251A821D4(0);
      sub_251AADF94(&qword_27F479300, sub_251A821D4, MEMORY[0x277D83988]);
      for (i = 0; i != v13; ++i)
      {
        v15 = sub_251AA75B4(v26, i, v4);
        v17 = *v16;
        (v15)(v26, 0);
        *(v10 + 8 * v11 + 32 + 8 * i) = v17;
      }
    }

    else
    {
      sub_251A8223C(0, &qword_27F478D70, 0x277CCD8A8);
      swift_arrayInitWithCopy();
    }

    v2 = v24;
    v1 = v25;
    if (v27 >= 1)
    {
      v18 = *(v10 + 16);
      v19 = __OFADD__(v18, v27);
      v20 = v18 + v27;
      if (v19)
      {
        goto LABEL_37;
      }

      *(v10 + 16) = v20;
    }

LABEL_4:
    if (++v1 == v23)
    {
      return v2;
    }
  }

  result = sub_251C717F4();
  v13 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v6 <= 0)
  {
    goto LABEL_4;
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

uint64_t sub_251AAB568(uint64_t a1)
{
  sub_251AB02A4(0);
  v58 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v57 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v56 = &v51 - v5;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  v54 = v10;
  v55 = a1 + 64;
  v52 = a1;
  while (1)
  {
    if (!v9)
    {
      while (1)
      {
        v16 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v16 >= v10)
        {
          goto LABEL_40;
        }

        v9 = *(v6 + 8 * v16);
        ++v12;
        if (v9)
        {
          v62 = v13;
          v12 = v16;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      return result;
    }

    v62 = v13;
LABEL_12:
    v17 = __clz(__rbit64(v9)) | (v12 << 6);
    v18 = *(a1 + 48);
    v19 = sub_251C6FAE4();
    v20 = *(v19 - 8);
    v21 = v56;
    (*(v20 + 16))(v56, v18 + *(v20 + 72) * v17, v19);
    v22 = a1;
    v23 = *(*(a1 + 56) + 8 * v17);
    v25 = v57;
    v24 = v58;
    *(v21 + *(v58 + 48)) = v23;
    sub_251AB0318(v21, v25, sub_251AB02A4);
    v26 = *(v25 + *(v24 + 48));
    v27 = *(v20 + 8);

    v27(v25, v19);
    v28 = v21;
    v29 = v26;
    sub_251AB0380(v28, sub_251AB02A4);
    v30 = v26 >> 62;
    v31 = v26 >> 62 ? sub_251C717F4() : *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = v62;
    v32 = v62 >> 62;
    a1 = v22;
    v60 = v31;
    if (v62 >> 62)
    {
      break;
    }

    v33 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = v33 + v31;
    if (__OFADD__(v33, v31))
    {
      goto LABEL_39;
    }

LABEL_16:
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v32)
      {
        goto LABEL_23;
      }

      v35 = v13 & 0xFFFFFFFFFFFFFF8;
      if (v34 <= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v36 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v37 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (v30)
        {
          goto LABEL_25;
        }

        goto LABEL_20;
      }
    }

    else if (v32)
    {
LABEL_23:
      sub_251C717F4();
    }

    result = sub_251C716C4();
    v13 = result;
    v35 = result & 0xFFFFFFFFFFFFFF8;
    v36 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v37 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (v30)
    {
LABEL_25:
      v38 = v29;
      v40 = v35;
      result = sub_251C717F4();
      v35 = v40;
      v39 = result;
      goto LABEL_26;
    }

LABEL_20:
    v38 = v29;
    v39 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_26:
    v9 &= v9 - 1;
    if (v39)
    {
      if (((v37 >> 1) - v36) < v60)
      {
        goto LABEL_43;
      }

      v41 = v35 + 8 * v36 + 32;
      v62 = v13;
      v59 = v9;
      v53 = v35;
      if (v30)
      {
        if (v39 < 1)
        {
          goto LABEL_45;
        }

        sub_251A821D4(0);
        sub_251AADF94(&qword_27F479300, sub_251A821D4, MEMORY[0x277D83988]);
        v42 = 0;
        v43 = v38;
        do
        {
          v44 = sub_251AA75B4(v61, v42, v43);
          v46 = *v45;
          (v44)(v61, 0);
          *(v41 + 8 * v42++) = v46;
        }

        while (v39 != v42);
      }

      else
      {
        sub_251A8223C(0, &qword_27F478D70, 0x277CCD8A8);
        swift_arrayInitWithCopy();
      }

      v9 = v59;
      a1 = v52;
      v10 = v54;
      v6 = v55;
      v13 = v62;
      if (v60 >= 1)
      {
        v47 = *(v53 + 16);
        v48 = __OFADD__(v47, v60);
        v49 = v47 + v60;
        if (v48)
        {
          goto LABEL_44;
        }

        *(v53 + 16) = v49;
      }
    }

    else
    {
      v14 = v60;

      v15 = v14 <= 0;
      v10 = v54;
      v6 = v55;
      if (!v15)
      {
        goto LABEL_42;
      }
    }
  }

  v50 = sub_251C717F4();
  v34 = v50 + v60;
  if (!__OFADD__(v50, v60))
  {
    goto LABEL_16;
  }

LABEL_39:
  __break(1u);
LABEL_40:

  return v13;
}

unint64_t sub_251AABA54@<X0>(unint64_t *a2@<X8>)
{

  result = sub_251AABA84(v3);
  *a2 = result;
  return result;
}

unint64_t sub_251AABA84(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_251C717F4();
    if (v19)
    {
      v20 = v19;
      v1 = sub_251C3A1BC();
      sub_251AA7068(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x277D84F90];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_251C717F4();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x25308D460]();
          v11 = MEMORY[0x25308D460](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_251AAF1D8(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_251AAF1D8(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

void *sub_251AABC94@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_251C70014();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v5);
  v36 = sub_251C6FAE4();
  v6 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AAFBA4(0, &qword_27F4793C8, type metadata accessor for PBTypedData);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v31 - v10;
  v12 = type metadata accessor for PBTypedData(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AAC580(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_251AAFDF0(v11, &qword_27F4793C8, type metadata accessor for PBTypedData);
    Output = type metadata accessor for ClinicalSharingQueryOutput(0);
    return (*(*(Output - 8) + 56))(v32, 1, 1, Output);
  }

  sub_251AAFD38(v11, v15, type metadata accessor for PBTypedData);
  v18 = type metadata accessor for ClinicalSharingSampleQuery(0);
  v19 = 0;
  v20 = v15;
  v21 = v32;
  if (*(v2 + *(v18 + 32)) != 1)
  {
    goto LABEL_16;
  }

  v22 = a1 >> 62 ? sub_251C717F4() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v19 = MEMORY[0x277D84F90];
  if (!v22)
  {
    goto LABEL_16;
  }

  v31[0] = v20;
  v31[1] = v2;
  v35 = a1;
  v37 = MEMORY[0x277D84F90];
  result = sub_251C0B714(0, v22 & ~(v22 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    v19 = v37;
    v33 = v6 + 32;
    v34 = v35 & 0xC000000000000001;
    v24 = v22;
    do
    {
      if (v34)
      {
        v25 = MEMORY[0x25308D460](v23, v35);
      }

      else
      {
        v25 = *(v35 + 8 * v23 + 32);
      }

      v26 = v25;
      v27 = [v25 startDate];
      sub_251C6FFE4();

      v28 = [v26 endDate];
      sub_251C6FFE4();

      sub_251C6FA94();
      v37 = v19;
      v30 = *(v19 + 16);
      v29 = *(v19 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_251C0B714((v29 > 1), v30 + 1, 1);
        v19 = v37;
      }

      ++v23;
      *(v19 + 16) = v30 + 1;
      (*(v6 + 32))(v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v30, v8, v36);
    }

    while (v24 != v23);
    v21 = v32;
    v20 = v31[0];
LABEL_16:
    sub_251BEFDB0(v20, v19, v21);

    return sub_251AB0380(v20, type metadata accessor for PBTypedData);
  }

  __break(1u);
  return result;
}

unint64_t sub_251AAC128(uint64_t a1)
{
  sub_251AAFBA4(0, &qword_27F4793D8, MEMORY[0x277CC9A70]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - v4;
  sub_251AAFBA4(0, &qword_27F4793E0, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_251C6FC94();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251C70014();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v1 + *(type metadata accessor for ClinicalSharingSampleQuery(0) + 36);
  if (*(v17 + 8))
  {
  }

  else
  {
    v31 = *v17;
    sub_251C6FAB4();
    sub_251C70184();
    v18 = sub_251C701E4();
    (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
    v19 = sub_251C70244();
    (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
    sub_251C6FC74();
    v20 = objc_allocWithZone(MEMORY[0x277CCDD78]);
    v21 = sub_251C6FF94();
    v22 = sub_251C6FBC4();
    v23 = [v20 initWithAnchorDate:v21 intervalComponents:v22];

    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
    v24 = v23;

    v26 = sub_251AAFE4C(v25, v24);

    v27 = sub_251AAF23C(v26, v31);

    sub_251AAB568(v27);

    v32 = sub_251AA6E04(v28);
    sub_251AAE11C(&v32);

    return v32;
  }

  return a1;
}

uint64_t sub_251AAC580@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v114 = type metadata accessor for PBCategorySeries(0);
  MEMORY[0x28223BE20](v114);
  v115 = (&v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v118 = type metadata accessor for PBTimeSeries(0);
  MEMORY[0x28223BE20](v118);
  v6 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_251C70014();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v143 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v142 = &v113 - v10;
  sub_251AAFBA4(0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v119 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v127 = &v113 - v14;
  v15 = type metadata accessor for PBTypedData(0);
  v121 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v125 = (&v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = type metadata accessor for PBDateRange(0);
  v122 = *(v126 - 8);
  v17 = MEMORY[0x28223BE20](v126);
  v117 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v124 = &v113 - v19;
  v20 = sub_251C6FAE4();
  v21 = *(v20 - 1);
  v22 = MEMORY[0x28223BE20](v20);
  v131 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v141 = &v113 - v25;
  MEMORY[0x28223BE20](v24);
  v140 = &v113 - v26;
  sub_251AAFBA4(0, &qword_27F478D90, MEMORY[0x277CC88A8]);
  v28 = MEMORY[0x28223BE20](v27);
  v130 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v113 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v113 - v34;
  MEMORY[0x28223BE20](v33);
  v123 = &v113 - v36;
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      v116 = a2;
      a2 = v128;
      v37 = sub_251AAC128(a1);
      v138 = v21[7];
      v139 = (v21 + 7);
      v138(v35, 1, 1, v20);
      v120 = v15;
      v137 = v20;
      v113 = v6;
      a1 = v37 >> 62 ? sub_251C717F4() : *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!a1)
      {
        break;
      }

      v15 = 0;
      v135 = v37 & 0xFFFFFFFFFFFFFF8;
      v136 = v37 & 0xC000000000000001;
      v144 = (v21 + 4);
      v132 = (v21 + 6);
      v133 = a1;
      v129 = v21 + 1;
      v20 = &qword_27F478D90;
      v134 = v37;
      while (1)
      {
        if (v136)
        {
          v38 = MEMORY[0x25308D460](v15, v37);
        }

        else
        {
          if (v15 >= *(v135 + 16))
          {
            goto LABEL_34;
          }

          v38 = *(v37 + 8 * v15 + 32);
        }

        a2 = v38;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v145 = (v15 + 1);
        v39 = [v38 startDate];
        v40 = v35;
        sub_251C6FFE4();

        v41 = [a2 endDate];
        sub_251C6FFE4();

        v42 = v32;
        v43 = v140;
        v6 = v141;
        sub_251C6FA94();

        v21 = *v144;
        v44 = v43;
        v32 = v42;
        v45 = v137;
        (*v144)(v6, v44, v137);
        sub_251AAFC78(v35, v42, &qword_27F478D90, MEMORY[0x277CC88A8]);
        if ((*v132)(v42, 1, v45) == 1)
        {
          a2 = MEMORY[0x277CC88A8];
          sub_251AAFDF0(v35, &qword_27F478D90, MEMORY[0x277CC88A8]);
          sub_251AAFDF0(v42, &qword_27F478D90, a2);
          (v21)(v35, v6, v45);
          v138(v35, 0, 1, v45);
        }

        else
        {
          v46 = v131;
          (v21)(v131, v42, v45);
          v47 = v130;
          sub_251C6FAD4();
          v21 = v129;
          a2 = *v129;
          v48 = v46;
          v35 = v40;
          (*v129)(v48, v45);
          (a2)(v6, v45);
          sub_251AAFDF0(v40, &qword_27F478D90, MEMORY[0x277CC88A8]);
          v138(v47, 0, 1, v45);
          v49 = v47;
          v32 = v42;
          sub_251AAFBF8(v49, v40);
        }

        ++v15;
        a1 = v133;
        v37 = v134;
        if (v145 == v133)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      if (!sub_251C717F4())
      {
        goto LABEL_36;
      }
    }

LABEL_16:
    sub_251AAFBF8(v35, v123);

    v50 = v124;
    v51 = v128;
    sub_251BFC464();
    v52 = v50;
    v53 = v127;
    sub_251AB0318(v52, v127, type metadata accessor for PBDateRange);
    v54 = *(v122 + 56);
    v55 = v126;
    v54(v53, 0, 1, v126);
    v56 = v125;
    *v125 = 0;
    *(v56 + 8) = 1;
    v57 = v120;
    v58 = *(v120 + 20);
    v59 = type metadata accessor for PBTypedData.OneOf_Raw(0);
    v60 = *(v59 - 8);
    v61 = *(v60 + 56);
    v144 = (v60 + 56);
    v145 = v61;
    v61(v56 + v58, 1, 1, v59);
    sub_251C703A4();
    v62 = *(v57 + 28);
    v63 = v55;
    v54(v56 + v62, 1, 1, v55);
    v143 = type metadata accessor for ClinicalSharingSampleQuery(0);
    v64 = *&v51[*(v143 + 6)];
    v65 = sub_251B3C450();
    if ((v66 & 0x100) == 0)
    {
      *v56 = v65;
      *(v56 + 8) = v66 & 1;
    }

    v67 = v119;
    sub_251AAFC78(v127, v119, qword_2813E6EE8, type metadata accessor for PBDateRange);
    if ((*(v122 + 48))(v67, 1, v63) == 1)
    {
      sub_251AAFDF0(v67, qword_2813E6EE8, type metadata accessor for PBDateRange);
    }

    else
    {
      v68 = v67;
      v69 = v117;
      sub_251AAFD38(v68, v117, type metadata accessor for PBDateRange);
      sub_251AAFDF0(v56 + v62, qword_2813E6EE8, type metadata accessor for PBDateRange);
      sub_251AAFD38(v69, v56 + v62, type metadata accessor for PBDateRange);
      v54(v56 + v62, 0, 1, v126);
    }

    sub_251AAFDF0(v127, qword_2813E6EE8, type metadata accessor for PBDateRange);
    objc_opt_self();
    v70 = swift_dynamicCastObjCClass();
    if (v70)
    {
      v71 = v70;
      v142 = v64;
      v72 = v64;
      v73 = sub_251C2C490();
      if (v73)
      {
        v74 = v73;
        v75 = sub_251B14FF0(v37);

        if (v75)
        {
          v76 = v113;
          *v113 = 0;
          *(v76 + 1) = 0xE000000000000000;
          v77 = v118;
          sub_251C703A4();
          v54(&v76[*(v77 + 32)], 1, 1, v126);
          v78 = [v74 unitString];
          v79 = sub_251C70F14();
          v81 = v80;

          *(v76 + 2) = v79;
          *(v76 + 3) = v81;
          MEMORY[0x28223BE20](v82);
          v111 = v128;
          v112 = v74;
          v83 = sub_251BC12E0(sub_251AAFD0C, (&v113 - 4), v75);

          *(v76 + 4) = v83;
          v84 = v125;
          sub_251AAFDF0(v125 + v58, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
          sub_251AAFD38(v76, v84 + v58, type metadata accessor for PBTimeSeries);
          v64 = v142;
LABEL_28:
          swift_storeEnumTagMultiPayload();
          v145(v84 + v58, 0, 1, v59);
          v90 = [v64 code];
          sub_251AB0380(v124, type metadata accessor for PBDateRange);
          sub_251AAFDF0(v123, &qword_27F478D90, MEMORY[0x277CC88A8]);
          v91 = v90 == 15;
          v92 = v116;
          if (v91 && (v128[*(v143 + 9) + 8] & 1) == 0)
          {
            *v84 = 131;
            *(v84 + 8) = 1;
          }

          sub_251AAFD38(v84, v92, type metadata accessor for PBTypedData);
          return (*(v121 + 56))(v92, 0, 1, v120);
        }

        v146 = 0;
        v147 = 0xE000000000000000;
        sub_251C716A4();

        v146 = 0xD000000000000023;
        v147 = 0x8000000251C89D50;
        v99 = [v71 description];
        v100 = sub_251C70F14();
        v102 = v101;

        MEMORY[0x25308CDA0](v100, v102);

        LODWORD(v112) = 0;
      }

      else
      {
        v146 = 0;
        v147 = 0xE000000000000000;
        sub_251C716A4();

        v146 = 0xD00000000000001ALL;
        v147 = 0x8000000251C8A130;
        v95 = [v72 description];
        v96 = sub_251C70F14();
        v98 = v97;

        MEMORY[0x25308CDA0](v96, v98);

        LODWORD(v112) = 0;
      }
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v85 = sub_251B14FFC(v37);

        v84 = v125;
        if (v85)
        {
          v86 = v115;
          *v115 = 0;
          *(v86 + 8) = 0xE000000000000000;
          v87 = v114;
          sub_251C703A4();
          v88 = (v54)(v86 + *(v87 + 28), 1, 1, v126);
          MEMORY[0x28223BE20](v88);
          v111 = v128;
          v89 = sub_251BC1320(sub_251AAFCE4, (&v113 - 4), v85);

          *(v86 + 16) = v89;
          sub_251AAFDF0(v84 + v58, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
          sub_251AAFD38(v86, v84 + v58, type metadata accessor for PBCategorySeries);
          goto LABEL_28;
        }

        v146 = 0;
        v147 = 0xE000000000000000;
        sub_251C716A4();

        v146 = 0xD000000000000023;
        v147 = 0x8000000251C89D50;
        v107 = [v64 description];
        v108 = sub_251C70F14();
        v110 = v109;

        MEMORY[0x25308CDA0](v108, v110);

        LODWORD(v112) = 0;
      }

      else
      {
        v146 = 0;
        v147 = 0xE000000000000000;
        sub_251C716A4();

        v146 = 0xD000000000000016;
        v147 = 0x8000000251C8A110;
        v103 = [v64 description];
        v104 = sub_251C70F14();
        v106 = v105;

        MEMORY[0x25308CDA0](v104, v106);

        LODWORD(v112) = 0;
      }
    }

    result = sub_251C717E4();
    __break(1u);
    return result;
  }

LABEL_36:
  v94 = *(v121 + 56);

  return v94(a2, 1, 1, v15);
}

void sub_251AAD688(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_251AAFBA4(0, &qword_2813E7500, MEMORY[0x277CC9578]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v39 - v8;
  v10 = type metadata accessor for PBDateRange(0);
  v45 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  v14 = type metadata accessor for PBCategorySeries.Event(0);
  v15 = a2 + *(v14 + 28);
  v16 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v41 = v16;
  v42 = v15;
  v39[1] = v17 + 56;
  v40 = v18;
  (v18)(v15, 1, 1);
  sub_251C703A4();
  v19 = *(v14 + 36);
  v44 = *(v11 + 56);
  v44(a2 + v19, 1, 1, v10);
  v43 = a1;
  v20 = [a1 startDate];
  sub_251C6FFE4();

  v21 = sub_251C70014();
  v22 = *(*(v21 - 8) + 56);
  v22(v9, 0, 1, v21);
  v23 = [a1 endDate];
  sub_251C6FFE4();

  v22(v7, 0, 1, v21);
  sub_251C15BE4();
  v24 = v46;
  sub_251AAFDF0(v7, &qword_2813E7500, v46);
  sub_251AAFDF0(v9, &qword_2813E7500, v24);
  sub_251AAFDF0(a2 + v19, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251AAFD38(v13, a2 + v19, type metadata accessor for PBDateRange);
  v44(a2 + v19, 0, 1, v45);
  v25 = v43;
  v26 = [v43 sourceRevision];
  v27 = [v26 source];

  v28 = [v27 name];
  v29 = sub_251C70F14();
  v31 = v30;

  *(a2 + 24) = v29;
  *(a2 + 32) = v31;
  v32 = [v25 value];
  if (v32 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v32 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return;
  }

  *a2 = v32;
  sub_251A8316C();
  if (v34)
  {
    v35 = v33;
    v36 = v34;
    v37 = v42;
    sub_251AAFDF0(v42, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    *v37 = v35;
    v37[1] = v36;
    v38 = v41;
    swift_storeEnumTagMultiPayload();
    v40(v37, 0, 1, v38);
  }
}

id sub_251AADAEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_251C70014();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + 40) = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0xE000000000000000;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0xE000000000000000;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 120) = MEMORY[0x277D84F90];
  *(a3 + 128) = 0;
  *(a3 + 136) = 256;
  type metadata accessor for PBTimeSeries.Value(0);
  sub_251C703A4();
  v11 = [a1 quantity];
  [v11 doubleValueForUnit_];
  v13 = v12;

  *(a3 + 112) = v13;
  v14 = [a1 startDate];
  sub_251C6FFE4();

  v15 = *(*v3 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
  v16 = sub_251C6FF94();
  v17 = [v15 stringFromDate_];

  v18 = sub_251C70F14();
  v20 = v19;

  (*(v8 + 8))(v10, v7);
  *(a3 + 24) = v18;
  *(a3 + 32) = v20;
  v21 = [a1 sourceRevision];
  v22 = [v21 source];

  v23 = [v22 name];
  v24 = sub_251C70F14();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    sub_251AAFDA0(0, &qword_27F4793D0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_251C74800;
    v29 = [a1 sourceRevision];
    v30 = [v29 source];

    v31 = [v30 name];
    v32 = sub_251C70F14();
    v34 = v33;

    *(v28 + 32) = v32;
    *(v28 + 40) = v34;
    *(a3 + 120) = v28;
  }

  result = sub_251C48D80();
  if ((v36 & 1) == 0)
  {
    v37 = result == 1;
    if (result == 2)
    {
      v37 = 2;
    }

    *(a3 + 128) = v37;
    *(a3 + 136) = 1;
  }

  return result;
}

void sub_251AADE3C(uint64_t a1)
{
  if (!qword_27F479388)
  {
    sub_251A82164(255);
    sub_251A821D4(255);
    sub_251AADF94(&qword_27F478D78, sub_251A82164, MEMORY[0x277CBCD90]);
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479388);
    }
  }
}

void sub_251AADEE8(uint64_t a1)
{
  if (!qword_27F479390)
  {
    sub_251AADE3C(255);
    type metadata accessor for ClinicalSharingQueryOutput(255);
    sub_251AADF94(&qword_27F479398, sub_251AADE3C, MEMORY[0x277CBCC08]);
    v1 = sub_251C70784();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479390);
    }
  }
}

uint64_t sub_251AADF94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251AADFDC(uint64_t a1)
{
  if (!qword_27F4793A0)
  {
    sub_251A82164(255);
    sub_251AADF94(&qword_27F478D78, sub_251A82164, MEMORY[0x277CBCD90]);
    v1 = sub_251C708C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4793A0);
    }
  }
}

void sub_251AAE070(uint64_t a1)
{
  if (!qword_27F4793A8)
  {
    sub_251AADFDC(255);
    sub_251A821D4(255);
    sub_251AADF94(&qword_27F4793B0, sub_251AADFDC, MEMORY[0x277CBCCD0]);
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4793A8);
    }
  }
}

uint64_t sub_251AAE11C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_251BFC484(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_251AAE198(v6);
  return sub_251C71744();
}

void sub_251AAE198(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_251C71994();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_251A8223C(0, &qword_27F478D70, 0x277CCD8A8);
        v6 = sub_251C71184();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_251AAE4CC(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_251AAE2AC(0, v2, 1, a1);
  }
}

void sub_251AAE2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_251C70014();
  v8 = MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v36 = *a4;
    v14 = v36 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v32 = v14;
    v33 = a3;
    v16 = *(v36 + 8 * a3);
    v31 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 startDate];
      sub_251C6FFE4();

      v22 = [v20 startDate];
      v23 = v34;
      sub_251C6FFE4();

      LOBYTE(v22) = sub_251C6FFA4();
      v24 = *v13;
      v25 = v23;
      v26 = v35;
      (*v13)(v25, v35);
      v24(v12, v26);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v14 = v32 + 8;
        v15 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v27;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_251AAE4CC(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v125 = sub_251C70014();
  v9 = MEMORY[0x28223BE20](v125);
  v124 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v123 = &v110 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v105 = a4;
    }

    else
    {
LABEL_121:
      v105 = sub_251BFABE4(a4);
    }

    v126 = v105;
    v106 = *(v105 + 2);
    if (v106 >= 2)
    {
      while (*v16)
      {
        a4 = *&v105[16 * v106];
        v107 = v105;
        v108 = *&v105[16 * v106 + 24];
        sub_251AAED3C((*v16 + 8 * a4), (*v16 + 8 * *&v105[16 * v106 + 16]), (*v16 + 8 * v108), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v108 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_251BFABE4(v107);
        }

        if (v106 - 2 >= *(v107 + 2))
        {
          goto LABEL_115;
        }

        v109 = &v107[16 * v106];
        *v109 = a4;
        v109[1] = v108;
        v126 = v107;
        sub_251BFAB58(v106 - 1);
        v105 = v126;
        v106 = *(v126 + 2);
        if (v106 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v122 = (v11 + 8);
  v15 = MEMORY[0x277D84F90];
  v115 = a4;
  v111 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v120 = v13;
      v113 = v15;
      v114 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v119 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      v21 = v18;
      v22 = v20;
      v23 = [v21 startDate];
      v24 = v123;
      sub_251C6FFE4();

      v25 = [v22 startDate];
      v26 = v124;
      sub_251C6FFE4();

      LODWORD(v121) = sub_251C6FFA4();
      v27 = *v122;
      v28 = v125;
      (*v122)(v26, v125);
      v27(v24, v28);

      v112 = v16;
      v29 = (v16 + 2);
      while (1)
      {
        v14 = v120;
        if (v120 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *v5;
        v32 = v30;
        v33 = [v31 startDate];
        v34 = v123;
        sub_251C6FFE4();

        v35 = [v32 startDate];
        v36 = v124;
        sub_251C6FFE4();

        LODWORD(v35) = sub_251C6FFA4() & 1;
        v37 = v36;
        v38 = v125;
        v27(v37, v125);
        v27(v34, v38);

        ++v29;
        v5 += 8;
        if ((v121 & 1) != v35)
        {
          v14 = (v29 - 1);
          break;
        }
      }

      v15 = v113;
      v6 = v114;
      a4 = v115;
      v16 = v112;
      v39 = v119;
      if (v121)
      {
        if (v14 < v112)
        {
          goto LABEL_118;
        }

        a3 = v111;
        if (v112 < v14)
        {
          v40 = 8 * v14 - 8;
          v41 = v14;
          v42 = v112;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v43 = *(v44 + v39);
              *(v44 + v39) = *(v44 + v40);
              *(v44 + v40) = v43;
            }

            v42 = (v42 + 1);
            v40 -= 8;
            v39 += 8;
          }

          while (v42 < v41);
        }
      }

      else
      {
        a3 = v111;
      }
    }

    v45 = a3[1];
    if (v14 < v45)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v46 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v46 >= v45)
        {
          v46 = a3[1];
        }

        if (v46 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v46)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v61 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v61;
    }

    else
    {
      v15 = sub_251C38DF0(0, *(v61 + 2) + 1, 1, v61);
    }

    a4 = *(v15 + 2);
    v62 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v62 >> 1)
    {
      v15 = sub_251C38DF0((v62 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v63 = &v15[16 * a4];
    *(v63 + 4) = v16;
    *(v63 + 5) = v14;
    v64 = *v116;
    if (!*v116)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v65 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v66 = *(v15 + 4);
          v67 = *(v15 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_56:
          if (v69)
          {
            goto LABEL_105;
          }

          v82 = &v15[16 * v5];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_108;
          }

          v88 = &v15[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_112;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v92 = &v15[16 * v5];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_70:
        if (v87)
        {
          goto LABEL_107;
        }

        v95 = &v15[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_110;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v65 - 1;
        if (v65 - 1 >= v5)
        {
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v103 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v65 + 40];
        sub_251AAED3C((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v65 + 32]), (*a3 + 8 * v16), v64);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_251BFABE4(v103);
        }

        if (a4 >= *(v103 + 2))
        {
          goto LABEL_102;
        }

        v104 = &v103[16 * a4];
        *(v104 + 4) = v5;
        *(v104 + 5) = v16;
        v126 = v103;
        a4 = &v126;
        sub_251BFAB58(v65);
        v15 = v126;
        v5 = *(v126 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v15[16 * v5 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_103;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_104;
      }

      v77 = &v15[16 * v5];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_106;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_109;
      }

      if (v81 >= v73)
      {
        v99 = &v15[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_113;
        }

        if (v68 < v102)
        {
          v65 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v115;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v113 = v15;
  v114 = v6;
  v121 = *a3;
  v47 = v121 + 8 * v14 - 8;
  v112 = v16;
  a4 = v16 - v14;
  v117 = v46;
LABEL_29:
  v119 = v47;
  v120 = v14;
  v48 = *(v121 + 8 * v14);
  v118 = a4;
  v49 = v47;
  while (1)
  {
    v50 = *v49;
    v5 = v48;
    v51 = v50;
    v52 = [v5 startDate];
    v53 = v123;
    sub_251C6FFE4();

    v54 = [v51 startDate];
    v55 = v124;
    sub_251C6FFE4();

    LOBYTE(v54) = sub_251C6FFA4();
    v56 = *v122;
    v57 = v55;
    v58 = v125;
    (*v122)(v57, v125);
    v56(v53, v58);

    if ((v54 & 1) == 0)
    {
LABEL_28:
      v14 = v120 + 1;
      v47 = v119 + 8;
      a4 = v118 - 1;
      if ((v120 + 1) != v117)
      {
        goto LABEL_29;
      }

      v14 = v117;
      v15 = v113;
      v6 = v114;
      a3 = v111;
      v16 = v112;
      goto LABEL_36;
    }

    if (!v121)
    {
      break;
    }

    v59 = *v49;
    v48 = *(v49 + 8);
    *v49 = v48;
    *(v49 + 8) = v59;
    v49 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_251AAED3C(id *a1, id *a2, id *a3, void **a4)
{
  v56 = sub_251C70014();
  v8 = *(v56 - 8);
  v9 = MEMORY[0x28223BE20](v56);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v54 = &v49 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v57 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v58 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v57)
    {
      v50 = (v8 + 8);
LABEL_27:
      v49 = a1;
      v30 = a1 - 1;
      v31 = a3 - 1;
      v32 = v58;
      v51 = a1 - 1;
      do
      {
        v33 = a4;
        v34 = v31;
        v35 = v31 + 1;
        v36 = *--v32;
        v37 = *v30;
        v38 = v36;
        v53 = v38;
        v39 = v37;
        v52 = v39;
        v40 = [v38 startDate];
        v41 = v54;
        sub_251C6FFE4();

        v42 = [v39 startDate];
        v43 = v55;
        sub_251C6FFE4();

        LOBYTE(v42) = sub_251C6FFA4();
        v44 = *v50;
        v45 = v43;
        v46 = v56;
        (*v50)(v45, v56);
        v44(v41, v46);

        if (v42)
        {
          a4 = v33;
          a3 = v34;
          v47 = v51;
          if (v35 != v49)
          {
            *v34 = *v51;
          }

          if (v58 <= v33 || (a1 = v47, v47 <= v57))
          {
            a1 = v47;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v33;
        if (v35 != v58)
        {
          *v34 = *v32;
        }

        v31 = v34 - 1;
        v58 = v32;
        v30 = v51;
      }

      while (v32 > v33);
      v58 = v32;
      a1 = v49;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v58 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v57 = a1;
        v17 = *a4;
        v18 = *a2;
        v19 = v17;
        v20 = [v18 startDate];
        v21 = v54;
        sub_251C6FFE4();

        v22 = [v19 startDate];
        v23 = v55;
        sub_251C6FFE4();

        LOBYTE(v22) = sub_251C6FFA4();
        v24 = *v16;
        v25 = v23;
        v26 = v56;
        (*v16)(v25, v56);
        v24(v21, v26);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v57;
        v29 = v57 == a2++;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 1;
        if (a4 >= v58 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v57;
      v29 = v57 == a4++;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v58 - a4 + (v58 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v58 - a4));
  }

  return 1;
}

uint64_t sub_251AAF1D8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_251C717F4();
  }

  return sub_251C716C4();
}

void *sub_251AAF23C(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_251AAF3A8(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_251AAF714(v10, v6, v4, a2);
  result = MEMORY[0x25308E2B0](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_251AAF3A8(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v40 = a2;
  v48 = a4;
  v41 = a1;
  sub_251AB02A4(0);
  v47 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v54 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v53 = &v39 - v8;
  v51 = sub_251C6FAE4();
  result = MEMORY[0x28223BE20](v51);
  v52 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 0;
  v12 = 0;
  v49 = a3;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v45 = v10 + 16;
  v46 = v10;
  v44 = (v10 + 8);
  v20 = v52;
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v50 = (v18 - 1) & v18;
LABEL_11:
    v24 = v21 | (v12 << 6);
    v25 = v49;
    v26 = *(v46 + 16);
    v27 = v51;
    v26(v20, v49[6] + *(v46 + 72) * v24, v51);
    v28 = v25[7];
    v43 = v24;
    v29 = *(v28 + 8 * v24);
    v30 = v53;
    v26(v53, v20, v27);
    v31 = v47;
    *(v30 + *(v47 + 48)) = v29;
    v32 = v30;
    v33 = v54;
    sub_251AB0318(v32, v54, sub_251AB02A4);
    v34 = *(v33 + *(v31 + 48));
    if (v34 >> 62)
    {
      v35 = sub_251C717F4();
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_bridgeObjectRetain_n();

    sub_251AB0380(v53, sub_251AB02A4);
    v36 = *v44;
    v37 = v51;
    (*v44)(v54, v51);

    result = (v36)(v52, v37);
    v18 = v50;
    if (v35 <= v48)
    {
      *(v41 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      if (__OFADD__(v42++, 1))
      {
        goto LABEL_20;
      }
    }
  }

  v22 = v12;
  while (1)
  {
    v12 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      return sub_251AAF79C(v41, v40, v42, v49);
    }

    v23 = v14[v12];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v50 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void *sub_251AAF714(void *result, uint64_t a2, void *a3, uint64_t a4)
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

    v8 = sub_251AAF3A8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_251AAF79C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a1;
  v46 = sub_251C6FAE4();
  v7 = *(v46 - 8);
  v8 = MEMORY[0x28223BE20](v46);
  v45 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v39 = &v33 - v10;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_251AB03E0(0);
  result = sub_251C71824();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v38;
  }

  v14 = 0;
  v35 = v7 + 16;
  v36 = result;
  v44 = v7 + 32;
  v15 = result + 64;
  v34 = a4;
  v37 = v7;
  v16 = v46;
  while (v13)
  {
    v17 = __clz(__rbit64(v13));
    v40 = (v13 - 1) & v13;
LABEL_16:
    v20 = v17 | (v14 << 6);
    v21 = a4[6];
    v43 = *(v7 + 72);
    v22 = v39;
    (*(v7 + 16))(v39, v21 + v43 * v20, v16);
    v23 = *(a4[7] + 8 * v20);
    v41 = *(v7 + 32);
    v41(v45, v22, v16);
    v12 = v36;
    sub_251AADF94(&qword_27F4793F8, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
    v42 = v23;

    result = sub_251C70E84();
    v24 = -1 << *(v12 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      v7 = v37;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v15 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    v7 = v37;
LABEL_26:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    result = (v41)(*(v12 + 48) + v27 * v43, v45, v46);
    *(*(v12 + 56) + 8 * v27) = v42;
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v34;
    v13 = v40;
    if (!a3)
    {
      return v12;
    }
  }

  v18 = v14;
  while (1)
  {
    v14 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v12;
    }

    v19 = v38[v14];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v40 = (v19 - 1) & v19;
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

void sub_251AAFBA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_251AAFBF8(uint64_t a1, uint64_t a2)
{
  sub_251AAFBA4(0, &qword_27F478D90, MEMORY[0x277CC88A8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AAFC78(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251AAFBA4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251AAFD38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_251AAFDA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_251AAFDF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251AAFBA4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_251AAFE4C(unint64_t a1, void *a2)
{
  v40 = a2;
  v39 = sub_251C70014();
  v3 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_251C6FAE4();
  v33 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
LABEL_24:
    v7 = sub_251C717F4();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v8 = 0;
      v35 = a1 & 0xFFFFFFFFFFFFFF8;
      v36 = a1 & 0xC000000000000001;
      v34 = (v3 + 8);
      v31 = (v33 + 8);
      v32 = v33 + 32;
      v9 = MEMORY[0x277D84F98];
      v30 = xmmword_251C74560;
      while (1)
      {
        if (v36)
        {
          v11 = MEMORY[0x25308D460](v8, a1);
        }

        else
        {
          if (v8 >= *(v35 + 16))
          {
            goto LABEL_21;
          }

          v11 = *(a1 + 8 * v8 + 32);
        }

        v12 = v11;
        v13 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v14 = a1;
        v15 = [v11 startDate];
        v16 = v38;
        sub_251C6FFE4();

        v17 = sub_251C6FF94();
        (*v34)(v16, v39);
        a1 = [v40 dateIntervalContainingDate:v17 index:0];

        sub_251C6FA74();
        v3 = sub_251AC8D14(v6);
        v19 = v9[2];
        v20 = (v18 & 1) == 0;
        v21 = v19 + v20;
        if (__OFADD__(v19, v20))
        {
          goto LABEL_22;
        }

        v22 = v18;
        if (v9[3] < v21)
        {
          sub_251AC9F90(v21, 1);
          v9 = v41;
          v23 = sub_251AC8D14(v6);
          if ((v22 & 1) != (v24 & 1))
          {

            result = sub_251C71A14();
            __break(1u);
            return result;
          }

          v3 = v23;
        }

        if (v22)
        {
          v10 = (*v31)(v6, v37);
          v3 = v9[7] + 8 * v3;
          MEMORY[0x25308CEE0](v10);
          a1 = v14;
          if (*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_251C71174();
            a1 = v14;
          }

          sub_251C71194();
        }

        else
        {
          sub_251AAFDA0(0, &qword_27F47BD20, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
          a1 = swift_allocObject();
          *(a1 + 16) = v30;
          *(a1 + 32) = v12;
          v9[(v3 >> 6) + 8] |= 1 << v3;
          (*(v33 + 32))(v9[6] + *(v33 + 72) * v3, v6, v37);
          *(v9[7] + 8 * v3) = a1;
          v25 = v9[2];
          v26 = __OFADD__(v25, 1);
          v27 = v25 + 1;
          if (v26)
          {
            goto LABEL_23;
          }

          v9[2] = v27;
          a1 = v14;
        }

        ++v8;
        if (v13 == v7)
        {
          return v9;
        }
      }
    }
  }

  return MEMORY[0x277D84F98];
}

void sub_251AB02A4(uint64_t a1)
{
  if (!qword_27F4793E8)
  {
    sub_251C6FAE4();
    sub_251A821D4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4793E8);
    }
  }
}

uint64_t sub_251AB0318(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251AB0380(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251AB03E0(uint64_t a1)
{
  if (!qword_27F4793F0)
  {
    sub_251C6FAE4();
    sub_251A821D4(255);
    sub_251AADF94(&qword_27F4793F8, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
    v1 = sub_251C71834();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4793F0);
    }
  }
}

uint64_t sub_251AB048C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v47 = a2;
  v48 = a3;
  v49 = a4;
  v5 = sub_251C70074();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  v44 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2978(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277CBCF38];
  sub_251AB29D0(0, &qword_27F479408, MEMORY[0x277CBCF38]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v44 - v16;
  v18 = *a1;
  v50[0] = v18;
  type metadata accessor for ClinicalSharingSyncContext(0);

  sub_251C70A24();
  sub_251A82284();
  sub_251C709F4();
  (*(v9 + 8))(v11, v8);
  sub_251AB2A48(&qword_27F479410, &qword_27F479408, v12, MEMORY[0x277CBCF40]);
  v19 = sub_251C70A94();
  (*(v15 + 8))(v17, v14);
  v20 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo;
  swift_beginAccess();
  sub_251A823B4(v18 + v20, v50);
  v21 = v51;
  v22 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  (*(v22 + 16))(v21, v22);
  v24 = v23;
  __swift_destroy_boxed_opaque_existential_1(v50);
  if (v24)
  {

    if (sub_251B30EC0())
    {
LABEL_6:
      v27 = sub_251AB0A30(v47, v18, v48, 0);
      goto LABEL_12;
    }

    v25 = *(v18 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus);
    if ([v25 userStatus] == 4)
    {

      goto LABEL_6;
    }

    v26 = [v25 userStatus];

    if (v26 == 5)
    {
      goto LABEL_6;
    }
  }

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v28 = sub_251C70764();
  __swift_project_value_buffer(v28, qword_2813E8130);

  v29 = sub_251C70744();
  v30 = sub_251C713C4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v50[0] = v32;
    *v31 = 136315138;
    v34 = v45;
    v33 = v46;
    v35 = v18 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID;
    v36 = v44;
    (*(v45 + 16))(v44, v35, v46);
    sub_251AB2A8C(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v37 = sub_251C719A4();
    v39 = v38;
    (*(v34 + 8))(v36, v33);
    v40 = sub_251B10780(v37, v39, v50);

    *(v31 + 4) = v40;
    _os_log_impl(&dword_251A6C000, v29, v30, "No DocRef exists to update. Account: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x25308E2B0](v32, -1, -1);
    MEMORY[0x25308E2B0](v31, -1, -1);
  }

  v50[0] = v19;
  v41 = MEMORY[0x277CBCD88];
  sub_251AB29D0(0, &qword_2813E21B0, MEMORY[0x277CBCD88]);
  sub_251AB2A48(&qword_2813E21B8, &qword_2813E21B0, v41, MEMORY[0x277CBCD90]);
  v27 = sub_251C70A94();
LABEL_12:
  v42 = v27;

  *v49 = v42;
  return result;
}

uint64_t sub_251AB0A30(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v60) = a4;
  v77 = a3;
  sub_251AB2AD4(0);
  v67 = *(v6 - 8);
  v68 = v6;
  MEMORY[0x28223BE20](v6);
  v61 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2C00(0);
  v9 = *(v8 - 8);
  v70 = v8;
  v71 = v9;
  MEMORY[0x28223BE20](v8);
  v62 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2D3C(0);
  v12 = *(v11 - 8);
  v73 = v11;
  v74 = v12;
  MEMORY[0x28223BE20](v11);
  v69 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2E48(0);
  v15 = *(v14 - 8);
  v75 = v14;
  v76 = v15;
  MEMORY[0x28223BE20](v14);
  v72 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2978(0);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x277CBCF38];
  sub_251AB29D0(0, &qword_27F479408, MEMORY[0x277CBCF38]);
  v59 = v23;
  v66 = *(v23 - 8);
  v65 = *(v66 + 64);
  v24 = MEMORY[0x28223BE20](v23);
  v63 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v56 - v26;
  v64 = a2;
  v78 = a2;
  type metadata accessor for ClinicalSharingSyncContext(0);

  sub_251C70A24();
  sub_251A82284();
  sub_251C709F4();
  (*(v19 + 8))(v21, v18);
  v28 = swift_allocObject();
  *(v28 + 16) = v60;
  *(v28 + 24) = a1;
  v58 = a1;
  sub_251C70964();
  v29 = MEMORY[0x277CBCD88];
  sub_251AB29D0(0, &qword_2813E21B0, MEMORY[0x277CBCD88]);
  v31 = v30;
  sub_251AB2A48(&qword_27F479410, &qword_27F479408, v22, MEMORY[0x277CBCF40]);
  sub_251AB2A48(&qword_2813E21B8, &qword_2813E21B0, v29, MEMORY[0x277CBCD90]);
  v32 = v61;
  v33 = v27;
  v57 = v27;
  sub_251C70B94();

  v60 = MEMORY[0x277CBCCE0];
  sub_251AB2A8C(&qword_27F479458, sub_251AB2AD4, MEMORY[0x277CBCCE0]);
  v34 = v68;
  v35 = sub_251C70A94();
  (*(v67 + 8))(v32, v34);
  v78 = v35;
  sub_251AB2CCC(0);
  v36 = v62;
  v56 = v31;
  sub_251C70B54();

  v37 = swift_allocObject();
  v38 = v58;
  *(v37 + 16) = v58;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_251AB2F60;
  *(v39 + 24) = v37;
  v40 = v38;
  sub_251C70964();
  sub_251AB2A8C(&qword_27F479440, sub_251AB2C00, MEMORY[0x277CBCCC0]);
  v42 = v69;
  v41 = v70;
  sub_251C70B94();

  (*(v71 + 8))(v36, v41);
  v43 = v66;
  v44 = v63;
  v45 = v59;
  (*(v66 + 16))(v63, v33, v59);
  v46 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v47 = (v65 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  v49 = v64;
  *(v48 + 16) = v77;
  *(v48 + 24) = v49;
  (*(v43 + 32))(v48 + v46, v44, v45);
  *(v48 + v47) = v40;
  sub_251AB2A8C(&qword_27F479450, sub_251AB2D3C, v60);

  v50 = v40;
  v52 = v72;
  v51 = v73;
  sub_251C70BA4();

  (*(v74 + 8))(v42, v51);
  sub_251AB2A8C(&qword_27F479460, sub_251AB2E48, MEMORY[0x277CBCD30]);
  v53 = v75;
  v54 = sub_251C70A94();
  (*(v76 + 8))(v52, v53);
  (*(v43 + 8))(v57, v45);
  return v54;
}

uint64_t sub_251AB1274@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_251C70074();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v11 = sub_251C70764();
  __swift_project_value_buffer(v11, qword_2813E8130);

  v12 = sub_251C70744();
  v13 = sub_251C713C4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = v2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v35 = a2;
    v17 = v16;
    v32[0] = v16;
    *v15 = 136315138;
    (*(v7 + 16))(v9, v10 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, v6);
    sub_251AB2A8C(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v18 = sub_251C719A4();
    v19 = v7;
    v21 = v20;
    (*(v19 + 8))(v9, v6);
    v22 = sub_251B10780(v18, v21, v32);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_251A6C000, v12, v13, "Preparing update request. Account: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v23 = v17;
    a2 = v35;
    MEMORY[0x25308E2B0](v23, -1, -1);
    v24 = v15;
    v3 = v31;
    MEMORY[0x25308E2B0](v24, -1, -1);
  }

  v25 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo;
  swift_beginAccess();
  sub_251A823B4(v10 + v25, v32);
  v26 = v33;
  v27 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  sub_251BBBC9C(v26, v27, a2);
  if (!v3)
  {
    sub_251AB2CCC(0);
    *(a2 + *(v28 + 48)) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t sub_251AB1580(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_251C6F9A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_251AB31B0(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB335C(0);
  v15 = *(v14 - 8);
  v27 = v14;
  v28 = v15;
  MEMORY[0x28223BE20](v14);
  v26 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_251C66E04(a1, a2, 3, a3);
  (*(v7 + 16))(&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v17, &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_251AB354C;
  *(v19 + 24) = v18;
  sub_251AB3458(0, &qword_27F479470, &qword_27F479478, &qword_27F479480, 0x277CCAD28);
  sub_251AB3264(0, &qword_27F479488, &qword_27F479490, 0x277CCAA40);
  sub_251AB32E4();
  sub_251C70B54();

  sub_251AB2A8C(&qword_27F4794B8, sub_251AB31B0, MEMORY[0x277CBCCC0]);
  v20 = sub_251C70A94();
  (*(v11 + 8))(v13, v10);
  v29 = v20;
  sub_251C70964();
  sub_251AB3458(0, &qword_27F4794A8, &qword_27F479488, &qword_27F479490, 0x277CCAA40);
  type metadata accessor for ClinicalSharingSyncContext(0);
  v21 = MEMORY[0x277CBCD88];
  sub_251AB29D0(0, &qword_2813E21B0, MEMORY[0x277CBCD88]);
  sub_251AB34D4();
  sub_251AB2A48(&qword_2813E21B8, &qword_2813E21B0, v21, MEMORY[0x277CBCD90]);
  v22 = v26;
  sub_251C70B94();

  sub_251AB2A8C(&qword_27F4794C0, sub_251AB335C, MEMORY[0x277CBCCE0]);
  v23 = v27;
  v24 = sub_251C70A94();
  (*(v28 + 8))(v22, v23);
  return v24;
}

uint64_t sub_251AB1A2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_251AB35FC(*(a1 + 24));
  *a2 = result;
  return result;
}

void sub_251AB1A58(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, uint64_t *a5@<X8>)
{
  v107 = a4;
  v122 = a2;
  sub_251AB2AD4(0);
  v110 = v8;
  v109 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2C00(0);
  v112 = *(v11 - 8);
  v113 = v11;
  MEMORY[0x28223BE20](v11);
  v111 = v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2D3C(0);
  v118 = v13;
  v116 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v121 = v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2E48(0);
  v119 = v15;
  v117 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v115 = v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2978(0);
  v18 = v17;
  v106 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB29D0(0, &qword_27F479408, MEMORY[0x277CBCF38]);
  v120 = v21;
  v114 = *(v21 - 8);
  v22 = *(v114 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v108 = v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v123 = v99 - v24;
  v130 = *a1;
  v25 = v130;
  v26 = v130;
  sub_251A82284();
  if (swift_dynamicCast())
  {
    if (v129 == 2)
    {
      sub_251AB2F88(v126, v127, v128, 2);
      if (v122 < 1)
      {
        if (qword_2813E26F8 != -1)
        {
          swift_once();
        }

        v57 = sub_251C70764();
        __swift_project_value_buffer(v57, qword_2813E8130);
        v58 = v25;

        v59 = sub_251C70744();
        v60 = sub_251C713D4();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v125 = v62;
          *v61 = 136315394;
          sub_251C70074();
          sub_251AB2A8C(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v63 = sub_251C719A4();
          v65 = sub_251B10780(v63, v64, &v125);

          *(v61 + 4) = v65;
          *(v61 + 12) = 2080;
          v124 = v25;
          v66 = v25;
          v67 = sub_251C70F74();
          v69 = sub_251B10780(v67, v68, &v125);

          *(v61 + 14) = v69;
          _os_log_impl(&dword_251A6C000, v59, v60, "Could not update DocRef because of conflictResponseError. Account: %s. No retries left. Error: %s", v61, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x25308E2B0](v62, -1, -1);
          MEMORY[0x25308E2B0](v61, -1, -1);
        }

        swift_willThrow();
        v70 = v130;
        v71 = v25;
      }

      else
      {
        v103 = v122 - 1;
        if (qword_2813E26F8 != -1)
        {
          swift_once();
        }

        v104 = a5;
        v27 = sub_251C70764();
        __swift_project_value_buffer(v27, qword_2813E8130);
        v28 = v25;

        v29 = sub_251C70744();
        v30 = sub_251C713C4();

        v31 = os_log_type_enabled(v29, v30);
        v105 = a3;
        if (v31)
        {
          v32 = swift_slowAlloc();
          v101 = v30;
          v33 = v32;
          v102 = swift_slowAlloc();
          v125 = v102;
          *v33 = 136315650;
          v99[1] = sub_251C70074();
          sub_251AB2A8C(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v100 = v29;
          v34 = sub_251C719A4();
          v36 = sub_251B10780(v34, v35, &v125);

          *(v33 + 4) = v36;
          *(v33 + 12) = 2048;
          *(v33 + 14) = v122;
          *(v33 + 22) = 2080;
          v124 = v25;
          v37 = v25;
          v38 = sub_251C70F74();
          v40 = sub_251B10780(v38, v39, &v125);
          a3 = v105;

          *(v33 + 24) = v40;
          v41 = v100;
          _os_log_impl(&dword_251A6C000, v100, v101, "Could not update DocRef because of conflictResponseError. Retrying with no-cache header. Account: %s. Retries left: %ld. Error: %s", v33, 0x20u);
          v42 = v102;
          swift_arrayDestroy();
          MEMORY[0x25308E2B0](v42, -1, -1);
          MEMORY[0x25308E2B0](v33, -1, -1);
        }

        else
        {
        }

        v125 = a3;
        v122 = type metadata accessor for ClinicalSharingSyncContext(0);

        sub_251C70A24();
        sub_251C709F4();
        v106[1](v20, v18);
        v72 = swift_allocObject();
        *(v72 + 16) = 1;
        v73 = v107;
        *(v72 + 24) = v107;
        v106 = v73;
        sub_251C70964();
        v74 = MEMORY[0x277CBCD88];
        sub_251AB29D0(0, &qword_2813E21B0, MEMORY[0x277CBCD88]);
        v76 = v75;
        sub_251AB2A48(&qword_27F479410, &qword_27F479408, MEMORY[0x277CBCF38], MEMORY[0x277CBCF40]);
        sub_251AB2A48(&qword_2813E21B8, &qword_2813E21B0, v74, MEMORY[0x277CBCD90]);
        sub_251C70B94();

        v107 = MEMORY[0x277CBCCE0];
        sub_251AB2A8C(&qword_27F479458, sub_251AB2AD4, MEMORY[0x277CBCCE0]);
        v77 = v110;
        v78 = sub_251C70A94();
        (*(v109 + 8))(v10, v77);
        v125 = v78;
        sub_251AB2CCC(0);
        v79 = v111;
        v102 = v76;
        sub_251C70B54();

        v80 = swift_allocObject();
        v81 = v106;
        *(v80 + 16) = v106;
        v82 = swift_allocObject();
        *(v82 + 16) = sub_251AB37D4;
        *(v82 + 24) = v80;
        v83 = v81;
        sub_251C70964();
        sub_251AB2A8C(&qword_27F479440, sub_251AB2C00, MEMORY[0x277CBCCC0]);
        v84 = v113;
        sub_251C70B94();

        (*(v112 + 8))(v79, v84);
        v85 = v114;
        v86 = v108;
        v87 = v120;
        (*(v114 + 16))(v108, v123, v120);
        v88 = (*(v85 + 80) + 32) & ~*(v85 + 80);
        v89 = swift_allocObject();
        v90 = v105;
        *(v89 + 16) = v103;
        *(v89 + 24) = v90;
        v91 = v86;
        v92 = v87;
        (*(v85 + 32))(v89 + v88, v91, v87);
        *(v89 + ((v22 + v88 + 7) & 0xFFFFFFFFFFFFFFF8)) = v83;
        sub_251AB2A8C(&qword_27F479450, sub_251AB2D3C, v107);

        v93 = v83;
        v94 = v115;
        v95 = v118;
        v96 = v121;
        sub_251C70BA4();

        (*(v116 + 8))(v96, v95);
        sub_251AB2A8C(&qword_27F479460, sub_251AB2E48, MEMORY[0x277CBCD30]);
        v97 = v119;
        v98 = sub_251C70A94();
        (*(v117 + 8))(v94, v97);
        (*(v85 + 8))(v123, v92);
        *v104 = v98;
      }

      return;
    }

    sub_251AB2F88(v126, v127, v128, v129);
  }

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v43 = sub_251C70764();
  __swift_project_value_buffer(v43, qword_2813E8130);
  v44 = v25;

  v45 = sub_251C70744();
  v46 = sub_251C713D4();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v126 = v48;
    *v47 = 136315394;
    sub_251C70074();
    sub_251AB2A8C(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v49 = sub_251C719A4();
    v51 = sub_251B10780(v49, v50, &v126);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2080;
    v130 = v25;
    v52 = v25;
    v53 = sub_251C70F74();
    v55 = sub_251B10780(v53, v54, &v126);

    *(v47 + 14) = v55;
    _os_log_impl(&dword_251A6C000, v45, v46, "Could not update DocRef due to unknown error. Account: %s. Error: %s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v48, -1, -1);
    MEMORY[0x25308E2B0](v47, -1, -1);
  }

  swift_willThrow();
  v56 = v25;
}

void sub_251AB2978(uint64_t a1)
{
  if (!qword_27F479400)
  {
    type metadata accessor for ClinicalSharingSyncContext(255);
    v1 = sub_251C70A14();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479400);
    }
  }
}

void sub_251AB29D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ClinicalSharingSyncContext(255);
    v7 = sub_251A82284();
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_251AB2A48(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_251AB29D0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251AB2A8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251AB2AD4(uint64_t a1)
{
  if (!qword_27F479420)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_251AB29D0(255, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    v2 = MEMORY[0x277CBCF38];
    sub_251AB29D0(255, &qword_27F479408, MEMORY[0x277CBCF38]);
    sub_251AB2A48(&qword_2813E21B8, &qword_2813E21B0, v1, MEMORY[0x277CBCD90]);
    sub_251AB2A48(&qword_27F479410, &qword_27F479408, v2, MEMORY[0x277CBCF40]);
    v3 = sub_251C708D4();
    if (!v4)
    {
      atomic_store(v3, &qword_27F479420);
    }
  }
}

void sub_251AB2C00(uint64_t a1)
{
  if (!qword_27F479428)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_251AB29D0(255, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    sub_251AB2CCC(255);
    sub_251AB2A48(&qword_2813E21B8, &qword_2813E21B0, v1, MEMORY[0x277CBCD90]);
    v2 = sub_251C708B4();
    if (!v3)
    {
      atomic_store(v2, &qword_27F479428);
    }
  }
}

void sub_251AB2CCC(uint64_t a1)
{
  if (!qword_27F479430)
  {
    sub_251C6F9A4();
    type metadata accessor for ClinicalSharingSyncContext(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F479430);
    }
  }
}

void sub_251AB2D3C(uint64_t a1)
{
  if (!qword_27F479438)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_251AB29D0(255, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    sub_251AB2C00(255);
    sub_251AB2A48(&qword_2813E21B8, &qword_2813E21B0, v1, MEMORY[0x277CBCD90]);
    sub_251AB2A8C(&qword_27F479440, sub_251AB2C00, MEMORY[0x277CBCCC0]);
    v2 = sub_251C708D4();
    if (!v3)
    {
      atomic_store(v2, &qword_27F479438);
    }
  }
}

void sub_251AB2E48(uint64_t a1)
{
  if (!qword_27F479448)
  {
    sub_251AB2D3C(255);
    v1 = MEMORY[0x277CBCD88];
    sub_251AB29D0(255, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    sub_251AB2A8C(&qword_27F479450, sub_251AB2D3C, MEMORY[0x277CBCCE0]);
    sub_251AB2A48(&qword_2813E21B8, &qword_2813E21B0, v1, MEMORY[0x277CBCD90]);
    v2 = sub_251C70914();
    if (!v3)
    {
      atomic_store(v2, &qword_27F479448);
    }
  }
}

void sub_251AB2F88(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4 == 2)
  {
LABEL_4:

    return;
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return;
    }

    goto LABEL_4;
  }
}

uint64_t objectdestroy_8Tm_0()
{
  sub_251AB29D0(0, &qword_27F479408, MEMORY[0x277CBCF38]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v4 | 7);
}

void sub_251AB31B0(uint64_t a1)
{
  if (!qword_27F479468)
  {
    sub_251AB3458(255, &qword_27F479470, &qword_27F479478, &qword_27F479480, 0x277CCAD28);
    sub_251AB3264(255, &qword_27F479488, &qword_27F479490, 0x277CCAA40);
    sub_251AB32E4();
    v1 = sub_251C708B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479468);
    }
  }
}

void sub_251AB3264(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_251A8223C(255, a3, a4);
    type metadata accessor for ClinicalSharingSyncContext(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

unint64_t sub_251AB32E4()
{
  result = qword_27F479498;
  if (!qword_27F479498)
  {
    sub_251AB3458(255, &qword_27F479470, &qword_27F479478, &qword_27F479480, 0x277CCAD28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479498);
  }

  return result;
}

void sub_251AB335C(uint64_t a1)
{
  if (!qword_27F4794A0)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_251AB29D0(255, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    sub_251AB3458(255, &qword_27F4794A8, &qword_27F479488, &qword_27F479490, 0x277CCAA40);
    sub_251AB2A48(&qword_2813E21B8, &qword_2813E21B0, v1, MEMORY[0x277CBCD90]);
    sub_251AB34D4();
    v2 = sub_251C708D4();
    if (!v3)
    {
      atomic_store(v2, &qword_27F4794A0);
    }
  }
}

void sub_251AB3458(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    sub_251AB3264(255, a3, a4, a5);
    sub_251A82284();
    v6 = sub_251C70974();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_251AB34D4()
{
  result = qword_27F4794B0;
  if (!qword_27F4794B0)
  {
    sub_251AB3458(255, &qword_27F4794A8, &qword_27F479488, &qword_27F479490, 0x277CCAA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4794B0);
  }

  return result;
}

uint64_t sub_251AB35FC(uint64_t a1)
{
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = sub_251C70764();
  __swift_project_value_buffer(v1, qword_2813E8130);

  v2 = sub_251C70744();
  v3 = sub_251C713C4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    sub_251C70074();
    sub_251AB2A8C(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v6 = sub_251C719A4();
    v8 = sub_251B10780(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_251A6C000, v2, v3, "Successfully updated DocRef. Account: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x25308E2B0](v5, -1, -1);
    MEMORY[0x25308E2B0](v4, -1, -1);
  }

  return sub_251B265A4();
}

uint64_t sub_251AB37D8(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = type metadata accessor for CatalogEntry(0);
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  sub_251AB4C94(0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251AB38F4, 0, 0);
}

uint64_t sub_251AB38F4()
{
  v13 = v0;
  sub_251A823B4(v0[18] + 8, (v0 + 2));
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = sub_251C70764();
  v0[27] = __swift_project_value_buffer(v1, qword_2813E8130);
  v2 = sub_251C70744();
  v3 = sub_251C713B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v0[16] = &type metadata for IssuerDirectoryDownloadTask;
    sub_251AB5FE8();
    v6 = sub_251C70F74();
    v8 = sub_251B10780(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_251A6C000, v2, v3, "%s: downloading catalog", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x25308E2B0](v5, -1, -1);
    MEMORY[0x25308E2B0](v4, -1, -1);
  }

  v9 = *v0[18];
  v10 = swift_task_alloc();
  v0[28] = v10;
  *v10 = v0;
  v10[1] = sub_251AB3AE8;

  return sub_251A835F8((v0 + 11), v9);
}

uint64_t sub_251AB3AE8()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_251AB4878;
  }

  else
  {
    v2 = sub_251AB3BFC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251AB3BFC()
{
  v1 = v0[11];
  v0[30] = v1;
  v0[12] = v1;
  v2 = swift_task_alloc();
  v0[31] = v2;
  *v2 = v0;
  v2[1] = sub_251AB3CA8;
  v3 = v0[26];

  return sub_251AB4CEC(v3, v0 + 12);
}

uint64_t sub_251AB3CA8(uint64_t a1, char a2)
{
  v4 = *v3;
  *(v4 + 360) = a2;
  *(v4 + 256) = a1;
  *(v4 + 264) = v2;

  if (v2)
  {
    v5 = sub_251AB4924;
  }

  else
  {
    v5 = sub_251AB3DC0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_251AB3DC0()
{
  v22 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  sub_251AB6030(*(v0 + 208), v1, sub_251AB4C94);
  v4 = *(v3 + 48);
  *(v0 + 272) = v4;
  *(v0 + 280) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    v5 = *(v0 + 360);
    v6 = *(v0 + 256);
    sub_251AB5F88(*(v0 + 200), sub_251AB4C94);
    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    v8 = MEMORY[0x277D84F90];
    *(v0 + 304) = v7;
    *(v0 + 312) = v8;
    *(v0 + 104) = *(v0 + 240);
    v9 = swift_task_alloc();
    *(v0 + 320) = v9;
    *v9 = v0;
    v9[1] = sub_251AB4260;
    v10 = *(v0 + 192);

    return sub_251AB55D4(v10, (v0 + 104));
  }

  else
  {
    sub_251AB5F24(*(v0 + 200), *(v0 + 176));
    v12 = sub_251C70744();
    v13 = sub_251C713B4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      *(v0 + 120) = &type metadata for IssuerDirectoryDownloadTask;
      sub_251AB5FE8();
      v16 = sub_251C70F74();
      v18 = sub_251B10780(v16, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_251A6C000, v12, v13, "%s: downloading issuer directory", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x25308E2B0](v15, -1, -1);
      MEMORY[0x25308E2B0](v14, -1, -1);
    }

    v19 = swift_task_alloc();
    *(v0 + 288) = v19;
    *v19 = v0;
    v19[1] = sub_251AB4078;
    v20 = *(v0 + 176);

    return sub_251A8413C(v0 + 72, v20);
  }
}

uint64_t sub_251AB4078()
{
  *(*v1 + 296) = v0;

  if (v0)
  {

    v2 = sub_251AB49DC;
  }

  else
  {
    v2 = sub_251AB4194;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251AB4194()
{
  sub_251AB5F88(v0[22], type metadata accessor for CatalogEntry);
  v1 = v0[10];
  v0[38] = v0[9];
  v0[39] = v1;
  v0[13] = v0[30];
  v2 = swift_task_alloc();
  v0[40] = v2;
  *v2 = v0;
  v2[1] = sub_251AB4260;
  v3 = v0[24];

  return sub_251AB55D4(v3, v0 + 13);
}

uint64_t sub_251AB4260(uint64_t a1, char a2)
{
  v4 = *v3;
  *(v4 + 361) = a2;
  *(v4 + 328) = a1;
  *(v4 + 336) = v2;

  if (v2)
  {
    v5 = sub_251AB4AC4;
  }

  else
  {
    v5 = sub_251AB4388;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_251AB4388()
{
  v24 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 184);
  v3 = *(v0 + 152);
  sub_251AB6030(*(v0 + 192), v2, sub_251AB4C94);
  if (v1(v2, 1, v3) == 1)
  {
    v4 = *(v0 + 361);
    v5 = *(v0 + 328);
    v6 = *(v0 + 208);
    v7 = *(v0 + 192);
    sub_251AB5F88(*(v0 + 184), sub_251AB4C94);
    if (v4)
    {
      v8 = 0;
    }

    else
    {
      v8 = v5;
    }

    sub_251AB5F88(v7, sub_251AB4C94);
    sub_251AB5F88(v6, sub_251AB4C94);
    sub_251AB5ED0(v0 + 16);
    v9 = *(v0 + 312);
    v10 = *(v0 + 136);
    *v10 = *(v0 + 304);
    v10[1] = v9;
    v11 = MEMORY[0x277D84F90];
    v10[2] = v8;
    v10[3] = v11;

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    sub_251AB5F24(*(v0 + 184), *(v0 + 168));
    v14 = sub_251C70744();
    v15 = sub_251C713B4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      *(v0 + 112) = &type metadata for IssuerDirectoryDownloadTask;
      sub_251AB5FE8();
      v18 = sub_251C70F74();
      v20 = sub_251B10780(v18, v19, &v23);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_251A6C000, v14, v15, "%s: downloading public keys", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x25308E2B0](v17, -1, -1);
      MEMORY[0x25308E2B0](v16, -1, -1);
    }

    v21 = swift_task_alloc();
    *(v0 + 344) = v21;
    *v21 = v0;
    v21[1] = sub_251AB464C;
    v22 = *(v0 + 168);

    return sub_251A84A64(v0 + 56, v22);
  }
}

uint64_t sub_251AB464C()
{
  *(*v1 + 352) = v0;

  if (v0)
  {

    v2 = sub_251AB4B98;
  }

  else
  {
    v2 = sub_251AB4768;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251AB4768()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  sub_251AB5F88(*(v0 + 168), type metadata accessor for CatalogEntry);
  sub_251AB5F88(v2, sub_251AB4C94);
  sub_251AB5F88(v1, sub_251AB4C94);
  sub_251AB5ED0(v0 + 16);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 136);
  *v5 = *(v0 + 304);
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_251AB4878()
{
  sub_251AB5ED0(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_251AB4924()
{
  sub_251AB5ED0(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_251AB49DC()
{
  v1 = v0[26];
  sub_251AB5F88(v0[22], type metadata accessor for CatalogEntry);
  sub_251AB5F88(v1, sub_251AB4C94);
  sub_251AB5ED0((v0 + 2));

  v2 = v0[1];

  return v2();
}

uint64_t sub_251AB4AC4()
{
  sub_251AB5F88(*(v0 + 208), sub_251AB4C94);
  sub_251AB5ED0(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_251AB4B98()
{
  v1 = v0[26];
  v2 = v0[24];
  sub_251AB5F88(v0[21], type metadata accessor for CatalogEntry);
  sub_251AB5F88(v2, sub_251AB4C94);
  sub_251AB5F88(v1, sub_251AB4C94);
  sub_251AB5ED0((v0 + 2));

  v3 = v0[1];

  return v3();
}

void sub_251AB4C94(uint64_t a1)
{
  if (!qword_27F4794C8)
  {
    type metadata accessor for CatalogEntry(255);
    v1 = sub_251C71574();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4794C8);
    }
  }
}

uint64_t sub_251AB4CEC(uint64_t a1, uint64_t *a2)
{
  v3[21] = a1;
  v3[22] = v2;
  v5 = type metadata accessor for CatalogEntry(0);
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[28] = v6;
  v3[29] = v7;

  return MEMORY[0x2822009F8](sub_251AB4DD8, 0, 0);
}

uint64_t sub_251AB4DD8(void *a1)
{
  v2 = v1[29];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v1[26];
    v6 = v1[24];
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        return MEMORY[0x282200938](a1);
      }

      v7 = v1[26];
      sub_251AB6030(v1[29] + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4, v7, type metadata accessor for CatalogEntry);
      v8 = *v7 == 0xD000000000000014 && 0x8000000251C8A190 == *(v5 + 8);
      if (v8 || (sub_251C719D4() & 1) != 0)
      {
        break;
      }

      ++v4;
      a1 = sub_251AB5F88(v1[26], type metadata accessor for CatalogEntry);
      if (v3 == v4)
      {
        goto LABEL_10;
      }
    }

    v13 = v1[27];
    v12 = v1[28];
    v14 = v1[22];
    sub_251AB5F24(v1[26], v13);
    sub_251AB5F24(v13, v12);
    v15 = *(v14 + 48);
    v1[2] = v1;
    v1[7] = v1 + 18;
    v1[3] = sub_251AB5080;
    v16 = swift_continuation_init();
    sub_251AB6098(0);
    v1[17] = v17;
    v1[10] = MEMORY[0x277D85DD0];
    v1[11] = 1107296256;
    v1[12] = sub_251AB5E04;
    v1[13] = &block_descriptor_10;
    v1[14] = v16;
    [v15 fetchCurrentRegistryIssuerContentVersionWithCompletion_];
    a1 = v1 + 2;

    return MEMORY[0x282200938](a1);
  }

  else
  {
LABEL_10:
    sub_251A8578C();
    swift_allocError();
    *v9 = 3;
    swift_willThrow();

    v10 = v1[1];

    return v10();
  }
}

uint64_t sub_251AB5080()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_251AB551C;
  }

  else
  {
    v2 = sub_251AB5190;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251AB5190()
{
  v32 = v0;
  v1 = v0[28];
  v2 = v0[18];
  v3 = [v2 integerValue];

  v4 = *(v1 + 16);
  if (v3 >= v4)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v7 = v0[28];
    v8 = v0[25];
    v9 = sub_251C70764();
    __swift_project_value_buffer(v9, qword_2813E8130);
    sub_251AB6030(v7, v8, type metadata accessor for CatalogEntry);
    v10 = sub_251C70744();
    v11 = sub_251C713F4();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[28];
    v14 = v0[25];
    if (v12)
    {
      v15 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v15 = 136315906;
      v0[19] = &type metadata for IssuerDirectoryDownloadTask;
      sub_251AB5FE8();
      v16 = sub_251C70F74();
      v18 = sub_251B10780(v16, v17, &v31);

      *(v15 + 4) = v18;
      v29 = v13;
      *(v15 + 12) = 2080;
      v0[20] = v3;
      v19 = sub_251C719A4();
      v21 = sub_251B10780(v19, v20, &v31);

      *(v15 + 14) = v21;
      *(v15 + 22) = 2080;
      if (v4 == v3)
      {
        v22 = 0x6F74206C61757165;
      }

      else
      {
        v22 = 0x2072657461657267;
      }

      if (v4 == v3)
      {
        v23 = 0xE800000000000000;
      }

      else
      {
        v23 = 0xEC0000006E616874;
      }

      v24 = sub_251B10780(v22, v23, &v31);

      *(v15 + 24) = v24;
      *(v15 + 32) = 2048;
      v25 = *(v14 + 16);
      sub_251AB5F88(v14, type metadata accessor for CatalogEntry);
      *(v15 + 34) = v25;
      _os_log_impl(&dword_251A6C000, v10, v11, "%s: current issuer registry content version (%s) is %s the latest catalog version (%ld). SKIPPING Download", v15, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v30, -1, -1);
      MEMORY[0x25308E2B0](v15, -1, -1);

      v26 = v29;
    }

    else
    {
      sub_251AB5F88(v0[25], type metadata accessor for CatalogEntry);

      v26 = v13;
    }

    sub_251AB5F88(v26, type metadata accessor for CatalogEntry);
    v5 = 1;
    v6 = v3;
  }

  else
  {
    sub_251AB5F24(v0[28], v0[21]);
    v5 = 0;
    v6 = 0;
  }

  (*(v0[24] + 56))(v0[21], v5, 1, v0[23]);

  v27 = v0[1];

  return v27(v6, v3 < v4);
}

uint64_t sub_251AB551C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 224);
  swift_willThrow();
  sub_251AB5F88(v3, type metadata accessor for CatalogEntry);

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_251AB55D4(uint64_t a1, uint64_t *a2)
{
  v3[21] = a1;
  v3[22] = v2;
  v5 = type metadata accessor for CatalogEntry(0);
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[28] = v6;
  v3[29] = v7;

  return MEMORY[0x2822009F8](sub_251AB56C0, 0, 0);
}

uint64_t sub_251AB56C0(void *a1)
{
  v2 = v1[29];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v1[26];
    v6 = v1[24];
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        return MEMORY[0x282200938](a1);
      }

      v7 = v1[26];
      sub_251AB6030(v1[29] + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4, v7, type metadata accessor for CatalogEntry);
      v8 = *v7 == 0xD000000000000012 && 0x8000000251C8A150 == *(v5 + 8);
      if (v8 || (sub_251C719D4() & 1) != 0)
      {
        break;
      }

      ++v4;
      a1 = sub_251AB5F88(v1[26], type metadata accessor for CatalogEntry);
      if (v3 == v4)
      {
        goto LABEL_10;
      }
    }

    v13 = v1[27];
    v12 = v1[28];
    v14 = v1[22];
    sub_251AB5F24(v1[26], v13);
    sub_251AB5F24(v13, v12);
    v15 = *(v14 + 48);
    v1[2] = v1;
    v1[7] = v1 + 18;
    v1[3] = sub_251AB5968;
    v16 = swift_continuation_init();
    sub_251AB6098(0);
    v1[17] = v17;
    v1[10] = MEMORY[0x277D85DD0];
    v1[11] = 1107296256;
    v1[12] = sub_251AB5E04;
    v1[13] = &block_descriptor;
    v1[14] = v16;
    [v15 fetchCurrentRegistryPublicKeyContentVersionWithCompletion_];
    a1 = v1 + 2;

    return MEMORY[0x282200938](a1);
  }

  else
  {
LABEL_10:
    sub_251A8578C();
    swift_allocError();
    *v9 = 5;
    swift_willThrow();

    v10 = v1[1];

    return v10();
  }
}

uint64_t sub_251AB5968()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_251AB6234;
  }

  else
  {
    v2 = sub_251AB5A78;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251AB5A78()
{
  v32 = v0;
  v1 = v0[28];
  v2 = v0[18];
  v3 = [v2 integerValue];

  v4 = *(v1 + 16);
  if (v3 >= v4)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v7 = v0[28];
    v8 = v0[25];
    v9 = sub_251C70764();
    __swift_project_value_buffer(v9, qword_2813E8130);
    sub_251AB6030(v7, v8, type metadata accessor for CatalogEntry);
    v10 = sub_251C70744();
    v11 = sub_251C713F4();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[28];
    v14 = v0[25];
    if (v12)
    {
      v15 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v15 = 136315906;
      v0[19] = &type metadata for IssuerDirectoryDownloadTask;
      sub_251AB5FE8();
      v16 = sub_251C70F74();
      v18 = sub_251B10780(v16, v17, &v31);

      *(v15 + 4) = v18;
      v29 = v13;
      *(v15 + 12) = 2080;
      v0[20] = v3;
      v19 = sub_251C719A4();
      v21 = sub_251B10780(v19, v20, &v31);

      *(v15 + 14) = v21;
      *(v15 + 22) = 2080;
      if (v4 == v3)
      {
        v22 = 0x6F74206C61757165;
      }

      else
      {
        v22 = 0x2072657461657267;
      }

      if (v4 == v3)
      {
        v23 = 0xE800000000000000;
      }

      else
      {
        v23 = 0xEC0000006E616874;
      }

      v24 = sub_251B10780(v22, v23, &v31);

      *(v15 + 24) = v24;
      *(v15 + 32) = 2048;
      v25 = *(v14 + 16);
      sub_251AB5F88(v14, type metadata accessor for CatalogEntry);
      *(v15 + 34) = v25;
      _os_log_impl(&dword_251A6C000, v10, v11, "%s: current public key registry content version (%s) is %s the latest catalog version (%ld). SKIPPING Download", v15, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v30, -1, -1);
      MEMORY[0x25308E2B0](v15, -1, -1);

      v26 = v29;
    }

    else
    {
      sub_251AB5F88(v0[25], type metadata accessor for CatalogEntry);

      v26 = v13;
    }

    sub_251AB5F88(v26, type metadata accessor for CatalogEntry);
    v5 = 1;
    v6 = v3;
  }

  else
  {
    sub_251AB5F24(v0[28], v0[21]);
    v5 = 0;
    v6 = 0;
  }

  (*(v0[24] + 56))(v0[21], v5, 1, v0[23]);

  v27 = v0[1];

  return v27(v6, v3 < v4);
}

uint64_t sub_251AB5E04(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_251A82284();
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_251AB5F24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatalogEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AB5F88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_251AB5FE8()
{
  result = qword_27F4794D0;
  if (!qword_27F4794D0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F4794D0);
  }

  return result;
}

uint64_t sub_251AB6030(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_251AB6098(uint64_t a1)
{
  if (!qword_27F4794D8)
  {
    sub_251AB6108();
    sub_251A82284();
    v1 = sub_251C71224();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4794D8);
    }
  }
}

unint64_t sub_251AB6108()
{
  result = qword_2813E1D28;
  if (!qword_2813E1D28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813E1D28);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_251AB6188(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_251AB61D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_251AB623C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1B50);
  __swift_project_value_buffer(v0, qword_27F4A1B50);
  sub_251AB9AB0(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_251C75420;
  v5 = v21 + v4 + *(v2 + 56);
  *(v21 + v4) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_251C706B4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v21 + v4 + v3 + *(v2 + 56);
  *(v21 + v4 + v3) = 2;
  *v9 = "health_institute_id";
  *(v9 + 8) = 19;
  *(v9 + 16) = 2;
  v8();
  v10 = (v21 + v4 + 2 * v3);
  v11 = v10 + *(v2 + 56);
  *v10 = 3;
  *v11 = "patient_id";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v21 + v4 + 3 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 4;
  *v13 = "date_last_modified";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = (v21 + v4 + 4 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 5;
  *v15 = "references";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v21 + v4 + 5 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 6;
  *v17 = "data";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  v18 = (v21 + v4 + 6 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 7;
  *v19 = "raw_data";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  return sub_251C706C4();
}

uint64_t sub_251AB6564()
{
  type metadata accessor for PBPlainText._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
  v2 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  qword_27F4794E0 = v0;
  return result;
}

uint64_t sub_251AB6604(uint64_t a1)
{
  v18 = type metadata accessor for PBPlainText.OneOf_Plaintext;
  sub_251AB9AB0(0, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  v6 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
  v7 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  swift_beginAccess();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  swift_beginAccess();
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v10;
  *(v1 + 40) = v11;
  swift_beginAccess();
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v12;
  *(v1 + 56) = v13;

  swift_beginAccess();
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 64) = v14;
  *(v1 + 72) = v15;

  v16 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
  swift_beginAccess();
  sub_251AB9C18(a1 + v16, v5, &qword_27F479500, v18);

  swift_beginAccess();
  sub_251AB9B14(v5, v1 + v6);
  swift_endAccess();
  return v1;
}

uint64_t sub_251AB68A8()
{

  sub_251AB9BA8(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);

  return swift_deallocClassInstance();
}

void sub_251AB6968(uint64_t a1)
{
  sub_251AB9AB0(319, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_251AB6AA8(uint64_t a1)
{
  result = sub_251C703B4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PBPlainText._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_251AB6B2C(uint64_t a1)
{
  result = type metadata accessor for PBReferences(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PBTypedData(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for PBRawData(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_251AB6BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for PBPlainText(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for PBPlainText._StorageClass(0);
    swift_allocObject();
    v10 = sub_251AB6604(v11);
    *(v4 + v8) = v10;
  }

  return sub_251AB6C5C(v10, a1, a2, a3);
}

uint64_t sub_251AB6C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_251C70444();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          sub_251AB6DB4(a2, a1, a3, a4);
          break;
        case 2:
          sub_251AB6E48(a2, a1, a3, a4);
          break;
        case 3:
          sub_251AB6ECC(a2, a1, a3, a4);
          break;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        sub_251AB7674(a1, a2, a3, a4);
      }

      else if (result == 7)
      {
        sub_251AB7D18(a1, a2, a3, a4);
      }
    }

    else if (result == 4)
    {
      sub_251AB6F50(a2, a1, a3, a4);
    }

    else
    {
      sub_251AB6FD4(a1, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_251AB6DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_251AB99F4();
  sub_251C70494();
  return swift_endAccess();
}

uint64_t sub_251AB6E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251AB6ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251AB6F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251AB6FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for PBReferences(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v49 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v48 = &v42 - v9;
  v51 = type metadata accessor for PBPlainText.OneOf_Plaintext;
  v10 = MEMORY[0x277D83D88];
  sub_251AB9AB0(0, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext, MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v45 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  sub_251AB9AB0(0, &qword_27F479558, type metadata accessor for PBReferences, v10);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v52 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v42 - v26;
  v50 = v6;
  v28 = *(v6 + 56);
  v54 = v5;
  v29 = v5;
  v30 = v17;
  v47 = v28;
  v28(&v42 - v26, 1, 1, v29);
  v31 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
  swift_beginAccess();
  v46 = a1;
  v43 = v31;
  sub_251AB9C18(a1 + v31, v15, &qword_27F479500, v51);
  v42 = v30;
  LODWORD(v51) = (*(v30 + 48))(v15, 1, v16);
  v44 = v16;
  if (v51 == 1)
  {
    sub_251AB9BA8(v15, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
LABEL_5:
    v32 = v54;
    goto LABEL_6;
  }

  sub_251AB9A48(v15, v22, type metadata accessor for PBPlainText.OneOf_Plaintext);
  sub_251AB9A48(v22, v20, type metadata accessor for PBPlainText.OneOf_Plaintext);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_251ABA428(v20, type metadata accessor for PBPlainText.OneOf_Plaintext);
    goto LABEL_5;
  }

  sub_251AB9BA8(v27, &qword_27F479558, type metadata accessor for PBReferences);
  v36 = v48;
  sub_251AB9A48(v20, v48, type metadata accessor for PBReferences);
  sub_251AB9A48(v36, v27, type metadata accessor for PBReferences);
  v32 = v54;
  v47(v27, 0, 1, v54);
LABEL_6:
  v33 = v52;
  sub_251AB991C(&qword_27F478F08, type metadata accessor for PBReferences, &unk_251C7499C);
  v34 = v53;
  sub_251C70564();
  if (v34)
  {
    return sub_251AB9BA8(v27, &qword_27F479558, type metadata accessor for PBReferences);
  }

  sub_251AB9C18(v27, v33, &qword_27F479558, type metadata accessor for PBReferences);
  if ((*(v50 + 48))(v33, 1, v32) == 1)
  {
    sub_251AB9BA8(v27, &qword_27F479558, type metadata accessor for PBReferences);
    return sub_251AB9BA8(v33, &qword_27F479558, type metadata accessor for PBReferences);
  }

  else
  {
    v37 = v49;
    sub_251AB9A48(v33, v49, type metadata accessor for PBReferences);
    if (v51 != 1)
    {
      sub_251C70454();
    }

    sub_251AB9BA8(v27, &qword_27F479558, type metadata accessor for PBReferences);
    v38 = v45;
    sub_251AB9A48(v37, v45, type metadata accessor for PBReferences);
    v39 = v44;
    swift_storeEnumTagMultiPayload();
    (*(v42 + 56))(v38, 0, 1, v39);
    v40 = v46;
    v41 = v43;
    swift_beginAccess();
    sub_251AB9B14(v38, v40 + v41);
    return swift_endAccess();
  }
}

uint64_t sub_251AB7674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for PBTypedData(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v42 - v9;
  v51 = type metadata accessor for PBPlainText.OneOf_Plaintext;
  v10 = MEMORY[0x277D83D88];
  sub_251AB9AB0(0, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext, MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v45 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  sub_251AB9AB0(0, &qword_27F4793C8, type metadata accessor for PBTypedData, v10);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v52 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v42 - v26;
  v50 = v6;
  v28 = *(v6 + 56);
  v54 = v5;
  v29 = v5;
  v30 = v17;
  v48 = v28;
  v28(&v42 - v26, 1, 1, v29);
  v31 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
  swift_beginAccess();
  v46 = a1;
  v44 = v31;
  sub_251AB9C18(a1 + v31, v15, &qword_27F479500, v51);
  v43 = v30;
  LODWORD(v51) = (*(v30 + 48))(v15, 1, v16);
  if (v51 == 1)
  {
    sub_251AB9BA8(v15, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
    v32 = v16;
  }

  else
  {
    sub_251AB9A48(v15, v22, type metadata accessor for PBPlainText.OneOf_Plaintext);
    sub_251AB9A48(v22, v20, type metadata accessor for PBPlainText.OneOf_Plaintext);
    v32 = v16;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_251AB9BA8(v27, &qword_27F4793C8, type metadata accessor for PBTypedData);
      v33 = v49;
      sub_251AB9A48(v20, v49, type metadata accessor for PBTypedData);
      sub_251AB9A48(v33, v27, type metadata accessor for PBTypedData);
      v34 = v54;
      v48(v27, 0, 1, v54);
      goto LABEL_7;
    }

    sub_251ABA428(v20, type metadata accessor for PBPlainText.OneOf_Plaintext);
  }

  v34 = v54;
LABEL_7:
  v35 = v52;
  sub_251AB991C(&qword_27F478F48, type metadata accessor for PBTypedData, &unk_251C74C6C);
  v36 = v53;
  sub_251C70564();
  if (v36)
  {
    return sub_251AB9BA8(v27, &qword_27F4793C8, type metadata accessor for PBTypedData);
  }

  sub_251AB9C18(v27, v35, &qword_27F4793C8, type metadata accessor for PBTypedData);
  if ((*(v50 + 48))(v35, 1, v34) == 1)
  {
    sub_251AB9BA8(v27, &qword_27F4793C8, type metadata accessor for PBTypedData);
    return sub_251AB9BA8(v35, &qword_27F4793C8, type metadata accessor for PBTypedData);
  }

  else
  {
    v38 = v47;
    sub_251AB9A48(v35, v47, type metadata accessor for PBTypedData);
    if (v51 != 1)
    {
      sub_251C70454();
    }

    sub_251AB9BA8(v27, &qword_27F4793C8, type metadata accessor for PBTypedData);
    v39 = v45;
    sub_251AB9A48(v38, v45, type metadata accessor for PBTypedData);
    swift_storeEnumTagMultiPayload();
    (*(v43 + 56))(v39, 0, 1, v32);
    v40 = v46;
    v41 = v44;
    swift_beginAccess();
    sub_251AB9B14(v39, v40 + v41);
    return swift_endAccess();
  }
}