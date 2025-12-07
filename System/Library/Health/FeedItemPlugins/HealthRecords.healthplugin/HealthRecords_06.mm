uint64_t sub_29D53B7C4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HealthRecordsGeneratorContext(0);
  v97 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v5);
  v95 = v6;
  v102 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D53F524(0, &qword_2A1A19628, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v77 - v9;
  v87 = sub_29D5B13CC();
  v85 = *(v87 - 8);
  MEMORY[0x2A1C7C4A8](v87, v11);
  v84 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_29D5B13EC();
  v83 = *(v86 - 8);
  MEMORY[0x2A1C7C4A8](v86, v13);
  v81 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D53F588(0);
  v80 = v15;
  v79 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v16);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D53F6E8(0);
  v89 = *(v19 - 8);
  v90 = v19;
  MEMORY[0x2A1C7C4A8](v19, v20);
  v88 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D53F87C(0);
  v92 = *(v22 - 8);
  v93 = v22;
  MEMORY[0x2A1C7C4A8](v22, v23);
  v91 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D53F958(0);
  v100 = v25;
  v98 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25, v26);
  v94 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D53FA28(0);
  v101 = v28;
  v99 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28, v29);
  v96 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_29D5B371C();
  v32 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31, v33);
  v35 = &v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36EC();
  v36 = sub_29D5B370C();
  v37 = sub_29D5B429C();
  v38 = os_log_type_enabled(v36, v37);
  v103 = a1;
  v82 = v2;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v77 = v4;
    v40 = v39;
    v41 = swift_slowAlloc();
    v78 = v10;
    v42 = v41;
    v105 = v41;
    *v40 = 136315138;
    v43 = sub_29D5B4DFC();
    v45 = sub_29D501890(v43, v44, &v105);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_29D48C000, v36, v37, "%s Account sharing generator - make publisher", v40, 0xCu);
    sub_29D48F668(v42);
    v46 = v42;
    v10 = v78;
    a1 = v103;
    MEMORY[0x29ED5FB80](v46, -1, -1);
    v47 = v40;
    v4 = v77;
    MEMORY[0x29ED5FB80](v47, -1, -1);
  }

  (*(v32 + 8))(v35, v31);
  v48 = *(a1 + *(v4 + 20));
  *(swift_allocObject() + 16) = v48;
  v49 = MEMORY[0x29EDB8AD0];
  sub_29D53F7D4(0, &qword_2A1A165A8, MEMORY[0x29EDB8AD0]);
  sub_29D53F6A4(&qword_2A1A165B0, &qword_2A1A165A8, v49, MEMORY[0x29EDB8AD8]);
  v50 = v48;
  sub_29D5B3A9C();
  sub_29D53FD68(&qword_2A1A16530, sub_29D53F588, MEMORY[0x29EDB8AE8]);
  v51 = v80;
  v52 = sub_29D5B3B1C();
  (*(v79 + 8))(v18, v51);
  v105 = v52;
  sub_29D5B143C();
  sub_29D53F524(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v53 = sub_29D5B104C();
  v54 = *(v53 - 8);
  v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_29D5B62A0;
  (*(v54 + 104))(v56 + v55, *MEMORY[0x29EDC36E8], v53);
  (*(v85 + 104))(v84, *MEMORY[0x29EDC3898], v87);
  v57 = v81;
  sub_29D5B13DC();
  v58 = sub_29D5B146C();
  (*(v83 + 8))(v57, v86);
  v104 = v58;
  v59 = sub_29D5B43BC();
  (*(*(v59 - 8) + 56))(v10, 1, 1, v59);
  v60 = MEMORY[0x29EDB89F8];
  sub_29D53F7D4(0, &qword_2A1A16738, MEMORY[0x29EDB89F8]);
  sub_29D48F51C(0, &qword_2A1A1A420, 0x29EDCA548);
  v87 = MEMORY[0x29EDB8A00];
  sub_29D53F6A4(&qword_2A1A16740, &qword_2A1A16738, v60, MEMORY[0x29EDB8A00]);
  sub_29D5127AC();
  v61 = v88;
  sub_29D5B3C1C();
  sub_29D53FCF8(v10, &qword_2A1A19628, MEMORY[0x29EDCA298]);

  v62 = v102;
  sub_29D499E5C(a1, v102);
  v63 = (*(v97 + 80) + 16) & ~*(v97 + 80);
  v64 = (v95 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  v97 = type metadata accessor for HealthRecordsGeneratorContext;
  sub_29D53FDB0(v62, v65 + v63, type metadata accessor for HealthRecordsGeneratorContext);
  v66 = v82;
  *(v65 + v64) = v82;
  *(v65 + ((v64 + 15) & 0xFFFFFFFFFFFFFFF8)) = v66;
  sub_29D53F524(0, &qword_2A1A16468, MEMORY[0x29EDC3840], MEMORY[0x29EDC9A40]);
  sub_29D53FD68(&qword_2A1A16890, sub_29D53F6E8, MEMORY[0x29EDB89E8]);
  v67 = v90;
  v68 = v91;
  sub_29D5B3B7C();

  (*(v89 + 8))(v61, v67);
  sub_29D499E5C(v103, v62);
  v69 = swift_allocObject();
  sub_29D53FDB0(v62, v69 + v63, v97);
  *(v69 + v64) = v66;
  sub_29D4CFFEC(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  v70 = v93;
  v71 = v94;
  sub_29D5B383C();

  (*(v92 + 8))(v68, v70);
  *(swift_allocObject() + 16) = v66;
  sub_29D4B2D8C(0);
  sub_29D53FD68(&qword_2A1A16B40, sub_29D53F958, MEMORY[0x29EDB8990]);
  sub_29D53FD68(&qword_2A1A16780, sub_29D4B2D8C, v87);
  v72 = v96;
  v73 = v100;
  sub_29D5B3B8C();

  (*(v98 + 8))(v71, v73);
  sub_29D53FD68(&qword_2A1A16D28, sub_29D53FA28, MEMORY[0x29EDB8928]);
  v74 = v101;
  v75 = sub_29D5B3B1C();
  (*(v99 + 8))(v72, v74);
  return v75;
}

void *sub_29D53C4FC@<X0>(unint64_t *a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, void *a5@<X8>)
{
  v86 = a4;
  v89 = a3;
  v90 = a5;
  v7 = sub_29D5B371C();
  v8 = *(v7 - 8);
  v87 = v7;
  v88 = v8;
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v10, v13);
  v83 = &v83 - v15;
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v84 = &v83 - v18;
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = &v83 - v20;
  sub_29D53F524(0, qword_2A1A19830, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  v24 = MEMORY[0x2A1C7C4A8](v22 - 8, v23);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24, v27);
  v29 = &v83 - v28;
  v30 = sub_29D5B134C();
  v85 = *(v30 - 8);
  v32 = MEMORY[0x2A1C7C4A8](v30, v31);
  v34 = &v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x2A1C7C4A8](v32, v35);
  v38 = &v83 - v37;
  MEMORY[0x2A1C7C4A8](v36, v39);
  v41 = &v83 - v40;
  v42 = *a1;
  if (!v42)
  {
    sub_29D5B36CC();
    v56 = sub_29D5B370C();
    v57 = sub_29D5B429C();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v91 = v59;
      *v58 = 136315138;
      v60 = sub_29D5B4DFC();
      v62 = sub_29D501890(v60, v61, &v91);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_29D48C000, v56, v57, "[%s] accounts publisher returned nil", v58, 0xCu);
      sub_29D48F668(v59);
      MEMORY[0x29ED5FB80](v59, -1, -1);
      MEMORY[0x29ED5FB80](v58, -1, -1);
    }

    result = (*(v88 + 8))(v12, v87);
    goto LABEL_22;
  }

  v44 = [*&a2[*(type metadata accessor for HealthRecordsGeneratorContext(0) + 20)] supportsClinicalSharing];
  if (v42 >> 62)
  {
    v45 = sub_29D5B485C();
  }

  else
  {
    v45 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (((v45 == 0) & v44) != 1)
  {
    MEMORY[0x2A1C7C4A8](v45, v43);
    *(&v83 - 4) = v89;
    *(&v83 - 3) = a2;
    *(&v83 - 2) = v86;
    result = sub_29D58BA44(sub_29D53FC84, (&v83 - 6), v42);
    v63 = result;
    if (result[2])
    {
      if (!v44)
      {
        goto LABEL_23;
      }

      v64 = sub_29D5B143C();
      sub_29D53CE18(0, v64, v26);

      v65 = v85;
      if ((*(v85 + 48))(v26, 1, v30) != 1)
      {
        v80 = *(v65 + 32);
        v80(v38, v26, v30);
        (*(v65 + 16))(v34, v38, v30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_29D515230(0, v63[2] + 1, 1, v63);
        }

        v82 = v63[2];
        v81 = v63[3];
        if (v82 >= v81 >> 1)
        {
          v63 = sub_29D515230((v81 > 1), v82 + 1, 1, v63);
        }

        (*(v65 + 8))(v38, v30);
        v63[2] = v82 + 1;
        result = (v80)(v63 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v82, v34, v30);
        goto LABEL_23;
      }

      sub_29D53FCF8(v26, qword_2A1A19830, MEMORY[0x29EDC3840]);
      v66 = v83;
      sub_29D5B36CC();
      v67 = sub_29D5B370C();
      v68 = sub_29D5B429C();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v91 = v70;
        *v69 = 136315138;
        v71 = sub_29D5B4DFC();
        v73 = sub_29D501890(v71, v72, &v91);

        *(v69 + 4) = v73;
        v74 = "[%s] Could not make onboarding tile feed item";
LABEL_20:
        _os_log_impl(&dword_29D48C000, v67, v68, v74, v69, 0xCu);
        sub_29D48F668(v70);
        MEMORY[0x29ED5FB80](v70, -1, -1);
        MEMORY[0x29ED5FB80](v69, -1, -1);
      }
    }

    else
    {

      v66 = v84;
      sub_29D5B36CC();
      v67 = sub_29D5B370C();
      v68 = sub_29D5B429C();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v91 = v70;
        *v69 = 136315138;
        v77 = sub_29D5B4DFC();
        v79 = sub_29D501890(v77, v78, &v91);

        *(v69 + 4) = v79;
        v74 = "[%s] failed to make any sharing account feed items";
        goto LABEL_20;
      }
    }

    result = (*(v88 + 8))(v66, v87);
LABEL_22:
    v63 = MEMORY[0x29EDCA190];
    goto LABEL_23;
  }

  v46 = sub_29D5B143C();
  sub_29D53CE18(1, v46, v29);

  v47 = v85;
  if ((*(v85 + 48))(v29, 1, v30) == 1)
  {
    sub_29D53FCF8(v29, qword_2A1A19830, MEMORY[0x29EDC3840]);
    sub_29D5B36CC();
    v48 = sub_29D5B370C();
    v49 = sub_29D5B429C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v91 = v51;
      *v50 = 136315138;
      v52 = sub_29D5B4DFC();
      v54 = sub_29D501890(v52, v53, &v91);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_29D48C000, v48, v49, "[%s] Could not make onboarding tile feed item", v50, 0xCu);
      sub_29D48F668(v51);
      MEMORY[0x29ED5FB80](v51, -1, -1);
      MEMORY[0x29ED5FB80](v50, -1, -1);
    }

    result = (*(v88 + 8))(v21, v87);
    goto LABEL_22;
  }

  v75 = *(v47 + 32);
  v75(v41, v29, v30);
  sub_29D53F524(0, &qword_2A1A195F0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
  v76 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v63 = swift_allocObject();
  *(v63 + 1) = xmmword_29D5B62A0;
  result = (v75)(v63 + v76, v41, v30);
LABEL_23:
  *v90 = v63;
  return result;
}

uint64_t sub_29D53CE18@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v69 = a2;
  LODWORD(v80) = a1;
  v6 = sub_29D5B11EC();
  v74 = *(v6 - 8);
  v75 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v73 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B104C();
  v70 = *(v9 - 8);
  v71 = v9;
  MEMORY[0x2A1C7C4A8](v9, v10);
  v72 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D5B134C();
  v77 = *(v12 - 8);
  v78 = v12;
  MEMORY[0x2A1C7C4A8](v12, v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D5B371C();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v67 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v66 = (&v65 - v23);
  MEMORY[0x2A1C7C4A8](v22, v24);
  v26 = &v65 - v25;
  sub_29D5B36CC();
  v27 = sub_29D5B370C();
  v28 = sub_29D5B429C();
  v29 = os_log_type_enabled(v27, v28);
  v79 = a3;
  v68 = v4;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = v17;
    v32 = v16;
    v33 = swift_slowAlloc();
    v82 = v33;
    *v30 = 136315138;
    v34 = sub_29D5B4DFC();
    v36 = sub_29D501890(v34, v35, &v82);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_29D48C000, v27, v28, "%s Making account sharing onboarding tile feed item", v30, 0xCu);
    sub_29D48F668(v33);
    v37 = v33;
    v16 = v32;
    v17 = v31;
    MEMORY[0x29ED5FB80](v37, -1, -1);
    MEMORY[0x29ED5FB80](v30, -1, -1);

    v38 = v31;
  }

  else
  {

    v38 = v17;
  }

  v39 = *(v38 + 1);
  v39(v26, v16);
  sub_29D5B0C0C();
  swift_allocObject();
  v40 = sub_29D5B0BFC();
  if (v80)
  {
    v67 = v17;
    if (qword_2A1A174B0 != -1)
    {
      swift_once();
    }

    v82 = qword_2A1A1A580;
    v83 = *algn_2A1A1A588;
    sub_29D53FCA4();

    v41 = sub_29D5B0BEC();
    v43 = v42;
    v76 = v40;

    v44 = "AddAnotherAccount";
    v45 = 0xD000000000000013;
  }

  else
  {
    v66 = v39;
    if (qword_2A17A39D8 != -1)
    {
      swift_once();
    }

    v82 = qword_2A17ABF08;
    v83 = unk_2A17ABF10;
    sub_29D53FCA4();

    v41 = sub_29D5B0BEC();
    v43 = v46;
    v76 = v40;
    v45 = 0xD000000000000011;

    v44 = "rds24ClinicalSharingGenerator";
  }

  v47 = v44 | 0x8000000000000000;
  sub_29D5B291C();
  sub_29D5B293C();
  v48 = sub_29D5B10AC();
  v49 = sub_29D5B244C();
  v51 = v50;

  v82 = v49;
  v83 = v51;
  if (v80)
  {

    v52 = 0x695765726168735BLL;
    v53 = 0xEB000000005D6874;
  }

  else
  {

    v52 = 0x746F6E416464615BLL;
    v53 = 0xEC0000005D726568;
  }

  MEMORY[0x29ED5E510](v52, v53);

  type metadata accessor for ClinicalSharingOnboardingTileViewController();
  (*(v70 + 104))(v72, *MEMORY[0x29EDC3790], v71);
  sub_29D4F357C(v41, v43);
  sub_29D5B10DC();
  sub_29D5B110C();
  sub_29D4CFFEC(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_29D5B62A0;
  *(v54 + 32) = v45;
  *(v54 + 40) = v47;
  v55 = sub_29D5B401C();

  v56 = HKUIJoinStringsForAutomationIdentifier();

  if (v56)
  {
    sub_29D5B3E5C();
  }

  sub_29D5B12EC();
  sub_29D5B132C();
  sub_29D5B122C();
  (*(v74 + 104))(v73, *MEMORY[0x29EDC3808], v75);
  sub_29D5B120C();
  sub_29D5B123C();
  v57 = sub_29D5B14BC();
  v59 = v58;
  v60 = sub_29D5B130C();
  sub_29D59AD10(&v81, v57, v59);

  v60(&v82, 0);
  sub_29D4A96D0(v41, v43);

  v62 = v77;
  v61 = v78;
  v63 = v79;
  (*(v77 + 32))(v79, v15, v78);
  return (*(v62 + 56))(v63, 0, 1, v61);
}

uint64_t sub_29D53D9B0@<X0>(void **a1@<X0>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v58 = a3;
  v54 = a2;
  v4 = sub_29D5B371C();
  v56 = *(v4 - 8);
  v57 = v4;
  v6 = MEMORY[0x2A1C7C4A8](v4, v5);
  v53 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v55 = &v52 - v9;
  sub_29D53F524(0, qword_2A1A19830, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v13 = &v52 - v12;
  v14 = sub_29D5B134C();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v52 - v21;
  v23 = *a1;
  v24 = sub_29D5B143C();
  sub_29D53DF34(v23, v24, v13);

  v25 = v14;
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_29D53FCF8(v13, qword_2A1A19830, MEMORY[0x29EDC3840]);
    v26 = v53;
    sub_29D5B36CC();
    v27 = sub_29D5B370C();
    v28 = sub_29D5B429C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v59 = v30;
      *v29 = 136315138;
      v31 = sub_29D5B4DFC();
      v33 = sub_29D501890(v31, v32, &v59);
      v25 = v14;

      *(v29 + 4) = v33;
      _os_log_impl(&dword_29D48C000, v27, v28, "%s Failed to make feed item", v29, 0xCu);
      sub_29D48F668(v30);
      MEMORY[0x29ED5FB80](v30, -1, -1);
      MEMORY[0x29ED5FB80](v29, -1, -1);
    }

    (*(v56 + 8))(v26, v57);
    v34 = 1;
    v35 = v58;
  }

  else
  {
    v36 = *(v15 + 32);
    v36(v22, v13, v14);
    sub_29D5B36CC();
    (*(v15 + 16))(v19, v22, v14);
    v37 = sub_29D5B370C();
    v38 = sub_29D5B429C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v53 = v36;
      v40 = v39;
      v52 = swift_slowAlloc();
      v59 = v52;
      *v40 = 136315394;
      v41 = sub_29D5B4DFC();
      LODWORD(v54) = v38;
      v43 = v25;
      v44 = sub_29D501890(v41, v42, &v59);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      v45 = sub_29D5B126C();
      v47 = v46;
      (*(v15 + 8))(v19, v43);
      v48 = sub_29D501890(v45, v47, &v59);
      v25 = v43;

      *(v40 + 14) = v48;
      _os_log_impl(&dword_29D48C000, v37, v54, "%s Successfully made feed item: %s", v40, 0x16u);
      v49 = v52;
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v49, -1, -1);
      v50 = v40;
      v36 = v53;
      MEMORY[0x29ED5FB80](v50, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v19, v25);
    }

    (*(v56 + 8))(v55, v57);
    v35 = v58;
    v36(v58, v22, v25);
    v34 = 0;
  }

  return (*(v15 + 56))(v35, v34, 1, v25);
}

uint64_t sub_29D53DF34@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v93 = a2;
  v108 = a3;
  v94 = sub_29D5B11EC();
  v91 = *(v94 - 8);
  MEMORY[0x2A1C7C4A8](v94, v6);
  v90 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_29D5B104C();
  v87 = *(v88 - 8);
  MEMORY[0x2A1C7C4A8](v88, v8);
  v89 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B134C();
  v103 = *(v10 - 8);
  v104 = v10;
  MEMORY[0x2A1C7C4A8](v10, v11);
  v92 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D53F524(0, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v101 = &v85 - v15;
  v102 = type metadata accessor for ClinicalSharingFeedItemData(0);
  v100 = *(v102 - 8);
  MEMORY[0x2A1C7C4A8](v102, v16);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D5B0EDC();
  v99 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19, v20);
  v22 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29D5B371C();
  v106 = *(v23 - 8);
  v25 = MEMORY[0x2A1C7C4A8](v23, v24);
  v107 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x2A1C7C4A8](v25, v27);
  v98 = &v85 - v29;
  MEMORY[0x2A1C7C4A8](v28, v30);
  v32 = &v85 - v31;
  sub_29D5B36CC();
  v33 = a1;
  v34 = sub_29D5B370C();
  v35 = sub_29D5B429C();

  v36 = os_log_type_enabled(v34, v35);
  v105 = v23;
  v96 = v4;
  v97 = v19;
  v95 = v22;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v86 = v18;
    v39 = v38;
    v110[0] = v38;
    *v37 = 136315394;
    v40 = sub_29D5B4DFC();
    v42 = sub_29D501890(v40, v41, v110);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2080;
    v43 = [v33 identifier];
    sub_29D5B0EBC();

    sub_29D53FD68(&unk_2A17A3A20, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
    v44 = sub_29D5B4C4C();
    v46 = v45;
    (*(v99 + 8))(v22, v19);
    v47 = sub_29D501890(v44, v46, v110);
    v23 = v105;

    *(v37 + 14) = v47;
    _os_log_impl(&dword_29D48C000, v34, v35, "%s Making feed item for account: %s", v37, 0x16u);
    swift_arrayDestroy();
    v48 = v39;
    v18 = v86;
    MEMORY[0x29ED5FB80](v48, -1, -1);
    MEMORY[0x29ED5FB80](v37, -1, -1);
  }

  v49 = *(v106 + 8);
  v49(v32, v23);
  v50 = v33;
  v51 = v101;
  sub_29D513A24(v50, v101);
  if ((*(v100 + 48))(v51, 1, v102) == 1)
  {
    sub_29D53FCF8(v51, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData);
    v52 = v98;
    sub_29D5B36CC();
    v53 = v50;
    v54 = sub_29D5B370C();
    v55 = sub_29D5B427C();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v110[0] = v57;
      *v56 = 136315394;
      v58 = sub_29D5B4DFC();
      v60 = sub_29D501890(v58, v59, v110);

      *(v56 + 4) = v60;
      *(v56 + 12) = 2080;
      v61 = [v53 identifier];
      v62 = v95;
      sub_29D5B0EBC();

      sub_29D53FD68(&unk_2A17A3A20, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
      v63 = v97;
      v64 = sub_29D5B4C4C();
      v66 = v65;
      (*(v99 + 8))(v62, v63);
      v67 = sub_29D501890(v64, v66, v110);

      *(v56 + 14) = v67;
      _os_log_impl(&dword_29D48C000, v54, v55, "%s Failed to create feed item data for account: %s", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v57, -1, -1);
      MEMORY[0x29ED5FB80](v56, -1, -1);

      v68 = v98;
      v69 = v105;
    }

    else
    {

      v68 = v52;
      v69 = v23;
    }

    v49(v68, v69);
    v83 = 1;
    v81 = v103;
    v82 = v104;
  }

  else
  {
    sub_29D53FDB0(v51, v18, type metadata accessor for ClinicalSharingFeedItemData);
    sub_29D5B0C0C();
    swift_allocObject();
    sub_29D5B0BFC();
    sub_29D53FD68(&qword_2A17A4A28, type metadata accessor for ClinicalSharingFeedItemData, &unk_29D5B91D4);
    v70 = sub_29D5B0BEC();
    v72 = v71;
    v73 = v93;
    sub_29D5B292C();
    type metadata accessor for ClinicalSharingFeedItemViewController(0);
    (*(v87 + 104))(v89, *MEMORY[0x29EDC36E8], v88);
    sub_29D4F357C(v70, v72);
    v74 = v73;
    v75 = v92;
    sub_29D5B110C();
    (*(v91 + 104))(v90, *MEMORY[0x29EDC3808], v94);
    sub_29D5B120C();
    v76 = sub_29D5B14BC();
    v78 = v77;
    v79 = sub_29D5B130C();
    sub_29D59AD10(&v109, v76, v78);

    v79(v110, 0);

    sub_29D4A96D0(v70, v72);
    sub_29D53FE18(v18, type metadata accessor for ClinicalSharingFeedItemData);
    v81 = v103;
    v80 = v104;
    (*(v103 + 32))(v108, v75, v104);
    v82 = v80;
    v83 = 0;
  }

  return (*(v81 + 56))(v108, v83, 1, v82);
}

uint64_t sub_29D53EC68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v34 = a2;
  v33 = sub_29D5B371C();
  v7 = *(v33 - 8);
  MEMORY[0x2A1C7C4A8](v33, v8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_29D5B36CC();

  v12 = sub_29D5B370C();
  v13 = sub_29D5B426C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v32[0] = a4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v35 = v16;
    *v15 = 136315394;
    v17 = sub_29D5B4DFC();
    v19 = sub_29D501890(v17, v18, &v35);
    v32[1] = v4;
    v20 = v19;

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = sub_29D5B134C();
    v22 = MEMORY[0x29ED5E610](v11, v21);
    v24 = sub_29D501890(v22, v23, &v35);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_29D48C000, v12, v13, "[%s] computing changes for: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v16, -1, -1);
    v25 = v15;
    a4 = v32[0];
    MEMORY[0x29ED5FB80](v25, -1, -1);
  }

  (*(v7 + 8))(v10, v33);
  v26 = sub_29D5B291C();
  v28 = v27;
  v29 = sub_29D5B143C();
  sub_29D4CFFEC(0, &qword_2A1A16208, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9E90]);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_29D5B62A0;
  *(v30 + 32) = v11;
  *(v30 + 40) = v26;
  *(v30 + 48) = v28;
  *(v30 + 56) = v29;
  *(v30 + 64) = -127;
  *a4 = v30;
}

uint64_t sub_29D53EF08@<X0>(void **a1@<X0>, uint64_t *a3@<X8>)
{
  sub_29D4B37EC(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_29D5B371C();
  v11 = *(v40 - 8);
  MEMORY[0x2A1C7C4A8](v40, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_29D5B36DC();
  v16 = v15;
  v17 = sub_29D5B370C();
  v18 = sub_29D5B427C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = v6;
    v20 = v19;
    v21 = swift_slowAlloc();
    v37 = v7;
    v22 = v21;
    v42 = v21;
    *v20 = 136315394;
    v23 = sub_29D5B4DFC();
    v25 = sub_29D501890(v23, v24, &v42);
    v39 = a3;
    v26 = v25;

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v41 = v15;
    v27 = v15;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v28 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v29 = sub_29D5B3E7C();
    v31 = sub_29D501890(v29, v30, &v42);

    *(v20 + 14) = v31;
    a3 = v39;
    _os_log_impl(&dword_29D48C000, v17, v18, "%s: Unable to compute desired difference for commit: %s", v20, 0x16u);
    swift_arrayDestroy();
    v32 = v22;
    v7 = v37;
    MEMORY[0x29ED5FB80](v32, -1, -1);
    v33 = v20;
    v6 = v38;
    MEMORY[0x29ED5FB80](v33, -1, -1);
  }

  (*(v11 + 8))(v14, v40);
  v41 = MEMORY[0x29EDCA190];
  sub_29D4CFFEC(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D5B3A2C();
  sub_29D53FD68(&qword_2A1A165D8, sub_29D4B37EC, MEMORY[0x29EDB8AB8]);
  v34 = sub_29D5B3B1C();
  result = (*(v7 + 8))(v10, v6);
  *a3 = v34;
  return result;
}

uint64_t sub_29D53F298()
{
  sub_29D53FE18(v0 + OBJC_IVAR____TtC13HealthRecords24ClinicalSharingGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);
  v1 = OBJC_IVAR____TtC13HealthRecords24ClinicalSharingGenerator_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClinicalSharingGenerator(uint64_t a1)
{
  result = qword_2A1A187D8;
  if (!qword_2A1A187D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D53F3BC(uint64_t a1)
{
  result = type metadata accessor for HealthRecordsGeneratorContext(319);
  if (v2 <= 0x3F)
  {
    result = sub_29D5B13EC();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29D53F4A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords24ClinicalSharingGenerator_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D53F524(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D53F588(uint64_t a1)
{
  if (!qword_2A1A16528)
  {
    v1 = MEMORY[0x29EDB8AD0];
    sub_29D53F7D4(255, &qword_2A1A165A8, MEMORY[0x29EDB8AD0]);
    sub_29D53F6A4(&qword_2A1A165B0, &qword_2A1A165A8, v1, MEMORY[0x29EDB8AD8]);
    v2 = sub_29D5B3AAC();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A16528);
    }
  }
}

void sub_29D53F63C(uint64_t a1)
{
  if (!qword_2A1A16420)
  {
    sub_29D48F51C(255, &qword_2A1A19640, 0x29EDC3E08);
    v1 = sub_29D5B40BC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16420);
    }
  }
}

uint64_t sub_29D53F6A4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D53F7D4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D53F6E8(uint64_t a1)
{
  if (!qword_2A1A16888)
  {
    v1 = MEMORY[0x29EDB89F8];
    sub_29D53F7D4(255, &qword_2A1A16738, MEMORY[0x29EDB89F8]);
    sub_29D48F51C(255, &qword_2A1A1A420, 0x29EDCA548);
    sub_29D53F6A4(&qword_2A1A16740, &qword_2A1A16738, v1, MEMORY[0x29EDB8A00]);
    sub_29D5127AC();
    v2 = sub_29D5B395C();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A16888);
    }
  }
}

void sub_29D53F7D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_29D53F524(255, &qword_2A1A16410, sub_29D53F63C, MEMORY[0x29EDC9C68]);
    v7 = v6;
    v8 = sub_29D4B3AF4();
    v9 = a3(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D53F87C(uint64_t a1)
{
  if (!qword_2A1A16E10)
  {
    sub_29D53F6E8(255);
    sub_29D53F524(255, &qword_2A1A16468, MEMORY[0x29EDC3840], MEMORY[0x29EDC9A40]);
    sub_29D53FD68(&qword_2A1A16890, sub_29D53F6E8, MEMORY[0x29EDB89E8]);
    v1 = sub_29D5B384C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16E10);
    }
  }
}

void sub_29D53F958(uint64_t a1)
{
  if (!qword_2A1A16B38)
  {
    sub_29D53F6E8(255);
    sub_29D4CFFEC(255, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29D53FD68(&qword_2A1A16890, sub_29D53F6E8, MEMORY[0x29EDB89E8]);
    v1 = sub_29D5B38DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16B38);
    }
  }
}

void sub_29D53FA28(uint64_t a1)
{
  if (!qword_2A1A16D20)
  {
    sub_29D53F958(255);
    sub_29D4B2D8C(255);
    sub_29D53FD68(&qword_2A1A16B40, sub_29D53F958, MEMORY[0x29EDB8990]);
    sub_29D53FD68(&qword_2A1A16780, sub_29D4B2D8C, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B387C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16D20);
    }
  }
}

void *sub_29D53FB1C@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D53C4FC(a1, (v2 + v6), v8, v9, a2);
}

unint64_t sub_29D53FCA4()
{
  result = qword_2A1A174A8;
  if (!qword_2A1A174A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A174A8);
  }

  return result;
}

uint64_t sub_29D53FCF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D53F524(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D53FD68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D53FDB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D53FE18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for UserDomainConceptFeedItemData(uint64_t a1)
{
  result = qword_2A1A17E18;
  if (!qword_2A1A17E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D53FEEC(uint64_t a1)
{
  sub_29D5B1D6C();
  if (v1 <= 0x3F)
  {
    sub_29D4A0664(319, &qword_2A1A164D8, &qword_2A1A162D0, 0x29EDBAC68);
    if (v2 <= 0x3F)
    {
      sub_29D4B4C4C(319);
      if (v3 <= 0x3F)
      {
        sub_29D4A05F4(319);
        if (v4 <= 0x3F)
        {
          sub_29D48E5A4(319, &qword_2A1A164A0, MEMORY[0x29EDC99B0]);
          if (v5 <= 0x3F)
          {
            sub_29D48E5A4(319, &qword_2A1A16268, MEMORY[0x29EDC9CA8]);
            if (v6 <= 0x3F)
            {
              sub_29D48E5A4(319, &qword_2A1A16380, MEMORY[0x29EDC9BA8]);
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

unint64_t sub_29D540038(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x747065636E6F63;
    v6 = 0x656C746974;
    if (a1 != 2)
    {
      v6 = 0x66676E696E61656DLL;
    }

    if (!a1)
    {
      v5 = 0xD000000000000013;
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
    v1 = 0x7073694474696E75;
    v2 = 0x657079547473696CLL;
    if (a1 != 7)
    {
      v2 = 0x6564724F7473696CLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x526E4965756C6176;
    if (a1 != 4)
    {
      v3 = 0x73694465756C6176;
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

uint64_t sub_29D54017C(void *a1)
{
  sub_29D541808(0, &qword_2A17A4A50, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v10[-v7];
  sub_29D499EC0(a1, a1[3]);
  sub_29D5416EC();
  sub_29D5B4DCC();
  v10[15] = 0;
  sub_29D5B1D6C();
  sub_29D542390(&qword_2A17A4120, MEMORY[0x29EDC4098], MEMORY[0x29EDC40A0]);
  sub_29D5B4C0C();
  if (!v1)
  {
    type metadata accessor for UserDomainConceptFeedItemData(0);
    v10[14] = 1;
    sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0, 0x29EDBAC68);
    sub_29D54186C(&qword_2A17A4A58, MEMORY[0x29EDBA1D8]);
    sub_29D5B4C0C();
    v10[13] = 2;
    sub_29D5B4BCC();
    v10[12] = 3;
    sub_29D5B0E6C();
    sub_29D542390(&qword_2A1A193D8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD0]);
    sub_29D5B4BBC();
    v10[11] = 4;
    sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0, 0x29EDBAC10);
    sub_29D4DF6D8(&qword_2A17A4340, MEMORY[0x29EDBA1D8]);
    sub_29D5B4BBC();
    v10[10] = 5;
    sub_29D5B4B8C();
    v10[9] = 6;
    sub_29D5B4B8C();
    v10[8] = 7;
    sub_29D5B4BAC();
    v10[7] = 8;
    sub_29D5B4B9C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_29D540578(uint64_t a1)
{
  sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0, 0x29EDBAC10);
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v28 = &v27 - v4;
  sub_29D4A05F4(0);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B0E6C();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v14 - 8, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B1D6C();
  sub_29D542390(&qword_2A17A4128, MEMORY[0x29EDC4098], MEMORY[0x29EDC40A8]);
  sub_29D5B3D9C();
  v18 = type metadata accessor for UserDomainConceptFeedItemData(0);
  sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0, 0x29EDBAC68);
  sub_29D5418C8();
  sub_29D5B3D9C();
  sub_29D5B3EFC();
  sub_29D54198C(v1 + v18[7], v17, sub_29D4B4C4C);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    sub_29D5B4D6C();
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    sub_29D5B4D6C();
    sub_29D542390(&qword_2A17A4068, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
    sub_29D5B3D9C();
    (*(v10 + 8))(v13, v9);
  }

  sub_29D54198C(v1 + v18[8], v8, sub_29D4A05F4);
  v20 = v29;
  v19 = v30;
  if ((*(v29 + 48))(v8, 1, v30) == 1)
  {
    sub_29D5B4D6C();
  }

  else
  {
    v21 = v28;
    (*(v20 + 32))(v28, v8, v19);
    sub_29D5B4D6C();
    sub_29D4DC504(&qword_2A17A41C0, &qword_2A17A41C8, MEMORY[0x29EDCA2F0], MEMORY[0x29EDBA1E0]);
    sub_29D5B3D9C();
    (*(v20 + 8))(v21, v19);
  }

  if (*(v1 + v18[9] + 8))
  {
    sub_29D5B4D6C();
    sub_29D5B3EFC();
  }

  else
  {
    sub_29D5B4D6C();
  }

  if (*(v1 + v18[10] + 8))
  {
    sub_29D5B4D6C();
    sub_29D5B3EFC();
  }

  else
  {
    sub_29D5B4D6C();
  }

  v22 = (v1 + v18[11]);
  if (*(v22 + 8) == 1)
  {
    sub_29D5B4D6C();
  }

  else
  {
    v23 = *v22;
    sub_29D5B4D6C();
    MEMORY[0x29ED5F330](v23);
  }

  v24 = (v1 + v18[12]);
  if (*(v24 + 8) == 1)
  {
    return sub_29D5B4D6C();
  }

  v26 = *v24;
  sub_29D5B4D6C();
  return MEMORY[0x29ED5F330](v26);
}

uint64_t sub_29D540AD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  sub_29D4A05F4(0);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v56 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v57 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0, 0x29EDBAC68);
  v62 = v9;
  v58 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = v54 - v11;
  v13 = sub_29D5B1D6C();
  v59 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v14);
  v61 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D541808(0, &qword_2A17A4A38, MEMORY[0x29EDC9E80]);
  v64 = v16;
  v60 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v17);
  v19 = v54 - v18;
  v20 = type metadata accessor for UserDomainConceptFeedItemData(0);
  MEMORY[0x2A1C7C4A8](v20, v21);
  v23 = v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499EC0(a1, a1[3]);
  sub_29D5416EC();
  v63 = v19;
  v24 = v65;
  sub_29D5B4DBC();
  if (v24)
  {
    return sub_29D48F668(a1);
  }

  v25 = v60;
  v26 = v62;
  v65 = v23;
  v74 = 0;
  sub_29D542390(&qword_2A17A4110, MEMORY[0x29EDC4098], MEMORY[0x29EDC40B8]);
  v27 = v61;
  sub_29D5B4B6C();
  v28 = v27;
  v29 = v13;
  (*(v59 + 32))(v65, v28, v13);
  v73 = 1;
  sub_29D54186C(&qword_2A17A4A48, MEMORY[0x29EDBA1F0]);
  v30 = v12;
  v31 = v26;
  sub_29D5B4B6C();
  v54[1] = v29;
  v32 = v65;
  (*(v58 + 32))(&v65[v20[5]], v30, v31);
  v72 = 2;
  v61 = 0;
  v33 = sub_29D5B4B2C();
  v54[0] = a1;
  v34 = &v32[v20[6]];
  *v34 = v33;
  v34[1] = v35;
  sub_29D5B0E6C();
  v71 = 3;
  sub_29D542390(&qword_2A1A193D0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BF0]);
  v36 = v57;
  sub_29D5B4B1C();
  v37 = v20;
  sub_29D5417A0(v36, &v32[v20[7]], sub_29D4B4C4C);
  sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0, 0x29EDBAC10);
  v70 = 4;
  sub_29D4DF6D8(&qword_2A17A4330, MEMORY[0x29EDBA1F0]);
  v38 = v56;
  sub_29D5B4B1C();
  sub_29D5417A0(v38, &v32[v37[8]], sub_29D4A05F4);
  v69 = 5;
  v39 = sub_29D5B4AEC();
  v40 = v54[0];
  v41 = &v32[v37[9]];
  *v41 = v39;
  v41[1] = v42;
  v68 = 6;
  v43 = sub_29D5B4AEC();
  v44 = &v32[v37[10]];
  *v44 = v43;
  v44[1] = v45;
  v67 = 7;
  v46 = sub_29D5B4B0C();
  v47 = &v65[v37[11]];
  *v47 = v46;
  v47[8] = v48 & 1;
  v66 = 8;
  v49 = sub_29D5B4AFC();
  LOBYTE(v38) = v50;
  (*(v25 + 8))(v63, v64);
  v51 = v65;
  v52 = &v65[v37[12]];
  *v52 = v49;
  v52[8] = v38 & 1;
  sub_29D54198C(v51, v55, type metadata accessor for UserDomainConceptFeedItemData);
  sub_29D48F668(v40);
  return sub_29D541740(v51, type metadata accessor for UserDomainConceptFeedItemData);
}

uint64_t sub_29D541414@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29D542630(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29D541448(uint64_t a1)
{
  v2 = sub_29D5416EC();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D541484(uint64_t a1)
{
  v2 = sub_29D5416EC();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D5414F0()
{
  sub_29D5B4D4C();
  sub_29D540578(v1);
  return sub_29D5B4D9C();
}

uint64_t sub_29D541534(uint64_t a1)
{
  sub_29D5B4D4C();
  sub_29D540578(v2);
  return sub_29D5B4D9C();
}

uint64_t sub_29D5415A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D542390(&qword_2A17A4880, type metadata accessor for UserDomainConceptFeedItemData, &unk_29D5B9E88);

  return MEMORY[0x2A1C660E0](a1, v4, a2);
}

uint64_t sub_29D541624(uint64_t a1, uint64_t a2)
{
  sub_29D542390(&qword_2A17A4880, type metadata accessor for UserDomainConceptFeedItemData, &unk_29D5B9E88);

  return sub_29D5B287C();
}

unint64_t sub_29D5416EC()
{
  result = qword_2A17A4A40;
  if (!qword_2A17A4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4A40);
  }

  return result;
}

uint64_t sub_29D541740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D5417A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29D541808(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D5416EC();
    v7 = a3(a1, &type metadata for UserDomainConceptFeedItemData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D54186C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_29D4A0664(255, &qword_2A1A164D8, &qword_2A1A162D0, 0x29EDBAC68);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D5418C8()
{
  result = qword_2A17A4A60;
  if (!qword_2A17A4A60)
  {
    sub_29D4A0664(255, &qword_2A1A164D8, &qword_2A1A162D0, 0x29EDBAC68);
    sub_29D4DC4A0(&qword_2A17A4A68, &qword_2A1A162D0, 0x29EDBAC68, MEMORY[0x29EDCA2F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4A60);
  }

  return result;
}

uint64_t sub_29D54198C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL sub_29D5419F4(uint64_t a1, uint64_t a2)
{
  sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0, 0x29EDBAC10);
  v5 = v4;
  v86 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v82 = &v77 - v7;
  sub_29D4A05F4(0);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v83 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5422D4(0, &qword_2A17A41E0, sub_29D4A05F4);
  v12 = v11;
  MEMORY[0x2A1C7C4A8](v11, v13);
  v85 = &v77 - v14;
  v15 = sub_29D5B0E6C();
  v88 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v16);
  v84 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v18 - 8, v19);
  v87 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5422D4(0, &qword_2A1A193C8, sub_29D4B4C4C);
  v22 = v21;
  MEMORY[0x2A1C7C4A8](v21, v23);
  v25 = &v77 - v24;
  sub_29D5B1D6C();
  sub_29D542390(&qword_2A17A4130, MEMORY[0x29EDC4098], MEMORY[0x29EDC40B0]);
  sub_29D5B3FFC();
  sub_29D5B3FFC();
  if (v90 != v89)
  {
    return 0;
  }

  v80 = v12;
  v81 = v5;
  v26 = type metadata accessor for UserDomainConceptFeedItemData(0);
  sub_29D48F51C(0, &qword_2A1A162D0, 0x29EDBAC68);
  sub_29D4DC4A0(&qword_2A17A4A70, &qword_2A1A162D0, 0x29EDBAC68, MEMORY[0x29EDCA2F8]);
  if ((sub_29D5B3CFC() & 1) == 0)
  {
    return 0;
  }

  v27 = *(v26 + 24);
  v28 = *(a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  if ((v28 != *v30 || v29 != v30[1]) && (sub_29D5B4C7C() & 1) == 0)
  {
    return 0;
  }

  v79 = v26;
  v31 = *(v26 + 28);
  v32 = *(v22 + 48);
  sub_29D54198C(a1 + v31, v25, sub_29D4B4C4C);
  sub_29D54198C(a2 + v31, &v25[v32], sub_29D4B4C4C);
  v33 = v88;
  v34 = *(v88 + 48);
  if (v34(v25, 1, v15) == 1)
  {
    v35 = v34(&v25[v32], 1, v15);
    v36 = v80;
    v37 = v81;
    if (v35 == 1)
    {
      sub_29D541740(v25, sub_29D4B4C4C);
      goto LABEL_13;
    }

LABEL_11:
    v40 = &qword_2A1A193C8;
    v41 = sub_29D4B4C4C;
    v42 = v25;
LABEL_19:
    sub_29D542334(v42, v40, v41);
    return 0;
  }

  v78 = a1;
  v38 = v87;
  sub_29D54198C(v25, v87, sub_29D4B4C4C);
  v39 = v34(&v25[v32], 1, v15);
  v36 = v80;
  v37 = v81;
  if (v39 == 1)
  {
    (*(v33 + 8))(v38, v15);
    goto LABEL_11;
  }

  v43 = v84;
  (*(v33 + 32))(v84, &v25[v32], v15);
  sub_29D542390(&qword_2A17A4070, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE8]);
  v44 = sub_29D5B3E0C();
  v45 = *(v33 + 8);
  v45(v43, v15);
  v45(v38, v15);
  sub_29D541740(v25, sub_29D4B4C4C);
  a1 = v78;
  if ((v44 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v46 = v79[8];
  v47 = *(v36 + 48);
  v48 = v85;
  sub_29D54198C(a1 + v46, v85, sub_29D4A05F4);
  sub_29D54198C(a2 + v46, v48 + v47, sub_29D4A05F4);
  v49 = v86;
  v50 = *(v86 + 48);
  if (v50(v48, 1, v37) == 1)
  {
    if (v50(v48 + v47, 1, v37) == 1)
    {
      sub_29D541740(v48, sub_29D4A05F4);
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v51 = v83;
  sub_29D54198C(v48, v83, sub_29D4A05F4);
  if (v50(v48 + v47, 1, v37) == 1)
  {
    (*(v49 + 8))(v51, v37);
LABEL_18:
    v40 = &qword_2A17A41E0;
    v41 = sub_29D4A05F4;
    v42 = v48;
    goto LABEL_19;
  }

  v53 = v82;
  (*(v49 + 32))(v82, v48 + v47, v37);
  sub_29D4DC504(&qword_2A17A41F8, &qword_2A17A4200, MEMORY[0x29EDCA2F8], MEMORY[0x29EDBA1E8]);
  v54 = sub_29D5B3E0C();
  v55 = *(v49 + 8);
  v55(v53, v37);
  v55(v51, v37);
  sub_29D541740(v48, sub_29D4A05F4);
  if ((v54 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v56 = v79;
  v57 = v79[9];
  v58 = (a1 + v57);
  v59 = *(a1 + v57 + 8);
  v60 = (a2 + v57);
  v61 = v60[1];
  if (v59)
  {
    if (!v61 || (*v58 != *v60 || v59 != v61) && (sub_29D5B4C7C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v61)
  {
    return 0;
  }

  v62 = v56[10];
  v63 = (a1 + v62);
  v64 = *(a1 + v62 + 8);
  v65 = (a2 + v62);
  v66 = v65[1];
  if (v64)
  {
    if (!v66 || (*v63 != *v65 || v64 != v66) && (sub_29D5B4C7C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v66)
  {
    return 0;
  }

  v67 = v56[11];
  v68 = (a1 + v67);
  v69 = *(a1 + v67 + 8);
  v70 = (a2 + v67);
  v71 = *(a2 + v67 + 8);
  if (v69)
  {
    if (!v71)
    {
      return 0;
    }
  }

  else
  {
    if (*v68 != *v70)
    {
      LOBYTE(v71) = 1;
    }

    if (v71)
    {
      return 0;
    }
  }

  v72 = v56[12];
  v73 = (a1 + v72);
  v74 = *(a1 + v72 + 8);
  v75 = (a2 + v72);
  v76 = *(a2 + v72 + 8);
  if ((v74 & 1) == 0)
  {
    if (*v73 != *v75)
    {
      v76 = 1;
    }

    return (v76 & 1) == 0;
  }

  return (v76 & 1) != 0;
}

void sub_29D5422D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_29D542334(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D5422D4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D542390(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for UserDomainConceptFeedItemData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UserDomainConceptFeedItemData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_29D54252C()
{
  result = qword_2A17A4A78;
  if (!qword_2A17A4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4A78);
  }

  return result;
}

unint64_t sub_29D542584()
{
  result = qword_2A17A4A80;
  if (!qword_2A17A4A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4A80);
  }

  return result;
}

unint64_t sub_29D5425DC()
{
  result = qword_2A17A4A88;
  if (!qword_2A17A4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4A88);
  }

  return result;
}

uint64_t sub_29D542630(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000029D5BCB10 == a2 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747065636E6F63 && a2 == 0xE700000000000000 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x66676E696E61656DLL && a2 == 0xEE00657461446C75 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x526E4965756C6176 && a2 == 0xEC00000065676E61 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73694465756C6176 && a2 == 0xEC00000079616C70 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7073694474696E75 && a2 == 0xEB0000000079616CLL || (sub_29D5B4C7C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x657079547473696CLL && a2 == 0xE800000000000000 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6564724F7473696CLL && a2 == 0xE900000000000072)
  {

    return 8;
  }

  else
  {
    v5 = sub_29D5B4C7C();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t type metadata accessor for RecordKindFeedItemViewData(uint64_t a1)
{
  result = qword_2A17A4A90;
  if (!qword_2A17A4A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D5429A8(uint64_t a1)
{
  result = sub_29D5B2F9C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29D542A14@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29D5B2F9C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_29D542A7C(unint64_t a1, unint64_t a2)
{
  v4 = sub_29D5B0C4C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v41 - v11;
  v41 = a1;
  v42 = a2;
  sub_29D5B0C1C();
  sub_29D5B0C3C();
  v13 = *(v5 + 8);
  v13(v12, v4);
  sub_29D4B343C();
  v14 = sub_29D5B475C();
  v13(v9, v4);
  v41 = v14;
  sub_29D5365BC();
  sub_29D49823C();
  v15 = sub_29D5B3DBC();
  v17 = v16;

  v18 = objc_allocWithZone(MEMORY[0x29EDBA050]);
  v19 = sub_29D5B3E1C();
  v20 = [v18 initWithString_];

  v21 = *MEMORY[0x29EDB8FF8];
  v22 = v20;
  CFStringTransform(v22, 0, v21, 0);
  CFStringTransform(v22, 0, *MEMORY[0x29EDB8FF0], 0);

  v41 = v15;
  v42 = v17;
  sub_29D5B3FCC();
  v23 = sub_29D5B3E8C();
  v25 = v24;

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
    v37 = 0xD000000000000012;

LABEL_8:

    return v37;
  }

  v27 = sub_29D542DC0(1, v23, v25);
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v34 = MEMORY[0x29ED5E490](v27, v29, v31, v33);
  v36 = v35;

  v41 = v34;
  v42 = v36;
  MEMORY[0x29ED5E510](0x2E656C637269632ELL, 0xEC0000006C6C6966);
  v37 = v41;
  v38 = sub_29D5B3E1C();
  v39 = [objc_opt_self() systemImageNamed_];

  if (!v39)
  {
    v37 = 0xD000000000000012;
    goto LABEL_8;
  }

  return v37;
}

uint64_t sub_29D542DC0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_29D5B3F1C();

    return sub_29D5B3FDC();
  }

  return result;
}

void *sub_29D542E5C(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_29D54320C(0);
  swift_allocObject();
  v2[4] = sub_29D5B39DC();
  v2[5] = 0;
  v2[2] = a2;
  v2[3] = a1;
  v6 = a2;
  v7 = sub_29D542EF0();

  v3[5] = v7;

  return v3;
}

uint64_t sub_29D542EF0()
{
  sub_29D5B35DC();
  v1 = *(v0 + 16);
  v2 = [v1 healthStore];
  v3 = sub_29D5B35CC();
  sub_29D5B364C();
  v4 = [v1 healthStore];
  sub_29D5B35EC();

  v5 = v1;
  v6 = [v5 healthStore];
  sub_29D5B243C();
  swift_allocObject();
  sub_29D5B241C();
  swift_allocObject();
  swift_weakInit();

  v7 = [v5 healthStore];
  v8 = [objc_opt_self() medicalRecordTypes];
  sub_29D48F51C(0, &qword_2A1A19660, 0x29EDBAD78);
  sub_29D5B402C();

  v9 = sub_29D5B424C();

  return v9;
}

uint64_t sub_29D5430C0(void *a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_29D543200(a1);
    sub_29D5B39BC();
  }

  return result;
}

uint64_t sub_29D543158()
{
  if (*(v0 + 40))
  {

    sub_29D5B1EDC();
  }

  return swift_deallocClassInstance();
}

void sub_29D54320C(uint64_t a1)
{
  if (!qword_2A1A16638)
  {
    sub_29D543274(255);
    v1 = sub_29D5B39CC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16638);
    }
  }
}

void sub_29D543274(uint64_t a1)
{
  if (!qword_2A1A19598)
  {
    sub_29D5432CC(255);
    v1 = sub_29D5B472C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A19598);
    }
  }
}

void sub_29D5432CC(uint64_t a1)
{
  if (!qword_2A1A195A0)
  {
    sub_29D54333C(255);
    sub_29D4B3AF4();
    v1 = sub_29D5B4DAC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A195A0);
    }
  }
}

void sub_29D54333C(uint64_t a1)
{
  if (!qword_2A1A19648)
  {
    sub_29D48F51C(255, &qword_2A1A19650, 0x29EDBAD38);
    v1 = sub_29D5B472C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A19648);
    }
  }
}

id HealthRecordsTabGroup.__allocating_init(title:image:identifier:children:viewControllerProvider:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v13 = sub_29D5B3E1C();

  v14 = sub_29D5B3E1C();

  sub_29D48F51C(0, &qword_2A1A16290, 0x29EDC7CE8);
  v15 = sub_29D5B401C();

  if (a7)
  {
    v19[4] = a7;
    v19[5] = a8;
    v19[0] = MEMORY[0x29EDCA5F8];
    v19[1] = 1107296256;
    v19[2] = sub_29D490208;
    v19[3] = &unk_2A2429B70;
    v16 = _Block_copy(v19);
  }

  else
  {
    v16 = 0;
  }

  v17 = [objc_allocWithZone(v9) initWithTitle:v13 image:a3 identifier:v14 children:v15 viewControllerProvider:v16];
  _Block_release(v16);

  return v17;
}

id HealthRecordsTabGroup.__allocating_init(title:image:identifier:viewControllerProvider:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_29D5B3E1C();

  v13 = sub_29D5B3E1C();

  if (a6)
  {
    v17[4] = a6;
    v17[5] = a7;
    v17[0] = MEMORY[0x29EDCA5F8];
    v17[1] = 1107296256;
    v17[2] = sub_29D490208;
    v17[3] = &unk_2A2429B98;
    v14 = _Block_copy(v17);
  }

  else
  {
    v14 = 0;
  }

  v15 = [objc_allocWithZone(v8) initWithTitle:v12 image:a3 identifier:v13 viewControllerProvider:v14];
  _Block_release(v14);

  return v15;
}

id sub_29D543834(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_29D54386C@<X0>(id *a1@<X0>, uint64_t a2@<X1>, id **a3@<X8>)
{
  v109 = a2;
  v114 = a3;
  v4 = MEMORY[0x29EDC9C68];
  sub_29D48F2B4(0, &unk_2A1A19450, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = v91 - v7;
  v9 = sub_29D5B2A7C();
  v104 = *(v9 - 8);
  v105 = v9;
  MEMORY[0x2A1C7C4A8](v9, v10);
  v103 = v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D48F2B4(0, &qword_2A1A193A8, MEMORY[0x29EDB9C08], v4);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v108 = v91 - v14;
  v15 = sub_29D5B0EDC();
  v111 = *(v15 - 8);
  v112 = v15;
  v17 = MEMORY[0x2A1C7C4A8](v15, v16);
  v107 = v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v22 = v91 - v21;
  v106 = v23;
  MEMORY[0x2A1C7C4A8](v20, v24);
  v110 = v91 - v25;
  sub_29D48F2B4(0, &qword_2A1A17308, MEMORY[0x29EDC2A90], v4);
  MEMORY[0x2A1C7C4A8](v26 - 8, v27);
  v29 = v91 - v28;
  v30 = sub_29D5B33CC();
  v113 = *(v30 - 8);
  v31 = *(v113 + 64);
  v33 = MEMORY[0x2A1C7C4A8](v30, v32);
  v34 = v91 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v33, v35);
  v37 = v91 - v36;
  v38 = *a1;
  result = [*a1 userData];
  if (!result)
  {
    v45 = 0;
    v46 = v114;
    goto LABEL_13;
  }

  v102 = v22;
  v101 = v8;
  v40 = result;
  v41 = sub_29D5B0D7C();
  v43 = v42;

  sub_29D4F357C(v41, v43);
  sub_29D545AE4();
  v44 = v117;
  sub_29D5B2F2C();
  if (!v44)
  {
    v99 = v41;
    v100 = v43;
    v117 = 0;
    v47 = v113;
    (*(v113 + 56))(v29, 0, 1, v30);
    v48 = *(v47 + 32);
    v98 = (v47 + 32);
    v97 = v48;
    (v48)(v37, v29, v30);
    v49 = v108;
    sub_29D5B33BC();
    v50 = v111;
    v51 = v112;
    if (v111[6](v49, 1, v112) == 1)
    {
      (*(v47 + 8))(v37, v30);
      sub_29D4A96D0(v99, v100);
      result = sub_29D48F4AC(v49, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
      v45 = 0;
      v46 = v114;
      goto LABEL_13;
    }

    v94 = v50[4];
    v95 = v50 + 4;
    v94(v110, v49, v51);
    v52 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v53 = v51;
    (*(v47 + 16))(v34, v37, v30);
    v54 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = v52;
    *(v55 + 24) = v38;
    v108 = v55;
    v96 = v30;
    (v97)(v55 + v54, v34, v30);
    v92 = v111[2];
    v56 = v37;
    v57 = v102;
    v92(v102, v110, v53);
    v58 = v38;
    v93 = v58;

    v91[1] = sub_29D5B33AC();
    v59 = v103;
    v97 = v56;
    sub_29D5B337C();
    v98 = sub_29D5B2A3C();
    (*(v104 + 8))(v59, v105);
    v105 = [v58 uniqueIdentifier];
    v60 = type metadata accessor for HealthRecordsAccountsTab(0);
    v61 = objc_allocWithZone(v60);
    v62 = OBJC_IVAR____TtC13HealthRecords24HealthRecordsAccountsTab_accountIconProvider;
    sub_29D48F51C(0, &qword_2A17A4AD8, 0x29EDC4298);
    sub_29D5B445C();
    sub_29D5B208C();
    swift_allocObject();
    *&v61[v62] = sub_29D5B206C();
    v63 = v57;
    v64 = v57;
    v65 = v112;
    v66 = v92;
    v92(&v61[OBJC_IVAR____TtC13HealthRecords24HealthRecordsAccountsTab_accountId], v63, v112);
    v67 = sub_29D5B3E1C();

    aBlock[4] = sub_29D545B3C;
    aBlock[5] = v108;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D490208;
    aBlock[3] = &unk_2A2429C10;
    v68 = _Block_copy(aBlock);

    v115.receiver = v61;
    v115.super_class = v60;
    v69 = v105;
    v70 = objc_msgSendSuper2(&v115, sel_initWithTitle_image_identifier_viewControllerProvider_, v67, v98, v105, v68);
    _Block_release(v68);

    v71 = sub_29D5B410C();
    v72 = v101;
    (*(*(v71 - 8) + 56))(v101, 1, 1, v71);
    v73 = v107;
    v66(v107, v64, v65);
    sub_29D5B40EC();
    v74 = v70;
    v75 = sub_29D5B40DC();
    v76 = v111;
    v77 = (*(v111 + 80) + 40) & ~*(v111 + 80);
    v78 = swift_allocObject();
    v79 = MEMORY[0x29EDCA390];
    v78[2] = v75;
    v78[3] = v79;
    v78[4] = v74;
    v94(v78 + v77, v73, v65);
    sub_29D544E04(0, 0, v72, &unk_29D5BA180, v78);

    v80 = v76[1];
    (v80)(v102, v65);
    v45 = v74;
    v81 = [v93 baseAutomationIdentifier];
    v82 = v100;
    if (v81)
    {
      v83 = v81;
      v111 = v80;
      v84 = v100;
      v86 = v113;
      v85 = v114;
      v87 = v97;
    }

    else
    {
      sub_29D48F410(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0]);
      v88 = swift_allocObject();
      *(v88 + 16) = xmmword_29D5B5E20;
      *(v88 + 32) = 6447444;
      *(v88 + 40) = 0xE300000000000000;
      v87 = v97;
      *(v88 + 48) = sub_29D5B33AC();
      *(v88 + 56) = v89;
      v90 = sub_29D5B401C();

      v83 = HKUIJoinStringsForAutomationIdentifier();

      if (!v83)
      {
        v86 = v113;
        v46 = v114;
        goto LABEL_12;
      }

      v111 = v80;
      v84 = v82;
      v86 = v113;
      v85 = v114;
    }

    sub_29D5B3E5C();

    v83 = sub_29D5B3E1C();

    v46 = v85;
    v82 = v84;
    v80 = v111;
LABEL_12:
    [v45 setAccessibilityIdentifier_];

    [v45 setAllowsHiding_];

    sub_29D4A96D0(v99, v82);
    (v80)(v110, v112);
    result = (*(v86 + 8))(v87, v96);
    goto LABEL_13;
  }

  sub_29D4A96D0(v41, v43);
  (*(v113 + 56))(v29, 1, 1, v30);
  result = sub_29D48F4AC(v29, &qword_2A1A17308, MEMORY[0x29EDC2A90]);
  v45 = 0;
  v46 = v114;
LABEL_13:
  *v46 = v45;
  return result;
}

id sub_29D5443BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_29D5B33CC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D5B371C();
  v54 = *(v11 - 8);
  v55 = v11;
  MEMORY[0x2A1C7C4A8](v11, v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D5B32CC();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v21);
  v53 = &v50 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v51 = v16;
    v52 = v15;
    v50 = a3;
    v25 = [a3 actionHandlerClassName];
    if (v25)
    {
      v26 = v25;
      v27 = NSClassFromString(v25);

      if (v27)
      {
        ObjCClassMetadata = swift_getObjCClassMetadata();
        if (swift_conformsToProtocol2())
        {
          if (ObjCClassMetadata)
          {
            v29 = [v24 tabBarController];
            if (v29)
            {
              v30 = v29;
              v55 = ObjCClassMetadata;
              v31 = v50;
              v32 = [v50 objectID];
              v57 = 0;
              memset(v56, 0, sizeof(v56));
              v33 = [v31 actionHandlerUserData];
              if (v33)
              {
                v34 = v33;
                sub_29D5B0D7C();
              }

              v44 = v24;
              sub_29D5B2CFC();

              v45 = v30;
              v46 = v53;
              sub_29D5B32BC();
              v48 = v51;
              v47 = v52;
              (*(v51 + 16))(v20, v46, v52);
              sub_29D5B30EC();
              v49 = sub_29D5B2D6C();

              (*(v48 + 8))(v46, v47);
              return v49;
            }
          }
        }
      }
    }
  }

  sub_29D5B36DC();
  (*(v7 + 16))(v10, a4, v6);
  v35 = sub_29D5B370C();
  v36 = sub_29D5B427C();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v56[0] = v38;
    *v37 = 136315138;
    v39 = sub_29D5B33AC();
    v41 = v40;
    (*(v7 + 8))(v10, v6);
    v42 = sub_29D501890(v39, v41, v56);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_29D48C000, v35, v36, "No action handler for %s", v37, 0xCu);
    sub_29D48F668(v38);
    MEMORY[0x29ED5FB80](v38, -1, -1);
    MEMORY[0x29ED5FB80](v37, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  (*(v54 + 8))(v14, v55);
  return [objc_allocWithZone(MEMORY[0x29EDC7DA8]) init];
}

uint64_t sub_29D544950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = sub_29D5B40EC();
  v5[4] = sub_29D5B40DC();
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_29D544A10;

  return sub_29D5450E8(a5);
}

uint64_t sub_29D544A10(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  v5 = sub_29D5B40CC();
  if (v1)
  {
    v6 = sub_29D544C10;
  }

  else
  {
    v6 = sub_29D544B70;
  }

  return MEMORY[0x2A1C73D48](v6, v5, v4);
}

uint64_t sub_29D544B70()
{
  v1 = v0[6];

  if (v1)
  {
    v2 = v0[6];
    v3 = v0[2];
    v4 = sub_29D544C74();

    [v3 setImage_];
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_29D544C10()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_29D544C74()
{
  v1 = [objc_allocWithZone(MEMORY[0x29EDC7AB8]) initWithSize_];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  __asm { FMOV            V0.2D, #25.0 }

  *(v2 + 24) = _Q0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_29D545D3C;
  *(v8 + 24) = v2;
  v13[4] = sub_29D545D58;
  v13[5] = v8;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1107296256;
  v13[2] = sub_29D5459BC;
  v13[3] = &unk_2A2429CB0;
  v9 = _Block_copy(v13);
  v10 = v0;

  v11 = [v1 imageWithActions_];

  _Block_release(v9);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if ((v1 & 1) == 0)
  {
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D544E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_29D48F2B4(0, &unk_2A1A19450, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = v23 - v10;
  sub_29D545CA8(a3, v23 - v10);
  v12 = sub_29D5B410C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_29D48F4AC(v11, &unk_2A1A19450, MEMORY[0x29EDCA398]);
  }

  else
  {
    sub_29D5B40FC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_29D5B40CC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_29D5B3EAC() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_29D48F4AC(a3, &unk_2A1A19450, MEMORY[0x29EDCA398]);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_29D48F4AC(a3, &unk_2A1A19450, MEMORY[0x29EDCA398]);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_29D5450E8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_29D5B1A1C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_29D5B1A2C();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  sub_29D48F2B4(0, &qword_2A17A4430, MEMORY[0x29EDC3EE0], MEMORY[0x29EDC9C68]);
  v2[11] = swift_task_alloc();
  v5 = sub_29D5B1A6C();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = sub_29D5B40EC();
  v2[16] = sub_29D5B40DC();
  v2[17] = sub_29D5B40DC();
  v6 = sub_29D5B40CC();
  v2[18] = v6;
  v2[19] = v7;

  return MEMORY[0x2A1C73D48](sub_29D545334, v6, v7);
}

uint64_t sub_29D545334()
{
  v1 = v0;
  (*(v0[9] + 104))(v0[10], *MEMORY[0x29EDC3EC8], v0[8]);
  v2 = swift_task_alloc();
  v1[20] = v2;
  *v2 = v1;
  v2[1] = sub_29D545438;
  v4 = v1[10];
  v3 = v1[11];
  v5 = v1[3];

  return MEMORY[0x2A1C65D58](v3, v5, v4);
}

uint64_t sub_29D545438()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 152);
  v6 = *(v1 + 144);

  return MEMORY[0x2A1C73D48](sub_29D5455E8, v6, v5);
}

uint64_t sub_29D5455E8()
{

  v1 = sub_29D5B40CC();

  return MEMORY[0x2A1C73D48](sub_29D5456A0, v1, v0);
}

uint64_t sub_29D5456A0()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_29D48F4AC(v0[11], &qword_2A17A4430, MEMORY[0x29EDC3EE0]);
    v4 = 0;
  }

  else
  {
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[5];
    (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
    sub_29D5B1A3C();
    LODWORD(v7) = (*(v6 + 88))(v5, v7);
    LODWORD(v6) = *MEMORY[0x29EDC3EC0];
    v8 = sub_29D5B1A5C();
    v9 = v8;
    if (v7 == v6)
    {
      v0[2] = 0;
      v4 = [v8 hr:v0 + 2 imageWithWhiteBackground:?];

      v10 = v0[2];
      if (v4)
      {
        v11 = *(v0[13] + 8);
        v12 = v10;
        v11(v0[14], v0[12]);
      }

      else
      {
        v16 = v0[13];
        v17 = v10;
        v18 = sub_29D5B0D2C();

        swift_willThrow();
        v4 = sub_29D5B1A5C();
        (*(v16 + 8))(v0[14], v0[12]);
      }
    }

    else
    {
      v14 = v0[6];
      v13 = v0[7];
      v15 = v0[5];
      (*(v0[13] + 8))(v0[14], v0[12]);
      (*(v14 + 8))(v13, v15);
      v4 = v9;
    }
  }

  v19 = v0[1];

  return v19(v4);
}

void sub_29D5459BC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_29D545A48(uint64_t a1)
{
  result = sub_29D5B0EDC();
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

unint64_t sub_29D545AE4()
{
  result = qword_2A17A4AD0;
  if (!qword_2A17A4AD0)
  {
    sub_29D5B33CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4AD0);
  }

  return result;
}

id sub_29D545B3C(uint64_t a1)
{
  v3 = *(sub_29D5B33CC() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_29D5443BC(a1, v4, v5, v6);
}

uint64_t sub_29D545BB0(uint64_t a1)
{
  v4 = *(sub_29D5B0EDC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29D4E7B8C;

  return sub_29D544950(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_29D545CA8(uint64_t a1, uint64_t a2)
{
  sub_29D48F2B4(0, &unk_2A1A19450, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_29D545D98()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *sub_29D545DC0()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

id sub_29D545DF8()
{
  v1 = qword_2A17A4AE0;
  v2 = *(v0 + qword_2A17A4AE0);
  if (v2)
  {
    v3 = *(v0 + qword_2A17A4AE0);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7C90]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setAxis_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D545E94()
{
  v1 = qword_2A17A4AE8;
  v2 = *(v0 + qword_2A17A4AE8);
  if (v2)
  {
    v3 = *(v0 + qword_2A17A4AE8);
  }

  else
  {
    v4 = sub_29D545EF4();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D545EF4()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_29D48F51C(0, &unk_2A1A19440, 0x29EDC76B0);
  v1 = sub_29D5B458C();
  [v0 setFont_];

  v2 = sub_29D5B3E1C();
  [v0 setText_];

  v3 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  return v0;
}

uint64_t sub_29D54600C(uint64_t a1)
{
  v3 = sub_29D5B1BDC();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_2A17ABF78;
  result = sub_29D4D9D64(a1, *(v1 + qword_2A17ABF78));
  if ((result & 1) == 0)
  {
    v56 = v3;
    v10 = sub_29D545DF8();
    v11 = [v10 arrangedSubviews];

    sub_29D48F51C(0, &qword_2A17A43C0, 0x29EDC7DA0);
    v12 = sub_29D5B402C();

    v54 = v8;
    v55 = v7;
    v57 = v4;
    if (v12 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29D5B485C())
    {
      v59 = qword_2A17A4AE0;
      if (!i)
      {
        break;
      }

      v14 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x29ED5EF30](v14, v12);
        }

        else
        {
          if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v15 = *(v12 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        [*(v1 + v59) removeArrangedSubview_];
        [v16 removeFromSuperview];

        ++v14;
        if (v17 == i)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_13:

    v18 = v1;
    v19 = sub_29D545E94();
    v20 = v57 + 104;
    v21 = *(v57 + 104);
    v22 = v55;
    v21(v55, *MEMORY[0x29EDC3FF0], v56);
    v53 = sub_29D5B1C0C();
    swift_allocObject();
    sub_29D5B1BEC();
    v23 = v54;
    sub_29D5B1BFC();

    v24 = sub_29D5B3E1C();

    [v19 setText_];

    v25 = v18;
    v26 = *(v18 + v23);
    v27 = *(v26 + 16);
    if (v27 >= 0xA)
    {
      v28 = 10;
    }

    else
    {
      v28 = *(v26 + 16);
    }

    v29 = 0x29EDC7000uLL;
    v30 = 0x1FB2FA000uLL;
    v31 = &off_29F351000;
    if (v27)
    {
      v51 = v21;
      v52 = v26;
      v32 = *MEMORY[0x29EDC8118];
      v57 = v20;
      v58 = v32;
      v33 = v26 + 40;
      v50 = v28;
      v34 = v28;
      v35 = v59;
      do
      {
        v36 = v29;
        v37 = objc_allocWithZone(*(v29 + 2872));

        v38 = [v37 init];
        [v38 setTranslatesAutoresizingMaskIntoConstraints_];
        sub_29D48F51C(0, &unk_2A1A19440, 0x29EDC76B0);
        v39 = sub_29D5B458C();
        [v38 setFont_];

        v40 = sub_29D5B3E1C();
        [v38 setText_];

        v41 = [objc_opt_self() secondaryLabelColor];
        [v38 setTextColor_];

        [*(v25 + v35) addArrangedSubview_];

        v29 = v36;
        v33 += 16;
        --v34;
      }

      while (v34);
      v22 = v55;
      v42 = *(*(v25 + v54) + 16);
      v43 = v56;
      v21 = v51;
      v31 = &off_29F351000;
      v30 = 0x1FB2FA000;
      v28 = v50;
    }

    else
    {
      v42 = 0;
      v43 = v56;
    }

    if (v42 - v28 >= 1)
    {
      v44 = [objc_allocWithZone(*(v29 + 2872)) (v30 + 2936)];
      v58 = v25;
      v45 = v44;
      [v44 setTranslatesAutoresizingMaskIntoConstraints_];
      sub_29D48F51C(0, &unk_2A1A19440, 0x29EDC76B0);
      v46 = sub_29D5B458C();
      [v45 v31[329]];

      v21(v22, *MEMORY[0x29EDC3FE8], v43);
      swift_allocObject();
      sub_29D5B1BEC();
      sub_29D5B1BFC();

      v47 = sub_29D5B3E1C();

      [v45 setText_];

      v48 = [objc_opt_self() secondaryLabelColor];
      [v45 setTextColor_];

      v49 = *(v58 + v59);
      [v49 addArrangedSubview_];
    }
  }

  return result;
}

void sub_29D546600(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for SharedConceptComboTileViewController(0);
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  sub_29D546668();
  sub_29D54676C();
  sub_29D546D54();
}

void sub_29D546668()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  [v1 addSubview_];

  v3 = [v0 view];
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  v5 = sub_29D545E94();
  [v4 addSubview_];

  v6 = [v0 view];
  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = sub_29D545DF8();
  [v7 addSubview_];
}

void sub_29D54676C()
{
  sub_29D502718(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29D5B8F10;
  v2 = *&v0[qword_2A17ABF70];
  v3 = [v2 leadingAnchor];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v4;
  v6 = [v4 leadingAnchor];

  v7 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v7;
  v8 = [v2 trailingAnchor];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  v11 = [v9 trailingAnchor];

  v12 = [v8 constraintEqualToAnchor_];
  *(v1 + 40) = v12;
  v13 = [v2 topAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = v14;
  v16 = [v14 topAnchor];

  v17 = [v13 constraintEqualToAnchor_];
  *(v1 + 48) = v17;
  v18 = sub_29D545E94();
  v19 = [v18 leadingAnchor];

  v20 = [v0 view];
  if (!v20)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v20;
  v22 = [v20 leadingAnchor];

  v23 = [v19 constraintEqualToAnchor:v22 constant:14.0];
  *(v1 + 56) = v23;
  v24 = qword_2A17A4AE8;
  v25 = [*&v0[qword_2A17A4AE8] trailingAnchor];
  v26 = [v0 view];
  if (!v26)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v27 = v26;
  v28 = [v26 trailingAnchor];

  v29 = [v25 constraintEqualToAnchor:v28 constant:16.0];
  *(v1 + 64) = v29;
  v30 = [*&v0[v24] topAnchor];
  v31 = [v2 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:18.0];

  *(v1 + 72) = v32;
  v33 = sub_29D545DF8();
  v34 = [v33 leadingAnchor];

  v35 = [v0 view];
  if (!v35)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v36 = v35;
  v37 = [v35 leadingAnchor];

  v38 = [v34 constraintEqualToAnchor:v37 constant:14.0];
  *(v1 + 80) = v38;
  v39 = qword_2A17A4AE0;
  v40 = [*&v0[qword_2A17A4AE0] trailingAnchor];
  v41 = [v0 view];
  if (!v41)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v42 = v41;
  v43 = [v41 trailingAnchor];

  v44 = [v40 constraintEqualToAnchor:v43 constant:16.0];
  *(v1 + 88) = v44;
  v45 = [*&v0[v39] topAnchor];
  v46 = [*&v0[v24] bottomAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:4.0];

  *(v1 + 96) = v47;
  v48 = [*&v0[v39] bottomAnchor];
  v49 = [v0 view];
  if (!v49)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v50 = v49;
  v51 = objc_opt_self();
  v52 = [v50 bottomAnchor];

  v53 = [v48 constraintEqualToAnchor:v52 constant:-12.0];
  *(v1 + 104) = v53;
  sub_29D48F51C(0, &qword_2A17A3F80, 0x29EDBA008);
  v54 = sub_29D5B401C();

  [v51 activateConstraints_];
}

uint64_t sub_29D546D54()
{
  v1 = v0;
  v53 = sub_29D5B200C();
  v52 = *(v53 - 1);
  MEMORY[0x2A1C7C4A8](v53, v2);
  v51 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D547B8C(0, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = &v51 - v6;
  v56 = sub_29D5B1BCC();
  v55 = *(v56 - 8);
  MEMORY[0x2A1C7C4A8](v56, v8);
  v54 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D547B8C(0, &qword_2A17A4B00, type metadata accessor for SharedConceptComboFeedItemData);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v13 = &v51 - v12;
  v14 = type metadata accessor for SharedConceptComboFeedItemData(0);
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x29EDCA1E8];
  v20 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60);
  swift_beginAccess();
  sub_29D547BE0(v1 + v20, v13, &qword_2A17A4B00, type metadata accessor for SharedConceptComboFeedItemData);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_29D547CB0(v13, &qword_2A17A4B00, type metadata accessor for SharedConceptComboFeedItemData);
  }

  sub_29D547C4C(v13, v18);
  sub_29D5B1CBC();
  v22 = sub_29D5B1C8C();
  v23 = *((*v19 & *v1) + 0x70);
  swift_beginAccess();
  result = sub_29D547BE0(v1 + v23, &v61, &qword_2A1A19460, sub_29D4A60E8);
  v24 = *(&v62 + 1);
  if (*(&v62 + 1))
  {
    v25 = sub_29D499EC0(&v61, *(&v62 + 1));
    v26 = *(v24 - 8);
    MEMORY[0x2A1C7C4A8](v25, v25);
    v28 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v28);
    v29 = sub_29D5B314C();
    (*(v26 + 8))(v28, v24);
    v30 = sub_29D5B1C9C();

    sub_29D48F668(&v61);
    v31 = [v30 dateCache];

    v32 = *MEMORY[0x29EDC4068];
    v33 = sub_29D5B1D6C();
    v34 = v54;
    (*(*(v33 - 8) + 104))(v54, v32, v33);
    (*(v55 + 104))(v34, *MEMORY[0x29EDC3F80], v56);
    v35 = sub_29D5B0EFC();
    (*(*(v35 - 8) + 56))(v7, 1, 1, v35);
    v36 = v51;
    sub_29D5B1FFC();
    v37 = sub_29D5B2A0C();
    v39 = v38;
    (*(v52 + 8))(v36, v53);
    sub_29D547CB0(v7, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
    v40 = sub_29D5B0DEC();
    v53 = v31;
    v41 = HKMostRecentSampleEndDateText();

    if (v41)
    {
      v42 = sub_29D5B3E5C();
      v44 = v43;
    }

    else
    {
      v42 = 0;
      v44 = 0;
    }

    v45 = v54;
    v46 = sub_29D5B1AFC();
    v47 = sub_29D5B1B9C();
    *&v61 = v37;
    *(&v61 + 1) = v39;
    *&v62 = v42;
    *(&v62 + 1) = v44;
    *&v63 = v46;
    *(&v63 + 1) = v47;
    v64 = 0;
    v59 = &type metadata for TitleViewData;
    v60 = sub_29D547D0C();
    v48 = swift_allocObject();
    v58 = v48;
    v49 = v62;
    *(v48 + 16) = v61;
    *(v48 + 32) = v49;
    *(v48 + 48) = v63;
    *(v48 + 64) = v64;
    sub_29D547D60(&v61, v57);
    sub_29D5B237C();
    v50 = *(v1 + qword_2A17ABF78);
    *(v1 + qword_2A17ABF78) = *&v18[*(v14 + 20)];

    sub_29D54600C(v50);

    sub_29D547D98(&v61);

    (*(v55 + 8))(v45, v56);
    return sub_29D547DC8(v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D5474C4(uint64_t a1)
{
  v2 = v1;
  v4 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x70);
  swift_beginAccess();
  result = sub_29D547BE0(v2 + v4, v22, &qword_2A1A19460, sub_29D4A60E8);
  v6 = v23;
  if (v23)
  {
    v7 = sub_29D499EC0(v22, v23);
    v8 = *(v6 - 8);
    MEMORY[0x2A1C7C4A8](v7, v7);
    v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v8 + 16))(v10);
    v11 = sub_29D5B314C();
    (*(v8 + 8))(v10, v6);
    v12 = sub_29D5B423C();

    v13 = objc_allocWithZone(type metadata accessor for LabListViewController(0));
    v14 = sub_29D585CA0(v12);

    sub_29D48F668(v22);
    sub_29D5104F8(a1, v22);
    v15 = v23;
    if (v23)
    {
      v16 = sub_29D499EC0(v22, v23);
      v17 = *(v15 - 8);
      MEMORY[0x2A1C7C4A8](v16, v16);
      v19 = &v21[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v17 + 16))(v19);
      v20 = sub_29D5B4C6C();
      (*(v17 + 8))(v19, v15);
      sub_29D48F668(v22);
    }

    else
    {
      v20 = 0;
    }

    [v2 showViewController:v14 sender:v20];

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_29D547788(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = qword_2A17ABF70;
  *&v3[v6] = [objc_allocWithZone(sub_29D5B238C()) initWithFrame_];
  *&v3[qword_2A17A4AE0] = 0;
  *&v3[qword_2A17A4AE8] = 0;
  *&v3[qword_2A17ABF78] = MEMORY[0x29EDCA190];
  if (a2)
  {
    v7 = sub_29D5B3E1C();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for SharedConceptComboTileViewController(0);
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id sub_29D547880(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_29D547788(v5, v7, a4);
}

id sub_29D5478E0(void *a1)
{
  v3 = qword_2A17ABF70;
  *&v1[v3] = [objc_allocWithZone(sub_29D5B238C()) initWithFrame_];
  *&v1[qword_2A17A4AE0] = 0;
  *&v1[qword_2A17A4AE8] = 0;
  *&v1[qword_2A17ABF78] = MEMORY[0x29EDCA190];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SharedConceptComboTileViewController(0);
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_29D5479D4()
{
}

id sub_29D547A34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedConceptComboTileViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D547A6C(uint64_t a1)
{
}

uint64_t type metadata accessor for SharedConceptComboTileViewController(uint64_t a1)
{
  result = qword_2A17A4AF0;
  if (!qword_2A17A4AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D547B8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D547BE0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D547B8C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D547C4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedConceptComboFeedItemData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D547CB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D547B8C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29D547D0C()
{
  result = qword_2A17A4B08;
  if (!qword_2A17A4B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4B08);
  }

  return result;
}

uint64_t sub_29D547DC8(uint64_t a1)
{
  v2 = type metadata accessor for SharedConceptComboFeedItemData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_29D547E24(uint64_t a1, uint64_t a2)
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

uint64_t sub_29D547E40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
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

uint64_t sub_29D547E88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29D547EE8(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for SharedConceptFeedItemData(0);
  v27 = *(v7 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v26 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v9, v11);
  v14 = v23 - v13;
  v25 = *(a3 + 16);
  if (v25)
  {
    v15 = 0;
    v16 = MEMORY[0x29EDCA190];
    v23[1] = a2;
    v24 = a3;
    v23[0] = a1;
    while (v15 < *(a3 + 16))
    {
      v17 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v18 = *(v27 + 72);
      sub_29D554DF4(a3 + v17 + v18 * v15, v14, type metadata accessor for SharedConceptFeedItemData);
      v19 = a1(v14);
      if (v3)
      {
        sub_29D554E5C(v14, type metadata accessor for SharedConceptFeedItemData);

        goto LABEL_15;
      }

      if (v19)
      {
        sub_29D553E7C(v14, v26, type metadata accessor for SharedConceptFeedItemData);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_29D4C6BC0(0, *(v16 + 16) + 1, 1);
          v16 = v28;
        }

        v22 = *(v16 + 16);
        v21 = *(v16 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_29D4C6BC0((v21 > 1), v22 + 1, 1);
          v16 = v28;
        }

        *(v16 + 16) = v22 + 1;
        result = sub_29D553E7C(v26, v16 + v17 + v22 * v18, type metadata accessor for SharedConceptFeedItemData);
        a3 = v24;
        a1 = v23[0];
      }

      else
      {
        result = sub_29D554E5C(v14, type metadata accessor for SharedConceptFeedItemData);
      }

      if (v25 == ++v15)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = MEMORY[0x29EDCA190];
LABEL_15:

    return v16;
  }

  return result;
}

uint64_t sub_29D548174(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x29EDCA190];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D5B485C())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x29ED5EF30](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_29D5B498C();
        sub_29D5B49BC();
        v4 = v15;
        sub_29D5B49CC();
        sub_29D5B499C();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x29EDCA190];
LABEL_20:

  return v12;
}

char *sub_29D548378(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v40 = a2;
  sub_29D554D90(0, qword_2A1A19830, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v32 - v10;
  v12 = sub_29D5B134C();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v12, v14);
  v39 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v35 = &v32 - v18;
  v19 = *(a3 + 16);
  if (!v19)
  {
    return MEMORY[0x29EDCA190];
  }

  v20 = *(a4(0) - 8);
  v33 = v13;
  v37 = (v13 + 32);
  v38 = (v13 + 48);
  v21 = a3 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v36 = *(v20 + 72);
  v22 = MEMORY[0x29EDCA190];
  v34 = a1;
  while (1)
  {
    v23 = MEMORY[0x29ED5F4B0]();
    a1(v21);
    if (v4)
    {
      break;
    }

    objc_autoreleasePoolPop(v23);
    if ((*v38)(v11, 1, v12) == 1)
    {
      sub_29D5528C0(v11, qword_2A1A19830, MEMORY[0x29EDC3840]);
    }

    else
    {
      v24 = v12;
      v25 = *v37;
      v26 = v35;
      (*v37)(v35, v11, v24);
      v27 = v26;
      v28 = v24;
      v25(v39, v27, v24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_29D515230(0, *(v22 + 2) + 1, 1, v22);
      }

      v30 = *(v22 + 2);
      v29 = *(v22 + 3);
      if (v30 >= v29 >> 1)
      {
        v22 = sub_29D515230((v29 > 1), v30 + 1, 1, v22);
      }

      *(v22 + 2) = v30 + 1;
      v25(&v22[((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v30], v39, v28);
      v12 = v28;
      a1 = v34;
    }

    v21 += v36;
    if (!--v19)
    {
      return v22;
    }
  }

  objc_autoreleasePoolPop(v23);

  return v22;
}

void *sub_29D5486F4(void (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v34 = a1;
  sub_29D554D90(0, &qword_2A1A17390, MEMORY[0x29EDC3948], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = &v28 - v7;
  v9 = sub_29D5B16BC();
  v11 = MEMORY[0x2A1C7C4A8](v9, v10);
  v32 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v29 = &v28 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x29EDCA190];
  }

  v17 = (a3 + 32);
  v28 = v14;
  v30 = (v14 + 32);
  v31 = (v14 + 48);
  v35 = MEMORY[0x29EDCA190];
  while (1)
  {
    v18 = v9;
    v19 = *v17++;
    v20 = v19;
    v21 = MEMORY[0x29ED5F4B0]();
    v36 = v19;
    v34(&v36);
    if (v3)
    {
      break;
    }

    objc_autoreleasePoolPop(v21);

    v9 = v18;
    if ((*v31)(v8, 1, v18) == 1)
    {
      sub_29D5528C0(v8, &qword_2A1A17390, MEMORY[0x29EDC3948]);
    }

    else
    {
      v22 = v29;
      v23 = *v30;
      (*v30)(v29);
      (v23)(v32, v22, v18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_29D5158CC(0, v35[2] + 1, 1, v35);
      }

      v25 = v35[2];
      v24 = v35[3];
      if (v25 >= v24 >> 1)
      {
        v35 = sub_29D5158CC((v24 > 1), v25 + 1, 1, v35);
      }

      v26 = v35;
      v35[2] = v25 + 1;
      v9 = v18;
      (v23)(v26 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, v32, v18);
    }

    if (!--v16)
    {
      return v35;
    }
  }

  objc_autoreleasePoolPop(v21);

  return v35;
}

uint64_t sub_29D548A2C(uint64_t a1)
{
  v2 = type metadata accessor for HealthRecordsGeneratorContext(0);
  v47 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v42[1] = v4;
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5537A8(0);
  v49 = v6;
  v51 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v7);
  v45 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D553AD8(0);
  v10 = *(v9 - 8);
  v60 = v9;
  v61 = v10;
  MEMORY[0x2A1C7C4A8](v9, v11);
  v62 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5542C4(0, &qword_2A1A16A68, sub_29D553AD8, sub_29D553CF8);
  v56 = v13;
  v58 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v14);
  v52 = v42 - v15;
  sub_29D553D2C(0);
  v57 = v16;
  v59 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v17);
  v53 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D554610(0, &qword_2A1A16E60, sub_29D553D2C, sub_29D553E48);
  v20 = *(v19 - 8);
  v54 = v19;
  v55 = v20;
  MEMORY[0x2A1C7C4A8](v19, v21);
  v50 = v42 - v22;
  v44 = a1;
  v63 = sub_29D54FD3C(a1);
  sub_29D5B396C();
  sub_29D5539A4(0);
  sub_29D553894(0);
  v46 = MEMORY[0x29EDB8A00];
  sub_29D551D18(&qword_2A1A166E0, sub_29D5539A4, MEMORY[0x29EDB8A00]);
  sub_29D553970();
  sub_29D5B3BEC();

  v43 = type metadata accessor for HealthRecordsGeneratorContext;
  v23 = v5;
  sub_29D554DF4(a1, v5, type metadata accessor for HealthRecordsGeneratorContext);
  v24 = (*(v47 + 80) + 24) & ~*(v47 + 80);
  v25 = swift_allocObject();
  v26 = v48;
  *(v25 + 16) = v48;
  sub_29D553E7C(v23, v25 + v24, type metadata accessor for HealthRecordsGeneratorContext);
  sub_29D553BC4(0);
  sub_29D554AC8(0, &qword_2A1A16678, sub_29D553BC4, MEMORY[0x29EDB89F8]);
  sub_29D551D18(&qword_2A1A169F0, sub_29D5537A8, MEMORY[0x29EDB89A8]);
  sub_29D553C70();
  v27 = v49;
  v28 = v45;
  sub_29D5B3BFC();

  (*(v51 + 8))(v28, v27);
  sub_29D554DF4(v44, v23, v43);
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  sub_29D553E7C(v23, v29 + v24, type metadata accessor for HealthRecordsGeneratorContext);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_29D554040;
  *(v30 + 24) = v29;
  v31 = MEMORY[0x29EDB89F8];
  sub_29D55478C(0, &qword_2A1A166A8, MEMORY[0x29EDB89F8]);
  sub_29D553CF8();
  sub_29D551BE8(&qword_2A1A166B0, &qword_2A1A166A8, v31, v46);
  v32 = v52;
  v33 = v60;
  v34 = v62;
  sub_29D5B3BFC();

  (*(v61 + 8))(v34, v33);
  sub_29D553DC0();
  v35 = v53;
  v36 = v56;
  sub_29D5B3BDC();
  (*(v58 + 8))(v32, v36);
  sub_29D553E48();
  v37 = v50;
  v38 = v57;
  sub_29D5B3B7C();
  (*(v59 + 8))(v35, v38);
  sub_29D5540FC();
  v39 = v54;
  v40 = sub_29D5B3B1C();
  (*(v55 + 8))(v37, v39);
  return v40;
}

unint64_t sub_29D5491C8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  sub_29D553740(0);
  result = sub_29D552D74(a1 + *(v4 + 48));
  *a2 = result;
  return result;
}

uint64_t sub_29D549204(void *a1)
{
  sub_29D50CCA4(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *a1;
  sub_29D551F60(0, &qword_2A1A163D8, &qword_2A1A162D0, 0x29EDBAC68, MEMORY[0x29EDC9A40]);
  sub_29D554260(&qword_2A1A163D0, &qword_2A1A163D8, &qword_2A1A162D0, 0x29EDBAC68);
  sub_29D5B3FEC();
  sub_29D4A02FC(0, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
  sub_29D5B391C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_29D549384@<X0>(id *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t *a4@<X8>)
{
  v24 = a4;
  v7 = sub_29D5B0E6C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  sub_29D552BF8(0);
  v22 = *(v11 - 8);
  v23 = v11;
  MEMORY[0x2A1C7C4A8](v11, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v25 = sub_29D5B261C();
  (*(v8 + 16))(&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = v15;
  (*(v8 + 32))(v17 + v16, &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  sub_29D5250C8(0);
  sub_29D551F60(0, &qword_2A1A16298, &qword_2A1A162A0, 0x29EDC44D8, MEMORY[0x29EDC9C68]);
  sub_29D551D18(&qword_2A1A16710, sub_29D5250C8, MEMORY[0x29EDB8A00]);
  v18 = v15;

  sub_29D5B3B7C();

  sub_29D551D18(&qword_2A17A4B38, sub_29D552BF8, MEMORY[0x29EDB8908]);
  v19 = v23;
  v20 = sub_29D5B3B1C();

  result = (*(v22 + 8))(v14, v19);
  *v24 = v20;
  return result;
}

void *sub_29D549690@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = sub_29D5B371C();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  result = sub_29D5486F4(sub_29D552B84, v35, v16);
  if (!v5)
  {
    v18 = result;
    v34 = 0;
    sub_29D5B36AC();

    v19 = sub_29D5B370C();
    v20 = sub_29D5B429C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40 = v33;
      *v21 = 136446466;
      v39 = a4;
      swift_getMetatypeMetadata();
      v22 = sub_29D5B3E7C();
      v24 = sub_29D501890(v22, v23, &v40);
      v32 = a5;
      v25 = v24;

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      v39 = v18;
      sub_29D552448(0);

      sub_29D5B4CAC();
      v26 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_29D5B47BC();
      swift_unknownObjectRelease();
      v27 = sub_29D5B3E9C();
      v29 = sub_29D501890(v27, v28, &v40);

      *(v21 + 14) = v29;
      _os_log_impl(&dword_29D48C000, v19, v20, "[%{public}s]: Sharable models generated: %{public}s", v21, 0x16u);
      v30 = v33;
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v30, -1, -1);
      MEMORY[0x29ED5FB80](v21, -1, -1);

      result = (*(v12 + 8))(v15, v11);
      *v32 = v18;
    }

    else
    {

      result = (*(v12 + 8))(v15, v11);
      *a5 = v18;
    }
  }

  return result;
}

void sub_29D549974(id *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v4 = *a1;
    v5 = sub_29D5B143C();
    sub_29D549A2C(v4, a2);

    if (v2)
    {
      return;
    }

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_29D5B16BC();
  (*(*(v7 - 8) + 56))(a2, v6, 1, v7);
}

void sub_29D549A2C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = MEMORY[0x29EDC9C68];
  sub_29D554D90(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = v51 - v8;
  sub_29D554D90(0, &qword_2A1A19378, MEMORY[0x29EDB9D58], v5);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v13 = v51 - v12;
  v14 = sub_29D5B175C();
  MEMORY[0x2A1C7C4A8](v14 - 8, v15);
  v17 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D48F51C(0, &qword_2A1A162E0, 0x29EDBAB68);
  v18 = [swift_getObjCClassFromMetadata() diagnosticTestResultTypeForIdentifier_];
  if (!v18)
  {
    sub_29D552BA4();
    swift_allocError();
    *v38 = 0;
    swift_willThrow();
    return;
  }

  v19 = v18;
  if (![a1 hasConceptIdentifier])
  {
    sub_29D552BA4();
    swift_allocError();
    *v39 = 1;
    swift_willThrow();

    return;
  }

  v52 = v13;
  v53 = v17;
  v54 = v9;
  sub_29D554D90(0, &qword_2A1A161E8, MEMORY[0x29EDC4098], MEMORY[0x29EDC9E90]);
  v20 = sub_29D5B1D6C();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v55 = xmmword_29D5B62A0;
  *(v23 + 16) = xmmword_29D5B62A0;
  (*(v21 + 104))(v23 + v22, *MEMORY[0x29EDC4068], v20);
  v24 = [a1 conceptIdentifier];
  if (v24)
  {
    v25 = v24;
    v26 = sub_29D5B3E5C();
    v28 = v27;

    v51[1] = v28;
    v51[2] = v23;
    v29 = sub_29D514404(v23, v26, v28);
    v31 = v30;
    v32 = [a1 hasPreferredName];
    v51[3] = a2;
    v51[4] = v2;
    v56 = v29;
    if (v32 && (v33 = [a1 preferredName]) != 0)
    {
      v34 = v33;
      v35 = sub_29D5B3E5C();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    sub_29D554D90(0, &qword_2A17A3E88, MEMORY[0x29EDC2E38], MEMORY[0x29EDC9E90]);
    v40 = *(sub_29D5B353C() - 8);
    v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = v55;
    v43 = (v42 + v41);
    *v43 = v56;
    v43[1] = v31;
    v43[2] = v35;
    v43[3] = v37;
    v43[4] = 0;
    v43[5] = 0;
    (*(v40 + 104))();
    sub_29D51AC0C();
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_29D5B6350;
    *(v44 + 32) = v19;

    *&v55 = v19;
    v45 = [a1 data];
    if (v45)
    {
      v46 = v45;

      sub_29D5B0D7C();

      sub_29D5B169C();
      v47 = v52;
      sub_29D5B0F9C();
      v48 = sub_29D5B0FAC();
      (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
      v49 = v54;
      sub_29D5B0EEC();
      v50 = sub_29D5B0EFC();
      (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
      sub_29D5B167C();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_29D54A044@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v42 = a2;
  sub_29D554D90(0, &qword_2A17A4B10, sub_29D552448, MEMORY[0x29EDB8AB0]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v39 - v9;
  sub_29D554AC8(0, &qword_2A17A4B18, sub_29D552448, MEMORY[0x29EDB8B18]);
  v44 = *(v11 - 8);
  v45 = v11;
  MEMORY[0x2A1C7C4A8](v11, v12);
  v14 = &v39 - v13;
  v43 = sub_29D5B371C();
  v15 = *(v43 - 8);
  MEMORY[0x2A1C7C4A8](v43, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  sub_29D5B36AC();
  v20 = v19;
  v21 = sub_29D5B370C();
  v22 = sub_29D5B427C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v40 = v7;
    v24 = v23;
    v39 = swift_slowAlloc();
    v47 = v39;
    *v24 = 136446466;
    v46 = v42;
    swift_getMetatypeMetadata();
    v25 = sub_29D5B3E7C();
    v42 = a3;
    v27 = sub_29D501890(v25, v26, &v47);
    v41 = v6;
    v28 = v27;

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    v46 = v19;
    v29 = v19;
    sub_29D4A02FC(0, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
    sub_29D5B4CAC();
    v30 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v31 = sub_29D5B3E9C();
    v33 = sub_29D501890(v31, v32, &v47);

    *(v24 + 14) = v33;
    a3 = v42;
    _os_log_impl(&dword_29D48C000, v21, v22, "[%{public}s]: Error making sharable models for record: %{public}s", v24, 0x16u);
    v6 = v41;
    v34 = v39;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v34, -1, -1);
    v35 = v24;
    v7 = v40;
    MEMORY[0x29ED5FB80](v35, -1, -1);
  }

  (*(v15 + 8))(v18, v43);
  v46 = MEMORY[0x29EDCA190];
  sub_29D552448(0);
  sub_29D5B3A2C();
  sub_29D4A02FC(0, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
  sub_29D5B39EC();
  (*(v7 + 8))(v10, v6);
  sub_29D552AFC();
  v36 = v45;
  v37 = sub_29D5B3B1C();
  result = (*(v44 + 8))(v14, v36);
  *a3 = v37;
  return result;
}

void sub_29D54A4C0(unint64_t *a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = MEMORY[0x29ED5F4B0]();
  if ((sub_29D5B360C() & 1) == 0)
  {
    goto LABEL_11;
  }

  v9 = [a2 ontologyPreferredName];
  if (!v9)
  {
    goto LABEL_11;
  }

  MEMORY[0x2A1C7C4A8](v10, v11);
  v19[2] = a3;

  v12 = sub_29D548174(sub_29D552D54, v19, v7);
  v13 = v12;
  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (!sub_29D5B485C())
  {
LABEL_10:

LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

LABEL_5:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x29ED5EF30](0, v13);
    goto LABEL_8;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v13 + 32);
LABEL_8:
    v15 = v14;
    sub_29D48F51C(0, &qword_2A1A162A0, 0x29EDC44D8);
    v16 = a2;
    v17 = sub_29D5B362C();
    v18 = sub_29D5531C0(v16, v17 & 1, v15, v13);

LABEL_12:
    objc_autoreleasePoolPop(v8);
    *a4 = v18;
    return;
  }

  __break(1u);
}

BOOL sub_29D54A660(id *a1, uint64_t a2)
{
  v3 = sub_29D5B0E6C();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*a1 sortDate];
  v9 = [v8 date];

  sub_29D5B0E4C();
  sub_29D551D18(&qword_2A17A3DC8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
  v10 = sub_29D5B3DCC();
  (*(v4 + 8))(v7, v3);
  return (v10 & 1) == 0;
}

void sub_29D54A7D4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  v7[2] = sub_29D4FF3F4;
  v7[3] = v6;
  v7[4] = a3;
  v10[4] = sub_29D554D1C;
  v10[5] = v7;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1107296256;
  v10[2] = sub_29D54ACDC;
  v10[3] = &unk_2A242A0D8;
  v8 = _Block_copy(v10);

  v9 = a3;

  [v9 fetchSharingEntriesWithCompletion_];
  _Block_release(v8);
}

uint64_t sub_29D54A8F0(char a1, void *a2, void (*a3)(void *, uint64_t), unint64_t a4, void *a5)
{
  v38 = sub_29D5B0EDC();
  v35 = *(v38 - 8);
  MEMORY[0x2A1C7C4A8](v38, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (a1 & 1) == 0)
  {
    v13 = a2;
    a3(a2, 1);
  }

  v14 = [a5 sharingEntries];
  sub_29D48F51C(0, &qword_2A1A16318, 0x29EDBAE30);
  v15 = sub_29D5B402C();

  v39 = MEMORY[0x29EDCA190];
  if (v15 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29D5B485C())
  {
    v17 = MEMORY[0x29EDCA190];
    v36 = a4;
    v37 = a3;
    if (!i)
    {
      break;
    }

    v18 = 0;
    a3 = (v15 & 0xC000000000000001);
    a4 = v15 & 0xFFFFFFFFFFFFFF8;
    v19 = &off_29F351000;
    v20 = &selRef_userData;
    while (1)
    {
      if (a3)
      {
        v21 = MEMORY[0x29ED5EF30](v18, v15);
      }

      else
      {
        if (v18 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v21 = *(v15 + 8 * v18 + 32);
      }

      v22 = v21;
      v23 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if ([v21 v19[427]] || objc_msgSend(v22, v20[73]) || objc_msgSend(v22, sel_status) != 1 && objc_msgSend(v22, sel_status))
      {
      }

      else
      {
        sub_29D5B498C();
        sub_29D5B49BC();
        v20 = &selRef_userData;
        sub_29D5B49CC();
        sub_29D5B499C();
        v19 = &off_29F351000;
      }

      ++v18;
      if (v23 == i)
      {
        v24 = v39;
        a3 = v37;
        v17 = MEMORY[0x29EDCA190];
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v24 = MEMORY[0x29EDCA190];
LABEL_22:

  if ((v24 & 0x8000000000000000) == 0 && (v24 & 0x4000000000000000) == 0)
  {
    v25 = *(v24 + 16);
    if (v25)
    {
      goto LABEL_25;
    }

LABEL_36:

    a3(MEMORY[0x29EDCA190], 0);
  }

  v25 = sub_29D5B485C();
  if (!v25)
  {
    goto LABEL_36;
  }

LABEL_25:
  v39 = v17;
  result = sub_29D5B49AC();
  if ((v25 & 0x8000000000000000) == 0)
  {
    v27 = 0;
    v28 = (v35 + 8);
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x29ED5EF30](v27, v24);
      }

      else
      {
        v29 = *(v24 + 8 * v27 + 32);
      }

      v30 = v29;
      ++v27;
      v31 = [v29 UUID];
      sub_29D5B0EBC();

      v32 = objc_allocWithZone(MEMORY[0x29EDBADC8]);
      v33 = sub_29D5B0E9C();
      [v32 initForInvitationUUID_];

      (*v28)(v12, v38);
      sub_29D5B498C();
      sub_29D5B49BC();
      sub_29D5B49CC();
      sub_29D5B499C();
    }

    while (v25 != v27);

    v37(v39, 0);
  }

  __break(1u);
  return result;
}

void sub_29D54ACDC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_29D54AD54(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v9[2] = sub_29D554BDC;
  v9[3] = v8;
  v9[4] = a4;
  v12[4] = sub_29D554C1C;
  v12[5] = v9;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1107296256;
  v12[2] = sub_29D54B08C;
  v12[3] = &unk_2A242A038;
  v10 = _Block_copy(v12);

  v11 = a4;

  [a3 fetchSharingAuthorizationsWithCompletion_];
  _Block_release(v10);
}

void sub_29D54AE78(unint64_t a1, id a2, void (*a3)(id, uint64_t, uint64_t), uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    a3(a2, 0, 1);
    v8 = a2;
  }

  else
  {
    if (a1)
    {
      v21 = MEMORY[0x29EDCA190];
      if (a1 >> 62)
      {
        goto LABEL_21;
      }

      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        do
        {
          v19 = a5;
          v11 = 0;
          while (1)
          {
            if ((a1 & 0xC000000000000001) != 0)
            {
              v12 = MEMORY[0x29ED5EF30](v11, a1);
            }

            else
            {
              if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_20;
              }

              v12 = *(a1 + 8 * v11 + 32);
            }

            v13 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              break;
            }

            MEMORY[0x29ED5E5E0](v12);
            if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_29D5B408C();
            }

            sub_29D5B40AC();
            ++v11;
            if (v13 == v10)
            {
              a5 = v19;
              v14 = v21;
              goto LABEL_23;
            }
          }

          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v16 = a5;
          v17 = sub_29D5B485C();
          a5 = v16;
          v10 = v17;
        }

        while (v17);
      }

      v14 = MEMORY[0x29EDCA190];
LABEL_23:
      v18 = a5;
      v20 = a5;
      a3(v18, v14, 0);
    }

    else
    {
      v15 = a5;
      v20 = a5;
      a3(v15, MEMORY[0x29EDCA190], 0);
    }

    v8 = v20;
  }
}

uint64_t sub_29D54B08C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_29D48F51C(0, &qword_2A1A16300, 0x29EDBADB8);
    v4 = sub_29D5B402C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_29D54B130(uint64_t a1, void *a2, void *a3)
{
  sub_29D554184(0);
  v7 = *(v6 - 8);
  v43 = v6;
  v44 = v7;
  MEMORY[0x2A1C7C4A8](v6, v8);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5542C4(0, &qword_2A17A4B68, sub_29D5543B0, sub_29D5544C0);
  v39 = v10;
  v41 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v13 = &v34 - v12;
  sub_29D5544F4(0);
  v40 = v14;
  v42 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D554610(0, &qword_2A17A4B98, sub_29D5544F4, sub_29D554688);
  v19 = *(v18 - 8);
  v37 = v18;
  v38 = v19;
  MEMORY[0x2A1C7C4A8](v18, v20);
  v22 = &v34 - v21;
  v45 = a1;
  sub_29D551F60(0, &qword_2A1A163E0, &qword_2A1A16300, 0x29EDBADB8, MEMORY[0x29EDC9A40]);
  sub_29D554260(&qword_2A17A4B60, &qword_2A1A163E0, &qword_2A1A16300, 0x29EDBADB8);
  sub_29D5B3FEC();
  v23 = swift_allocObject();
  v23[2] = v36;
  v23[3] = a2;
  v23[4] = a3;
  v24 = MEMORY[0x29EDB89F8];
  sub_29D55478C(0, &qword_2A1A166A8, MEMORY[0x29EDB89F8]);
  sub_29D55448C();
  sub_29D551BE8(&qword_2A1A166B0, &qword_2A1A166A8, v24, MEMORY[0x29EDB8A00]);
  v25 = a2;
  v26 = a3;
  v27 = v43;
  v28 = v35;
  sub_29D5B3C5C();

  (*(v44 + 8))(v28, v27);
  sub_29D554588();
  v29 = v39;
  sub_29D5B3BDC();
  (*(v41 + 8))(v13, v29);
  sub_29D554688();
  v30 = v40;
  sub_29D5B3B7C();
  (*(v42 + 8))(v17, v30);
  sub_29D5546F4();
  v31 = v37;
  v32 = sub_29D5B3B1C();
  (*(v38 + 8))(v22, v31);
  return v32;
}

uint64_t sub_29D54B5E8(void *a1, void *a2, void *a3)
{
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a1;
  v7[4] = v3;
  v7[5] = a2;
  v7[6] = v3;
  v8 = MEMORY[0x29EDB8AD0];
  sub_29D55478C(0, &qword_2A17A4BB0, MEMORY[0x29EDB8AD0]);
  swift_allocObject();
  v9 = a3;
  v10 = a1;
  v11 = a2;
  sub_29D5B3A6C();
  sub_29D551BE8(&qword_2A17A4BB8, &qword_2A17A4BB0, v8, MEMORY[0x29EDB8AD8]);
  v12 = sub_29D5B3B1C();

  return v12;
}

id sub_29D54B70C(void *a1, void *a2)
{
  v3 = v2;
  v47[1] = *MEMORY[0x29EDCA608];
  v6 = sub_29D5B371C();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[2];
  if (v11 < 3)
  {
    __break(1u);
LABEL_14:
    __break(1u);
  }

  if (v11 < 5)
  {
    goto LABEL_14;
  }

  v12 = objc_opt_self();

  v13 = sub_29D5B3E1C();

  v46[0] = 0;
  v14 = [v12 codingCollectionFromAdHocCode:v13 error:v46];

  v15 = v46[0];
  if (v14)
  {
    if (a2[2] == 1)
    {
      sub_29D5B1D6C();
      v16 = v15;
      v17 = sub_29D5B1D0C();
      v18 = objc_allocWithZone(MEMORY[0x29EDBAAE0]);
      v19 = sub_29D5B3E1C();

      v20 = [v18 initWithCodingCollection:v14 countryCode:v19 recordCategoryType:v17];

      return v20;
    }

    v25 = v46[0];
    v24 = v14;
  }

  else
  {
    v22 = v46[0];
    v23 = sub_29D5B0D2C();

    swift_willThrow();
    v24 = 0;
  }

  sub_29D5B36AC();
  v26 = v14;

  v27 = sub_29D5B370C();
  v28 = sub_29D5B427C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v47[0] = v44;
    *v29 = 136446722;
    v46[0] = v3;
    swift_getMetatypeMetadata();
    v30 = sub_29D5B3E7C();
    v32 = sub_29D501890(v30, v31, v47);
    v45 = v6;
    v33 = v32;

    *(v29 + 4) = v33;
    *(v29 + 12) = 2082;
    v46[0] = v24;
    sub_29D551F60(0, &qword_2A17A4BD0, &qword_2A17A4BD8, 0x29EDBAC40, MEMORY[0x29EDC9C68]);
    v43 = v26;
    sub_29D5B4CAC();
    v34 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v35 = sub_29D5B3E9C();
    v37 = sub_29D501890(v35, v36, v47);

    *(v29 + 14) = v37;
    *(v29 + 22) = 2082;
    v46[0] = a2;
    sub_29D554D90(0, &qword_2A17A4BE0, MEMORY[0x29EDC4098], MEMORY[0x29EDC9A40]);

    sub_29D5B4CAC();
    v38 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v39 = sub_29D5B3E9C();
    v41 = sub_29D501890(v39, v40, v47);

    *(v29 + 24) = v41;
    _os_log_impl(&dword_29D48C000, v27, v28, "[%{public}s]: Coding collection (%{public}s) was nil, or had multiple category kinds when trying to synthesize concept resolution definition %{public}s.", v29, 0x20u);
    v42 = v44;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v42, -1, -1);
    MEMORY[0x29ED5FB80](v29, -1, -1);

    (*(v7 + 8))(v10, v45);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  return 0;
}

void sub_29D54BC28(void (*a1)(uint64_t *), uint64_t a2, void *a3, char *a4, uint64_t a5, void *a6, NSObject *a7)
{
  v141 = a7;
  v133 = a6;
  v135 = a5;
  v145 = a4;
  v10 = sub_29D5B371C();
  v142 = *(v10 - 8);
  v143 = v10;
  v12 = MEMORY[0x2A1C7C4A8](v10, v11);
  v140 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v12, v14);
  v132 = &v129 - v16;
  MEMORY[0x2A1C7C4A8](v15, v17);
  v139 = (&v129 - v18);
  sub_29D554D90(0, &qword_2A17A4BC0, MEMORY[0x29EDC2E38], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v19 - 8, v20);
  v22 = &v129 - v21;
  v23 = sub_29D5B353C();
  v24 = *(v23 - 8);
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v136 = &v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v137 = &v129 - v30;
  v32 = MEMORY[0x2A1C7C4A8](v29, v31);
  v138 = &v129 - v33;
  v35 = MEMORY[0x2A1C7C4A8](v32, v34);
  v37 = (&v129 - v36);
  MEMORY[0x2A1C7C4A8](v35, v38);
  v40 = &v129 - v39;
  v41 = swift_allocObject();
  *(v41 + 16) = a1;
  *(v41 + 24) = a2;
  v42 = objc_allocWithZone(MEMORY[0x29EDBAE38]);

  v134 = a3;
  v144 = [v42 initWithHealthStore_];
  v43 = v145;
  sub_29D5B354C();
  if ((*(v24 + 48))(v22, 1, v23) != 1)
  {
    v130 = v43;
    v131 = a2;
    v139 = a1;
    (*(v24 + 32))(v40, v22, v23);
    v59 = *(v24 + 16);
    v145 = v40;
    v59(v37);
    if ((*(v24 + 88))(v37, v23) == *MEMORY[0x29EDC2E28])
    {
      v60 = *(v24 + 96);
      v129 = v23;
      v60(v37, v23);
      v61 = *v37;
      v62 = v37[1];

      v63 = sub_29D5166E4(v61, v62);
      v66 = v138;
      if (v63)
      {
        v67 = v63;
        v68 = v64;
        v69 = v65;
        v70 = v24;
        aBlock = v64;
        v147 = v65;
        v152[0] = sub_29D5B3E5C();
        v152[1] = v71;
        sub_29D4B343C();

        v72 = sub_29D5B476C();

        if (v72[2] < 4uLL)
        {
          __break(1u);
          return;
        }

        v73 = v72[10];
        v74 = v72[11];
        v75 = sub_29D5B3E5C();
        v77 = v145;
        if (v73 == v75 && v74 == v76)
        {
        }

        else
        {
          v99 = sub_29D5B4C7C();

          if ((v99 & 1) == 0)
          {

            sub_29D4B37AC(v67, v68, v69);

            aBlock = 1;
            LOBYTE(v147) = 0;
            v139(&aBlock);

            (*(v70 + 8))(v77, v129);
            return;
          }
        }

        sub_29D4B37AC(v100, v68, v69);
        v101 = sub_29D54B70C(v72, v67);

        if (v101)
        {
          v102 = [objc_opt_self() predicateForMedicalUserDomainConceptsByResolvingConceptResolutionDefinition_];
          v103 = swift_allocObject();
          v103[2] = v68;
          v103[3] = v69;
          v103[4] = sub_29D4FF74C;
          v103[5] = v41;
          v104 = v133;
          v103[6] = v67;
          v103[7] = v104;
          v105 = v77;
          v106 = v144;
          v107 = v130;
          v103[8] = v144;
          v103[9] = v107;
          v103[10] = v141;
          v108 = objc_allocWithZone(MEMORY[0x29EDBAE78]);
          v150 = sub_29D554860;
          v151 = v103;
          aBlock = MEMORY[0x29EDCA5F8];
          v147 = 1107296256;
          v148 = sub_29D54F470;
          v149 = &unk_2A2429F48;
          v109 = _Block_copy(&aBlock);
          v110 = v107;
          v111 = v104;
          v112 = v106;
          v113 = [v108 initWithPredicate:v102 anchor:0 limit:1 sortDescriptors:0 resultsHandler:v109];
          _Block_release(v109);

          [v134 executeQuery_];

          (*(v70 + 8))(v105, v129);
          return;
        }

        v114 = v132;
        sub_29D5B36AC();

        v115 = sub_29D5B370C();
        v116 = sub_29D5B427C();

        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          v152[0] = v118;
          *v117 = 136446466;
          aBlock = v141;
          swift_getMetatypeMetadata();
          v119 = sub_29D5B3E7C();
          v121 = v68;
          v122 = sub_29D501890(v119, v120, v152);

          *(v117 + 4) = v122;
          *(v117 + 12) = 2082;
          aBlock = v121;
          v147 = v69;
          sub_29D5B4CAC();
          v123 = HKSensitiveLogItem();
          swift_unknownObjectRelease();
          sub_29D5B47BC();
          swift_unknownObjectRelease();
          v124 = sub_29D5B3E9C();
          v126 = sub_29D501890(v124, v125, v152);

          *(v117 + 14) = v126;
          _os_log_impl(&dword_29D48C000, v115, v116, "[%{public}s]: Could not parse concept resolution definition from semantic identifier: %{public}s.", v117, 0x16u);
          v77 = v145;
          swift_arrayDestroy();
          MEMORY[0x29ED5FB80](v118, -1, -1);
          MEMORY[0x29ED5FB80](v117, -1, -1);
        }

        else
        {
        }

        (*(v142 + 8))(v114, v143);
        v127 = v139;
        sub_29D55480C();
        v97 = swift_allocError();
        *v128 = 2;
        aBlock = v97;
        LOBYTE(v147) = 1;
        v127(&aBlock);

        (*(v70 + 8))(v77, v129);
LABEL_18:

        return;
      }

      v23 = v129;
    }

    else
    {

      (*(v24 + 8))(v37, v23);
      v66 = v138;
    }

    v78 = v140;
    sub_29D5B36AC();
    (v59)(v66, v145, v23);
    v79 = v23;
    v80 = sub_29D5B370C();
    v81 = sub_29D5B427C();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v152[0] = v138;
      *v82 = 136446466;
      aBlock = v141;
      swift_getMetatypeMetadata();
      v83 = sub_29D5B3E7C();
      v85 = sub_29D501890(v83, v84, v152);

      *(v82 + 4) = v85;
      *(v82 + 12) = 2082;
      v141 = v80;
      v86 = v137;
      (v59)(v137, v66, v79);
      (v59)(v136, v86, v79);
      sub_29D5B4CAC();
      v87 = HKSensitiveLogItem();
      v88 = v81;
      v89 = v66;
      swift_unknownObjectRelease();
      sub_29D5B47BC();
      swift_unknownObjectRelease();
      v90 = sub_29D5B3E9C();
      v92 = v91;
      v93 = *(v24 + 8);
      v93(v86, v79);
      v93(v89, v79);
      v94 = sub_29D501890(v90, v92, v152);

      *(v82 + 14) = v94;
      v95 = v141;
      _os_log_impl(&dword_29D48C000, v141, v88, "[%{public}s]: Could not unwrap shared concept identifier from authorizationIdentifier %{public}s.", v82, 0x16u);
      v96 = v138;
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v96, -1, -1);
      MEMORY[0x29ED5FB80](v82, -1, -1);

      (*(v142 + 8))(v140, v143);
    }

    else
    {

      v93 = *(v24 + 8);
      v93(v66, v79);
      (*(v142 + 8))(v78, v143);
    }

    sub_29D55480C();
    v97 = swift_allocError();
    *v98 = 0;
    aBlock = v97;
    LOBYTE(v147) = 1;
    v139(&aBlock);

    v93(v145, v79);
    goto LABEL_18;
  }

  sub_29D5528C0(v22, &qword_2A17A4BC0, MEMORY[0x29EDC2E38]);
  sub_29D55480C();
  v44 = swift_allocError();
  *v45 = 0;
  aBlock = v44;
  LOBYTE(v147) = 1;
  a1(&aBlock);

  v46 = v139;
  sub_29D5B36AC();
  v47 = v43;
  v48 = sub_29D5B370C();
  v49 = sub_29D5B427C();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v152[0] = v51;
    *v50 = 136446466;
    aBlock = v141;
    swift_getMetatypeMetadata();
    v52 = sub_29D5B3E7C();
    v54 = sub_29D501890(v52, v53, v152);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2082;
    v55 = HKSensitiveLogItem();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v56 = sub_29D5B3E9C();
    v58 = sub_29D501890(v56, v57, v152);

    *(v50 + 14) = v58;
    _os_log_impl(&dword_29D48C000, v48, v49, "[%{public}s]: Could not unwrap authorizationIdentifier from sharing authorization %{public}s.", v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v51, -1, -1);
    MEMORY[0x29ED5FB80](v50, -1, -1);
  }

  else
  {
  }

  (*(v142 + 8))(v46, v143);
}

void sub_29D54CA34(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, void *a6, uint64_t a7, void (*a8)(void *, uint64_t), void (*a9)(void *, uint64_t), uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14)
{
  v140 = a2;
  v141 = a6;
  LODWORD(v139) = a4;
  v142 = a14;
  v145 = a8;
  v146 = a9;
  v16 = sub_29D5B0EDC();
  v138 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v17);
  v19 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29D5B353C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x2A1C7C4A8](v20, v23);
  MEMORY[0x2A1C7C4A8](v24, v25);
  v27 = (&v133 - v26);
  v28 = sub_29D5B371C();
  v143 = *(v28 - 1);
  v144 = v28;
  v30 = MEMORY[0x2A1C7C4A8](v28, v29);
  v32 = MEMORY[0x2A1C7C4A8](v30, v31);
  MEMORY[0x2A1C7C4A8](v32, v33);
  v37 = &v133 - v36;
  if (a5)
  {
    v38 = a5;
    sub_29D5B36AC();
    v39 = a5;

    v40 = sub_29D5B370C();
    v41 = sub_29D5B427C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = a7;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v153[0] = v44;
      *v43 = 136446722;
      aBlock = v142;
      swift_getMetatypeMetadata();
      v45 = sub_29D5B3E7C();
      v47 = sub_29D501890(v45, v46, v153);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2082;
      aBlock = a5;
      v48 = a5;
      sub_29D4A02FC(0, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
      sub_29D5B4CAC();
      v49 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_29D5B47BC();
      swift_unknownObjectRelease();
      v50 = sub_29D5B3E9C();
      v52 = sub_29D501890(v50, v51, v153);

      *(v43 + 14) = v52;
      *(v43 + 22) = 2082;
      aBlock = v141;
      v148 = v42;

      sub_29D5B4CAC();
      v53 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_29D5B47BC();
      swift_unknownObjectRelease();
      v54 = sub_29D5B3E9C();
      v56 = sub_29D501890(v54, v55, v153);

      *(v43 + 24) = v56;
      _os_log_impl(&dword_29D48C000, v40, v41, "[%{public}s]: Found an error (%{public}s) while querying for UDC with resolvable adhoc code embedded in semantic identifier: %{public}s.", v43, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v44, -1, -1);
      MEMORY[0x29ED5FB80](v43, -1, -1);
    }

    v143[1](v37, v144);
    v57 = a5;
    v145(a5, 1);

    v58 = a5;
LABEL_15:

    return;
  }

  v59 = v139;
  v134 = v22;
  v135 = &v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = v16;
  v137 = v19;
  v60 = v140;
  if (!v140 || (v61 = v35, v62 = v34, objc_opt_self(), v63 = swift_dynamicCastObjCClass(), v34 = v62, !v63) || (v59 & 1) == 0)
  {
    v83 = v34;
    sub_29D5B36AC();
    v84 = a7;

    v85 = sub_29D5B370C();
    v86 = sub_29D5B427C();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v153[0] = v88;
      *v87 = 136446466;
      aBlock = v142;
      swift_getMetatypeMetadata();
      v89 = sub_29D5B3E7C();
      v91 = sub_29D501890(v89, v90, v153);

      *(v87 + 4) = v91;
      *(v87 + 12) = 2082;
      aBlock = v141;
      v148 = v84;

      sub_29D5B4CAC();
      v92 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_29D5B47BC();
      swift_unknownObjectRelease();
      v93 = sub_29D5B3E9C();
      v95 = sub_29D501890(v93, v94, v153);

      *(v87 + 14) = v95;
      _os_log_impl(&dword_29D48C000, v85, v86, "[%{public}s]: Somehow, we have a semantic identifier %{public}s with no resolvable user domain concept. Most likely, we have an ontology node, but no UDC for the resolved coding.", v87, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v88, -1, -1);
      MEMORY[0x29ED5FB80](v87, -1, -1);
    }

    v143[1](v83, v144);
    sub_29D55480C();
    v96 = swift_allocError();
    *v97 = 1;
    v145(v96, 1);
    v58 = v96;
    goto LABEL_15;
  }

  v64 = v63;
  v65 = v60;
  if ([v64 isAdHocUserDomainConcept])
  {
    v66 = v61;
    sub_29D5B36AC();
    v67 = a13;
    v68 = sub_29D5B370C();
    v69 = sub_29D5B429C();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v153[0] = v71;
      *v70 = 136446466;
      aBlock = v142;
      swift_getMetatypeMetadata();
      v72 = sub_29D5B3E7C();
      v74 = sub_29D501890(v72, v73, v153);

      *(v70 + 4) = v74;
      *(v70 + 12) = 2082;
      v75 = [v67 authorizationIdentifier];
      v76 = sub_29D5B3E5C();
      v78 = v77;

      aBlock = v76;
      v148 = v78;
      sub_29D5B4CAC();
      v79 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_29D5B47BC();
      swift_unknownObjectRelease();
      v80 = sub_29D5B3E9C();
      v82 = sub_29D501890(v80, v81, v153);

      *(v70 + 14) = v82;
      _os_log_impl(&dword_29D48C000, v68, v69, "[%{public}s]: Skipping migration of auth identifier %{public}s", v70, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v71, -1, -1);
      MEMORY[0x29ED5FB80](v70, -1, -1);
    }

    v143[1](v66, v144);
    v145(1, 0);
  }

  else
  {
    v143 = a13;
    v144 = v65;

    v98 = [v64 semanticIdentifier];
    v99 = [v98 stringValue];

    v100 = sub_29D5B3E5C();
    v102 = v101;

    v103 = sub_29D514404(a10, v100, v102);
    v105 = v104;

    v106 = sub_29D5B453C();
    v107 = v27;
    *v27 = v103;
    v27[1] = v105;
    v27[2] = v106;
    v27[3] = v108;
    v27[4] = 0;
    v27[5] = 0;
    (*(v21 + 104))(v27, *MEMORY[0x29EDC2E28], v20);
    v109 = [a11 invitationUUID];
    if (v109)
    {
      v141 = a12;
      v110 = v109;
      sub_29D5B0EBC();

      v111 = v20;
      v140 = sub_29D5B0E9C();
      sub_29D51AC0C();
      v112 = v21;
      v113 = swift_allocObject();
      v133 = xmmword_29D5B6350;
      *(v113 + 16) = xmmword_29D5B6350;
      *(v113 + 32) = sub_29D5B351C();
      sub_29D48F51C(0, &qword_2A1A16300, 0x29EDBADB8);
      v139 = sub_29D5B401C();

      v114 = swift_allocObject();
      *(v114 + 16) = v133;
      v115 = v143;
      *(v114 + 32) = v143;
      v116 = v115;
      v117 = sub_29D5B401C();

      v118 = *(v21 + 16);
      v119 = v135;
      v118(v135, v27, v111);
      v120 = (*(v112 + 80) + 24) & ~*(v112 + 80);
      v121 = (v134 + v120 + 7) & 0xFFFFFFFFFFFFFFF8;
      v122 = swift_allocObject();
      *(v122 + 16) = v116;
      v123 = v119;
      v124 = v111;
      (*(v112 + 32))(v122 + v120, v123, v111);
      v125 = (v122 + v121);
      v126 = v146;
      *v125 = v145;
      v125[1] = v126;
      *(v122 + ((v121 + 23) & 0xFFFFFFFFFFFFFFF8)) = v142;
      v151 = sub_29D5548A4;
      v152 = v122;
      aBlock = MEMORY[0x29EDCA5F8];
      v148 = 1107296256;
      v149 = sub_29D54ACDC;
      v150 = &unk_2A2429F98;
      v127 = _Block_copy(&aBlock);
      v128 = v116;

      v129 = v140;
      v130 = v139;
      [v141 updateSharingAuthorizationsForInvitationUUID:v140 sharingAuthorizationsToAdd:v139 sharingAuthorizationsToDelete:v117 deleteOnCommit:1 completion:v127];
      _Block_release(v127);

      (*(v138 + 8))(v137, v136);
      (*(v112 + 8))(v107, v124);
    }

    else
    {
      sub_29D55480C();
      v131 = swift_allocError();
      *v132 = 3;
      v145(v131, 1);

      (*(v21 + 8))(v27, v20);
    }
  }
}

void sub_29D54D698(int a1, void *a2, void *a3, uint64_t a4, void (*a5)(void, void), uint64_t a6, uint64_t a7)
{
  v57 = a2;
  v58 = a6;
  v54 = a1;
  v11 = sub_29D5B353C();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D5B371C();
  v55 = *(v16 - 8);
  v56 = v16;
  MEMORY[0x2A1C7C4A8](v16, v17);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  (*(v12 + 16))(v15, a4, v11);
  v20 = a3;
  v21 = sub_29D5B370C();
  v22 = sub_29D5B429C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v53 = a5;
    v24 = v23;
    v52 = swift_slowAlloc();
    v61 = v52;
    *v24 = 136446722;
    v59 = a7;
    swift_getMetatypeMetadata();
    v25 = sub_29D5B3E7C();
    v27 = sub_29D501890(v25, v26, &v61);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2082;
    v28 = [v20 authorizationIdentifier];
    v29 = sub_29D5B3E5C();
    v31 = v30;

    v59 = v29;
    v60 = v31;
    sub_29D5B4CAC();
    v32 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v33 = sub_29D5B3E9C();
    v35 = sub_29D501890(v33, v34, &v61);

    *(v24 + 14) = v35;
    *(v24 + 22) = 2082;
    v36 = sub_29D5B351C();
    v37 = [v36 authorizationIdentifier];

    v38 = sub_29D5B3E5C();
    v40 = v39;

    v59 = v38;
    v60 = v40;
    sub_29D5B4CAC();
    v41 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v42 = sub_29D5B3E9C();
    v44 = v43;
    (*(v12 + 8))(v15, v11);
    v45 = sub_29D501890(v42, v44, &v61);

    *(v24 + 24) = v45;
    _os_log_impl(&dword_29D48C000, v21, v22, "[%{public}s]: Successfully migrated auth identifier %{public}s to %{public}s", v24, 0x20u);
    v46 = v52;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v46, -1, -1);
    v47 = v24;
    a5 = v53;
    MEMORY[0x29ED5FB80](v47, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  (*(v55 + 8))(v19, v56);
  v48 = v57;
  if (v57)
  {
    v49 = v57;
    v50 = v48;
  }

  else
  {
    if (v54)
    {
      a5(1, 0);
      return;
    }

    sub_29D55480C();
    v50 = swift_allocError();
    v48 = v50;
    *v51 = 3;
  }

  a5(v50, 1);
}

uint64_t sub_29D54DB34()
{
  sub_29D551F60(0, &qword_2A1A163C0, &qword_2A1A162B0, 0x29EDBADC8, MEMORY[0x29EDC9A40]);
  sub_29D554260(&qword_2A1A163B8, &qword_2A1A163C0, &qword_2A1A162B0, 0x29EDBADC8);
  return sub_29D5B3FEC();
}

uint64_t sub_29D54DBE4(void *a1, uint64_t a2)
{
  sub_29D5B140C();
  sub_29D499EC0(v7, v7[3]);
  v4 = sub_29D5B136C();
  v5 = sub_29D54B130(a2, a1, v4);

  sub_29D48F668(v7);
  return v5;
}

uint64_t sub_29D54DC7C()
{

  v1 = OBJC_IVAR____TtC13HealthRecords29ConceptSharableModelGenerator_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D554E5C(v0 + OBJC_IVAR____TtC13HealthRecords29ConceptSharableModelGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConceptSharableModelGenerator(uint64_t a1)
{
  result = qword_2A1A17FE8;
  if (!qword_2A1A17FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D54DD98@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords29ConceptSharableModelGenerator_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

id sub_29D54DE14()
{
  v1 = sub_29D5B0EDC();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x29EDC44D0]) init];
  if (v6)
  {
    v41 = v5;
    v43 = v1;
    v7 = [v0 diagnosticTestCodingCollection];
    v8 = [v7 codings];

    sub_29D48F51C(0, &qword_2A17A41A8, 0x29EDBAC38);
    v9 = sub_29D5B402C();

    v44 = v0;
    v42 = v2;
    if (v9 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D5B485C())
    {
      v11 = 0;
      v45 = v9 & 0xC000000000000001;
      while (1)
      {
        if (v45)
        {
          v16 = MEMORY[0x29ED5EF30](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v16 = *(v9 + 8 * v11 + 32);
        }

        v17 = v16;
        v18 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v19 = [objc_allocWithZone(MEMORY[0x29EDC44C8]) init];
        if (v19)
        {
          v20 = v19;
          v21 = v6;
          v22 = [v17 codingSystem];
          if (v22)
          {
            v23 = v22;
            v12 = [v22 identifier];

            if (!v12)
            {
              sub_29D5B3E5C();
              v12 = sub_29D5B3E1C();
            }
          }

          else
          {
            v12 = 0;
          }

          [v20 setSystem_];

          v13 = [v17 codingVersion];
          [v20 setVersion_];

          v14 = [v17 code];
          [v20 setCode_];

          v15 = v20;
          v6 = v21;
          [v21 addCode_];
        }

        ++v11;
        if (v18 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_20:

    sub_29D5B44DC();
    if (v24)
    {
      v25 = sub_29D5B3E1C();
    }

    else
    {
      v25 = 0;
    }

    [v6 setUcumUnitString_];

    v26 = sub_29D54E2C8();
    v27 = v26;
    if (v26 >> 62)
    {
      goto LABEL_35;
    }

    for (j = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_29D5B485C())
    {
      v29 = 0;
      while (1)
      {
        if ((v27 & 0xC000000000000001) != 0)
        {
          v30 = MEMORY[0x29ED5EF30](v29, v27);
        }

        else
        {
          if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v30 = *(v27 + 8 * v29 + 32);
        }

        v31 = v30;
        v32 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        [v6 addValueWithRange_];

        ++v29;
        if (v32 == j)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }

LABEL_36:

    v33 = v44;
    v34 = sub_29D54EEC4();
    if ((v35 & 1) == 0)
    {
      [v6 setDateData_];
    }

    v36 = [v33 UUID];
    v37 = v41;
    sub_29D5B0EBC();

    sub_29D5B0E8C();
    (*(v42 + 8))(v37, v43);
    v38 = sub_29D5B3E1C();

    [v6 setRecordUUID_];
  }

  return v6;
}

uint64_t sub_29D54E2C8()
{
  v1 = v0;
  v2 = [v0 value];
  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  v3 = v2;
  v4 = [v2 inspectableValue];

  if (!v4)
  {
    return MEMORY[0x29EDCA190];
  }

  v5 = [v1 referenceRanges];
  if (v5)
  {
    v6 = v5;
    sub_29D48F51C(0, &qword_2A17A4B48, 0x29EDBAD48);
    v7 = sub_29D5B402C();
  }

  else
  {
    v7 = 0;
  }

  v9 = [v1 diagnosticTestCodingCollection];
  v10 = [v9 codings];

  sub_29D48F51C(0, &qword_2A17A41A8, 0x29EDBAC38);
  v11 = sub_29D5B402C();

  v12 = sub_29D54E41C(v7, v11);

  return v12;
}

uint64_t sub_29D54E41C(unint64_t a1, unint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x29EDC4520]) init];
  v6 = MEMORY[0x29EDCA190];
  v75 = v5;
  if (!v5)
  {
    return v6;
  }

  v7 = [v2 value];
  objc_opt_self();
  v74 = a2;
  if (swift_dynamicCastObjCClass())
  {
    v8 = sub_29D54F0F0();
    [v75 setQuantityValue_];

    if (a1)
    {
      v9 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 >> 62)
      {
        if (sub_29D5B485C())
        {
          goto LABEL_6;
        }
      }

      else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_6:
        if ((a1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x29ED5EF30](0, a1);
          goto LABEL_9;
        }

        if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v10 = *(a1 + 32);
LABEL_9:
          v11 = v10;
          v12 = [v10 valueRange];
          v13 = [v12 min];

          v14 = [v13 codedQuantityValue];
          v15 = [v11 valueRange];
          v16 = [v15 max];

          v17 = [v16 codedQuantityValue];
          if (v14)
          {
            v18 = v14;
            v19 = sub_29D54F0F0();
          }

          else
          {
            v19 = 0;
          }

          [v75 setReferenceRangeMin_];

          if (v17)
          {
            v49 = v17;
            v50 = sub_29D54F0F0();
          }

          else
          {
            v50 = 0;
          }

          [v75 setReferenceRangeMax_];

          goto LABEL_61;
        }

        __break(1u);
        goto LABEL_110;
      }
    }

LABEL_61:
    v78 = v6;
    if (a2 >> 62)
    {
      goto LABEL_101;
    }

    v77 = a2 & 0xFFFFFFFFFFFFFF8;
    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29D5B485C())
    {
      v52 = 0;
      v53 = a2 & 0xC000000000000001;
      v54 = MEMORY[0x29EDCA190];
      if (i)
      {
        while (1)
        {
          if (v53)
          {
            v63 = MEMORY[0x29ED5EF30](v52, a2);
          }

          else
          {
            if (v52 >= *(v77 + 16))
            {
              goto LABEL_92;
            }

            v63 = *(a2 + 8 * v52 + 32);
          }

          v64 = v63;
          v65 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            break;
          }

          v66 = MEMORY[0x29ED5F4B0]();
          v67 = [objc_allocWithZone(MEMORY[0x29EDC44C8]) init];
          if (v67)
          {
            v68 = [v64 code];
            [v67 setCode_];

            v69 = [v64 codingSystem];
            if (v69)
            {
              v70 = v69;
              v60 = [v69 identifier];

              if (!v60)
              {
                sub_29D5B3E5C();
                v60 = sub_29D5B3E1C();
              }
            }

            else
            {
              v60 = 0;
            }

            [v67 setSystem_];

            v61 = [v64 codingVersion];
            [v67 setVersion_];

            v62 = [v64 displayString];
            [v67 setDisplayName_];

            a2 = v74;
          }

          objc_autoreleasePoolPop(v66);

          ++v52;
          if (v67)
          {
            MEMORY[0x29ED5E5E0]();
            if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_29D5B408C();
            }

            sub_29D5B40AC();
            v54 = v78;
            v52 = v65;
            if (i == v65)
            {
              goto LABEL_64;
            }
          }

          else if (i == v52)
          {
            goto LABEL_64;
          }
        }

        __break(1u);
LABEL_92:
        __break(1u);
      }

      else
      {
LABEL_64:
        if (v54 >> 62)
        {
          v55 = sub_29D5B485C();
          if (!v55)
          {
LABEL_103:

            sub_29D51AC0C();
            v6 = swift_allocObject();
            *(v6 + 16) = xmmword_29D5B6350;
            *(v6 + 32) = v75;
            goto LABEL_104;
          }
        }

        else
        {
          v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v55)
          {
            goto LABEL_103;
          }
        }

        v56 = 0;
        while (1)
        {
          if ((v54 & 0xC000000000000001) != 0)
          {
            v57 = MEMORY[0x29ED5EF30](v56, v54);
          }

          else
          {
            if (v56 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_94;
            }

            v57 = *(v54 + 8 * v56 + 32);
          }

          v58 = v57;
          v59 = v56 + 1;
          if (__OFADD__(v56, 1))
          {
            break;
          }

          [v75 addCode_];

          ++v56;
          if (v59 == v55)
          {
            goto LABEL_103;
          }
        }
      }

      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      v77 = a2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  swift_unknownObjectRelease();
  [v2 value];
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    v78 = v6;
    v73 = v2;
    v76 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      v29 = sub_29D5B485C();
    }

    else
    {
      v29 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = 0;
    v31 = a2 & 0xC000000000000001;
    v32 = MEMORY[0x29EDCA190];
    if (v29)
    {
      do
      {
        while (1)
        {
          if (v31)
          {
            v41 = MEMORY[0x29ED5EF30](v30, a2);
          }

          else
          {
            if (v30 >= *(v76 + 16))
            {
              goto LABEL_98;
            }

            v41 = *(a2 + 8 * v30 + 32);
          }

          v42 = v41;
          v43 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_97;
          }

          v44 = MEMORY[0x29ED5F4B0]();
          v45 = [objc_allocWithZone(MEMORY[0x29EDC44C8]) init];
          if (v45)
          {
            v46 = [v42 code];
            [v45 setCode_];

            v47 = [v42 codingSystem];
            if (v47)
            {
              v48 = v47;
              v38 = [v47 identifier];

              if (!v38)
              {
                sub_29D5B3E5C();
                v38 = sub_29D5B3E1C();
              }
            }

            else
            {
              v38 = 0;
            }

            [v45 setSystem_];

            v39 = [v42 codingVersion];
            [v45 setVersion_];

            v40 = [v42 displayString];
            [v45 setDisplayName_];

            a2 = v74;
          }

          objc_autoreleasePoolPop(v44);

          ++v30;
          if (v45)
          {
            break;
          }

          if (v29 == v30)
          {
            goto LABEL_29;
          }
        }

        MEMORY[0x29ED5E5E0]();
        if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_29D5B408C();
        }

        sub_29D5B40AC();
        v32 = v78;
        v30 = v43;
      }

      while (v29 != v43);
    }

LABEL_29:
    if (v32 >> 62)
    {
      v33 = sub_29D5B485C();
      if (v33)
      {
LABEL_31:
        v34 = 0;
        do
        {
          if ((v32 & 0xC000000000000001) != 0)
          {
            v35 = MEMORY[0x29ED5EF30](v34, v32);
          }

          else
          {
            if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_100;
            }

            v35 = *(v32 + 8 * v34 + 32);
          }

          v36 = v35;
          v37 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_99;
          }

          [v75 addCode_];

          ++v34;
        }

        while (v37 != v33);
      }
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
        goto LABEL_31;
      }
    }

    v72 = [v73 displayString];
    if (!v72)
    {
      sub_29D5B3E5C();
      v72 = sub_29D5B3E1C();
    }

    [v75 setTextualValue_];

    sub_29D51AC0C();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_29D5B6350;
    *(v6 + 32) = v75;
    return v6;
  }

  v21 = [v20 codedValues];
  sub_29D48F51C(0, &qword_2A17A4B50, 0x29EDBAAC8);
  v7 = sub_29D5B402C();

  v78 = v6;
  v9 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 >> 62)
  {
LABEL_110:
    v22 = sub_29D5B485C();
    goto LABEL_14;
  }

  v22 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
  v23 = 0;
  a2 = v7 & 0xC000000000000001;
  while (v22 != v23)
  {
    if (a2)
    {
      v24 = MEMORY[0x29ED5EF30](v23, v7);
    }

    else
    {
      if (v23 >= *(v9 + 16))
      {
        goto LABEL_96;
      }

      v24 = *(v7 + 8 * v23 + 32);
    }

    v25 = v24;
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_95;
    }

    v27 = MEMORY[0x29ED5F4B0]();
    v28 = sub_29D54F1B4();
    objc_autoreleasePoolPop(v27);

    ++v23;
    if (v28)
    {
      MEMORY[0x29ED5E5E0]();
      if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29D5B408C();
      }

      sub_29D5B40AC();
      v6 = v78;
      v23 = v26;
    }
  }

LABEL_104:
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_29D54EEC4()
{
  v1 = v0;
  sub_29D554D90(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v4 = MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v17 - v8;
  v10 = [v1 meaningfulDate];
  if (v10)
  {
    v11 = v10;
    sub_29D5B0E4C();

    v12 = sub_29D5B0E6C();
    (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  }

  else
  {
    v12 = sub_29D5B0E6C();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  sub_29D4D1F64(v6, v9);
  sub_29D5B0E6C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) == 1)
  {
    sub_29D5528C0(v9, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
    return 0;
  }

  else
  {
    sub_29D5B0E2C();
    v16 = v15;
    (*(v13 + 8))(v9, v12);
    return v16;
  }
}

id sub_29D54F0F0()
{
  v1 = [objc_allocWithZone(MEMORY[0x29EDC4510]) init];
  if (v1)
  {
    [v0 doubleValue];
    [v1 setValue_];
    v2 = [v0 unitCoding];
    if (!v2 || (v3 = v2, v4 = [v2 displayString], v3, !v4))
    {
      v4 = 0;
    }

    [v1 setUnitString_];
  }

  return v1;
}

id sub_29D54F1B4()
{
  v1 = v0;
  v2 = [v0 value];
  v3 = [v2 value];

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  swift_unknownObjectRelease();
  if (!v4)
  {
    v9 = [objc_allocWithZone(MEMORY[0x29EDC4520]) init];
    if (!v9)
    {
      return v9;
    }

    sub_29D5B422C();
    if (v10)
    {
      v11 = sub_29D5B3E1C();
    }

    else
    {
      v11 = 0;
    }

    [v9 setTextualValue_];

    v17 = [v1 ontologyConcept];
    v18 = [v17 localizedPreferredName];
LABEL_16:
    v19 = v18;

    [v9 setValueTitle_];
    return v9;
  }

  v5 = [v1 value];
  v6 = [v1 referenceRanges];
  if (v6)
  {
    v7 = v6;
    sub_29D48F51C(0, &qword_2A17A4B48, 0x29EDBAD48);
    v8 = sub_29D5B402C();
  }

  else
  {
    v8 = 0;
  }

  v12 = [v1 codings];
  sub_29D48F51C(0, &qword_2A17A41A8, 0x29EDBAC38);
  v13 = sub_29D5B402C();

  v14 = sub_29D54E41C(v8, v13);

  if (!(v14 >> 62))
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_18:

    return 0;
  }

  result = sub_29D5B485C();
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_10:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x29ED5EF30](0, v14);
    goto LABEL_13;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v14 + 32);
LABEL_13:
    v9 = v16;

    v17 = [v1 ontologyConcept];
    v18 = [v17 localizedPreferredName];
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_29D54F470(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v11 = *(a1 + 32);

  v15 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v11(v15, a3, a4, a5, a6);
}

void sub_29D54F554(uint64_t result)
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(result + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_29D515088(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(result + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  sub_29D551F60(0, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38, MEMORY[0x29EDBA1D0]);
  if (v8 < v2)
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
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

char *sub_29D54F6D8(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_29D5150F0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_29D54F7FC(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_29D51541C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_29D54F90C(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_29D5B485C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_29D5B485C();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_29D54FC9C(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_29D54FA04(void *result)
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

  result = sub_29D51573C(result, v10, 1, v3);
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

  sub_29D554D28(0);
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

uint64_t sub_29D54FB58(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_29D54FC9C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_29D5B485C();
LABEL_9:
  result = sub_29D5B496C();
  *v2 = result;
  return result;
}

uint64_t sub_29D54FD3C(uint64_t a1)
{
  sub_29D5B140C();
  sub_29D499EC0(v6, v6[3]);
  v1 = sub_29D5B136C();
  v2 = [objc_allocWithZone(MEMORY[0x29EDBAE38]) initWithHealthStore_];

  sub_29D48F668(v6);
  *(swift_allocObject() + 16) = v2;
  sub_29D554C30(0);
  swift_allocObject();
  v3 = v2;
  v6[0] = sub_29D5B3A6C();
  sub_29D551D18(&qword_2A1A16580, sub_29D554C30, MEMORY[0x29EDB8AD8]);
  v4 = sub_29D5B3B1C();

  return v4;
}

uint64_t sub_29D54FE8C(uint64_t a1)
{
  v2 = sub_29D5B13CC();
  v196 = *(v2 - 8);
  v197 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v195 = &v141 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D5B13EC();
  v198 = *(v5 - 8);
  v199 = v5;
  MEMORY[0x2A1C7C4A8](v5, v6);
  v194 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_29D5B148C();
  v209 = *(v205 - 8);
  v206 = *(v209 + 64);
  MEMORY[0x2A1C7C4A8](v205, v8);
  v204 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = MEMORY[0x29EDCA498];
  sub_29D554D90(0, &qword_2A1A172F0, MEMORY[0x29EDCA498], MEMORY[0x29EDC9C68]);
  v12 = MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v168 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v165 = &v141 - v15;
  v162 = sub_29D5B106C();
  v161 = *(v162 - 8);
  MEMORY[0x2A1C7C4A8](v162, v16);
  v159 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D551B34(0);
  v151 = v18;
  v152 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18, v19);
  v146 = &v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D551C2C(0);
  v153 = v21;
  v154 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v22);
  v148 = &v141 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D551D60(0);
  v158 = v24;
  v157 = *(v24 - 8);
  v26 = MEMORY[0x2A1C7C4A8](v24, v25);
  v155 = &v141 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26, v28);
  v149 = &v141 - v29;
  sub_29D551DF4(0);
  v163 = v30;
  v164 = *(v30 - 8);
  MEMORY[0x2A1C7C4A8](v30, v31);
  v156 = &v141 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D551E88(0);
  v167 = v33;
  v169 = *(v33 - 8);
  MEMORY[0x2A1C7C4A8](v33, v34);
  v160 = &v141 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D551FC8(0);
  v174 = v36;
  v176 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36, v37);
  v203 = &v141 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D552170(0);
  v175 = v39;
  v177 = *(v39 - 8);
  MEMORY[0x2A1C7C4A8](v39, v40);
  v171 = &v141 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D552308(0);
  v179 = v42;
  v181 = *(v42 - 8);
  MEMORY[0x2A1C7C4A8](v42, v43);
  v173 = &v141 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D55239C(0);
  v182 = v45;
  v184 = *(v45 - 8);
  MEMORY[0x2A1C7C4A8](v45, v46);
  v178 = &v141 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D55247C(0);
  v187 = v48;
  v188 = *(v48 - 8);
  MEMORY[0x2A1C7C4A8](v48, v49);
  v180 = &v141 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5525F0(0);
  v190 = v51;
  v191 = *(v51 - 8);
  MEMORY[0x2A1C7C4A8](v51, v52);
  v183 = &v141 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D552798(0);
  v192 = v54;
  v193 = *(v54 - 8);
  MEMORY[0x2A1C7C4A8](v54, v55);
  v189 = &v141 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_29D5B0E6C();
  v200 = v57;
  v145 = *(v57 - 8);
  v58 = v145;
  v150 = *(v145 + 64);
  v60 = MEMORY[0x2A1C7C4A8](v57, v59);
  v62 = &v141 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v60, v63);
  v65 = &v141 - v64;
  sub_29D5B1CBC();
  v66 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(&v211, v212);
  v67 = sub_29D5B136C();
  v68 = [v67 profileIdentifier];

  v201 = sub_29D5B1C6C();
  sub_29D48F668(&v211);
  sub_29D5B0C0C();
  swift_allocObject();
  v202 = sub_29D5B0BFC();
  sub_29D5B13FC();
  type metadata accessor for SharableModelContextChangeGenerator();
  v166 = swift_allocObject();
  sub_29D497868(&v211, v166 + 16);
  v69 = v62;
  v144 = v62;
  sub_29D5B0E5C();
  v70 = v65;
  v147 = v65;
  sub_29D5B0DDC();
  v71 = *(v58 + 8);
  v185 = v58 + 8;
  v186 = v71;
  v71(v69, v57);
  v72 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(&v211, v212);
  v73 = sub_29D5B136C();
  v74 = [v73 profileIdentifier];

  v207 = sub_29D5B1C3C();
  sub_29D48F668(&v211);
  v142 = a1;
  *&v211 = sub_29D548A2C(a1);
  LOBYTE(v210) = 0;
  v75 = MEMORY[0x29EDB89F8];
  sub_29D55478C(0, &qword_2A1A166A8, MEMORY[0x29EDB89F8]);
  v76 = MEMORY[0x29EDB8A00];
  v143 = MEMORY[0x29EDB8A00];
  sub_29D551BE8(&qword_2A1A166B0, &qword_2A1A166A8, v75, MEMORY[0x29EDB8A00]);
  v77 = v146;
  sub_29D5B3B4C();

  *&v211 = sub_29D5B363C();
  sub_29D4F7770(0);
  v170 = MEMORY[0x29EDB88C8];
  sub_29D551D18(&qword_2A1A170A8, sub_29D551B34, MEMORY[0x29EDB88C8]);
  sub_29D551D18(&qword_2A1A16800, sub_29D4F7770, v76);
  v78 = v148;
  v79 = v151;
  sub_29D5B3B6C();

  (*(v152 + 8))(v77, v79);
  sub_29D551D18(&qword_2A1A17280, sub_29D551C2C, MEMORY[0x29EDB8870]);
  v80 = v149;
  v81 = v153;
  sub_29D5B3B9C();
  (*(v154 + 8))(v78, v81);
  v82 = v161;
  v83 = v159;
  v84 = v162;
  (*(v161 + 104))(v159, *MEMORY[0x29EDC37B8], v162);
  sub_29D5B105C();
  (*(v82 + 8))(v83, v84);
  v85 = sub_29D5B369C();
  v86 = v165;
  (*(*(v85 - 8) + 56))(v165, 1, 1, v85);
  v87 = v157;
  v88 = v158;
  (*(v157 + 16))(v155, v80, v158);
  sub_29D55282C(v86, v168);
  sub_29D551D18(&qword_2A1A16CA8, sub_29D551D60, MEMORY[0x29EDB8940]);
  v89 = v156;
  sub_29D5B381C();
  sub_29D5528C0(v86, &qword_2A1A172F0, v172);
  (*(v87 + 8))(v80, v88);
  sub_29D551F60(0, &qword_2A1A163D8, &qword_2A1A162D0, 0x29EDBAC68, MEMORY[0x29EDC9A40]);
  sub_29D551D18(&qword_2A1A16FC8, sub_29D551DF4, MEMORY[0x29EDC3CA8]);
  v90 = v160;
  v91 = v163;
  sub_29D5B3B7C();
  (*(v164 + 8))(v89, v91);
  sub_29D5B396C();
  sub_29D50B1A4(0);
  sub_29D5520B4();
  sub_29D551D18(&qword_2A1A168C8, sub_29D50B1A4, MEMORY[0x29EDB89C0]);
  v92 = v167;
  sub_29D5B3C5C();
  v169[1](v90, v92);
  v93 = v209;
  v94 = *(v209 + 16);
  v168 = v209 + 16;
  v169 = v94;
  v96 = v204;
  v95 = v205;
  (v94)(v204, a1, v205);
  v97 = v145;
  v98 = v144;
  v99 = v70;
  v100 = v200;
  (*(v145 + 16))(v144, v99, v200);
  v165 = *(v93 + 80);
  v101 = v93;
  v102 = (v165 + 40) & ~v165;
  v167 = v165 | 7;
  v103 = (v206 + *(v97 + 80) + v102) & ~*(v97 + 80);
  v104 = swift_allocObject();
  v105 = v207;
  v106 = v201;
  *(v104 + 2) = v208;
  *(v104 + 3) = v106;
  *(v104 + 4) = v105;
  v107 = v101 + 32;
  v108 = *(v101 + 32);
  v209 = v107;
  v108(&v104[v102], v96, v95);
  (*(v97 + 32))(&v104[v103], v98, v100);
  sub_29D551F60(0, &qword_2A1A16298, &qword_2A1A162A0, 0x29EDC44D8, MEMORY[0x29EDC9C68]);
  sub_29D55225C(0);
  v109 = MEMORY[0x29EDB89A8];
  v172 = MEMORY[0x29EDB89A8];
  sub_29D551D18(&qword_2A1A16990, sub_29D551FC8, MEMORY[0x29EDB89A8]);
  sub_29D551D18(&qword_2A1A16670, sub_29D55225C, v143);

  v110 = v171;
  v111 = v174;
  v112 = v203;
  sub_29D5B3BFC();

  (*(v176 + 8))(v112, v111);
  sub_29D551D18(&qword_2A1A16A50, sub_29D552170, v109);
  v113 = v173;
  v114 = v175;
  sub_29D5B3BDC();
  (*(v177 + 8))(v110, v114);
  v116 = v204;
  v115 = v205;
  (v169)(v204, v142, v205);
  v117 = (v165 + 24) & ~v165;
  v118 = (v206 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
  v119 = swift_allocObject();
  *(v119 + 16) = v202;
  v108((v119 + v117), v116, v115);
  v120 = v208;
  *(v119 + v118) = v208;
  sub_29D552448(0);
  sub_29D551D18(&qword_2A1A16AF0, sub_29D552308, MEMORY[0x29EDB89A0]);

  v121 = v178;
  v122 = v179;
  sub_29D5B3BCC();

  (*(v181 + 8))(v113, v122);
  *(swift_allocObject() + 16) = v120;
  v123 = MEMORY[0x29EDB89F8];
  sub_29D554AC8(0, &qword_2A1A167A8, sub_29D552448, MEMORY[0x29EDB89F8]);
  sub_29D551D18(&qword_2A1A16B78, sub_29D55239C, MEMORY[0x29EDB8990]);
  sub_29D552568();
  v124 = v180;
  v125 = v182;
  sub_29D5B3B8C();

  (*(v184 + 8))(v121, v125);

  sub_29D5B396C();
  sub_29D5526DC(0);
  sub_29D554AC8(0, &qword_2A1A16768, sub_29D5526DC, v123);
  sub_29D551D18(&qword_2A1A16D58, sub_29D55247C, MEMORY[0x29EDB8928]);
  sub_29D552710();
  v126 = v183;
  v127 = v187;
  sub_29D5B3BFC();

  (*(v188 + 8))(v124, v127);
  sub_29D5B147C();
  sub_29D5B143C();
  sub_29D554D90(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v128 = sub_29D5B104C();
  v129 = *(v128 - 8);
  v130 = (*(v129 + 80) + 32) & ~*(v129 + 80);
  v131 = swift_allocObject();
  *(v131 + 16) = xmmword_29D5B62A0;
  (*(v129 + 104))(v131 + v130, *MEMORY[0x29EDC3730], v128);
  (*(v196 + 104))(v195, *MEMORY[0x29EDC38A0], v197);
  v132 = MEMORY[0x29EDCA190];
  v133 = v194;
  sub_29D5B13DC();
  sub_29D551D18(&qword_2A1A16AB0, sub_29D5525F0, v172);
  v134 = v133;
  v135 = v190;
  v136 = sub_29D5B3B0C();
  (*(v198 + 8))(v134, v199);
  sub_29D48F668(&v211);
  (*(v191 + 8))(v126, v135);
  v210 = v132;
  *&v211 = v136;
  v137 = v189;
  sub_29D5B3B4C();

  sub_29D551D18(&qword_2A1A170C8, sub_29D552798, v170);
  v138 = v192;
  v139 = sub_29D5B3B1C();

  (*(v193 + 8))(v137, v138);
  v186(v147, v200);
  return v139;
}

void *sub_29D551834(uint64_t a1)
{
  v2 = v1;
  v22 = *v1;
  v21 = sub_29D5B13CC();
  v4 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29D5B13EC();
  v8 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v9);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for HealthRecordsGeneratorContext;
  sub_29D554DF4(a1, v1 + OBJC_IVAR____TtC13HealthRecords29ConceptSharableModelGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);
  v18[1] = sub_29D5B143C();
  sub_29D554D90(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v12 = sub_29D5B104C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29D5B62A0;
  (*(v13 + 104))(v15 + v14, *MEMORY[0x29EDC3730], v12);
  (*(v4 + 104))(v7, *MEMORY[0x29EDC38A0], v21);
  sub_29D5B13DC();
  (*(v8 + 32))(v2 + OBJC_IVAR____TtC13HealthRecords29ConceptSharableModelGenerator_domain, v11, v20);
  v16 = sub_29D54FE8C(a1);
  sub_29D554E5C(a1, v19);
  v2[2] = v16;
  return v2;
}

void sub_29D551B34(uint64_t a1)
{
  if (!qword_2A1A170A0)
  {
    v1 = MEMORY[0x29EDB89F8];
    sub_29D55478C(255, &qword_2A1A166A8, MEMORY[0x29EDB89F8]);
    sub_29D551BE8(&qword_2A1A166B0, &qword_2A1A166A8, v1, MEMORY[0x29EDB8A00]);
    v2 = sub_29D5B37FC();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A170A0);
    }
  }
}

uint64_t sub_29D551BE8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D55478C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D551C2C(uint64_t a1)
{
  if (!qword_2A1A17278)
  {
    sub_29D551B34(255);
    sub_29D4F7770(255);
    sub_29D551D18(&qword_2A1A170A8, sub_29D551B34, MEMORY[0x29EDB88C8]);
    sub_29D551D18(&qword_2A1A16800, sub_29D4F7770, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B379C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A17278);
    }
  }
}

uint64_t sub_29D551D18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D551D60(uint64_t a1)
{
  if (!qword_2A1A16CA0)
  {
    sub_29D551C2C(255);
    sub_29D551D18(&qword_2A1A17280, sub_29D551C2C, MEMORY[0x29EDB8870]);
    v1 = sub_29D5B388C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16CA0);
    }
  }
}

void sub_29D551DF4(uint64_t a1)
{
  if (!qword_2A1A16FC0)
  {
    sub_29D551D60(255);
    sub_29D551D18(&qword_2A1A16CA8, sub_29D551D60, MEMORY[0x29EDB8940]);
    v1 = sub_29D5B380C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16FC0);
    }
  }
}

void sub_29D551E88(uint64_t a1)
{
  if (!qword_2A1A16E80)
  {
    sub_29D551DF4(255);
    sub_29D551F60(255, &qword_2A1A163D8, &qword_2A1A162D0, 0x29EDBAC68, MEMORY[0x29EDC9A40]);
    sub_29D551D18(&qword_2A1A16FC8, sub_29D551DF4, MEMORY[0x29EDC3CA8]);
    v1 = sub_29D5B384C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16E80);
    }
  }
}

void sub_29D551F60(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D48F51C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D551FC8(uint64_t a1)
{
  if (!qword_2A1A16988)
  {
    sub_29D50B1A4(255);
    sub_29D5543E4(255, &qword_2A1A16F70, sub_29D551E88, sub_29D5520B4);
    sub_29D551D18(&qword_2A1A168C8, sub_29D50B1A4, MEMORY[0x29EDB89C0]);
    sub_29D5520E8();
    v1 = sub_29D5B38FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16988);
    }
  }
}

unint64_t sub_29D5520E8()
{
  result = qword_2A1A16F78;
  if (!qword_2A1A16F78)
  {
    sub_29D5543E4(255, &qword_2A1A16F70, sub_29D551E88, sub_29D5520B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A16F78);
  }

  return result;
}

void sub_29D552170(uint64_t a1)
{
  if (!qword_2A1A16A48)
  {
    sub_29D55225C(255);
    sub_29D551FC8(255);
    sub_29D551D18(&qword_2A1A16670, sub_29D55225C, MEMORY[0x29EDB8A00]);
    sub_29D551D18(&qword_2A1A16990, sub_29D551FC8, MEMORY[0x29EDB89A8]);
    v1 = sub_29D5B38FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16A48);
    }
  }
}

void sub_29D55225C(uint64_t a1)
{
  if (!qword_2A1A16668)
  {
    sub_29D551F60(255, &qword_2A1A16298, &qword_2A1A162A0, 0x29EDC44D8, MEMORY[0x29EDC9C68]);
    sub_29D4A02FC(255, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
    v1 = sub_29D5B398C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16668);
    }
  }
}

void sub_29D552308(uint64_t a1)
{
  if (!qword_2A1A16AE8)
  {
    sub_29D552170(255);
    sub_29D551D18(&qword_2A1A16A50, sub_29D552170, MEMORY[0x29EDB89A8]);
    v1 = sub_29D5B38EC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16AE8);
    }
  }
}

void sub_29D55239C(uint64_t a1)
{
  if (!qword_2A1A16B70)
  {
    sub_29D552308(255);
    sub_29D552448(255);
    sub_29D551D18(&qword_2A1A16AF0, sub_29D552308, MEMORY[0x29EDB89A0]);
    v1 = sub_29D5B38DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16B70);
    }
  }
}

void sub_29D55247C(uint64_t a1)
{
  if (!qword_2A1A16D50)
  {
    sub_29D55239C(255);
    sub_29D554AC8(255, &qword_2A1A167A8, sub_29D552448, MEMORY[0x29EDB89F8]);
    sub_29D551D18(&qword_2A1A16B78, sub_29D55239C, MEMORY[0x29EDB8990]);
    sub_29D552568();
    v1 = sub_29D5B387C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16D50);
    }
  }
}

unint64_t sub_29D552568()
{
  result = qword_2A1A167B0;
  if (!qword_2A1A167B0)
  {
    sub_29D554AC8(255, &qword_2A1A167A8, sub_29D552448, MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A167B0);
  }

  return result;
}

void sub_29D5525F0(uint64_t a1)
{
  if (!qword_2A1A16AA8)
  {
    sub_29D554AC8(255, &qword_2A1A16768, sub_29D5526DC, MEMORY[0x29EDB89F8]);
    sub_29D55247C(255);
    sub_29D552710();
    sub_29D551D18(&qword_2A1A16D58, sub_29D55247C, MEMORY[0x29EDB8928]);
    v1 = sub_29D5B38FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16AA8);
    }
  }
}

unint64_t sub_29D552710()
{
  result = qword_2A1A16770;
  if (!qword_2A1A16770)
  {
    sub_29D554AC8(255, &qword_2A1A16768, sub_29D5526DC, MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A16770);
  }

  return result;
}

void sub_29D552798(uint64_t a1)
{
  if (!qword_2A1A170C0)
  {
    sub_29D554AC8(255, &qword_2A1A16768, sub_29D5526DC, MEMORY[0x29EDB89F8]);
    sub_29D552710();
    v1 = sub_29D5B37FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A170C0);
    }
  }
}

uint64_t sub_29D55282C(uint64_t a1, uint64_t a2)
{
  sub_29D554D90(0, &qword_2A1A172F0, MEMORY[0x29EDCA498], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D5528C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D554D90(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D552930@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D5B148C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_29D5B0E6C() - 8);
  v9 = *(v2 + 32);
  v10 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_29D549384(a1, v9, v10, a2);
}

void *sub_29D552A1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(sub_29D5B148C() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  return sub_29D549690(a1, *(v2 + 16), v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_29D552AD0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_29D569938(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_29D552AFC()
{
  result = qword_2A17A4B20;
  if (!qword_2A17A4B20)
  {
    sub_29D554AC8(255, &qword_2A17A4B18, sub_29D552448, MEMORY[0x29EDB8B18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4B20);
  }

  return result;
}

unint64_t sub_29D552BA4()
{
  result = qword_2A17A4B28;
  if (!qword_2A17A4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4B28);
  }

  return result;
}

void sub_29D552BF8(uint64_t a1)
{
  if (!qword_2A17A4B30)
  {
    sub_29D5250C8(255);
    sub_29D551F60(255, &qword_2A1A16298, &qword_2A1A162A0, 0x29EDC44D8, MEMORY[0x29EDC9C68]);
    sub_29D551D18(&qword_2A1A16710, sub_29D5250C8, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B384C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A4B30);
    }
  }
}

void sub_29D552CD0(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D5B0E6C() - 8);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_29D54A4C0(a1, v6, v7, a2);
}

unint64_t sub_29D552D74(uint64_t a1)
{
  v25 = sub_29D5B367C();
  v1 = sub_29D5B365C();
  v2 = v1;
  v26 = MEMORY[0x29EDCA190];
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
    goto LABEL_59;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29D5B485C())
  {
    v5 = MEMORY[0x29EDCA190];
    if (i)
    {
      v6 = 0;
      v7 = MEMORY[0x29EDCA190];
      do
      {
        v8 = v6;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x29ED5EF30](v8, v2);
          }

          else
          {
            if (v8 >= *(v3 + 16))
            {
              goto LABEL_54;
            }

            v9 = *(v2 + 8 * v8 + 32);
          }

          v10 = v9;
          v6 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v8;
          if (v6 == i)
          {
            goto LABEL_19;
          }
        }

        MEMORY[0x29ED5E5E0]();
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_29D5B408C();
        }

        sub_29D5B40AC();
        v7 = v26;
      }

      while (v6 != i);
    }

    else
    {
      v7 = MEMORY[0x29EDCA190];
    }

LABEL_19:

    v26 = v5;
    if (v7 >> 62)
    {
      v2 = sub_29D5B485C();
    }

    else
    {
      v2 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = MEMORY[0x29EDCA190];
    if (v2)
    {
      v12 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x29ED5EF30](v12, v7);
        }

        else
        {
          if (v12 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_56;
          }

          v13 = *(v7 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if ([v13 isLowUtility])
        {
        }

        else
        {
          sub_29D5B498C();
          v3 = *(v5 + 16);
          sub_29D5B49BC();
          sub_29D5B49CC();
          sub_29D5B499C();
        }

        ++v12;
        if (v15 == v2)
        {
          v16 = v5;
          v11 = MEMORY[0x29EDCA190];
          goto LABEL_34;
        }
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v16 = MEMORY[0x29EDCA190];
LABEL_34:

    if ((v16 & 0x8000000000000000) != 0 || (v16 & 0x4000000000000000) != 0)
    {
      sub_29D48F51C(0, &qword_2A1A16320, 0x29EDBAE68);

      v17 = sub_29D5B4A4C();
    }

    else
    {

      sub_29D5B4C8C();
      sub_29D48F51C(0, &qword_2A1A16320, 0x29EDBAE68);
      v17 = v16;
    }

    sub_29D54F90C(v25, sub_29D4C7AC8);
    v18 = v17;
    v26 = v11;
    if (!(v17 >> 62))
    {
      v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
        break;
      }

      goto LABEL_39;
    }

    v19 = sub_29D5B485C();
    if (!v19)
    {
      break;
    }

LABEL_39:
    v20 = 0;
    v3 = v18 & 0xC000000000000001;
    v21 = MEMORY[0x29EDCA190];
LABEL_40:
    v2 = v20;
    while (1)
    {
      if (v3)
      {
        v22 = MEMORY[0x29ED5EF30](v2, v18);
      }

      else
      {
        if (v2 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v22 = *(v18 + 8 * v2 + 32);
      }

      v23 = v22;
      v20 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        MEMORY[0x29ED5E5E0]();
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_29D5B408C();
        }

        sub_29D5B40AC();
        v21 = v26;
        if (v20 != v19)
        {
          goto LABEL_40;
        }

        goto LABEL_63;
      }

      ++v2;
      if (v20 == v19)
      {
        goto LABEL_63;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    ;
  }

  v21 = MEMORY[0x29EDCA190];
LABEL_63:

  return v21;
}

id sub_29D5531C0(void *a1, char a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v41[1] = a3;
  sub_29D554D90(0, &qword_2A1A17380, MEMORY[0x29EDC3990], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v42 = v41 - v11;
  v12 = sub_29D5B1D6C();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v5;
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v18 = result;
    v19 = [a1 semanticIdentifier];
    v20 = [v19 stringValue];

    if (!v20)
    {
      sub_29D5B3E5C();
      v20 = sub_29D5B3E1C();
    }

    [v18 setConceptIdentifier_];

    sub_29D5B453C();
    v21 = sub_29D5B3E1C();

    [v18 setPreferredName_];

    v22 = [a1 educationContent];
    v44 = v18;
    if (v22)
    {
      v45 = v22;
      v23 = v22;
      sub_29D48F51C(0, &qword_2A17A4B40, 0x29EDBACD0);
      v24 = sub_29D5B270C();

      v18 = v44;
      if (v24)
      {
        [v44 setLocalizedEducationContent_];
      }
    }

    [v18 setIsPinned_];
    (*(v13 + 104))(v16, *MEMORY[0x29EDC4068], v12);
    v25 = sub_29D5B1D0C();
    (*(v13 + 8))(v16, v12);
    [v18 setCategory_];
    v45 = MEMORY[0x29EDCA190];
    if (a4 >> 62)
    {
LABEL_23:
      v26 = sub_29D5B485C();
    }

    else
    {
      v26 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = 0;
    v28 = MEMORY[0x29EDCA190];
    while (v26 != v27)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x29ED5EF30](v27, a4);
      }

      else
      {
        if (v27 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v29 = *(a4 + 8 * v27 + 32);
      }

      v30 = v29;
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v32 = MEMORY[0x29ED5F4B0]();
      v33 = sub_29D54DE14();
      objc_autoreleasePoolPop(v32);

      ++v27;
      if (v33)
      {
        MEMORY[0x29ED5E5E0]();
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_29D5B408C();
        }

        sub_29D5B40AC();
        v28 = v45;
        v27 = v31;
      }
    }

    v34 = sub_29D54DE14();
    v35 = v44;
    [v44 setLatestRecord_];

    sub_29D4C514C(v28);

    v36 = objc_allocWithZone(MEMORY[0x29EDB8DE8]);
    v37 = sub_29D5B401C();

    v38 = [v36 initWithArray_];

    [v35 setAllRecords_];
    v39 = v42;
    sub_29D5B174C();
    v40 = sub_29D5B175C();
    (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
    sub_29D5536D8();
    sub_29D5B302C();
    return v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_29D5536D8()
{
  result = qword_2A17A4278;
  if (!qword_2A17A4278)
  {
    sub_29D48F51C(255, &qword_2A1A162A0, 0x29EDC44D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4278);
  }

  return result;
}

void sub_29D553740(uint64_t a1)
{
  if (!qword_2A1A163A0)
  {
    sub_29D5B368C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A163A0);
    }
  }
}

void sub_29D5537A8(uint64_t a1)
{
  if (!qword_2A1A169E8)
  {
    sub_29D5543E4(255, &qword_2A1A16F50, sub_29D553894, sub_29D553970);
    sub_29D5539A4(255);
    sub_29D553A50();
    sub_29D551D18(&qword_2A1A166E0, sub_29D5539A4, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B38FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A169E8);
    }
  }
}

void sub_29D553894(uint64_t a1)
{
  if (!qword_2A1A168A8)
  {
    sub_29D551F60(255, &qword_2A1A163C0, &qword_2A1A162B0, 0x29EDBADC8, MEMORY[0x29EDC9A40]);
    sub_29D554260(&qword_2A1A163B8, &qword_2A1A163C0, &qword_2A1A162B0, 0x29EDBADC8);
    v1 = sub_29D5B392C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A168A8);
    }
  }
}

void sub_29D5539A4(uint64_t a1)
{
  if (!qword_2A1A166D8)
  {
    sub_29D551F60(255, &qword_2A1A163C0, &qword_2A1A162B0, 0x29EDBADC8, MEMORY[0x29EDC9A40]);
    sub_29D4A02FC(255, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
    v1 = sub_29D5B398C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A166D8);
    }
  }
}

unint64_t sub_29D553A50()
{
  result = qword_2A1A16F58;
  if (!qword_2A1A16F58)
  {
    sub_29D5543E4(255, &qword_2A1A16F50, sub_29D553894, sub_29D553970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A16F58);
  }

  return result;
}

void sub_29D553AD8(uint64_t a1)
{
  if (!qword_2A1A16A58)
  {
    sub_29D554AC8(255, &qword_2A1A16678, sub_29D553BC4, MEMORY[0x29EDB89F8]);
    sub_29D5537A8(255);
    sub_29D553C70();
    sub_29D551D18(&qword_2A1A169F0, sub_29D5537A8, MEMORY[0x29EDB89A8]);
    v1 = sub_29D5B38FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16A58);
    }
  }
}

void sub_29D553BC4(uint64_t a1)
{
  if (!qword_2A1A162A8)
  {
    sub_29D48F51C(255, &qword_2A1A162B0, 0x29EDBADC8);
    sub_29D551F60(255, &qword_2A1A163E0, &qword_2A1A16300, 0x29EDBADB8, MEMORY[0x29EDC9A40]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A162A8);
    }
  }
}

unint64_t sub_29D553C70()
{
  result = qword_2A1A16680;
  if (!qword_2A1A16680)
  {
    sub_29D554AC8(255, &qword_2A1A16678, sub_29D553BC4, MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A16680);
  }

  return result;
}

void sub_29D553D2C(uint64_t a1)
{
  if (!qword_2A1A16AF8)
  {
    sub_29D5542C4(255, &qword_2A1A16A68, sub_29D553AD8, sub_29D553CF8);
    sub_29D553DC0();
    v1 = sub_29D5B38EC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16AF8);
    }
  }
}

unint64_t sub_29D553DC0()
{
  result = qword_2A1A16A70;
  if (!qword_2A1A16A70)
  {
    sub_29D5542C4(255, &qword_2A1A16A68, sub_29D553AD8, sub_29D553CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A16A70);
  }

  return result;
}

uint64_t sub_29D553E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D553EE4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for HealthRecordsGeneratorContext(0);
  result = sub_29D554964(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_29D553F58()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_29D5B148C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D554040(void *a1, uint64_t a2)
{
  type metadata accessor for HealthRecordsGeneratorContext(0);

  return sub_29D54DBE4(a1, a2);
}

uint64_t sub_29D5540C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_29D5540FC()
{
  result = qword_2A1A16E68;
  if (!qword_2A1A16E68)
  {
    sub_29D554610(255, &qword_2A1A16E60, sub_29D553D2C, sub_29D553E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A16E68);
  }

  return result;
}

void sub_29D554184(uint64_t a1)
{
  if (!qword_2A17A4B58)
  {
    sub_29D551F60(255, &qword_2A1A163E0, &qword_2A1A16300, 0x29EDBADB8, MEMORY[0x29EDC9A40]);
    sub_29D554260(&qword_2A17A4B60, &qword_2A1A163E0, &qword_2A1A16300, 0x29EDBADB8);
    v1 = sub_29D5B392C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A4B58);
    }
  }
}

uint64_t sub_29D554260(unint64_t *a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D551F60(255, a2, a3, a4, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D5542C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    v7 = MEMORY[0x29EDB89F8];
    sub_29D55478C(255, &qword_2A1A166A8, MEMORY[0x29EDB89F8]);
    a3(255);
    sub_29D551BE8(&qword_2A1A166B0, &qword_2A1A166A8, v7, MEMORY[0x29EDB8A00]);
    a4();
    v8 = sub_29D5B38FC();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D5543E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    sub_29D4A02FC(255, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
    a4();
    v6 = sub_29D5B382C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D5544F4(uint64_t a1)
{
  if (!qword_2A17A4B88)
  {
    sub_29D5542C4(255, &qword_2A17A4B68, sub_29D5543B0, sub_29D5544C0);
    sub_29D554588();
    v1 = sub_29D5B38EC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A4B88);
    }
  }
}

unint64_t sub_29D554588()
{
  result = qword_2A17A4B90;
  if (!qword_2A17A4B90)
  {
    sub_29D5542C4(255, &qword_2A17A4B68, sub_29D5543B0, sub_29D5544C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4B90);
  }

  return result;
}

void sub_29D554610(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_29D5B384C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_29D5546BC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_29D54B5E8(*a1, *(v2 + 24), *(v2 + 32));
  *a2 = result;
  return result;
}

unint64_t sub_29D5546F4()
{
  result = qword_2A17A4BA8;
  if (!qword_2A17A4BA8)
  {
    sub_29D554610(255, &qword_2A17A4B98, sub_29D5544F4, sub_29D554688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4BA8);
  }

  return result;
}

void sub_29D55478C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_29D4A02FC(255, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
    v7 = a3(a1, MEMORY[0x29EDC9A98], v6, MEMORY[0x29EDC9F20]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D55480C()
{
  result = qword_2A17A4BC8;
  if (!qword_2A17A4BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4BC8);
  }

  return result;
}

void sub_29D5548A4(int a1, void *a2)
{
  v5 = *(sub_29D5B353C() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = v2 + v7;
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v2 + v8);

  sub_29D54D698(a1, a2, v9, v2 + v6, v11, v12, v13);
}

uint64_t sub_29D554964(void *a1)
{
  sub_29D5B140C();
  sub_29D499EC0(v9, v9[3]);
  v2 = sub_29D5B136C();
  v3 = [objc_allocWithZone(MEMORY[0x29EDBADC0]) initWithHealthStore:v2 recipientIdentifier:a1];

  sub_29D48F668(v9);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  sub_29D554AC8(0, &qword_2A17A4BE8, sub_29D553BC4, MEMORY[0x29EDB8AD0]);
  swift_allocObject();
  v5 = v3;
  v6 = a1;
  v9[0] = sub_29D5B3A6C();
  sub_29D554B54();
  v7 = sub_29D5B3B1C();

  return v7;
}

void sub_29D554AC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_29D4A02FC(255, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
    v9 = a4(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_29D554B54()
{
  result = qword_2A17A4BF0;
  if (!qword_2A17A4BF0)
  {
    sub_29D554AC8(255, &qword_2A17A4BE8, sub_29D553BC4, MEMORY[0x29EDB8AD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4BF0);
  }

  return result;
}

uint64_t sub_29D554BDC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 1;
  return v4(v6);
}

void sub_29D554C30(uint64_t a1)
{
  if (!qword_2A1A16578)
  {
    sub_29D551F60(255, &qword_2A1A163C0, &qword_2A1A162B0, 0x29EDBADC8, MEMORY[0x29EDC9A40]);
    sub_29D4A02FC(255, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
    v1 = sub_29D5B3A5C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16578);
    }
  }
}

uint64_t sub_29D554CDC()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

void sub_29D554D28(uint64_t a1)
{
  if (!qword_2A1A19820)
  {
    sub_29D4A02FC(255, &qword_2A1A19828, MEMORY[0x29EDC38F8]);
    v1 = sub_29D5B472C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A19820);
    }
  }
}

void sub_29D554D90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D554DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D554E5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29D554EE0()
{
  result = qword_2A17A4BF8;
  if (!qword_2A17A4BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4BF8);
  }

  return result;
}

unint64_t sub_29D554F38()
{
  result = qword_2A17A4C00;
  if (!qword_2A17A4C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4C00);
  }

  return result;
}

uint64_t type metadata accessor for ConceptDeltaHighlightFeedItemData(uint64_t a1)
{
  result = qword_2A17A4C08;
  if (!qword_2A17A4C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D555028(uint64_t a1)
{
  sub_29D5B1D6C();
  if (v1 <= 0x3F)
  {
    sub_29D4A0664(319, &qword_2A1A164D8, &qword_2A1A162D0, 0x29EDBAC68);
    if (v2 <= 0x3F)
    {
      sub_29D4A0664(319, &qword_2A17A48C8, &qword_2A17A48B8, 0x29EDBAC58);
      if (v3 <= 0x3F)
      {
        sub_29D4B4C4C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_29D555128(void *a1)
{
  sub_29D5565E4(0, &qword_2A17A4C38, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v10 - v7;
  sub_29D499EC0(a1, a1[3]);
  sub_29D5564D4();
  sub_29D5B4DCC();
  v18 = 0;
  sub_29D5B1D6C();
  sub_29D556C8C(&qword_2A17A4120, MEMORY[0x29EDC4098], MEMORY[0x29EDC40A0]);
  sub_29D5B4C0C();
  if (!v1)
  {
    type metadata accessor for ConceptDeltaHighlightFeedItemData(0);
    v17 = 1;
    sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0, 0x29EDBAC68);
    sub_29D54186C(&qword_2A17A4A58, MEMORY[0x29EDBA1D8]);
    sub_29D5B4C0C();
    v16 = 2;
    sub_29D4A0664(0, &qword_2A17A48C8, &qword_2A17A48B8, 0x29EDBAC58);
    sub_29D556528(&qword_2A17A4C40, MEMORY[0x29EDBA1D8]);
    sub_29D5B4C0C();
    v15 = 3;
    sub_29D5B4C0C();
    v14 = 4;
    sub_29D5B4BFC();
    v13 = 5;
    sub_29D5B4BCC();
    v12 = 6;
    sub_29D5B0E6C();
    sub_29D556C8C(&qword_2A1A193D8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD0]);
    sub_29D5B4BBC();
    v11 = 7;
    sub_29D5B4BDC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_29D5554F0(uint64_t a1)
{
  v2 = sub_29D5B0E6C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B1D6C();
  sub_29D556C8C(&qword_2A17A4128, MEMORY[0x29EDC4098], MEMORY[0x29EDC40A8]);
  sub_29D5B3D9C();
  v11 = type metadata accessor for ConceptDeltaHighlightFeedItemData(0);
  sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0, 0x29EDBAC68);
  sub_29D5418C8();
  sub_29D5B3D9C();
  sub_29D4A0664(0, &qword_2A17A48C8, &qword_2A17A48B8, 0x29EDBAC58);
  sub_29D556648();
  sub_29D5B3D9C();
  sub_29D5B3D9C();
  MEMORY[0x29ED5F330](*(v1 + *(v11 + 32)));
  sub_29D5B3EFC();
  sub_29D55670C(v1 + *(v11 + 40), v10, sub_29D4B4C4C);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_29D5B4D6C();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_29D5B4D6C();
    sub_29D556C8C(&qword_2A17A4068, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
    sub_29D5B3D9C();
    (*(v3 + 8))(v6, v2);
  }

  return sub_29D5B4D6C();
}

uint64_t sub_29D555808@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v49 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0664(0, &qword_2A17A48C8, &qword_2A17A48B8, 0x29EDBAC58);
  v53 = *(v6 - 8);
  v54 = v6;
  v8 = MEMORY[0x2A1C7C4A8](v6, v7);
  v50 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v51 = &v46 - v11;
  sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0, 0x29EDBAC68);
  v55 = v12;
  v52 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v13);
  v15 = &v46 - v14;
  v16 = sub_29D5B1D6C();
  v56 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v17);
  v57 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5565E4(0, &qword_2A17A4C20, MEMORY[0x29EDC9E80]);
  v58 = *(v19 - 8);
  v59 = v19;
  MEMORY[0x2A1C7C4A8](v19, v20);
  v22 = &v46 - v21;
  v23 = type metadata accessor for ConceptDeltaHighlightFeedItemData(0);
  MEMORY[0x2A1C7C4A8](v23, v24);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499EC0(a1, a1[3]);
  sub_29D5564D4();
  v60 = v22;
  v27 = v61;
  sub_29D5B4DBC();
  if (v27)
  {
    return sub_29D48F668(a1);
  }

  v28 = v26;
  v69 = 0;
  sub_29D556C8C(&qword_2A17A4110, MEMORY[0x29EDC4098], MEMORY[0x29EDC40B8]);
  v29 = v57;
  sub_29D5B4B6C();
  v30 = *(v56 + 32);
  v61 = v16;
  v30(v28, v29, v16);
  v68 = 1;
  sub_29D54186C(&qword_2A17A4A48, MEMORY[0x29EDBA1F0]);
  v31 = v55;
  sub_29D5B4B6C();
  v32 = v23;
  (*(v52 + 32))(v28 + *(v23 + 20), v15, v31);
  v67 = 2;
  sub_29D556528(&qword_2A17A4C30, MEMORY[0x29EDBA1F0]);
  v33 = v51;
  v34 = v54;
  v57 = 0;
  sub_29D5B4B6C();
  v47 = v32;
  v35 = *(v32 + 24);
  v51 = *(v53 + 32);
  (v51)(v28 + v35, v33, v34);
  v66 = 3;
  v36 = v50;
  sub_29D5B4B6C();
  (v51)(v28 + v47[7], v36, v34);
  v65 = 4;
  v37 = sub_29D5B4B5C();
  v38 = v47;
  *(v28 + v47[8]) = v37;
  v64 = 5;
  v39 = sub_29D5B4B2C();
  v40 = v58;
  v41 = (v28 + v38[9]);
  *v41 = v39;
  v41[1] = v42;
  sub_29D5B0E6C();
  v63 = 6;
  sub_29D556C8C(&qword_2A1A193D0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BF0]);
  v43 = v49;
  sub_29D5B4B1C();
  sub_29D4D1F64(v43, v28 + v38[10]);
  v62 = 7;
  v45 = sub_29D5B4B3C();
  (*(v40 + 8))(v60, v59);
  *(v28 + v38[11]) = v45 & 1;
  sub_29D55670C(v28, v48, type metadata accessor for ConceptDeltaHighlightFeedItemData);
  sub_29D48F668(a1);
  return sub_29D556584(v28, type metadata accessor for ConceptDeltaHighlightFeedItemData);
}

unint64_t sub_29D556154()
{
  v1 = *v0;
  v2 = 0x747065636E6F63;
  v3 = 0x66676E696E61656DLL;
  if (v1 != 6)
  {
    v3 = 0x69446E4965646968;
  }

  v4 = 0x656C746974;
  if (v1 == 4)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6365527265646C6FLL;
  if (v1 != 2)
  {
    v5 = 0x636552726577656ELL;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_29D556278@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29D556F2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29D5562AC(uint64_t a1)
{
  v2 = sub_29D5564D4();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D5562E8(uint64_t a1)
{
  v2 = sub_29D5564D4();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D556354()
{
  sub_29D5B4D4C();
  sub_29D5554F0(v1);
  return sub_29D5B4D9C();
}

uint64_t sub_29D556398(uint64_t a1)
{
  sub_29D5B4D4C();
  sub_29D5554F0(v2);
  return sub_29D5B4D9C();
}

uint64_t sub_29D55640C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D556C8C(&qword_2A17A4C58, type metadata accessor for ConceptDeltaHighlightFeedItemData, &unk_29D5BA4D4);

  return MEMORY[0x2A1C660E0](a1, v4, a2);
}

unint64_t sub_29D5564D4()
{
  result = qword_2A17A4C28;
  if (!qword_2A17A4C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4C28);
  }

  return result;
}

uint64_t sub_29D556528(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_29D4A0664(255, &qword_2A17A48C8, &qword_2A17A48B8, 0x29EDBAC58);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D556584(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D5565E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D5564D4();
    v7 = a3(a1, &type metadata for ConceptDeltaHighlightFeedItemData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D556648()
{
  result = qword_2A17A4C48;
  if (!qword_2A17A4C48)
  {
    sub_29D4A0664(255, &qword_2A17A48C8, &qword_2A17A48B8, 0x29EDBAC58);
    sub_29D4DC4A0(&qword_2A17A4C50, &qword_2A17A48B8, 0x29EDBAC58, MEMORY[0x29EDCA2F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4C48);
  }

  return result;
}

uint64_t sub_29D55670C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D556774(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D5B0E6C();
  v35 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4D2828(0);
  v13 = v12;
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B1D6C();
  sub_29D556C8C(&qword_2A17A4130, MEMORY[0x29EDC4098], MEMORY[0x29EDC40B0]);
  sub_29D5B3FFC();
  sub_29D5B3FFC();
  if (v37 != v36)
  {
    goto LABEL_15;
  }

  v33 = v7;
  v34 = v4;
  v17 = type metadata accessor for ConceptDeltaHighlightFeedItemData(0);
  sub_29D48F51C(0, &qword_2A1A162D0, 0x29EDBAC68);
  sub_29D4DC4A0(&qword_2A17A4A70, &qword_2A1A162D0, 0x29EDBAC68, MEMORY[0x29EDCA2F8]);
  if ((sub_29D5B3CFC() & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_29D48F51C(0, &qword_2A17A48B8, 0x29EDBAC58);
  sub_29D4DC4A0(&qword_2A17A4C60, &qword_2A17A48B8, 0x29EDBAC58, MEMORY[0x29EDCA2F8]);
  if ((sub_29D5B3CFC() & 1) == 0 || (sub_29D5B3CFC() & 1) == 0 || *(a1 + v17[8]) != *(a2 + v17[8]))
  {
    goto LABEL_15;
  }

  v18 = v17[9];
  v19 = *(a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  if ((v19 != *v21 || v20 != v21[1]) && (sub_29D5B4C7C() & 1) == 0)
  {
    goto LABEL_15;
  }

  v22 = v17[10];
  v23 = *(v13 + 48);
  sub_29D55670C(a1 + v22, v16, sub_29D4B4C4C);
  sub_29D55670C(a2 + v22, &v16[v23], sub_29D4B4C4C);
  v24 = v34;
  v25 = v35;
  v26 = *(v35 + 48);
  if (v26(v16, 1, v34) == 1)
  {
    if (v26(&v16[v23], 1, v24) == 1)
    {
      sub_29D556584(v16, sub_29D4B4C4C);
LABEL_18:
      v27 = *(a1 + v17[11]) ^ *(a2 + v17[11]) ^ 1;
      return v27 & 1;
    }

    goto LABEL_14;
  }

  sub_29D55670C(v16, v11, sub_29D4B4C4C);
  if (v26(&v16[v23], 1, v24) == 1)
  {
    (*(v25 + 8))(v11, v24);
LABEL_14:
    sub_29D556584(v16, sub_29D4D2828);
    goto LABEL_15;
  }

  v29 = v33;
  (*(v25 + 32))(v33, &v16[v23], v24);
  sub_29D556C8C(&qword_2A17A4070, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE8]);
  v30 = sub_29D5B3E0C();
  v31 = *(v25 + 8);
  v31(v29, v24);
  v31(v11, v24);
  sub_29D556584(v16, sub_29D4B4C4C);
  if (v30)
  {
    goto LABEL_18;
  }

LABEL_15:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_29D556C8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for ConceptDeltaHighlightFeedItemData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}