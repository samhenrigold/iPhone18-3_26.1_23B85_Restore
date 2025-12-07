uint64_t sub_2284985D0@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  sub_22842B3E0(*a1, v7);
  v4 = sub_22855D94C();
  result = sub_22842B378(v6, v7);
  *a3 = v4;
  return result;
}

id *HealthAppNotificationContentStateManager.deinit()
{

  return v0;
}

uint64_t HealthAppNotificationContentStateManager.__deallocating_deinit()
{
  HealthAppNotificationContentStateManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_228498730()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 72);
}

uint64_t sub_228498770(char a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 72) = a1;
  return result;
}

uint64_t sub_228498874@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UnprotectedNotificationContentState(0);
  v6 = [a1 value];
  v7 = sub_22855C09C();
  v9 = v8;

  sub_2283FA100(&qword_27D83FB20, 255, type metadata accessor for UnprotectedNotificationContentState, &protocol conformance descriptor for UnprotectedNotificationContentState);
  sub_22855BD7C();
  if (v2)
  {
    sub_22842B38C(v7, v9);
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v10 = sub_22855CABC();
    __swift_project_value_buffer(v10, qword_280DEEC98);
    v11 = v2;
    v12 = sub_22855CA8C();
    v13 = sub_22855D68C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315906;
      *(v14 + 4) = sub_2283F8938(0xD000000000000028, 0x8000000228563C90, &v21);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_2283F8938(0xD000000000000017, 0x8000000228570910, &v21);
      *(v14 + 22) = 2080;
      *(v14 + 24) = sub_2283F8938(0xD000000000000023, 0x8000000228570930, &v21);
      *(v14 + 32) = 2082;
      v16 = v2;
      sub_228418D44();
      v17 = sub_22855D1CC();
      v19 = sub_2283F8938(v17, v18, &v21);

      *(v14 + 34) = v19;
      _os_log_impl(&dword_2283ED000, v12, v13, "%s %s %s Error: %{public}s", v14, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v15, -1, -1);
      MEMORY[0x22AABAD40](v14, -1, -1);
    }

    else
    {
    }

    return (*(*(v5 - 8) + 56))(a2, 1, 1, v5);
  }

  else
  {
    sub_22842B38C(v7, v9);
    return (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
  }
}

uint64_t sub_228498BC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ProtectedNotificationContentState(0);
  v6 = [a1 value];
  v7 = sub_22855C09C();
  v9 = v8;

  sub_2283FA100(&qword_27D83FA40, 255, type metadata accessor for ProtectedNotificationContentState, &protocol conformance descriptor for ProtectedNotificationContentState);
  sub_22855BD7C();
  if (v2)
  {
    sub_22842B38C(v7, v9);
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v10 = sub_22855CABC();
    __swift_project_value_buffer(v10, qword_280DEEC98);
    v11 = v2;
    v12 = sub_22855CA8C();
    v13 = sub_22855D68C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315906;
      *(v14 + 4) = sub_2283F8938(0xD000000000000028, 0x8000000228563C90, &v21);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_2283F8938(0xD000000000000017, 0x8000000228570910, &v21);
      *(v14 + 22) = 2080;
      *(v14 + 24) = sub_2283F8938(0xD000000000000021, 0x8000000228570960, &v21);
      *(v14 + 32) = 2082;
      v16 = v2;
      sub_228418D44();
      v17 = sub_22855D1CC();
      v19 = sub_2283F8938(v17, v18, &v21);

      *(v14 + 34) = v19;
      _os_log_impl(&dword_2283ED000, v12, v13, "%s %s %s Error: %{public}s", v14, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v15, -1, -1);
      MEMORY[0x22AABAD40](v14, -1, -1);
    }

    else
    {
    }

    return (*(*(v5 - 8) + 56))(a2, 1, 1, v5);
  }

  else
  {
    sub_22842B38C(v7, v9);
    return (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
  }
}

uint64_t sub_228498F1C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, char *a7, uint64_t a8, void (**a9)(void, void))
{
  v90 = a6;
  v91 = a8;
  v102 = a4;
  v103 = a7;
  v101 = a2;
  v12 = MEMORY[0x277D83D88];
  sub_2283FA404(0, &qword_280DED138, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v83 - v14;
  sub_22849BBD4(0);
  v93 = *(v16 - 8);
  v94 = v16;
  MEMORY[0x28223BE20](v16);
  v92 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849BD88(0);
  v99 = v18;
  v97 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v95 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849BEA4(0);
  v100 = v20;
  v98 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v96 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x277D84F78];
  sub_22849BD38(0, &qword_280DE9820, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCE78]);
  v88 = *(v23 - 8);
  v89 = v23;
  MEMORY[0x28223BE20](v23);
  v85 = &v83 - v24;
  sub_2283FEFCC(0, &qword_280DE8EB0, v22 + 8, MEMORY[0x277CBCF38]);
  v86 = *(v25 - 8);
  v87 = v25;
  MEMORY[0x28223BE20](v25);
  v84 = &v83 - v26;
  sub_2283FA404(0, &qword_280DEE380, MEMORY[0x277CC9578], v12);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v83 - v28;
  v30 = sub_22855C16C();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v83 - v35;
  sub_2284360F4(a1, v29);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    v89 = a5;
    sub_22849C400(v29, &qword_280DEE380, MEMORY[0x277CC9578]);
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v88 = a9;
    v37 = sub_22855CABC();
    __swift_project_value_buffer(v37, qword_280DEEC98);
    v38 = a3;

    v39 = sub_22855CA8C();
    v40 = sub_22855D6AC();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v101;
    if (v41)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v105[0] = v44;
      *v43 = 136315394;
      *(v43 + 4) = sub_2283F8938(0xD000000000000028, 0x8000000228563C90, v105);
      *(v43 + 12) = 2080;
      *(v43 + 14) = sub_2283F8938(v42, v38, v105);
      _os_log_impl(&dword_2283ED000, v39, v40, "%s Proceeding with migration for %s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v44, -1, -1);
      MEMORY[0x22AABAD40](v43, -1, -1);
    }

    v104 = v103;
    v105[0] = v90;
    v45 = sub_22855D7EC();
    (*(*(v45 - 8) + 56))(v15, 1, 1, v45);
    sub_22849BCA4(0);
    sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
    v90 = MEMORY[0x277CBCD90];
    sub_2283FA100(&qword_280DE9910, 255, sub_22849BCA4, MEMORY[0x277CBCD90]);
    sub_2283F22E0();
    v46 = v92;
    sub_22855CF4C();
    sub_22849C400(v15, &qword_280DED138, MEMORY[0x277D85248]);
    v47 = swift_allocObject();
    v47[2] = v42;
    v47[3] = v38;
    v47[4] = v91;

    sub_22855CCBC();
    v48 = MEMORY[0x277CBCD88];
    sub_2283FEFCC(0, &qword_280DE9888, v22 + 8, MEMORY[0x277CBCD88]);
    v91 = v49;
    sub_2283FA100(&qword_280DE99A0, 255, sub_22849BBD4, MEMORY[0x277CBCD60]);
    sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v48, v90);
    v50 = v94;
    v51 = v95;
    sub_22855CF2C();

    (*(v93 + 8))(v46, v50);
    v52 = swift_allocObject();
    v52[2] = v42;
    v52[3] = v38;
    v53 = v88;
    v54 = v89;
    v55 = v102;
    v56 = v103;
    v52[4] = v88;
    v52[5] = v55;
    v52[6] = v54;
    v52[7] = v56;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_22849BFF8;
    *(v57 + 24) = v52;

    v58 = v53;
    v59 = v56;
    sub_22855CCBC();
    v60 = MEMORY[0x277CBCCE0];
    sub_2283FA100(&qword_280DE9A08, 255, sub_22849BD88, MEMORY[0x277CBCCE0]);
    v61 = v96;
    v62 = v99;
    sub_22855CF2C();

    (*(v97 + 8))(v51, v62);
    sub_2283FA100(&qword_280DE99F8, 255, sub_22849BEA4, v60);
    v63 = v100;
    v64 = sub_22855CE6C();
    (*(v98 + 8))(v61, v63);
  }

  else
  {
    (*(v31 + 32))(v36, v29, v30);
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v65 = sub_22855CABC();
    __swift_project_value_buffer(v65, qword_280DEEC98);
    v66 = *(v31 + 16);
    v103 = v36;
    v66(v34, v36, v30);

    v67 = sub_22855CA8C();
    v68 = sub_22855D66C();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v105[0] = v100;
      *v69 = 136315906;
      *(v69 + 4) = sub_2283F8938(0xD000000000000028, 0x8000000228563C90, v105);
      *(v69 + 12) = 2080;
      *(v69 + 14) = sub_2283F8938(v101, a3, v105);
      *(v69 + 22) = 2080;
      sub_2283FA100(&qword_280DECD88, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v70 = sub_22855E11C();
      v72 = v71;
      v73 = *(v31 + 8);
      LODWORD(v101) = v68;
      v73(v34, v30);
      v74 = sub_2283F8938(v70, v72, v105);

      *(v69 + 24) = v74;
      *(v69 + 32) = 2080;
      *(v69 + 34) = sub_2283F8938(v102, a5, v105);
      _os_log_impl(&dword_2283ED000, v67, v101, "%s Migration already completed for %s on %s for key %s", v69, 0x2Au);
      v75 = v100;
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v75, -1, -1);
      v76 = v69;
      v22 = MEMORY[0x277D84F78];
      MEMORY[0x22AABAD40](v76, -1, -1);

      v77 = v73;
    }

    else
    {

      v77 = *(v31 + 8);
      v77(v34, v30);
    }

    v78 = v85;
    sub_22855CDCC();
    sub_228418D44();
    v79 = v84;
    v80 = v89;
    sub_22855CD9C();
    (v88)[1](v78, v80);
    sub_22849BB70(&qword_280DE8EB8, &qword_280DE8EB0, v22 + 8);
    v81 = v87;
    v64 = sub_22855CE6C();
    (*(v86 + 8))(v79, v81);
    v77(v103, v30);
  }

  return v64;
}

uint64_t sub_228499C40(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v51 = a5;
  v9 = MEMORY[0x277D84F78];
  sub_22849BD38(0, &qword_280DE9820, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCE78]);
  v11 = v10;
  v50 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - v12;
  sub_2283FEFCC(0, &qword_280DE8EB0, v9 + 8, MEMORY[0x277CBCF38]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v47 - v17;
  v19 = type metadata accessor for NotificationContentState(0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = v20;
    sub_22855C1CC();
    *v22 = a3;
    *(v22 + 1) = a4;
    v24 = &v22[v23[6]];
    *v24 = a1;
    *(v24 + 1) = a2;
    v22[v23[7]] = 1;
    v22[v23[8]] = 0;
    v25 = qword_280DEEC90;

    v26 = a4;
    if (v25 != -1)
    {
      swift_once();
    }

    v27 = sub_22855CABC();
    __swift_project_value_buffer(v27, qword_280DEEC98);

    v28 = sub_22855CA8C();
    v29 = sub_22855D6AC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v52 = v31;
      *v30 = 136315651;
      *(v30 + 4) = sub_2283F8938(0xD000000000000028, 0x8000000228563C90, &v52);
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_2283F8938(a3, v26, &v52);
      *(v30 + 22) = 2081;
      *(v30 + 24) = sub_2283F8938(a1, a2, &v52);
      _os_log_impl(&dword_2283ED000, v28, v29, "%s Migrating %s content state: %{private}s", v30, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v31, -1, -1);
      MEMORY[0x22AABAD40](v30, -1, -1);
    }

    v32 = sub_228495534(v22);
    sub_22849C108(v22, type metadata accessor for NotificationContentState);
  }

  else
  {
    v48 = v18;
    v49 = v13;
    v33 = a4;
    v51 = v16;
    v47 = a3;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v34 = sub_22855CABC();
    __swift_project_value_buffer(v34, qword_280DEEC98);

    v35 = sub_22855CA8C();
    v36 = sub_22855D6AC();

    v37 = v11;
    v38 = v15;
    if (os_log_type_enabled(v35, v36))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v52 = v40;
      *v39 = 136315394;
      *(v39 + 4) = sub_2283F8938(0xD000000000000028, 0x8000000228563C90, &v52);
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_2283F8938(v47, v33, &v52);
      _os_log_impl(&dword_2283ED000, v35, v36, "%s No pre-existing content state for %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v40, -1, -1);
      MEMORY[0x22AABAD40](v39, -1, -1);
    }

    v41 = MEMORY[0x277D84F78];
    v42 = v50;
    v43 = v51;
    v45 = v48;
    v44 = v49;
    sub_22855CDCC();
    sub_228418D44();
    sub_22855CD9C();
    (*(v42 + 8))(v44, v37);
    sub_22849BB70(&qword_280DE8EB8, &qword_280DE8EB0, v41 + 8);
    v32 = sub_22855CE6C();
    (*(v43 + 8))(v45, v38);
  }

  return v32;
}

uint64_t sub_22849A200(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a1;
  v38 = a4;
  v9 = MEMORY[0x277D83D88];
  sub_2283FA404(0, &qword_280DED138, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v34 - v11;
  sub_2283FA404(0, &qword_280DEE380, MEMORY[0x277CC9578], v9);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v34 - v14;
  sub_22849C010(0);
  v39 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v20 = sub_22855CABC();
  __swift_project_value_buffer(v20, qword_280DEEC98);

  v21 = sub_22855CA8C();
  v22 = sub_22855D6AC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v35 = a6;
    v36 = a5;
    v24 = v23;
    v25 = swift_slowAlloc();
    v41 = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_2283F8938(0xD000000000000028, 0x8000000228563C90, &v41);
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_2283F8938(v37, a2, &v41);
    _os_log_impl(&dword_2283ED000, v21, v22, "%s Marking migration as complete for %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v25, -1, -1);
    v26 = v24;
    a6 = v35;
    MEMORY[0x22AABAD40](v26, -1, -1);
  }

  sub_22855C15C();
  v27 = sub_22855C16C();
  (*(*(v27 - 8) + 56))(v15, 0, 1, v27);
  v28 = sub_22855D73C();
  sub_22849C400(v15, &qword_280DEE380, MEMORY[0x277CC9578]);
  v40 = a6;
  v41 = v28;
  v29 = sub_22855D7EC();
  (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
  v30 = MEMORY[0x277CBCEA8];
  sub_2283FEFCC(0, &qword_280DE9780, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCEA8]);
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  sub_2283FEEB0(&qword_280DE9788, &qword_280DE9780, v30, MEMORY[0x277CBCEB0]);
  sub_2283F22E0();
  sub_22855CF4C();
  sub_22849C400(v12, &qword_280DED138, MEMORY[0x277D85248]);

  sub_2283FA100(&qword_280DE9980, 255, sub_22849C010, MEMORY[0x277CBCD60]);
  v31 = v39;
  v32 = sub_22855CE6C();
  (*(v17 + 8))(v19, v31);
  return v32;
}

uint64_t sub_22849A708(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  *(v4 + 32) = 0;
  sub_22855BD9C();
  swift_allocObject();
  *(v4 + 56) = sub_22855BD8C();
  sub_22855BDCC();
  swift_allocObject();
  *(v4 + 64) = sub_22855BDBC();
  *(v4 + 72) = 0;
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  v8 = objc_allocWithZone(MEMORY[0x277CCD310]);
  v9 = a1;
  v10 = a4;
  v11 = sub_22855D17C();
  v12 = [v8 initWithProtectionCategory:0 domain:v11 healthStore:v9];

  *(v5 + 16) = v12;
  v13 = objc_allocWithZone(MEMORY[0x277CCD310]);
  v14 = sub_22855D17C();

  v15 = [v13 initWithProtectionCategory:1 domain:v14 healthStore:v9];

  *(v5 + 24) = v15;
  return v5;
}

void sub_22849A848(uint64_t a1)
{
  if (!qword_280DE9D28)
  {
    sub_22849A8EC(255);
    sub_2283FA100(&qword_280DE98C0, 255, sub_22849A8EC, MEMORY[0x277CBCD90]);
    v1 = sub_22855CAFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9D28);
    }
  }
}

void sub_22849A8EC(uint64_t a1)
{
  if (!qword_280DE98B8)
  {
    sub_22849A95C(255);
    sub_228418D44();
    v1 = sub_22855CCCC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE98B8);
    }
  }
}

void sub_22849A95C(uint64_t a1)
{
  if (!qword_280DE9590)
  {
    sub_2283EF310(255, &qword_280DE9260, 0x277CCD308);
    v1 = sub_22855D47C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9590);
    }
  }
}

void sub_22849A9C4(uint64_t a1)
{
  if (!qword_280DE9968)
  {
    sub_22849A848(255);
    sub_2283EF310(255, &qword_280DED120, 0x277D85C78);
    sub_2283FA100(&unk_280DE9D30, 255, sub_22849A848, MEMORY[0x277CBCAF0]);
    sub_2283F22E0();
    v1 = sub_22855CC3C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9968);
    }
  }
}

void sub_22849AA94(uint64_t a1)
{
  if (!qword_280DE9AA0)
  {
    sub_22849A9C4(255);
    sub_2283FA404(255, qword_280DEB558, type metadata accessor for NotificationContentState, MEMORY[0x277D83D88]);
    sub_2283FA100(&qword_280DE9970, 255, sub_22849A9C4, MEMORY[0x277CBCD60]);
    v1 = sub_22855CBCC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9AA0);
    }
  }
}

void sub_22849AC28(uint64_t a1)
{
  if (!qword_27D83FA48)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_2283FEFCC(255, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
    sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v1, MEMORY[0x277CBCD90]);
    v2 = sub_22855CAFC();
    if (!v3)
    {
      atomic_store(v2, &qword_27D83FA48);
    }
  }
}

void sub_22849ACF4(uint64_t a1)
{
  if (!qword_27D83FA50)
  {
    sub_22849AC28(255);
    sub_2283EF310(255, &qword_280DED120, 0x277D85C78);
    sub_2283FA100(&qword_27D83FA58, 255, sub_22849AC28, MEMORY[0x277CBCAF0]);
    sub_2283F22E0();
    v1 = sub_22855CC3C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83FA50);
    }
  }
}

void sub_22849ADC4(uint64_t a1)
{
  if (!qword_27D83FA60)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_2283FEFCC(255, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
    sub_22849ACF4(255);
    sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v1, MEMORY[0x277CBCD90]);
    sub_2283FA100(&qword_27D83FA68, 255, sub_22849ACF4, MEMORY[0x277CBCD60]);
    v2 = sub_22855CBEC();
    if (!v3)
    {
      atomic_store(v2, &qword_27D83FA60);
    }
  }
}

uint64_t sub_22849AEE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_22849AF74(uint64_t a1)
{
  if (!qword_27D83FA78)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_2283FEFCC(255, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
    sub_2283EF310(255, &qword_280DED120, 0x277D85C78);
    sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v1, MEMORY[0x277CBCD90]);
    sub_2283F22E0();
    v2 = sub_22855CC3C();
    if (!v3)
    {
      atomic_store(v2, &qword_27D83FA78);
    }
  }
}

void sub_22849B06C(uint64_t a1)
{
  if (!qword_27D83FA80)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_2283FEFCC(255, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
    sub_22849AF74(255);
    sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v1, MEMORY[0x277CBCD90]);
    sub_2283FA100(&qword_27D83FA88, 255, sub_22849AF74, MEMORY[0x277CBCD60]);
    v2 = sub_22855CBEC();
    if (!v3)
    {
      atomic_store(v2, &qword_27D83FA80);
    }
  }
}

uint64_t objectdestroy_5Tm_1(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(*v2 + 64);

  v6 = v2[7];
  v7 = sub_22855C1DC();
  (*(*(v7 - 8) + 8))(v1 + v4 + v6, v7);

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t sub_22849B298(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22849B300@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ProtectedNotificationContentState(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));

  return sub_2284961F0(v4, a1);
}

uint64_t sub_22849B3B0@<X0>(void (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t *a3@<X8>)
{
  a1(0);
  v5 = a2();
  v7 = sub_2284972EC(v5, v6);

  *a3 = v7;
  return result;
}

void sub_22849B450(uint64_t a1)
{
  if (!qword_280DE9988)
  {
    sub_22849B520(255);
    sub_2283EF310(255, &qword_280DED120, 0x277D85C78);
    sub_2283FA100(&qword_280DE97E0, 255, sub_22849B520, MEMORY[0x277CBCEB0]);
    sub_2283F22E0();
    v1 = sub_22855CC3C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9988);
    }
  }
}

void sub_22849B520(uint64_t a1)
{
  if (!qword_280DE97D8)
  {
    sub_2283FA404(255, &qword_280DEE380, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    sub_228418D44();
    v1 = sub_22855CDFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE97D8);
    }
  }
}

void sub_22849B5C0(uint64_t a1)
{
  if (!qword_280DE9A10)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_2283FEFCC(255, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
    sub_22849B450(255);
    sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v1, MEMORY[0x277CBCD90]);
    sub_2283FA100(&qword_280DE9990, 255, sub_22849B450, MEMORY[0x277CBCD60]);
    v2 = sub_22855CBEC();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE9A10);
    }
  }
}

uint64_t sub_22849B6DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_228498F1C(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72));
  *a2 = result;
  return result;
}

uint64_t sub_22849B720(uint64_t a1, uint64_t a2)
{
  result = sub_2283FA100(&unk_280DEC5A8, a2, type metadata accessor for HealthAppNotificationContentStateManager, &protocol conformance descriptor for HealthAppNotificationContentStateManager);
  *(a1 + 8) = result;
  return result;
}

void sub_22849B9B8(uint64_t a1, uint64_t a2)
{
  if (!qword_27D83FAA8)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27D83FAA8);
    }
  }
}

void sub_22849BA18(uint64_t a1, uint64_t a2)
{
  if (!qword_27D83FAB0)
  {
    sub_22849B9B8(255, a2);
    sub_2283EF310(255, &qword_280DED120, 0x277D85C78);
    swift_getOpaqueTypeConformance2();
    sub_2283F22E0();
    v2 = sub_22855CC3C();
    if (!v3)
    {
      atomic_store(v2, &qword_27D83FAB0);
    }
  }
}

void sub_22849BACC(uint64_t a1, uint64_t a2)
{
  if (!qword_27D83FAB8)
  {
    sub_22849BA18(255, a2);
    sub_2283FA100(&qword_27D83FAC0, 255, sub_22849BA18, MEMORY[0x277CBCD60]);
    v2 = sub_22855CB6C();
    if (!v3)
    {
      atomic_store(v2, &qword_27D83FAB8);
    }
  }
}

uint64_t sub_22849BB70(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2283FEFCC(255, a2, a3, MEMORY[0x277CBCF38]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22849BBD4(uint64_t a1)
{
  if (!qword_280DE9998)
  {
    sub_22849BCA4(255);
    sub_2283EF310(255, &qword_280DED120, 0x277D85C78);
    sub_2283FA100(&qword_280DE9910, 255, sub_22849BCA4, MEMORY[0x277CBCD90]);
    sub_2283F22E0();
    v1 = sub_22855CC3C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9998);
    }
  }
}

void sub_22849BCA4(uint64_t a1)
{
  if (!qword_280DE9908)
  {
    sub_22849BD38(255, &qword_280DEE7D0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_228418D44();
    v1 = sub_22855CCCC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9908);
    }
  }
}

void sub_22849BD38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_22849BD88(uint64_t a1)
{
  if (!qword_280DE9A00)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_2283FEFCC(255, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
    sub_22849BBD4(255);
    sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v1, MEMORY[0x277CBCD90]);
    sub_2283FA100(&qword_280DE99A0, 255, sub_22849BBD4, MEMORY[0x277CBCD60]);
    v2 = sub_22855CBEC();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE9A00);
    }
  }
}

void sub_22849BEA4(uint64_t a1)
{
  if (!qword_280DE99F0)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_2283FEFCC(255, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
    sub_22849BD88(255);
    sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v1, MEMORY[0x277CBCD90]);
    sub_2283FA100(&qword_280DE9A08, 255, sub_22849BD88, MEMORY[0x277CBCCE0]);
    v2 = sub_22855CBEC();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE99F0);
    }
  }
}

uint64_t sub_22849BFC0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_228499C40(*a1, a1[1], *(v2 + 16), *(v2 + 24), *(v2 + 32));
  *a2 = result;
  return result;
}

void sub_22849C010(uint64_t a1)
{
  if (!qword_280DE9978)
  {
    v1 = MEMORY[0x277CBCEA8];
    sub_2283FEFCC(255, &qword_280DE9780, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCEA8]);
    sub_2283EF310(255, &qword_280DED120, 0x277D85C78);
    sub_2283FEEB0(&qword_280DE9788, &qword_280DE9780, v1, MEMORY[0x277CBCEB0]);
    sub_2283F22E0();
    v2 = sub_22855CC3C();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE9978);
    }
  }
}

uint64_t sub_22849C108(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22849C168(uint64_t a1)
{
  if (!qword_27D83FAE0)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_2283FEFCC(255, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
    v2 = MEMORY[0x277CC9318];
    sub_2283FEFCC(255, &qword_27D83FAD8, MEMORY[0x277CC9318], MEMORY[0x277CBCF38]);
    sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v1, MEMORY[0x277CBCD90]);
    sub_22849BB70(&qword_27D83FAE8, &qword_27D83FAD8, v2);
    v3 = sub_22855CBEC();
    if (!v4)
    {
      atomic_store(v3, &qword_27D83FAE0);
    }
  }
}

uint64_t sub_22849C400(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2283FA404(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t DatabaseAccessibilityDispatchTarget.__allocating_init(target:)(void *a1)
{
  v2 = swift_allocObject();
  DatabaseAccessibilityDispatchTarget.init(target:)(a1);
  return v2;
}

void *DatabaseAccessibilityDispatchTarget.init(target:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_22855D81C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22855CFEC();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_22855D7BC();
  MEMORY[0x28223BE20](v10 - 8);
  sub_2283F9B10(a1, (v2 + 2));
  v11 = MEMORY[0x277D84F90];
  v12 = sub_22847D0CC(MEMORY[0x277D84F90]);
  v13 = sub_22847D0F8(v11);
  sub_22849D208(0);
  v14 = swift_allocObject();
  *(v14 + 32) = 0;
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  v2[8] = v14;
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  v17[1] = v4;
  swift_getMetatypeMetadata();
  sub_22855D1BC();
  sub_22855D7AC();
  sub_22855CFDC();
  (*(v6 + 104))(v8, *MEMORY[0x277D85260], v5);
  v15 = sub_22855D84C();
  __swift_destroy_boxed_opaque_existential_0(a1);
  v2[7] = v15;
  return v2;
}

uint64_t sub_22849C714(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22855CFBC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22855CFEC();
  v10 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 64);
  v27 = a1;
  v28 = a2;
  os_unfair_lock_lock(v13 + 8);
  sub_22849D5F0(&v13[4], aBlock);
  os_unfair_lock_unlock(v13 + 8);
  v21 = aBlock[0];
  v14 = *(aBlock[0] + 16);
  if (v14)
  {
    v24 = *(v3 + 56);
    v15 = (v21 + 32);
    v22 = (v7 + 8);
    v23 = v31;
    do
    {
      v16 = swift_allocObject();
      v17 = *v15++;
      v26 = v17;
      *(v16 + 16) = v17;
      v31[2] = sub_22849D60C;
      v31[3] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v31[0] = sub_228401F54;
      v31[1] = &block_descriptor_11;
      v18 = _Block_copy(aBlock);

      sub_22855CFDC();
      v29 = MEMORY[0x277D84F90];
      sub_22849D614(&qword_280DED2D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_22849D65C(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_2284392FC();
      sub_22855DA9C();
      MEMORY[0x22AAB98B0](0, v12, v9, v18);
      _Block_release(v18);

      (*v22)(v9, v6);
      (*(v10 + 8))(v12, v25);

      --v14;
    }

    while (v14);
  }
}

uint64_t sub_22849CA84@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v5 = result;
  if (a2)
  {
    v7 = *result;
    if ((*result & 0xC000000000000001) != 0)
    {
      if (v7 < 0)
      {
        v8 = *result;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFFFFFFFF8;
      }

      v9 = a2;
      result = sub_22855DB4C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
        return result;
      }

      *v5 = sub_22849CFCC(v8, result + 1);
    }

    else
    {
      v9 = a2;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v5;
    result = sub_22845B460(v9, a3, isUniquelyReferenced_nonNull_native);
    *v5 = v14;
  }

  v11 = v5[1];
  if (*(v11 + 16) && (result = sub_2283FB154(a3), (v12 & 1) != 0))
  {
    v13 = *(*(v11 + 56) + 8 * result);

    sub_22845AB24(a3);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  *a4 = v13;
  return result;
}

uint64_t sub_22849CB94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = sub_22855CABC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v27 = a1;
    swift_getObjectType();
    v14 = a2;
    sub_22855C59C();
    v15 = a2;
    v16 = a5;
    v17 = sub_22855CA8C();
    v18 = sub_22855D68C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = a6;
      v21 = v20;
      *v19 = 138412546;
      *(v19 + 4) = v16;
      *v20 = v16;
      *(v19 + 12) = 2112;
      v22 = a2;
      v23 = v16;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v24;
      v21[1] = v24;
      _os_log_impl(&dword_2283ED000, v17, v18, "Failed to retrieve database accessibility assertion for %@: %@", v19, 0x16u);
      sub_22841DCF4(0);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v21, -1, -1);
      MEMORY[0x22AABAD40](v19, -1, -1);
    }

    else
    {
    }

    (*(v11 + 8))(v13, v10);
    a1 = v27;
  }

  return sub_22849C714(a1, a5);
}

uint64_t DatabaseAccessibilityDispatchTarget.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return v0;
}

uint64_t DatabaseAccessibilityDispatchTarget.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_22849CE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = *v5;
  v10 = sub_22855D17C();
  v13[4] = a3;
  v13[5] = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_22842F0A4;
  v13[3] = &block_descriptor_10;
  v11 = _Block_copy(v13);

  [v9 requestDatabaseAccessibilityAssertion:v10 timeout:v11 completion:a5];
  _Block_release(v11);
}

id HealthPlatformContextProvider.Context.databaseAccessibilityProvider.getter@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  a1[3] = sub_2283EF310(0, &qword_280DE94D8, 0x277CCD4D8);
  a1[4] = &protocol witness table for HKHealthStore;
  *a1 = v4;

  return v4;
}

id HealthPlatformContextProvider.Context.profileIdentifier.getter()
{
  v1 = [*(v0 + 16) profileIdentifier];

  return v1;
}

uint64_t sub_22849CFCC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_22844C088(0);
    v2 = sub_22855DF5C();
    v19 = v2;
    sub_22855DDFC();
    v3 = sub_22855DEAC();
    if (v3)
    {
      v4 = v3;
      sub_2283EF310(0, &qword_280DEE7B0, 0x277CCD7C8);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_2283EF310(0, &qword_280DE9258, 0x277CCD2B8);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_228446000(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_22855D99C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_22855DEAC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

void sub_22849D208(uint64_t a1)
{
  if (!qword_280DE90F8)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE90F8);
    }
  }
}

uint64_t sub_22849D268(uint64_t a1)
{
  sub_22849D65C(0, &qword_27D83FB30, sub_22849D2F4, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22849D2F4()
{
  result = qword_27D83FB38;
  if (!qword_27D83FB38)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D83FB38);
  }

  return result;
}

uint64_t sub_22849D358()
{
  sub_22855C8CC();
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  return sub_22855C60C();
}

unint64_t sub_22849D440(void *a1)
{
  sub_22855DC6C();

  v2 = [a1 description];
  v3 = sub_22855D1AC();
  v5 = v4;

  MEMORY[0x22AAB92A0](v3, v5);

  return 0xD000000000000024;
}

uint64_t sub_22849D4FC(uint64_t a1)
{
  result = sub_22849D614(&qword_280DEC390, type metadata accessor for HealthPlatformContextProvider.Context, &protocol conformance descriptor for HealthPlatformContextProvider.Context);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22849D614(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22849D65C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t static NSPredicate.feedItemStoragePredicate(for:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_22855C73C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_22840A70C(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_228560580;
  swift_getObjectType();
  sub_22855CA1C();
  v7 = sub_22855C72C();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_22840A7C8();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  return sub_22855D62C();
}

uint64_t FeedItemStorageErrors.hashValue.getter()
{
  sub_22855E22C();
  MEMORY[0x22AABA2B0](0);
  return sub_22855E27C();
}

uint64_t FeedItemStorage.updateOrCreate(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22849D8D8, 0, 0);
}

uint64_t sub_22849D8D8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_22849D9D8;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000012, 0x8000000228570A70, sub_2284A5E3C, v3, v5);
}

uint64_t sub_22849D9D8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_22849DB0C;
  }

  else
  {

    v2 = sub_22849DAF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22849DB0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22849DB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2284A6958(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  (*(v11 + 16))(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  (*(v11 + 32))(v14 + v13, &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  (*(a5 + 8))(a3, sub_2284A6AC8, v14, a4, a5);
}

uint64_t FeedItemStorage.replaceExisting(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22849DD00, 0, 0);
}

uint64_t sub_22849DD00()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_22849DE00;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000016, 0x8000000228570A90, sub_2284A5E48, v3, v5);
}

uint64_t sub_22849DE00()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2284A6B10;
  }

  else
  {

    v2 = sub_2284A6AEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22849DF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2284A6958(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  (*(v11 + 16))(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  (*(v11 + 32))(v14 + v13, &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  (*(a5 + 16))(a3, sub_2284A6B0C, v14, a4, a5);
}

uint64_t FeedItemStorage.delete(feedItemIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22849E0AC, 0, 0);
}

uint64_t sub_22849E0AC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_22849DE00;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD00000000000001CLL, 0x8000000228570AB0, sub_2284A5E54, v3, v5);
}

uint64_t sub_22849E1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2284A6958(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  (*(v11 + 16))(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  (*(v11 + 32))(v14 + v13, &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  (*(a5 + 24))(a3, sub_2284A6B0C, v14, a4, a5);
}

uint64_t sub_22849E318(void *a1)
{
  if (a1)
  {
    v1 = a1;
    sub_2284A6958(0);
    return sub_22855D4AC();
  }

  else
  {
    sub_2284A6958(0);
    return sub_22855D4BC();
  }
}

uint64_t FeedItemStorage.fetch(matching:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = v6;
  *(v7 + 96) = a4;
  *(v7 + 40) = a3;
  *(v7 + 48) = a5;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  return MEMORY[0x2822009F8](sub_22849E39C, 0, 0);
}

uint64_t sub_22849E39C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 96);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *(v6 + 16) = *(v0 + 48);
  *(v6 + 32) = v1;
  *(v6 + 40) = v5;
  *(v6 + 48) = v4;
  *(v6 + 56) = v3;
  *(v6 + 64) = v2;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  sub_2284A5E74(0, &qword_280DE9630, type metadata accessor for PluginFeedItem, MEMORY[0x277D83940]);
  *v7 = v0;
  v7[1] = sub_22849E4F4;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000010, 0x8000000228570AD0, sub_2284A5E60, v6, v8);
}

uint64_t sub_22849E4F4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_22849E62C;
  }

  else
  {

    v2 = sub_22849E610;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22849E62C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22849E690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v22 = a7;
  v21 = a6;
  v20[1] = a2;
  sub_2284A6828(0);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  (*(v15 + 16))(v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14);
  v17 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v18 = swift_allocObject();
  (*(v15 + 32))(v18 + v17, v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  (*(a8 + 32))(a3, a4, a5, v21, sub_2284A68D8, v18, v22, a8);
}

uint64_t sub_22849E81C(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    sub_2284A6828(0);
    return sub_22855D4AC();
  }

  else
  {
    sub_2284A6828(0);

    return sub_22855D4BC();
  }
}

uint64_t PluginFeedItemStorage.updateOrCreate(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[1];
  v22[0] = *v3;
  v22[1] = v7;
  v8 = v3[3];
  v22[2] = v3[2];
  v22[3] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = swift_allocObject();
  v11 = v3[1];
  *(v10 + 16) = *v3;
  *(v10 + 32) = v11;
  v12 = v3[3];
  *(v10 + 48) = v3[2];
  *(v10 + 64) = v12;
  *(v10 + 80) = sub_22841B56C;
  *(v10 + 88) = v9;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2284A5ED8;
  *(v13 + 24) = v10;
  v14 = *&v22[0];
  v15 = swift_allocObject();
  v16 = v3[1];
  *(v15 + 16) = *v3;
  *(v15 + 32) = v16;
  v17 = v3[3];
  *(v15 + 48) = v3[2];
  *(v15 + 64) = v17;
  *(v15 + 80) = a1;
  *(v15 + 88) = sub_2284A5EE8;
  *(v15 + 96) = v13;
  aBlock[4] = sub_2284A5F20;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_11;
  v18 = _Block_copy(aBlock);
  sub_2284A5F30(v22, v20);
  sub_2284A5F30(v22, v20);

  [v14 performBlock_];
  _Block_release(v18);
}

void sub_22849EAD4(__int128 *a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v36 = a4;
  v37 = a3;
  v43 = *MEMORY[0x277D85DE8];
  v6 = sub_22855CFBC();
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22855CFEC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[1];
  aBlock = *a1;
  v40 = v13;
  v14 = a1[3];
  v41 = a1[2];
  v42 = v14;
  v15 = sub_22849EEDC(a2);
  v30 = v8;
  v31 = v10;
  v32 = v9;
  v33 = a2;
  v34 = v16;
  v17 = *a1;
  *&aBlock = 0;
  v18 = [v17 save_];
  v19 = aBlock;
  if (v18)
  {
    v29[1] = *(a1 + 7);
    v20 = swift_allocObject();
    v21 = v34;
    *(v20 + 16) = v15;
    *(v20 + 24) = v21;
    *&v41 = sub_2284186F8;
    *(&v41 + 1) = v20;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v40 = sub_228401F54;
    *(&v40 + 1) = &block_descriptor_93;
    v22 = _Block_copy(&aBlock);
    v23 = v19;

    sub_22855CFDC();
    v38 = MEMORY[0x277D84F90];
    sub_2284A6594(&qword_280DED2D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_2284A5E74(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2284392FC();
    v24 = v30;
    sub_22855DA9C();
    MEMORY[0x22AAB98B0](0, v12, v24, v22);
    _Block_release(v22);
    (*(v35 + 8))(v24, v6);
    (*(v31 + 8))(v12, v32);

    PluginFeedItemStorage.changeDomain(from:)(v33, &aBlock);
    PluginFeedItemStorage.notifyFeedPopulationListener(of:)(&aBlock);

    v37(0);
  }

  else
  {
    v25 = aBlock;
    v26 = sub_22855BF3C();

    swift_willThrow();

    v27 = v37;
    v28 = v26;
    v27(v26);
  }
}

uint64_t (*sub_22849EEDC(uint64_t a1))()
{
  v3 = v2;
  v46 = sub_22855C16C();
  v5 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for PluginFeedItem(0);
  v7 = MEMORY[0x28223BE20](v44);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v12 = (&v38 - v11);
  v13 = v1[1];
  v49 = *v1;
  v48 = v13;
  v60 = *(v1 + 1);
  v61 = v1[4];
  v58 = *(v1 + 5);
  v59 = v1[7];
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = *(v9 + 80);
    v16 = a1 + ((v15 + 32) & ~v15);
    v43 = (v5 + 8);
    v40 = v15;
    v39 = (v15 + 16) & ~v15;
    v38 = (v10 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = *(v9 + 72);
    v50 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_2284A63A8(v16, v12, type metadata accessor for PluginFeedItem);
      v52 = v49;
      v53 = v48;
      v54 = v60;
      v55 = v61;
      v56 = v58;
      v57 = v59;
      v17 = sub_2284A23F8(v12);
      FeedItem.update(with:)(v12);
      if (v3)
      {
        break;
      }

      v18 = v45;
      sub_22855C15C();
      v19 = sub_22855C10C();
      (*v43)(v18, v46);
      [v17 setDateSubmitted_];

      v20 = [v17 pinnedContentDomain];
      if (v20)
      {
        v21 = v20;
        sub_22855D1AC();

        v22 = sub_22855BCFC();
        if (v22 != 2)
        {
          v23 = v48;
          (*(*v48 + 104))(v51, v22 & 1);
          v52 = v49;
          v53 = v23;
          v54 = v60;
          v55 = v61;
          v56 = v58;
          v57 = v59;
          sub_2284A42F0(v51, v17);
          __swift_destroy_boxed_opaque_existential_0(v51);
        }
      }

      if (![v61 evaluateWithObject_])
      {
        sub_2284A6014();
        swift_allocError();
        swift_willThrow();
        break;
      }

      v24 = (v12 + *(v44 + 112));
      v25 = *v24;
      if (*v24)
      {
        v26 = v24[1];
        v27 = v41;
        sub_2284A63A8(v12, v41, type metadata accessor for PluginFeedItem);
        v28 = v38;
        v29 = swift_allocObject();
        sub_2284A6780(v27, v29 + v39, type metadata accessor for PluginFeedItem);
        v30 = (v29 + v28);
        *v30 = v25;
        v30[1] = v26;
        v31 = swift_allocObject();
        *(v31 + 16) = sub_2284A65DC;
        *(v31 + 24) = v29;
        sub_22845DF64(v25, v26);
        sub_22845DF64(v25, v26);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = 0;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50 = sub_228426988(0, v50[2] + 1, 1, v50);
        }

        v34 = v50[2];
        v33 = v50[3];
        if (v34 >= v33 >> 1)
        {
          v50 = sub_228426988((v33 > 1), v34 + 1, 1, v50);
        }

        sub_228416CF8(v25, v26);
        sub_2284A61D4(v12, type metadata accessor for PluginFeedItem);
        v35 = v50;
        v50[2] = v34 + 1;
        v36 = &v35[2 * v34];
        v36[4] = sub_228466000;
        v36[5] = v31;
        v3 = v47;
      }

      else
      {
        sub_2284A61D4(v12, type metadata accessor for PluginFeedItem);
      }

      v16 += v42;
      if (!--v14)
      {
        goto LABEL_17;
      }
    }

    sub_2284A61D4(v12, type metadata accessor for PluginFeedItem);
  }

  else
  {
    v50 = MEMORY[0x277D84F90];
LABEL_17:
    *(swift_allocObject() + 16) = v50;
    return sub_2284A666C;
  }
}

uint64_t PluginFeedItemStorage.changeDomain(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PluginFeedItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D84F90];
  v9 = sub_228429B98(MEMORY[0x277D84F90]);
  result = sub_228429EA4(v8);
  v20 = v9;
  v21 = result;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v4 + 48);
    v13 = *(v4 + 76);
    v14 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v15 = *(v5 + 72);
    do
    {
      sub_2284A63A8(v14, v7, type metadata accessor for PluginFeedItem);
      sub_228483930(&v19, v7[v12]);
      v16 = *&v7[v13];
      v17 = v16;
      sub_228484978(&v19, v16);

      sub_2284A61D4(v7, type metadata accessor for PluginFeedItem);
      v14 += v15;
      --v11;
    }

    while (v11);
    v9 = v20;
    result = v21;
  }

  *a2 = v9;
  a2[1] = result;
  return result;
}

uint64_t PluginFeedItemStorage.notifyFeedPopulationListener(of:)(uint64_t *a1)
{
  v3 = sub_22855BE9C();
  result = MEMORY[0x28223BE20](v3);
  v8 = *a1;
  v7 = a1[1];
  v9 = *v1;
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v12 = *(v1 + 56);
  if (*(*a1 + 16) || *(v7 + 16))
  {
    v35 = *(v1 + 16);
    v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = v6;
    v38 = result;
    if (qword_280DEECB8 != -1)
    {
      swift_once();
    }

    v13 = sub_22855CABC();
    __swift_project_value_buffer(v13, qword_280DEECC0);

    v14 = v12;

    v15 = v9;

    v16 = v11;
    v17 = sub_22855CA8C();
    v18 = sub_22855D67C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v39 = v20;
      *v19 = 136446722;
      *&v40 = &type metadata for PluginFeedItemStorage;
      sub_2284A5FCC();
      v21 = sub_22855D1BC();
      v22 = v18;
      v24 = sub_2283F8938(v21, v23, &v39);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2082;

      v25 = sub_2283F8938(v35, v10, &v39);

      *(v19 + 14) = v25;
      *(v19 + 22) = 2080;
      *&v40 = v8;
      *(&v40 + 1) = v7;

      v26 = FeedItemChangeDomain.description.getter();
      v28 = v27;

      v29 = sub_2283F8938(v26, v28, &v39);

      *(v19 + 24) = v29;
      _os_log_impl(&dword_2283ED000, v17, v22, "[%{public}s][%{public}s] Posting feedItemSubmissionOccurred notification for change domain: %s, privacy: .public)", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v20, -1, -1);
      MEMORY[0x22AABAD40](v19, -1, -1);
    }

    if (qword_280DE93B0 != -1)
    {
      swift_once();
    }

    v40 = 0u;
    v41 = 0u;
    v30 = qword_280DE93B8;
    v31 = v36;
    sub_22855BE4C();
    sub_2284A5E74(0, &qword_280DE8EE0, sub_2284A5F68, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_228560580;
    *&v40 = 0xD000000000000014;
    *(&v40 + 1) = 0x8000000228570AF0;
    sub_22855DBEC();
    *(inited + 96) = &type metadata for FeedItemChangeDomain;
    *(inited + 72) = v8;
    *(inited + 80) = v7;

    sub_22847CF80(inited);
    swift_setDeallocating();
    sub_2284A61D4(inited + 32, sub_2284A5F68);
    sub_22855BE8C();
    v33 = [objc_opt_self() defaultCenter];
    v34 = sub_22855BE2C();
    [v33 postNotification_];

    return (*(v37 + 8))(v31, v38);
  }

  return result;
}

uint64_t sub_22849FB90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22855CFBC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22855CFEC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  aBlock[4] = sub_2284A67E8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_99;
  v16 = _Block_copy(aBlock);

  v17 = a1;
  sub_22855CFDC();
  v19[1] = MEMORY[0x277D84F90];
  sub_2284A6594(&qword_280DED2D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_2284A5E74(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_2284392FC();
  sub_22855DA9C();
  MEMORY[0x22AAB98B0](0, v14, v10, v16);
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

uint64_t sub_22849FE6C(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22855CFBC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22855CFEC();
  v13 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2 &= 1u;
  v23 = a2;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  *(v16 + 32) = a1;
  *(v16 + 40) = v23;
  aBlock[4] = sub_2284A6540;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_78;
  v17 = _Block_copy(aBlock);

  sub_2284A6588(a1, a2);
  sub_22855CFDC();
  v21 = MEMORY[0x277D84F90];
  sub_2284A6594(&qword_280DED2D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_2284A5E74(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_2284392FC();
  sub_22855DA9C();
  MEMORY[0x22AAB98B0](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v20);
}

void PluginFeedItemStorage.updateOrCreate(_:)(uint64_t *a1)
{
  v4 = sub_22855C16C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v8 = v1[1];
  v28 = *(v1 + 1);
  v10 = v1[4];
  v26 = *(v1 + 5);
  v27 = v1[7];
  v20 = v9;
  v21 = v8;
  v22 = *(v1 + 1);
  v23 = v10;
  v24 = *(v1 + 5);
  v25 = v1[7];
  v11 = sub_2284A23F8(a1);
  v12 = a1;
  v13 = v11;
  FeedItem.update(with:)(v12);
  if (!v2)
  {
    sub_22855C15C();
    v14 = sub_22855C10C();
    (*(v5 + 8))(v7, v4);
    [v13 setDateSubmitted_];

    v15 = [v13 pinnedContentDomain];
    if (v15)
    {
      v16 = v15;
      sub_22855D1AC();

      v17 = sub_22855BCFC();
      if (v17 != 2)
      {
        (*(*v8 + 104))(v19, v17 & 1);
        v20 = v9;
        v21 = v8;
        v22 = v28;
        v23 = v10;
        v24 = v26;
        v25 = v27;
        sub_2284A42F0(v19, v13);
        __swift_destroy_boxed_opaque_existential_0(v19);
      }
    }

    if (([v10 evaluateWithObject_] & 1) == 0)
    {
      sub_2284A6014();
      swift_allocError();
      swift_willThrow();
    }
  }
}

uint64_t sub_2284A03E4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for PluginFeedItem(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_280DEEBE8 != -1)
  {
    swift_once();
  }

  v7 = sub_22855CABC();
  __swift_project_value_buffer(v7, qword_280DEEBF0);
  sub_2284A63A8(a1, v6, type metadata accessor for PluginFeedItem);
  v8 = sub_22855CA8C();
  v9 = sub_22855D6AC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    v12 = *v6;
    v13 = v6[1];

    sub_2284A61D4(v6, type metadata accessor for PluginFeedItem);
    v14 = sub_2283F8938(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2283ED000, v8, v9, "Running afterCommit block for %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AABAD40](v11, -1, -1);
    MEMORY[0x22AABAD40](v10, -1, -1);
  }

  else
  {

    sub_2284A61D4(v6, type metadata accessor for PluginFeedItem);
  }

  return a2(a1);
}

uint64_t sub_2284A05FC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 40;
    do
    {
      v3 = *(v2 - 8);

      v3(v4);

      v2 += 16;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t PluginFeedItemStorage.replaceExisting(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[1];
  v22[0] = *v3;
  v22[1] = v7;
  v8 = v3[3];
  v22[2] = v3[2];
  v22[3] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = swift_allocObject();
  v11 = v3[1];
  *(v10 + 16) = *v3;
  *(v10 + 32) = v11;
  v12 = v3[3];
  *(v10 + 48) = v3[2];
  *(v10 + 64) = v12;
  *(v10 + 80) = sub_22841C0F4;
  *(v10 + 88) = v9;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2284A6B08;
  *(v13 + 24) = v10;
  v14 = *&v22[0];
  v15 = swift_allocObject();
  v16 = v3[1];
  *(v15 + 24) = *v3;
  *(v15 + 40) = v16;
  v17 = v3[3];
  *(v15 + 56) = v3[2];
  *(v15 + 16) = a1;
  *(v15 + 72) = v17;
  *(v15 + 88) = sub_2284A6ACC;
  *(v15 + 96) = v13;
  aBlock[4] = sub_2284A6068;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_35;
  v18 = _Block_copy(aBlock);
  sub_2284A5F30(v22, v20);
  sub_2284A5F30(v22, v20);

  [v14 performBlock_];
  _Block_release(v18);
}

void sub_2284A0834(uint64_t a1, _OWORD *a2, void (*a3)(void), uint64_t a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = type metadata accessor for PluginFeedItem(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  v36 = a1;
  if (v12)
  {
    v33 = a2;
    v34 = a4;
    v35 = a3;
    *&v37[0] = MEMORY[0x277D84F90];
    sub_2284272C0(0, v12, 0);
    v13 = *&v37[0];
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    do
    {
      sub_2284A63A8(v14, v11, type metadata accessor for PluginFeedItem);
      v16 = *v11;
      v17 = v11[1];

      sub_2284A61D4(v11, type metadata accessor for PluginFeedItem);
      *&v37[0] = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2284272C0((v18 > 1), v19 + 1, 1);
        v13 = *&v37[0];
      }

      *(v13 + 16) = v19 + 1;
      v20 = v13 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v14 += v15;
      --v12;
    }

    while (v12);
    a3 = v35;
    a2 = v33;
  }

  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_22840A70C(0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_228560580;
  sub_22840CC38(0, &qword_280DEE7C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  *(v21 + 56) = v22;
  *(v21 + 64) = sub_2284A64CC(&qword_280DE95C8, MEMORY[0x277CC9C50]);
  *(v21 + 32) = v13;
  v23 = sub_22855D62C();
  PluginFeedItemStorage.deleteFeedItems(matching:)(v23, v37);

  v24 = a2[1];
  v37[0] = *a2;
  v37[1] = v24;
  v25 = a2[3];
  v37[2] = a2[2];
  v37[3] = v25;
  v26 = v36;
  v27 = sub_22849EEDC(v36);
  v28 = *a2;
  *&v37[0] = 0;
  if ([v28 save_])
  {
    (v27)(*&v37[0]);
    PluginFeedItemStorage.changeDomain(from:)(v26, v37);
    PluginFeedItemStorage.notifyFeedPopulationListener(of:)(v37);

    a3(0);
  }

  else
  {
    v29 = *&v37[0];
    v30 = sub_22855BF3C();

    swift_willThrow();

    v31 = v30;
    a3(v30);
  }
}

void PluginFeedItemStorage.deleteFeedItems(matching:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2[1];
  v50 = *v2;
  v51 = v5;
  v6 = v2[3];
  v52 = v2[2];
  v53 = v6;
  v7 = _s14HealthPlatform8FeedItemC12fetchRequestSo07NSFetchF0CyACGyFZ_0();
  v8 = v52;
  sub_22840CC38(0, &qword_280DED000, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_228563E50;
  *(v9 + 32) = v8;
  *(v9 + 40) = a1;
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  v10 = v8;
  v11 = a1;
  v12 = sub_22855D39C();

  v13 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v7 setPredicate_];
  v14 = MEMORY[0x277D84F90];
  *&v49 = sub_228429B98(MEMORY[0x277D84F90]);
  *(&v49 + 1) = sub_228429EA4(v14);
  type metadata accessor for FeedItem();
  v15 = sub_22855D97C();
  sub_2284A5F30(&v50, v47);
  sub_2284A56B8(v15, &v49, &v50);
  sub_2284A6078(&v50);
  v16 = (v15 >> 62);
  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_21:

    goto LABEL_22;
  }

  if (!sub_22855DB4C())
  {
    goto LABEL_21;
  }

LABEL_3:
  if (qword_280DEEBE8 != -1)
  {
    swift_once();
  }

  v17 = sub_22855CABC();
  __swift_project_value_buffer(v17, qword_280DEEBF0);
  sub_2284A5F30(&v50, v47);

  v18 = sub_22855CA8C();
  v19 = sub_22855D6AC();
  sub_2284A6078(&v50);

  if (!os_log_type_enabled(v18, v19))
  {

LABEL_22:
    goto LABEL_23;
  }

  v44 = v19;
  v45 = v7;
  v46 = a2;
  v20 = swift_slowAlloc();
  v42 = swift_slowAlloc();
  v47[0] = v42;
  *v20 = 136446722;
  v48 = &type metadata for PluginFeedItemStorage;
  sub_2284A5FCC();
  v21 = sub_22855D1BC();
  v23 = sub_2283F8938(v21, v22, v47);

  *(v20 + 4) = v23;
  *(v20 + 12) = 2082;
  v24 = v51;

  v25 = sub_2283F8938(v24, *(&v24 + 1), v47);

  *(v20 + 14) = v25;
  buf = v20;
  *(v20 + 22) = 2080;
  if (!v16)
  {
    v26 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_8;
    }

LABEL_19:

    v48 = v14;
    sub_22840CC38(0, &qword_280DEE7C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2284A64CC(&qword_280DEE7C0, MEMORY[0x277D83958]);
    v37 = sub_22855D15C();
    v39 = v38;

    v40 = sub_2283F8938(v37, v39, v47);

    *(buf + 3) = v40;
    _os_log_impl(&dword_2283ED000, v18, v44, "[%{public}s][%{public}s] Successfully deleted all feedItems: %s", buf, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v42, -1, -1);
    MEMORY[0x22AABAD40](buf, -1, -1);

    a2 = v46;
LABEL_23:
    *a2 = v49;
    return;
  }

  v26 = sub_22855DB4C();
  if (!v26)
  {
    goto LABEL_19;
  }

LABEL_8:
  v48 = v14;
  sub_2284272C0(0, v26 & ~(v26 >> 63), 0);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v27 = 0;
    v14 = v48;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x22AAB9D20](v27, v15);
      }

      else
      {
        v28 = *(v15 + 8 * v27 + 32);
      }

      v29 = v28;
      v30 = [v28 uniqueIdentifier];
      v31 = sub_22855D1AC();
      v33 = v32;

      v48 = v14;
      v35 = *(v14 + 16);
      v34 = *(v14 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_2284272C0((v34 > 1), v35 + 1, 1);
        v14 = v48;
      }

      ++v27;
      *(v14 + 16) = v35 + 1;
      v36 = v14 + 16 * v35;
      *(v36 + 32) = v31;
      *(v36 + 40) = v33;
    }

    while (v26 != v27);
    goto LABEL_19;
  }

  __break(1u);

  v47[0] = 0;
  v47[1] = 0xE000000000000000;
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](91, 0xE100000000000000);
  v48 = &type metadata for PluginFeedItemStorage;
  sub_2284A5FCC();
  v41 = sub_22855D1BC();
  MEMORY[0x22AAB92A0](v41);

  MEMORY[0x22AAB92A0](23389, 0xE200000000000000);
  MEMORY[0x22AAB92A0](v51, *(&v51 + 1));
  MEMORY[0x22AAB92A0](0xD00000000000002FLL, 0x8000000228570B40);
  sub_22855DEDC();
  __break(1u);
}

uint64_t PluginFeedItemStorage.delete(feedItemIdentifiers:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[1];
  v22[0] = *v3;
  v22[1] = v7;
  v8 = v3[3];
  v22[2] = v3[2];
  v22[3] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = swift_allocObject();
  v11 = v3[1];
  *(v10 + 16) = *v3;
  *(v10 + 32) = v11;
  v12 = v3[3];
  *(v10 + 48) = v3[2];
  *(v10 + 64) = v12;
  *(v10 + 80) = sub_22841C0F4;
  *(v10 + 88) = v9;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2284A6B08;
  *(v13 + 24) = v10;
  v14 = *&v22[0];
  v15 = swift_allocObject();
  v16 = v3[1];
  *(v15 + 24) = *v3;
  *(v15 + 40) = v16;
  v17 = v3[3];
  *(v15 + 56) = v3[2];
  *(v15 + 16) = a1;
  *(v15 + 72) = v17;
  *(v15 + 88) = sub_2284A6ACC;
  *(v15 + 96) = v13;
  aBlock[4] = sub_2284A6118;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_53_0;
  v18 = _Block_copy(aBlock);
  sub_2284A5F30(v22, v20);
  sub_2284A5F30(v22, v20);

  [v14 performBlock_];
  _Block_release(v18);
}

void sub_2284A1408(uint64_t a1, void **a2, void (*a3)(void *))
{
  v18 = *MEMORY[0x277D85DE8];
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_22840A70C(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_228560580;
  sub_22840CC38(0, &qword_280DEE7C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  *(v6 + 56) = v7;
  *(v6 + 64) = sub_2284A64CC(&qword_280DE95C8, MEMORY[0x277CC9C50]);
  *(v6 + 32) = a1;

  v8 = sub_22855D62C();
  PluginFeedItemStorage.deleteFeedItems(matching:)(v8, &v17);
  v9 = v17;
  v10 = *a2;
  *&v17 = 0;
  v11 = [v10 save_];
  v12 = v17;
  if (v11)
  {
    v17 = v9;
    v13 = v12;
    PluginFeedItemStorage.notifyFeedPopulationListener(of:)(&v17);

    a3(0);
  }

  else
  {
    v14 = v17;

    v15 = sub_22855BF3C();

    swift_willThrow();
    v16 = v15;
    a3(v15);
  }
}

uint64_t PluginFeedItemStorage.fetch(matching:completion:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a4;
  v13 = v6[1];
  v29[0] = *v6;
  v29[1] = v13;
  v14 = v6[3];
  v29[2] = v6[2];
  v29[3] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  v16 = swift_allocObject();
  v17 = v6[1];
  *(v16 + 16) = *v6;
  *(v16 + 32) = v17;
  v18 = v6[3];
  *(v16 + 48) = v6[2];
  *(v16 + 64) = v18;
  *(v16 + 80) = sub_22841C0AC;
  *(v16 + 88) = v15;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2284A6190;
  *(v19 + 24) = v16;
  v20 = *&v29[0];
  v21 = swift_allocObject();
  v22 = v6[1];
  *(v21 + 16) = *v6;
  *(v21 + 32) = v22;
  v23 = v6[3];
  *(v21 + 48) = v6[2];
  *(v21 + 64) = v23;
  *(v21 + 80) = a1;
  *(v21 + 88) = a2;
  *(v21 + 96) = a3;
  *(v21 + 104) = v9;
  *(v21 + 112) = sub_228476D24;
  *(v21 + 120) = v19;
  aBlock[4] = sub_2284A61A8;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_68;
  v24 = _Block_copy(aBlock);
  sub_2284A5F30(v29, v27);
  sub_2284A5F30(v29, v27);

  sub_2284A61C0(a1, a2, a3, v9, v25);

  [v20 performBlock_];
  _Block_release(v24);
}

void *sub_2284A1818(uint64_t a1, uint64_t *a2, void *a3, void *a4, uint64_t a5, void (*a6)(uint64_t, void), uint64_t a7)
{
  v13 = type metadata accessor for PluginFeedItem(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s14HealthPlatform8FeedItemC12fetchRequestSo07NSFetchF0CyACGyFZ_0();
  v18 = sub_2284A1AF4(a2, a3, a4, a5);
  [v17 setPredicate_];

  type metadata accessor for FeedItem();
  v19 = sub_22855D97C();
  v20 = v19;
  if (!(v19 >> 62))
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_3;
    }

LABEL_13:

    a6(MEMORY[0x277D84F90], 0);
LABEL_14:
  }

  v21 = sub_22855DB4C();
  if (!v21)
  {
    goto LABEL_13;
  }

LABEL_3:
  v29 = v17;
  v30 = a7;
  v31 = a6;
  v32 = MEMORY[0x277D84F90];
  result = sub_228427640(0, v21 & ~(v21 >> 63), 0);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    v24 = v32;
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x22AAB9D20](v23, v20);
      }

      else
      {
        v25 = *(v20 + 8 * v23 + 32);
      }

      PluginFeedItem.init(feedItem:)(v25, v16);
      v32 = v24;
      v27 = *(v24 + 16);
      v26 = *(v24 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_228427640((v26 > 1), v27 + 1, 1);
        v24 = v32;
      }

      ++v23;
      *(v24 + 16) = v27 + 1;
      sub_2284A6780(v16, v24 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v27, type metadata accessor for PluginFeedItem);
    }

    while (v21 != v23);

    v17 = v29;
    v31(v24, 0);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_2284A1AF4(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(v4 + 32);
  if (a4 != 0xFF)
  {
    v7 = a4;
    v39 = *(v4 + 32);
    sub_22840CC38(0, &qword_280DED000, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_228560690;
    *(v10 + 32) = v39;
    v41 = v10;
    if (v7)
    {
      if (v7 == 1)
      {
        if (a3 == 1)
        {
          v11 = v39;
          sub_2284A61C0(a1, a2, 1, 1, v12);
        }

        else
        {
          sub_22840CC38(0, &qword_27D83F430, &type metadata for SourceProfile, MEMORY[0x277D84560]);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_228560580;
          *(inited + 32) = a3;
          sub_2284506A4(a3);
          v18 = v39;
          sub_2284A61C0(a1, a2, a3, 1, v19);

          sub_2284506A4(a3);
          _s14HealthPlatform8FeedItemC9predicate11matchingAnySo11NSPredicateCSayAA13SourceProfileOG_tFZ_0(inited);
          swift_setDeallocating();
          v20 = sub_2284A6478(inited + 32);
          MEMORY[0x22AAB9400](v20);
          if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_22855D3EC();
          }

          sub_22855D43C();
          sub_228451F7C(a3);
        }

        sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
        sub_22840A70C(0);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_228560570;
        v22 = MEMORY[0x277D837D0];
        *(v21 + 56) = MEMORY[0x277D837D0];
        v23 = sub_22840A7C8();
        *(v21 + 32) = 0xD000000000000010;
        *(v21 + 40) = 0x800000022856DA90;
        *(v21 + 96) = v22;
        *(v21 + 104) = v23;
        *(v21 + 64) = v23;
        *(v21 + 72) = a1;
        *(v21 + 80) = a2;
        goto LABEL_26;
      }

      if (a1 == 1)
      {
        v16 = v39;
LABEL_30:
        sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
        v37 = sub_22855D39C();

        v38 = [objc_opt_self() andPredicateWithSubpredicates_];

        sub_2284A6464(a1, a2, a3, v7);
        return v38;
      }

LABEL_23:
      sub_22840CC38(0, &qword_27D83F430, &type metadata for SourceProfile, MEMORY[0x277D84560]);
      v32 = swift_initStackObject();
      *(v32 + 16) = xmmword_228560580;
      *(v32 + 32) = a1;
      sub_2284A61C0(a1, a2, a3, 2, xmmword_228560580);
      v33 = v39;
      sub_2284A61C0(a1, a2, a3, 2, v34);
      _s14HealthPlatform8FeedItemC9predicate11matchingAnySo11NSPredicateCSayAA13SourceProfileOG_tFZ_0(v32);
      swift_setDeallocating();
      v35 = sub_2284A6478(v32 + 32);
LABEL_27:
      MEMORY[0x22AAB9400](v35);
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22855D3EC();
      }

      sub_22855D43C();
      goto LABEL_30;
    }

    if (a2 == 1)
    {
      v14 = v39;
      sub_2284A61C0(a1, 1, a3, 0, v15);
    }

    else
    {
      sub_22840CC38(0, &qword_27D83F430, &type metadata for SourceProfile, MEMORY[0x277D84560]);
      v24 = swift_initStackObject();
      *(v24 + 16) = xmmword_228560580;
      *(v24 + 32) = a2;
      sub_2284506A4(a2);
      v25 = v39;
      sub_2284A61C0(a1, a2, a3, 0, v26);

      sub_2284506A4(a2);
      _s14HealthPlatform8FeedItemC9predicate11matchingAnySo11NSPredicateCSayAA13SourceProfileOG_tFZ_0(v24);
      swift_setDeallocating();
      v27 = sub_2284A6478(v24 + 32);
      MEMORY[0x22AAB9400](v27);
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22855D3EC();
      }

      sub_22855D43C();
      sub_228451F7C(a2);
    }

    sub_22840A70C(0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_228560570;
    *(v28 + 56) = MEMORY[0x277D837D0];
    *(v28 + 64) = sub_22840A7C8();
    *(v28 + 32) = 0xD000000000000010;
    *(v28 + 40) = 0x800000022856DA90;
    v29 = a1[2];
    if (v29)
    {
      v30 = sub_22840770C(a1[2], 0);
      v31 = sub_2284077A8(&v40, v30 + 4, v29, a1);
      sub_228407958(v40);
      if (v31 != v29)
      {
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {

      v30 = MEMORY[0x277D84F90];
    }

    sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
    sub_22840CC38(0, &qword_280DEE7C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    *(v28 + 96) = v36;
    *(v28 + 104) = sub_2284A64CC(&qword_280DE95C8, MEMORY[0x277CC9C50]);
    *(v28 + 72) = v30;
LABEL_26:
    v35 = sub_22855D62C();
    goto LABEL_27;
  }

  return v6;
}

void PluginFeedItemStorage.init(storageContext:pluginPackage:scope:executorIdentifier:pinnedContentManagerProvider:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v26 = a6;
  v27 = a7;
  v14 = sub_22855CFCC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  (*(v15 + 104))(v17, *MEMORY[0x277D851B0], v14);
  v18 = sub_22855D85C();
  (*(v15 + 8))(v17, v14);
  a8[7] = v18;
  *a8 = a1;
  a8[2] = a2;
  a8[3] = a3;
  sub_22840CC38(0, &qword_280DED000, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_228563E50;
  *(v19 + 32) = a4;
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_22840A70C(0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_228560580;
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = sub_22840A7C8();
  *(v20 + 32) = a2;
  *(v20 + 40) = a3;
  v21 = a1;

  v22 = a4;
  *(v19 + 40) = sub_22855D62C();
  v23 = sub_22855D39C();

  v24 = [objc_opt_self() andPredicateWithSubpredicates_];

  a8[4] = v24;
  a8[5] = a5;
  v25 = v27;
  a8[6] = v26;
  a8[1] = v25;
}

char *sub_2284A23F8(uint64_t *a1)
{
  v149 = type metadata accessor for RelevantDateInterval(0);
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v145 = &v142 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_22855BE1C();
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v147 = &v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_2284A5E74(0, &qword_280DEE798, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v146 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v160 = &v142 - v9;
  v151 = sub_22855C16C();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v11 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284A5E74(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval, v5);
  v152 = v12;
  MEMORY[0x28223BE20](v12);
  v158 = &v142 - v13;
  v159 = type metadata accessor for PluginFeedItem(0);
  v14 = MEMORY[0x28223BE20](v159);
  v16 = &v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v142 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v142 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v142 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v155 = &v142 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v154 = &v142 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v153 = &v142 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = (&v142 - v32);
  v34 = v1[1];
  v164 = *v1;
  v165 = v34;
  v35 = v1[3];
  v166 = v1[2];
  v167 = v35;
  v36 = a1;
  v37 = *a1;
  v38 = a1[1];
  v39 = sub_2284A47E4(v37, v38);
  if (v39)
  {
    v160 = v39;
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v40 = sub_22855CABC();
    __swift_project_value_buffer(v40, qword_280DEEBF0);
    sub_2284A63A8(v36, v33, type metadata accessor for PluginFeedItem);
    v41 = v153;
    sub_2284A63A8(v36, v153, type metadata accessor for PluginFeedItem);
    v42 = v154;
    sub_2284A63A8(v36, v154, type metadata accessor for PluginFeedItem);
    v43 = v36;
    v44 = v155;
    sub_2284A63A8(v43, v155, type metadata accessor for PluginFeedItem);
    sub_2284A5F30(&v164, &v162);
    v45 = sub_22855CA8C();
    v46 = sub_22855D6AC();
    sub_2284A6078(&v164);
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v156 = v48;
      *v47 = 136447490;
      v161 = v48;
      *&v162 = &type metadata for PluginFeedItemStorage;
      sub_2284A5FCC();
      v49 = sub_22855D1BC();
      LODWORD(v157) = v46;
      v51 = sub_2283F8938(v49, v50, &v161);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2082;
      v52 = v165;

      v53 = sub_2283F8938(v52, *(&v52 + 1), &v161);

      *(v47 + 14) = v53;
      *(v47 + 22) = 2080;
      v54 = *v33;
      v55 = v33[1];

      sub_2284A61D4(v33, type metadata accessor for PluginFeedItem);
      v56 = sub_2283F8938(v54, v55, &v161);

      *(v47 + 24) = v56;
      *(v47 + 32) = 2082;
      v57 = v159;
      sub_2284A6674(v41 + *(v159 + 44), v158, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
      v58 = sub_22855D1BC();
      v60 = v59;
      sub_2284A61D4(v41, type metadata accessor for PluginFeedItem);
      v61 = sub_2283F8938(v58, v60, &v161);

      *(v47 + 34) = v61;
      *(v47 + 42) = 2082;
      v62 = v42 + *(v57 + 108);
      v63 = *(v62 + 16);
      v162 = *v62;
      v163 = v63;
      sub_22840CC38(0, &qword_280DED6B0, &type metadata for PinnedContentIdentifier, MEMORY[0x277D83D88]);

      v64 = sub_22855D1BC();
      v66 = v65;
      sub_2284A61D4(v42, type metadata accessor for PluginFeedItem);
      v67 = sub_2283F8938(v64, v66, &v161);

      *(v47 + 44) = v67;
      *(v47 + 52) = 2082;
      LOBYTE(v162) = *(v44 + *(v57 + 48));
      v68 = ContentKind.rawValue.getter();
      v70 = v69;
      sub_2284A61D4(v44, type metadata accessor for PluginFeedItem);
      v71 = sub_2283F8938(v68, v70, &v161);

      *(v47 + 54) = v71;
      _os_log_impl(&dword_2283ED000, v45, v157, "[%{public}s][%{public}s] fetchOrCreate Updating feedItem with unique identifier %s, relevant date %{public}s, pinned content identifier %{public}s and contentkind %{public}s ", v47, 0x3Eu);
      v72 = v156;
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v72, -1, -1);
      MEMORY[0x22AABAD40](v47, -1, -1);
    }

    else
    {

      sub_2284A61D4(v44, type metadata accessor for PluginFeedItem);
      sub_2284A61D4(v42, type metadata accessor for PluginFeedItem);
      sub_2284A61D4(v41, type metadata accessor for PluginFeedItem);
      sub_2284A61D4(v33, type metadata accessor for PluginFeedItem);
    }

    return v160;
  }

  v153 = v38;
  v154 = v37;
  v155 = v11;
  if (qword_280DEEBE8 != -1)
  {
    swift_once();
  }

  v74 = sub_22855CABC();
  __swift_project_value_buffer(v74, qword_280DEEBF0);
  v75 = v36;
  v76 = v25;
  sub_2284A63A8(v36, v25, type metadata accessor for PluginFeedItem);
  v77 = v22;
  sub_2284A63A8(v36, v22, type metadata accessor for PluginFeedItem);
  sub_2284A63A8(v36, v19, type metadata accessor for PluginFeedItem);
  v78 = v16;
  sub_2284A63A8(v36, v16, type metadata accessor for PluginFeedItem);
  sub_2284A5F30(&v164, &v162);
  v79 = sub_22855CA8C();
  v80 = sub_22855D6AC();
  sub_2284A6078(&v164);
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v143 = v80;
    v82 = v76;
    v83 = v81;
    v84 = swift_slowAlloc();
    v144 = v84;
    *v83 = 136447490;
    v161 = v84;
    *&v162 = &type metadata for PluginFeedItemStorage;
    sub_2284A5FCC();
    v85 = sub_22855D1BC();
    v87 = sub_2283F8938(v85, v86, &v161);

    *(v83 + 4) = v87;
    *(v83 + 12) = 2082;
    v88 = v165;

    v89 = sub_2283F8938(v88, *(&v88 + 1), &v161);

    *(v83 + 14) = v89;
    *(v83 + 22) = 2080;
    v90 = *v82;
    v91 = v82[1];

    sub_2284A61D4(v82, type metadata accessor for PluginFeedItem);
    v92 = sub_2283F8938(v90, v91, &v161);

    *(v83 + 24) = v92;
    *(v83 + 32) = 2082;
    v93 = v159;
    sub_2284A6674(v77 + *(v159 + 44), v158, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
    v94 = sub_22855D1BC();
    v96 = v95;
    sub_2284A61D4(v77, type metadata accessor for PluginFeedItem);
    v97 = sub_2283F8938(v94, v96, &v161);

    *(v83 + 34) = v97;
    *(v83 + 42) = 2082;
    v98 = &v19[v93[27]];
    v99 = *(v98 + 2);
    v162 = *v98;
    v163 = v99;
    sub_22840CC38(0, &qword_280DED6B0, &type metadata for PinnedContentIdentifier, MEMORY[0x277D83D88]);

    v100 = sub_22855D1BC();
    v102 = v101;
    sub_2284A61D4(v19, type metadata accessor for PluginFeedItem);
    v103 = sub_2283F8938(v100, v102, &v161);

    *(v83 + 44) = v103;
    *(v83 + 52) = 2082;
    LOBYTE(v162) = *(v78 + v93[12]);
    v104 = ContentKind.rawValue.getter();
    v106 = v105;
    sub_2284A61D4(v78, type metadata accessor for PluginFeedItem);
    v107 = sub_2283F8938(v104, v106, &v161);

    *(v83 + 54) = v107;
    _os_log_impl(&dword_2283ED000, v79, v143, "[%{public}s][%{public}s] fetchOrCreate Creating feedItem with unique identifier %s, relevant date %{public}s, pinned content identifier %{public}s and contentkind %{public}s ", v83, 0x3Eu);
    v108 = v144;
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v108, -1, -1);
    MEMORY[0x22AABAD40](v83, -1, -1);
  }

  else
  {

    sub_2284A61D4(v16, type metadata accessor for PluginFeedItem);
    sub_2284A61D4(v19, type metadata accessor for PluginFeedItem);
    sub_2284A61D4(v77, type metadata accessor for PluginFeedItem);
    sub_2284A61D4(v76, type metadata accessor for PluginFeedItem);
    v93 = v159;
  }

  v109 = v75[2];
  v110 = v75[3];
  v111 = *(v75 + 32);
  v112 = v164;
  v113 = v75[12];
  v142 = v75[11];
  sub_22840A934(v109, v110, v111);
  sub_22855C15C();
  (*(v156 + 56))(v160, 1, 1, v157);
  v143 = *(v75 + v93[12]);
  LODWORD(v144) = *(v75 + v93[24]);
  v114 = objc_opt_self();
  v115 = sub_22855D17C();
  v116 = [v114 entityForName:v115 inManagedObjectContext:v112];

  if (v116)
  {
    v117 = objc_allocWithZone(type metadata accessor for FeedItem());
    v152 = v116;
    v118 = [v117 initWithEntity:v116 insertIntoManagedObjectContext:v112];
    v119 = sub_22855D17C();
    [v118 setUniqueIdentifier_];

    v120 = v118;
    FeedItem.userInterface.setter(v109, v110, v111);
    v121 = sub_22855D17C();
    [v118 setPluginPackage_];

    v122 = 0;
    v123 = v146;
    if (v113 >> 60 != 15)
    {
      v122 = sub_22855C08C();
    }

    [v120 setUserData_];

    v124 = sub_22855C10C();
    [v120 setDateSubmitted_];

    sub_2284A6674(v160, v123, &qword_280DEE798, MEMORY[0x277CC88A8]);
    v125 = v156;
    v126 = v157;
    v127 = (*(v156 + 48))(v123, 1, v157);
    v128 = v158;
    v129 = v150;
    v130 = v149;
    v73 = v120;
    v131 = v148;
    v132 = v147;
    if (v127 == 1)
    {
      sub_2284A66F4(v123);
    }

    else
    {
      (*(v125 + 32))(v147, v123, v126);
      v133 = v132;
      v134 = v145;
      (*(v125 + 16))(v145, v133, v126);
      *(v134 + *(v130 + 20)) = 0;
      *(v134 + *(v130 + 24)) = 0;
      sub_2284A6780(v134, v128, type metadata accessor for RelevantDateInterval);
      (*(v131 + 56))(v128, 0, 1, v130);
      FeedItem.relevantDateInterval.setter(v128);
      (*(v125 + 8))(v133, v126);
    }

    v135 = v159;
    LOBYTE(v162) = v143;
    ContentKind.rawValue.getter();
    v136 = sub_22855D17C();

    [v73 setContentKindRawValue_];

    sub_22841E13C();
    if (v144 == 13)
    {
      v137 = 0xFFFFFFFFLL;
    }

    else
    {
      v137 = v144;
    }

    [v73 setSearchSectionHintRawValue_];
    sub_22841E13C();
    v138 = sub_22855D17C();
    [v73 setFavoriteStatusRawValue_];

    v139 = sub_22855D17C();
    [v73 setHostViewStyleRawValue_];

    sub_2284A66F4(v160);
    (*(v129 + 8))(v155, v151);
    sub_2284A6674(v75 + *(v135 + 44), v128, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
    FeedItem.relevantDateInterval.setter(v128);
    if (v167)
    {
      v140 = sub_22855D17C();
    }

    else
    {
      v140 = 0;
    }

    [v73 setExecutorIdentifier_];

    return v73;
  }

  result = sub_22855DEDC();
  __break(1u);
  return result;
}

void FeedItem.update(with:)(uint64_t a1)
{
  v3 = v1;
  sub_2284A5E74(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v78 - v6;
  v8 = [v1 managedObjectContext];
  if (!v8)
  {
    v82[0] = 0;
    v82[1] = 0xE000000000000000;
    sub_22855DC6C();
    MEMORY[0x22AAB92A0](0xD00000000000003ELL, 0x8000000228570B90);
    v74 = [v1 description];
    v75 = sub_22855D1AC();
    v77 = v76;

    MEMORY[0x22AAB92A0](v75, v77);

LABEL_46:
    sub_22855DEDC();
    __break(1u);
    return;
  }

  v9 = v8;
  v80 = v7;
  v81 = type metadata accessor for PluginFeedItem(0);
  v10 = *(v81 + 76);
  v83 = a1;
  v11 = *(a1 + v10);
  if (v11)
  {
    sub_2284A5E74(0, &qword_280DED028, type metadata accessor for UserProfile, MEMORY[0x277D84560]);
    v12 = (type metadata accessor for UserProfile(0) - 8);
    v13 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_228560580;
    v15 = v14 + v13;
    v16 = v11;
    v17 = [v16 identifier];
    sub_22855C1BC();

    *(v15 + v12[7]) = v16;
    v18 = sub_22845F998(v14);
    swift_setDeallocating();
    sub_2284A61D4(v15, type metadata accessor for UserProfile);
    swift_deallocClassInstance();
  }

  else
  {
    v18 = MEMORY[0x277D84FA0];
  }

  v19 = v11;
  v20 = v9;
  v21 = sub_2284A534C(v18, v20, v11);

  if (v2)
  {

    return;
  }

  v79 = v20;

  sub_228429908(v21);

  type metadata accessor for Profile();
  sub_2284A6594(&qword_280DED540, type metadata accessor for Profile, MEMORY[0x277D85378]);
  v22 = sub_22855D50C();

  [v3 setProfiles_];

  v23 = v83;
  [v3 setUsesPlatformView_];
  if (*(v23 + 48))
  {
    v24 = sub_22855D17C();
  }

  else
  {
    v24 = 0;
  }

  v25 = v81;
  [v3 setActionHandlerClassName_];

  if (*(v23 + 64) >> 60 == 15)
  {
    v26 = 0;
  }

  else
  {
    v26 = sub_22855C08C();
  }

  [v3 setActionHandlerUserData_];

  v27 = *(v23 + 16);
  v28 = *(v23 + 24);
  v29 = *(v23 + 32);
  sub_22840A934(v27, v28, v29);
  FeedItem.userInterface.setter(v27, v28, v29);
  if (*(v23 + 96) >> 60 == 15)
  {
    v30 = 0;
  }

  else
  {
    v30 = sub_22855C08C();
  }

  v31 = v80;
  [v3 setUserData_];

  sub_2284A6674(v23 + v25[11], v31, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
  FeedItem.relevantDateInterval.setter(v31);
  v32 = v25[12];
  LOBYTE(v82[0]) = *(v23 + v32);
  ContentKind.rawValue.getter();
  v33 = sub_22855D17C();

  [v3 setContentKindRawValue_];

  sub_22841E13C();
  if (*(v23 + v25[16] + 8))
  {
    v34 = sub_22855D17C();
  }

  else
  {
    v34 = 0;
  }

  [v3 setCategoryIdentifier_];

  LOBYTE(v82[0]) = *(v23 + v32);
  v80 = *(v23 + v25[18]);
  [v3 setSearchSectionRawValue_];
  v35 = [v3 keywords];
  type metadata accessor for Keyword();
  sub_2284A6594(qword_280DED548, type metadata accessor for Keyword, MEMORY[0x277D85378]);
  v36 = sub_22855D51C();

  sub_22841F558(v36);
  v38 = v37;

  sub_228406280(v38);

  v39 = [v3 managedObjectContext];
  if (!v39)
  {
    goto LABEL_46;
  }

  v40 = v39;
  v41 = sub_22842A4E8(MEMORY[0x277D84FA0], v40);

  sub_2284293D4(v41);

  v42 = sub_22855D50C();

  [v3 setKeywords_];

  sub_22841E13C();
  v43 = [v3 managedObjectContext];
  if (!v43)
  {
    goto LABEL_46;
  }

  v44 = v43;
  v45 = sub_22842A4E8(v80, v44);
  v80 = v2;

  sub_2284293D4(v45);

  v46 = sub_22855D50C();

  [v3 setKeywords_];

  sub_22841E13C();
  v47 = v81;
  v48 = v83;
  v49 = *(v83 + *(v81 + 80) + 8) ? sub_22855D17C() : 0;
  [v3 setLocalizedCategoryName_];

  v50 = *(v48 + v47[21] + 8) ? sub_22855D17C() : 0;
  [v3 setLocalizedTitle_];

  v51 = *(v48 + v47[22] + 8) ? sub_22855D17C() : 0;
  [v3 setLocalizedDescription_];

  v52 = *(v48 + v47[13]);
  v53 = [v3 managedObjectContext];
  if (!v53)
  {
    goto LABEL_46;
  }

  v54 = v53;
  v55 = sub_228428C28(v52, v54);

  sub_2284291A8(v55);

  type metadata accessor for DataType();
  sub_2284A6594(&qword_280DED538, type metadata accessor for DataType, MEMORY[0x277D85378]);
  v56 = sub_22855D50C();

  [v3 setDataTypes_];

  v57 = *(v48 + v47[14]);
  v58 = [v3 managedObjectContext];
  if (!v58)
  {
    goto LABEL_46;
  }

  v59 = v58;
  v60 = sub_22842A0C4(v57, v59);

  sub_22842938C(v60);

  type metadata accessor for MeasureIdentifierManagedObject();
  sub_2284A6594(qword_280DED5F8, type metadata accessor for MeasureIdentifierManagedObject, MEMORY[0x277D85378]);
  v61 = sub_22855D50C();

  [v3 setMeasureIdentifiers_];

  sub_2284C2DAC(v48);
  v62 = *(v48 + v47[15]);
  v63 = [v3 byte_2785F7378];
  if (!v63)
  {
    goto LABEL_46;
  }

  v64 = v63;
  v65 = v3;
  v66 = sub_22842AFCC(v62, v64, v65);

  sub_228429B50(v66);

  type metadata accessor for SharableModelReference();
  sub_2284A6594(&qword_280DED6B8, type metadata accessor for SharableModelReference, MEMORY[0x277D85378]);
  v67 = sub_22855D50C();

  [v65 setSharableModelReferences_];

  [v65 setSortHint_];
  [v65 setIndexForSearch_];
  v68 = *(v48 + v47[26]);
  if (v68 == 2)
  {
    LOBYTE(v68) = [v65 hideInDiscover];
  }

  [v65 setHideInDiscover_];
  v69 = v48 + v47[27];
  if (*(v69 + 16))
  {
    v70 = sub_22855D17C();
  }

  else
  {
    v70 = 0;
  }

  [v65 setPinnedContentDomain_];

  if (*(v69 + 16))
  {
    v71 = sub_22855D17C();
  }

  else
  {
    v71 = 0;
  }

  [v65 setPinnedContentIdentifier_];

  v72 = sub_22855D17C();

  [v65 setHostViewStyleRawValue_];

  if (*(v48 + 80))
  {
    v73 = sub_22855D17C();
  }

  else
  {
    v73 = 0;
  }

  [v65 setBaseAutomationIdentifier_];
}

uint64_t sub_2284A42F0(void *a1, id a2)
{
  v6 = *(v2 + 16);
  v48 = *v2;
  v50 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 56);
  v9 = [a2 pinnedContentIdentifier];
  if (v9)
  {
    v10 = v9;
    v45 = v6;
    v46 = v7;
    v11 = sub_22855D1AC();
    v13 = v12;

    v14 = a1[3];
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v14);
    v16 = (*(v15 + 32))(v14, v15);
    if (v3)
    {

      if (qword_280DEEBE8 != -1)
      {
        swift_once();
      }

      v17 = sub_22855CABC();
      __swift_project_value_buffer(v17, qword_280DEEBF0);

      v18 = v8;
      v19 = a2;
      v49 = v48;

      v20 = v46;
      v21 = v3;
      v22 = sub_22855CA8C();
      v23 = sub_22855D68C();
      v47 = v19;

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v51 = v25;
        *v24 = 136446978;
        *(v24 + 4) = sub_2283F8938(0xD000000000000015, 0x8000000228563FB0, &v51);
        *(v24 + 12) = 2082;

        v26 = sub_2283F8938(v45, v50, &v51);

        *(v24 + 14) = v26;
        *(v24 + 22) = 2080;
        v27 = [v47 uniqueIdentifier];
        v28 = sub_22855D1AC();
        v30 = v29;

        v31 = sub_2283F8938(v28, v30, &v51);

        *(v24 + 24) = v31;
        *(v24 + 32) = 2080;
        v32 = v3;
        sub_2283F9B94(0, &qword_280DECFE0, MEMORY[0x277D84948]);
        v33 = sub_22855D1BC();
        v35 = sub_2283F8938(v33, v34, &v51);

        *(v24 + 34) = v35;
        _os_log_impl(&dword_2283ED000, v22, v23, "[%{public}s][%{public}s] Failing update of %s since pinned content cannot be fetched: %s", v24, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v25, -1, -1);
        MEMORY[0x22AABAD40](v24, -1, -1);
      }

      else
      {
      }

      return swift_willThrow();
    }

    v37 = v16;
    v38 = sub_22855BC9C();
    v39 = *(v38 + 16);
    if (v39)
    {
      v40 = 0;
      v41 = (v38 + 40);
      while (1)
      {
        v42 = *(v41 - 1) == v11 && *v41 == v13;
        if (v42 || (sub_22855E15C() & 1) != 0)
        {
          break;
        }

        ++v40;
        v41 += 2;
        if (v39 == v40)
        {
          goto LABEL_16;
        }
      }

      if (sub_22855BCAC())
      {
        v43 = v40;
      }

      else
      {
        v43 = 0;
      }

      [a2 setSortOrder_];
    }

    else
    {
LABEL_16:

      [a2 setSortOrder_];
    }

    v36 = sub_22855D17C();
    [a2 setFavoriteStatusRawValue_];

    v7 = v46;
  }

  else
  {
    v36 = sub_22855D17C();
    [a2 setFavoriteStatusRawValue_];
  }

  result = [v7 evaluateWithObject_];
  if (result)
  {
    return result;
  }

  sub_2284A6014();
  swift_allocError();
  return swift_willThrow();
}

id sub_2284A47E4(uint64_t a1, unint64_t a2)
{
  v61 = sub_22855C16C();
  v5 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[1];
  v64 = *v2;
  v65 = v8;
  v9 = v2[3];
  v66 = v2[2];
  v67 = v9;
  v10 = sub_2284A4F8C(a1, a2);
  sub_22840CC38(0, &qword_280DED000, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_228560690;
  v12 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v13 = sub_22855D17C();
  v14 = [v12 initWithKey:v13 ascending:0];

  *(v11 + 32) = v14;
  sub_2283EF310(0, &unk_280DED180, 0x277CCAC98);
  v15 = sub_22855D39C();

  [v10 setSortDescriptors_];

  v16 = v64;
  type metadata accessor for FeedItem();
  v60 = v16;
  v17 = sub_22855D97C();
  v18 = v17;
  v19 = v17 >> 62;
  if (v17 >> 62)
  {
    v20 = sub_22855DB4C();
    if (v20 >= 2)
    {
      goto LABEL_3;
    }

    v20 = sub_22855DB4C();
  }

  else
  {
    v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20 > 1)
    {
LABEL_3:
      v59 = v19;
      if (qword_280DEEBE8 != -1)
      {
        swift_once();
      }

      v21 = sub_22855CABC();
      __swift_project_value_buffer(v21, qword_280DEEBF0);
      sub_2284A5F30(&v64, v62);

      v22 = sub_22855CA8C();
      v23 = sub_22855D69C();
      sub_2284A6078(&v64);

      if (os_log_type_enabled(v22, v23))
      {
        v56 = v23;
        v57 = v22;
        v58 = v10;
        v24 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v62[0] = v54;
        *v24 = 136446978;
        v63 = &type metadata for PluginFeedItemStorage;
        sub_2284A5FCC();
        v25 = sub_22855D1BC();
        v27 = sub_2283F8938(v25, v26, v62);

        *(v24 + 4) = v27;
        *(v24 + 12) = 2082;
        v29 = *(&v65 + 1);
        v28 = v65;

        v30 = sub_2283F8938(v28, v29, v62);

        *(v24 + 14) = v30;
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_2283F8938(a1, a2, v62);
        v55 = v24;
        *(v24 + 32) = 2080;
        v63 = MEMORY[0x277D84F90];
        sub_2284275F0(0, v20, 0);
        v31 = 0;
        v32 = v63;
        do
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v33 = MEMORY[0x22AAB9D20](v31, v18);
          }

          else
          {
            v33 = *(v18 + 8 * v31 + 32);
          }

          v34 = v33;
          v35 = [v33 dateSubmitted];
          sub_22855C13C();

          v63 = v32;
          Kind = v32[1].Kind;
          Description = v32[1].Description;
          if (Kind >= Description >> 1)
          {
            sub_2284275F0((Description > 1), Kind + 1, 1);
            v32 = v63;
          }

          ++v31;
          v32[1].Kind = Kind + 1;
          (*(v5 + 32))(v32 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * Kind, v7, v61);
        }

        while (v20 != v31);
        v38 = MEMORY[0x22AAB9430](v32, v61);
        v40 = v39;

        v41 = sub_2283F8938(v38, v40, v62);

        v42 = v55;
        *(v55 + 34) = v41;
        v43 = v57;
        _os_log_impl(&dword_2283ED000, v57, v56, "[%{public}s][%{public}s] One or more feedItems with unique identifier %s, submitted on %s, attempting cleanup to prevent Health App crashes", v42, 0x2Au);
        v44 = v54;
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v44, -1, -1);
        MEMORY[0x22AABAD40](v42, -1, -1);

        v10 = v58;
      }

      else
      {
      }

      v45 = v60;
      if (!v59)
      {
        v46 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v46)
        {
          goto LABEL_33;
        }

        goto LABEL_19;
      }

      v46 = sub_22855DB4C();
      if (v46)
      {
LABEL_19:
        if (v46 >= 1)
        {
          for (i = 0; i != v46; ++i)
          {
            if ((v18 & 0xC000000000000001) != 0)
            {
              v48 = MEMORY[0x22AAB9D20](i, v18);
            }

            else
            {
              v48 = *(v18 + 8 * i + 32);
            }

            v49 = v48;
            [v45 deleteObject_];
          }

          goto LABEL_33;
        }

        __break(1u);
        goto LABEL_35;
      }

LABEL_33:

      return 0;
    }
  }

  if (!v20)
  {
    goto LABEL_33;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {
LABEL_35:
    v50 = MEMORY[0x22AAB9D20](0, v18);
    goto LABEL_32;
  }

  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v50 = *(v18 + 32);
LABEL_32:
    v51 = v50;

    return v51;
  }

  __break(1u);
  v62[0] = 0;
  v62[1] = 0xE000000000000000;
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](91, 0xE100000000000000);
  v63 = &type metadata for PluginFeedItemStorage;
  sub_2284A5FCC();
  v53 = sub_22855D1BC();
  MEMORY[0x22AAB92A0](v53);

  MEMORY[0x22AAB92A0](23389, 0xE200000000000000);
  MEMORY[0x22AAB92A0](v65, *(&v65 + 1));
  MEMORY[0x22AAB92A0](0xD00000000000004BLL, 0x8000000228570C30);
  MEMORY[0x22AAB92A0](a1, a2);
  MEMORY[0x22AAB92A0](8250, 0xE200000000000000);
  v63 = v20;
  sub_2283F9B94(0, &qword_280DECFE0, MEMORY[0x277D84948]);
  sub_22855DDDC();
  result = sub_22855DEDC();
  __break(1u);
  return result;
}

id sub_2284A4F8C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v6 = _s14HealthPlatform8FeedItemC12fetchRequestSo07NSFetchF0CyACGyFZ_0();
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_22840A70C(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_228560580;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_22840A7C8();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_22855D62C();
  sub_22840CC38(0, &qword_280DED000, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_228563E50;
  *(v9 + 32) = v5;
  *(v9 + 40) = v8;
  v10 = v5;
  v11 = v8;
  v12 = sub_22855D39C();

  v13 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v6 setPredicate_];
  return v6;
}

uint64_t sub_2284A5128()
{
  result = sub_22855D17C();
  qword_280DE93B8 = result;
  return result;
}

id static NSNotificationName.feedItemSubmissionOccurred.getter()
{
  if (qword_280DE93B0 != -1)
  {
    swift_once();
  }

  v1 = qword_280DE93B8;

  return v1;
}

void (*sub_2284A51BC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AAB9D20](a2, a3);
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
    return sub_2284A6AE8;
  }

  __break(1u);
  return result;
}

void (*sub_2284A523C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AAB9D20](a2, a3);
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
    return sub_2284A52BC;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2284A52C4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AAB9D20](a2, a3);
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
    return sub_2284A5344;
  }

  __break(1u);
  return result;
}

uint64_t sub_2284A534C(uint64_t a1, void *a2, void *a3)
{
  v37 = a2;
  v6 = type metadata accessor for UserProfile(0);
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v28[1] = v3;
    v29 = a3;
    v39 = MEMORY[0x277D84F90];
    sub_22855DD4C();
    v11 = a1 + 56;
    v12 = sub_22855DAAC();
    v13 = *(a1 + 36);
    result = type metadata accessor for Profile();
    v33 = v13;
    v34 = result;
    v14 = 0;
    v30 = a1 + 64;
    v31 = v8;
    v32 = v9;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v17 = v12 >> 6;
      if ((*(v11 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      if (v13 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v38 = v14;
      sub_2284A63A8(*(a1 + 48) + *(v35 + 72) * v12, v8, type metadata accessor for UserProfile);
      if (!static Profile.find(_:in:)(*&v8[*(v36 + 20)], v37))
      {
        sub_2284A6410();
        swift_allocError();
        v25 = v29;
        *v26 = v29;
        *(v26 + 8) = 1;
        swift_willThrow();
        v27 = v25;
        sub_2284A61D4(v8, type metadata accessor for UserProfile);
      }

      sub_2284A61D4(v8, type metadata accessor for UserProfile);
      sub_22855DD1C();
      sub_22855DD5C();
      sub_22855DD6C();
      result = sub_22855DD2C();
      v15 = 1 << *(a1 + 32);
      if (v12 >= v15)
      {
        goto LABEL_25;
      }

      v18 = *(v11 + 8 * v17);
      if ((v18 & (1 << v12)) == 0)
      {
        goto LABEL_26;
      }

      LODWORD(v13) = v33;
      if (v33 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v12 & 0x3F));
      if (v19)
      {
        v15 = __clz(__rbit64(v19)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v8 = v31;
        v16 = v32;
      }

      else
      {
        v20 = v17 << 6;
        v21 = v17 + 1;
        v8 = v31;
        v22 = (v30 + 8 * v17);
        v16 = v32;
        while (v21 < (v15 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_228416CB8(v12, v33, 0);
            v15 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_228416CB8(v12, v33, 0);
      }

LABEL_4:
      v14 = v38 + 1;
      v12 = v15;
      if (v38 + 1 == v16)
      {
        return v39;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

void sub_2284A56B8(unint64_t a1, uint64_t a2, id *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22855DB4C())
  {
    v5 = 0;
    v14 = i;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x22AAB9D20](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      FeedItem.contentKind.getter(&v17);
      sub_228483930(&v18, v17);
      v9 = [v7 profiles];
      type metadata accessor for Profile();
      sub_2284A6594(&qword_280DED540, type metadata accessor for Profile, MEMORY[0x277D85378]);
      v10 = sub_22855D51C();

      v11 = sub_22841FCB4(v10);

      v12 = sub_22842941C(v11);

      v13 = sub_2284C2B70(v12);

      sub_228484978(&v16, v13);

      [*a3 deleteObject_];
      ++v5;
      if (v8 == v14)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

id _sSo11NSPredicateC14HealthPlatformE24feedItemStoragePredicate3for17profileIdentifierAB0B13Orchestration8Executor_p_So09HKProfileJ0CtFZ_0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_22855C73C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_22840A70C(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_228560580;
  swift_getObjectType();
  sub_22855CA1C();
  v9 = sub_22855C72C();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  v12 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  v13 = sub_22840A7C8();
  *(v8 + 64) = v13;
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  v14 = sub_22855D62C();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_228560570;
  *(v15 + 56) = v12;
  *(v15 + 64) = v13;
  *(v15 + 32) = 0x73656C69666F7270;
  *(v15 + 40) = 0xE800000000000000;
  result = [a3 identifier];
  if (result)
  {
    v17 = result;
    *(v15 + 96) = sub_2283EF310(0, &unk_280DED0C0, 0x277CCAD78);
    *(v15 + 104) = sub_22840A81C();
    *(v15 + 72) = v17;
    v18 = sub_22855D62C();
    sub_22840CC38(0, &qword_280DED000, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_228563E50;
    *(v19 + 32) = v14;
    *(v19 + 40) = v18;
    v20 = v14;
    v21 = v18;
    v22 = sub_22855D39C();

    v23 = [objc_opt_self() andPredicateWithSubpredicates_];

    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id _sSo11NSPredicateC14HealthPlatformE42feedItemStoragePredicateForAgnosticProfile3forAB0B13Orchestration8Executor_p_tFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_22855C73C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_22840A70C(0);
  v6 = swift_allocObject();
  v21 = xmmword_228560580;
  *(v6 + 16) = xmmword_228560580;
  swift_getObjectType();
  sub_22855CA1C();
  v7 = sub_22855C72C();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  v10 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v11 = sub_22840A7C8();
  *(v6 + 64) = v11;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  v12 = sub_22855D62C();
  v13 = swift_allocObject();
  *(v13 + 16) = v21;
  *(v13 + 56) = v10;
  *(v13 + 64) = v11;
  *(v13 + 32) = 0x73656C69666F7270;
  *(v13 + 40) = 0xE800000000000000;
  v14 = sub_22855D62C();
  sub_22840CC38(0, &qword_280DED000, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_228563E50;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  v16 = v12;
  v17 = v14;
  v18 = sub_22855D39C();

  v19 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v19;
}

void sub_2284A5E74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2284A5EE8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void sub_2284A5F68()
{
  if (!qword_280DE9230)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE9230);
    }
  }
}

unint64_t sub_2284A5FCC()
{
  result = qword_280DEBBF8;
  if (!qword_280DEBBF8)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DEBBF8);
  }

  return result;
}

unint64_t sub_2284A6014()
{
  result = qword_27D83FB40;
  if (!qword_27D83FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FB40);
  }

  return result;
}

uint64_t objectdestroy_31Tm()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t objectdestroy_10Tm()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

id sub_2284A61C0(id result, void *a2, id a3, char a4, __n128 a5)
{
  if (a4 != -1)
  {
    return sub_22845063C(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_2284A61D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2284A6238()
{
  result = qword_27D83FB48;
  if (!qword_27D83FB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FB48);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2284A6300(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2284A6348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2284A63A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2284A6410()
{
  result = qword_27D83FB50;
  if (!qword_27D83FB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FB50);
  }

  return result;
}

void sub_2284A6464(void *result, void *a2, void *a3, char a4)
{
  if (a4 != -1)
  {
    sub_228451F14(result, a2, a3, a4);
  }
}

uint64_t sub_2284A64CC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22840CC38(255, &qword_280DEE7C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2284A6534(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_2284A6540()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v4 = *(v0 + 32);
  v5 = v2;
  return v1(&v4);
}

double sub_2284A6588(id a1, char a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
  }

  return result;
}

uint64_t sub_2284A6594(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2284A65DC()
{
  v1 = *(type metadata accessor for PluginFeedItem(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2284A03E4(v0 + v2, v3);
}

uint64_t sub_2284A6674(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2284A5E74(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2284A66F4(uint64_t a1)
{
  sub_2284A5E74(0, &qword_280DEE798, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2284A6780(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2284A67E8()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 32);
  return v1(&v3);
}

void sub_2284A6828(uint64_t a1)
{
  if (!qword_280DE9570)
  {
    sub_2284A5E74(255, &qword_280DE9630, type metadata accessor for PluginFeedItem, MEMORY[0x277D83940]);
    sub_2283F9B94(255, &qword_280DECFE0, MEMORY[0x277D84948]);
    v1 = sub_22855D4CC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9570);
    }
  }
}

uint64_t sub_2284A68D8(void *a1, char a2)
{
  sub_2284A6828(0);

  return sub_22849E81C(a1, a2 & 1);
}

void sub_2284A6958(uint64_t a1)
{
  if (!qword_280DE9560)
  {
    sub_2283F9B94(255, &qword_280DECFE0, MEMORY[0x277D84948]);
    v1 = sub_22855D4CC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9560);
    }
  }
}

uint64_t objectdestroy_101Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

void sub_2284A6B14(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 96))(Strong);
  }

  else
  {
    if (qword_280DEEBC8 != -1)
    {
      swift_once();
    }

    v4 = sub_22855CABC();
    __swift_project_value_buffer(v4, qword_280DEEBD0);
    v5 = sub_22855CA8C();
    v6 = sub_22855D6AC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12[0] = v8;
      *v7 = 136315138;
      v12[4] = a2;
      swift_getMetatypeMetadata();
      v9 = sub_22855D1BC();
      v11 = sub_2283F8938(v9, v10, v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_2283ED000, v5, v6, "[%s]: init()", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x22AABAD40](v8, -1, -1);
      MEMORY[0x22AABAD40](v7, -1, -1);
    }
  }
}

void sub_2284A6CC0()
{
  v1 = *v0;
  if (qword_280DEEBC8 != -1)
  {
    swift_once();
  }

  v2 = sub_22855CABC();
  __swift_project_value_buffer(v2, qword_280DEEBD0);
  oslog = sub_22855CA8C();
  v3 = sub_22855D6AC();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10[0] = v5;
    v10[1] = v1;
    *v4 = 136315138;
    swift_getMetatypeMetadata();
    v6 = sub_22855D1BC();
    v8 = sub_2283F8938(v6, v7, v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_2283ED000, oslog, v3, "[%s]: sourceNotification() default implementation :(", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x22AABAD40](v5, -1, -1);
    MEMORY[0x22AABAD40](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t SignalListener.deinit()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_22855D8FC();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SignalListener.__deallocating_deinit()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_22855D8FC();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t *sub_2284A6F94(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v3 = *v2;
  v19 = sub_22855CFBC();
  v4 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22855CFEC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2284A7288();
  v2[2] = sub_22855D8AC();
  ObjectType = swift_getObjectType();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v3;
  aBlock[4] = sub_2284A72D4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_12;
  v14 = _Block_copy(aBlock);

  sub_2284AED00(ObjectType);
  sub_2284AED04(ObjectType);
  sub_22855D8CC();
  _Block_release(v14);
  (*(v4 + 8))(v6, v19);
  (*(v8 + 8))(v10, v7);

  v15 = sub_22855CADC();
  signal(v18, v15);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_22855D91C();
  swift_unknownObjectRelease();
  return v2;
}

unint64_t sub_2284A7288()
{
  result = qword_280DED118;
  if (!qword_280DED118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DED118);
  }

  return result;
}

void sub_2284A72DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

char *sub_2284A7354(char *result)
{
  v1 = *(result + 2);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = result + 32;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_2284267E0(result, v8, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 2);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 2) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 8;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_2284A7494(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_22855DB4C();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    v10 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFADD__(v10, v9);
    result = v10 + v9;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = sub_22855DB4C();
  v11 = __OFADD__(v17, v9);
  result = v17 + v9;
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_2284FD948();
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = ((*(v3 + 0x18) >> 1) - v13);
  result = sub_2284626A4(&v34, (v3 + 8 * v13 + 32), v14, v8);
  if (result < v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_11:
    result = sub_228407958(v34);
    *v7 = v2;
    return result;
  }

LABEL_16:
  v4 = *(v3 + 16);
  v3 = v34;
  v5 = v35;
  v8 = v37;
  v31 = v36;
  v6 = v38;
  if (v34 < 0)
  {
LABEL_20:
    if (!sub_22855DB8C())
    {
      goto LABEL_11;
    }

    sub_2283EF310(0, &qword_280DEE7B8, 0x277CCD720);
    result = swift_dynamicCast();
    v19 = v33;
    goto LABEL_31;
  }

  if (!v38)
  {
    v20 = (v36 + 64) >> 6;
    if (v20 <= v37 + 1)
    {
      v21 = v37 + 1;
    }

    else
    {
      v21 = (v36 + 64) >> 6;
    }

    v22 = v21 - 1;
    while (1)
    {
      v18 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_59;
      }

      if (v18 >= v20)
      {
        v19 = 0;
        v6 = 0;
        goto LABEL_30;
      }

      v6 = *(v35 + 8 * v18);
      ++v8;
      if (v6)
      {
        goto LABEL_29;
      }
    }
  }

  v18 = v37;
LABEL_29:
  v23 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v19 = *(*(v34 + 48) + ((v18 << 9) | (8 * v23)));
  result = v19;
  v22 = v18;
LABEL_30:
  v37 = v22;
  v38 = v6;
  v8 = v22;
LABEL_31:
  if (!v19)
  {
    goto LABEL_11;
  }

  v24 = (v31 + 64) >> 6;
LABEL_33:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_22855D3EC();
  }

  v2 = *v7;
  v25 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v30 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v25)
  {
    v25 = v4;
  }

  v32 = v25;
  while (1)
  {
    while (1)
    {
      if (v4 == v32)
      {
        v4 = v32;
        *(v30 + 16) = v32;
        goto LABEL_33;
      }

      *(v30 + 32 + 8 * v4++) = v19;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_22855DB8C())
      {
        sub_2283EF310(0, &qword_280DEE7B8, 0x277CCD720);
        result = swift_dynamicCast();
        v19 = v33;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v6)
    {
      break;
    }

    v26 = v8;
LABEL_54:
    v29 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v19 = *(*(v3 + 48) + ((v26 << 9) | (8 * v29)));
    result = v19;
    v28 = v26;
LABEL_39:
    v34 = v3;
    v35 = v5;
    v36 = v31;
    v37 = v28;
    v8 = v28;
    v38 = v6;
    if (!v19)
    {
LABEL_56:
      *(v30 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v24 <= v8 + 1)
  {
    v27 = v8 + 1;
  }

  else
  {
    v27 = (v31 + 64) >> 6;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v19 = 0;
      v6 = 0;
      goto LABEL_39;
    }

    v6 = *(v5 + 8 * v26);
    ++v8;
    if (v6)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

char *sub_2284A781C(char *result)
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

  result = sub_228409BF8(result, v10, 1, v3);
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

void *sub_2284A7914(void *result)
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

  result = sub_2284267C0(result, v10, 1, v3);
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

  sub_2283FBB5C();
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

char *sub_2284A7A0C(char *result)
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

  result = sub_2284267E0(result, v10, 1, v3);
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

uint64_t sub_2284A7B04(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
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

  v3 = sub_228426954(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for ProtectedNotificationContentState(0);
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
    return result;
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
  return result;
}

uint64_t sub_2284A7C30(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = sub_22855DCBC();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_2284ADF84(0, &qword_280DE9958, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277CBCD88]);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2284A7D4C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_22855DB4C();
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

  v13 = sub_22855DB4C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2284FD948();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2284ACB8C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

void *sub_2284A7E3C(void *result)
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

  result = sub_228427160(result, v10, 1, v3);
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

  sub_2283F9B94(0, &qword_280DE9F60, MEMORY[0x277D11B90]);
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

uint64_t HealthAppNotificationManager.__allocating_init(notificationCenter:notificationManagerStore:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *(a2 + 32);
  type metadata accessor for UnfairLock();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  *(v6 + 16) = v7;
  *v7 = 0;
  *(v4 + 64) = v6;
  *(v4 + 72) = sub_22840C148(MEMORY[0x277D84F90]);
  *(v4 + 16) = a1;
  v8 = *(a2 + 16);
  *(v4 + 24) = *a2;
  *(v4 + 40) = v8;
  *(v4 + 56) = v5;
  return v4;
}

uint64_t HealthAppNotificationManager.init(notificationCenter:notificationManagerStore:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  type metadata accessor for UnfairLock();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  *(v6 + 16) = v7;
  *v7 = 0;
  *(v2 + 64) = v6;
  *(v2 + 72) = sub_22840C148(MEMORY[0x277D84F90]);
  *(v2 + 16) = a1;
  v8 = *(a2 + 16);
  *(v2 + 24) = *a2;
  *(v2 + 40) = v8;
  *(v2 + 56) = v5;
  return v2;
}

void sub_2284A8088(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = &qword_280DEDFB0[10];
  if (a1)
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v9 = sub_22855CABC();
    __swift_project_value_buffer(v9, qword_280DEEC98);
    v10 = sub_22855CA8C();
    v11 = sub_22855D6AC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock[0] = v13;
      *v12 = 136315138;
      v14 = sub_22855E34C();
      v16 = v7;
      v17 = sub_2283F8938(v14, v15, aBlock);

      *(v12 + 4) = v17;
      v7 = v16;
      v8 = qword_280DEDFB0 + 80;
      _os_log_impl(&dword_2283ED000, v10, v11, "%s [TCC] requestAuthorization adding .criticalAlert as an authorization option.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x22AABAD40](v13, -1, -1);
      MEMORY[0x22AABAD40](v12, -1, -1);
    }

    v18 = 55;
  }

  else
  {
    v18 = 39;
  }

  if (v8[402] != -1)
  {
    swift_once();
  }

  v19 = sub_22855CABC();
  __swift_project_value_buffer(v19, qword_280DEEC98);
  v20 = sub_22855CA8C();
  v21 = sub_22855D6AC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v32 = a2;
    aBlock[0] = swift_slowAlloc();
    v23 = a3;
    v24 = aBlock[0];
    *v22 = 136315138;
    v25 = sub_22855E34C();
    v27 = sub_2283F8938(v25, v26, aBlock);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_2283ED000, v20, v21, "%s [TCC] requestAuthorization initiating", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v28 = v24;
    a3 = v23;
    a2 = v32;
    MEMORY[0x22AABAD40](v28, -1, -1);
    MEMORY[0x22AABAD40](v22, -1, -1);
  }

  v29 = v4[2];
  v30 = swift_allocObject();
  v30[2] = a2;
  v30[3] = a3;
  v30[4] = v7;
  aBlock[4] = sub_2284ACDEC;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2284A72DC;
  aBlock[3] = &block_descriptor_13;
  v31 = _Block_copy(aBlock);
  sub_22840FE74(a2, a3);

  [v29 requestAuthorizationWithOptions:v18 completionHandler:v31];
  _Block_release(v31);
}

void sub_2284A8428(char a1, id a2, void (*a3)(void, id), uint64_t a4, uint64_t a5)
{
  v8 = &qword_280DEDFB0[10];
  if (a2)
  {
    v9 = a2;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v10 = sub_22855CABC();
    __swift_project_value_buffer(v10, qword_280DEEC98);
    v11 = a2;
    v12 = sub_22855CA8C();
    v13 = sub_22855D68C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31 = v15;
      *v14 = 136315394;
      v16 = sub_22855E34C();
      v18 = sub_2283F8938(v16, v17, &v31);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v19 = a2;
      sub_2283F9B94(0, &qword_280DECFE0, MEMORY[0x277D84948]);
      v20 = sub_22855D1CC();
      v22 = sub_2283F8938(v20, v21, &v31);
      v8 = qword_280DEDFB0 + 80;

      *(v14 + 14) = v22;
      _os_log_impl(&dword_2283ED000, v12, v13, "%s [TCC] requestAuthorization error: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v15, -1, -1);
      MEMORY[0x22AABAD40](v14, -1, -1);
    }

    else
    {
    }
  }

  if (v8[402] != -1)
  {
    swift_once();
  }

  v23 = sub_22855CABC();
  __swift_project_value_buffer(v23, qword_280DEEC98);
  v24 = sub_22855CA8C();
  v25 = sub_22855D6AC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v31 = v27;
    *v26 = 136315394;
    v28 = sub_22855E34C();
    v30 = sub_2283F8938(v28, v29, &v31);

    *(v26 + 4) = v30;
    *(v26 + 12) = 1024;
    *(v26 + 14) = a1 & 1;
    _os_log_impl(&dword_2283ED000, v24, v25, "%s [TCC] requestAuthorization success: %{BOOL}d", v26, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x22AABAD40](v27, -1, -1);
    MEMORY[0x22AABAD40](v26, -1, -1);
  }

  if (a3)
  {
    a3(a1 & 1, a2);
  }
}

uint64_t sub_2284A8780()
{
  sub_2283FCFBC(0, &qword_280DE9790, &qword_280DE92D8, 0x277CE1FD0, MEMORY[0x277CBCEA8]);
  swift_allocObject();

  return sub_22855CE0C();
}

uint64_t sub_2284A8808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2284AEB88;
  *(v7 + 24) = v6;
  v8 = *(a3 + 16);
  v11[4] = sub_2284AEA94;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_22847BF78;
  v11[3] = &block_descriptor_112_0;
  v9 = _Block_copy(v11);

  [v8 getNotificationSettingsWithCompletionHandler_];
  _Block_release(v9);
}

void sub_2284A8938(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_22847BF78;
  v5[3] = &block_descriptor_3;
  v4 = _Block_copy(v5);

  [v3 getNotificationSettingsWithCompletionHandler_];
  _Block_release(v4);
}

BOOL sub_2284A8A14(NSObject *a1, char a2, NSObject *a3)
{
  isa = a3[-1].isa;
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v13 = &v35 - v12;
  if (v14)
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v17 = sub_22855CABC();
    __swift_project_value_buffer(v17, qword_280DEEC98);
    v18 = *(isa + 2);
    v18(v13, a1, a3);
    v19 = sub_22855CA8C();
    v20 = sub_22855D6AC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v36 = v20;
      v22 = v21;
      v37 = swift_slowAlloc();
      v38 = v37;
      *v22 = 136315394;
      v23 = sub_22855E34C();
      v25 = sub_2283F8938(v23, v24, &v38);
      v35 = v19;
      v26 = a2;
      v27 = v25;

      *(v22 + 4) = v27;
      a2 = v26;
      *(v22 + 12) = 2080;
      v18(v9, v13, a3);
      v28 = sub_22855D1BC();
      v30 = v29;
      (*(isa + 1))(v13, a3);
      v31 = sub_2283F8938(v28, v30, &v38);

      *(v22 + 14) = v31;
      v32 = v35;
      _os_log_impl(&dword_2283ED000, v35, v36, "%s Preventing notification coalescing in non-background mode for %s", v22, 0x16u);
      v33 = v37;
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v33, -1, -1);
      MEMORY[0x22AABAD40](v22, -1, -1);
    }

    else
    {

      (*(isa + 1))(v13, a3);
    }
  }

  else
  {
    v38 = *(v11 + 64);
    MEMORY[0x28223BE20](v10);
    *(&v35 - 4) = a3;
    *(&v35 - 3) = v15;
    *(&v35 - 2) = v16;
    *(&v35 - 1) = a1;
    type metadata accessor for UnfairLock();
    sub_2283FD034(&qword_280DEDC00, type metadata accessor for UnfairLock, &protocol conformance descriptor for UnfairLock);

    sub_22855C3CC();
  }

  return (a2 & 1) == 0;
}

uint64_t sub_2284A8DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_22855DA2C();
  v33 = *(v35 - 8);
  v8 = MEMORY[0x28223BE20](v35);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  v13 = a2;
  v32 = *(a4 + 16);
  v14 = v32(a3, a4);
  v16 = v15;
  swift_beginAccess();
  v34 = a1;
  v17 = *(a1 + 72);
  if (*(v17 + 16) && (, v18 = sub_2283F6D18(v14, v16), v20 = v19, , (v20 & 1) != 0))
  {
    sub_2283F9B10(*(v17 + 56) + 40 * v18, &v37);
  }

  else
  {

    v39 = 0;
    v37 = 0u;
    v38 = 0u;
  }

  v21 = v35;
  v22 = v13;
  sub_2284AEA2C(0);
  v23 = swift_dynamicCast();
  v24 = *(a3 - 8);
  (*(v24 + 56))(v12, v23 ^ 1u, 1, a3);
  v25 = v33;
  (*(v33 + 16))(v10, v12, v21);
  if ((*(v24 + 48))(v10, 1, a3) == 1)
  {
    (*(v25 + 8))(v10, v21);
    *(&v38 + 1) = a3;
    v39 = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v37);
    (*(v24 + 16))(boxed_opaque_existential_1, v22, a3);
  }

  else
  {
    *(&v38 + 1) = a3;
    v39 = a4;
    v27 = __swift_allocate_boxed_opaque_existential_1(&v37);
    (*(v24 + 16))(v27, v22, a3);
    (*(a4 + 32))(v36, &v37, a3, a4);
    __swift_destroy_boxed_opaque_existential_0(&v37);
    (*(v24 + 8))(v10, a3);
    sub_22844C570(v36, &v37);
  }

  v28 = v32(a3, a4);
  v30 = v29;
  sub_2283F9B10(&v37, v36);
  swift_beginAccess();
  sub_2284D2138(v36, v28, v30);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0(&v37);
  return (*(v25 + 8))(v12, v21);
}

uint64_t sub_2284A9170(uint64_t a1)
{
  v2 = v1;
  sub_2284ACE50(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  v10[2] = sub_2284AD0DC;
  v10[3] = v2;
  v10[4] = sub_2284AD0E4;
  v10[5] = v9;
  sub_2284ACEE4(0);
  sub_2283FD034(&qword_27D83FB98, sub_2284ACEE4, MEMORY[0x277CBCC08]);
  swift_retain_n();

  sub_22855CE2C();
  sub_2283FD034(&qword_27D83FBA0, sub_2284ACE50, MEMORY[0x277CBCEB8]);
  v11 = sub_22855CE6C();

  (*(v6 + 8))(v8, v5);
  return v11;
}

void sub_2284A9384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2284A943C;
  v5[3] = &block_descriptor_103;
  v4 = _Block_copy(v5);

  [v3 getPendingNotificationRequestsWithCompletionHandler_];
  _Block_release(v4);
}

unint64_t sub_2284A9450(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v17 = a2;
  if (*(a2 + 16))
  {
    v19 = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22855DB4C())
    {
      v4 = 0;
      v15 = v2 & 0xFFFFFFFFFFFFFF8;
      v16 = v2 & 0xC000000000000001;
      while (1)
      {
        if (v16)
        {
          v5 = MEMORY[0x22AAB9D20](v4, v2);
        }

        else
        {
          if (v4 >= *(v15 + 16))
          {
            goto LABEL_17;
          }

          v5 = *(v2 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v8 = [v5 identifier];
        v9 = sub_22855D1AC();
        v11 = v10;

        v18[0] = v9;
        v18[1] = v11;
        MEMORY[0x28223BE20](v12);
        v14[2] = v18;
        LOBYTE(v8) = sub_2284C6D9C(sub_228435468, v14, v17);

        if (v8)
        {
          sub_22855DD1C();
          sub_22855DD5C();
          sub_22855DD6C();
          sub_22855DD2C();
        }

        else
        {
        }

        ++v4;
        if (v7 == i)
        {
          return v19;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
  }

  return v2;
}

uint64_t sub_2284A9624(uint64_t a1)
{
  v2 = v1;
  sub_2284AD0F8(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  v10[2] = sub_2284AD2C0;
  v10[3] = v2;
  v10[4] = sub_2284AD2C8;
  v10[5] = v9;
  sub_2284AD18C(0);
  sub_2283FD034(&qword_27D83FBD0, sub_2284AD18C, MEMORY[0x277CBCC08]);
  swift_retain_n();

  sub_22855CE2C();
  sub_2283FD034(&qword_27D83FBD8, sub_2284AD0F8, MEMORY[0x277CBCEB8]);
  v11 = sub_22855CE6C();

  (*(v6 + 8))(v8, v5);
  return v11;
}

void sub_2284A9838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2284A98F0;
  v5[3] = &block_descriptor_87;
  v4 = _Block_copy(v5);

  [v3 getDeliveredNotificationsWithCompletionHandler_];
  _Block_release(v4);
}

uint64_t sub_2284A9904(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v4 = *(a1 + 32);
  sub_2283EF310(0, a3, a4);
  v5 = sub_22855D3AC();

  v4(v5);
}

unint64_t sub_2284A9980(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v17 = a2;
  if (*(a2 + 16))
  {
    v19 = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22855DB4C())
    {
      v4 = 0;
      v16 = v2 & 0xC000000000000001;
      while (1)
      {
        if (v16)
        {
          v5 = MEMORY[0x22AAB9D20](v4, v2);
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v5 = *(v2 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v8 = [v5 request];
        v9 = [v8 identifier];

        v10 = sub_22855D1AC();
        v12 = v11;

        v18[0] = v10;
        v18[1] = v12;
        MEMORY[0x28223BE20](v13);
        v15[2] = v18;
        LOBYTE(v10) = sub_2284C6D9C(sub_228434EDC, v15, v17);

        if (v10)
        {
          sub_22855DD1C();
          sub_22855DD5C();
          sub_22855DD6C();
          sub_22855DD2C();
        }

        else
        {
        }

        ++v4;
        if (v7 == i)
        {
          return v19;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
  }

  return v2;
}

uint64_t sub_2284A9B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_2284ACFA0(0, &qword_27D83FB80, &qword_27D83FB88, &qword_280DE92E8, 0x277CE1FC0);
  swift_allocObject();

  sub_22855CE0C();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  sub_2284AD00C(0, &qword_27D83FB88, &qword_280DE92E8, 0x277CE1FC0);
  sub_2284AD064();

  sub_22855CE8C();
}

uint64_t sub_2284A9CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_2284ACFA0(0, &qword_27D83FBB8, &qword_27D83FBC0, &qword_27D83F918, 0x277CE1F78);
  swift_allocObject();

  sub_22855CE0C();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  sub_2284AD00C(0, &qword_27D83FBC0, &qword_27D83F918, 0x277CE1F78);
  sub_2284AD248();

  sub_22855CE8C();
}

uint64_t sub_2284A9E50(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = a7;
  *(v14 + 24) = v13;

  a3(a8, v14);
}

void sub_2284A9F18(uint64_t a1, SEL *a2)
{
  v4 = *(v2 + 16);
  v5 = sub_22855D39C();
  [v4 *a2];
}

uint64_t sub_2284A9F78()
{
  sub_2284AD2DC(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284AD490(0);
  v7 = *(v6 - 8);
  v17 = v6;
  v18 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 40);
  v21 = *(v0 + 24);
  v22 = v10;
  v23 = *(v0 + 56);
  sub_2284AD5D4(&v21, v20);
  v19 = sub_22855D6DC();
  v11 = swift_allocObject();
  v12 = v22;
  *(v11 + 16) = v21;
  *(v11 + 32) = v12;
  *(v11 + 48) = v23;
  sub_2284AD5D4(&v21, v20);
  sub_2284AD3AC(0);
  sub_2284AE260(0, &qword_280DE9638, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D83940]);
  sub_2283FD034(&qword_280DE97C0, sub_2284AD3AC, MEMORY[0x277CBCEB0]);
  sub_22855CF0C();

  sub_2283FD034(&qword_280DE9AB8, sub_2284AD2DC, MEMORY[0x277CBCCC0]);
  v13 = sub_22855CE6C();
  sub_2284AD64C(&v21);
  (*(v3 + 8))(v5, v2);
  v20[0] = v13;

  sub_22855CCBC();
  sub_2284AD530(0);
  sub_2283FD034(&qword_280DE9900, sub_2284AD530, MEMORY[0x277CBCD90]);
  sub_22855CF2C();

  sub_2283FD034(&qword_280DE9A38, sub_2284AD490, MEMORY[0x277CBCCE0]);
  v14 = v17;
  v15 = sub_22855CE6C();
  (*(v18 + 8))(v9, v14);
  return v15;
}

uint64_t sub_2284AA330@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2284AE75C(*a1);
  v4 = sub_2284AA9DC(v3, 0);

  *a2 = v4;
  return result;
}

uint64_t sub_2284AA380(uint64_t a1)
{
  v20 = a1;
  sub_2284AD2DC(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284AD490(0);
  v8 = *(v7 - 8);
  v21 = v7;
  v22 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 40);
  v25 = *(v1 + 24);
  v26 = v11;
  v27 = *(v1 + 56);
  sub_2284AD5D4(&v25, v24);
  v23 = sub_22855D6DC();
  v12 = swift_allocObject();
  v13 = v26;
  *(v12 + 16) = v25;
  *(v12 + 32) = v13;
  *(v12 + 48) = v27;
  sub_2284AD5D4(&v25, v24);
  sub_2284AD3AC(0);
  sub_2284AE260(0, &qword_280DE9638, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D83940]);
  sub_2283FD034(&qword_280DE97C0, sub_2284AD3AC, MEMORY[0x277CBCEB0]);
  sub_22855CF0C();

  sub_2283FD034(&qword_280DE9AB8, sub_2284AD2DC, MEMORY[0x277CBCCC0]);
  v14 = sub_22855CE6C();
  sub_2284AD64C(&v25);
  (*(v4 + 8))(v6, v3);
  v24[0] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = v20;
  *(v15 + 24) = v1;

  sub_22855CCBC();
  sub_2284AD530(0);
  sub_2283FD034(&qword_280DE9900, sub_2284AD530, MEMORY[0x277CBCD90]);
  sub_22855CF2C();

  sub_2283FD034(&qword_280DE9A38, sub_2284AD490, MEMORY[0x277CBCCE0]);
  v16 = v21;
  v17 = sub_22855CE6C();
  (*(v22 + 8))(v10, v16);
  return v17;
}

void sub_2284AA760(uint64_t isUniquelyReferenced_nonNull_native@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v33 = a3;
  v34 = a4;
  v41 = a2;
  v4 = *isUniquelyReferenced_nonNull_native;
  v5 = *(*isUniquelyReferenced_nonNull_native + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v4 + 80;
    v36 = *(*isUniquelyReferenced_nonNull_native + 16);
    v31 = (v5 - 1);
    v8 = MEMORY[0x277D84F90];
    v40 = v4;
    v32 = v4 + 80;
    do
    {
      v35 = v8;
      v9 = (v7 + 56 * v6);
      while (1)
      {
        if (v6 >= *(v4 + 16))
        {
          __break(1u);
          return;
        }

        v42 = &v30;
        v11 = *(v9 - 6);
        v10 = *(v9 - 5);
        v12 = *(v9 - 4);
        v39 = *(v9 - 3);
        v14 = *(v9 - 2);
        v13 = *(v9 - 1);
        v37 = v10;
        v38 = v13;
        v15 = *v9;
        v16 = (v6 + 1);
        v43 = v11;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
        v29[2] = &v43;
        v17 = v11;

        v18 = v17;
        v19 = sub_2284C6E48(sub_2284AE3B0, v29, v41);

        if ((v19 & 1) == 0)
        {
          break;
        }

        v9 += 7;
        ++v6;
        v4 = v40;
        if (v36 == v16)
        {
          v8 = v35;
          goto LABEL_15;
        }
      }

      v42 = v6;
      v20 = v37;
      v8 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_2284276B0(0, *(v8 + 16) + 1, 1);
        v8 = v44;
      }

      v21 = v20;
      v23 = v38;
      v22 = v39;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_2284276B0((v24 > 1), v25 + 1, 1);
        v23 = v38;
        v22 = v39;
        v21 = v20;
        v8 = v44;
      }

      *(v8 + 16) = v25 + 1;
      v26 = (v8 + 56 * v25);
      v26[4] = v11;
      v26[5] = v21;
      v26[6] = v12;
      v26[7] = v22;
      v26[8] = v14;
      v26[9] = v23;
      v26[10] = v15;
      v7 = v32;
      v4 = v40;
      v6 = v16;
    }

    while (v31 != v42);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

LABEL_15:
  v27 = sub_2284AE75C(v8);

  v28 = sub_2284AA9DC(v27, 1);

  *v34 = v28;
}

uint64_t sub_2284AA9DC(uint64_t a1, int a2)
{
  v139 = a2;
  sub_2284AD908(0);
  v121 = v3;
  v119 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v116 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284ADA30(0);
  v122 = v5;
  v120 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v118 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284AD99C(0);
  v117 = v7;
  v115 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v114 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284ADB00(0);
  v138 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v137 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284ADB7C(0);
  v136 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v135 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284ADD48(0);
  v134 = v15;
  MEMORY[0x28223BE20](v15);
  v133 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x277D84F90];
  v19 = *(a1 + 64);
  v125 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v154 = MEMORY[0x277D84F90];
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v19;
  v124 = (v20 + 63) >> 6;
  v132 = 0x8000000228570E10;
  v131 = "otificationManagerContentState_";
  v130 = (v10 + 8);
  v129 = (v13 + 8);
  v128 = (v16 + 8);
  v123 = a1;

  v23 = 0;
  v144 = xmmword_228560580;
  while (v22)
  {
    v24 = v23;
LABEL_11:
    v127 = v18;
    v143 = v22;
    v126 = v24;
    v25 = (v24 << 9) | (8 * __clz(__rbit64(v22)));
    v26 = *(*(v123 + 56) + v25);
    v27 = *(v26 + 2);
    v142 = *(*(v123 + 48) + v25);

    v146 = v27;
    if (v27)
    {
      v28 = 0;
      v29 = (v26 + 80);
      v30 = MEMORY[0x277D84F98];
      v145 = v26;
      while (1)
      {
        if (v28 >= *(v26 + 2))
        {
          goto LABEL_58;
        }

        v31 = *(v29 - 6);
        v32 = *(v29 - 5);
        v33 = v30;
        v34 = *(v29 - 4);
        v35 = *(v29 - 3);
        v36 = *(v29 - 2);
        v148 = *(v29 - 1);
        v37 = *v29;
        v38 = v33[2];
        v147 = v31;

        v151 = v36;

        v150 = v37;

        i = v33;
        if (v38)
        {
          v39 = sub_2283F6D18(v32, v34);
          v40 = v32;
          if (v41)
          {
            v42 = *(v33[7] + 8 * v39);
          }

          else
          {
            v42 = MEMORY[0x277D84F90];
          }
        }

        else
        {
          v42 = MEMORY[0x277D84F90];
          v40 = v32;
        }

        sub_2284AE260(0, &qword_27D83F400, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D84560]);
        inited = swift_initStackObject();
        *(inited + 16) = v144;
        *(inited + 32) = v31;
        v44 = v40;
        *(inited + 40) = v40;
        *(inited + 48) = v34;
        v45 = v151;
        *(inited + 56) = v35;
        *(inited + 64) = v45;
        v46 = v147;
        v47 = v150;
        *(inited + 72) = v148;
        *(inited + 80) = v47;
        v48 = *(v42 + 2);
        v148 = v46;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v50 = *(v42 + 3) >> 1, v50 <= v48))
        {
          v42 = sub_2284267E0(isUniquelyReferenced_nonNull_native, v48 + 1, 1, v42);
          v50 = *(v42 + 3) >> 1;
        }

        v51 = i;
        if (v50 <= *(v42 + 2))
        {
          goto LABEL_59;
        }

        swift_arrayInitWithCopy();

        ++*(v42 + 2);
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v152 = v51;
        v53 = sub_2283F6D18(v44, v34);
        v55 = v51[2];
        v56 = (v54 & 1) == 0;
        v57 = __OFADD__(v55, v56);
        v58 = v55 + v56;
        if (v57)
        {
          goto LABEL_60;
        }

        v59 = v54;
        if (v51[3] >= v58)
        {
          if ((v52 & 1) == 0)
          {
            v65 = v53;
            sub_228449090();
            v53 = v65;
          }

          v60 = v44;
          v30 = v152;
          if ((v59 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else
        {
          sub_2284462D0(v58, v52);
          v60 = v44;
          v53 = sub_2283F6D18(v44, v34);
          if ((v59 & 1) != (v61 & 1))
          {
            goto LABEL_63;
          }

          v30 = v152;
          if ((v59 & 1) == 0)
          {
LABEL_33:
            v30[(v53 >> 6) + 8] |= 1 << v53;
            v62 = (v30[6] + 16 * v53);
            *v62 = v60;
            v62[1] = v34;
            *(v30[7] + 8 * v53) = v42;

            v63 = v30[2];
            v57 = __OFADD__(v63, 1);
            v64 = v63 + 1;
            if (v57)
            {
              goto LABEL_61;
            }

            v30[2] = v64;
            goto LABEL_14;
          }
        }

        *(v30[7] + 8 * v53) = v42;

LABEL_14:
        v28 = (v28 + 1);
        v29 += 7;
        v26 = v145;
        if (v146 == v28)
        {
          goto LABEL_36;
        }
      }
    }

    v30 = MEMORY[0x277D84F98];
LABEL_36:
    v22 = (v143 - 1) & v143;

    v66 = 0;
    v67 = (v30 + 8);
    v68 = 1 << *(v30 + 32);
    if (v68 < 64)
    {
      v69 = ~(-1 << v68);
    }

    else
    {
      v69 = -1;
    }

    v70 = v69 & v30[8];
    v71 = (v68 + 63) >> 6;
    v145 = (v30 + 8);
    v141 = v71;
    v18 = v127;
    v143 = v22;
    for (i = v30; v70; v71 = v141)
    {
LABEL_44:
      v73 = __clz(__rbit64(v70)) | (v66 << 6);
      v74 = (v30[6] + 16 * v73);
      v76 = *v74;
      v75 = v74[1];
      v77 = *(v30[7] + 8 * v73);
      v152 = 0;
      v153 = 0xE000000000000000;

      sub_22855DC6C();

      v152 = 0xD00000000000002FLL;
      v153 = v132;
      MEMORY[0x22AAB92A0](v76, v75);
      v78 = v153;
      v151 = v152;
      v152 = 0;
      v153 = 0xE000000000000000;
      sub_22855DC6C();
      MEMORY[0x22AAB92A0](0xD00000000000003BLL, v131 | 0x8000000000000000);
      MEMORY[0x22AAB92A0](v76, v75);

      v147 = v153;
      v148 = v152;
      if (v139)
      {

        v151 = 0;
        v78 = 0;
      }

      v150 = v78;
      v79 = v77[2];
      if (v79)
      {
        v152 = MEMORY[0x277D84F90];
        sub_2284272C0(0, v79, 0);
        v80 = v152;
        v146 = v77;
        v81 = v77 + 10;
        do
        {
          v82 = *(v81 - 1);
          v83 = *v81;
          v152 = v80;
          v85 = v80[2];
          v84 = v80[3];

          if (v85 >= v84 >> 1)
          {
            sub_2284272C0((v84 > 1), v85 + 1, 1);
            v80 = v152;
          }

          v80[2] = v85 + 1;
          v86 = &v80[2 * v85];
          v86[4] = v82;
          v86[5] = v83;
          v81 += 7;
          --v79;
        }

        while (v79);
        v30 = i;
        v77 = v146;
      }

      type metadata accessor for HealthAppNotificationManager();
      v87 = v140;
      v88 = *(v140 + 16);
      v89 = sub_22855D39C();
      [v88 removePendingNotificationRequestsWithIdentifiers_];

      v90 = *(v87 + 16);
      v91 = sub_22855D39C();
      [v90 removeDeliveredNotificationsWithIdentifiers_];

      v152 = v77;
      sub_2284AE260(0, &qword_280DE9638, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D83940]);
      v92 = v137;
      sub_22855CDCC();
      v93 = swift_allocObject();
      v94 = v150;
      v93[2] = v151;
      v93[3] = v94;
      v95 = v142;
      v96 = v147;
      v97 = v148;
      v93[4] = v142;
      v93[5] = v97;
      v93[6] = v96;
      v93[7] = v87;
      v98 = v95;

      sub_22855CCBC();
      sub_2284ADF84(0, &qword_280DE9958, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277CBCD88]);
      sub_2283FD034(&qword_280DE9850, sub_2284ADB00, MEMORY[0x277CBCE80]);
      sub_2284AE004(&qword_280DE9960, &qword_280DE9958, &type metadata for PluginFeedItem.NotificationIdentifier);
      v99 = v135;
      v100 = v138;
      sub_22855CF9C();

      (*v130)(v92, v100);
      sub_2283FD034(&qword_280DE9A58, sub_2284ADB7C, MEMORY[0x277CBCCE0]);
      v101 = v133;
      v102 = v136;
      sub_22855CF1C();
      (*v129)(v99, v102);
      sub_2283FD034(&qword_280DE9A88, sub_2284ADD48, MEMORY[0x277CBCCD0]);
      v103 = v134;
      sub_22855CE6C();
      (*v128)(v101, v103);

      MEMORY[0x22AAB9400](v104);
      if (v154[2] >= v154[3] >> 1)
      {
        sub_22855D3EC();
      }

      v70 &= v70 - 1;
      sub_22855D43C();

      v18 = v154;
      v22 = v143;
      v67 = v145;
    }

    while (1)
    {
      v72 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        result = sub_22855E1BC();
        __break(1u);
        return result;
      }

      if (v72 >= v71)
      {
        break;
      }

      v70 = *&v67[8 * v72];
      ++v66;
      if (v70)
      {
        v66 = v72;
        goto LABEL_44;
      }
    }

    v23 = v126;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_62;
    }

    if (v24 >= v124)
    {
      break;
    }

    v22 = *(v125 + 8 * v24);
    ++v23;
    if (v22)
    {
      goto LABEL_11;
    }
  }

  v152 = v18;
  sub_2284AD530(0);
  sub_2284AE35C(0, &qword_280DE95D8, sub_2284AD530);
  sub_2283FD034(&qword_280DE9900, sub_2284AD530, MEMORY[0x277CBCD90]);
  sub_2284ACE0C(&qword_280DE95D0, &qword_280DE95D8, sub_2284AD530, MEMORY[0x277D83970]);
  v105 = v114;
  sub_22855CC2C();
  sub_2283FD034(&qword_280DE99C8, sub_2284AD99C, MEMORY[0x277CBCD48]);
  v106 = v116;
  v107 = v117;
  sub_22855CF1C();
  sub_2284AE260(0, &qword_280DE9638, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D83940]);
  sub_2283FD034(&qword_280DE9A78, sub_2284AD908, MEMORY[0x277CBCCD0]);
  v108 = v118;
  v109 = v121;
  sub_22855CE8C();
  (*(v119 + 8))(v106, v109);
  sub_2283FD034(&qword_280DE9B28, sub_2284ADA30, MEMORY[0x277CBCC08]);
  v110 = v122;
  v111 = sub_22855CE6C();
  (*(v120 + 8))(v108, v110);
  (*(v115 + 8))(v105, v107);
  v152 = v111;
  v112 = sub_22855CE6C();

  return v112;
}

void sub_2284ABA00(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2284272C0(0, v2, 0);
    v4 = (a1 + 80);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v14 + 16);
      v8 = *(v14 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_2284272C0((v8 > 1), v7 + 1, 1);
      }

      *(v14 + 16) = v7 + 1;
      v9 = v14 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 7;
      --v2;
    }

    while (v2);
  }

  type metadata accessor for HealthAppNotificationManager();
  v10 = *(v1 + 16);
  v11 = sub_22855D39C();
  [v10 removePendingNotificationRequestsWithIdentifiers_];

  v12 = *(v1 + 16);
  v13 = sub_22855D39C();
  [v12 removeDeliveredNotificationsWithIdentifiers_];
}

uint64_t sub_2284ABB54@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v65 = a7;
  v67 = a6;
  v66 = a5;
  v71 = a8;
  sub_2284ADE2C(0);
  v12 = v11;
  v69 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v68 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284ADED4(0);
  v15 = v14;
  v63 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284AE068(0);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *a1;
  v77 = MEMORY[0x277D84F90];
  if (a3)
  {
    v23 = objc_allocWithZone(MEMORY[0x277CCD570]);

    v62 = a3;
    v24 = sub_22855D17C();
    v25 = [v23 initWithCategory:1 domainName:v24 healthStore:a4];

    v26 = v70;
    v27 = *(v70 + 16);
    v28 = MEMORY[0x277D84F90];
    if (v27)
    {
      v60 = v17;
      v61 = v15;
      v64 = v12;
      v75[0] = MEMORY[0x277D84F90];
      sub_22855DD4C();
      sub_2284AE260(0, &qword_280DEE7A0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v73 = v29;
      v30 = (v26 + 72);
      v72 = xmmword_228560580;
      do
      {
        v31 = *(v30 - 40);
        v32 = *(v30 - 24);
        v33 = *(v30 - 8);
        v85 = *(v30 + 1);
        v83 = v32;
        v84 = v33;
        v82 = v31;
        v86 = *v30;
        v34 = swift_allocObject();
        v35 = v86;
        *(v34 + 16) = v72;
        *(v34 + 32) = v35;
        sub_22842B9BC(&v82, &v78);
        v36 = v25;
        sub_2284AE2B0(&v86, &v78);
        v37 = sub_22855D6EC();

        v76 = v37;
        v38 = swift_allocObject();
        v39 = v83;
        *(v38 + 16) = v82;
        *(v38 + 32) = v39;
        *(v38 + 48) = v84;
        *(v38 + 64) = v85;
        v40 = swift_allocObject();
        *(v40 + 16) = sub_2284AEB7C;
        *(v40 + 24) = v38;
        sub_22842B9BC(&v82, &v78);
        sub_2284ADF84(0, &qword_280DE9780, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCEA8]);
        sub_2284AE0FC();
        sub_22855CE8C();

        sub_2283FD034(&qword_27D83FBE8, sub_2284AE068, MEMORY[0x277CBCC08]);
        sub_22855CE6C();
        sub_22848CF64(&v82);
        (*(v20 + 8))(v22, v19);
        sub_22855DD1C();
        sub_22855DD5C();
        sub_22855DD6C();
        sub_22855DD2C();
        v30 = (v30 + 56);
        --v27;
      }

      while (v27);
      v28 = v75[0];
      v12 = v64;
      v15 = v61;
      v17 = v60;
    }

    sub_2284A7C30(v28);
  }

  v41 = v67;
  v42 = v71;
  if (v67)
  {
    type metadata accessor for HealthAppNotificationContentStateManager();
    v43 = *(v65 + 48);

    v44 = v43;
    HealthAppNotificationContentStateManager.__allocating_init(healthStore:domain:)(v44, v66, v41);
    v45 = v70;
    v46 = *(v70 + 16);
    v47 = MEMORY[0x277D84F90];
    if (v46)
    {
      v64 = v12;
      v76 = MEMORY[0x277D84F90];
      sub_22855DD4C();
      v48 = (v45 + 32);
      v73 = (v63 + 8);
      do
      {
        v49 = *v48;
        v50 = *(v48 + 6);
        v51 = v48[2];
        v79 = v48[1];
        v80 = v51;
        v81 = v50;
        v78 = v49;
        v52 = *(&v51 + 1);
        sub_22842B9BC(&v78, v75);
        v74 = sub_228496800(v52, v50);
        v53 = swift_allocObject();
        v54 = v79;
        *(v53 + 16) = v78;
        *(v53 + 32) = v54;
        *(v53 + 48) = v80;
        *(v53 + 64) = v81;
        v55 = swift_allocObject();
        *(v55 + 16) = sub_2284AE1F8;
        *(v55 + 24) = v53;
        sub_22842B9BC(&v78, v75);
        v56 = MEMORY[0x277D84F78];
        sub_2284ADF84(0, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
        sub_2284AE004(&qword_280DE9890, &qword_280DE9888, v56 + 8);
        sub_22855CE8C();

        sub_2283FD034(&qword_27D83FBE0, sub_2284ADED4, MEMORY[0x277CBCC08]);
        sub_22855CE6C();
        sub_22848CF64(&v78);
        (*v73)(v17, v15);
        sub_22855DD1C();
        sub_22855DD5C();
        sub_22855DD6C();
        sub_22855DD2C();
        v48 = (v48 + 56);
        --v46;
      }

      while (v46);
      v47 = v76;
      v42 = v71;
      v12 = v64;
    }

    sub_2284A7C30(v47);
  }

  v75[0] = v77;
  sub_2284ADF84(0, &qword_280DE9958, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277CBCD88]);
  sub_2284AE17C(0);
  sub_2284AE004(&qword_280DE9960, &qword_280DE9958, &type metadata for PluginFeedItem.NotificationIdentifier);
  sub_2283FD034(&qword_280DE95E0, sub_2284AE17C, MEMORY[0x277D83970]);
  v57 = v68;
  sub_22855CC2C();
  sub_2283FD034(&qword_280DE99D8, sub_2284ADE2C, MEMORY[0x277CBCD48]);
  v58 = sub_22855CE6C();
  result = (*(v69 + 8))(v57, v12);
  *v42 = v58;
  return result;
}

uint64_t HealthAppNotificationManager.deinit()
{
  v1 = *(v0 + 48);

  return v0;
}

uint64_t HealthAppNotificationManager.__deallocating_deinit()
{
  v1 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_2284AC558(uint64_t a1)
{
  v2 = v1;
  sub_2284ACE50(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  v10[2] = sub_2284AEB84;
  v10[3] = v2;
  v10[4] = sub_2284AEB90;
  v10[5] = v9;
  sub_2284ACEE4(0);
  sub_2283FD034(&qword_27D83FB98, sub_2284ACEE4, MEMORY[0x277CBCC08]);
  swift_retain_n();

  sub_22855CE2C();
  sub_2283FD034(&qword_27D83FBA0, sub_2284ACE50, MEMORY[0x277CBCEB8]);
  v11 = sub_22855CE6C();

  (*(v6 + 8))(v8, v5);
  return v11;
}

uint64_t sub_2284AC76C(uint64_t a1)
{
  v2 = v1;
  sub_2284AD0F8(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  v10[2] = sub_2284AEB80;
  v10[3] = v2;
  v10[4] = sub_2284AEB8C;
  v10[5] = v9;
  sub_2284AD18C(0);
  sub_2283FD034(&qword_27D83FBD0, sub_2284AD18C, MEMORY[0x277CBCC08]);
  swift_retain_n();

  sub_22855CE2C();
  sub_2283FD034(&qword_27D83FBD8, sub_2284AD0F8, MEMORY[0x277CBCEB8]);
  v11 = sub_22855CE6C();

  (*(v6 + 8))(v8, v5);
  return v11;
}

void sub_2284AC998(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = *(v4 + 16);
  v7 = sub_22855D39C();
  [v6 *a4];
}

uint64_t sub_2284AC9F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22855DB4C();
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
      result = sub_22855DB4C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2284AD00C(0, &qword_280DE95B0, &qword_280DE9490, 0x277CCD928);
          sub_2284AEAC0();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2284A51BC(v13, i, a3);
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
        sub_2283EF310(0, &qword_280DE9490, 0x277CCD928);
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

uint64_t sub_2284ACB8C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22855DB4C();
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
      result = sub_22855DB4C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2284AE35C(0, &qword_27D83FBF0, type metadata accessor for HealthPlatformContextProvider.Context);
          sub_2284ACE0C(&qword_27D83FBF8, &qword_27D83FBF0, type metadata accessor for HealthPlatformContextProvider.Context, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2284A52C4(v13, i, a3);
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
        type metadata accessor for HealthPlatformContextProvider.Context(0);
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

char *sub_2284ACD40@<X0>(char **a1@<X0>, char **a2@<X8>)
{
  result = sub_2284A7354(*a1);
  *a2 = result;
  return result;
}

BOOL sub_2284ACD6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
      return sub_22855D9AC() & 1;
    }

    return 0;
  }

  return !v2;
}

uint64_t sub_2284ACE0C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2284AE35C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2284ACE50(uint64_t a1)
{
  if (!qword_27D83FB70)
  {
    sub_2284ACEE4(255);
    sub_2283FD034(&qword_27D83FB98, sub_2284ACEE4, MEMORY[0x277CBCC08]);
    v1 = sub_22855CE3C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83FB70);
    }
  }
}

void sub_2284ACEE4(uint64_t a1)
{
  if (!qword_27D83FB78)
  {
    sub_2284ACFA0(255, &qword_27D83FB80, &qword_27D83FB88, &qword_280DE92E8, 0x277CE1FC0);
    sub_2284AD00C(255, &qword_27D83FB88, &qword_280DE92E8, 0x277CE1FC0);
    sub_2284AD064();
    v1 = sub_22855CB6C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83FB78);
    }
  }
}

void sub_2284ACFA0(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    sub_2284AD00C(255, a3, a4, a5);
    v6 = sub_22855CDFC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2284AD00C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_2283EF310(255, a3, a4);
    v5 = sub_22855D47C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2284AD064()
{
  result = qword_27D83FB90;
  if (!qword_27D83FB90)
  {
    sub_2284ACFA0(255, &qword_27D83FB80, &qword_27D83FB88, &qword_280DE92E8, 0x277CE1FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FB90);
  }

  return result;
}

void sub_2284AD0F8(uint64_t a1)
{
  if (!qword_27D83FBA8)
  {
    sub_2284AD18C(255);
    sub_2283FD034(&qword_27D83FBD0, sub_2284AD18C, MEMORY[0x277CBCC08]);
    v1 = sub_22855CE3C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83FBA8);
    }
  }
}

void sub_2284AD18C(uint64_t a1)
{
  if (!qword_27D83FBB0)
  {
    sub_2284ACFA0(255, &qword_27D83FBB8, &qword_27D83FBC0, &qword_27D83F918, 0x277CE1F78);
    sub_2284AD00C(255, &qword_27D83FBC0, &qword_27D83F918, 0x277CE1F78);
    sub_2284AD248();
    v1 = sub_22855CB6C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83FBB0);
    }
  }
}

unint64_t sub_2284AD248()
{
  result = qword_27D83FBC8;
  if (!qword_27D83FBC8)
  {
    sub_2284ACFA0(255, &qword_27D83FBB8, &qword_27D83FBC0, &qword_27D83F918, 0x277CE1F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FBC8);
  }

  return result;
}

void sub_2284AD2DC(uint64_t a1)
{
  if (!qword_280DE9AB0)
  {
    sub_2284AD3AC(255);
    sub_2284AE260(255, &qword_280DE9638, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D83940]);
    sub_2283FD034(&qword_280DE97C0, sub_2284AD3AC, MEMORY[0x277CBCEB0]);
    v1 = sub_22855CBCC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9AB0);
    }
  }
}

void sub_2284AD3AC(uint64_t a1)
{
  if (!qword_280DE97B8)
  {
    sub_2284AD42C();
    sub_2283F9B94(255, &qword_280DECFE0, MEMORY[0x277D84948]);
    v1 = sub_22855CDFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE97B8);
    }
  }
}

void sub_2284AD42C()
{
  if (!qword_280DE96D0)
  {
    v0 = sub_22855D12C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE96D0);
    }
  }
}

void sub_2284AD490(uint64_t a1)
{
  if (!qword_280DE9A30)
  {
    sub_2284AD530(255);
    sub_2283FD034(&qword_280DE9900, sub_2284AD530, MEMORY[0x277CBCD90]);
    v1 = sub_22855CBEC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9A30);
    }
  }
}

void sub_2284AD530(uint64_t a1)
{
  if (!qword_280DE98F8)
  {
    sub_2284AE260(255, &qword_280DE9638, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D83940]);
    sub_2283F9B94(255, &qword_280DECFE0, MEMORY[0x277D84948]);
    v1 = sub_22855CCCC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE98F8);
    }
  }
}

uint64_t objectdestroy_17Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_2284AD908(uint64_t a1)
{
  if (!qword_280DE9A70)
  {
    sub_2284AD99C(255);
    sub_2283FD034(&qword_280DE99C8, sub_2284AD99C, MEMORY[0x277CBCD48]);
    v1 = sub_22855CBDC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9A70);
    }
  }
}

void sub_2284AD99C(uint64_t a1)
{
  if (!qword_280DE99C0)
  {
    sub_2284AD530(255);
    sub_2283FD034(&qword_280DE9900, sub_2284AD530, MEMORY[0x277CBCD90]);
    v1 = sub_22855CC1C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE99C0);
    }
  }
}

void sub_2284ADA30(uint64_t a1)
{
  if (!qword_280DE9B20)
  {
    sub_2284AD908(255);
    sub_2284AE260(255, &qword_280DE9638, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D83940]);
    sub_2283FD034(&qword_280DE9A78, sub_2284AD908, MEMORY[0x277CBCCD0]);
    v1 = sub_22855CB6C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9B20);
    }
  }
}

void sub_2284ADB00(uint64_t a1)
{
  if (!qword_280DE9848)
  {
    sub_2284AE260(255, &qword_280DE9638, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D83940]);
    v1 = sub_22855CDBC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9848);
    }
  }
}

void sub_2284ADB7C(uint64_t a1)
{
  if (!qword_280DE9A50)
  {
    sub_2284ADF84(255, &qword_280DE9958, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277CBCD88]);
    sub_2284ADC7C(255);
    sub_2284AE004(&qword_280DE9960, &qword_280DE9958, &type metadata for PluginFeedItem.NotificationIdentifier);
    sub_2283FD034(qword_280DE9C00, sub_2284ADC7C, MEMORY[0x277CBCBA0]);
    v1 = sub_22855CBEC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9A50);
    }
  }
}

void sub_2284ADC7C(uint64_t a1)
{
  if (!qword_280DE9BF8)
  {
    sub_2284ADB00(255);
    sub_2283F9B94(255, &qword_280DECFE0, MEMORY[0x277D84948]);
    sub_2283FD034(&qword_280DE9850, sub_2284ADB00, MEMORY[0x277CBCE80]);
    v1 = sub_22855CB3C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9BF8);
    }
  }
}

void sub_2284ADD48(uint64_t a1)
{
  if (!qword_280DE9A80)
  {
    sub_2284ADB7C(255);
    sub_2283FD034(&qword_280DE9A58, sub_2284ADB7C, MEMORY[0x277CBCCE0]);
    v1 = sub_22855CBDC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9A80);
    }
  }
}

uint64_t objectdestroy_8Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_2284ADE2C(uint64_t a1)
{
  if (!qword_280DE99D0)
  {
    sub_2284ADF84(255, &qword_280DE9958, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277CBCD88]);
    sub_2284AE004(&qword_280DE9960, &qword_280DE9958, &type metadata for PluginFeedItem.NotificationIdentifier);
    v1 = sub_22855CC1C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE99D0);
    }
  }
}

void sub_2284ADED4(uint64_t a1)
{
  if (!qword_280DE9BA8)
  {
    v1 = MEMORY[0x277D84F78];
    sub_2284ADF84(255, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
    sub_2284AE004(&qword_280DE9890, &qword_280DE9888, v1 + 8);
    v2 = sub_22855CB6C();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE9BA8);
    }
  }
}

void sub_2284ADF84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_2283F9B94(255, &qword_280DECFE0, MEMORY[0x277D84948]);
    v9 = a4(a1, a3, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2284AE004(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2284ADF84(255, a2, a3, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2284AE068(uint64_t a1)
{
  if (!qword_280DE9B80)
  {
    sub_2284ADF84(255, &qword_280DE9780, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCEA8]);
    sub_2284AE0FC();
    v1 = sub_22855CB6C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9B80);
    }
  }
}

unint64_t sub_2284AE0FC()
{
  result = qword_280DE9788;
  if (!qword_280DE9788)
  {
    sub_2284ADF84(255, &qword_280DE9780, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCEA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE9788);
  }

  return result;
}

void sub_2284AE17C(uint64_t a1)
{
  if (!qword_280DE95E8)
  {
    sub_2284ADF84(255, &qword_280DE9958, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277CBCD88]);
    v1 = sub_22855D47C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE95E8);
    }
  }
}

uint64_t sub_2284AE1F8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 48);
  *(a1 + 48) = *(v1 + 64);
  return sub_22842B9BC(v1 + 16, v4);
}

void sub_2284AE260(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t objectdestroy_61Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

void sub_2284AE35C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855D47C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2284AE3D0(uint64_t *a1, uint64_t a2)
{
  v2 = *a2;
  v32 = *(a2 + 8);
  v33 = *(a2 + 16);
  v30 = *(a2 + 40);
  v31 = *(a2 + 24);
  v34 = *(a2 + 32);
  v35 = *(a2 + 48);
  v3 = *a1;
  v4 = *a1 + 64;
  v5 = 1 << *(*a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*a1 + 64);
  v8 = (v5 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  while (v7)
  {
LABEL_11:
    v11 = *(v3[6] + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));
    v12 = [v11 profileIdentifier];
    v13 = v12;
    if (v2)
    {
      sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
      v14 = sub_22855D9AC();

      if (v14)
      {

        if (v3[2])
        {
          v15 = sub_228443DA4(v11);
          v16 = a1;
          v18 = v34;
          v17 = v35;
          if (v19)
          {
            v20 = *(v3[7] + 8 * v15);
          }

          else
          {
            v20 = MEMORY[0x277D84F90];
          }
        }

        else
        {
          v20 = MEMORY[0x277D84F90];
          v16 = a1;
          v18 = v34;
          v17 = v35;
        }

        sub_2284AE260(0, &qword_27D83F400, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D84560]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_228560580;
        *(inited + 32) = v2;
        *(inited + 40) = v32;
        *(inited + 48) = v33;
        *(inited + 56) = v31;
        *(inited + 64) = v18;
        *(inited + 72) = v30;
        *(inited + 80) = v17;
        v28 = v2;

        sub_2284A7A0C(inited);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = *v16;
        sub_22845B840(v20, v11, isUniquelyReferenced_nonNull_native);

        goto LABEL_18;
      }
    }

    else
    {
    }

    v7 &= v7 - 1;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  if (!v2)
  {
    return;
  }

  v21 = objc_allocWithZone(MEMORY[0x277CCD4D8]);
  v22 = v2;
  v23 = [v21 init];
  [v23 setProfileIdentifier_];
  [v23 resume];

  sub_2284AE260(0, &qword_27D83F400, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D84560]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_228560580;
  *(v24 + 32) = v2;
  *(v24 + 40) = v32;
  *(v24 + 48) = v33;
  *(v24 + 56) = v31;
  *(v24 + 64) = v34;
  *(v24 + 72) = v30;
  *(v24 + 80) = v35;
  v25 = v22;

  v16 = a1;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *a1;
  sub_22845B840(v24, v23, v26);

LABEL_18:
  *v16 = v37;
}

uint64_t sub_2284AE75C(uint64_t a1)
{
  result = MEMORY[0x277D84F98];
  v18 = MEMORY[0x277D84F98];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 80);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = *(v4 - 3);
      v8 = *(v4 - 2);
      v9 = *(v4 - 4);
      v12 = *(v4 - 3);
      v13 = v9;
      v14 = v7;
      v15 = v8;
      v16 = v5;
      v17 = v6;
      v10 = v12;

      sub_2284AE3D0(&v18, &v12);
      v11 = v12;

      v4 += 7;
      --v3;
    }

    while (v3);
    return v18;
  }

  return result;
}

uint64_t sub_2284AE8C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2284AE954(uint64_t a1)
{
  sub_2284AE9B0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2284AE9B0(uint64_t a1)
{
  if (!qword_27D83FC00)
  {
    sub_2283F9B94(255, &qword_27D83F440, &protocol descriptor for CoalescingNotification);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D83FC00);
    }
  }
}

void sub_2284AEA2C(uint64_t a1)
{
  if (!qword_27D83FC08)
  {
    sub_2283F9B94(255, &qword_27D83F440, &protocol descriptor for CoalescingNotification);
    v1 = sub_22855DA2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83FC08);
    }
  }
}

unint64_t sub_2284AEAC0()
{
  result = qword_27D83FC10;
  if (!qword_27D83FC10)
  {
    sub_2284AD00C(255, &qword_280DE95B0, &qword_280DE9490, 0x277CCD928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FC10);
  }

  return result;
}

id EncodedFeatureTag.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id EncodedFeatureTag.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for EncodedFeatureTag();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id EncodedFeatureTag.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EncodedFeatureTag();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FileMonitorPublisher.init(url:event:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = -1;
  *(a3 + 8) = 0;
  v6 = type metadata accessor for FileMonitorPublisher(0);
  v7 = *(v6 + 24);
  v8 = sub_22855C06C();
  (*(*(v8 - 8) + 32))(a3 + v7, a1, v8);
  v9 = *(v6 + 28);
  v10 = sub_22855D89C();
  v11 = *(*(v10 - 8) + 32);

  return v11(a3 + v9, a2, v10);
}

uint64_t FileMonitorPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[1] = a2;
  v21 = a1;
  v6 = sub_22855D89C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22855C06C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FileMonitorPublisher.Inner(0, a2, a3, v14);
  v16 = type metadata accessor for FileMonitorPublisher(0);
  (*(v11 + 16))(v13, v3 + *(v16 + 24), v10);
  (*(v7 + 16))(v9, v3 + *(v16 + 28), v6);
  v18 = sub_2284B0DE0(v21, v13, v9, v17);
  v22[3] = v15;
  v22[4] = swift_getWitnessTable();
  v22[0] = v18;
  sub_22855CC5C();
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

uint64_t sub_2284AF030@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  v4 = sub_22855C50C();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_2284AF104(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  v4 = sub_22855C50C();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

uint64_t sub_2284AF2E8()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000] & *v0;
  v5 = sub_22855CFBC();
  v49 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22855CFEC();
  v48 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *((v3 & v2) + 0x50);
  v50 = *((v3 & v2) + 0x58);
  sub_22855C4EC();
  swift_getWitnessTable();
  v12 = sub_22855E2FC();
  result = MEMORY[0x28223BE20](v12);
  v16 = &v45 - v15;
  if (!*(v1 + *((v3 & v2) + 0x90)) && *(v1 + *(v4 + 136)) == -1)
  {
    v46 = result;
    v47 = v5;
    v45 = v14;
    v17 = *(v4 + 112);
    v18 = sub_22855BFBC();
    [v18 fileSystemRepresentation];
    v19 = v18;
    v20 = sub_22855CACC();
    v21 = MEMORY[0x277D85000];
    *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x88)) = v20;
    if (*(v1 + *((*v21 & *v1) + 0x88)) == -1)
    {
      v49 = v17;
      if (qword_280DEEC90 != -1)
      {
        swift_once();
      }

      v29 = sub_22855CABC();
      __swift_project_value_buffer(v29, qword_280DEEC98);
      v30 = v1;
      v31 = sub_22855CA8C();
      v32 = sub_22855D68C();
      v33 = os_log_type_enabled(v31, v32);
      v34 = v50;
      if (v33)
      {
        v35 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        aBlock = v48;
        *v35 = 136380675;
        sub_22855C06C();
        sub_2284B1014(&qword_27D83FC20, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v36 = sub_22855E11C();
        v38 = v37;

        v39 = sub_2283F8938(v36, v38, &aBlock);

        *(v35 + 4) = v39;
        _os_log_impl(&dword_2283ED000, v31, v32, "Failed to open file descriptor: %{private}s", v35, 0xCu);
        v40 = v48;
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x22AABAD40](v40, -1, -1);
        MEMORY[0x22AABAD40](v35, -1, -1);
      }

      else
      {
      }

      LOBYTE(aBlock) = 1;
      type metadata accessor for FileMonitorPublisher.Inner(0, v11, v34, v44);
      swift_getWitnessTable();
      sub_22855C43C();
      return (*(v45 + 8))(v16, v46);
    }

    else
    {
      sub_2283EF310(0, &qword_280DED118, 0x277D85CA0);
      *(v1 + *((*v21 & *v1) + 0x90)) = sub_22855D8BC();
      result = swift_unknownObjectRelease();
      v22 = *v21 & *v1;
      v23 = v11;
      if (*(v1 + *(v22 + 0x90)))
      {
        swift_getObjectType();
        v24 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v25 = swift_allocObject();
        v26 = v50;
        v25[2] = v23;
        v25[3] = v26;
        v25[4] = v24;
        v55 = sub_2284B0FFC;
        v56 = v25;
        aBlock = MEMORY[0x277D85DD0];
        v52 = 1107296256;
        v53 = sub_228401F54;
        v54 = &block_descriptor_14;
        v27 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();

        sub_22855CFDC();
        sub_2284B00A4();
        sub_22855D8CC();
        _Block_release(v27);
        swift_unknownObjectRelease();
        v28 = v47;
        (*(v49 + 8))(v7, v47);
        (v48[1])(v10, v8);

        v22 = *MEMORY[0x277D85000] & *v1;
      }

      else
      {
        v26 = v50;
        v28 = v47;
      }

      if (*(v1 + *(v22 + 144)))
      {
        swift_getObjectType();
        v41 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v42 = swift_allocObject();
        v42[2] = v23;
        v42[3] = v26;
        v42[4] = v41;
        v55 = sub_2284B1008;
        v56 = v42;
        aBlock = MEMORY[0x277D85DD0];
        v52 = 1107296256;
        v53 = sub_228401F54;
        v54 = &block_descriptor_11_0;
        v43 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();

        sub_22855CFDC();
        sub_2284B00A4();
        sub_22855D8DC();
        _Block_release(v43);
        swift_unknownObjectRelease();
        (*(v49 + 8))(v7, v28);
        (v48[1])(v10, v8);

        v22 = *MEMORY[0x277D85000] & *v1;
      }

      if (*(v1 + *(v22 + 144)))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_22855D90C();
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_2284AFBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22855C4EC();
  swift_getWitnessTable();
  v5 = sub_22855E2FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = sub_22855D89C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v16 = v6;
    if (*(Strong + *((*MEMORY[0x277D85000] & *Strong) + 0x90)))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_22855D8EC();
      sub_22855D88C();
      type metadata accessor for FileMonitorPublisher.Inner(0, a2, a3, v15);
      swift_getWitnessTable();
      sub_22855C42C();
      swift_unknownObjectRelease();

      (*(v16 + 8))(v8, v5);
      (*(v10 + 8))(v12, v9);
    }

    else
    {
    }
  }
}

void *sub_2284AFE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22855C4EC();
  swift_getWitnessTable();
  v5 = sub_22855E2FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *result;
    v16 = v5;
    v11 = MEMORY[0x277D85000];
    v12 = (result + *((*MEMORY[0x277D85000] & v10) + 0x60));
    v13 = result;
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    sub_22855C39C();
    close(*(v13 + *((*v11 & *v13) + 0x88)));
    *(v13 + *((*v11 & *v13) + 0x88)) = -1;
    *(v13 + *((*v11 & *v13) + 0x90)) = 0;
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    sub_22855C3AC();
    v17 = 1;
    type metadata accessor for FileMonitorPublisher.Inner(0, a2, a3, v14);
    swift_getWitnessTable();
    sub_22855C43C();

    return (*(v6 + 8))(v8, v16);
  }

  return result;
}

uint64_t sub_2284B00A4()
{
  sub_22855CFBC();
  sub_2284B1014(&qword_280DED2D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v0 = MEMORY[0x277D85198];
  sub_2283F4CD8(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_2283F46D0(&qword_280DED260, &qword_280DED270, v0);
  return sub_22855DA9C();
}

void sub_2284B01A0()
{
  if (*(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x90)))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_22855D8FC();

    swift_unknownObjectRelease();
  }
}

id sub_2284B0224(void *a1)
{
  v1 = a1;
  sub_2284B028C();

  v2 = sub_22855D17C();

  return v2;
}

uint64_t sub_2284B028C()
{
  swift_getObjectType();
  MEMORY[0x22AAB92A0](60, 0xE100000000000000);
  v0 = sub_22855E34C();
  MEMORY[0x22AAB92A0](v0);

  MEMORY[0x22AAB92A0](32, 0xE100000000000000);
  sub_22855DDDC();
  MEMORY[0x22AAB92A0](62, 0xE100000000000000);
  return 0;
}

id sub_2284B038C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FileMonitorPublisher.Inner(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_2284B03FC(char *a1)
{
  v2 = MEMORY[0x277D85000];
  __swift_destroy_boxed_opaque_existential_0(&a1[*((*MEMORY[0x277D85000] & *a1) + 0x60)]);
  v3 = *((*v2 & *a1) + 0x68);
  v4 = sub_22855C50C();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
  v5 = *((*v2 & *a1) + 0x70);
  v6 = sub_22855C06C();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);
  v7 = *((*v2 & *a1) + 0x78);
  v8 = sub_22855D89C();
  (*(*(v8 - 8) + 8))(&a1[v7], v8);

  return swift_unknownObjectRelease();
}

uint64_t (*sub_2284B05DC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2284AF1E0(v2);
  return sub_2284B064C;
}

void sub_2284B064C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_2284B0694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FileMonitorPublisher.Inner(0, *(a2 + 80), *(a2 + 88), a4);

  return sub_22855C42C();
}

uint64_t sub_2284B06F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FileMonitorPublisher.Inner(0, *(a2 + 80), *(a2 + 88), a4);

  return sub_22855C43C();
}

id sub_2284B0804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v36 = a2;
  v38 = a1;
  ObjectType = swift_getObjectType();
  v5 = *v3;
  v6 = MEMORY[0x277D85000];
  v7 = *MEMORY[0x277D85000];
  v8 = sub_22855D81C();
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x28223BE20](v8);
  v42 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22855D7BC();
  MEMORY[0x28223BE20](v41);
  v40 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22855CFEC();
  MEMORY[0x28223BE20](v11 - 8);
  v37 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *((v7 & v5) + 0x50);
  v32 = *((v7 & v5) + 0x58);
  v33 = v13;
  v34 = sub_22855C50C();
  v14 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v16 = &v31 - v15;
  v17 = &v3[*((v7 & v5) + 0x60)];
  v18 = type metadata accessor for UnfairLock();
  v19 = swift_allocObject();
  v20 = swift_slowAlloc();
  *(v19 + 16) = v20;
  *v20 = 0;
  v17[3] = v18;
  v17[4] = sub_2284B1014(&qword_280DEDC00, type metadata accessor for UnfairLock, &protocol conformance descriptor for UnfairLock);
  *v17 = v19;
  *&v3[*((*v6 & *v3) + 0x88)] = -1;
  *&v3[*((*v6 & *v3) + 0x90)] = 0;
  v21 = *((*v6 & *v3) + 0x70);
  v35 = sub_22855C06C();
  v22 = *(v35 - 8);
  (*(v22 + 16))(&v3[v21], a2, v35);
  v23 = *((*v6 & *v3) + 0x78);
  v24 = sub_22855D89C();
  v25 = *(v24 - 8);
  (*(v25 + 16))(&v3[v23], v45, v24);
  sub_22855C4FC();
  (*(v14 + 32))(&v3[*((*v6 & *v3) + 0x68)], v16, v34);
  v38 = sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  ObjectType = sub_22855E34C();
  sub_22855CFDC();
  v47 = MEMORY[0x277D84F90];
  sub_2284B1014(&unk_280DED140, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v26 = MEMORY[0x277D85230];
  sub_2283F4CD8(0, &qword_280DED250, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_2283F46D0(&qword_280DED240, &qword_280DED250, v26);
  sub_22855DA9C();
  (*(v43 + 104))(v42, *MEMORY[0x277D85260], v44);
  *&v3[*((*MEMORY[0x277D85000] & *v3) + 0x80)] = sub_22855D84C();
  v28 = type metadata accessor for FileMonitorPublisher.Inner(0, v33, v32, v27);
  v46.receiver = v3;
  v46.super_class = v28;
  v29 = objc_msgSendSuper2(&v46, sel_init);
  (*(v25 + 8))(v45, v24);
  (*(v22 + 8))(v36, v35);
  return v29;
}

uint64_t sub_2284B0E68(uint64_t a1)
{
  result = sub_22855C50C();
  if (v2 <= 0x3F)
  {
    result = sub_22855C06C();
    if (v3 <= 0x3F)
    {
      result = sub_22855D89C();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_2284B1014(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static EnvironmentalStateDescription.pinned(identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D84560];
  sub_2284B2F68(0, &qword_280DE8F20, sub_2284B123C, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228560580;
  *(inited + 32) = 0xD000000000000027;
  *(inited + 40) = 0x8000000228570F90;
  sub_2284B2F68(0, &qword_280DE8F18, sub_2284B1300, v4);
  v6 = swift_initStackObject();
  *(v6 + 32) = a1;
  *(v6 + 16) = xmmword_228560580;
  *(v6 + 40) = a2;
  *(v6 + 48) = 0x64656E6E6970;
  *(v6 + 56) = 0xE600000000000000;

  v7 = sub_22847D1E4(v6);
  swift_setDeallocating();
  sub_2284B2AE8(v6 + 32, sub_2284B1300);
  *(inited + 48) = v7;
  sub_22847D310(inited);
  swift_setDeallocating();
  sub_2284B2AE8(inited + 32, sub_2284B123C);
  sub_22847D328(MEMORY[0x277D84F90]);
  return sub_22855C99C();
}

void sub_2284B123C(uint64_t a1)
{
  if (!qword_280DE9670)
  {
    sub_2284B12A4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE9670);
    }
  }
}

void sub_2284B12A4()
{
  if (!qword_280DE96E0)
  {
    v0 = sub_22855D12C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE96E0);
    }
  }
}

void sub_2284B1300()
{
  if (!qword_280DE9668)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE9668);
    }
  }
}

uint64_t SummaryPinnedContentStateComponent.StateValues.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_22855DFBC();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2284B13C8()
{
  sub_22855E22C();
  sub_22855D20C();
  return sub_22855E27C();
}

uint64_t sub_2284B142C(uint64_t a1)
{
  sub_22855E22C();
  sub_22855D20C();
  return sub_22855E27C();
}

uint64_t sub_2284B1478@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_22855DFBC();

  *a2 = v3 != 0;
  return result;
}

uint64_t SummaryPinnedContentStateComponent.currentState.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t SummaryPinnedContentStateComponent.__allocating_init(observer:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_22855CFAC();
  MEMORY[0x28223BE20](v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = 1;
  (*(v7 + 104))(v6, *MEMORY[0x277D85188]);
  v8 = swift_allocObject();
  sub_2284B1700(a1, a2, sub_2284B1668, 0, sub_2284B16F8, 0, v6);
  return v8;
}

void sub_2284B1668(uint64_t *a2@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v4 = sub_22855BCCC();
  v5 = objc_allocWithZone(v4);
  v6 = v3;
  v7 = sub_22855BCBC();
  v8 = MEMORY[0x277D0FCF0];
  a2[3] = v4;
  a2[4] = v8;

  *a2 = v7;
}

char *sub_2284B1700(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, void), uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v32 = a5;
  v33 = a7;
  v35 = a4;
  v36 = a6;
  v30 = a2;
  v31 = a3;
  v34 = a1;
  v28[0] = *v7;
  v29 = sub_22855D81C();
  v9 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22855D7BC();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22855CFEC();
  MEMORY[0x28223BE20](v13 - 8);
  *(v7 + 10) = 0;
  v14 = sub_2283FA06C();
  v28[1] = "ate";
  v28[2] = v14;
  sub_22855CFDC();
  v37[0] = MEMORY[0x277D84F90];
  sub_2283FA148(&unk_280DED140, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v15 = MEMORY[0x277D85230];
  sub_2284B2F68(0, &qword_280DED250, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_2283FA220(&qword_280DED240, &qword_280DED250, v15);
  sub_22855DA9C();
  (*(v9 + 104))(v11, *MEMORY[0x277D85260], v29);
  *(v7 + 11) = sub_22855D84C();
  v16 = v30;
  *(v7 + 8) = v34;
  *(v7 + 9) = v16;
  swift_unknownObjectRetain();
  v31(v37, 0);
  v32 = v32(0);
  __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  v17 = sub_22855BD2C();
  v18 = sub_2284B2D60();

  v19 = v33;
  sub_2284B2CF8(0);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = v18;
  *(v8 + 2) = v20;
  sub_2283F9B10(v37, (v8 + 24));
  v21 = OBJC_IVAR____TtC14HealthPlatform34SummaryPinnedContentStateComponent_onErrorRetryInterval;
  v22 = sub_22855CFAC();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v8[v21], v19, v22);
  sub_22855C4AC();
  v24 = *(v8 + 11);
  swift_allocObject();
  swift_weakInit();
  sub_22855D1DC();
  v25 = v24;

  v26 = sub_22855C47C();

  *(v8 + 10) = v26;

  (*(v23 + 8))(v19, v22);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v37);
  return v8;
}

uint64_t sub_2284B1D84(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2284B1DDC();
  }

  return result;
}

uint64_t sub_2284B1DDC()
{
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v0 = sub_22855CABC();
  __swift_project_value_buffer(v0, qword_280DE9DF8);
  v1 = sub_22855CA8C();
  v2 = sub_22855D6AC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    v5 = sub_22855E34C();
    v7 = sub_2283F8938(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_2283ED000, v1, v2, "[%{public}s] Pinned content did update notification received, refetching", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x22AABAD40](v4, -1, -1);
    MEMORY[0x22AABAD40](v3, -1, -1);
  }

  return sub_2284B2548();
}

void sub_2284B1F68(uint64_t a1, char a2)
{
  v3 = v2;
  v33 = *v3;
  v34 = sub_22855CFBC();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22855CFEC();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22855D00C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v32 - v15;
  v17 = sub_22855BF2C();
  v18 = [v17 hk_isDatabaseAccessibilityError];

  if (v18)
  {
    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    v19 = sub_22855CABC();
    __swift_project_value_buffer(v19, qword_280DE9DF8);
    v20 = sub_22855CA8C();
    v21 = sub_22855D68C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v22 = 136446210;
      v24 = sub_22855E34C();
      v26 = sub_2283F8938(v24, v25, aBlock);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_2283ED000, v20, v21, "[%{public}s] Failed to get state due to database inaccessible, scheduling retry when unlocked", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AABAD40](v23, -1, -1);
      MEMORY[0x22AABAD40](v22, -1, -1);
    }

    if (qword_27D83F018 != -1)
    {
      swift_once();
    }

    v27 = swift_allocObject();
    swift_weakInit();

    sub_228506C84(sub_2284B2FCC, v27);
  }

  else if (a2)
  {
    v32[1] = *(v3 + 88);
    sub_22855CFFC();
    MEMORY[0x22AAB90D0](v14, v3 + OBJC_IVAR____TtC14HealthPlatform34SummaryPinnedContentStateComponent_onErrorRetryInterval);
    v33 = *(v11 + 8);
    v33(v14, v10);
    v28 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_2284B2F48;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228401F54;
    aBlock[3] = &block_descriptor_15;
    v32[0] = _Block_copy(aBlock);

    sub_22855CFDC();
    v38 = MEMORY[0x277D84F90];
    sub_2283FA148(&qword_280DED2D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v29 = MEMORY[0x277D85198];
    sub_2284B2F68(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2283FA220(&qword_280DED260, &qword_280DED270, v29);
    v30 = v34;
    sub_22855DA9C();
    v31 = v32[0];
    MEMORY[0x22AAB9840](v16, v9, v6, v32[0]);
    _Block_release(v31);
    (*(v37 + 8))(v6, v30);
    (*(v35 + 8))(v9, v36);
    v33(v16, v10);
  }
}

uint64_t sub_2284B2548()
{
  __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
  v1 = sub_22855BD2C();
  v2 = sub_2284B2D60();
  v3 = v0[2];
  MEMORY[0x28223BE20](v2);
  os_unfair_lock_lock((v3 + 24));
  sub_2284B2FEC((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  swift_getObjectType();
  sub_2283FA148(&qword_280DEA6B8, type metadata accessor for SummaryPinnedContentStateComponent, &protocol conformance descriptor for SummaryPinnedContentStateComponent);
  sub_22855C9DC();
}

uint64_t sub_2284B2840(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2284B2548();
  }

  return result;
}

Swift::Void __swiftcall SummaryPinnedContentStateComponent.stopObserving()()
{
  if (*(v0 + 80))
  {

    sub_22855C49C();
  }
}

uint64_t SummaryPinnedContentStateComponent.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC14HealthPlatform34SummaryPinnedContentStateComponent_onErrorRetryInterval;
  v2 = sub_22855CFAC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SummaryPinnedContentStateComponent.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC14HealthPlatform34SummaryPinnedContentStateComponent_onErrorRetryInterval;
  v2 = sub_22855CFAC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2284B2A58()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

void sub_2284B2A98()
{
  if (*(v0 + 80))
  {

    sub_22855C49C();
  }
}

uint64_t sub_2284B2AE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2284B2B4C()
{
  result = qword_27D83FC28;
  if (!qword_27D83FC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FC28);
  }

  return result;
}

uint64_t type metadata accessor for SummaryPinnedContentStateComponent(uint64_t a1)
{
  result = qword_280DEA6A8;
  if (!qword_280DEA6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2284B2BF4(uint64_t a1)
{
  result = sub_22855CFAC();
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

void sub_2284B2CF8(uint64_t a1)
{
  if (!qword_280DE9100)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9100);
    }
  }
}

void *sub_2284B2D60()
{
  v0 = sub_22855BC9C();
  v1 = v0;
  v2 = *(v0 + 16);
  if (!v2)
  {
    v5 = MEMORY[0x277D84F98];
LABEL_17:

    return v5;
  }

  v3 = 0;
  v4 = (v0 + 40);
  v5 = MEMORY[0x277D84F98];
  while (v3 < *(v1 + 16))
  {
    v9 = *(v4 - 1);
    v8 = *v4;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_2283F6D18(v9, v8);
    v13 = v5[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      goto LABEL_19;
    }

    v17 = v12;
    if (v5[3] < v16)
    {
      sub_2284467EC(v16, isUniquelyReferenced_nonNull_native);
      v11 = sub_2283F6D18(v9, v8);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      if (v17)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v23 = v11;
    sub_22844936C();
    v11 = v23;
    if (v17)
    {
LABEL_3:
      v6 = v11;

      v7 = (v5[7] + 16 * v6);
      *v7 = 0x64656E6E6970;
      v7[1] = 0xE600000000000000;

      goto LABEL_4;
    }

LABEL_12:
    v5[(v11 >> 6) + 8] |= 1 << v11;
    v19 = (v5[6] + 16 * v11);
    *v19 = v9;
    v19[1] = v8;
    v20 = (v5[7] + 16 * v11);
    *v20 = 0x64656E6E6970;
    v20[1] = 0xE600000000000000;
    v21 = v5[2];
    v15 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v15)
    {
      goto LABEL_20;
    }

    v5[2] = v22;
LABEL_4:
    ++v3;
    v4 += 2;
    if (v2 == v3)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22855E1BC();
  __break(1u);
  return result;
}

void sub_2284B2F68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2284B2FEC(uint64_t *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return result;
}

uint64_t UserProfile.uniqueIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22855C1DC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UserProfile.uniqueIdentifier.setter(uint64_t a1)
{
  v3 = sub_22855C1DC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}