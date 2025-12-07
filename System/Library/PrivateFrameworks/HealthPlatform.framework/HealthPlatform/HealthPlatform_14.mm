uint64_t sub_228528524@<X0>(id *a1@<X0>, uint64_t a3@<X3>, uint64_t a5@<X8>)
{
  v8 = [*a1 value];
  v9 = sub_22855C09C();
  v11 = v10;

  sub_22855BD7C();
  if (v5)
  {
    sub_22842B38C(v9, v11);
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v12 = sub_22855CABC();
    __swift_project_value_buffer(v12, qword_280DEEC98);
    v13 = v5;
    v14 = sub_22855CA8C();
    v15 = sub_22855D68C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136315906;
      v18 = sub_22855E34C();
      v20 = sub_2283F8938(v18, v19, &v29);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_2283F8938(0xD000000000000017, 0x8000000228570910, &v29);
      *(v16 + 22) = 2080;
      v21 = sub_22855E34C();
      v23 = sub_2283F8938(v21, v22, &v29);

      *(v16 + 24) = v23;
      *(v16 + 32) = 2082;
      v24 = v5;
      sub_228418D44();
      v25 = sub_22855D1CC();
      v27 = sub_2283F8938(v25, v26, &v29);

      *(v16 + 34) = v27;
      _os_log_impl(&dword_2283ED000, v14, v15, "%s %s %s Error: %{public}s", v16, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v17, -1, -1);
      MEMORY[0x22AABAD40](v16, -1, -1);
    }

    else
    {
    }

    return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
  }

  else
  {
    sub_22842B38C(v9, v11);
    return (*(*(a3 - 8) + 56))(a5, 0, 1, a3);
  }
}

uint64_t NotificationContentStateManager.getContentState(for:legacyStringIdentifier:legacyKeyValueDomain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a5;
  v14 = *(a6 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](a1);
  sub_22852B6BC(0);
  v17 = *(v16 - 8);
  v31 = v16;
  v32 = v17;
  MEMORY[0x28223BE20](v16);
  v30 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = NotificationContentStateManager.migrateStringContentStateIfNecessary(contentStateIdentifier:notificationIdentifier:keyValueDomain:)(a3, a4, a1, a2, v29, a6, a7);
  v33 = v29;
  (*(v14 + 16))(&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v7, a6);
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a6;
  *(v20 + 24) = a7;
  (*(v14 + 32))(v20 + v19, &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a6);
  v21 = (v20 + ((v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = a1;
  v21[1] = a2;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_22852BE18;
  *(v22 + 24) = v20;

  sub_22855CCBC();
  v23 = MEMORY[0x277CBCD88];
  sub_2283FF0C0(0, &qword_280DE9888, MEMORY[0x277CBCD88]);
  sub_22852B58C(0, qword_280DEB558, type metadata accessor for NotificationContentState);
  sub_22852B7D0(0, &qword_280DE9938, qword_280DEB558, type metadata accessor for NotificationContentState, MEMORY[0x277CBCD88]);
  sub_22852B5E0(&qword_280DE9890, &qword_280DE9888, v23, MEMORY[0x277CBCD90]);
  sub_22852B850();
  v24 = v30;
  sub_22855CF2C();

  sub_22852BD00(&qword_280DE9A48, sub_22852B6BC, MEMORY[0x277CBCCE0]);
  v25 = v31;
  v26 = sub_22855CE6C();
  (*(v32 + 8))(v24, v25);
  return v26;
}

uint64_t NotificationContentStateManager.migrateStringContentStateIfNecessary(contentStateIdentifier:notificationIdentifier:keyValueDomain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_22855D74C();
  v12 = MEMORY[0x277CBCEA8];
  sub_22852B910(0, &qword_280DE97A8, MEMORY[0x277CBCEA8]);
  sub_22852BC18(&qword_280DE97B0, &qword_280DE97A8, v12, MEMORY[0x277CBCEB0]);
  v13 = sub_22855CE6C();

  v14 = (*(a7 + 32))(v13, a3, a4, a5, a6, a7);

  return v14;
}

uint64_t NotificationContentStateManager.getContentState(for:legacyDateIdentifier:legacyKeyValueDomain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a5;
  v14 = *(a6 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](a1);
  sub_22852B6BC(0);
  v17 = *(v16 - 8);
  v31 = v16;
  v32 = v17;
  MEMORY[0x28223BE20](v16);
  v30 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = NotificationContentStateManager.migrateDateContentStateIfNecessary(contentStateIdentifier:notificationIdentifier:keyValueDomain:)(a3, a4, a1, a2, v29, a6, a7);
  v33 = v29;
  (*(v14 + 16))(&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v7, a6);
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a6;
  *(v20 + 24) = a7;
  (*(v14 + 32))(v20 + v19, &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a6);
  v21 = (v20 + ((v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = a1;
  v21[1] = a2;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_22852BE18;
  *(v22 + 24) = v20;

  sub_22855CCBC();
  v23 = MEMORY[0x277CBCD88];
  sub_2283FF0C0(0, &qword_280DE9888, MEMORY[0x277CBCD88]);
  sub_22852B58C(0, qword_280DEB558, type metadata accessor for NotificationContentState);
  sub_22852B7D0(0, &qword_280DE9938, qword_280DEB558, type metadata accessor for NotificationContentState, MEMORY[0x277CBCD88]);
  sub_22852B5E0(&qword_280DE9890, &qword_280DE9888, v23, MEMORY[0x277CBCD90]);
  sub_22852B850();
  v24 = v30;
  sub_22855CF2C();

  sub_22852BD00(&qword_280DE9A48, sub_22852B6BC, MEMORY[0x277CBCCE0]);
  v25 = v31;
  v26 = sub_22855CE6C();
  (*(v32 + 8))(v24, v25);
  return v26;
}

uint64_t NotificationContentStateManager.migrateDateContentStateIfNecessary(contentStateIdentifier:notificationIdentifier:keyValueDomain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a6;
  v18 = a4;
  sub_22852B9AC(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22855D71C();
  sub_22852B7D0(0, &qword_280DE97D8, &qword_280DEE380, MEMORY[0x277CC9578], MEMORY[0x277CBCEA8]);
  sub_22852BC5C(0, &qword_280DEE7D0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  sub_2284C949C();
  sub_22855CE8C();

  sub_22852BD00(&qword_280DE9B90, sub_22852B9AC, MEMORY[0x277CBCC08]);
  v15 = sub_22855CE6C();
  (*(v12 + 8))(v14, v11);
  v16 = (*(a7 + 32))(v15, a3, v18, a5, v19, a7);

  return v16;
}

uint64_t NotificationContentStateManager.getContentState(for:migrationContentStatePublisher:legacyKeyValueDomain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1);
  sub_22852B6BC(0);
  v16 = *(v15 - 8);
  v28 = v15;
  v29 = v16;
  MEMORY[0x28223BE20](v15);
  v27 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = (*(a6 + 32))(a3, a1, a2, a4, a5, a6);
  (*(v13 + 16))(&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a5);
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  (*(v13 + 32))(v19 + v18, &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a5);
  v20 = (v19 + ((v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = a1;
  v20[1] = a2;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_22852BB1C;
  *(v21 + 24) = v19;

  sub_22855CCBC();
  v22 = MEMORY[0x277CBCD88];
  sub_2283FF0C0(0, &qword_280DE9888, MEMORY[0x277CBCD88]);
  sub_22852B58C(0, qword_280DEB558, type metadata accessor for NotificationContentState);
  sub_22852B7D0(0, &qword_280DE9938, qword_280DEB558, type metadata accessor for NotificationContentState, MEMORY[0x277CBCD88]);
  sub_22852B5E0(&qword_280DE9890, &qword_280DE9888, v22, MEMORY[0x277CBCD90]);
  sub_22852B850();
  v23 = v27;
  sub_22855CF2C();

  sub_22852BD00(&qword_280DE9A48, sub_22852B6BC, MEMORY[0x277CBCCE0]);
  v24 = v28;
  v25 = sub_22855CE6C();
  (*(v29 + 8))(v23, v24);
  return v25;
}

uint64_t sub_228529680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, void (**a10)(void, void), uint64_t a11, uint64_t a12)
{
  v113 = a8;
  v126 = a7;
  v110 = a6;
  v125 = a3;
  v127 = a9;
  v128 = a11;
  v129 = a2;
  v114 = *(a11 - 8);
  MEMORY[0x28223BE20](a1);
  v111 = v15;
  v112 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22852B58C(0, &qword_280DED138, MEMORY[0x277D85248]);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v105 - v17;
  sub_22849BBD4(0);
  v116 = *(v19 - 8);
  v117 = v19;
  MEMORY[0x28223BE20](v19);
  v115 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849BD88(0);
  v122 = v21;
  v120 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v118 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849BEA4(0);
  v123 = v23;
  v121 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v119 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22852BC5C(0, &qword_280DE9820, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCE78]);
  v26 = v25;
  v107 = *(v25 - 1);
  MEMORY[0x28223BE20](v25);
  v105 = &v105 - v27;
  sub_2283FF0C0(0, &qword_280DE8EB0, MEMORY[0x277CBCF38]);
  v109 = v28;
  v108 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v106 = &v105 - v29;
  sub_22852B58C(0, &qword_280DEE380, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v105 - v31;
  v33 = sub_22855C16C();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v105 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v105 - v38;
  sub_2284360F4(a1, v32);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    v40 = v18;
    v109 = a4;
    v124 = a5;
    sub_22852BBBC(v32, &qword_280DEE380, MEMORY[0x277CC9578]);
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v107 = a12;
    v108 = a10;
    v41 = sub_22855CABC();
    __swift_project_value_buffer(v41, qword_280DEEC98);
    v42 = v125;

    v43 = sub_22855CA8C();
    v44 = sub_22855D6AC();

    v45 = os_log_type_enabled(v43, v44);
    v46 = v128;
    if (v45)
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v131[0] = v48;
      *v47 = 136315394;
      v49 = sub_22855E34C();
      v51 = sub_2283F8938(v49, v50, v131);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2080;
      v52 = v129;
      *(v47 + 14) = sub_2283F8938(v129, v42, v131);
      _os_log_impl(&dword_2283ED000, v43, v44, "%s Proceeding with migration for %s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v48, -1, -1);
      MEMORY[0x22AABAD40](v47, -1, -1);
    }

    else
    {

      v52 = v129;
    }

    v130 = v126;
    v131[0] = v110;
    v75 = sub_22855D7EC();
    (*(*(v75 - 8) + 56))(v40, 1, 1, v75);
    v76 = MEMORY[0x277CBCD88];
    sub_22852B910(0, &qword_280DE9908, MEMORY[0x277CBCD88]);
    sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
    v110 = MEMORY[0x277CBCD90];
    sub_22852BC18(&qword_280DE9910, &qword_280DE9908, v76, MEMORY[0x277CBCD90]);
    sub_2283F22E0();
    v77 = v115;
    sub_22855CF4C();
    sub_22852BBBC(v40, &qword_280DED138, MEMORY[0x277D85248]);
    v78 = v114;
    v79 = v112;
    (*(v114 + 16))(v112, v113, v46);
    v80 = (*(v78 + 80) + 48) & ~*(v78 + 80);
    v81 = swift_allocObject();
    v82 = v107;
    *(v81 + 2) = v46;
    *(v81 + 3) = v82;
    *(v81 + 4) = v52;
    *(v81 + 5) = v42;
    (*(v78 + 32))(&v81[v80], v79, v46);

    sub_22855CCBC();
    v83 = MEMORY[0x277CBCD88];
    sub_2283FF0C0(0, &qword_280DE9888, MEMORY[0x277CBCD88]);
    v114 = v84;
    sub_22852BD00(&qword_280DE99A0, sub_22849BBD4, MEMORY[0x277CBCD60]);
    sub_22852B5E0(&qword_280DE9890, &qword_280DE9888, v83, v110);
    v86 = v117;
    v85 = v118;
    sub_22855CF2C();

    (*(v116 + 8))(v77, v86);
    v87 = swift_allocObject();
    v88 = v129;
    v87[2] = v128;
    v87[3] = v82;
    v87[4] = v88;
    v87[5] = v42;
    v89 = v108;
    v90 = v109;
    v87[6] = v108;
    v87[7] = v90;
    v91 = v126;
    v87[8] = v124;
    v87[9] = v91;
    v92 = swift_allocObject();
    *(v92 + 16) = sub_22852BCEC;
    *(v92 + 24) = v87;

    v93 = v89;
    v94 = v91;
    sub_22855CCBC();
    v95 = MEMORY[0x277CBCCE0];
    sub_22852BD00(&qword_280DE9A08, sub_22849BD88, MEMORY[0x277CBCCE0]);
    v96 = v119;
    v97 = v122;
    sub_22855CF2C();

    (*(v120 + 8))(v85, v97);
    sub_22852BD00(&qword_280DE99F8, sub_22849BEA4, v95);
    v98 = v123;
    v99 = sub_22855CE6C();
    result = (*(v121 + 8))(v96, v98);
    v73 = v127;
  }

  else
  {
    v126 = v26;
    v53 = a4;
    (*(v34 + 32))(v39, v32, v33);
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v54 = sub_22855CABC();
    __swift_project_value_buffer(v54, qword_280DEEC98);
    (*(v34 + 16))(v37, v39, v33);
    v55 = v125;

    v56 = a5;
    v57 = sub_22855CA8C();
    v58 = sub_22855D66C();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = v53;
      v60 = swift_slowAlloc();
      LODWORD(v122) = v58;
      v61 = v60;
      v123 = swift_slowAlloc();
      v131[0] = v123;
      *v61 = 136315906;
      v62 = sub_22855E34C();
      v124 = v56;
      v64 = sub_2283F8938(v62, v63, v131);

      *(v61 + 4) = v64;
      *(v61 + 12) = 2080;
      *(v61 + 14) = sub_2283F8938(v129, v55, v131);
      *(v61 + 22) = 2080;
      sub_22852BD00(&qword_280DECD88, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v65 = sub_22855E11C();
      v67 = v66;
      v68 = v37;
      v69 = *(v34 + 8);
      v69(v68, v33);
      v70 = sub_2283F8938(v65, v67, v131);

      *(v61 + 24) = v70;
      *(v61 + 32) = 2080;
      *(v61 + 34) = sub_2283F8938(v59, v124, v131);
      _os_log_impl(&dword_2283ED000, v57, v122, "%s Migration already completed for %s on %s for key %s", v61, 0x2Au);
      v71 = v123;
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v71, -1, -1);
      v72 = v61;
      v73 = v127;
      MEMORY[0x22AABAD40](v72, -1, -1);

      v74 = v126;
    }

    else
    {

      v101 = v37;
      v69 = *(v34 + 8);
      v69(v101, v33);
      v74 = v126;
      v73 = v127;
    }

    v102 = v105;
    sub_22855CDCC();
    sub_228418D44();
    v103 = v106;
    sub_22855CD9C();
    (*(v107 + 8))(v102, v74);
    sub_22852B5E0(&qword_280DE8EB8, &qword_280DE8EB0, MEMORY[0x277CBCF38], MEMORY[0x277CBCF40]);
    v104 = v109;
    v99 = sub_22855CE6C();
    (v108)[1](v103, v104);
    result = (v69)(v39, v33);
  }

  *v73 = v99;
  return result;
}

uint64_t sub_22852A514@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t *a7@<X8>)
{
  v53 = a6;
  v54 = a4;
  v55 = a7;
  v56 = a5;
  sub_22852BC5C(0, &qword_280DE9820, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCE78]);
  v11 = v10;
  v52 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - v12;
  sub_2283FF0C0(0, &qword_280DE8EB0, MEMORY[0x277CBCF38]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v50 - v17;
  v19 = type metadata accessor for NotificationContentState(0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = (&v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = a1[1];
  if (v23)
  {
    v24 = *a1;
    v25 = v20;
    sub_22855C1CC();
    *v22 = a2;
    v22[1] = a3;
    v26 = (v22 + v25[6]);
    *v26 = v24;
    v26[1] = v23;
    *(v22 + v25[7]) = 1;
    *(v22 + v25[8]) = 0;
    v27 = qword_280DEEC90;

    if (v27 != -1)
    {
      swift_once();
    }

    v28 = sub_22855CABC();
    __swift_project_value_buffer(v28, qword_280DEEC98);

    v29 = sub_22855CA8C();
    v30 = sub_22855D6AC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v57 = v52;
      *v31 = 136315651;
      v32 = sub_22855E34C();
      v34 = sub_2283F8938(v32, v33, &v57);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_2283F8938(a2, a3, &v57);
      *(v31 + 22) = 2081;
      *(v31 + 24) = sub_2283F8938(v24, v23, &v57);
      _os_log_impl(&dword_2283ED000, v29, v30, "%s Migrating %s content state: %{private}s", v31, 0x20u);
      v35 = v52;
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v35, -1, -1);
      MEMORY[0x22AABAD40](v31, -1, -1);
    }

    v36 = (*(*(v53 + 1) + 64))(v22, v56);
    result = sub_22852BD48(v22);
  }

  else
  {
    v53 = v13;
    v54 = v16;
    v51 = a2;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v38 = sub_22855CABC();
    __swift_project_value_buffer(v38, qword_280DEEC98);

    v39 = sub_22855CA8C();
    v40 = sub_22855D6AC();

    v41 = v18;
    if (os_log_type_enabled(v39, v40))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v57 = v43;
      *v42 = 136315394;
      v44 = sub_22855E34C();
      v46 = sub_2283F8938(v44, v45, &v57);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_2283F8938(v51, a3, &v57);
      _os_log_impl(&dword_2283ED000, v39, v40, "%s No pre-existing content state for %s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v43, -1, -1);
      MEMORY[0x22AABAD40](v42, -1, -1);
    }

    v47 = v53;
    v48 = v54;
    v49 = v52;
    sub_22855CDCC();
    sub_228418D44();
    sub_22855CD9C();
    (*(v49 + 8))(v47, v11);
    sub_22852B5E0(&qword_280DE8EB8, &qword_280DE8EB0, MEMORY[0x277CBCF38], MEMORY[0x277CBCF40]);
    v36 = sub_22855CE6C();
    result = (*(v48 + 8))(v41, v15);
  }

  *v55 = v36;
  return result;
}

uint64_t sub_22852AB08(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a1;
  sub_22852B58C(0, &qword_280DED138, MEMORY[0x277D85248]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v40 - v12;
  sub_22852B58C(0, &qword_280DEE380, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v14 - 8);
  v45 = &v40 - v15;
  sub_22849C010(0);
  v46 = *(v16 - 8);
  v47 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DEEC90 != -1)
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
    v42 = a3;
    v23 = v22;
    v24 = swift_slowAlloc();
    v43 = a5;
    v41 = v24;
    v49 = v24;
    *v23 = 136315394;
    v25 = sub_22855E34C();
    v27 = v18;
    v28 = v13;
    v29 = a6;
    v30 = sub_2283F8938(v25, v26, &v49);

    *(v23 + 4) = v30;
    a6 = v29;
    v13 = v28;
    v18 = v27;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_2283F8938(v44, a2, &v49);
    _os_log_impl(&dword_2283ED000, v20, v21, "%s Marking migration as complete for %s", v23, 0x16u);
    v31 = v41;
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v31, -1, -1);
    MEMORY[0x22AABAD40](v23, -1, -1);
  }

  v32 = v45;
  sub_22855C15C();
  v33 = sub_22855C16C();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  v34 = sub_22855D73C();
  sub_22852BBBC(v32, &qword_280DEE380, MEMORY[0x277CC9578]);
  v48 = a6;
  v49 = v34;
  v35 = sub_22855D7EC();
  (*(*(v35 - 8) + 56))(v13, 1, 1, v35);
  v36 = MEMORY[0x277CBCEA8];
  sub_2283FF0C0(0, &qword_280DE9780, MEMORY[0x277CBCEA8]);
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  sub_22852B5E0(&qword_280DE9788, &qword_280DE9780, v36, MEMORY[0x277CBCEB0]);
  sub_2283F22E0();
  sub_22855CF4C();
  sub_22852BBBC(v13, &qword_280DED138, MEMORY[0x277D85248]);

  sub_22852BD00(&qword_280DE9980, sub_22849C010, MEMORY[0x277CBCD60]);
  v37 = v47;
  v38 = sub_22855CE6C();
  (*(v46 + 8))(v18, v37);
  return v38;
}

uint64_t sub_22852B01C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_22852B04C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22852B58C(0, &qword_280DEE380, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_22855C16C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284360F4(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_22852BBBC(v6, &qword_280DEE380, MEMORY[0x277CC9578]);
    v12 = 0;
    v13 = 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_22855C0CC();
    v12 = sub_22855D4FC();
    v13 = v14;
    result = (*(v8 + 8))(v10, v7);
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t sub_22852B220(uint64_t a1, void **a2)
{
  _s14HealthPlatform19ContentStateManagerPAAE10getEntries2in7decoderSayqd__GSo28HKDeviceKeyValueStorageGroupC_10Foundation11JSONDecoderCtSeRd__SERd__lF_0(*a2, v2[8], v2[2], v2[3], v2[4], v2[5], v2[6]);
  sub_22855D42C();
}

uint64_t sub_22852B28C(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  sub_2283EF310(0, a3, a4);
  if (a2 >> 62)
  {
    v6 = sub_22855DF2C();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v6;
    }

LABEL_10:
    sub_22855DC6C();
    v8 = 0xD000000000000046;
    v7 = 0x80000002285742E0;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v6;
  }

  sub_22855DC6C();
  v7 = 0x8000000228574290;
  v8 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x22AAB92A0](v8, v7);
  v10 = sub_22855E34C();
  MEMORY[0x22AAB92A0](v10);

  MEMORY[0x22AAB92A0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v11 = sub_22855E34C();
  MEMORY[0x22AAB92A0](v11);

  result = sub_22855DEEC();
  __break(1u);
  return result;
}

uint64_t _s14HealthPlatform19ContentStateManagerPAAE10getEntries2in7decoderSayqd__GSo28HKDeviceKeyValueStorageGroupC_10Foundation11JSONDecoderCtSeRd__SERd__lF_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = [a1 storageEntries];
  sub_2283EF310(0, &qword_27D83FB18, 0x277CCD300);
  sub_22855D3AC();

  sub_2284AD00C(0, &qword_27D840808, &qword_27D83FB18, 0x277CCD300);
  sub_22852BDC8(&qword_27D840810, &qword_27D840808, &qword_27D83FB18, 0x277CCD300);
  v8 = sub_22855D2CC();

  return v8;
}

void sub_22852B58C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855DA2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22852B5E0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2283FF0C0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22852B6BC(uint64_t a1)
{
  if (!qword_280DE9A40)
  {
    sub_22852B7D0(255, &qword_280DE9938, qword_280DEB558, type metadata accessor for NotificationContentState, MEMORY[0x277CBCD88]);
    v1 = MEMORY[0x277CBCD88];
    sub_2283FF0C0(255, &qword_280DE9888, MEMORY[0x277CBCD88]);
    sub_22852B850();
    sub_22852B5E0(&qword_280DE9890, &qword_280DE9888, v1, MEMORY[0x277CBCD90]);
    v2 = sub_22855CBEC();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE9A40);
    }
  }
}

void sub_22852B7D0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_22852B58C(255, a3, a4);
    v9 = v8;
    v10 = sub_228418D44();
    v11 = a5(a1, v9, v10, MEMORY[0x277D84950]);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_22852B850()
{
  result = qword_280DE9940;
  if (!qword_280DE9940)
  {
    sub_22852B7D0(255, &qword_280DE9938, qword_280DEB558, type metadata accessor for NotificationContentState, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE9940);
  }

  return result;
}

uint64_t sub_22852B8E0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

void sub_22852B910(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_22852BC5C(255, &qword_280DEE7D0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v7 = v6;
    v8 = sub_228418D44();
    v9 = a3(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22852B9AC(uint64_t a1)
{
  if (!qword_280DE9B88)
  {
    sub_22852B7D0(255, &qword_280DE97D8, &qword_280DEE380, MEMORY[0x277CC9578], MEMORY[0x277CBCEA8]);
    sub_22852BC5C(255, &qword_280DEE7D0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_2284C949C();
    v1 = sub_22855CB6C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9B88);
    }
  }
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_22852BBBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22852B58C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22852BC18(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22852B910(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22852BC5C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_22852BD00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22852BD48(uint64_t a1)
{
  v2 = type metadata accessor for NotificationContentState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22852BDC8(unint64_t *a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  result = *a1;
  if (!result)
  {
    sub_2284AD00C(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22852BE20(unint64_t a1, uint64_t a2)
{
  v4 = a1;
  v17 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22855DB4C())
  {
    v6 = 0;
    v7 = v4 & 0xC000000000000001;
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v14 = i;
    v15 = v4;
    while (1)
    {
      if (v7)
      {
        v9 = MEMORY[0x22AAB9D20](v6, v4);
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v16 = v9;
      v12 = sub_22852D310(&v16, a2);
      if (v2)
      {

        return a2;
      }

      if (v12)
      {
        sub_22855DD1C();
        sub_22855DD5C();
        sub_22855DD6C();
        sub_22855DD2C();
        i = v14;
        v4 = v15;
      }

      else
      {
      }

      ++v6;
      if (v11 == i)
      {
        a2 = v17;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a2 = MEMORY[0x277D84F90];
LABEL_20:

  return a2;
}

void *HealthPlatformContextProvider.Context.optionalHealthStore.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_22852BFE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_2283EF310(0, &qword_280DEE7B0, 0x277CCD7C8);
    v4 = sub_22855D3AC();
  }

  v6 = a3;
  v5(v4, a3);
}

void *sub_22852C084(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22855DB4C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v18 = MEMORY[0x277D84F90];
  result = sub_228427760(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v18;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x22AAB9D20](v5, a1);
        v8 = *(v18 + 16);
        v7 = *(v18 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_228427760((v7 > 1), v8 + 1, 1);
        }

        ++v5;
        v9 = sub_228530A20(&qword_280DEC390, type metadata accessor for HealthPlatformContextProvider.Context, &protocol conformance descriptor for HealthPlatformContextProvider.Context);
        *(v18 + 16) = v8 + 1;
        v10 = v18 + 16 * v8;
        *(v10 + 32) = v6;
        *(v10 + 40) = v9;
      }

      while (v2 != v5);
    }

    else
    {
      v11 = (a1 + 32);
      v12 = *(v18 + 16);
      v13 = 16 * v12;
      do
      {
        v14 = *v11;
        v15 = *(v18 + 24);

        if (v12 >= v15 >> 1)
        {
          sub_228427760((v15 > 1), v12 + 1, 1);
        }

        v16 = sub_228530A20(&qword_280DEC390, type metadata accessor for HealthPlatformContextProvider.Context, &protocol conformance descriptor for HealthPlatformContextProvider.Context);
        *(v18 + 16) = v12 + 1;
        v17 = v18 + v13;
        *(v17 + 32) = v14;
        *(v17 + 40) = v16;
        v13 += 16;
        ++v11;
        ++v12;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *HealthPlatformContextProvider.__allocating_init(profileStore:experienceStoreOracle:pinnedContentManagerProvider:notificationManager:transactionBuilderManager:healthStore:logger:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_lock;
  v22[1] = 0;
  swift_unknownObjectWeakInit();
  v22[2] = MEMORY[0x277D84F90];
  sub_22852C5C8(0);
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  v16 = swift_allocObject();
  *(v16 + 80) = 0;
  sub_22852C628(v22, v16 + 16);
  *&v14[v15] = v16;
  sub_2283F9B10(a1, (v14 + 16));
  *(v14 + 9) = a3;
  *(v14 + 10) = a4;
  *(v14 + 7) = a6;
  *(v14 + 8) = a2;
  *(v14 + 11) = a5;
  v17 = OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_logger;
  v18 = sub_22855CABC();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v14[v17], a7, v18);
  v20 = [objc_allocWithZone(type metadata accessor for HealthPlatformContextProvider.ObserverShim()) init];
  (*(v19 + 8))(a7, v18);
  __swift_destroy_boxed_opaque_existential_0(a1);
  *&v14[OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_observerShim] = v20;
  swift_weakAssign();
  return v14;
}

char *HealthPlatformContextProvider.init(profileStore:experienceStoreOracle:pinnedContentManagerProvider:notificationManager:transactionBuilderManager:healthStore:logger:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_lock;
  v22[1] = 0;
  swift_unknownObjectWeakInit();
  v22[2] = MEMORY[0x277D84F90];
  sub_22852C5C8(0);
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  v16 = swift_allocObject();
  *(v16 + 80) = 0;
  sub_22852C628(v22, v16 + 16);
  *&v7[v15] = v16;
  sub_2283F9B10(a1, (v7 + 16));
  *(v7 + 9) = a3;
  *(v7 + 10) = a4;
  *(v7 + 7) = a6;
  *(v7 + 8) = a2;
  *(v7 + 11) = a5;
  v17 = OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_logger;
  v18 = sub_22855CABC();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v7[v17], a7, v18);
  v20 = [objc_allocWithZone(type metadata accessor for HealthPlatformContextProvider.ObserverShim()) init];
  (*(v19 + 8))(a7, v18);
  __swift_destroy_boxed_opaque_existential_0(a1);
  *&v7[OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_observerShim] = v20;
  swift_weakAssign();
  return v7;
}

void sub_22852C5C8(uint64_t a1)
{
  if (!qword_280DE9190)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9190);
    }
  }
}

char *sub_22852C684(uint64_t a1, uint64_t a2)
{
  v5 = sub_22855CABC();
  v36 = *(v5 - 8);
  v6 = v36;
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  [v9 setProfileIdentifier_];
  v10 = v9;
  v34 = v9;
  [v9 resume];
  v11 = v2[7];
  sub_2283F9B10(a2, v39);
  v13 = v2[9];
  v12 = v2[10];
  v14 = v2[11];
  v15 = *(v6 + 16);
  v16 = v2 + OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_logger;
  v17 = v8;
  v35 = v8;
  v18 = v8;
  v19 = v37;
  v15(v18, v16, v37);
  type metadata accessor for HealthPlatformContextProvider.Context(0);
  v20 = swift_allocObject();
  sub_22852E270(0);
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  *(v21 + 16) = 0;
  *(v20 + 12) = v21;
  *(v20 + 2) = v10;
  *(v20 + 5) = v11;
  v22 = v11;
  sub_2283F9B10(v39, (v20 + 48));
  *(v20 + 3) = v13;
  *(v20 + 4) = v12;
  *(v20 + 11) = v14;
  v15(&v20[OBJC_IVAR____TtCC14HealthPlatform29HealthPlatformContextProvider7Context_logger], v17, v19);
  v24 = v40;
  v23 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v25 = *(v23 + 16);
  v26 = v22;

  v27 = v34;
  v28 = v25(v24, v23);
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v28;
  aBlock[4] = sub_228531764;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_73_0;
  v30 = _Block_copy(aBlock);
  v31 = v28;

  [v31 performBlock_];
  _Block_release(v30);

  (*(v36 + 8))(v35, v37);
  __swift_destroy_boxed_opaque_existential_0(v39);
  return v20;
}

char *HealthPlatformContextProvider.Context.__allocating_init(healthStore:primaryProfileHealthStore:healthExperienceStore:pinnedContentManagerProvider:notificationManager:transactionBuilderManager:logger:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  sub_22852E270(0);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = 0;
  *(v14 + 12) = v15;
  *(v14 + 2) = a1;
  *(v14 + 5) = a2;
  sub_2283F9B10(a3, (v14 + 48));
  *(v14 + 3) = a4;
  *(v14 + 4) = a5;
  *(v14 + 11) = a6;
  v16 = OBJC_IVAR____TtCC14HealthPlatform29HealthPlatformContextProvider7Context_logger;
  v30 = sub_22855CABC();
  v32 = *(v30 - 8);
  (*(v32 + 16))(&v14[v16], a7, v30);
  v29 = a3;
  v17 = a3[3];
  v18 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v17);
  v19 = *(v18 + 16);
  v20 = a1;
  v28 = a2;

  v21 = v19(v17, v18);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v21;
  aBlock[4] = sub_22852E4D8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_28;
  v23 = _Block_copy(aBlock);
  v24 = v20;
  v25 = v21;

  [v25 performBlock_];
  _Block_release(v23);

  (*(v32 + 8))(a7, v30);
  __swift_destroy_boxed_opaque_existential_0(v29);
  return v14;
}

Swift::Void __swiftcall HealthPlatformContextProvider.fetchUpdatedProfiles()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 24);

  v3(sub_22852E4E0, v0, v1, v2);
}

void sub_22852CC98(uint64_t a1, void *a2, void *a3)
{

  v6 = sub_22855CA8C();
  v7 = sub_22855D6AC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315138;
    v27 = a3;

    v10 = sub_22855D1BC();
    v12 = sub_2283F8938(v10, v11, &v26);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2283ED000, v6, v7, "%s: Got profile list; updating contexts.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AABAD40](v9, -1, -1);
    MEMORY[0x22AABAD40](v8, -1, -1);
  }

  if (a1)
  {
    v14 = *(a3 + OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_lock);
    MEMORY[0x28223BE20](v13);
    os_unfair_lock_lock(v14 + 20);
    sub_228531114(&v14[4], &v26);
    os_unfair_lock_unlock(v14 + 20);
    v26();
  }

  else
  {

    v15 = a2;
    v16 = sub_22855CA8C();
    v17 = sub_22855D68C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315394;
      v27 = a3;

      v20 = sub_22855D1BC();
      v22 = sub_2283F8938(v20, v21, &v26);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v27 = a2;
      sub_228530614(0, &qword_280DE8EC0, &qword_280DECFE0, MEMORY[0x277D84948], MEMORY[0x277D83D88]);
      v23 = sub_22855DA0C();
      v25 = sub_2283F8938(v23, v24, &v26);

      *(v18 + 14) = v25;
      _os_log_impl(&dword_2283ED000, v16, v17, "%s: Failed to fetch profile identifiers: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v19, -1, -1);
      MEMORY[0x22AABAD40](v18, -1, -1);
    }
  }
}

uint64_t sub_22852D000@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void (**a4)()@<X8>)
{
  sub_2284FF204(a1 + 24, &v28);
  if (!v29)
  {
    result = sub_22853067C(&v28);
    *a4 = nullsub_1;
    a4[1] = 0;
    return result;
  }

  sub_2283FAB3C(&v28, v30);

  v8 = sub_2285312B0((a1 + 16), a2);

  v10 = *(a1 + 16);
  if (v10 >> 62)
  {
    result = sub_22855DB4C();
    v11 = result;
    if (result >= v8)
    {
      goto LABEL_4;
    }

LABEL_12:
    __break(1u);
    return result;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11 < v8)
  {
    goto LABEL_12;
  }

LABEL_4:
  sub_2284FD764(v8, v11);

  v13 = sub_22852BE20(v12, a1);
  MEMORY[0x28223BE20](v13);
  v27[2] = a3;
  v27[3] = v30;
  v14 = sub_2284FA6BC(sub_22853159C, v27, v13);

  sub_2284A7D4C(v14);
  v15 = *(a1 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = *(a1 + 8);
    v19 = swift_allocObject();
    *(v19 + 16) = a3;
    *(v19 + 24) = v15;
    *(v19 + 32) = v17;
    *(v19 + 40) = v18;
    *a4 = sub_2285315E0;
    a4[1] = v19;
  }

  else
  {

    v20 = sub_22855CA8C();
    v21 = sub_22855D68C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27[5] = a3;
      *&v28 = v23;
      *v22 = 136315138;

      v24 = sub_22855D1BC();
      v26 = sub_2283F8938(v24, v25, &v28);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_2283ED000, v20, v21, "%s: Received updated profiles but no delegate set.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AABAD40](v23, -1, -1);
      MEMORY[0x22AABAD40](v22, -1, -1);
    }

    *a4 = nullsub_1;
    a4[1] = 0;
  }

  return __swift_destroy_boxed_opaque_existential_0(v30);
}

BOOL sub_22852D310(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (v3 >> 62)
  {
LABEL_15:
    v4 = sub_22855DB4C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x22AAB9D20](v5, v3);
      if (__OFADD__(v6, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_15;
      }

      v7 = *(v3 + 8 * v5 + 32);

      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }
    }

    v8 = [*(v7 + 16) profileIdentifier];
    v9 = [v8 isEqual_];

    v5 = v6 + 1;
  }

  while (!v9);

  return v4 == v6;
}

uint64_t sub_22852D440(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_bridgeObjectRetain_n();

  v5 = sub_22855CA8C();
  v6 = sub_22855D6AC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315394;
    type metadata accessor for HealthPlatformContextProvider(0);

    v9 = sub_22855D1BC();
    v11 = sub_2283F8938(v9, v10, &v14);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    if (a2 >> 62)
    {
      v12 = sub_22855DB4C();
    }

    else
    {
      v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v7 + 14) = v12;

    _os_log_impl(&dword_2283ED000, v5, v6, "%s: Informing delegate of %ld contexts.", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AABAD40](v8, -1, -1);
    MEMORY[0x22AABAD40](v7, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  swift_getObjectType();
  sub_22852C084(a2);
  sub_22855C87C();
}

void sub_22852D620()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_lock);
  os_unfair_lock_lock(v1 + 20);
  sub_2285310F8(&v1[4], &v7);
  os_unfair_lock_unlock(v1 + 20);
  if (v7 == 1)
  {
    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
    (*(v3 + 8))(*(v0 + OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_observerShim), 0, 0, v2, v3);
    v4 = v0[5];
    v5 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
    v6 = *(v5 + 24);

    v6(sub_228531788, v0, v4, v5);
  }
}

uint64_t sub_22852D734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_2284FF204(a1 + 24, v9);
  v6 = v10;
  result = sub_22853067C(v9);
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    sub_22853067C(a1 + 24);
    result = sub_2283F9B10(a2, a1 + 24);
    v8 = 1;
  }

  *a3 = v8;
  return result;
}

uint64_t HealthPlatformContextProvider.start(delegate:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_lock);
  os_unfair_lock_lock(v1 + 20);
  sub_22852E4E8(&v1[4]);
  os_unfair_lock_unlock(v1 + 20);
  v2 = *(v0 + 64);
  sub_2285303DC(v0, v2);
  v3 = *(v2 + OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_protectedState);
  os_unfair_lock_lock(v3 + 16);
  sub_2284FF204(&v3[6], &v5);
  os_unfair_lock_unlock(v3 + 16);
  if (!v6)
  {
    return sub_22853067C(&v5);
  }

  sub_2283FAB3C(&v5, v7);
  sub_22852D620();
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

Swift::Void __swiftcall HealthPlatformContextProvider.stop()()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_lock);
  os_unfair_lock_lock(v1 + 20);
  sub_228530704(&v1[4]);

  os_unfair_lock_unlock(v1 + 20);
}

uint64_t sub_22852D8E8(uint64_t a1, void *a2)
{
  *(a1 + 8) = 0;
  swift_unknownObjectWeakAssign();
  v3 = a2[5];
  v4 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v3);
  return (*(v4 + 16))(*(a2 + OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_observerShim), v3, v4);
}

void HealthPlatformContextProvider.context(for:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_lock);
  os_unfair_lock_lock(v1 + 20);
  sub_228530720(&v1[4], &v2);
  os_unfair_lock_unlock(v1 + 20);
}

uint64_t sub_22852D9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v26 = a3;
  sub_2284FF204(a1 + 24, &v21);
  if (v22)
  {
    sub_2283FAB3C(&v21, &v23);
  }

  else
  {
    v7 = *(*(a2 + 64) + OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_protectedState);
    os_unfair_lock_lock(v7 + 16);
    sub_2284FF204(&v7[6], &v23);
    os_unfair_lock_unlock(v7 + 16);
    if (v22)
    {
      sub_22853067C(&v21);
    }
  }

  if (v24)
  {
    sub_2283FAB3C(&v23, v25);
    v8 = *(a1 + 16);
    v20 = a4;
    v19 = (a1 + 16);
    if (v8 >> 62)
    {
      goto LABEL_21;
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      while (1)
      {
        v10 = 0;
        while ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x22AAB9D20](v10, v8);
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

LABEL_12:
          v13 = [*(v11 + 2) profileIdentifier];
          v14 = [v13 isEqual_];

          if (v14)
          {
            v17 = v20;
            goto LABEL_25;
          }

          ++v10;
          if (v12 == v9)
          {
            goto LABEL_22;
          }
        }

        if (v10 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_21:
        v9 = sub_22855DB4C();
        if (!v9)
        {
          goto LABEL_22;
        }
      }

      v11 = *(v8 + 8 * v10 + 32);

      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

LABEL_22:
    v11 = sub_22852C684(v26, v25);

    MEMORY[0x22AAB9400](v18);
    v17 = v20;
    if (*((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22855D3EC();
    }

    sub_22855D43C();
LABEL_25:
    result = __swift_destroy_boxed_opaque_existential_0(v25);
    *v17 = v11;
  }

  else
  {
LABEL_18:
    sub_22853067C(&v23);
    sub_228530814();
    swift_allocError();
    *v15 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t HealthPlatformContextProvider.profileListDidUpdate(for:)()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 24);

  v3(sub_228531788, v0, v1, v2);
}

uint64_t HealthPlatformContextProvider.storeDidUpdate(note:)()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_protectedState);
  os_unfair_lock_lock(v1 + 16);
  sub_2284FF204(&v1[6], &v3);
  os_unfair_lock_unlock(v1 + 16);
  if (!v4)
  {
    return sub_22853067C(&v3);
  }

  sub_2283FAB3C(&v3, v5);
  sub_22852D620();
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

void *HealthPlatformContextProvider.Context.init(healthStore:primaryProfileHealthStore:healthExperienceStore:pinnedContentManagerProvider:notificationManager:transactionBuilderManager:logger:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  sub_22852E270(0);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = 0;
  v7[12] = v16;
  v7[2] = a1;
  v7[5] = a2;
  sub_2283F9B10(a3, (v7 + 6));
  v7[3] = a4;
  v7[4] = a5;
  v7[11] = a6;
  v17 = OBJC_IVAR____TtCC14HealthPlatform29HealthPlatformContextProvider7Context_logger;
  v31 = sub_22855CABC();
  v33 = *(v31 - 8);
  (*(v33 + 16))(v8 + v17, a7, v31);
  v30 = a3;
  v18 = a3[3];
  v19 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v18);
  v20 = *(v19 + 16);
  v21 = a1;
  v29 = a2;

  v22 = v20(v18, v19);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = v22;
  aBlock[4] = sub_228531764;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_8;
  v24 = _Block_copy(aBlock);
  v25 = v21;
  v26 = v22;

  [v26 performBlock_];
  _Block_release(v24);

  (*(v33 + 8))(a7, v31);
  __swift_destroy_boxed_opaque_existential_0(v30);
  return v8;
}

void sub_22852E270(uint64_t a1)
{
  if (!qword_280DE90E0)
  {
    sub_228531670(255, qword_280DEA1E8, type metadata accessor for CachingSharedSummaryTransactionBuilder, MEMORY[0x277D83D88]);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE90E0);
    }
  }
}

uint64_t sub_22852E308(void *a1, void *a2)
{
  v3 = [a1 profileIdentifier];
  sub_228531670(0, &qword_280DED028, type metadata accessor for UserProfile, MEMORY[0x277D84560]);
  v4 = (type metadata accessor for UserProfile(0) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_228560580;
  v7 = v6 + v5;
  v8 = v3;
  v9 = [v8 identifier];
  sub_22855C1BC();

  *(v7 + v4[7]) = v8;
  v10 = sub_22845F998(v6);
  swift_setDeallocating();
  sub_2285316D4(v7, type metadata accessor for UserProfile);
  swift_deallocClassInstance();
  v11 = a2;
  v12 = sub_22842A950(v10, v11);

  sub_228429908(v12);
}

void HealthPlatformContextProvider.Context.feedItemStorage(for:bundleIdentifier:scope:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v40 = a4;
  v41 = a5;
  v39 = a3;
  v42 = a1;
  v43 = a2;
  v36 = a6;
  v37 = sub_22855CFCC();
  v7 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22855C73C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v6[9];
  v14 = v6[10];
  __swift_project_boxed_opaque_existential_1(v6 + 6, v15);
  v16 = (*(v14 + 16))(v15, v14);
  swift_getObjectType();
  sub_22855CA1C();
  v17 = sub_22855C72C();
  v42 = v18;
  v43 = v17;
  (*(v11 + 8))(v13, v10);
  v38 = v6[3];
  v19 = v36;
  v36[3] = &type metadata for PluginFeedItemStorage;
  v19[4] = &protocol witness table for PluginFeedItemStorage;
  v20 = v19;
  v21 = swift_allocObject();
  *v20 = v21;
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  v22 = v37;
  (*(v7 + 104))(v9, *MEMORY[0x277D851B0], v37);

  v23 = sub_22855D85C();
  (*(v7 + 8))(v9, v22);
  v21[9] = v23;
  v21[2] = v16;
  v24 = v16;
  v26 = v39;
  v25 = v40;
  v21[4] = v39;
  v21[5] = v25;
  sub_2284661F0();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_228563E50;
  v28 = v41;
  *(v27 + 32) = v41;
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_228530614(0, &qword_280DED008, &qword_280DEEB20, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_228560580;
  *(v29 + 56) = MEMORY[0x277D837D0];
  *(v29 + 64) = sub_22840A7C8();
  *(v29 + 32) = v26;
  *(v29 + 40) = v25;
  swift_bridgeObjectRetain_n();
  v30 = v24;
  v31 = v28;
  *(v27 + 40) = sub_22855D62C();
  v32 = sub_22855D39C();

  v33 = [objc_opt_self() andPredicateWithSubpredicates_];

  v34 = v42;
  v35 = v43;
  v21[6] = v33;
  v21[7] = v35;
  v21[8] = v34;
  v21[3] = v38;
}

void HealthPlatformContextProvider.Context.anchorStorage(for:)(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = v2;
  v38 = a1;
  v6 = sub_22855CFCC();
  v39 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_22855C73C();
  v9 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = [v13 bundleIdentifier];
  if (v14)
  {
    v33 = v13;
    v15 = v14;
    v16 = sub_22855D1AC();
    v34 = v17;
    v35 = v16;

    v36 = v3;
    v31 = v6;
    v18 = a2;
    v19 = *(v4 + 72);
    v20 = *(v4 + 80);
    __swift_project_boxed_opaque_existential_1((v4 + 48), v19);
    v32 = (*(v20 + 16))(v19, v20);
    v21 = [*(v4 + 16) profileIdentifier];
    swift_getObjectType();
    sub_22855C9EC();
    v22 = sub_22855C72C();
    v24 = v23;
    (*(v9 + 8))(v11, v37);
    sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
    v25 = v39;
    v26 = v31;
    (*(v39 + 104))(v8, *MEMORY[0x277D851B0], v31);
    v27 = sub_22855D85C();
    (*(v25 + 8))(v8, v26);
    v18[3] = &type metadata for PluginAnchorStorage;
    v18[4] = &off_283B8C740;
    v28 = swift_allocObject();
    *v18 = v28;

    v28[2] = v32;
    v28[3] = v21;
    v29 = v34;
    v28[4] = v35;
    v28[5] = v29;
    v28[6] = v22;
    v28[7] = v24;
    v28[8] = v27;
  }

  else
  {
    sub_2284811C0();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();
  }
}

void HealthPlatformContextProvider.Context.notificationManager(for:)()
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = [v2 bundleIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22855D1AC();
    v7 = v6;

    v8 = *(v0 + 16);
    v9 = *(v0 + 32);
    type metadata accessor for HealthAppPluginNotificationManager();
    v10 = swift_allocObject();
    v10[2] = v8;
    v10[3] = v8;
    v10[4] = v5;
    v10[5] = v7;
    v10[6] = v9;
    v11 = v8;

    sub_22855DC6C();
    MEMORY[0x22AAB92A0](0xD00000000000003BLL, 0x8000000228570E40);
    MEMORY[0x22AAB92A0](v5, v7);

    v12 = type metadata accessor for HealthAppNotificationContentStateManager();
    v13 = HealthAppNotificationContentStateManager.__allocating_init(healthStore:domain:)(v11, 0, 0xE000000000000000);
    v10[10] = v12;
    v10[11] = sub_228530A20(qword_280DEC5B8, type metadata accessor for HealthAppNotificationContentStateManager, &protocol conformance descriptor for HealthAppNotificationContentStateManager);

    v10[7] = v13;
  }

  else
  {
    sub_2284811C0();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
  }
}

uint64_t HealthPlatformContextProvider.Context.sharingSummaryProfileTransactionBuilder(transaction:)()
{
  v1 = [*(v0 + 16) profileIdentifier];
  v2 = [v1 type];

  result = 0;
  if (v2 == 2)
  {
    v4 = *(v0 + 96);
    MEMORY[0x28223BE20](0);
    os_unfair_lock_lock((v4 + 24));
    sub_22853073C((v4 + 16), &v5);
    os_unfair_lock_unlock((v4 + 24));
    return v5;
  }

  return result;
}

void sub_22852EF0C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v38 = a4;
  v39[1] = *MEMORY[0x277D85DE8];
  v7 = sub_22855C1DC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v36 = a1;
  v14 = *a1;
  if (*a1)
  {
    v35 = a3;
    v15 = *(v14 + 16);

    v16 = [v15 transactionUUID];
    sub_22855C1BC();

    v17 = [a2 UUID];
    sub_22855C1BC();

    LOBYTE(v17) = sub_22855C1AC();
    v18 = *(v8 + 8);
    v18(v11, v7);
    v18(v13, v7);
    if (v17)
    {
      *v38 = v14;
      return;
    }

    a3 = v35;
  }

  v37 = a2;
  v34 = v14;
  v19 = *(a3 + 16);
  v20 = [a2 UUID];
  sub_22855C1BC();

  v21 = objc_allocWithZone(MEMORY[0x277CCD948]);
  v22 = sub_22855C19C();
  v23 = *(v8 + 8);
  v23(v13, v7);
  v24 = [v21 initWithHealthStore:v19 transactionUUID:v22];

  v25 = [v24 transactionUUID];
  sub_22855C1BC();

  v26 = [v37 UUID];
  sub_22855C1BC();

  LOBYTE(v26) = sub_22855C1AC();
  v23(v11, v7);
  v23(v13, v7);
  if (v26)
  {
    v39[0] = 0;
    v27 = [v24 isCommittedWithError_];
    if (!v27)
    {
      v32 = v39[0];
      v33 = sub_22855BF3C();

      swift_willThrow();
      *v38 = 0;
      return;
    }

    v28 = v27;
    v29 = v39[0];
    v30 = [v28 BOOLValue];

    if (v30)
    {

      type metadata accessor for CachingSharedSummaryTransactionBuilder();
      swift_allocObject();
      v31 = sub_228434304(v24, sub_228471EF8, 0);

      *v36 = v31;
      *v38 = v31;

      return;
    }
  }

  *v38 = 0;
}

uint64_t HealthPlatformContextProvider.Context.sharableModelStorage(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = *(v4 + 16);

  sub_22847065C(v10, sub_228530758, v9);
}

uint64_t sub_22852F3A8(id a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(void *))
{
  if (a2)
  {
    v7 = a1;
    sub_2283F9B94(0, &qword_280DECFE0, MEMORY[0x277D84948]);
    swift_willThrowTypedImpl();
    v15[0] = a1;
    LOBYTE(v16) = 1;
    v8 = a1;
    a5(v15);
    sub_22853103C(a1, 1);
    v9 = v15;
  }

  else
  {
    v16 = type metadata accessor for CachingSharedSummaryTransactionBuilder();
    v17 = &protocol witness table for CachingSharedSummaryTransactionBuilder;
    v15[1] = a4;
    v15[2] = a1;
    v15[0] = a3;
    v13[3] = &type metadata for TransactionBuilderSharableModelStorageAdapter;
    v13[4] = &protocol witness table for TransactionBuilderSharableModelStorageAdapter;
    v13[0] = swift_allocObject();
    sub_228531048(v15, v13[0] + 16);
    v14 = 0;
    sub_228476E50(a1, 0);

    a5(v13);
    sub_2285310A4(v15);
    v9 = v13;
  }

  return sub_2285316D4(v9, sub_2284F40B4);
}

void HealthPlatformContextProvider.Context.sharableModelReadableStorage(for:transaction:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = HealthPlatformContextProvider.Context.sharingSummaryProfileTransactionBuilder(transaction:)();
  if (v6)
  {
    v7 = v6;
    a3[3] = &type metadata for TransactionBuilderSharableModelStorageAdapter;
    a3[4] = &protocol witness table for TransactionBuilderSharableModelStorageAdapter;
    v8 = swift_allocObject();
    *a3 = v8;
    v8[7] = type metadata accessor for CachingSharedSummaryTransactionBuilder();
    v8[8] = &protocol witness table for CachingSharedSummaryTransactionBuilder;
    v8[3] = a2;
    v8[4] = v7;
    v8[2] = a1;
  }

  else
  {
    sub_2284811C0();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
  }
}

id HealthPlatformContextProvider.Context.contextDescription.getter@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) profileIdentifier];
  *a1 = result;
  return result;
}

uint64_t HealthPlatformContextProvider.Context.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC14HealthPlatform29HealthPlatformContextProvider7Context_logger;
  v4 = sub_22855CABC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static HealthPlatformContextProvider.Context.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
  v4 = [*(a1 + 16) profileIdentifier];
  v5 = [*(a2 + 16) profileIdentifier];
  LOBYTE(a1) = sub_22855D9AC();

  return a1 & 1;
}

uint64_t sub_22852F760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000022856E8C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_22855E15C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_22852F7F4(uint64_t a1)
{
  v2 = sub_22853075C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22852F830(uint64_t a1)
{
  v2 = sub_22853075C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HealthPlatformContextProvider.Context.Description.encode(to:)(void *a1)
{
  v18[2] = *MEMORY[0x277D85DE8];
  sub_2285307B0(0, &qword_27D840828, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v18[-1] - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22853075C();
  sub_22855E31C();
  v9 = objc_opt_self();
  v18[0] = 0;
  v10 = [v9 archivedDataWithRootObject:v8 requiringSecureCoding:1 error:v18];
  v11 = v18[0];
  if (v10)
  {
    v12 = sub_22855C09C();
    v14 = v13;

    v18[0] = v12;
    v18[1] = v14;
    sub_22844AF8C();
    sub_22855E0CC();
    (*(v5 + 8))(v7, v4);
    return sub_22842B38C(v12, v14);
  }

  else
  {
    v16 = v11;
    sub_22855BF3C();

    swift_willThrow();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t HealthPlatformContextProvider.Context.Description.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2285307B0(0, &unk_27D840840, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22853075C();
  sub_22855E30C();
  if (!v2)
  {
    sub_22844AE10();
    sub_22855E03C();
    v11 = v16[0];
    v10 = v16[1];
    sub_2283EF310(0, &unk_280DEEB40, 0x277CCAAC8);
    sub_2283EF310(0, &qword_280DEE7B0, 0x277CCD7C8);
    v12 = sub_22855D78C();
    if (v12)
    {
      v13 = v12;
      (*(v7 + 8))(v9, v6);
      sub_22842B38C(v11, v10);
      *a2 = v13;
    }

    else
    {
      sub_228530814();
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
      sub_22842B38C(v11, v10);
      (*(v7 + 8))(v9, v6);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t HealthPlatformContextProvider.Context.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  v1 = OBJC_IVAR____TtCC14HealthPlatform29HealthPlatformContextProvider7Context_logger;
  v2 = sub_22855CABC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_22852FE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = *(v4 + 16);

  sub_22847065C(v10, sub_22853178C, v9);
}

void sub_22852FEE4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = HealthPlatformContextProvider.Context.sharingSummaryProfileTransactionBuilder(transaction:)();
  if (v6)
  {
    v7 = v6;
    a3[3] = &type metadata for TransactionBuilderSharableModelStorageAdapter;
    a3[4] = &protocol witness table for TransactionBuilderSharableModelStorageAdapter;
    v8 = swift_allocObject();
    *a3 = v8;
    v8[7] = type metadata accessor for CachingSharedSummaryTransactionBuilder();
    v8[8] = &protocol witness table for CachingSharedSummaryTransactionBuilder;
    v8[3] = a2;
    v8[4] = v7;
    v8[2] = a1;
  }

  else
  {
    sub_2284811C0();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
  }
}

uint64_t HealthPlatformContextProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_logger;
  v2 = sub_22855CABC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_2285300A8(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void sub_228530104()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_lock);
  os_unfair_lock_lock(v1 + 20);
  sub_2285317B0(&v1[4], &v2);
  os_unfair_lock_unlock(v1 + 20);
}

void sub_228530184()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform29HealthPlatformContextProvider_lock);
  os_unfair_lock_lock(v1 + 20);
  sub_228531744(&v1[4]);

  os_unfair_lock_unlock(v1 + 20);
}

void sub_2285301E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = *v3;
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_228401F54;
    v7[3] = &block_descriptor_58;
    v6 = _Block_copy(v7);
  }

  else
  {
    v6 = 0;
    v5 = *v3;
  }

  [v5 addObserver:a1 completion:v6];
  _Block_release(v6);
}

uint64_t sub_2285302BC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_22852BFE0;
  v6[3] = &block_descriptor_55;
  v4 = _Block_copy(v6);

  [v3 fetchAllProfilesWithCompletion_];
  _Block_release(v4);
}

void *sub_228530370()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_2285303A0@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) profileIdentifier];
  *a1 = result;
  return result;
}

id sub_2285303DC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v5 = sub_22855CABC();
  __swift_project_value_buffer(v5, qword_280DEEC98);

  v6 = sub_22855CA8C();
  v7 = sub_22855D66C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315394;
    v10 = sub_2284FF8D0(ObjectType);
    v12 = sub_2283F8938(v10, v11, &v20);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v19 = a1;
    sub_2284FF854();

    v13 = sub_22855D1BC();
    v15 = sub_2283F8938(v13, v14, &v20);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_2283ED000, v6, v7, "[%s] register(observer:): %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v9, -1, -1);
    MEMORY[0x22AABAD40](v8, -1, -1);
  }

  v16 = *(a2 + OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_notificationCenter);
  if (qword_280DE93D8 != -1)
  {
    v18 = *(a2 + OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_notificationCenter);
    swift_once();
    v16 = v18;
  }

  return [v16 addObserver:a1 selector:v19 name:v20 object:?];
}

void sub_228530614(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2283F9B94(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_22853067C(uint64_t a1)
{
  sub_228530614(0, &qword_280DECAA0, qword_280DECAA8, &protocol descriptor for HealthExperienceStore, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22853075C()
{
  result = qword_27D840830;
  if (!qword_27D840830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840830);
  }

  return result;
}

void sub_2285307B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22853075C();
    v7 = a3(a1, &type metadata for HealthPlatformContextProvider.Context.Description.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_228530814()
{
  result = qword_27D840850;
  if (!qword_27D840850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840850);
  }

  return result;
}

unint64_t sub_22853086C()
{
  result = qword_27D840858;
  if (!qword_27D840858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840858);
  }

  return result;
}

unint64_t sub_2285308C4()
{
  result = qword_27D840860;
  if (!qword_27D840860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840860);
  }

  return result;
}

unint64_t sub_22853091C()
{
  result = qword_27D840868;
  if (!qword_27D840868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840868);
  }

  return result;
}

unint64_t sub_228530974()
{
  result = qword_27D840870;
  if (!qword_27D840870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840870);
  }

  return result;
}

uint64_t sub_2285309C8(uint64_t a1)
{
  result = sub_228530A20(&unk_280DEC378, type metadata accessor for HealthPlatformContextProvider.Context, &protocol conformance descriptor for HealthPlatformContextProvider.Context);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_228530A20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_228530AB0(uint64_t a1)
{
  result = sub_228530A20(&qword_280DEC390, type metadata accessor for HealthPlatformContextProvider.Context, &protocol conformance descriptor for HealthPlatformContextProvider.Context);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_228530B54()
{
  result = qword_27D840880;
  if (!qword_27D840880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840880);
  }

  return result;
}

uint64_t sub_228530C0C(uint64_t a1)
{
  result = sub_22855CABC();
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

uint64_t sub_228530D18(uint64_t a1)
{
  result = sub_22855CABC();
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

uint64_t sub_228530E34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_228530E80(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

unint64_t sub_228530EE8()
{
  result = qword_27D8408F8;
  if (!qword_27D8408F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8408F8);
  }

  return result;
}

unint64_t sub_228530F40()
{
  result = qword_27D840900;
  if (!qword_27D840900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840900);
  }

  return result;
}

unint64_t sub_228530F98()
{
  result = qword_27D840908;
  if (!qword_27D840908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840908);
  }

  return result;
}

uint64_t objectdestroy_16Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_22853103C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_228531130(unint64_t a1, unint64_t a2)
{
  v12 = a2;
  if (a1 >> 62)
  {
LABEL_17:
    v11 = a1 & 0xFFFFFFFFFFFFFF8;
    v3 = sub_22855DB4C();
  }

  else
  {
    v11 = a1 & 0xFFFFFFFFFFFFFF8;
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x22AAB9D20](v4, a1);
    }

    else
    {
      if (v4 >= *(v11 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = [*(v5 + 16) profileIdentifier];
    v13 = v6;
    MEMORY[0x28223BE20](v6);
    v10[2] = &v13;
    v7 = sub_2284C6EEC(sub_228531790, v10, v12);

    if ((v7 & 1) == 0)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_2285312B0(unint64_t *a1, unint64_t a2)
{
  v4 = a2;
  v5 = a1;
  v6 = *a1;
  v7 = sub_228531130(*a1, a2);
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_22855DB4C();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v22 = v5;
  v23 = 0;
  v9 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v9 == sub_22855DB4C())
      {
        return v2;
      }
    }

    else if (v9 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x22AAB9D20](v9, v6);
      goto LABEL_16;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

    v11 = *(v6 + 8 * v9 + 32);

LABEL_16:
    v12 = [*(v11 + 16) profileIdentifier];
    v24 = v12;
    MEMORY[0x28223BE20](v12);
    v21[2] = &v24;
    v5 = v4;
    v13 = v23;
    v14 = sub_2284C6EEC(sub_2285315EC, v21, v4);
    v23 = v13;

    if (v14)
    {
      if (v2 == v9)
      {
        v4 = v5;
        v10 = __OFADD__(v2++, 1);
        if (v10)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x22AAB9D20](v2, v6);
          v16 = MEMORY[0x22AAB9D20](v9, v6);
        }

        else
        {
          if ((v2 & 0x8000000000000000) != 0)
          {
            goto LABEL_50;
          }

          v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v2 >= v17)
          {
            goto LABEL_51;
          }

          if (v9 >= v17)
          {
            goto LABEL_52;
          }

          v15 = *(v6 + 32 + 8 * v2);
          v16 = *(v6 + 32 + 8 * v9);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
        {
          v6 = sub_22847FD78();
          v18 = (v6 >> 62) & 1;
        }

        else
        {
          LODWORD(v18) = 0;
        }

        v19 = v6 & 0xFFFFFFFFFFFFFF8;
        *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v16;

        if ((v6 & 0x8000000000000000) != 0 || v18)
        {
          v6 = sub_22847FD78();
          v19 = v6 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_43:
            __break(1u);
            return v2;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v9 >= *(v19 + 16))
        {
          goto LABEL_49;
        }

        v4 = v5;
        *(v19 + 8 * v9 + 32) = v15;

        *v22 = v6;
        v10 = __OFADD__(v2++, 1);
        if (v10)
        {
          goto LABEL_48;
        }
      }
    }

    else
    {
LABEL_8:
      v4 = v5;
    }

    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return sub_22855DB4C();
}

char *sub_22853159C@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  result = sub_22852C684(*a1, *(v2 + 24));
  *a2 = result;
  return result;
}

void sub_228531670(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2285316D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2285317C8(uint64_t a1)
{
  v1 = a1;
  v28 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22855DB4C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v34 = MEMORY[0x277D84F90];
    sub_228427780(0, v2 & ~(v2 >> 63), 0);
    v29 = v34;
    if (v28)
    {
      v3 = sub_22855DDEC();
    }

    else
    {
      v3 = sub_22855DAAC();
      v4 = *(v1 + 36);
    }

    v31 = v3;
    v32 = v4;
    v33 = v28 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v26 = v2;
      v27 = v1;
      while (v5 < v2)
      {
        if (__OFADD__(v5, 1))
        {
          goto LABEL_24;
        }

        v13 = v31;
        v14 = v32;
        v15 = v33;
        sub_228534BB8(v30, v31, v32, v33, v1);
        v17 = v16;
        v18 = v30[0];
        v19 = [v16 code];
        v20 = [v18 longLongValue];

        v21 = v29;
        v34 = v29;
        v23 = *(v29 + 16);
        v22 = *(v29 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_228427780((v22 > 1), v23 + 1, 1);
          v21 = v34;
        }

        *(v21 + 16) = v23 + 1;
        v24 = v21 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v20;
        v29 = v21;
        if (v28)
        {
          v1 = v27;
          if (!v15)
          {
            goto LABEL_26;
          }

          if (sub_22855DE2C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v26;
          v12 = v5 + 1;
          sub_228535B6C(0);
          v25 = sub_22855D10C();
          sub_22855DECC();
          v25(v30, 0);
        }

        else
        {
          v1 = v27;
          sub_228534A44(v13, v14, v15, v27, &qword_280DEE7B8, 0x277CCD720, sub_228443E90);
          v7 = v6;
          v9 = v8;
          v11 = v10;
          sub_228416CB8(v13, v14, v15);
          v31 = v7;
          v32 = v9;
          v33 = v11 & 1;
          v2 = v26;
          v12 = v5 + 1;
        }

        ++v5;
        if (v12 == v2)
        {
          sub_228416CB8(v31, v32, v33);
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_228531AA4(uint64_t a1)
{
  v28 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22855DB4C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v34 = MEMORY[0x277D84F90];
    sub_2284277A0(0, v2 & ~(v2 >> 63), 0);
    v29 = v34;
    if (v28)
    {
      v3 = sub_22855DAEC();
    }

    else
    {
      v3 = sub_22855DAAC();
      v4 = *(a1 + 36);
    }

    v31 = v3;
    v32 = v4;
    v33 = v28 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v27 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v31;
        v9 = v32;
        v10 = v33;
        sub_22845F984(v31, v32, v33, a1);
        v12 = v11;
        v13 = [v11 code];

        v14 = v29;
        v34 = v29;
        v16 = *(v29 + 16);
        v15 = *(v29 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_2284277A0((v15 > 1), v16 + 1, 1);
          v14 = v34;
        }

        *(v14 + 16) = v16 + 1;
        *(v14 + 8 * v16 + 32) = v13;
        v29 = v14;
        if (v28)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          if (sub_22855DB0C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v27;
          sub_228535C28(0);
          v6 = sub_22855D54C();
          sub_22855DBBC();
          v6(v30, 0);
          if (v5 == v27)
          {
LABEL_32:
            sub_228416CB8(v31, v32, v33);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v17 = 1 << *(a1 + 32);
          if (v8 >= v17)
          {
            goto LABEL_36;
          }

          v18 = v8 >> 6;
          v19 = *(a1 + 56 + 8 * (v8 >> 6));
          if (((v19 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(a1 + 36) != v9)
          {
            goto LABEL_38;
          }

          v20 = v19 & (-2 << (v8 & 0x3F));
          if (v20)
          {
            v17 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v21 = v18 << 6;
            v22 = v18 + 1;
            v23 = (a1 + 64 + 8 * v18);
            while (v22 < (v17 + 63) >> 6)
            {
              v25 = *v23++;
              v24 = v25;
              v21 += 64;
              ++v22;
              if (v25)
              {
                sub_228416CB8(v8, v9, 0);
                v17 = __clz(__rbit64(v24)) + v21;
                goto LABEL_31;
              }
            }

            sub_228416CB8(v8, v9, 0);
          }

LABEL_31:
          v26 = *(a1 + 36);
          v31 = v17;
          v32 = v26;
          v33 = 0;
          v2 = v27;
          if (v5 == v27)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t static InputSignalSet.LookupKey.objectTypeAnchorQuery.getter()
{
  v0 = sub_22855C85C();
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  type metadata accessor for ObjectTypeAnchorQueryInputSignal();
  return sub_22855C61C();
}

void *ObjectTypeAnchorQueryInputSignal.__allocating_init(context:observer:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  ObjectType = swift_getObjectType();

  return sub_228534EA0(a1, a3, a4, a5, v5, ObjectType, a2);
}

void *ObjectTypeAnchorQueryInputSignal.__allocating_init(context:observer:healthStore:changesObserver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = a6[3];
  v14 = a6[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a6, v13);
  v16 = sub_228535420(a1, a2, a3, a4, a5, v15, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_0(a6);
  return v16;
}

void *ObjectTypeAnchorQueryInputSignal.init(context:observer:healthStore:changesObserver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = a6[3];
  v14 = a6[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a6, v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v19 = sub_228534D9C(a1, a2, a3, a4, a5, v17, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_0(a6);
  return v19;
}

void sub_228532134(void *a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v7 = sub_22855C85C();
  v76 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22855CABC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v71 - v15;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v18 = Strong;
  if (a2)
  {
    v74 = v10;
    v75 = v11;
    swift_getObjectType();
    v19 = a2;
    sub_22855C59C();
    v20 = a2;

    v21 = sub_22855CA8C();
    v22 = sub_22855D68C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v73 = a4;
      v24 = v23;
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v78 = v72;
      *v24 = 136315394;
      sub_22855C84C();
      sub_22840A3D8(&qword_280DE9E98, 255, MEMORY[0x277D11C40], MEMORY[0x277D11C50]);
      v25 = sub_22855E11C();
      v27 = v26;
      (*(v76 + 8))(v9, v7);
      v28 = sub_2283F8938(v25, v27, &v78);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2112;
      v29 = a2;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v30;
      v31 = v71;
      *v71 = v30;
      _os_log_impl(&dword_2283ED000, v21, v22, "[%s] Query failed: %@; attempting to restart query.", v24, 0x16u);
      sub_22841DC98(v31);
      MEMORY[0x22AABAD40](v31, -1, -1);
      v32 = v72;
      __swift_destroy_boxed_opaque_existential_0(v72);
      MEMORY[0x22AABAD40](v32, -1, -1);
      v33 = v24;
      a4 = v73;
      MEMORY[0x22AABAD40](v33, -1, -1);
    }

    v75[1](v16, v74);
    if (qword_27D83F018 != -1)
    {
      goto LABEL_36;
    }

    goto LABEL_6;
  }

  if (!a1)
  {
    v75 = v11;
    swift_getObjectType();
    sub_22855C59C();

    v54 = sub_22855CA8C();
    v55 = sub_22855D68C();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v74 = v10;
      v57 = v56;
      v73 = swift_slowAlloc();
      v78 = v73;
      *v57 = 136315138;
      sub_22855C84C();
      sub_22840A3D8(&qword_280DE9E98, 255, MEMORY[0x277D11C40], MEMORY[0x277D11C50]);
      v58 = sub_22855E11C();
      v59 = a4;
      v61 = v60;
      (*(v76 + 8))(v9, v7);
      v62 = sub_2283F8938(v58, v61, &v78);
      a4 = v59;

      *(v57 + 4) = v62;
      _os_log_impl(&dword_2283ED000, v54, v55, "[%s] Query failed without reporting an error (nil anchor); attempting to restart query.", v57, 0xCu);
      v63 = v73;
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x22AABAD40](v63, -1, -1);
      MEMORY[0x22AABAD40](v57, -1, -1);

      v75[1](v14, v74);
    }

    else
    {

      v75[1](v14, v10);
    }

    if (qword_27D83F018 != -1)
    {
      swift_once();
    }

    v70 = swift_allocObject();
    *(v70 + 16) = v18;
    *(v70 + 24) = a4;

    sub_228506C84(sub_228535ADC, v70);

    goto LABEL_7;
  }

  v76 = Strong;
  v75 = a1;
  v35 = [v75 anchors];
  sub_2283EF310(0, &qword_280DEE7B8, 0x277CCD720);
  sub_2283EF310(0, &qword_280DED090, 0x277CCABB0);
  sub_22844B928(&qword_280DED1D8, &qword_280DEE7B8, 0x277CCD720);
  v36 = sub_22855D0EC();

  sub_2285317C8(v36);
  a2 = v37;
  v74 = 0;

  a4 = a2[2];
  if (!a4)
  {
    v39 = MEMORY[0x277D84F98];
LABEL_27:

    v65 = v76;
    v66 = *(v76 + 96);
    MEMORY[0x28223BE20](v64);
    v67 = v75;
    *(&v71 - 4) = v75;
    *(&v71 - 3) = v65;
    *(&v71 - 2) = v39;

    os_unfair_lock_lock((v66 + 24));
    sub_228535B14((v66 + 16), &v78);
    os_unfair_lock_unlock((v66 + 24));

    v68 = v78;
    swift_getObjectType();
    v78 = v68;
    v77 = v65;
    type metadata accessor for ObjectTypeAnchorQueryInputSignal();
    sub_22840A3D8(&qword_280DEA848, v69, type metadata accessor for ObjectTypeAnchorQueryInputSignal, &protocol conformance descriptor for ObjectTypeAnchorQueryInputSignal);
    sub_22855C78C();

    return;
  }

  v38 = 0;
  v18 = a2 + 5;
  v39 = MEMORY[0x277D84F98];
  while (v38 < a2[2])
  {
    v41 = *(v18 - 1);
    v40 = *v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v39;
    v43 = sub_22844C568(v41);
    v45 = v39[2];
    v46 = (v44 & 1) == 0;
    v47 = __OFADD__(v45, v46);
    v48 = v45 + v46;
    if (v47)
    {
      goto LABEL_34;
    }

    v49 = v44;
    if (v39[3] < v48)
    {
      sub_2284449D4(v48, isUniquelyReferenced_nonNull_native);
      v43 = sub_22844C568(v41);
      if ((v49 & 1) != (v50 & 1))
      {
        type metadata accessor for _HKDataTypeCode(0);
        sub_22855E1BC();
        __break(1u);
        return;
      }

LABEL_19:
      v39 = v78;
      if (v49)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }

    v53 = v43;
    sub_228447F84();
    v43 = v53;
    v39 = v78;
    if (v49)
    {
LABEL_11:
      *(v39[7] + 8 * v43) = v40;
      goto LABEL_12;
    }

LABEL_20:
    v39[(v43 >> 6) + 8] |= 1 << v43;
    *(v39[6] + 8 * v43) = v41;
    *(v39[7] + 8 * v43) = v40;
    v51 = v39[2];
    v47 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (v47)
    {
      goto LABEL_35;
    }

    v39[2] = v52;
LABEL_12:
    v38 = (v38 + 1);
    v18 += 2;
    if (a4 == v38)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  swift_once();
LABEL_6:
  v34 = swift_allocObject();
  *(v34 + 16) = v18;
  *(v34 + 24) = a4;

  sub_228506C84(sub_228535B34, v34);

LABEL_7:
}

uint64_t sub_228532AC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a2;
  v33 = a4;
  v5 = sub_22855C85C();
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22855CABC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22855C59C();

  v12 = sub_22855CA8C();
  v13 = sub_22855D6AC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = v9;
    v15 = v14;
    v16 = swift_slowAlloc();
    v29 = v8;
    v17 = v16;
    v34 = v16;
    *v15 = 136315138;
    sub_22855C84C();
    sub_22840A3D8(&qword_280DE9E98, 255, MEMORY[0x277D11C40], MEMORY[0x277D11C50]);
    v18 = sub_22855E11C();
    v20 = v19;
    (*(v31 + 8))(v7, v5);
    v21 = sub_2283F8938(v18, v20, &v34);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_2283ED000, v12, v13, "[%s] Device unlocked; retrying.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AABAD40](v17, -1, -1);
    MEMORY[0x22AABAD40](v15, -1, -1);

    (*(v30 + 8))(v11, v29);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v22 = a1[10];
  v23 = a1[11];
  __swift_project_boxed_opaque_existential_1(a1 + 7, v22);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v26 = v32;
  *(v25 + 16) = v24;
  *(v25 + 24) = v26;
  v27 = *(v23 + 8);

  v27(v33, v25, v22, v23);
}

double sub_228532E64@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v46 = a5;
  v47 = a4;
  v7 = sub_22855C85C();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22855CABC();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a2 anchors];
  v13 = sub_2283EF310(0, &qword_280DEE7B8, 0x277CCD720);
  sub_2283EF310(0, &qword_280DED090, 0x277CCABB0);
  sub_22844B928(&qword_280DED1D8, &qword_280DEE7B8, 0x277CCD720);
  v39 = v13;
  v14 = sub_22855D0EC();

  v15 = a2;
  v45 = a1;
  v16 = v42;
  sub_228535044(v14, a1, v15);
  v18 = v17;
  v42 = v16;

  swift_getObjectType();
  sub_22855C59C();

  v19 = sub_22855CA8C();
  v20 = sub_22855D6AC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v48 = v37;
    *v21 = 136315394;
    v22 = v38;
    sub_22855C84C();
    sub_22840A3D8(&qword_280DE9E98, 255, MEMORY[0x277D11C40], MEMORY[0x277D11C50]);
    v23 = v41;
    v24 = sub_22855E11C();
    v26 = v25;
    (*(v40 + 8))(v22, v23);
    v27 = sub_2283F8938(v24, v26, &v48);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2080;
    v28 = MEMORY[0x22AAB9430](v18, v39);
    v30 = v29;

    v31 = sub_2283F8938(v28, v30, &v48);

    *(v21 + 14) = v31;
    _os_log_impl(&dword_2283ED000, v19, v20, "[%s] Types changed: %s", v21, 0x16u);
    v32 = v37;
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v32, -1, -1);
    MEMORY[0x22AABAD40](v21, -1, -1);
  }

  else
  {
  }

  (*(v43 + 8))(v11, v44);
  v33 = v45;
  v34 = v47;

  *v33 = v34;
  *v46 = v34;

  return result;
}

id sub_2285332A8(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  if (*a1)
  {
    [*(a2 + 24) stopQuery_];
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = objc_allocWithZone(MEMORY[0x277CCDE18]);
  v14[4] = sub_228535AAC;
  v14[5] = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2283EEC60;
  v14[3] = &block_descriptor_29;
  v11 = _Block_copy(v14);

  v12 = [v10 initWithUpdateHandler_];
  _Block_release(v11);

  *a1 = v12;
  return [*(a2 + 24) executeQuery_];
}

void sub_2285333EC()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_228535A8C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t ObjectTypeAnchorQueryInputSignal.Anchor.anchorsByCode.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ObjectTypeAnchorQueryInputSignal.Anchor.hasDifference(from:for:)(uint64_t result, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = *v2;
  v7 = *result;
  while (v5 < *(v3 + 16))
  {
    v8 = *(v3 + 32 + 8 * v5);
    if (*(v6 + 16) && (result = sub_22844C568(*(v3 + 32 + 8 * v5)), (v9 & 1) != 0))
    {
      v10 = 0;
      v11 = *(*(v6 + 56) + 8 * result);
      if (!v7)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v11 = 0;
      v10 = 1;
      if (!v7)
      {
        goto LABEL_3;
      }
    }

    if (!*(v7 + 16) || (result = sub_22844C568(v8), (v12 & 1) == 0))
    {
LABEL_3:
      if ((v10 & 1) == 0)
      {
        return 1;
      }

      goto LABEL_4;
    }

    if (v11 == *(*(v7 + 56) + 8 * result))
    {
      v13 = v10;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 1;
    }

LABEL_4:
    if (v4 == ++v5)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t ObjectTypeAnchorQueryInputSignal.Anchor.merged(with:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v5;
  sub_2285347EC(v4, sub_228534E94, 0, isUniquelyReferenced_nonNull_native, &v8);
  result = v8;
  *a2 = v8;
  return result;
}

uint64_t sub_22853365C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4273726F68636E61 && a2 == 0xED000065646F4379)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22855E15C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2285336EC(uint64_t a1)
{
  v2 = sub_22853554C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228533728(uint64_t a1)
{
  v2 = sub_22853554C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ObjectTypeAnchorQueryInputSignal.Anchor.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_2285355A0(0, &qword_280DE9020, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v43 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22853554C();
  sub_22855E30C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  sub_22844AE64();
  sub_22844AF28(&qword_280DE96B0, MEMORY[0x277D83BB8], MEMORY[0x277D84A58], MEMORY[0x277D83528]);
  sub_22855E03C();
  v43[1] = 0;
  v44 = v9;
  v45 = v6;
  v46 = a2;
  v47 = a1;
  v11 = v50 + 8;
  v12 = 1 << *(v50 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v50[8];
  v15 = (v12 + 63) >> 6;
  v48 = v50;

  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  v49 = v7;
  if (v14)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      type metadata accessor for _HKDataTypeCode(0);
      result = sub_22855E1BC();
      __break(1u);
      return result;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = v11[v18];
    ++v16;
    if (v14)
    {
      v16 = v18;
      do
      {
LABEL_11:
        v19 = (v16 << 9) | (8 * __clz(__rbit64(v14)));
        v20 = *(v48[6] + v19);
        v21 = *(v48[7] + v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_228426664(0, *(v17 + 2) + 1, 1, v17);
        }

        v23 = *(v17 + 2);
        v22 = *(v17 + 3);
        if (v23 >= v22 >> 1)
        {
          v17 = sub_228426664((v22 > 1), v23 + 1, 1, v17);
        }

        v14 &= v14 - 1;
        *(v17 + 2) = v23 + 1;
        v24 = &v17[16 * v23];
        *(v24 + 4) = v20;
        *(v24 + 5) = v21;
        v7 = v49;
      }

      while (v14);
    }
  }

  v48 = *(v17 + 2);
  if (v48)
  {
    v25 = 0;
    v26 = (v17 + 40);
    v27 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v25 >= *(v17 + 2))
      {
        goto LABEL_36;
      }

      v29 = *(v26 - 1);
      v28 = *v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v27;
      v32 = sub_22844C568(v29);
      v33 = v27[2];
      v34 = (v31 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_37;
      }

      v36 = v31;
      if (v27[3] >= v35)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v27 = v50;
          if (v31)
          {
            goto LABEL_19;
          }
        }

        else
        {
          sub_228447F84();
          v27 = v50;
          if (v36)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        sub_2284449D4(v35, isUniquelyReferenced_nonNull_native);
        v37 = sub_22844C568(v29);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_39;
        }

        v32 = v37;
        v27 = v50;
        if (v36)
        {
LABEL_19:
          *(v27[7] + 8 * v32) = v28;
          goto LABEL_20;
        }
      }

      v27[(v32 >> 6) + 8] |= 1 << v32;
      *(v27[6] + 8 * v32) = v29;
      *(v27[7] + 8 * v32) = v28;
      v39 = v27[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_38;
      }

      v27[2] = v41;
LABEL_20:
      v25 = (v25 + 1);
      v26 += 2;
      v7 = v49;
      if (v48 == v25)
      {
        goto LABEL_34;
      }
    }
  }

  v27 = MEMORY[0x277D84F98];
LABEL_34:

  (*(v7 + 8))(v44, v45);
  v42 = v47;
  *v46 = v27;
  return __swift_destroy_boxed_opaque_existential_0(v42);
}

uint64_t ObjectTypeAnchorQueryInputSignal.Anchor.encode(to:)(void *a1)
{
  sub_2285355A0(0, &qword_280DE8FD0, MEMORY[0x277D84538]);
  v4 = *(v3 - 8);
  v56 = v3;
  v57 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v52 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22853554C();
  v55 = v6;
  sub_22855E31C();
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
LABEL_19:
    v60 = v9[2];
    if (!v60)
    {
      v34 = MEMORY[0x277D84F98];
LABEL_35:

      v61 = v34;
      sub_22844AE64();
      sub_22844AF28(&qword_280DE96B8, MEMORY[0x277D83B90], MEMORY[0x277D84A30], MEMORY[0x277D83508]);
      v49 = v56;
      v50 = v55;
      sub_22855E0CC();
      (*(v57 + 8))(v50, v49);
    }

    v32 = 0;
    v33 = v9 + 5;
    v34 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v32 >= v9[2])
      {
        goto LABEL_41;
      }

      v36 = *(v33 - 1);
      v35 = *v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = v34;
      v38 = sub_228443D60(v36);
      v40 = v34[2];
      v41 = (v39 & 1) == 0;
      v42 = __OFADD__(v40, v41);
      v43 = v40 + v41;
      if (v42)
      {
        goto LABEL_42;
      }

      v44 = v39;
      if (v34[3] < v43)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_29;
      }

      v48 = v38;
      sub_2284480C4();
      v38 = v48;
      v34 = v61;
      if (v44)
      {
LABEL_21:
        *(v34[7] + 8 * v38) = v35;
        goto LABEL_22;
      }

LABEL_30:
      v34[(v38 >> 6) + 8] |= 1 << v38;
      *(v34[6] + 8 * v38) = v36;
      *(v34[7] + 8 * v38) = v35;
      v46 = v34[2];
      v42 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v42)
      {
        goto LABEL_43;
      }

      v34[2] = v47;
LABEL_22:
      ++v32;
      v33 += 2;
      if (v60 == v32)
      {
        goto LABEL_35;
      }
    }

    sub_228444C48(v43, isUniquelyReferenced_nonNull_native);
    v38 = sub_228443D60(v36);
    if ((v44 & 1) != (v45 & 1))
    {
      goto LABEL_44;
    }

LABEL_29:
    v34 = v61;
    if (v44)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v61 = MEMORY[0x277D84F90];
  v59 = v8;
  v60 = v7;
  sub_228427410(0, v8, 0);
  v9 = v61;
  v10 = v60 + 64;
  v11 = sub_22855DAAC();
  v12 = v59;
  v13 = v60;
  v14 = 0;
  v58 = v60 + 72;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v13 + 32))
  {
    v16 = v11 >> 6;
    v17 = 1 << v11;
    if ((*(v10 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_37;
    }

    v18 = *(*(v13 + 48) + 8 * v11);
    v19 = *(*(v13 + 56) + 8 * v11);
    v20 = *(v13 + 36);
    v61 = v9;
    v22 = v9[2];
    v21 = v9[3];
    if (v22 >= v21 >> 1)
    {
      v53 = v20;
      v54 = v11;
      sub_228427410((v21 > 1), v22 + 1, 1);
      v12 = v59;
      v13 = v60;
      v20 = v53;
      v11 = v54;
      v9 = v61;
    }

    v9[2] = v22 + 1;
    v23 = v9;
    v24 = &v9[2 * v22];
    v24[4] = v18;
    v24[5] = v19;
    v15 = 1 << *(v13 + 32);
    if (v11 >= v15)
    {
      goto LABEL_38;
    }

    v25 = *(v10 + 8 * v16);
    if ((v25 & v17) == 0)
    {
      goto LABEL_39;
    }

    if (v20 != *(v13 + 36))
    {
      goto LABEL_40;
    }

    v26 = v25 & (-2 << (v11 & 0x3F));
    if (v26)
    {
      v15 = __clz(__rbit64(v26)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = v16 << 6;
      v28 = v16 + 1;
      v29 = (v58 + 8 * v16);
      while (v28 < (v15 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          sub_228416CB8(v11, v20, 0);
          v12 = v59;
          v13 = v60;
          v15 = __clz(__rbit64(v30)) + v27;
          goto LABEL_4;
        }
      }

      sub_228416CB8(v11, v20, 0);
      v12 = v59;
      v13 = v60;
    }

LABEL_4:
    ++v14;
    v11 = v15;
    v9 = v23;
    if (v14 == v12)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_22855E1BC();
  __break(1u);
  return result;
}

uint64_t sub_2285340A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v5;
  sub_2285347EC(v4, sub_228534E94, 0, isUniquelyReferenced_nonNull_native, &v8);
  result = v8;
  *a2 = v8;
  return result;
}

uint64_t ObjectTypeAnchorQueryInputSignal.Configuration.init(types:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_228531AA4(a1);
  v4 = v3;

  *a2 = v4;
  return result;
}

uint64_t static ObjectTypeAnchorQueryInputSignal.Configuration.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 32);
  v6 = (v3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t ObjectTypeAnchorQueryInputSignal.Configuration.hash(into:)()
{
  v1 = *v0;
  result = MEMORY[0x22AABA2B0](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = MEMORY[0x22AABA2B0](v5);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t ObjectTypeAnchorQueryInputSignal.Configuration.hashValue.getter()
{
  v1 = *v0;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      MEMORY[0x22AABA2B0](v4);
      --v2;
    }

    while (v2);
  }

  return sub_22855E27C();
}

uint64_t sub_228534308()
{
  v1 = *v0;
  result = MEMORY[0x22AABA2B0](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = MEMORY[0x22AABA2B0](v5);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_22853435C(uint64_t a1)
{
  v2 = *v1;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x22AABA2B0](v5);
      --v3;
    }

    while (v3);
  }

  return sub_22855E27C();
}

uint64_t ObjectTypeAnchorQueryInputSignal.beginObservation(from:configurations:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = v2[10];
  v7 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v6);
  v8 = (*(v7 + 16))(v6, v7);
  v9 = MEMORY[0x277D84FA0];
  v32 = MEMORY[0x277D84FA0];
  v10 = *(a2 + 16);
  if (v10)
  {
    v29 = v5;
    v11 = a2 + 32;
    type metadata accessor for _HKDataTypeCode(0);
    v13 = v12;
    v14 = sub_22840A3D8(&unk_280DE9450, 255, type metadata accessor for _HKDataTypeCode, &unk_22855FD6C);
    for (i = 0; i != v10; ++i)
    {
      v16 = *(v11 + 8 * i);
      v17 = *(v16 + 16);

      v18 = MEMORY[0x22AAB95B0](v17, v13, v14);
      v31 = v18;
      v19 = *(v16 + 16);
      if (v19)
      {
        v20 = (v16 + 32);
        do
        {
          v21 = *v20++;
          sub_22848513C(&v30, v21);
          --v19;
        }

        while (v19);
        v18 = v31;
      }

      sub_22844329C(v18);
    }

    v9 = v32;
    v5 = v29;
  }

  if (v5)
  {
    v22 = v3[12];
    MEMORY[0x28223BE20](v8);
    os_unfair_lock_lock((v22 + 24));
    sub_2284B2FEC((v22 + 16));
    os_unfair_lock_unlock((v22 + 24));
  }

  v23 = v3[10];
  v24 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v23);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v9;
  v27 = *(v24 + 8);

  v27(sub_228535604, v26, v23, v24);
}

Swift::Void __swiftcall ObjectTypeAnchorQueryInputSignal.stopObservation()()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  (*(v2 + 16))(v1, v2);
}

uint64_t ObjectTypeAnchorQueryInputSignal.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return v0;
}

uint64_t ObjectTypeAnchorQueryInputSignal.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_228534728()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  __swift_project_boxed_opaque_existential_1((*v0 + 56), v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_228534780(uint64_t a1, uint64_t a2)
{
  v3 = sub_22840A3D8(&qword_280DEA848, a2, type metadata accessor for ObjectTypeAnchorQueryInputSignal, &protocol conformance descriptor for ObjectTypeAnchorQueryInputSignal);

  return MEMORY[0x28216B080](a1, v3);
}

uint64_t sub_2285347EC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v38 = a5;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
    v14 = v11;
LABEL_13:
    v15 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v16 = *(*(a1 + 48) + v15);
    v17 = *(*(a1 + 56) + v15);
    v37[0] = v16;
    v37[1] = v17;
    a2(v36, v37);
    v19 = v36[0];
    v18 = v36[1];
    v20 = *v38;
    v21 = sub_22844C568(v36[0]);
    v23 = v20[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_24;
    }

    v27 = v22;
    if (v20[3] >= v26)
    {
      if ((a4 & 1) == 0)
      {
        v33 = v21;
        sub_228447F84();
        v21 = v33;
      }
    }

    else
    {
      sub_2284449D4(v26, a4 & 1);
      v21 = sub_22844C568(v19);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_26;
      }
    }

    v9 &= v9 - 1;
    v29 = *v38;
    if (v27)
    {
      v12 = v29[7];
      v13 = *(v12 + 8 * v21);
      if (v18 < v13)
      {
        v13 = v18;
      }

      *(v12 + 8 * v21) = v13;
    }

    else
    {
      v29[(v21 >> 6) + 8] |= 1 << v21;
      *(v29[6] + 8 * v21) = v19;
      *(v29[7] + 8 * v21) = v18;
      v30 = v29[2];
      v25 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v25)
      {
        goto LABEL_25;
      }

      v29[2] = v31;
    }

    a4 = 1;
    v11 = v14;
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
    }

    v9 = *(v6 + 8 * v14);
    ++v11;
    if (v9)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  type metadata accessor for _HKDataTypeCode(0);
  result = sub_22855E1BC();
  __break(1u);
  return result;
}

void sub_228534A44(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6, void (*a7)())
{
  if (a3)
  {
    if (sub_22855DE3C() == *(a4 + 36))
    {
      sub_22855DE4C();
      sub_2283EF310(0, a5, a6);
      swift_dynamicCast();
      a7();
      v11 = v10;

      if (v11)
      {
        sub_22855DE1C();
        sub_22855DE6C();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_22855DACC();
}

void sub_228534BB8(void *a1, int64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_22855DE7C();
      sub_2283EF310(0, &qword_280DEE7B8, 0x277CCD720);
      swift_dynamicCast();
      sub_2283EF310(0, &qword_280DED090, 0x277CCABB0);
      swift_dynamicCast();
      *a1 = v13;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_22855DE3C() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_22855DE4C();
  sub_2283EF310(0, &qword_280DEE7B8, 0x277CCD720);
  swift_dynamicCast();
  a2 = sub_228443E90(v13);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a5 + 48) + 8 * a2);
  v11 = *(*(a5 + 56) + 8 * a2);
  *a1 = v11;
  v10;
  v12 = v11;
}

void *sub_228534D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v22 = a8;
  v23 = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a6, a8);
  v18 = sub_22847C878(MEMORY[0x277D84F90]);
  sub_2283FA00C(0, &qword_280DE9108, &type metadata for ObjectTypeAnchorQueryInputSignal.State);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 16) = v18;
  a7[12] = v19;
  sub_2283FAB3C(&v21, (a7 + 7));
  a7[2] = a5;
  a7[3] = a1;
  a7[4] = a2;
  a7[5] = a3;
  a7[6] = a4;
  return a7;
}

__n128 sub_228534E94@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void *sub_228534EA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for ObjectTypeAnchorQueryInputSignal.QueryObserver();
  v13 = swift_allocObject();
  sub_2283FA00C(0, &qword_280DE9110, &type metadata for ObjectTypeAnchorQueryInputSignal.QueryObserver.State);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = 0;
  v13[2] = v14;
  v13[3] = a4;
  v15 = sub_228534F5C(a1, a2, a3, a4, v13, a6, a7);
  v16 = a4;
  return v15;
}

void *sub_228534F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v13 = *a5;
  type metadata accessor for ObjectTypeAnchorQueryInputSignal();
  v14 = swift_allocObject();
  v14[10] = v13;
  v14[11] = &off_283B8BF40;
  v14[7] = a5;
  v15 = sub_22847C878(MEMORY[0x277D84F90]);
  sub_2283FA00C(0, &qword_280DE9108, &type metadata for ObjectTypeAnchorQueryInputSignal.State);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = v15;
  v14[12] = v16;
  v14[2] = a4;
  v14[3] = a1;
  v14[4] = a7;
  v14[5] = a2;
  v14[6] = a3;
  return v14;
}

void sub_228535044(unint64_t a1, uint64_t *a2, void *a3)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_22855DDFC();
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v3 = v4 | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v5 = a1 + 64;
    v6 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 64);
  }

  v11 = 0;
  v36 = v6;
  v12 = (v6 + 64) >> 6;
  v13 = &qword_280DEE7B8;
  while ((v3 & 0x8000000000000000) != 0)
  {
    if (!sub_22855DEBC() || (sub_2283EF310(0, v13, 0x277CCD720), swift_dynamicCast(), v18 = v43, v16 = v11, v17 = v7, !v43))
    {
LABEL_39:
      sub_228407958(v3);
      return;
    }

LABEL_19:
    v41 = v17;
    v42 = v18;
    v19 = [v18 code];
    v20 = *a2;
    if (*(*a2 + 16) && (v21 = sub_22844C568(v19), (v22 & 1) != 0))
    {
      v40 = 0;
      v39 = *(*(v20 + 56) + 8 * v21);
    }

    else
    {
      v39 = 0;
      v40 = 1;
    }

    v23 = [a3 anchors];
    sub_2283EF310(0, v13, 0x277CCD720);
    sub_2283EF310(0, &qword_280DED090, 0x277CCABB0);
    sub_22844B928(&qword_280DED1D8, v13, 0x277CCD720);
    v24 = sub_22855D0EC();

    if ((v24 & 0xC000000000000001) != 0)
    {
      v25 = v12;
      v26 = v5;
      v27 = v13;
      v28 = v3;
      v29 = v42;
      v30 = sub_22855DE8C();

      if (!v30)
      {

        v3 = v28;
        v13 = v27;
        v5 = v26;
        v12 = v25;
        if (v40)
        {
          goto LABEL_8;
        }

        goto LABEL_38;
      }

      swift_dynamicCast();
      v31 = v43;

      v3 = v28;
      v13 = v27;
      v5 = v26;
      v12 = v25;
      if (!v43)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (!*(v24 + 16) || (v32 = sub_228443E90(v42), (v33 & 1) == 0))
      {

LABEL_35:
        if (v40)
        {
          goto LABEL_8;
        }

        goto LABEL_38;
      }

      v31 = *(*(v24 + 56) + 8 * v32);

      if (!v31)
      {
        goto LABEL_35;
      }
    }

    v34 = [v31 longLongValue];

    v35 = v40;
    if (v39 != v34)
    {
      v35 = 1;
    }

    if ((v35 & 1) == 0)
    {
LABEL_8:

      goto LABEL_9;
    }

LABEL_38:
    sub_22855DD1C();
    sub_22855DD5C();
    sub_22855DD6C();
    sub_22855DD2C();
LABEL_9:
    v11 = v16;
    v7 = v41;
  }

  v14 = v11;
  v15 = v7;
  v16 = v11;
  if (v7)
  {
LABEL_15:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v3 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_39;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v12)
    {
      goto LABEL_39;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void *sub_228535420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = a5;
  v15 = *(a8 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a6, a8);
  return sub_228534D9C(a1, a2, a3, a4, v21, v17, v18, a8, a9);
}

unint64_t sub_22853554C()
{
  result = qword_280DEA938[0];
  if (!qword_280DEA938[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DEA938);
  }

  return result;
}

void sub_2285355A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22853554C();
    v7 = a3(a1, &type metadata for ObjectTypeAnchorQueryInputSignal.Anchor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_228535610()
{
  result = qword_280DEA908;
  if (!qword_280DEA908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEA908);
  }

  return result;
}

unint64_t sub_228535668()
{
  result = qword_280DEA918;
  if (!qword_280DEA918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEA918);
  }

  return result;
}

unint64_t sub_2285356C0()
{
  result = qword_280DEA910;
  if (!qword_280DEA910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEA910);
  }

  return result;
}

unint64_t sub_228535718()
{
  result = qword_27D840910;
  if (!qword_27D840910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840910);
  }

  return result;
}

unint64_t sub_228535770()
{
  result = qword_280DEA858[0];
  if (!qword_280DEA858[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DEA858);
  }

  return result;
}

unint64_t sub_2285357C8()
{
  result = qword_280DEA850;
  if (!qword_280DEA850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEA850);
  }

  return result;
}

unint64_t sub_228535868()
{
  result = qword_280DEA920;
  if (!qword_280DEA920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEA920);
  }

  return result;
}

unint64_t sub_228535988()
{
  result = qword_27D840918;
  if (!qword_27D840918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840918);
  }

  return result;
}

unint64_t sub_2285359E0()
{
  result = qword_280DEA928;
  if (!qword_280DEA928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEA928);
  }

  return result;
}

unint64_t sub_228535A38()
{
  result = qword_280DEA930;
  if (!qword_280DEA930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEA930);
  }

  return result;
}

void sub_228535B6C(uint64_t a1)
{
  if (!qword_280DE96F8)
  {
    sub_2283EF310(255, &qword_280DEE7B8, 0x277CCD720);
    sub_2283EF310(255, &qword_280DED090, 0x277CCABB0);
    sub_22844B928(&qword_280DED1D8, &qword_280DEE7B8, 0x277CCD720);
    v1 = sub_22855D11C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE96F8);
    }
  }
}

void sub_228535C28(uint64_t a1)
{
  if (!qword_27D840920)
  {
    sub_2283EF310(255, &qword_280DE94F8, 0x277CCD8D8);
    sub_22844B928(&qword_280DE94F0, &qword_280DE94F8, 0x277CCD8D8);
    v1 = sub_22855D55C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D840920);
    }
  }
}

uint64_t static InputSignalSet.LookupKey.cloudSyncStatus.getter()
{
  v0 = sub_22855C85C();
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  type metadata accessor for CloudSyncStatusInputSignal();
  return sub_22855C61C();
}

uint64_t SyncError.init(error:)(uint64_t a1)
{
  sub_2283EF310(0, &qword_280DED0B0, 0x277CCA9B8);

  return sub_22855D0BC();
}

uint64_t static SyncError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_2283EF310(0, &qword_280DED0B0, 0x277CCA9B8);
  sub_2285362F0(&qword_27D840928, MEMORY[0x277D85380]);

  return sub_22855D09C();
}

uint64_t sub_228535E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22855E15C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_228535F20(uint64_t a1)
{
  v2 = sub_22853615C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228535F5C(uint64_t a1)
{
  v2 = sub_22853615C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SyncError.encode(to:)(void *a1)
{
  sub_22853EC2C(0, &qword_27D840930, sub_22853615C, &type metadata for SyncError.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22853615C();
  sub_22855E31C();
  sub_2283EFE3C(0, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
  sub_228536AA0(&qword_27D840948, MEMORY[0x277CCB2D0]);
  sub_22855E0CC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22853615C()
{
  result = qword_27D840938;
  if (!qword_27D840938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840938);
  }

  return result;
}

uint64_t SyncError.hash(into:)(uint64_t a1)
{
  sub_2283EFE3C(0, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
  sub_228536230();

  return sub_22855D14C();
}

unint64_t sub_228536230()
{
  result = qword_27D840950;
  if (!qword_27D840950)
  {
    sub_2283EFE3C(255, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
    sub_2285362F0(&qword_27D840958, MEMORY[0x277D85378]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840950);
  }

  return result;
}

uint64_t sub_2285362F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2283EF310(255, &qword_280DED0B0, 0x277CCA9B8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SyncError.hashValue.getter()
{
  sub_22855E22C();
  sub_2283EFE3C(0, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
  sub_228536230();
  sub_22855D14C();
  return sub_22855E27C();
}

uint64_t SyncError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_2283EFE3C(0, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
  v4 = v3;
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v20 = &v17 - v5;
  sub_22853EC2C(0, &qword_27D840960, sub_22853615C, &type metadata for SyncError.CodingKeys, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = type metadata accessor for SyncError(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22853615C();
  v13 = v21;
  sub_22855E30C();
  if (!v13)
  {
    v14 = v18;
    v15 = v19;
    sub_228536AA0(&qword_27D840968, MEMORY[0x277CCB2E0]);
    sub_22855E03C();
    (*(v14 + 8))(v9, v7);
    (*(v15 + 32))(v12, v20, v4);
    sub_22853FAF0(v12, v17, type metadata accessor for SyncError);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2285366D0(void *a1)
{
  sub_22853EC2C(0, &qword_27D840930, sub_22853615C, &type metadata for SyncError.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22853615C();
  sub_22855E31C();
  sub_2283EFE3C(0, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
  sub_228536AA0(&qword_27D840948, MEMORY[0x277CCB2D0]);
  sub_22855E0CC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_228536894(uint64_t a1, uint64_t a2)
{
  sub_2283EF310(0, &qword_280DED0B0, 0x277CCA9B8);
  sub_2285362F0(&qword_27D840928, MEMORY[0x277D85380]);

  return sub_22855D09C();
}

uint64_t sub_22853691C()
{
  sub_22855E22C();
  sub_2283EFE3C(0, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
  sub_228536230();
  sub_22855D14C();
  return sub_22855E27C();
}

uint64_t sub_2285369A0(uint64_t a1)
{
  sub_2283EFE3C(0, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
  sub_228536230();

  return sub_22855D14C();
}

uint64_t sub_228536A20(uint64_t a1)
{
  sub_22855E22C();
  sub_2283EFE3C(0, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
  sub_228536230();
  sub_22855D14C();
  return sub_22855E27C();
}

uint64_t sub_228536AA0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2283EFE3C(255, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_228536B14()
{
  v1 = 0x6574656C706D6F63;
  if (*v0 != 1)
  {
    v1 = 0x64656C696166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6572676F72506E69;
  }
}

uint64_t sub_228536B74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22853CF88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_228536B9C(uint64_t a1)
{
  v2 = sub_22853CEB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228536BD8(uint64_t a1)
{
  v2 = sub_22853CEB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_228536C14(uint64_t a1)
{
  v2 = sub_22853CE10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228536C50(uint64_t a1)
{
  v2 = sub_22853CE10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_228536C8C(uint64_t a1)
{
  v2 = sub_22853CDBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228536CC8(uint64_t a1)
{
  v2 = sub_22853CDBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_228536D04(uint64_t a1)
{
  v2 = sub_22853CE64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228536D40(uint64_t a1)
{
  v2 = sub_22853CE64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActiveSyncState.encode(to:)(void *a1)
{
  v2 = MEMORY[0x277D84538];
  sub_22853EC2C(0, &qword_27D840970, sub_22853CDBC, &type metadata for ActiveSyncState.FailedCodingKeys, MEMORY[0x277D84538]);
  v40 = v3;
  v37 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v39 = &v30 - v4;
  v5 = type metadata accessor for SyncError(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v38 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22853EC2C(0, &qword_27D840980, sub_22853CE10, &type metadata for ActiveSyncState.CompletedCodingKeys, v2);
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x28223BE20](v8);
  v34 = &v30 - v9;
  sub_22853EC2C(0, &qword_27D840990, sub_22853CE64, &type metadata for ActiveSyncState.InProgressCodingKeys, v2);
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x28223BE20](v10);
  v31 = &v30 - v11;
  active = type metadata accessor for ActiveSyncState(0);
  MEMORY[0x28223BE20](active - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22853EC2C(0, &qword_27D8409A0, sub_22853CEB8, &type metadata for ActiveSyncState.CodingKeys, v2);
  v42 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22853CEB8();
  sub_22855E31C();
  sub_22853FA88(v41, v14, type metadata accessor for ActiveSyncState);
  v19 = (*(v6 + 48))(v14, 2, v5);
  if (v19)
  {
    if (v19 == 1)
    {
      v43 = 0;
      sub_22853CE64();
      v20 = v31;
      v21 = v42;
      sub_22855E06C();
      v23 = v32;
      v22 = v33;
    }

    else
    {
      v44 = 1;
      sub_22853CE10();
      v20 = v34;
      v21 = v42;
      sub_22855E06C();
      v23 = v35;
      v22 = v36;
    }

    (*(v23 + 8))(v20, v22);
    return (*(v16 + 8))(v18, v21);
  }

  else
  {
    v24 = v37;
    v25 = v38;
    sub_22853FAF0(v14, v38, type metadata accessor for SyncError);
    v45 = 2;
    sub_22853CDBC();
    v26 = v39;
    v27 = v42;
    sub_22855E06C();
    sub_22853EF9C(&qword_27D8409B0, 255, type metadata accessor for SyncError, &protocol conformance descriptor for SyncError);
    v28 = v40;
    sub_22855E0CC();
    (*(v24 + 8))(v26, v28);
    sub_22853D6C4(v25, type metadata accessor for SyncError);
    return (*(v16 + 8))(v18, v27);
  }
}

uint64_t ActiveSyncState.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for SyncError(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for ActiveSyncState(0);
  MEMORY[0x28223BE20](active - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22853FA88(v1, v8, type metadata accessor for ActiveSyncState);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    return MEMORY[0x22AABA2B0](v9 != 1);
  }

  sub_22853FAF0(v8, v5, type metadata accessor for SyncError);
  MEMORY[0x22AABA2B0](2);
  sub_2283EFE3C(0, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
  sub_228536230();
  sub_22855D14C();
  return sub_22853D6C4(v5, type metadata accessor for SyncError);
}

uint64_t ActiveSyncState.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SyncError(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for ActiveSyncState(0);
  MEMORY[0x28223BE20](active - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855E22C();
  sub_22853FA88(v1, v8, type metadata accessor for ActiveSyncState);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    MEMORY[0x22AABA2B0](v9 != 1);
  }

  else
  {
    sub_22853FAF0(v8, v5, type metadata accessor for SyncError);
    MEMORY[0x22AABA2B0](2);
    sub_2283EFE3C(0, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
    sub_228536230();
    sub_22855D14C();
    sub_22853D6C4(v5, type metadata accessor for SyncError);
  }

  return sub_22855E27C();
}

uint64_t ActiveSyncState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = MEMORY[0x277D844C8];
  sub_22853EC2C(0, &qword_27D8409B8, sub_22853CDBC, &type metadata for ActiveSyncState.FailedCodingKeys, MEMORY[0x277D844C8]);
  v5 = *(v4 - 8);
  v50 = v4;
  v51 = v5;
  MEMORY[0x28223BE20](v4);
  v54 = &v45 - v6;
  sub_22853EC2C(0, &qword_27D8409C0, sub_22853CE10, &type metadata for ActiveSyncState.CompletedCodingKeys, v3);
  v49 = v7;
  v47 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v45 - v8;
  sub_22853EC2C(0, &qword_27D8409C8, sub_22853CE64, &type metadata for ActiveSyncState.InProgressCodingKeys, v3);
  v48 = v9;
  v46 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v52 = &v45 - v10;
  sub_22853EC2C(0, &unk_27D8409D0, sub_22853CEB8, &type metadata for ActiveSyncState.CodingKeys, v3);
  v12 = v11;
  v56 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - v13;
  active = type metadata accessor for ActiveSyncState(0);
  v16 = MEMORY[0x28223BE20](active);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  v21 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_22853CEB8();
  v22 = v57;
  sub_22855E30C();
  if (!v22)
  {
    v23 = v52;
    v24 = v53;
    v45 = v18;
    v57 = v20;
    v26 = v54;
    v25 = v55;
    v27 = sub_22855E04C();
    v28 = (2 * *(v27 + 16)) | 1;
    v59 = v27;
    v60 = v27 + 32;
    v61 = 0;
    v62 = v28;
    v29 = sub_2284E2D98();
    v30 = v12;
    if (v29 == 3 || v61 != v62 >> 1)
    {
      v32 = sub_22855DCEC();
      swift_allocError();
      v34 = v33;
      sub_2284E7D94(0);
      *v34 = active;
      sub_22855DFDC();
      sub_22855DCCC();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
      (*(v56 + 8))(v14, v30);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v29)
      {
        v31 = v56;
        if (v29 == 1)
        {
          v63 = 1;
          sub_22853CE10();
          sub_22855DFCC();
          (*(v47 + 8))(v24, v49);
          (*(v31 + 8))(v14, v30);
          swift_unknownObjectRelease();
          v39 = type metadata accessor for SyncError(0);
          v40 = v57;
          (*(*(v39 - 8) + 56))(v57, 2, 2, v39);
        }

        else
        {
          v63 = 2;
          sub_22853CDBC();
          v38 = v26;
          sub_22855DFCC();
          v53 = v30;
          v41 = v31;
          v42 = type metadata accessor for SyncError(0);
          sub_22853EF9C(&qword_27D8409E8, 255, type metadata accessor for SyncError, &protocol conformance descriptor for SyncError);
          v43 = v45;
          v44 = v50;
          sub_22855E03C();
          (*(v51 + 8))(v38, v44);
          (*(v41 + 8))(v14, v53);
          swift_unknownObjectRelease();
          (*(*(v42 - 8) + 56))(v43, 0, 2, v42);
          v40 = v57;
          sub_22853FAF0(v43, v57, type metadata accessor for ActiveSyncState);
        }
      }

      else
      {
        v63 = 0;
        sub_22853CE64();
        sub_22855DFCC();
        v36 = v56;
        (*(v46 + 8))(v23, v48);
        (*(v36 + 8))(v14, v12);
        swift_unknownObjectRelease();
        v37 = type metadata accessor for SyncError(0);
        v40 = v57;
        (*(*(v37 - 8) + 56))(v57, 1, 2, v37);
      }

      sub_22853FAF0(v40, v25, type metadata accessor for ActiveSyncState);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v58);
}

uint64_t sub_228537FB0(uint64_t a1)
{
  v2 = type metadata accessor for SyncError(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22853FA88(v1, v8, type metadata accessor for ActiveSyncState);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    return MEMORY[0x22AABA2B0](v9 != 1);
  }

  sub_22853FAF0(v8, v6, type metadata accessor for SyncError);
  MEMORY[0x22AABA2B0](2);
  sub_2283EFE3C(0, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
  sub_228536230();
  sub_22855D14C();
  return sub_22853D6C4(v6, type metadata accessor for SyncError);
}

uint64_t sub_228538190(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for SyncError(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855E22C();
  sub_22853FA88(v2, v9, type metadata accessor for ActiveSyncState);
  v10 = (*(v4 + 48))(v9, 2, v3);
  if (v10)
  {
    MEMORY[0x22AABA2B0](v10 != 1);
  }

  else
  {
    sub_22853FAF0(v9, v7, type metadata accessor for SyncError);
    MEMORY[0x22AABA2B0](2);
    sub_2283EFE3C(0, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
    sub_228536230();
    sub_22855D14C();
    sub_22853D6C4(v7, type metadata accessor for SyncError);
  }

  return sub_22855E27C();
}

id CloudSyncStatusInputSignal.__allocating_init(observer:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CloudSyncStatusInputSignal.ObserverShim();
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = 0;
  v8 = sub_22853D0AC(a1, a2, v7, objc_allocWithZone(v3));
  swift_unknownObjectRelease();
  return v8;
}

id CloudSyncStatusInputSignal.__allocating_init(observer:shim:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = sub_22853D5AC(a1, a2, v9, v3, v7, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v10;
}

id CloudSyncStatusInputSignal.init(observer:shim:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_22853D310(a1, a2, v11, v3, v7, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v13;
}

uint64_t CloudSyncStatusInputSignal.didUpdate(status:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for CloudSyncStatusInputSignal.Anchor(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v2 + OBJC_IVAR____TtC14HealthPlatform26CloudSyncStatusInputSignal_protectedState);
  v13 = a1;
  v8 = *(*v7 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v9));
  sub_22853D6A8((v7 + v8), v6);
  os_unfair_lock_unlock((v7 + v9));
  swift_getObjectType();
  v14 = v2;
  sub_22853EF9C(qword_280DEAF50, v10, type metadata accessor for CloudSyncStatusInputSignal, &protocol conformance descriptor for CloudSyncStatusInputSignal);
  sub_22855C78C();
  return sub_22853D6C4(v6, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
}

uint64_t sub_228538738@<X0>(void **a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  sub_2283F1134(0, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = *a1;
  v10 = a2;

  *a1 = a2;
  v11 = type metadata accessor for CloudSyncStatusInputSignal.State(0);
  sub_2283F120C(a1 + *(v11 + 20), v8, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  v12 = *(type metadata accessor for CloudSyncStatusInputSignal.Anchor(0) + 20);
  active = type metadata accessor for ActiveSyncState(0);
  (*(*(active - 8) + 56))(&a3[v12], 1, 1, active);
  *a3 = a2;
  return sub_22853D724(v8, &a3[v12]);
}

uint64_t CloudSyncStatusInputSignal.Anchor.init(status:activeSyncState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(type metadata accessor for CloudSyncStatusInputSignal.Anchor(0) + 20);
  active = type metadata accessor for ActiveSyncState(0);
  (*(*(active - 8) + 56))(&a3[v6], 1, 1, active);
  *a3 = a1;

  return sub_22853D724(a2, &a3[v6]);
}

uint64_t CloudSyncStatusInputSignal.didUpdate(activeSyncState:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for CloudSyncStatusInputSignal.Anchor(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v2 + OBJC_IVAR____TtC14HealthPlatform26CloudSyncStatusInputSignal_protectedState);
  v13 = a1;
  v8 = *(*v7 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v9));
  sub_22853D7A4((v7 + v8), v6);
  os_unfair_lock_unlock((v7 + v9));
  swift_getObjectType();
  v14 = v2;
  sub_22853EF9C(qword_280DEAF50, v10, type metadata accessor for CloudSyncStatusInputSignal, &protocol conformance descriptor for CloudSyncStatusInputSignal);
  sub_22855C78C();
  return sub_22853D6C4(v6, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
}

uint64_t sub_228538AA8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_2283F1134(0, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = *(type metadata accessor for CloudSyncStatusInputSignal.State(0) + 20);
  sub_2283F0474(a1 + v9, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  sub_22853FA88(a2, a1 + v9, type metadata accessor for ActiveSyncState);
  active = type metadata accessor for ActiveSyncState(0);
  v11 = *(*(active - 8) + 56);
  v11(a1 + v9, 0, 1, active);
  v12 = *a1;
  sub_22853FA88(a2, v8, type metadata accessor for ActiveSyncState);
  v11(v8, 0, 1, active);
  v13 = *(type metadata accessor for CloudSyncStatusInputSignal.Anchor(0) + 20);
  v11(&a3[v13], 1, 1, active);
  *a3 = v12;
  v14 = v12;
  return sub_22853D724(v8, &a3[v13]);
}

id sub_228538C50(uint64_t a1)
{
  v2 = v1;
  v3 = [objc_allocWithZone(MEMORY[0x277CCD130]) initWithHealthStore:*(v1 + 16) delegate:a1];
  v4 = *(v1 + 24);
  *(v1 + 24) = v3;

  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v5 = sub_22855CABC();
  __swift_project_value_buffer(v5, qword_280DE9DF8);
  v6 = sub_22855CA8C();
  v7 = sub_22855D6AC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    v10 = sub_22855E34C();
    v12 = sub_2283F8938(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2283ED000, v6, v7, "[%s] observing sync status and requests", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AABAD40](v9, -1, -1);
    MEMORY[0x22AABAD40](v8, -1, -1);
  }

  [*(v2 + 24) startObservingSyncStatus];
  result = *(v2 + 24);
  if (result)
  {

    return [result startObservingSyncRequestsMatchingFilter_];
  }

  return result;
}

uint64_t sub_228538E4C()
{

  return swift_deallocClassInstance();
}

void sub_228538EB0()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  if (v2)
  {
    [v2 setDelegate_];
    v2 = *(v1 + 24);
  }

  *(v1 + 24) = 0;
}

id CloudSyncStatusInputSignal.Anchor.status.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t CloudSyncStatusInputSignal.Anchor.activeSyncState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CloudSyncStatusInputSignal.Anchor(0) + 20);

  return sub_22853D724(a1, v3);
}

uint64_t CloudSyncStatusInputSignal.Anchor.hasDifference(from:for:)(uint64_t a1, unsigned __int8 *a2)
{
  v307 = a1;
  v300 = sub_22855C16C();
  v302 = *(v300 - 8);
  MEMORY[0x28223BE20](v300);
  v279 = &v257 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277CC9578];
  sub_2283F11A8(0, &qword_280DECD80, &qword_280DEE380, MEMORY[0x277CC9578]);
  v293 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v265 = &v257 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v274 = &v257 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v286 = &v257 - v11;
  MEMORY[0x28223BE20](v10);
  v290 = &v257 - v12;
  sub_2283F1134(0, &qword_280DEE380, v4);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v260 = &v257 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v259 = &v257 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v267 = &v257 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v262 = &v257 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v269 = &v257 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v266 = &v257 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v263 = &v257 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v277 = &v257 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v268 = &v257 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v280 = &v257 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v275 = &v257 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v270 = &v257 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v285 = &v257 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v276 = &v257 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v287 = &v257 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v278 = &v257 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v273 = &v257 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v289 = &v257 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v281 = &v257 - v51;
  MEMORY[0x28223BE20](v50);
  v284 = &v257 - v52;
  active = type metadata accessor for ActiveSyncState(0);
  v54 = *(active - 8);
  MEMORY[0x28223BE20](active);
  v298 = &v257 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283F11A8(0, &qword_280DEBFA0, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  v304 = v56;
  MEMORY[0x28223BE20](v56);
  v58 = &v257 - v57;
  sub_2283F1134(0, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
  v60 = MEMORY[0x28223BE20](v59 - 8);
  v272 = (&v257 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = MEMORY[0x28223BE20](v60);
  v261 = (&v257 - v63);
  v64 = MEMORY[0x28223BE20](v62);
  v264 = (&v257 - v65);
  v66 = MEMORY[0x28223BE20](v64);
  v271 = (&v257 - v67);
  v68 = MEMORY[0x28223BE20](v66);
  v291 = (&v257 - v69);
  v70 = MEMORY[0x28223BE20](v68);
  v283 = (&v257 - v71);
  v72 = MEMORY[0x28223BE20](v70);
  v295 = (&v257 - v73);
  v74 = MEMORY[0x28223BE20](v72);
  v294 = (&v257 - v75);
  v76 = MEMORY[0x28223BE20](v74);
  v297 = (&v257 - v77);
  MEMORY[0x28223BE20](v76);
  v79 = &v257 - v78;
  sub_2283F1134(0, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  v81 = MEMORY[0x28223BE20](v80 - 8);
  v305 = (&v257 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = MEMORY[0x28223BE20](v81);
  v85 = &v257 - v84;
  MEMORY[0x28223BE20](v83);
  v87 = &v257 - v86;
  v299 = *a2;
  v292 = a2[1];
  v288 = a2[2];
  v282 = a2[3];
  v296 = a2[4];
  v88 = type metadata accessor for CloudSyncStatusInputSignal.Anchor(0);
  sub_2283F120C(v306 + *(v88 + 20), v87, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  sub_2283F120C(v307, v79, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
  v89 = *(v88 - 8);
  v90 = *(v89 + 48);
  v303 = v89 + 48;
  v91 = v90(v79, 1, v88);
  v301 = v88;
  if (v91 == 1)
  {
    sub_2283F0474(v79, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
    (*(v54 + 56))(v85, 1, 1, active);
  }

  else
  {
    sub_2283F120C(&v79[*(v88 + 20)], v85, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
    sub_22853D6C4(v79, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
  }

  v92 = v304[12];
  sub_2283F120C(v87, v58, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  sub_2283F120C(v85, &v58[v92], qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  v93 = *(v54 + 48);
  v94 = v93(v58, 1, active);
  v95 = v305;
  if (v94 == 1)
  {
    sub_2283F0474(v85, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
    sub_2283F0474(v87, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
    if (v93(&v58[v92], 1, active) == 1)
    {
      sub_2283F0474(v58, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
      goto LABEL_13;
    }

LABEL_9:
    v96 = &qword_280DEBFA0;
    v97 = qword_280DEBFA8;
    v98 = type metadata accessor for ActiveSyncState;
    v99 = v58;
    goto LABEL_10;
  }

  sub_2283F120C(v58, v305, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  if (v93(&v58[v92], 1, active) == 1)
  {
    sub_2283F0474(v85, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
    sub_2283F0474(v87, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
    sub_22853D6C4(v95, type metadata accessor for ActiveSyncState);
    goto LABEL_9;
  }

  v101 = v298;
  sub_22853FAF0(&v58[v92], v298, type metadata accessor for ActiveSyncState);
  v102 = _s14HealthPlatform15ActiveSyncStateO2eeoiySbAC_ACtFZ_0(v95, v101);
  sub_22853D6C4(v101, type metadata accessor for ActiveSyncState);
  sub_2283F0474(v85, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  sub_2283F0474(v87, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  sub_22853D6C4(v95, type metadata accessor for ActiveSyncState);
  sub_2283F0474(v58, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  if ((v102 & 1) == 0)
  {
    return 1;
  }

LABEL_13:
  v103 = *v306;
  if (!*v306)
  {
    v107 = v300;
    v105 = v301;
    v108 = v302;
    if ((v299 & 1) == 0)
    {
      v116 = v295;
      if ((v296 & 1) == 0)
      {
        v121 = v291;
        if ((v292 & 1) == 0)
        {
          if ((v288 & 1) == 0)
          {
            goto LABEL_40;
          }

          goto LABEL_85;
        }

        goto LABEL_63;
      }

      v117 = 2;
      goto LABEL_49;
    }

    v109 = 2;
LABEL_25:
    v114 = v294;
    sub_2283F120C(v307, v294, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
    if (v90(v114, 1, v105) == 1)
    {
      sub_2283F0474(v114, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
      v115 = 2;
      if (v109 != 2)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v118 = v90;
      v119 = *v114;
      v120 = *v114;
      sub_22853D6C4(v114, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
      if (v119)
      {
        v115 = [v120 syncEnabled];
      }

      else
      {
        v115 = 2;
      }

      v90 = v118;
      if (v109 != 2)
      {
LABEL_27:
        if (v115 == 2 || ((v109 ^ v115) & 1) != 0)
        {
          return 1;
        }

LABEL_45:
        if ((v296 & 1) == 0)
        {
          goto LABEL_59;
        }

        if (v103)
        {
          v116 = v295;
LABEL_48:
          v117 = [v103 accountSupportsSecureContainer];
          goto LABEL_49;
        }

        v117 = 2;
        v116 = v295;
LABEL_49:
        sub_2283F120C(v307, v116, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
        if (v90(v116, 1, v105) == 1)
        {
          sub_2283F0474(v116, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
          v122 = 2;
          if (v117 != 2)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v123 = v90;
          v124 = *v116;
          v125 = *v116;
          sub_22853D6C4(v116, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
          if (v124)
          {
            v122 = [v125 accountSupportsSecureContainer];
          }

          else
          {
            v122 = 2;
          }

          v90 = v123;
          if (v117 != 2)
          {
LABEL_51:
            if (v122 == 2 || ((v117 ^ v122) & 1) != 0)
            {
              return 1;
            }

            goto LABEL_59;
          }
        }

        if (v122 != 2)
        {
          return 1;
        }

LABEL_59:
        if ((v292 & 1) == 0)
        {
          goto LABEL_81;
        }

        if (v103)
        {
          goto LABEL_61;
        }

LABEL_63:
        v258 = v90;
        v306 = v103;
        v131 = *(v108 + 56);
        v130 = v284;
        v131(v284, 1, 1, v107);
        goto LABEL_66;
      }
    }

    if (v115 != 2)
    {
      return 1;
    }

    goto LABEL_45;
  }

  v104 = v297;
  sub_2283F120C(v307, v297, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
  v105 = v301;
  v106 = v90(v104, 1, v301);
  v107 = v300;
  v108 = v302;
  if (v106 == 1)
  {
    sub_2283F0474(v104, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
  }

  else
  {
    v110 = *v104;
    v111 = *v104;
    sub_22853D6C4(v104, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
    if (v110)
    {
      v309 = v111;
      sub_2283EF310(0, &qword_280DE92C0, 0x277CCD138);
      v112 = sub_22855E14C();

      goto LABEL_21;
    }
  }

  v112 = 0;
LABEL_21:
  v113 = [v103 isEqual_];
  swift_unknownObjectRelease();
  if ((v113 & 1) == 0)
  {
    if (!v299)
    {
      v116 = v295;
      if ((v296 & 1) == 0)
      {
        if ((v292 & 1) == 0)
        {
          if ((v288 & 1) == 0)
          {
            goto LABEL_147;
          }

          goto LABEL_83;
        }

LABEL_61:
        v306 = v103;
        v126 = [v103 restoreCompletionDate];
        v258 = v90;
        if (v126)
        {
          v127 = v281;
          v128 = v126;
          sub_22855C13C();

          v129 = 0;
          v130 = v284;
        }

        else
        {
          v129 = 1;
          v130 = v284;
          v127 = v281;
        }

        v131 = *(v108 + 56);
        v131(v127, v129, 1, v107);
        sub_22853EA90(v127, v130);
LABEL_66:
        v132 = v283;
        sub_2283F120C(v307, v283, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
        if (v258(v132, 1, v105) == 1)
        {
          sub_2283F0474(v132, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
        }

        else
        {
          v133 = *v132;
          v134 = *v132;
          v135 = v132;
          v136 = v134;
          sub_22853D6C4(v135, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
          if (v133)
          {
            v137 = [v136 restoreCompletionDate];

            if (v137)
            {
              v138 = v273;
              sub_22855C13C();

              v139 = 0;
              v140 = v289;
            }

            else
            {
              v139 = 1;
              v140 = v289;
              v138 = v273;
            }

            v131(v138, v139, 1, v107);
            sub_22853EA90(v138, v140);
LABEL_75:
            v141 = *(v293 + 48);
            v142 = MEMORY[0x277CC9578];
            v143 = v290;
            sub_2283F120C(v130, v290, &qword_280DEE380, MEMORY[0x277CC9578]);
            sub_2283F120C(v140, v143 + v141, &qword_280DEE380, v142);
            v144 = *(v108 + 48);
            if (v144(v143, 1, v107) == 1)
            {
              v145 = MEMORY[0x277CC9578];
              sub_2283F0474(v140, &qword_280DEE380, MEMORY[0x277CC9578]);
              v146 = v290;
              sub_2283F0474(v130, &qword_280DEE380, v145);
              if (v144(v146 + v141, 1, v107) != 1)
              {
                goto LABEL_101;
              }

              sub_2283F0474(v146, &qword_280DEE380, MEMORY[0x277CC9578]);
              v90 = v258;
              v103 = v306;
            }

            else
            {
              v147 = v278;
              sub_2283F120C(v143, v278, &qword_280DEE380, MEMORY[0x277CC9578]);
              if (v144(v143 + v141, 1, v107) == 1)
              {
                v148 = MEMORY[0x277CC9578];
                sub_2283F0474(v289, &qword_280DEE380, MEMORY[0x277CC9578]);
                v146 = v290;
                sub_2283F0474(v130, &qword_280DEE380, v148);
                (*(v108 + 8))(v147, v107);
                goto LABEL_101;
              }

              v149 = v143 + v141;
              v150 = v279;
              (*(v108 + 32))(v279, v149, v107);
              sub_22853EF9C(&unk_27D840A08, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
              LODWORD(v305) = sub_22855D16C();
              v151 = *(v108 + 8);
              v151(v150, v107);
              v152 = MEMORY[0x277CC9578];
              sub_2283F0474(v289, &qword_280DEE380, MEMORY[0x277CC9578]);
              sub_2283F0474(v130, &qword_280DEE380, v152);
              v151(v147, v107);
              sub_2283F0474(v143, &qword_280DEE380, v152);
              v90 = v258;
              v103 = v306;
              if ((v305 & 1) == 0)
              {
                return 1;
              }
            }

LABEL_81:
            v121 = v291;
            if ((v288 & 1) == 0)
            {
              goto LABEL_147;
            }

            if (v103)
            {
LABEL_83:
              v153 = [v103 lastPullDate];
              if (v153)
              {
                v154 = v276;
                v155 = v153;
                sub_22855C13C();

                v156 = v154;
                v157 = 0;
              }

              else
              {
                v157 = 1;
                v156 = v276;
              }

              v158 = *(v108 + 56);
              v158(v156, v157, 1, v107);
              sub_22853EA90(v156, v287);
              v121 = v291;
LABEL_88:
              sub_2283F120C(v307, v121, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
              v159 = v90(v121, 1, v105);
              v258 = v90;
              if (v159 == 1)
              {
                sub_2283F0474(v121, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
              }

              else
              {
                v160 = *v121;
                v161 = *v121;
                v162 = v121;
                v163 = v161;
                sub_22853D6C4(v162, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
                if (v160)
                {
                  v164 = [v163 lastPullDate];

                  if (v164)
                  {
                    v165 = v270;
                    sub_22855C13C();

                    v166 = 0;
                    v167 = v285;
                  }

                  else
                  {
                    v166 = 1;
                    v167 = v285;
                    v165 = v270;
                  }

                  v158(v165, v166, 1, v107);
                  sub_22853EA90(v165, v167);
LABEL_96:
                  v168 = v287;
                  v169 = *(v293 + 48);
                  v170 = MEMORY[0x277CC9578];
                  v171 = v286;
                  sub_2283F120C(v287, v286, &qword_280DEE380, MEMORY[0x277CC9578]);
                  v172 = v171;
                  sub_2283F120C(v167, v171 + v169, &qword_280DEE380, v170);
                  v173 = *(v108 + 48);
                  v174 = v173(v172, 1, v107);
                  v304 = v173;
                  if (v174 == 1)
                  {
                    v305 = v158;
                    v175 = v108 + 48;
                    v176 = MEMORY[0x277CC9578];
                    sub_2283F0474(v167, &qword_280DEE380, MEMORY[0x277CC9578]);
                    v146 = v286;
                    sub_2283F0474(v168, &qword_280DEE380, v176);
                    if (v173(v146 + v169, 1, v107) == 1)
                    {
                      sub_2283F0474(v146, &qword_280DEE380, MEMORY[0x277CC9578]);
                      goto LABEL_103;
                    }
                  }

                  else
                  {
                    v177 = v173;
                    v178 = v275;
                    sub_2283F120C(v172, v275, &qword_280DEE380, MEMORY[0x277CC9578]);
                    if (v177(v172 + v169, 1, v107) != 1)
                    {
                      v305 = v158;
                      v175 = v108 + 48;
                      v180 = v172 + v169;
                      v181 = v279;
                      (*(v108 + 32))(v279, v180, v107);
                      sub_22853EF9C(&unk_27D840A08, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
                      LODWORD(v300) = sub_22855D16C();
                      v182 = *(v108 + 8);
                      v182(v181, v107);
                      v183 = MEMORY[0x277CC9578];
                      sub_2283F0474(v285, &qword_280DEE380, MEMORY[0x277CC9578]);
                      sub_2283F0474(v168, &qword_280DEE380, v183);
                      v182(v178, v107);
                      sub_2283F0474(v172, &qword_280DEE380, v183);
                      if ((v300 & 1) == 0)
                      {
                        return 1;
                      }

LABEL_103:
                      if (v103)
                      {
                        v184 = [v103 lastPushDate];
                        v185 = v302;
                        v186 = v258;
                        v187 = v274;
                        v188 = v271;
                        if (v184)
                        {
                          v189 = v268;
                          v190 = v184;
                          sub_22855C13C();

                          v191 = 0;
                        }

                        else
                        {
                          v191 = 1;
                          v189 = v268;
                        }

                        v305(v189, v191, 1, v107);
                        sub_22853EA90(v189, v280);
                      }

                      else
                      {
                        v185 = v302;
                        v305(v280, 1, 1, v107);
                        v186 = v258;
                        v187 = v274;
                        v188 = v271;
                      }

                      sub_2283F120C(v307, v188, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
                      v192 = v186(v188, 1, v301);
                      v306 = v103;
                      if (v192 == 1)
                      {
                        sub_2283F0474(v188, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
                      }

                      else
                      {
                        v193 = *v188;
                        v194 = *v188;
                        sub_22853D6C4(v188, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
                        if (v193)
                        {
                          v195 = [v194 lastPushDate];

                          if (v195)
                          {
                            v196 = v263;
                            sub_22855C13C();

                            v197 = 0;
                            v198 = v277;
                          }

                          else
                          {
                            v197 = 1;
                            v198 = v277;
                            v196 = v263;
                          }

                          v305(v196, v197, 1, v107);
                          sub_22853EA90(v196, v198);
LABEL_117:
                          v199 = v280;
                          v200 = *(v293 + 48);
                          v201 = MEMORY[0x277CC9578];
                          sub_2283F120C(v280, v187, &qword_280DEE380, MEMORY[0x277CC9578]);
                          sub_2283F120C(v198, v187 + v200, &qword_280DEE380, v201);
                          v202 = v304;
                          if ((v304)(v187, 1, v107) == 1)
                          {
                            v300 = v175;
                            v203 = MEMORY[0x277CC9578];
                            sub_2283F0474(v198, &qword_280DEE380, MEMORY[0x277CC9578]);
                            sub_2283F0474(v199, &qword_280DEE380, v203);
                            if (v202(v187 + v200, 1, v107) == 1)
                            {
                              sub_2283F0474(v187, &qword_280DEE380, MEMORY[0x277CC9578]);
                              v103 = v306;
                              v204 = v269;
                              goto LABEL_124;
                            }
                          }

                          else
                          {
                            v205 = v266;
                            sub_2283F120C(v187, v266, &qword_280DEE380, MEMORY[0x277CC9578]);
                            v206 = v202(v187 + v200, 1, v107);
                            v103 = v306;
                            if (v206 != 1)
                            {
                              v300 = v175;
                              v208 = v187 + v200;
                              v209 = v279;
                              (*(v185 + 32))(v279, v208, v107);
                              sub_22853EF9C(&unk_27D840A08, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
                              v210 = sub_22855D16C();
                              v211 = *(v185 + 8);
                              v211(v209, v107);
                              v212 = MEMORY[0x277CC9578];
                              sub_2283F0474(v277, &qword_280DEE380, MEMORY[0x277CC9578]);
                              sub_2283F0474(v199, &qword_280DEE380, v212);
                              v211(v205, v107);
                              v204 = v269;
                              sub_2283F0474(v274, &qword_280DEE380, v212);
                              if ((v210 & 1) == 0)
                              {
                                return 1;
                              }

LABEL_124:
                              if (v103)
                              {
                                v213 = [v103 lastPulledUpdateDate];
                                v214 = v258;
                                v215 = v264;
                                v216 = v305;
                                if (v213)
                                {
                                  v217 = v262;
                                  v218 = v213;
                                  sub_22855C13C();

                                  v219 = 0;
                                }

                                else
                                {
                                  v219 = 1;
                                  v217 = v262;
                                }

                                v216(v217, v219, 1, v107);
                                sub_22853EA90(v217, v204);
                              }

                              else
                              {
                                v216 = v305;
                                v305(v204, 1, 1, v107);
                                v214 = v258;
                                v215 = v264;
                              }

                              sub_2283F120C(v307, v215, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
                              if (v214(v215, 1, v301) == 1)
                              {
                                sub_2283F0474(v215, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
                              }

                              else
                              {
                                v220 = *v215;
                                v221 = *v215;
                                sub_22853D6C4(v215, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
                                if (v220)
                                {
                                  v222 = [v221 lastPulledUpdateDate];

                                  if (v222)
                                  {
                                    v223 = v259;
                                    sub_22855C13C();

                                    v224 = 0;
                                    v225 = v267;
                                  }

                                  else
                                  {
                                    v224 = 1;
                                    v225 = v267;
                                    v223 = v259;
                                  }

                                  v216(v223, v224, 1, v107);
                                  sub_22853EA90(v223, v225);
                                  goto LABEL_138;
                                }
                              }

                              v225 = v267;
                              v216(v267, 1, 1, v107);
LABEL_138:
                              v226 = *(v293 + 48);
                              v227 = MEMORY[0x277CC9578];
                              v228 = v265;
                              sub_2283F120C(v204, v265, &qword_280DEE380, MEMORY[0x277CC9578]);
                              sub_2283F120C(v225, v228 + v226, &qword_280DEE380, v227);
                              v229 = v304;
                              if ((v304)(v228, 1, v107) == 1)
                              {
                                v230 = MEMORY[0x277CC9578];
                                sub_2283F0474(v225, &qword_280DEE380, MEMORY[0x277CC9578]);
                                sub_2283F0474(v204, &qword_280DEE380, v230);
                                if (v229(v228 + v226, 1, v107) == 1)
                                {
                                  sub_2283F0474(v228, &qword_280DEE380, MEMORY[0x277CC9578]);
LABEL_145:
                                  if (v103)
                                  {
                                    v242 = [v103 dataUploadRequestStatus];
                                    v243 = [v103 dataUploadRequestStatus];
                                    v105 = v301;
                                    v90 = v258;
                                    if (v242 != v243)
                                    {
                                      return 1;
                                    }

LABEL_147:
                                    if ((v282 & 1) == 0)
                                    {
                                      return 0;
                                    }

                                    if (v103)
                                    {
                                      v244 = [v103 errorRequiringUserAction];
                                      if (v244)
                                      {
                                        v309 = v244;
                                        sub_2283F9B94(0, &qword_280DECFE0, MEMORY[0x277D84948]);
                                        sub_2283EF310(0, &qword_280DED0B0, 0x277CCA9B8);
                                        if (swift_dynamicCast())
                                        {
                                          v245 = v308;
                                          v246 = v261;
                                          sub_2283F120C(v307, v261, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
                                          if (v90(v246, 1, v105) == 1)
                                          {

                                            sub_2283F0474(v246, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
                                          }

                                          else
                                          {
                                            v252 = *v246;
                                            v253 = *v246;
                                            sub_22853D6C4(v246, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
                                            if (v252 && (v254 = [v253 errorRequiringUserAction], v253, v254) && (v309 = v254, (swift_dynamicCast() & 1) != 0))
                                            {
                                              v255 = v308;
                                              v256 = [v245 isEqual_];

                                              if (v256)
                                              {
                                                return 0;
                                              }
                                            }

                                            else
                                            {
                                            }
                                          }

                                          return 1;
                                        }
                                      }
                                    }

LABEL_153:
                                    v247 = v90;
                                    v248 = v272;
                                    sub_2283F120C(v307, v272, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
                                    if (v247(v248, 1, v105) == 1)
                                    {
                                      sub_2283F0474(v248, qword_280DEAFB8, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
                                      return 0;
                                    }

                                    v249 = *v248;
                                    v250 = *v248;
                                    sub_22853D6C4(v248, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
                                    if (!v249)
                                    {
                                      return 0;
                                    }

                                    v251 = [v250 errorRequiringUserAction];

                                    if (!v251)
                                    {
                                      return 0;
                                    }

                                    return 1;
                                  }

                                  v105 = v301;
                                  v90 = v258;
LABEL_40:
                                  if ((v282 & 1) == 0)
                                  {
                                    return 0;
                                  }

                                  goto LABEL_153;
                                }
                              }

                              else
                              {
                                v231 = v260;
                                sub_2283F120C(v228, v260, &qword_280DEE380, MEMORY[0x277CC9578]);
                                if (v229(v228 + v226, 1, v107) != 1)
                                {
                                  v233 = v302;
                                  v234 = v228 + v226;
                                  v235 = v279;
                                  (*(v302 + 32))(v279, v234, v107);
                                  sub_22853EF9C(&unk_27D840A08, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
                                  v236 = v103;
                                  v237 = v231;
                                  v238 = sub_22855D16C();
                                  v239 = *(v233 + 8);
                                  v239(v235, v107);
                                  v240 = MEMORY[0x277CC9578];
                                  sub_2283F0474(v267, &qword_280DEE380, MEMORY[0x277CC9578]);
                                  sub_2283F0474(v269, &qword_280DEE380, v240);
                                  v241 = v237;
                                  v103 = v236;
                                  v239(v241, v107);
                                  sub_2283F0474(v228, &qword_280DEE380, v240);
                                  if ((v238 & 1) == 0)
                                  {
                                    return 1;
                                  }

                                  goto LABEL_145;
                                }

                                v232 = MEMORY[0x277CC9578];
                                sub_2283F0474(v267, &qword_280DEE380, MEMORY[0x277CC9578]);
                                sub_2283F0474(v269, &qword_280DEE380, v232);
                                (*(v302 + 8))(v231, v107);
                              }

                              v96 = &qword_280DECD80;
                              v97 = &qword_280DEE380;
                              v98 = MEMORY[0x277CC9578];
                              v99 = v228;
LABEL_10:
                              sub_22853EA34(v99, v96, v97, v98);
                              return 1;
                            }

                            v207 = MEMORY[0x277CC9578];
                            sub_2283F0474(v277, &qword_280DEE380, MEMORY[0x277CC9578]);
                            sub_2283F0474(v199, &qword_280DEE380, v207);
                            (*(v185 + 8))(v205, v107);
                          }

                          v96 = &qword_280DECD80;
                          v97 = &qword_280DEE380;
                          v98 = MEMORY[0x277CC9578];
                          v99 = v187;
                          goto LABEL_10;
                        }
                      }

                      v198 = v277;
                      v305(v277, 1, 1, v107);
                      goto LABEL_117;
                    }

                    v179 = MEMORY[0x277CC9578];
                    sub_2283F0474(v285, &qword_280DEE380, MEMORY[0x277CC9578]);
                    v146 = v286;
                    sub_2283F0474(v168, &qword_280DEE380, v179);
                    (*(v108 + 8))(v178, v107);
                  }

LABEL_101:
                  v96 = &qword_280DECD80;
                  v97 = &qword_280DEE380;
                  v98 = MEMORY[0x277CC9578];
                  v99 = v146;
                  goto LABEL_10;
                }
              }

              v167 = v285;
              v158(v285, 1, 1, v107);
              goto LABEL_96;
            }

LABEL_85:
            v158 = *(v108 + 56);
            v158(v287, 1, 1, v107);
            goto LABEL_88;
          }
        }

        v140 = v289;
        v131(v289, 1, 1, v107);
        goto LABEL_75;
      }

      goto LABEL_48;
    }

    v109 = [v103 syncEnabled];
    goto LABEL_25;
  }

  return 0;
}

uint64_t sub_22853BB38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22855E15C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22853BBBC(uint64_t a1)
{
  v2 = sub_22853EB10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22853BBF8(uint64_t a1)
{
  v2 = sub_22853EB10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudSyncStatusInputSignal.Anchor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_22853EC2C(0, &qword_280DE9038, sub_22853EB10, &type metadata for CloudSyncStatusInputSignal.Anchor.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - v6;
  v8 = type metadata accessor for CloudSyncStatusInputSignal.Anchor(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = (v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = 0;
  v12 = *(v9 + 28);
  active = type metadata accessor for ActiveSyncState(0);
  (*(*(active - 8) + 56))(v11 + v12, 1, 1, active);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22853EB10();
  sub_22855E30C();
  if (!v2)
  {
    v14 = v22;
    v15 = v25;
    sub_22853EB64();
    sub_22853EBB4();
    sub_22855E03C();
    v16 = v24;
    if (v24 >> 60 == 15)
    {
      (*(v14 + 8))(v7, v5);
      v17 = 0;
    }

    else
    {
      v18 = v23;
      v20[1] = sub_2283EF310(0, &unk_280DEEB40, 0x277CCAAC8);
      sub_2283EF310(0, &qword_280DE92C0, 0x277CCD138);
      v21 = v18;
      v17 = sub_22855D78C();
      (*(v14 + 8))(v7, v5);
      sub_22842B378(v21, v16);
    }

    *v11 = v17;
    sub_22853FA88(v11, v15, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_22853D6C4(v11, type metadata accessor for CloudSyncStatusInputSignal.Anchor);
}

uint64_t CloudSyncStatusInputSignal.Anchor.encode(to:)(void *a1)
{
  v2 = v1;
  v20[2] = *MEMORY[0x277D85DE8];
  sub_22853EC2C(0, &unk_280DE8FE8, sub_22853EB10, &type metadata for CloudSyncStatusInputSignal.Anchor.CodingKeys, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v20[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22853EB10();
  sub_22855E31C();
  v9 = *v2;
  if (v9)
  {
    v10 = objc_opt_self();
    v20[0] = 0;
    v11 = v9;
    v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:v20];
    v13 = v20[0];
    if (v12)
    {
      v14 = sub_22855C09C();
      v16 = v15;

      v20[0] = v14;
      v20[1] = v16;
      sub_22844AF8C();
      sub_22855E0CC();
      (*(v6 + 8))(v8, v5);

      return sub_22842B38C(v14, v16);
    }

    v18 = v13;
    sub_22855BF3C();

    swift_willThrow();
  }

  else
  {
    sub_22855E0DC();
  }

  return (*(v6 + 8))(v8, v5);
}

HealthPlatform::CloudSyncStatusInputSignal::Configuration __swiftcall CloudSyncStatusInputSignal.Configuration.init(observeSyncEnabled:observeFirstRestore:observeSyncDates:observeErrorRequiringUserAction:observeAccountSupportsSecureContainer:)(Swift::Bool observeSyncEnabled, Swift::Bool observeFirstRestore, Swift::Bool observeSyncDates, Swift::Bool observeErrorRequiringUserAction, Swift::Bool observeAccountSupportsSecureContainer)
{
  *v5 = observeSyncEnabled;
  v5[1] = observeFirstRestore;
  v5[2] = observeSyncDates;
  v5[3] = observeErrorRequiringUserAction;
  v5[4] = observeAccountSupportsSecureContainer;
  result.observeSyncEnabled = observeSyncEnabled;
  return result;
}

uint64_t CloudSyncStatusInputSignal.Configuration.hash(into:)()
{
  sub_22855E24C();
  sub_22855E24C();
  sub_22855E24C();
  sub_22855E24C();
  return sub_22855E24C();
}

uint64_t CloudSyncStatusInputSignal.Configuration.hashValue.getter()
{
  sub_22855E22C();
  sub_22855E24C();
  sub_22855E24C();
  sub_22855E24C();
  sub_22855E24C();
  sub_22855E24C();
  return sub_22855E27C();
}

uint64_t sub_22853C498(uint64_t a1)
{
  sub_22855E22C();
  sub_22855E24C();
  sub_22855E24C();
  sub_22855E24C();
  sub_22855E24C();
  sub_22855E24C();
  return sub_22855E27C();
}

void CloudSyncStatusInputSignal.beginObservation(from:configurations:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform26CloudSyncStatusInputSignal_protectedState);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_22853EC94(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_22853C61C(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + *(type metadata accessor for CloudSyncStatusInputSignal.State(0) + 24));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 16))(v4, v5);
  v6 = v3[3];
  v7 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v6);
  return (*(v7 + 8))(a2, v6, v7);
}

Swift::Void __swiftcall CloudSyncStatusInputSignal.stopObservation()()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform26CloudSyncStatusInputSignal_protectedState);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  v4 = (v1 + *(type metadata accessor for CloudSyncStatusInputSignal.State(0) + 24) + v2);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 16))(v5, v6);

  os_unfair_lock_unlock((v1 + v3));
}

id CloudSyncStatusInputSignal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CloudSyncStatusInputSignal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22853C8F4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC14HealthPlatform26CloudSyncStatusInputSignal_protectedState);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_22853FBC4(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

void sub_22853C998()
{
  v1 = *(*v0 + OBJC_IVAR____TtC14HealthPlatform26CloudSyncStatusInputSignal_protectedState);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  v4 = (v1 + *(type metadata accessor for CloudSyncStatusInputSignal.State(0) + 24) + v2);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 16))(v5, v6);

  os_unfair_lock_unlock((v1 + v3));
}

uint64_t _s14HealthPlatform15ActiveSyncStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncError(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for ActiveSyncState(0);
  MEMORY[0x28223BE20](active - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22853FB58(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 56);
  sub_22853FA88(a1, v14, type metadata accessor for ActiveSyncState);
  sub_22853FA88(a2, &v14[v15], type metadata accessor for ActiveSyncState);
  v16 = *(v5 + 48);
  v17 = v16(v14, 2, v4);
  if (!v17)
  {
    sub_22853FA88(v14, v10, type metadata accessor for ActiveSyncState);
    if (!v16(&v14[v15], 2, v4))
    {
      sub_22853FAF0(&v14[v15], v7, type metadata accessor for SyncError);
      sub_2283EF310(0, &qword_280DED0B0, 0x277CCA9B8);
      sub_2285362F0(&qword_27D840928, MEMORY[0x277D85380]);
      v21 = sub_22855D09C();
      sub_22853D6C4(v7, type metadata accessor for SyncError);
      sub_22853D6C4(v10, type metadata accessor for SyncError);
      v19 = type metadata accessor for ActiveSyncState;
      goto LABEL_10;
    }

    sub_22853D6C4(v10, type metadata accessor for SyncError);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    v18 = v16(&v14[v15], 2, v4);
    v19 = type metadata accessor for ActiveSyncState;
    if (v18 == 1)
    {
      goto LABEL_8;
    }

LABEL_9:
    v21 = 0;
    v19 = sub_22853FB58;
    goto LABEL_10;
  }

  v20 = v16(&v14[v15], 2, v4);
  v19 = type metadata accessor for ActiveSyncState;
  if (v20 != 2)
  {
    goto LABEL_9;
  }

LABEL_8:
  v21 = 1;
LABEL_10:
  sub_22853D6C4(v14, v19);
  return v21 & 1;
}

unint64_t sub_22853CDBC()
{
  result = qword_27D840978;
  if (!qword_27D840978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840978);
  }

  return result;
}

unint64_t sub_22853CE10()
{
  result = qword_27D840988;
  if (!qword_27D840988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840988);
  }

  return result;
}

unint64_t sub_22853CE64()
{
  result = qword_27D840998;
  if (!qword_27D840998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840998);
  }

  return result;
}

unint64_t sub_22853CEB8()
{
  result = qword_27D8409A8;
  if (!qword_27D8409A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8409A8);
  }

  return result;
}

uint64_t sub_22853CF88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6572676F72506E69 && a2 == 0xEA00000000007373;
  if (v4 || (sub_22855E15C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064 || (sub_22855E15C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_22855E15C();

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

id sub_22853D0AC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for CloudSyncStatusInputSignal.State(0);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  v24[3] = type metadata accessor for CloudSyncStatusInputSignal.ObserverShim();
  v24[4] = &off_283B8C358;
  v24[0] = a3;
  v16 = &a4[OBJC_IVAR____TtC14HealthPlatform26CloudSyncStatusInputSignal_observer];
  *v16 = a1;
  *(v16 + 1) = a2;
  v17 = *(v10 + 28);
  active = type metadata accessor for ActiveSyncState(0);
  (*(*(active - 8) + 56))(&v15[v17], 1, 1, active);
  sub_2283F9B10(v24, &v15[*(v10 + 32)]);
  *v15 = 0;
  sub_22853FA20(0);
  v19 = swift_allocObject();
  *(v19 + ((*(*v19 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_22853FA88(v15, v13, type metadata accessor for CloudSyncStatusInputSignal.State);
  swift_unknownObjectRetain();
  sub_22853D6C4(v15, type metadata accessor for CloudSyncStatusInputSignal.State);
  sub_22853FAF0(v13, v19 + *(*v19 + *MEMORY[0x277D841D0] + 16), type metadata accessor for CloudSyncStatusInputSignal.State);
  *&a4[OBJC_IVAR____TtC14HealthPlatform26CloudSyncStatusInputSignal_protectedState] = v19;
  v23.receiver = a4;
  v23.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v23, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return v20;
}

id sub_22853D310(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v13 = type metadata accessor for CloudSyncStatusInputSignal.State(0);
  v14 = v13 - 8;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - v18;
  v29[3] = a5;
  v29[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  v21 = &a4[OBJC_IVAR____TtC14HealthPlatform26CloudSyncStatusInputSignal_observer];
  *v21 = a1;
  *(v21 + 1) = a2;
  v22 = *(v14 + 28);
  active = type metadata accessor for ActiveSyncState(0);
  (*(*(active - 8) + 56))(&v19[v22], 1, 1, active);
  sub_2283F9B10(v29, &v19[*(v14 + 32)]);
  *v19 = 0;
  sub_22853FA20(0);
  v24 = swift_allocObject();
  *(v24 + ((*(*v24 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_22853FA88(v19, v17, type metadata accessor for CloudSyncStatusInputSignal.State);
  swift_unknownObjectRetain();
  sub_22853D6C4(v19, type metadata accessor for CloudSyncStatusInputSignal.State);
  sub_22853FAF0(v17, v24 + *(*v24 + *MEMORY[0x277D841D0] + 16), type metadata accessor for CloudSyncStatusInputSignal.State);
  *&a4[OBJC_IVAR____TtC14HealthPlatform26CloudSyncStatusInputSignal_protectedState] = v24;
  v28.receiver = a4;
  v28.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v28, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v29);
  return v25;
}

id sub_22853D5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_allocWithZone(v14);
  (*(v11 + 16))(v13, a3, a5);
  return sub_22853D310(a1, a2, v13, v15, a5, a6);
}

uint64_t sub_22853D6C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22853D724(uint64_t a1, uint64_t a2)
{
  sub_2283F1134(0, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22853D7C0(void *a1)
{
  swift_getObjectType();
  active = type metadata accessor for ActiveSyncState(0);
  MEMORY[0x28223BE20](active - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v5 = sub_22855CABC();
  __swift_project_value_buffer(v5, qword_280DE9DF8);
  v6 = a1;
  v7 = sub_22855CA8C();
  v8 = sub_22855D6AC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315394;
    v11 = sub_22855E34C();
    v13 = sub_2283F8938(v11, v12, &v23);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = v6;
    v15 = [v14 description];
    v16 = sub_22855D1AC();
    v18 = v17;

    v19 = sub_2283F8938(v16, v18, &v23);

    *(v9 + 14) = v19;
    _os_log_impl(&dword_2283ED000, v7, v8, "[%s] cloudSyncObserver syncDidStartWith progress:%s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v10, -1, -1);
    MEMORY[0x22AABAD40](v9, -1, -1);
  }

  v20 = type metadata accessor for SyncError(0);
  (*(*(v20 - 8) + 56))(v4, 1, 2, v20);
  CloudSyncStatusInputSignal.didUpdate(activeSyncState:)(v4);
  return sub_22853D6C4(v4, type metadata accessor for ActiveSyncState);
}

uint64_t sub_22853DA50(void *a1)
{
  swift_getObjectType();
  active = type metadata accessor for ActiveSyncState(0);
  MEMORY[0x28223BE20](active - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v5 = sub_22855CABC();
  __swift_project_value_buffer(v5, qword_280DE9DF8);
  v6 = a1;
  v7 = sub_22855CA8C();
  v8 = sub_22855D6AC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315394;
    v11 = sub_22855E34C();
    v13 = sub_2283F8938(v11, v12, &v23);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v22 = a1;
    v14 = a1;
    sub_2284B3E4C(0);
    v15 = sub_22855D1BC();
    v17 = sub_2283F8938(v15, v16, &v23);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_2283ED000, v7, v8, "[%s] cloudSyncObserver syncFailed with error: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v10, -1, -1);
    MEMORY[0x22AABAD40](v9, -1, -1);
  }

  v18 = a1;
  if (!a1)
  {
    v18 = [objc_opt_self() hk:0 error:0 userInfo:?];
  }

  v19 = a1;
  sub_22855BF2C();
  sub_2283EF310(0, &qword_280DED0B0, 0x277CCA9B8);
  sub_22855D0BC();
  v20 = type metadata accessor for SyncError(0);
  (*(*(v20 - 8) + 56))(v4, 0, 2, v20);
  CloudSyncStatusInputSignal.didUpdate(activeSyncState:)(v4);

  return sub_22853D6C4(v4, type metadata accessor for ActiveSyncState);
}

uint64_t _s14HealthPlatform26CloudSyncStatusInputSignalC05cloudd8ObserverD9CompletedyySo07HKClouddI0CF_0()
{
  swift_getObjectType();
  active = type metadata accessor for ActiveSyncState(0);
  MEMORY[0x28223BE20](active - 8);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v3 = sub_22855CABC();
  __swift_project_value_buffer(v3, qword_280DE9DF8);
  v4 = sub_22855CA8C();
  v5 = sub_22855D6AC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = sub_22855E34C();
    v10 = sub_2283F8938(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2283ED000, v4, v5, "[%s] cloudSyncObserverSyncCompleted", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AABAD40](v7, -1, -1);
    MEMORY[0x22AABAD40](v6, -1, -1);
  }

  v11 = type metadata accessor for SyncError(0);
  (*(*(v11 - 8) + 56))(v2, 2, 2, v11);
  CloudSyncStatusInputSignal.didUpdate(activeSyncState:)(v2);
  return sub_22853D6C4(v2, type metadata accessor for ActiveSyncState);
}

uint64_t sub_22853DF48(void *a1)
{
  swift_getObjectType();
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22855CABC();
  __swift_project_value_buffer(v2, qword_280DE9DF8);
  v3 = a1;
  v4 = sub_22855CA8C();
  v5 = sub_22855D6AC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315394;
    v8 = sub_22855E34C();
    v10 = sub_2283F8938(v8, v9, &v18);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = v3;
    v12 = [v11 description];
    v13 = sub_22855D1AC();
    v15 = v14;

    v16 = sub_2283F8938(v13, v15, &v18);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_2283ED000, v4, v5, "[%s] cloudSyncObserverStatusUpdated with status: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v7, -1, -1);
    MEMORY[0x22AABAD40](v6, -1, -1);
  }

  return CloudSyncStatusInputSignal.didUpdate(status:)(v3);
}

uint64_t sub_22853E140(void *a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  active = type metadata accessor for ActiveSyncState(0);
  MEMORY[0x28223BE20](active - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v9 = sub_22855CABC();
  __swift_project_value_buffer(v9, qword_280DE9DF8);
  v10 = a1;
  v11 = a2;
  v12 = sub_22855CA8C();
  v13 = sub_22855D6AC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v35 = v3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v36 = v16;
    *v15 = 136315650;
    v17 = sub_22855E34C();
    v19 = sub_2283F8938(v17, v18, &v36);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = [v10 description];
    v21 = sub_22855D1AC();
    v23 = v22;

    v24 = sub_2283F8938(v21, v23, &v36);

    *(v15 + 14) = v24;
    *(v15 + 22) = 2080;
    v25 = v11;
    v26 = [v25 description];
    v27 = sub_22855D1AC();
    v29 = v28;

    v30 = sub_2283F8938(v27, v29, &v36);

    *(v15 + 24) = v30;
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v16, -1, -1);
    MEMORY[0x22AABAD40](v15, -1, -1);
  }

  v31 = [v11 isFinished];
  v32 = type metadata accessor for SyncError(0);
  if (v31)
  {
    v33 = 2;
  }

  else
  {
    v33 = 1;
  }

  (*(*(v32 - 8) + 56))(v8, v33, 2, v32);
  CloudSyncStatusInputSignal.didUpdate(activeSyncState:)(v8);
  return sub_22853D6C4(v8, type metadata accessor for ActiveSyncState);
}

uint64_t sub_22853E454(void *a1, void *a2)
{
  swift_getObjectType();
  active = type metadata accessor for ActiveSyncState(0);
  MEMORY[0x28223BE20](active - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v7 = sub_22855CABC();
  __swift_project_value_buffer(v7, qword_280DE9DF8);
  v8 = a1;
  v9 = a2;
  v10 = sub_22855CA8C();
  v11 = sub_22855D6AC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 136315650;
    v14 = sub_22855E34C();
    v16 = sub_2283F8938(v14, v15, &v31);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = [v8 description];
    v18 = sub_22855D1AC();
    v20 = v19;

    v21 = sub_2283F8938(v18, v20, &v31);

    *(v12 + 14) = v21;
    *(v12 + 22) = 2080;
    v30 = a2;
    v22 = a2;
    sub_2284B3E4C(0);
    v23 = sub_22855D1BC();
    v25 = sub_2283F8938(v23, v24, &v31);

    *(v12 + 24) = v25;
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v13, -1, -1);
    MEMORY[0x22AABAD40](v12, -1, -1);
  }

  v26 = a2;
  if (!a2)
  {
    v26 = [objc_opt_self() hk:0 error:0 userInfo:?];
  }

  v27 = a2;
  sub_22855BF2C();
  sub_2283EF310(0, &qword_280DED0B0, 0x277CCA9B8);
  sub_22855D0BC();
  v28 = type metadata accessor for SyncError(0);
  (*(*(v28 - 8) + 56))(v6, 0, 2, v28);
  CloudSyncStatusInputSignal.didUpdate(activeSyncState:)(v6);

  return sub_22853D6C4(v6, type metadata accessor for ActiveSyncState);
}

uint64_t sub_22853E7AC(void *a1)
{
  swift_getObjectType();
  active = type metadata accessor for ActiveSyncState(0);
  MEMORY[0x28223BE20](active - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v5 = sub_22855CABC();
  __swift_project_value_buffer(v5, qword_280DE9DF8);
  v6 = a1;
  v7 = sub_22855CA8C();
  v8 = sub_22855D6AC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315394;
    v11 = sub_22855E34C();
    v13 = sub_2283F8938(v11, v12, &v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = [v6 description];
    v15 = sub_22855D1AC();
    v17 = v16;

    v18 = sub_2283F8938(v15, v17, &v22);

    *(v9 + 14) = v18;
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v10, -1, -1);
    MEMORY[0x22AABAD40](v9, -1, -1);
  }

  v19 = type metadata accessor for SyncError(0);
  (*(*(v19 - 8) + 56))(v4, 2, 2, v19);
  CloudSyncStatusInputSignal.didUpdate(activeSyncState:)(v4);
  return sub_22853D6C4(v4, type metadata accessor for ActiveSyncState);
}

uint64_t sub_22853EA34(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2283F11A8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_22853EA90(uint64_t a1, uint64_t a2)
{
  sub_2283F1134(0, &qword_280DEE380, MEMORY[0x277CC9578]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22853EB10()
{
  result = qword_280DEB040[0];
  if (!qword_280DEB040[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DEB040);
  }

  return result;
}

void sub_22853EB64()
{
  if (!qword_280DEE388)
  {
    v0 = sub_22855DA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DEE388);
    }
  }
}

unint64_t sub_22853EBB4()
{
  result = qword_280DECDA0;
  if (!qword_280DECDA0)
  {
    sub_22853EB64();
    sub_22844AE10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DECDA0);
  }

  return result;
}

void sub_22853EC2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_22853EE50()
{
  result = qword_27D840A30;
  if (!qword_27D840A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840A30);
  }

  return result;
}

unint64_t sub_22853EEA8()
{
  result = qword_280DEB0F8[0];
  if (!qword_280DEB0F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DEB0F8);
  }

  return result;
}

unint64_t sub_22853EF00()
{
  result = qword_280DEB0F0;
  if (!qword_280DEB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEB0F0);
  }

  return result;
}

uint64_t sub_22853EF9C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22853F06C(uint64_t a1)
{
  sub_2283EFE3C(319, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_22853F118(uint64_t a1)
{
  v1 = type metadata accessor for SyncError(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_22853F1B0(uint64_t a1)
{
  sub_2283EFE3C(319, &qword_280DE92B8, &qword_280DE92C0, 0x277CCD138, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2283F1134(319, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for CloudSyncStatusInputSignal.Configuration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudSyncStatusInputSignal.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_22853F34C(uint64_t a1)
{
  sub_2283EFE3C(319, &qword_280DE92B8, &qword_280DE92C0, 0x277CCD138, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2283F1134(319, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
    if (v2 <= 0x3F)
    {
      sub_2283F9B94(319, &qword_280DEAF40, &protocol descriptor for CloudSyncStatusObserverShim);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_22853F4A4()
{
  result = qword_27D840AA8;
  if (!qword_27D840AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840AA8);
  }

  return result;
}

unint64_t sub_22853F4FC()
{
  result = qword_27D840AB0;
  if (!qword_27D840AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840AB0);
  }

  return result;
}

unint64_t sub_22853F554()
{
  result = qword_27D840AB8;
  if (!qword_27D840AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840AB8);
  }

  return result;
}

unint64_t sub_22853F5AC()
{
  result = qword_27D840AC0;
  if (!qword_27D840AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840AC0);
  }

  return result;
}

unint64_t sub_22853F604()
{
  result = qword_280DEB028;
  if (!qword_280DEB028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEB028);
  }

  return result;
}

unint64_t sub_22853F65C()
{
  result = qword_280DEB030;
  if (!qword_280DEB030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEB030);
  }

  return result;
}

unint64_t sub_22853F6B4()
{
  result = qword_27D840AC8;
  if (!qword_27D840AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840AC8);
  }

  return result;
}

unint64_t sub_22853F70C()
{
  result = qword_27D840AD0;
  if (!qword_27D840AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840AD0);
  }

  return result;
}

unint64_t sub_22853F764()
{
  result = qword_27D840AD8;
  if (!qword_27D840AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840AD8);
  }

  return result;
}

unint64_t sub_22853F7BC()
{
  result = qword_27D840AE0;
  if (!qword_27D840AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840AE0);
  }

  return result;
}

unint64_t sub_22853F814()
{
  result = qword_27D840AE8;
  if (!qword_27D840AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840AE8);
  }

  return result;
}

unint64_t sub_22853F86C()
{
  result = qword_27D840AF0;
  if (!qword_27D840AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840AF0);
  }

  return result;
}

unint64_t sub_22853F8C4()
{
  result = qword_27D840AF8;
  if (!qword_27D840AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840AF8);
  }

  return result;
}

unint64_t sub_22853F91C()
{
  result = qword_27D840B00;
  if (!qword_27D840B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840B00);
  }

  return result;
}

unint64_t sub_22853F974()
{
  result = qword_27D840B08;
  if (!qword_27D840B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840B08);
  }

  return result;
}

unint64_t sub_22853F9CC()
{
  result = qword_27D840B10;
  if (!qword_27D840B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840B10);
  }

  return result;
}

void sub_22853FA20(uint64_t a1)
{
  if (!qword_280DE9150)
  {
    type metadata accessor for CloudSyncStatusInputSignal.State(255);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9150);
    }
  }
}

uint64_t sub_22853FA88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22853FAF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_22853FB58(uint64_t a1)
{
  if (!qword_27D840B18)
  {
    type metadata accessor for ActiveSyncState(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D840B18);
    }
  }
}

uint64_t SearchMode.hashValue.getter(char a1)
{
  sub_22855E22C();
  MEMORY[0x22AABA2B0](a1 & 1);
  return sub_22855E27C();
}

uint64_t sub_22853FC70@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s14HealthPlatform13SearchSectionO8rawValueACSgs5Int16V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_22853FCA0()
{
  result = qword_27D840B20;
  if (!qword_27D840B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840B20);
  }

  return result;
}

unint64_t sub_22853FCF8()
{
  result = qword_27D840B28;
  if (!qword_27D840B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840B28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchSection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchSection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t AddSharedSummariesExecutor.run(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a2;
  v26 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v23 - v12;
  (*(a5 + 16))(a4, a5);
  v23 = v14;
  ObjectType = swift_getObjectType();
  (*(v10 + 16))(v13, a1, AssociatedTypeWitness);
  v15 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 2) = a4;
  *(v17 + 3) = a5;
  *(v17 + 4) = v5;
  (*(v10 + 32))(&v17[v15], v13, AssociatedTypeWitness);
  v18 = &v17[v16];
  v19 = v26;
  *v18 = v25;
  v18[1] = v19;
  v20 = v23;
  v21 = *(v23 + 40);
  swift_unknownObjectRetain();

  v21(sub_22854037C, v17, ObjectType, v20);

  return swift_unknownObjectRelease();
}

void sub_2285400E0(void *a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    v12 = sub_22855CABC();
    __swift_project_value_buffer(v12, qword_280DE9DF8);
    v13 = a1;
    v14 = sub_22855CA8C();
    v15 = sub_22855D68C();
    sub_22853103C(a1, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 136446466;
      v18 = sub_22855E34C();
      v20 = sub_2283F8938(v18, v19, &v31);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      v21 = a1;
      sub_228418D44();
      v22 = sub_22855D1BC();
      v24 = sub_2283F8938(v22, v23, &v31);

      *(v16 + 14) = v24;
      _os_log_impl(&dword_2283ED000, v14, v15, "[%{public}s] Failed to create shared summary transaction builder: %{public}s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v17, -1, -1);
      MEMORY[0x22AABAD40](v16, -1, -1);
    }

    v25 = sub_22855BF2C();
    a5(v25, v26);
  }

  else
  {
    v29 = swift_allocObject();
    v29[2] = a7;
    v29[3] = a8;
    v29[4] = a1;
    v29[5] = a5;
    v29[6] = a6;
    v30 = *(a8 + 24);
    sub_228476E50(a1, 0);

    v30(a4, sub_2285408D0, v29, a7, a8);
  }
}

void sub_22854037C(void *a1, char a2)
{
  v5 = v2[2];
  v6 = v2[3];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = v2[4];
  v10 = v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 1);

  sub_2285400E0(a1, a2 & 1, v9, v2 + v8, v11, v12, v5, v6);
}

void sub_2285404D4(void *a1, char a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v19 = sub_22855BF2C();
    a4();
  }

  else
  {
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a7;
    v13[4] = a4;
    v13[5] = a5;
    v14 = swift_allocObject();
    v14[2] = a3;
    v14[3] = a1;
    v14[4] = sub_2285408E4;
    v14[5] = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_2285408E4;
    *(v15 + 24) = v13;
    v16 = *(a3 + 40);
    MEMORY[0x28223BE20](v15);
    swift_retain_n();

    sub_2284A6588(a1, 0);
    os_unfair_lock_lock(v16 + 16);
    sub_228434624(&v16[4], v20);
    os_unfair_lock_unlock(v16 + 16);
    v17 = v20[0];
    if (v20[0])
    {
      v18 = v20[1];
      v20[0]();
      sub_228416CF8(v17, v18);
    }
  }
}

void sub_2285406C4(id a1, void (*a2)(id, void (*)(id), uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  if (a1)
  {
    v6 = a1;
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v7 = sub_22855CABC();
    __swift_project_value_buffer(v7, qword_280DEEBF0);
    v8 = v5;
    v9 = sub_22855CA8C();
    v10 = sub_22855D68C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136446466;
      v13 = sub_22855E34C();
      v15 = sub_2283F8938(v13, v14, &v20);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      v16 = v5;
      sub_228418D44();
      v17 = sub_22855D1BC();
      v19 = sub_2283F8938(v17, v18, &v20);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_2283ED000, v9, v10, "[%{public}s] Failed to add shared summaries: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v12, -1, -1);
      MEMORY[0x22AABAD40](v11, -1, -1);
    }

    else
    {
    }

    v5 = sub_22855BF2C();
  }

  a2(v5, a2, a3, a4);
}

id static FeedItem.predicateForFavoritableFeedItems(domain:sourceProfiles:favoriteStatusFilter:)(char a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1;
  v5 = *(a3 + 16);
  if (v5)
  {
    sub_22855DD4C();
    sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
    v7 = (a3 + 32);
    sub_22840A70C(0);
    v8 = MEMORY[0x277D837D0];
    do
    {
      v10 = *v7++;
      v9 = v10;
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_228560570;
      *(v11 + 56) = v8;
      v12 = sub_22840A7C8();
      *(v11 + 64) = v12;
      *(v11 + 32) = 0xD000000000000016;
      *(v11 + 40) = 0x800000022856E390;
      v13 = 0x726F766146746F6ELL;
      if (v10 != 1)
      {
        v13 = 0x626967696C656E69;
      }

      v14 = 0xEC00000064657469;
      if (v9 != 1)
      {
        v14 = 0xEA0000000000656CLL;
      }

      if (!v9)
      {
        v13 = 0x657469726F766166;
        v14 = 0xE900000000000064;
      }

      *(v11 + 96) = v8;
      *(v11 + 104) = v12;
      *(v11 + 72) = v13;
      *(v11 + 80) = v14;
      sub_22855D62C();
      sub_22855DD1C();
      sub_22855DD5C();
      sub_22855DD6C();
      sub_22855DD2C();
      --v5;
    }

    while (v5);
    v3 = a2;
    v4 = a1;
  }

  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  v15 = sub_22855D39C();

  v16 = objc_opt_self();
  v17 = [v16 orPredicateWithSubpredicates_];

  v18 = sub_22840CCD8(v4 & 1);
  sub_2284661F0();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22856BF30;
  *(v19 + 32) = _s14HealthPlatform8FeedItemC9predicate11matchingAnySo11NSPredicateCSayAA13SourceProfileOG_tFZ_0(v3);
  *(v19 + 40) = v17;
  *(v19 + 48) = v18;
  v20 = v17;
  v21 = v18;
  v22 = sub_22855D39C();

  v23 = [v16 andPredicateWithSubpredicates_];

  return v23;
}

id static FeedItem.predicateForEligibleForFavoriting(domain:)(char a1)
{
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_22840A70C(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228560570;
  v3 = MEMORY[0x277D837D0];
  *(v2 + 56) = MEMORY[0x277D837D0];
  v4 = sub_22840A7C8();
  *(v2 + 32) = 0xD000000000000016;
  *(v2 + 40) = 0x800000022856E390;
  *(v2 + 96) = v3;
  *(v2 + 104) = v4;
  *(v2 + 64) = v4;
  *(v2 + 72) = 0x626967696C656E69;
  *(v2 + 80) = 0xEA0000000000656CLL;
  v5 = sub_22855D62C();
  v6 = sub_22840CCD8(a1 & 1);
  sub_2284661F0();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_228563E50;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  v8 = v5;
  v9 = v6;
  v10 = sub_22855D39C();

  v11 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v11;
}

uint64_t Planner.fetchAnchors(for:anchorStorage:signals:context:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v31 = a8;
  v32 = a7;
  v36 = a6;
  v37 = a1;
  v33 = a5;
  v34 = a4;
  v28 = a3;
  v12 = sub_22855C7DC();
  v13 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v14 = sub_22855CABC();
  v29 = *(v14 - 8);
  v30 = v14;
  MEMORY[0x28223BE20](v14);
  v35 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2[3];
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  (*(v17 + 8))(v38, v10, a9, v16, v17);
  v18 = v39;
  v19 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  v20 = swift_allocObject();
  v21 = v32;
  v20[2] = v31;
  v20[3] = a9;
  v22 = v36;
  v20[4] = v37;
  v20[5] = v22;
  v23 = v33;
  v24 = v34;
  v20[6] = v21;
  v20[7] = v24;
  v20[8] = v23;
  v20[9] = v10;
  v25 = *(v19 + 8);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v25(v28, sub_228541A7C, v20, v18, v19);

  return __swift_destroy_boxed_opaque_existential_0(v38);
}

void *sub_2285412EC(void *a1, char a2, unint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v62 = a7;
  v63 = a8;
  v60 = a5;
  v68 = a1;
  v12 = sub_22855CABC();
  v64 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_22855C5CC();
  v58 = *(v66 - 1);
  v15 = MEMORY[0x28223BE20](v66);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v61 = &v58 - v18;
  v69 = sub_22855C7DC();
  v19 = *(v69 - 8);
  v20 = MEMORY[0x28223BE20](v69);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v58 - v24;
  MEMORY[0x28223BE20](v23);
  v67 = &v58 - v26;
  v65 = a3;
  if (a2)
  {
    v59 = a4;
    swift_getObjectType();
    sub_22855C59C();
    v27 = v63;
    swift_unknownObjectRetain();
    v28 = v68;
    sub_2284A6588(v68, 1);
    v29 = sub_22855CA8C();
    v30 = sub_22855D68C();
    swift_unknownObjectRelease();
    sub_2284A6534(v28, 1);
    if (os_log_type_enabled(v29, v30))
    {
      v67 = v12;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v70 = v27;
      v71 = v66;
      *v31 = 136315394;
      swift_unknownObjectRetain();
      v33 = sub_22855D1BC();
      v35 = v22;
      v36 = sub_2283F8938(v33, v34, &v71);

      *(v31 + 4) = v36;
      v22 = v35;
      *(v31 + 12) = 2112;
      v37 = v68;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v38;
      *v32 = v38;
      _os_log_impl(&dword_2283ED000, v29, v30, "%s: Failed to load previously stored anchors: %@", v31, 0x16u);
      sub_22841DC98(v32);
      v39 = v32;
      a3 = v65;
      MEMORY[0x22AABAD40](v39, -1, -1);
      v40 = v66;
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x22AABAD40](v40, -1, -1);
      MEMORY[0x22AABAD40](v31, -1, -1);

      (*(v64 + 8))(v14, v67);
    }

    else
    {

      (*(v64 + 8))(v14, v12);
    }

    if (a3 >> 62)
    {
      v51 = sub_22855DB4C();
    }

    else
    {
      v51 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v42 = MEMORY[0x277D84F90];
    if (!v51)
    {
LABEL_35:
      a4 = v59;
LABEL_36:
      a4(v42);
    }

    v71 = MEMORY[0x277D84F90];
    result = sub_2284277C0(0, v51 & ~(v51 >> 63), 0);
    if ((v51 & 0x8000000000000000) == 0)
    {
      v42 = v71;
      if ((a3 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v51; ++i)
        {
          MEMORY[0x22AAB9D20](i, v65);
          sub_22855C7CC();
          v71 = v42;
          v54 = *(v42 + 16);
          v53 = *(v42 + 24);
          if (v54 >= v53 >> 1)
          {
            sub_2284277C0((v53 > 1), v54 + 1, 1);
            v42 = v71;
          }

          *(v42 + 16) = v54 + 1;
          (*(v19 + 32))(v42 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v54, v25, v69);
        }
      }

      else
      {
        v55 = a3 + 32;
        do
        {

          sub_22855C7CC();
          v71 = v42;
          v57 = *(v42 + 16);
          v56 = *(v42 + 24);
          if (v57 >= v56 >> 1)
          {
            sub_2284277C0((v56 > 1), v57 + 1, 1);
            v42 = v71;
          }

          *(v42 + 16) = v57 + 1;
          (*(v19 + 32))(v42 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v57, v22, v69);
          v55 += 8;
          --v51;
        }

        while (v51);
      }

      goto LABEL_35;
    }
  }

  else
  {
    if (a3 >> 62)
    {
      v41 = sub_22855DB4C();
    }

    else
    {
      v41 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v42 = MEMORY[0x277D84F90];
    if (!v41)
    {
      goto LABEL_36;
    }

    v71 = MEMORY[0x277D84F90];
    result = sub_2284277C0(0, v41 & ~(v41 >> 63), 0);
    if ((v41 & 0x8000000000000000) == 0)
    {
      v59 = a4;
      v44 = 0;
      v42 = v71;
      v45 = (v58 + 8);
      v62 = v19 + 32;
      v63 = a3 & 0xC000000000000001;
      v64 = v41;
      do
      {
        if (v63)
        {
          MEMORY[0x22AAB9D20](v44, a3);
        }

        else
        {
        }

        sub_22855C5EC();
        sub_22855C5FC();
        sub_22855C5EC();
        if (*(v68 + 2) && (sub_228443DF4(v17), (v46 & 1) != 0))
        {
          v47 = *v45;

          v47(v17, v66);
          a3 = v65;
        }

        else
        {
          (*v45)(v17, v66);
        }

        v48 = v67;
        sub_22855C7BC();

        v71 = v42;
        v50 = *(v42 + 16);
        v49 = *(v42 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_2284277C0((v49 > 1), v50 + 1, 1);
          v48 = v67;
          v42 = v71;
        }

        ++v44;
        *(v42 + 16) = v50 + 1;
        (*(v19 + 32))(v42 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v50, v48, v69);
      }

      while (v64 != v44);
      goto LABEL_35;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static SharableModelPredicate.modelWithIdentifier(_:)(uint64_t a1, uint64_t a2)
{
  sub_2284F13B0();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_228560580;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  return v4;
}

uint64_t SharableModelReadableStorage.fetch(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_228541B48, 0, 0);
}

uint64_t sub_228541B48()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  sub_228541F48(0);
  *v4 = v0;
  v4[1] = sub_228541C50;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000010, 0x8000000228570AD0, sub_228541F3C, v3, v5);
}

uint64_t sub_228541C50()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_228541D6C;
  }

  else
  {

    v2 = sub_22849E610;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_228541D6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_228541DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2285429C0(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  (*(v11 + 16))(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  (*(v11 + 32))(v14 + v13, &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  (*(a5 + 8))(a3, sub_228542AC0, v14, a4, a5);
}

void sub_228541F48(uint64_t a1)
{
  if (!qword_280DE9628)
  {
    type metadata accessor for PluginSharableModel(255);
    v1 = sub_22855D47C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9628);
    }
  }
}

uint64_t sub_228541FA0(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    sub_2285429C0(0);
    return sub_22855D4AC();
  }

  else
  {
    sub_2285429C0(0);

    return sub_22855D4BC();
  }
}

uint64_t SharableModelWritableStorage.updateOrCreate(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_228542040, 0, 0);
}

uint64_t sub_228542040()
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

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000012, 0x8000000228570A70, sub_2285422AC, v3, v5);
}

uint64_t sub_228542140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t SharableModelWritableStorage.delete(sharableModelIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2285422DC, 0, 0);
}

uint64_t sub_2285422DC()
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

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000021, 0x8000000228574700, sub_228542548, v3, v5);
}

uint64_t sub_2285423DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t SharableModelWritableStorage.deleteAll()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_228542578, 0, 0);
}

uint64_t sub_228542578()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_228542670;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0x6C416574656C6564, 0xEB0000000029286CLL, sub_228542954, v2, v4);
}

uint64_t sub_228542670()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_22854278C;
  }

  else
  {

    v2 = sub_2284A6AEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22854278C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2285427F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2284A6958(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  (*(v9 + 16))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  (*(v9 + 32))(v12 + v11, &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  (*(a4 + 24))(sub_2284A6B0C, v12, a3, a4);
}

void sub_2285429C0(uint64_t a1)
{
  if (!qword_27D840B30)
  {
    sub_228541F48(255);
    sub_228418D44();
    v1 = sub_22855D4CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D840B30);
    }
  }
}

uint64_t objectdestroyTm_3(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_228542AC0(void *a1, char a2)
{
  sub_2285429C0(0);

  return sub_228541FA0(a1, a2 & 1);
}

uint64_t AnchorStorage.allStoredAnchors(availableSignals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_228542B64, 0, 0);
}

uint64_t sub_228542B64()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  sub_228542DE4(0);
  *v4 = v0;
  v4[1] = sub_228541C50;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000228574730, sub_228542DD8, v3, v5);
}