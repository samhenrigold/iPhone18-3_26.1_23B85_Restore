uint64_t sub_26466096C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = type metadata accessor for InitiatorConfigurationSheet(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_264783F44();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76330, &qword_264789F30);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - v11;
  sub_264783F24();
  sub_2646646D8(a1, v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InitiatorConfigurationSheet);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_2646644E4(v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  MEMORY[0x26673F080](v8, sub_264664B40, v14);
  sub_26460CDF0(&qword_27FF76328, &qword_27FF76330, &qword_264789F30, MEMORY[0x277CDF028]);
  sub_264785034();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_264660BDC(uint64_t a1)
{
  v15 = sub_264784574();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_2647840D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26460CCE8(a1, v7, &qword_27FF75688, &unk_264789EA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_2647859E4();
    v12 = sub_264784BE4();
    sub_264783DA4();

    sub_264784564();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  sub_2647840C4();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_264660E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v28 = type metadata accessor for InitiatorConfigurationSheet(0);
  v3 = *(v28 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264783F44();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76330, &qword_264789F30);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76340, &unk_264789F40);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  sub_264783F34();
  sub_2646646D8(a1, v5, type metadata accessor for InitiatorConfigurationSheet);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  sub_2646644E4(v5, v17 + v16);
  MEMORY[0x26673F080](v8, sub_264664950, v17);
  sub_26460CDF0(&qword_27FF76328, &qword_27FF76330, &qword_264789F30, MEMORY[0x277CDF028]);
  sub_264785034();
  (*(v10 + 8))(v12, v9);
  LOBYTE(v5) = sub_2646618B4();
  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = v5 & 1;
  v29 = v13;
  v30 = v15;
  v20 = &v15[*(v13 + 36)];
  *v20 = KeyPath;
  v20[1] = sub_264664980;
  v20[2] = v19;
  if (qword_27FF752F0 != -1)
  {
    swift_once();
  }

  v34 = qword_27FF79198;
  v35 = qword_27FF791A0;
  v21 = (a1 + *(v28 + 7));
  v22 = *v21;
  v23 = *(v21 + 1);
  v32 = v22;
  v33 = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E0, &qword_26478C6E0);
  v24 = sub_264785314();
  v28 = &v27;
  MEMORY[0x28223BE20](v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76348, &qword_264792100);
  sub_264664898();
  sub_264613FC4();
  sub_26460CDF0(&qword_27FF76368, &qword_27FF76348, &qword_264792100, MEMORY[0x277CE14C0]);
  v25 = v30;
  sub_2647850A4();

  return sub_26460CD50(v25, &qword_27FF76340, &unk_264789F40);
}

uint64_t sub_264661344(uint64_t a1)
{
  v2 = sub_2647840D4();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x28223BE20](v2);
  v34 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_264783E24();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v30 = &v29 - v7;
  v37 = type metadata accessor for InitiatorConfigurationSheet(0);
  v8 = (a1 + *(v37 + 20));
  v10 = *v8;
  v9 = v8[1];
  type metadata accessor for UserSessionConfiguration(0);
  sub_264664FBC(&qword_27FF75F58, type metadata accessor for UserSessionConfiguration, &protocol conformance descriptor for UserSessionConfiguration);
  sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v41);

  v32 = v9;
  v33 = v10;
  if (*&v41 == 1)
  {
    sub_264783FA4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v41);

    if (v41 <= 28800.0)
    {
      v14 = 0;
    }

    else
    {
      v11 = [objc_opt_self() standardUserDefaults];
      v12 = sub_264785714();
      v13 = [v11 BOOLForKey_];

      v14 = v13 ^ 1;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = a1 + *(v37 + 28);
  v17 = *(v15 + 8);
  LOBYTE(v41) = *v15;
  v16 = LOBYTE(v41);
  v42 = v17;
  v40 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E0, &qword_26478C6E0);
  sub_264785304();
  LOBYTE(v41) = v16;
  v42 = v17;
  sub_2647852F4();
  if (v40)
  {
    v18 = v31;
    sub_264783DF4();
    v19 = sub_264783E14();
    v20 = sub_2647859F4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_264605000, v19, v20, "#Initiator, InitiatorConfigurationSheet, show exceeding max session duration alert", v21, 2u);
      MEMORY[0x266740650](v21, -1, -1);
    }

    return (*(v38 + 8))(v18, v39);
  }

  else
  {
    v23 = v30;
    sub_264783DF4();
    v24 = sub_264783E14();
    v25 = sub_2647859F4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_264605000, v24, v25, "#Initiator, InitiatorConfigurationSheet, saving user session configuration", v26, 2u);
      MEMORY[0x266740650](v26, -1, -1);
    }

    (*(v38 + 8))(v23, v39);
    v27 = sub_264783FA4();
    swift_getKeyPath();
    swift_getKeyPath();
    v41 = *&v27;

    sub_264783EE4();
    sub_264629270();

    v28 = v34;
    sub_26465E220(v34);
    sub_2647840C4();
    return (*(v35 + 8))(v28, v36);
  }
}

uint64_t sub_2646618B4()
{
  v1 = type metadata accessor for InitiatorConfigurationSheet(0);
  type metadata accessor for UserSessionConfiguration(0);
  sub_264664FBC(&qword_27FF75F58, type metadata accessor for UserSessionConfiguration, &protocol conformance descriptor for UserSessionConfiguration);
  sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v9);

  if (v9[0] == 2)
  {
    sub_264783FA4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v9);

    if (v9[0])
    {

      sub_264783FA4();
      sub_264713490();
      v3 = v2;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v9);

  if (v9[0] == 4)
  {
    if ([objc_opt_self() zelkovaKahanaEnabled])
    {
      v4 = (v0 + *(v1 + 32));
      v5 = *v4;
      v6 = *(v4 + 1);
      LOBYTE(v9[0]) = v5;
      v9[1] = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E0, &qword_26478C6E0);
      sub_2647852F4();
      if (!(v3 & 1 | ((v8 & 1) == 0)))
      {
        return 0;
      }
    }
  }

  else if ((v3 & 1) == 0)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_264661B6C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v30 = a1;
  v34 = a2;
  v2 = type metadata accessor for InitiatorConfigurationSheet(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76370, &unk_2647922D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76378, &unk_264789F90);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v32 = &v29 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v31 = &v29 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - v16;
  if (qword_27FF75300 != -1)
  {
    swift_once();
  }

  v35 = qword_27FF791B8;
  v36 = qword_27FF791C0;
  v18 = sub_264783F44();
  v29 = *(*(v18 - 8) + 56);
  v29(v7, 1, 1, v18);
  sub_2646646D8(v30, &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InitiatorConfigurationSheet);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  sub_2646644E4(&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_264613FC4();

  sub_264785364();
  if (qword_27FF75308 != -1)
  {
    swift_once();
  }

  v35 = qword_27FF791C8;
  v36 = qword_27FF791D0;
  v29(v7, 1, 1, v18);

  v21 = v31;
  sub_264785364();
  v22 = *(v9 + 16);
  v23 = v32;
  v22(v32, v17, v8);
  v24 = v33;
  v22(v33, v21, v8);
  v25 = v34;
  v22(v34, v23, v8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76380, &qword_2647922E0);
  v22(&v25[*(v26 + 48)], v24, v8);
  v27 = *(v9 + 8);
  v27(v21, v8);
  v27(v17, v8);
  v27(v24, v8);
  return (v27)(v23, v8);
}

uint64_t sub_264662004(uint64_t a1)
{
  v1 = sub_2647840D4();
  v14 = *(v1 - 8);
  v15 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v8 = sub_264783E14();
  v9 = sub_2647859B4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_264605000, v8, v9, "#Initiator, InitiatorConfigurationSheet, tapped on max duration button", v10, 2u);
    MEMORY[0x266740650](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  type metadata accessor for InitiatorConfigurationSheet(0);
  type metadata accessor for UserSessionConfiguration(0);
  sub_264664FBC(&qword_27FF75F58, type metadata accessor for UserSessionConfiguration, &protocol conformance descriptor for UserSessionConfiguration);
  sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = 0x40DC200000000000;
  sub_264783EE4();
  v11 = sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = v11;

  sub_264783EE4();
  sub_264629270();

  sub_26465E220(v3);
  sub_2647840C4();
  return (*(v14 + 8))(v3, v15);
}

uint64_t sub_264662320@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FF752F8 != -1)
  {
    swift_once();
  }

  sub_264613FC4();

  result = sub_264784E44();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2646623C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76290, &qword_264789E50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v13 - v7;
  sub_264662500(a1, v13 - v7);
  v9 = *(a2 + *(type metadata accessor for InitiatorConfigurationSheet(0) + 36));
  KeyPath = swift_getKeyPath();
  if (v9)
  {
    v13[1] = v9;

    v9 = sub_2647840B4();
  }

  sub_26460CCE8(v8, a3, &qword_27FF76290, &qword_264789E50);
  v11 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76210, &qword_264789E08) + 36));
  *v11 = KeyPath;
  v11[1] = v9;
  return sub_26460CD50(v8, &qword_27FF76290, &qword_264789E50);
}

uint64_t sub_264662500@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E8, &qword_264789EB0);
  MEMORY[0x28223BE20](v5);
  v7 = v24 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762F0, &qword_264789EB8);
  MEMORY[0x28223BE20](v25);
  v9 = (v24 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762B0, &qword_264789E60);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - v11;
  v26 = type metadata accessor for LocationSelectionView(0);
  MEMORY[0x28223BE20](v26);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SafetyMonitorUINavigationPathItem(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2646646D8(a1, v17, type metadata accessor for SafetyMonitorUINavigationPathItem);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762F8, &qword_264789EC0);
  v19 = (*(*(v18 - 8) + 48))(v17, 3, v18);
  if (v19 == 2)
  {
    type metadata accessor for InitiatorConfigurationSheet(0);
    type metadata accessor for UserSessionConfiguration(0);
    sub_264664FBC(&qword_27FF75F58, type metadata accessor for UserSessionConfiguration, &protocol conformance descriptor for UserSessionConfiguration);
    sub_264783FA4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v27);

    *v9 = v27;
    swift_storeEnumTagMultiPayload();
    sub_264664FBC(&qword_27FF762B8, type metadata accessor for LocationSelectionView, &protocol conformance descriptor for LocationSelectionView);
    sub_2646643C4();
    sub_264784874();
    sub_26460CCE8(v12, v7, &qword_27FF762B0, &qword_264789E60);
    swift_storeEnumTagMultiPayload();
    sub_264664308();
    sub_264784874();
    return sub_26460CD50(v12, &qword_27FF762B0, &qword_264789E60);
  }

  else
  {
    if (v19 == 1)
    {
      type metadata accessor for InitiatorConfigurationSheet(0);
      v24[1] = v5;
      type metadata accessor for UserSessionConfiguration(0);
      v24[2] = v10;
      sub_264664FBC(&qword_27FF75F58, type metadata accessor for UserSessionConfiguration, &protocol conformance descriptor for UserSessionConfiguration);
      v24[0] = a3;

      v20 = sub_264783FA4();
      LocationSelectionView.init(sessionViewModel:userSessionConfiguration:)(v20, v14);
      sub_2646646D8(v14, v9, type metadata accessor for LocationSelectionView);
      swift_storeEnumTagMultiPayload();
      sub_264664FBC(&qword_27FF762B8, type metadata accessor for LocationSelectionView, &protocol conformance descriptor for LocationSelectionView);
      sub_2646643C4();
      sub_264784874();
      sub_26460CCE8(v12, v7, &qword_27FF762B0, &qword_264789E60);
      swift_storeEnumTagMultiPayload();
      sub_264664308();
      sub_264784874();
      sub_26460CD50(v12, &qword_27FF762B0, &qword_264789E60);
      v21 = type metadata accessor for LocationSelectionView;
      v22 = v14;
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_264664308();
      sub_264784874();
      v21 = type metadata accessor for SafetyMonitorUINavigationPathItem;
      v22 = v17;
    }

    return sub_264664740(v22, v21);
  }
}

uint64_t sub_264662B08(uint64_t a1)
{
  v2 = type metadata accessor for InitiatorConfigurationSheet(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = *(a1 + *(MEMORY[0x28223BE20](v2 - 8) + 48));
  sub_2646646D8(a1, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InitiatorConfigurationSheet);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_2646644E4(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v8 = *(v5 + 16);
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = sub_2646645E0;
  v9[4] = v7;
  aBlock[4] = sub_264655938;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26465A0C0;
  aBlock[3] = &block_descriptor_0;
  v10 = _Block_copy(aBlock);

  [v8 fetchCurrentWorkoutSnapshotWithCompletion_];
  _Block_release(v10);
}

uint64_t sub_264662CDC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for InitiatorConfigurationSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E0, &qword_26478C6E0);
  return sub_264785304();
}

uint64_t sub_264662D50@<X0>(char *a1@<X8>)
{
  v62 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76468, &unk_26478A110);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v63 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v61 = &v59 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF754B8, &qword_264787630);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v59 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76470, &unk_26478A120);
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v60 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v68 = &v59 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v67 = &v59 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v59 - v15;
  if (qword_27FF75280 != -1)
  {
    swift_once();
  }

  v69 = qword_27FF790B8;
  v70 = qword_27FF790C0;
  v17 = sub_264613FC4();

  v18 = sub_264784E44();
  v20 = v19;
  v69 = v18;
  v70 = v19;
  v22 = v21 & 1;
  v71 = v21 & 1;
  v72 = v23;
  sub_264785034();
  sub_26460ECC4(v18, v20, v22);

  sub_264665004(v7, v16);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF754C0, &qword_264787638);
  v25 = *(v24 + 36);
  v66 = v16;
  v26 = &v16[v25];
  *v26 = 2;
  v27 = 1;
  v26[8] = 1;
  if (qword_27FF75290 != -1)
  {
    swift_once();
  }

  v69 = qword_27FF790D8;
  v70 = qword_27FF790E0;

  v59 = v17;
  v28 = sub_264784E44();
  v30 = v29;
  v69 = v28;
  v70 = v29;
  v32 = v31 & 1;
  v71 = v31 & 1;
  v72 = v33;
  sub_264785034();
  sub_26460ECC4(v28, v30, v32);

  v34 = v67;
  sub_264665004(v7, v67);
  v35 = v34 + *(v24 + 36);
  *v35 = 1;
  *(v35 + 8) = 1;
  v36 = objc_opt_self();
  v37 = [v36 zelkovaWorkoutEnabled];
  v38 = v61;
  v39 = v66;
  if (v37)
  {
    if ([v36 zelkovaKahanaEnabled] & 1) != 0 || (type metadata accessor for SafetyMonitorUIUtilities(), (sub_264739D18()))
    {
      if (qword_27FF752A0 != -1)
      {
        swift_once();
      }

      v69 = qword_27FF790F8;
      v70 = qword_27FF79100;

      v40 = sub_264784E44();
      v42 = v41;
      v69 = v40;
      v70 = v41;
      v44 = v43 & 1;
      v71 = v43 & 1;
      v72 = v45;
      sub_264785034();
      sub_26460ECC4(v40, v42, v44);

      v46 = v68;
      sub_264665004(v7, v68);
      v47 = v46 + *(v24 + 36);
      *v47 = 4;
      *(v47 + 8) = 1;
      (*(v64 + 32))(v38, v46, v65);
      v27 = 0;
    }

    else
    {
      v27 = 1;
    }
  }

  v49 = v64;
  v48 = v65;
  (*(v64 + 56))(v38, v27, 1, v65);
  v50 = *(v49 + 16);
  v51 = v68;
  v50(v68, v39, v48);
  v52 = v60;
  v53 = v67;
  v50(v60, v67, v48);
  v54 = v63;
  sub_26460CCE8(v38, v63, &qword_27FF76468, &unk_26478A110);
  v55 = v62;
  v50(v62, v51, v48);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76478, &qword_26478A130);
  v50(&v55[*(v56 + 48)], v52, v48);
  sub_26460CCE8(v54, &v55[*(v56 + 64)], &qword_27FF76468, &unk_26478A110);
  sub_26460CD50(v38, &qword_27FF76468, &unk_26478A110);
  v57 = *(v49 + 8);
  v57(v53, v48);
  v57(v66, v48);
  sub_26460CD50(v54, &qword_27FF76468, &unk_26478A110);
  v57(v52, v48);
  return (v57)(v68, v48);
}

uint64_t sub_264663408@<X0>(char *a1@<X8>)
{
  v62 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76468, &unk_26478A110);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v63 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v61 = &v59 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF754B8, &qword_264787630);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v59 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76470, &unk_26478A120);
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v60 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v68 = &v59 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v67 = &v59 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v59 - v15;
  if (qword_27FF75288 != -1)
  {
    swift_once();
  }

  v69 = qword_27FF790C8;
  v70 = qword_27FF790D0;
  v17 = sub_264613FC4();

  v18 = sub_264784E44();
  v20 = v19;
  v69 = v18;
  v70 = v19;
  v22 = v21 & 1;
  v71 = v21 & 1;
  v72 = v23;
  sub_264785034();
  sub_26460ECC4(v18, v20, v22);

  sub_264665004(v7, v16);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF754C0, &qword_264787638);
  v25 = *(v24 + 36);
  v66 = v16;
  v26 = &v16[v25];
  *v26 = 2;
  v27 = 1;
  v26[8] = 1;
  if (qword_27FF75298 != -1)
  {
    swift_once();
  }

  v69 = qword_27FF790E8;
  v70 = qword_27FF790F0;

  v59 = v17;
  v28 = sub_264784E44();
  v30 = v29;
  v69 = v28;
  v70 = v29;
  v32 = v31 & 1;
  v71 = v31 & 1;
  v72 = v33;
  sub_264785034();
  sub_26460ECC4(v28, v30, v32);

  v34 = v67;
  sub_264665004(v7, v67);
  v35 = v34 + *(v24 + 36);
  *v35 = 1;
  *(v35 + 8) = 1;
  v36 = objc_opt_self();
  v37 = [v36 zelkovaWorkoutEnabled];
  v38 = v61;
  v39 = v66;
  if (v37)
  {
    if ([v36 zelkovaKahanaEnabled] & 1) != 0 || (type metadata accessor for SafetyMonitorUIUtilities(), (sub_264739D18()))
    {
      if (qword_27FF752A8 != -1)
      {
        swift_once();
      }

      v69 = qword_27FF79108;
      v70 = qword_27FF79110;

      v40 = sub_264784E44();
      v42 = v41;
      v69 = v40;
      v70 = v41;
      v44 = v43 & 1;
      v71 = v43 & 1;
      v72 = v45;
      sub_264785034();
      sub_26460ECC4(v40, v42, v44);

      v46 = v68;
      sub_264665004(v7, v68);
      v47 = v46 + *(v24 + 36);
      *v47 = 4;
      *(v47 + 8) = 1;
      (*(v64 + 32))(v38, v46, v65);
      v27 = 0;
    }

    else
    {
      v27 = 1;
    }
  }

  v49 = v64;
  v48 = v65;
  (*(v64 + 56))(v38, v27, 1, v65);
  v50 = *(v49 + 16);
  v51 = v68;
  v50(v68, v39, v48);
  v52 = v60;
  v53 = v67;
  v50(v60, v67, v48);
  v54 = v63;
  sub_26460CCE8(v38, v63, &qword_27FF76468, &unk_26478A110);
  v55 = v62;
  v50(v62, v51, v48);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76478, &qword_26478A130);
  v50(&v55[*(v56 + 48)], v52, v48);
  sub_26460CCE8(v54, &v55[*(v56 + 64)], &qword_27FF76468, &unk_26478A110);
  sub_26460CD50(v38, &qword_27FF76468, &unk_26478A110);
  v57 = *(v49 + 8);
  v57(v53, v48);
  v57(v66, v48);
  sub_26460CD50(v54, &qword_27FF76468, &unk_26478A110);
  v57(v52, v48);
  return (v57)(v68, v48);
}

uint64_t sub_264663AC0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF761D0, &qword_264789DE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  v7 = (v1 + *(a1 + 24));
  v9 = *v7;
  v8 = v7[1];
  v13 = v9;
  v14 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF761D8, &qword_264789DF0);
  sub_264785314();
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756E0, &qword_264787DE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF761E0, &qword_264789DF8);
  sub_26460CDF0(&qword_27FF761E8, &qword_27FF756E0, &qword_264787DE0, MEMORY[0x277D83960]);
  sub_26460CDF0(&qword_27FF761F0, &qword_27FF756E0, &qword_264787DE0, MEMORY[0x277D83980]);
  sub_26460CDF0(&qword_27FF761F8, &qword_27FF756E0, &qword_264787DE0, MEMORY[0x277D83990]);
  sub_264663D70();
  sub_264664FBC(&qword_27FF76278, type metadata accessor for SafetyMonitorUINavigationPathItem, &unk_2647919F4);
  sub_264784274();
  sub_26460CDF0(&qword_27FF762C8, &qword_27FF761D0, &qword_264789DE8, MEMORY[0x277CDDA18]);
  sub_264785054();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_264663D70()
{
  result = qword_27FF76200;
  if (!qword_27FF76200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF761E0, &qword_264789DF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76208, &qword_264789E00);
    type metadata accessor for SafetyMonitorUINavigationPathItem(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76210, &qword_264789E08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76218, &qword_264789E10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76220, &qword_264789E18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76228, &qword_264789E20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76230, &qword_264789E28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76238, &qword_264789E30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76240, &qword_264789E38);
    sub_264784954();
    sub_26466405C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26460CDF0(&qword_27FF76270, &qword_27FF76220, &qword_264789E18, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    sub_264664FBC(&qword_27FF76278, type metadata accessor for SafetyMonitorUINavigationPathItem, &unk_2647919F4);
    sub_264664140();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76200);
  }

  return result;
}

unint64_t sub_26466405C()
{
  result = qword_27FF76248;
  if (!qword_27FF76248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76240, &qword_264789E38);
    sub_26460CDF0(&qword_27FF76250, &qword_27FF76258, &unk_264789E40, MEMORY[0x277CDE5A0]);
    sub_26460CDF0(&qword_27FF76260, &qword_27FF76268, &qword_26478EFD0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76248);
  }

  return result;
}

unint64_t sub_264664140()
{
  result = qword_27FF76280;
  if (!qword_27FF76280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76210, &qword_264789E08);
    sub_2646641F8();
    sub_26460CDF0(&qword_27FF76260, &qword_27FF76268, &qword_26478EFD0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76280);
  }

  return result;
}

unint64_t sub_2646641F8()
{
  result = qword_27FF76288;
  if (!qword_27FF76288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76290, &qword_264789E50);
    sub_26466427C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76288);
  }

  return result;
}

unint64_t sub_26466427C()
{
  result = qword_27FF76298;
  if (!qword_27FF76298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF762A0, &qword_264789E58);
    sub_264664308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76298);
  }

  return result;
}

unint64_t sub_264664308()
{
  result = qword_27FF762A8;
  if (!qword_27FF762A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF762B0, &qword_264789E60);
    sub_264664FBC(&qword_27FF762B8, type metadata accessor for LocationSelectionView, &protocol conformance descriptor for LocationSelectionView);
    sub_2646643C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF762A8);
  }

  return result;
}

unint64_t sub_2646643C4()
{
  result = qword_27FF762C0;
  if (!qword_27FF762C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF762C0);
  }

  return result;
}

uint64_t sub_264664420@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x26673E1F0]();
  *a1 = result;
  return result;
}

uint64_t sub_26466444C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x26673E1F0]();
  *a1 = result;
  return result;
}

uint64_t sub_2646644E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InitiatorConfigurationSheet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264664548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InitiatorConfigurationSheet(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2646623C4(a1, v6, a2);
}

uint64_t sub_2646645E0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for InitiatorConfigurationSheet(0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_264662CDC(a1, a2, a3, a4, v10);
}

uint64_t sub_264664678()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2646646D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264664740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2646647A8()
{
  result = qword_27FF76320;
  if (!qword_27FF76320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76318, &qword_264789F28);
    sub_26460CDF0(&qword_27FF76328, &qword_27FF76330, &qword_264789F30, MEMORY[0x277CDF028]);
    sub_264664FBC(&qword_27FF76008, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76320);
  }

  return result;
}

unint64_t sub_264664898()
{
  result = qword_27FF76350;
  if (!qword_27FF76350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76340, &unk_264789F40);
    sub_2646647A8();
    sub_26460CDF0(&qword_27FF76358, &qword_27FF76360, &qword_264789F50, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76350);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for InitiatorConfigurationSheet(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2647840D4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  sub_2646644DC(*(v0 + v3 + *(v1 + 20)), *(v0 + v3 + *(v1 + 20) + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_264664B58(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for InitiatorConfigurationSheet(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_264664BCC()
{
  result = qword_27FF763E0;
  if (!qword_27FF763E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF763A8, &qword_26478A098);
    sub_26460CDF0(&qword_27FF763D8, &qword_27FF763A0, &qword_26478A090, MEMORY[0x277CDD828]);
    sub_264664FBC(&qword_27FF76008, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF763E0);
  }

  return result;
}

unint64_t sub_264664CB4()
{
  result = qword_27FF76400;
  if (!qword_27FF76400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF763F8, &qword_26478A0D8);
    sub_264664D6C();
    sub_26460CDF0(&qword_27FF75AF0, &qword_27FF75AF8, &qword_264788928, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76400);
  }

  return result;
}

unint64_t sub_264664D6C()
{
  result = qword_27FF76408;
  if (!qword_27FF76408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76410, &unk_26478A0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76408);
  }

  return result;
}

unint64_t sub_264664DF0()
{
  result = qword_27FF76420;
  if (!qword_27FF76420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76418, &qword_26478A0F0);
    sub_264664E7C();
    sub_264664ED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76420);
  }

  return result;
}

unint64_t sub_264664E7C()
{
  result = qword_27FF76428;
  if (!qword_27FF76428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76428);
  }

  return result;
}

unint64_t sub_264664ED0()
{
  result = qword_27FF76430;
  if (!qword_27FF76430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76430);
  }

  return result;
}

unint64_t sub_264664F24()
{
  result = qword_27FF76438;
  if (!qword_27FF76438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76388, &qword_26478A078);
    sub_264664CB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76438);
  }

  return result;
}

uint64_t sub_264664FBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264665004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF754B8, &qword_264787630);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264665080()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF761D0, &qword_264789DE8);
  sub_26460CDF0(&qword_27FF762C8, &qword_27FF761D0, &qword_264789DE8, MEMORY[0x277CDDA18]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26466516C()
{
  result = sub_264785724();
  qword_27FF76480 = result;
  *algn_27FF76488 = v1;
  return result;
}

uint64_t sub_2646651E0()
{
  result = sub_264785724();
  qword_27FF76490 = result;
  *algn_27FF76498 = v1;
  return result;
}

uint64_t sub_264665238()
{
  result = sub_264785724();
  qword_27FF764A0 = result;
  *algn_27FF764A8 = v1;
  return result;
}

uint64_t sub_264665290(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

uint64_t sub_2646652FC()
{
  type metadata accessor for DeviceLockMonitor(0);
  swift_allocObject();
  result = sub_264666104();
  qword_27FF764B0 = result;
  return result;
}

uint64_t static DeviceLockMonitor.shared.getter()
{
  if (qword_27FF74FE8 != -1)
  {
    swift_once();
  }
}

uint64_t (*sub_2646653F0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t (*sub_2646654AC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF764C8, &qword_26478A1D0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI17DeviceLockMonitor__lockState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF764C0, &qword_26478A1C8);
  sub_264783EA4();
  swift_endAccess();
  return sub_2646263E8;
}

uint64_t sub_264665658@<X0>(void *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(a3);
}

uint64_t sub_2646656E4(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t (*sub_264665750(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_264622F4C;
}

uint64_t sub_2646657F4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF764C0, &qword_26478A1C8);
  sub_264783EA4();
  return swift_endAccess();
}

uint64_t sub_264665868(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF764C8, &qword_26478A1D0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  v13 = *(v7 + 16);
  v13(&v15 - v11, a1, v6);
  v13(v10, v12, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF764C0, &qword_26478A1C8);
  sub_264783EB4();
  swift_endAccess();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_264665A00(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF764C0, &qword_26478A1C8);
  sub_264783EA4();
  return swift_endAccess();
}

uint64_t sub_264665A7C(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF764C8, &qword_26478A1D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v7 - v5, a1, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF764C0, &qword_26478A1C8);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*sub_264665BB4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF764C8, &qword_26478A1D0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI17DeviceLockMonitor__lockscreenState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF764C0, &qword_26478A1C8);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

SafetyMonitorUI::DeviceLockMonitor::LockState_optional __swiftcall DeviceLockMonitor.LockState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_264785E14();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DeviceLockMonitor.LockState.rawValue.getter()
{
  v1 = 0x64656B636F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656B636F6C6E75;
  }
}

uint64_t sub_264665DD8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x64656B636F6CLL;
  if (v2 != 1)
  {
    v4 = 0x6E776F6E6B6E75;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x64656B636F6C6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x64656B636F6CLL;
  if (*a2 != 1)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64656B636F6C6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_264785E84();
  }

  return v11 & 1;
}

uint64_t sub_264665ED4()
{
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

uint64_t sub_264665F74(uint64_t a1)
{
  sub_264785794();
}

uint64_t sub_264666000(uint64_t a1)
{
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

void sub_2646660A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x64656B636F6CLL;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64656B636F6C6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_264666104()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF764C0, &qword_26478A1C8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-v3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF764F8, &qword_26478A368);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v0 + 16) = v5;
  *(v0 + 24) = -1;
  v6 = OBJC_IVAR____TtC15SafetyMonitorUI17DeviceLockMonitor__lockState;
  v10[15] = 2;
  sub_264783E94();
  v7 = *(v2 + 32);
  v7(v0 + v6, v4, v1);
  v8 = OBJC_IVAR____TtC15SafetyMonitorUI17DeviceLockMonitor__lockscreenState;
  v10[14] = 2;
  sub_264783E94();
  v7(v0 + v8, v4, v1);
  return v0;
}

void sub_26466626C()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_264667D28();
  os_unfair_lock_unlock(v1 + 4);
  os_unfair_lock_lock(v1 + 4);
  sub_264668520();
  os_unfair_lock_unlock(v1 + 4);
  os_unfair_lock_lock(v1 + 4);
  sub_264668520();
  os_unfair_lock_unlock(v1 + 4);
  os_unfair_lock_lock(v1 + 4);
  sub_264668520();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_26466636C(uint64_t a1)
{
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &aBlock[-1] - v8;
  v10 = sub_2647855A4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 24) == -1)
  {
    v27 = v4;
    aBlock[10] = v1;
    sub_26466831C();
    (*(v11 + 104))(v13, *MEMORY[0x277D851C8], v10);
    v14 = sub_264785A64();
    (*(v11 + 8))(v13, v10);
    v15 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_2646684CC;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_264666900;
    aBlock[3] = &block_descriptor_49;
    v16 = _Block_copy(aBlock);

    v17 = sub_264785784();
    swift_beginAccess();
    v18 = notify_register_dispatch((v17 + 32), (a1 + 24), v14, v16);
    swift_endAccess();
    _Block_release(v16);

    if (v18 || *(a1 + 24) == -1)
    {
      sub_264783DF4();
      v19 = sub_264783E14();
      v20 = sub_2647859D4();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        aBlock[0] = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_2646DF234(0xD000000000000011, 0x8000000264794D10, aBlock);
        _os_log_impl(&dword_264605000, v19, v20, "%s - Error registering for keybag notifications", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x266740650](v22, -1, -1);
        MEMORY[0x266740650](v21, -1, -1);
      }

      (*(v27 + 8))(v7, v3);
    }

    else
    {
      sub_264783DF4();
      v23 = sub_264783E14();
      v24 = sub_2647859F4();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        aBlock[0] = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_2646DF234(0xD000000000000011, 0x8000000264794D10, aBlock);
        _os_log_impl(&dword_264605000, v23, v24, "%s - Registered for keybag notifications", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x266740650](v26, -1, -1);
        MEMORY[0x266740650](v25, -1, -1);
      }

      (*(v27 + 8))(v9, v3);
    }
  }
}

uint64_t sub_264666844(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);
    MEMORY[0x28223BE20](result);
    os_unfair_lock_lock(v3 + 4);
    sub_264668520();
    os_unfair_lock_unlock(v3 + 4);
  }

  return result;
}

uint64_t sub_264666900(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_264666954(uint64_t a1)
{
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &aBlock[-1] - v8;
  v10 = sub_2647855A4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 28) == -1)
  {
    v26 = v4;
    aBlock[10] = v1;
    v14 = *MEMORY[0x277D67770];
    sub_26466831C();
    (*(v11 + 104))(v13, *MEMORY[0x277D851C8], v10);
    v15 = sub_264785A64();
    (*(v11 + 8))(v13, v10);
    v16 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_2646684B8;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_264666900;
    aBlock[3] = &block_descriptor_37;
    v17 = _Block_copy(aBlock);

    swift_beginAccess();
    LODWORD(v14) = notify_register_dispatch(v14, (a1 + 28), v15, v17);
    swift_endAccess();
    _Block_release(v17);

    if (v14 || *(a1 + 28) == -1)
    {
      sub_264783DF4();
      v18 = sub_264783E14();
      v19 = sub_2647859D4();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        aBlock[0] = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_2646DF234(0xD000000000000011, 0x8000000264794D10, aBlock);
        _os_log_impl(&dword_264605000, v18, v19, "%s - Error registering for SpringBoard lock screen notifications", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x266740650](v21, -1, -1);
        MEMORY[0x266740650](v20, -1, -1);
      }

      (*(v26 + 8))(v7, v3);
    }

    else
    {
      sub_264783DF4();
      v22 = sub_264783E14();
      v23 = sub_2647859F4();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        aBlock[0] = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_2646DF234(0xD000000000000011, 0x8000000264794D10, aBlock);
        _os_log_impl(&dword_264605000, v22, v23, "%s - Registered for SpringBoard lock screen notifications", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x266740650](v25, -1, -1);
        MEMORY[0x266740650](v24, -1, -1);
      }

      (*(v26 + 8))(v9, v3);
    }
  }
}

uint64_t sub_264666DF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);
    MEMORY[0x28223BE20](result);
    os_unfair_lock_lock(v3 + 4);
    sub_264668520();
    os_unfair_lock_unlock(v3 + 4);
  }

  return result;
}

uint64_t sub_264666EAC(uint64_t a1)
{
  v2 = sub_264785594();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2647855C4();
  v6 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MKBGetDeviceLockState();
  sub_26466831C();
  v10 = sub_264785A44();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = a1;
  aBlock[4] = sub_2646684C0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_45;
  v12 = _Block_copy(aBlock);

  sub_2647855B4();
  aBlock[7] = MEMORY[0x277D84F90];
  sub_2646683C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26466841C();
  sub_264785BD4();
  MEMORY[0x26673F780](0, v8, v5, v12);
  _Block_release(v12);

  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v14);
}

uint64_t sub_264667148(int a1, uint64_t a2)
{
  v3 = 0x64656B636F6C6E75;
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 != 3 && a1 != 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v30);

  v10 = 0xE600000000000000;
  v11 = 0x64656B636F6CLL;
  if (v30 != 1)
  {
    v11 = 0x6E776F6E6B6E75;
    v10 = 0xE700000000000000;
  }

  if (v30)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x64656B636F6C6E75;
  }

  if (v30)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE800000000000000;
  }

  v14 = 0xE800000000000000;
  if (a1 && a1 != 3)
  {
    v14 = 0xE600000000000000;
    v3 = 0x64656B636F6CLL;
  }

  if (v12 == v3 && v13 == v14)
  {
  }

  else
  {
    v16 = sub_264785E84();

    if ((v16 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v29 = v9;

      sub_264783EE4();
      sub_264783DF4();

      v17 = sub_264783E14();
      v18 = sub_2647859F4();

      if (os_log_type_enabled(v17, v18))
      {
        v26 = v5;
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v28 = v20;
        *v19 = 136315138;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_264783ED4(&v27);

        v21 = 0xE600000000000000;
        v22 = 0x64656B636F6CLL;
        if (v27 != 1)
        {
          v22 = 0x6E776F6E6B6E75;
          v21 = 0xE700000000000000;
        }

        if (v27)
        {
          v23 = v22;
        }

        else
        {
          v23 = 0x64656B636F6C6E75;
        }

        if (v27)
        {
          v24 = v21;
        }

        else
        {
          v24 = 0xE800000000000000;
        }

        v25 = sub_2646DF234(v23, v24, &v28);

        *(v19 + 4) = v25;
        _os_log_impl(&dword_264605000, v17, v18, "Updated lock state: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x266740650](v20, -1, -1);
        MEMORY[0x266740650](v19, -1, -1);

        return (*(v26 + 8))(v7, v4);
      }

      else
      {

        return (*(v5 + 8))(v7, v4);
      }
    }
  }

  return result;
}

uint64_t sub_264667500(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = sub_264785594();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2647855C4();
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v9 = SBSGetScreenLockStatus() != 0;
  sub_26466831C();
  v10 = sub_264785A44();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = a1;
  aBlock[4] = sub_2646683A0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_1;
  v12 = _Block_copy(aBlock);

  sub_2647855B4();
  v16 = MEMORY[0x277D84F90];
  sub_2646683C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26466841C();
  sub_264785BD4();
  MEMORY[0x26673F780](0, v8, v5, v12);
  _Block_release(v12);

  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v15);
}

uint64_t sub_2646677D0(char a1, uint64_t a2)
{
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v26);

  if (v26)
  {
    if (v26 != 1)
    {
      goto LABEL_14;
    }

    v7 = 0xE600000000000000;
    v8 = 0x64656B636F6CLL;
  }

  else
  {
    v8 = 0x64656B636F6C6E75;
    v7 = 0xE800000000000000;
  }

  if (a1)
  {
    v9 = 0x64656B636F6CLL;
  }

  else
  {
    v9 = 0x64656B636F6C6E75;
  }

  if (a1)
  {
    v10 = 0xE600000000000000;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v8 == v9 && v7 == v10)
  {
  }

LABEL_14:
  v12 = sub_264785E84();

  if ((v12 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v25 = a1 & 1;

    sub_264783EE4();
    sub_264783DF4();

    v13 = sub_264783E14();
    v14 = sub_2647859F4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v23);

      v17 = 0xE600000000000000;
      v18 = 0x6E776F6E6B6E75;
      if (v23 == 1)
      {
        v18 = 0x64656B636F6CLL;
      }

      else
      {
        v17 = 0xE700000000000000;
      }

      if (v23)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0x64656B636F6C6E75;
      }

      if (v23)
      {
        v20 = v17;
      }

      else
      {
        v20 = 0xE800000000000000;
      }

      v21 = sub_2646DF234(v19, v20, &v24);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_264605000, v13, v14, "Updated lockscreen state: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x266740650](v16, -1, -1);
      MEMORY[0x266740650](v15, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t DeviceLockMonitor.deinit()
{

  v1 = OBJC_IVAR____TtC15SafetyMonitorUI17DeviceLockMonitor__lockState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF764C0, &qword_26478A1C8);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC15SafetyMonitorUI17DeviceLockMonitor__lockscreenState, v2);
  return v0;
}

uint64_t DeviceLockMonitor.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC15SafetyMonitorUI17DeviceLockMonitor__lockState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF764C0, &qword_26478A1C8);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC15SafetyMonitorUI17DeviceLockMonitor__lockscreenState, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_264667CE8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for DeviceLockMonitor(0);
  result = sub_264783E64();
  *a2 = result;
  return result;
}

unint64_t sub_264667DA8()
{
  result = qword_27FF764D8;
  if (!qword_27FF764D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF764D8);
  }

  return result;
}

uint64_t type metadata accessor for DeviceLockMonitor(uint64_t a1)
{
  result = qword_27FF764E0;
  if (!qword_27FF764E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264667ED0(uint64_t a1)
{
  sub_26466817C();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26466817C()
{
  if (!qword_27FF764F0)
  {
    v0 = sub_264783EF4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF764F0);
    }
  }
}

uint64_t getEnumTagSinglePayload for DeviceLockMonitor.LockState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DeviceLockMonitor.LockState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26466831C()
{
  result = qword_27FF76980;
  if (!qword_27FF76980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF76980);
  }

  return result;
}

uint64_t sub_264668368()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2646683C4()
{
  result = qword_27FF75CD8;
  if (!qword_27FF75CD8)
  {
    sub_264785594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75CD8);
  }

  return result;
}

unint64_t sub_26466841C()
{
  result = qword_27FF75CE0;
  if (!qword_27FF75CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FF76990, &qword_264788A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75CE0);
  }

  return result;
}

uint64_t sub_264668480()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26466856C(uint64_t a1)
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v41 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v41 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v42);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v42);

  v14 = v42;
  if (!v42)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v42);

    v14 = v42;
    if (!v42)
    {
      sub_264783DF4();
      v15 = sub_264783E14();
      v16 = sub_2647859E4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_264605000, v15, v16, "#Initiator,InitiatorConfigurationView,locationString - endLocation from userSessionConfiguration and sessionViewModel is invalid", v17, 2u);
        MEMORY[0x266740650](v17, -1, -1);
      }

      (*(v2 + 8))(v13, v1);
      v14 = 0;
    }
  }

  if (SessionViewModel.sessionType.getter() != 2)
  {
    sub_264783DF4();
    v24 = sub_264783E14();
    v25 = sub_2647859D4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_264605000, v24, v25, "#Initiator,InitiatorConfigurationView,locationString - session type is not destination bound", v26, 2u);
      MEMORY[0x266740650](v26, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  if ((SessionViewModel.isReadyToConfigure.getter() & 1) == 0)
  {
    sub_264783DF4();
    v27 = sub_264783E14();
    v28 = sub_2647859D4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_264605000, v27, v28, "#Initiator,InitiatorConfigurationView,locationString - model not ready to configure", v29, 2u);
      MEMORY[0x266740650](v29, -1, -1);
    }

    (*(v2 + 8))(v8, v1);
    return 0;
  }

  v18 = sub_264624CE4();
  v19 = v18;
  if (v18 > 2)
  {
    if (v18 != 3)
    {
      if (v18 == 4)
      {
        v31 = _s15SafetyMonitorUI0aB11UIUtilitiesC29fullThoroughfareAddressFormat3forSSSgSo9MKMapItemCSg_tFZ_0(v14);
        v33 = v32;
        if (qword_27FF750A8 != -1)
        {
          swift_once();
        }

        v34 = qword_27FF78D08;

        if (v33)
        {

          return v31;
        }

        goto LABEL_38;
      }

LABEL_27:
      sub_264783DF4();
      v35 = sub_264783E14();
      v36 = sub_2647859D4();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 134217984;
        *(v37 + 4) = v19;
        _os_log_impl(&dword_264605000, v35, v36, "#Initiator,InitiatorConfigurationView,locationString - Invalid destination type: %lu", v37, 0xCu);
        MEMORY[0x266740650](v37, -1, -1);
      }

      (*(v2 + 8))(v11, v1);
      return 0;
    }

    v20 = _s15SafetyMonitorUI0aB11UIUtilitiesC17cityAddressFormat3forSSSgSo9MKMapItemCSg_tFZ_0(v14);
    v22 = v39;
    if (qword_27FF75098 != -1)
    {
      swift_once();
    }

    v23 = &qword_27FF78CF0;
  }

  else
  {
    if (v18 != 1)
    {
      if (v18 == 2)
      {
        v20 = _s15SafetyMonitorUI0aB11UIUtilitiesC17cityAddressFormat3forSSSgSo9MKMapItemCSg_tFZ_0(v14);
        v22 = v21;
        if (qword_27FF75090 != -1)
        {
          swift_once();
        }

        v23 = &qword_27FF78CE0;
        goto LABEL_36;
      }

      goto LABEL_27;
    }

    v20 = _s15SafetyMonitorUI0aB11UIUtilitiesC17cityAddressFormat3forSSSgSo9MKMapItemCSg_tFZ_0(v14);
    v22 = v38;
    if (qword_27FF75088 != -1)
    {
      swift_once();
    }

    v23 = &qword_27FF78CD0;
  }

LABEL_36:
  v34 = *v23;

  if (v22)
  {

    LOBYTE(v42) = 0;
    v40 = _s15SafetyMonitorUI0aB11UIUtilitiesC31formatAddressForDestinationType011destinationI07address04userI0SSSo09SMSessionhI0V_SSAA04UserI0OtFZ_0(v19, v20, v22, &v42);

    return v40;
  }

LABEL_38:

  return v34;
}

uint64_t sub_264668BD8(uint64_t a1)
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v36 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v11 = sub_264783AF4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((SessionViewModel.isReadyToConfigure.getter() & 1) == 0)
  {
    sub_264783DF4();
    v20 = sub_264783E14();
    v21 = sub_2647859D4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_264605000, v20, v21, "#Initiator,InitiatorConfigurationView,sessionTimeString - not ready to configure", v22, 2u);
      MEMORY[0x266740650](v22, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  if (SessionViewModel.sessionType.getter() - 1 > 1)
  {
    sub_264783DF4();

    v23 = sub_264783E14();
    v24 = sub_2647859D4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v37 = v26;
      *v25 = 136315138;
      v27 = objc_opt_self();
      v28 = [v27 sessionTypeToString_];
      v29 = sub_264785724();
      v31 = v30;

      v32 = sub_2646DF234(v29, v31, &v37);

      *(v25 + 4) = v32;
      _os_log_impl(&dword_264605000, v23, v24, "#Initiator,InitiatorConfigurationView,sessionTimeString - invalid sessionType %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x266740650](v26, -1, -1);
      MEMORY[0x266740650](v25, -1, -1);
    }

    (*(v2 + 8))(v8, v1);
    return 0;
  }

  v15 = SessionViewModel.sessionType.getter();
  if (v15 == 1)
  {
    sub_26461FD8C();
    if (v34)
    {
      goto LABEL_6;
    }

LABEL_18:
    sub_264783A94();
    v35 = _s15SafetyMonitorUI0aB11UIUtilitiesC10presentETA3forSS10Foundation4DateV_tFZ_0();
    (*(v12 + 8))(v14, v11);
    return v35;
  }

  if (v15 == 2)
  {
    sub_26461F730();
    if ((v16 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_6:
  sub_264783DF4();
  v17 = sub_264783E14();
  v18 = sub_2647859D4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_264605000, v17, v18, "#Initiator,InitiatorConfigurationView,sessionTimeString - missing sessionDuration", v19, 2u);
    MEMORY[0x266740650](v19, -1, -1);
  }

  (*(v2 + 8))(v10, v1);
  return 0;
}

uint64_t sub_26466902C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_iconColor;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_2646690DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_iconColor;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_26466920C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_264669280(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_2646692E0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

double sub_26466939C@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v4);

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_26466941C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_264783EE4();
}

uint64_t sub_26466949C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v1);

  return v1;
}

uint64_t sub_264669518(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_264783EE4();
}

void (*sub_264669590(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_264623A34;
}

uint64_t sub_264669634(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EA4();
  return swift_endAccess();
}

uint64_t sub_2646696AC(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_264669830()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EA4();
  return swift_endAccess();
}

uint64_t sub_2646698A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_2646699DC(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel__addressString;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EA4();
  swift_endAccess();
  return sub_26462AFD0;
}

id SafetyCacheWorkoutEventRowViewModel.init(with:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  *&v1[OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_iconColor] = 0;
  v7 = &v1[OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_title];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v1[OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_timeString];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel__addressString;
  v15 = 0;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C40, &qword_264788A70);
  sub_264783E94();
  (*(v4 + 32))(&v1[v9], v6, v3);
  *&v1[OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_workoutEvent] = a1;
  v10 = type metadata accessor for SafetyCacheWorkoutEventRowViewModel(0);
  v14.receiver = v1;
  v14.super_class = v10;
  v11 = a1;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  sub_264669DA8();
  sub_264669E48();
  sub_26466A400();
  sub_26466A58C();

  return v12;
}

uint64_t type metadata accessor for SafetyCacheWorkoutEventRowViewModel(uint64_t a1)
{
  result = qword_27FF76528;
  if (!qword_27FF76528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_264669D58()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_workoutEvent) location];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t sub_264669DA8()
{
  v1 = OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_workoutEvent;
  if ([*(v0 + OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_workoutEvent) sessionState] == 4)
  {
    v2 = sub_2647851E4();
  }

  else if ([*(v0 + v1) sessionState] == 3)
  {
    v2 = sub_264785164();
  }

  else
  {
    v2 = sub_2647851B4();
  }

  v3 = v2;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_iconColor;
  swift_beginAccess();
  *(v0 + v4) = v3;
}

uint64_t sub_264669E48()
{
  v1 = v0;
  v2 = sub_2647856E4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_264783B94();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_264785704();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_workoutEvent;
  [*(v0 + OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_workoutEvent) locationType];
  [*(v0 + v5) activityType];
  [*(v0 + v5) swimmingLocationType];
  v6 = FILocalizedNameForActivityType();
  if (v6)
  {
    v7 = v6;
    v8 = sub_264785724();
    v10 = v9;
  }

  else
  {
    sub_264785694();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    v8 = sub_264785744();
    v10 = v13;
  }

  v14 = [*(v0 + v5) sessionState];
  if (v14 == 4 || v14 == 3)
  {
    sub_2647856D4();
    sub_2647856C4();
    sub_2647856B4();

    sub_2647856C4();
    sub_2647856F4();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    v16 = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass_];
    sub_264783B84();
    goto LABEL_11;
  }

  if (v14 == 2)
  {
    [*(v0 + v5) isResumedSessionState];
    sub_2647856D4();
    sub_2647856C4();
    sub_2647856B4();

    sub_2647856C4();
    sub_2647856F4();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    v15 = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass_];
    sub_264783B84();
LABEL_11:
    v18 = sub_264785754();
    v20 = v19;
    v21 = (v1 + OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_title);
    swift_beginAccess();
    *v21 = v18;
    v21[1] = v20;
  }

  v17 = (v0 + OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_title);
  swift_beginAccess();
  *v17 = v8;
  v17[1] = v10;
}

uint64_t sub_26466A400()
{
  v1 = v0;
  v2 = sub_264783AF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() dateTimeFormatter];
  v7 = [*(v1 + OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_workoutEvent) date];
  sub_264783AC4();

  v8 = sub_264783A64();
  (*(v3 + 8))(v5, v2);
  v9 = [v6 stringFromDate_];

  v10 = sub_264785724();
  v12 = v11;

  v13 = (v1 + OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_timeString);
  swift_beginAccess();
  *v13 = v10;
  v13[1] = v12;
}

id sub_26466A58C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - v3;
  v5 = sub_264783AF4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*&v1[OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_workoutEvent] location];
  if (result)
  {
    v10 = result;
    [result latitude];
    v12 = v11;
    [v10 longitude];
    v14 = v13;
    [v10 altitude];
    v16 = v15;
    [v10 hunc];
    v18 = v17;
    [v10 vunc];
    v20 = v19;
    v21 = [v10 date];
    sub_264783AC4();

    v22 = [v10 referenceFrame];
    v23 = objc_allocWithZone(MEMORY[0x277CE41F8]);
    v24 = sub_264783A64();
    v25 = [v23 initWithCoordinate:v24 altitude:v22 horizontalAccuracy:v12 verticalAccuracy:v14 timestamp:v16 referenceFrame:{v18, v20}];

    (*(v6 + 8))(v8, v5);
    sub_2647858C4();
    v26 = sub_2647858E4();
    (*(*(v26 - 8) + 56))(v4, 0, 1, v26);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v25;
    v27[5] = v1;
    v28 = v1;
    sub_264635430(0, 0, v4, &unk_26478A588, v27);
  }

  return result;
}

uint64_t sub_26466A878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v6 = sub_264785594();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v7 = sub_2647855C4();
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();
  v8 = sub_264783E24();
  v5[21] = v8;
  v5[22] = *(v8 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26466A9FC, 0, 0);
}

uint64_t sub_26466A9FC()
{
  if (qword_27FF74FF0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_26466AAC8;

  return sub_2646DCEB0(v1);
}

uint64_t sub_26466AAC8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = sub_26466AE9C;
  }

  else
  {
    v4 = sub_26466ABDC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26466ABDC(uint64_t a1)
{
  v2 = v1[26];
  if (v2)
  {
    v3 = v1[20];
    v4 = v1[17];
    v22 = v1[19];
    v23 = v1[18];
    v5 = v1[15];
    v6 = v1[16];
    v7 = v1[14];
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v21 = sub_264785A44();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v2;
    v1[6] = sub_26466BAA8;
    v1[7] = v8;
    v1[2] = MEMORY[0x277D85DD0];
    v1[3] = 1107296256;
    v1[4] = sub_264659F60;
    v1[5] = &block_descriptor_2;
    v9 = _Block_copy(v1 + 2);
    v10 = v7;
    v11 = v2;
    sub_2647855B4();
    v1[12] = MEMORY[0x277D84F90];
    sub_2646683C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    sub_26466841C();
    sub_264785BD4();
    MEMORY[0x26673F780](0, v3, v4, v9);
    _Block_release(v9);

    (*(v6 + 8))(v4, v5);
    (*(v22 + 8))(v3, v23);
  }

  else
  {
    sub_264783DF4();
    v12 = sub_264783E14();
    v13 = sub_2647859D4();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v1[24];
    v16 = v1[21];
    v17 = v1[22];
    if (v14)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_264605000, v12, v13, "Failed to get a placemark for reverse geocode location", v18, 2u);
      MEMORY[0x266740650](v18, -1, -1);
    }

    (*(v17 + 8))(v15, v16);
  }

  v19 = v1[1];

  return v19();
}

uint64_t sub_26466AE9C(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 216);
  sub_264783DF4();
  v3 = v2;
  v4 = sub_264783E14();
  v5 = sub_2647859D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 216);
    v7 = *(v1 + 176);
    v19 = *(v1 + 184);
    v8 = *(v1 + 168);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_264785EF4();
    v13 = sub_2646DF234(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_264605000, v4, v5, "Failed to reverse geocode location: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x266740650](v10, -1, -1);
    MEMORY[0x266740650](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = *(v1 + 176);
    v14 = *(v1 + 184);
    v16 = *(v1 + 168);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_26466B094(void *a1, id a2)
{
  v3 = [a2 postalAddress];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(MEMORY[0x277CBDB80]) init];
    v6 = [v5 stringFromPostalAddress_];
    sub_264785724();

    sub_264613FC4();
    sub_264785B84();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1;
  return sub_264783EE4();
}

id SafetyCacheWorkoutEventRowViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SafetyCacheWorkoutEventRowViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SafetyCacheWorkoutEventRowViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26466B378@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SafetyCacheWorkoutEventRowViewModel(0);
  result = sub_264783E64();
  *a2 = result;
  return result;
}

uint64_t sub_26466B3B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_iconColor;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t keypath_get_7Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

void sub_26466B4D4(uint64_t a1)
{
  sub_26466B8FC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26466B8FC(uint64_t a1)
{
  if (!qword_27FF75E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75C40, &qword_264788A70);
    v1 = sub_264783EF4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF75E08);
    }
  }
}

uint64_t sub_26466B960()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26466B9A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26460F764;

  return sub_26466A878(a1, v4, v5, v7, v6);
}

uint64_t sub_26466BA68()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t DeviceCacheInfoView.init(infoModel:)@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for DeviceCacheInfoViewModel();
  sub_26466D474(&qword_27FF76538, type metadata accessor for DeviceCacheInfoViewModel, &protocol conformance descriptor for DeviceCacheInfoViewModel);
  result = sub_264784174();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26466BB48()
{
  v1 = sub_264783B94();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_264785704();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2647856E4();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for WatchCacheInfoViewModel();
  v7 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact;
  swift_beginAccess();
  v8 = *(v4 + v7);
  v9 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_isTransparencyMode;
  swift_beginAccess();
  if (ObjectType == v6)
  {
    if ((v8 == 0) | *(v4 + v9) & 1)
    {
LABEL_5:
      sub_264785694();
      sub_26460EC78();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v11 = [objc_opt_self() bundleForClass_];
      sub_264783B84();
      return sub_264785754();
    }
  }

  else if ((v8 == 0) | *(v4 + v9) & 1)
  {
    goto LABEL_5;
  }

  v13 = v8;
  sub_2647856D4();
  sub_2647856C4();
  sub_264785B14();
  sub_2647856B4();

  sub_2647856C4();
  sub_2647856F4();
  sub_26460EC78();
  v14 = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  v16 = sub_264785754();

  return v16;
}

uint64_t DeviceCacheInfoView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  *a2 = sub_2647845C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76540, &qword_26478A590);
  return sub_26466BF94(v5, v4, (a2 + *(v6 + 44)));
}

uint64_t sub_26466BF94@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v75 = a3;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76558, &qword_26478A630) - 8;
  v5 = MEMORY[0x28223BE20](v74);
  v76 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v68 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76560, &qword_26478A638);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v84 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v68 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76568, &qword_26478A640);
  v16 = v15 - 8;
  v17 = MEMORY[0x28223BE20](v15);
  v83 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v68 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76570, &qword_26478A648);
  v22 = v21 - 8;
  v23 = MEMORY[0x28223BE20](v21);
  v82 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v68 - v25;
  v87 = a1;
  v88 = a2;
  sub_26466C648(v85);
  v80 = v85[1];
  v77 = v85[0];
  v78 = v85[2];
  v79 = v86;
  *v26 = sub_264784724();
  *(v26 + 1) = 0;
  v26[16] = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76578, &qword_26478A650);
  sub_26466C788(a1, a2, &v26[*(v27 + 44)]);
  v28 = sub_264784C64();
  sub_264783F54();
  v29 = v26;
  v30 = &v26[*(v22 + 44)];
  *v30 = v28;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  v35 = a2;
  sub_264726F80(v20);
  v36 = sub_264785214();
  KeyPath = swift_getKeyPath();
  v38 = *(v16 + 44);
  v81 = v20;
  v39 = &v20[v38];
  *v39 = KeyPath;
  v39[1] = v36;
  sub_264726504(v14);
  v40 = sub_264785214();
  v41 = swift_getKeyPath();
  v42 = &v14[*(v10 + 44)];
  *v42 = v41;
  v42[1] = v40;
  sub_2647278CC(v8);
  v43 = sub_264785214();
  v44 = swift_getKeyPath();
  v45 = v8;
  v46 = &v8[*(v74 + 44)];
  *v46 = v44;
  v46[1] = v43;
  type metadata accessor for PhoneCacheInfoViewModel();
  v47 = swift_dynamicCastClass();
  if (v47 && (v48 = v47 + OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache, swift_beginAccess(), *(v48 + 24)))
  {
    v49 = sub_264785274();
    v50 = sub_264785214();

    v51 = swift_getKeyPath();
    v74 = v49;

    v71 = v51;

    v72 = v50;
  }

  else
  {

    v74 = 0;
    v71 = 0;
    v72 = 0;
  }

  v73 = v29;
  v52 = v82;
  sub_26460CCE8(v29, v82, &qword_27FF76570, &qword_26478A648);
  v53 = v83;
  sub_26460CCE8(v81, v83, &qword_27FF76568, &qword_26478A640);
  v70 = v14;
  v54 = v84;
  sub_26460CCE8(v14, v84, &qword_27FF76560, &qword_26478A638);
  v69 = v45;
  v55 = v76;
  sub_26460CCE8(v45, v76, &qword_27FF76558, &qword_26478A630);
  v56 = v75;
  v57 = v78;
  v58 = v80;
  *v75 = v77;
  v56[1] = v58;
  v56[2] = v57;
  *(v56 + 24) = v79;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76580, &qword_26478A688);
  sub_26460CCE8(v52, v56 + v59[12], &qword_27FF76570, &qword_26478A648);
  v60 = v56 + v59[16];
  *v60 = 0;
  v60[8] = 1;
  sub_26460CCE8(v53, v56 + v59[20], &qword_27FF76568, &qword_26478A640);
  sub_26460CCE8(v54, v56 + v59[24], &qword_27FF76560, &qword_26478A638);
  sub_26460CCE8(v55, v56 + v59[28], &qword_27FF76558, &qword_26478A630);
  v61 = (v56 + v59[32]);
  v62 = v77;
  v63 = v57;
  LOBYTE(v57) = v79;
  sub_26466D29C(v77, v58, v63, v79);
  v64 = v74;
  v65 = v71;
  v66 = v72;
  sub_26466D2FC(v74);
  sub_26466D34C(v64, v65, v66);
  *v61 = v64;
  v61[1] = v65;
  v61[2] = v66;
  sub_26460CD50(v69, &qword_27FF76558, &qword_26478A630);
  sub_26460CD50(v70, &qword_27FF76560, &qword_26478A638);
  sub_26460CD50(v81, &qword_27FF76568, &qword_26478A640);
  sub_26460CD50(v73, &qword_27FF76570, &qword_26478A648);
  sub_26466D34C(v64, v65, v66);
  sub_26460CD50(v55, &qword_27FF76558, &qword_26478A630);
  sub_26460CD50(v84, &qword_27FF76560, &qword_26478A638);
  sub_26460CD50(v83, &qword_27FF76568, &qword_26478A640);
  sub_26460CD50(v82, &qword_27FF76570, &qword_26478A648);
  return sub_26466D398(v62, v80, v78, v57);
}

uint64_t sub_26466C648@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PhoneCacheInfoViewModel();
  if (swift_dynamicCastClass() || (type metadata accessor for WatchCacheInfoViewModel(), (result = swift_dynamicCastClass()) != 0))
  {
    sub_264785274();
    sub_264784D44();
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765B0, &unk_2647908C0);
    sub_26466D5C8();
    result = sub_264784874();
    v3 = v6;
    v4 = v7;
    v5 = v8;
  }

  else
  {
    v4 = 0;
    v3 = 0uLL;
    v5 = -1;
  }

  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_26466C788@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v69 = a2;
  v70 = a1;
  v78 = a3;
  v76 = sub_264784AE4();
  v72 = *(v76 - 8);
  v5 = MEMORY[0x28223BE20](v76);
  v71 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v68 - v7;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76588, &qword_26478A690);
  v75 = *(v77 - 8);
  v9 = MEMORY[0x28223BE20](v77);
  v81 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v82 = &v68 - v11;
  v85 = a1;
  v86 = a2;
  v83 = sub_26466BB48();
  v84 = v12;
  v68 = sub_264613FC4();
  v13 = sub_264784E44();
  v15 = v14;
  v17 = v16;
  sub_264784CC4();
  v18 = sub_264784E24();
  v20 = v19;
  v22 = v21;

  sub_26460ECC4(v13, v15, v17 & 1);

  sub_264785204();
  v23 = sub_264784DE4();
  v79 = v24;
  v80 = v23;
  v73 = v25;
  v74 = v26;

  sub_26460ECC4(v18, v20, v22 & 1);

  sub_264784AD4();
  v27 = swift_allocObject();
  v28 = v71;
  v29 = v69;
  *(v27 + 16) = v70;
  *(v27 + 24) = v29;
  v30 = v72;
  v31 = v76;
  (*(v72 + 16))(v28, v8, v76);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_26466D42C;
  *(v32 + 24) = v27;
  v33 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76590, &qword_26478A698);
  sub_26466D474(&qword_27FF76598, MEMORY[0x277CE0818], MEMORY[0x277CE0810]);
  sub_26466D4BC();
  sub_264784024();
  (*(v30 + 8))(v8, v31);
  v34 = v33;
  v35 = sub_264725AE0();
  v37 = v36;

  if (v37)
  {
    v85 = v35;
    v86 = v37;
    v38 = sub_264784E44();
    v40 = v39;
    v42 = v41;
    sub_264784D74();
    v43 = sub_264784E24();
    v45 = v44;
    v47 = v46;

    sub_26460ECC4(v38, v40, v42 & 1);

    sub_264785214();
    v76 = sub_264784DE4();
    v71 = v49;
    v72 = v48;
    v51 = v50;

    sub_26460ECC4(v43, v45, v47 & 1);

    v37 = (v51 & 1);
  }

  else
  {
    v76 = 0;
    v71 = 0;
    v72 = 0;
  }

  v52 = v75;
  v53 = *(v75 + 16);
  v54 = v81;
  v55 = v77;
  v53(v81, v82, v77);
  v57 = v78;
  v56 = v79;
  v58 = v80;
  *v78 = v80;
  v57[1] = v56;
  v73 &= 1u;
  *(v57 + 16) = v73;
  v57[3] = v74;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765A8, &qword_26478A6A0);
  v53(v57 + *(v59 + 48), v54, v55);
  v60 = (v57 + *(v59 + 64));
  v61 = v76;
  v63 = v71;
  v62 = v72;
  *v60 = v76;
  v60[1] = v62;
  v60[2] = v37;
  v60[3] = v63;
  v64 = v58;
  v65 = v79;
  LOBYTE(v58) = v73;
  sub_26460C474(v64, v79, v73);

  sub_26466D538(v61, v62, v37, v63);
  v66 = *(v52 + 8);
  v66(v82, v55);
  sub_26466D57C(v61, v62, v37, v63);
  v66(v81, v55);
  sub_26460ECC4(v80, v65, v58);
}

void sub_26466CD44(void *a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = sub_264783B94();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264785704();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2647856E4();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_264783AF4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhoneCacheInfoViewModel();
  v13 = swift_dynamicCastClass();
  if (v13 && (v14 = v13 + OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache, swift_beginAccess(), (v15 = *(v14 + 24)) != 0))
  {
    v40 = a1;
    v16 = [v15 date];
    sub_264783AC4();

    v17 = sub_264783A64();
    v18 = [v17 preciseFormattedTime];

    sub_264785724();
    v39 = v6;

    (*(v10 + 8))(v12, v9);
    sub_2647856D4();
    sub_2647856C4();
    sub_2647856B4();

    sub_2647856C4();
    sub_2647856F4();
    sub_26460EC78();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    v41 = sub_264785754();
    v42 = v21;
    sub_264613FC4();
    v22 = sub_264784E44();
    v24 = v23;
    v26 = v25;
    sub_264784D74();
    v27 = sub_264784E24();
    v29 = v28;
    LOBYTE(v18) = v30;

    sub_26460ECC4(v22, v24, v26 & 1);

    sub_264785214();
    v31 = sub_264784DE4();
    v33 = v32;
    v35 = v34;
    v37 = v36;

    sub_26460ECC4(v27, v29, v18 & 1);

    v38 = v35 & 1;
  }

  else
  {
    v31 = 0;
    v33 = 0;
    v38 = 0;
    v37 = 0;
  }

  *a2 = v31;
  a2[1] = v33;
  a2[2] = v38;
  a2[3] = v37;
}

uint64_t sub_26466D158@<X0>(uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  *a2 = sub_2647845C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76540, &qword_26478A590);
  return sub_26466BF94(v5, v4, (a2 + *(v6 + 44)));
}

uint64_t sub_26466D1BC(uint64_t a1, int a2)
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

uint64_t sub_26466D204(uint64_t result, int a2, int a3)
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

uint64_t sub_26466D29C(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_26466D2B4();
  }

  return v4;
}

uint64_t sub_26466D2B4()
{
}

uint64_t sub_26466D2FC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26466D34C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26466D398(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_26466D3B0(result, a2, a3);
  }

  return result;
}

uint64_t sub_26466D3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
}

uint64_t sub_26466D3F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26466D434()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26466D474(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26466D4BC()
{
  result = qword_27FF765A0;
  if (!qword_27FF765A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76590, &qword_26478A698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF765A0);
  }

  return result;
}

uint64_t sub_26466D538(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26460C474(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_26466D57C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26460ECC4(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_26466D5C8()
{
  result = qword_27FF765B8;
  if (!qword_27FF765B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF765B0, &unk_2647908C0);
    sub_26460CDF0(&qword_27FF765C0, &qword_27FF765C8, &qword_26478A6E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF765B8);
  }

  return result;
}

uint64_t SafetyCacheViewModel.sessionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_sessionID;
  v4 = sub_264783B64();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_26466D6F8()
{
  v1 = v0;
  v2 = sub_264785594();
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x28223BE20](v2);
  v51 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_2647855C4();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264783E24();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - v10;
  v61 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_userType;
  if (v0[OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_userType])
  {
    sub_264783DE4();
  }

  else
  {
    sub_264783DF4();
  }

  v12 = v0;
  v13 = sub_264783E14();
  v14 = sub_2647859F4();

  v15 = os_log_type_enabled(v13, v14);
  v55 = v12;
  if (v15)
  {
    LODWORD(v60) = v14;
    v57 = v6;
    v59 = v9;
    v16 = swift_slowAlloc();
    *&v56 = swift_slowAlloc();
    v71 = v56;
    *v16 = 136315395;
    *(v16 + 4) = sub_2646DF234(0x6143797465666173, 0xEB00000000656863, &v71);
    *(v16 + 12) = 2085;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&aBlock);

    if (v79)
    {
      v69[2] = v80;
      v69[3] = v81;
      v69[4] = v82;
      v69[5] = v83;
      v64 = v80;
      v65 = v81;
      v66 = v82;
      v67 = v83;
      v69[0] = aBlock;
      v69[1] = v79;
      v62 = aBlock;
      v63 = v79;
      v70[0] = aBlock;
      v70[1] = v79;
      v70[4] = v82;
      v70[5] = v83;
      v70[2] = v80;
      v70[3] = v81;
      v72 = aBlock;
      v73 = v79;
      v76 = v82;
      v77 = v83;
      v74 = v80;
      v75 = v81;
      sub_26467A834(&v72, &v68);
      sub_26460CD50(v70, &qword_27FF756F8, &qword_264787DF0);
      v17 = SafetyCache.description.getter();
      v19 = v18;
      sub_26460CD50(v69, &qword_27FF756F8, &qword_264787DF0);
    }

    else
    {
      v74 = v80;
      v75 = v81;
      v76 = v82;
      v77 = v83;
      v72 = aBlock;
      v73 = v79;
      sub_26460CD50(&v72, &qword_27FF756F8, &qword_264787DF0);
      v17 = 0;
      v19 = 0xE000000000000000;
    }

    v20 = sub_2646DF234(v17, v19, &v71);

    *(v16 + 14) = v20;
    _os_log_impl(&dword_264605000, v13, v60, "%s: safety cache has been updated to %{sensitive}s", v16, 0x16u);
    v21 = v56;
    swift_arrayDestroy();
    MEMORY[0x266740650](v21, -1, -1);
    MEMORY[0x266740650](v16, -1, -1);

    v6 = v57;
    v60 = *(v57 + 8);
    v60(v11, v5);
    v12 = v55;
    v9 = v59;
  }

  else
  {

    v60 = *(v6 + 8);
    v60(v11, v5);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&aBlock);

  v22 = v79;
  if (v79)
  {
    v74 = v80;
    v75 = v81;
    v76 = v82;
    v77 = v83;
    v72 = aBlock;
    v73 = v79;

    sub_26460CD50(&v72, &qword_27FF756F8, &qword_264787DF0);
    sub_26466E030(v22, v70);
    sub_26466E0FC();
    if (v24)
    {
      v26 = v23;
      v27 = v24;
      *&v25 = 136315651;
      v56 = v25;
      v58 = v5;
      v59 = v9;
      v57 = v6 + 8;
      do
      {
        if (v1[v61])
        {
          sub_264783DE4();
        }

        else
        {
          sub_264783DF4();
        }

        v30 = v27;
        v31 = sub_264783E14();
        v32 = sub_2647859F4();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = v1;
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          *&v69[0] = v36;
          *v33 = v56;
          *(v33 + 4) = sub_2646DF234(0x6143797465666173, 0xEB00000000656863, v69);
          *(v33 + 12) = 2048;
          *(v33 + 14) = v26;
          *(v33 + 22) = 2117;
          *(v33 + 24) = v30;
          *v35 = v27;
          v37 = v30;
          _os_log_impl(&dword_264605000, v31, v32, "%s: location %ld, %{sensitive}@", v33, 0x20u);
          sub_26460CD50(v35, &qword_27FF779D0, &qword_26478A9A0);
          v38 = v35;
          v1 = v34;
          v5 = v58;
          MEMORY[0x266740650](v38, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v36);
          MEMORY[0x266740650](v36, -1, -1);
          v39 = v33;
          v9 = v59;
          MEMORY[0x266740650](v39, -1, -1);
        }

        else
        {
        }

        v60(v9, v5);
        sub_26466E0FC();
        v26 = v28;
        v27 = v29;
      }

      while (v29);
    }

    sub_26467A824(*&v70[0]);
    v12 = v55;
  }

  else
  {
    v74 = v80;
    v75 = v81;
    v76 = v82;
    v77 = v83;
    v72 = aBlock;
    v73 = v79;
    sub_26460CD50(&v72, &qword_27FF756F8, &qword_264787DF0);
  }

  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v40 = sub_264785A44();
  v41 = swift_allocObject();
  *(v41 + 16) = v12;
  *&v80 = sub_26467A82C;
  *(&v80 + 1) = v41;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v79 = sub_264659F60;
  *(&v79 + 1) = &block_descriptor_227;
  v42 = _Block_copy(&aBlock);
  v43 = v12;

  v44 = v49;
  sub_2647855B4();
  *&aBlock = MEMORY[0x277D84F90];
  sub_26467A240(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26466841C();
  v45 = v51;
  v46 = v54;
  sub_264785BD4();
  MEMORY[0x26673F780](0, v44, v45, v42);
  _Block_release(v42);

  (*(v53 + 8))(v45, v46);
  return (*(v50 + 8))(v44, v52);
}

uint64_t sub_26466E030@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    sub_264785C04();
    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    sub_26467A890();
    sub_264785984();
    result = v10;
    v3 = v11;
    v5 = v12;
    v4 = v13;
    v6 = v14;
  }

  else
  {
    v4 = 0;
    v7 = -1;
    v8 = -1 << *(result + 32);
    v3 = result + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v7 = ~(-1 << v9);
    }

    v6 = v7 & *(result + 56);
  }

  *a2 = result;
  a2[1] = v3;
  a2[2] = v5;
  a2[3] = v4;
  a2[4] = v6;
  a2[5] = 0;
  return result;
}

void sub_26466E0FC()
{
  if ((*v0 & 0x8000000000000000) != 0)
  {
    if (sub_264785C44())
    {
      sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
      swift_dynamicCast();
      if (v11)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v1 = v0[3];
    v2 = v0[4];
    if (!v2)
    {
      v4 = (v0[2] + 64) >> 6;
      if (v4 <= v1 + 1)
      {
        v5 = v1 + 1;
      }

      else
      {
        v5 = (v0[2] + 64) >> 6;
      }

      v6 = v5 - 1;
      while (1)
      {
        v3 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v3 >= v4)
        {
          v8 = 0;
          v7 = 0;
          goto LABEL_15;
        }

        v2 = *(v0[1] + 8 * v3);
        ++v1;
        if (v2)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v3 = v0[3];
LABEL_14:
    v7 = (v2 - 1) & v2;
    v8 = *(*(*v0 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v2)))));
    v9 = v8;
    v6 = v3;
LABEL_15:
    v0[3] = v6;
    v0[4] = v7;
    if (v8)
    {
LABEL_16:
      v10 = v0[5];
      if (!__OFADD__(v10, 1))
      {
        v0[5] = v10 + 1;
        return;
      }

      goto LABEL_21;
    }
  }
}

uint64_t sub_26466E238()
{
  type metadata accessor for SafetyCacheViewModel(0);
  sub_26467A240(&qword_27FF756E8, type metadata accessor for SafetyCacheViewModel, &protocol conformance descriptor for SafetyCacheViewModel);
  sub_264783E64();
  sub_264783E74();
}

uint64_t sub_26466E2C0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(a1);
}

void (*sub_26466E390(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(a1 + 1);

  *a1 = a1[1];
  return sub_26466E424;
}

uint64_t (*sub_26466E460(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765E0, &qword_26478A750);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel__phoneCache;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765D8, &qword_26478A748);
  sub_264783EA4();
  swift_endAccess();
  return sub_2646263E8;
}

uint64_t sub_26466E5F8(void **a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v6;
  v7;
  sub_264783EE4();
  return sub_26466E674();
}

uint64_t sub_26466E674()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v4);

  v1 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v4);

  SafetyCache.init(phoneCache:watchCache:)(v1, v4, &v4);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v0;
  sub_264783EE4();
  return sub_26466D6F8();
}

void sub_26466E7C4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  v6 = v3;
  sub_264783EE4();
  sub_26466E674();
}

void (*sub_26466E840(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(a1 + 1);

  *a1 = a1[1];
  return sub_26466E8D4;
}

void sub_26466E8E8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 8) = v6;
  v7 = *(a1 + 16);
  v10 = v6;
  v7;
  if (a2)
  {
    v8 = v10;
    sub_264783EE4();
    sub_26466E674();

    v9 = *a1;
  }

  else
  {
    sub_264783EE4();
    sub_26466E674();
    v9 = v10;
  }
}

uint64_t sub_26466E9D0(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765E0, &qword_26478A750);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  v13 = *(v7 + 16);
  v13(&v15 - v11, a1, v6);
  v13(v10, v12, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765D8, &qword_26478A748);
  sub_264783EB4();
  swift_endAccess();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_26466EB84(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765E0, &qword_26478A750);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v7 - v5, a1, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765D8, &qword_26478A748);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*sub_26466ECBC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765E0, &qword_26478A750);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel__watchCache;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765D8, &qword_26478A748);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_26466EE84(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_264622F4C;
}

uint64_t sub_26466EF28(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765F8, &qword_26478A7E8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756A0, &qword_264787DA0);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_26466F0C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765F8, &qword_26478A7E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756A0, &qword_264787DA0);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26466F200(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765F8, &qword_26478A7E8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel__cacheExpiryDate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756A0, &qword_264787DA0);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_26466F384@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(a4);
}

uint64_t sub_26466F410(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  sub_26460CCE8(a1, &v17 - v12, &qword_27FF756B8, &qword_26478AC90);
  v14 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26460CCE8(v13, v11, &qword_27FF756B8, &qword_26478AC90);
  v15 = v14;
  sub_264783EE4();
  return sub_26460CD50(v13, &qword_27FF756B8, &qword_26478AC90);
}

uint64_t sub_26466F56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26460CCE8(a1, v7, &qword_27FF756B8, &qword_26478AC90);
  v8 = v3;
  sub_264783EE4();
  return sub_26460CD50(a1, &qword_27FF756B8, &qword_26478AC90);
}

uint64_t (*sub_26466F658(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_26466F6FC(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765F8, &qword_26478A7E8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756A0, &qword_264787DA0);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_26466F89C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765F8, &qword_26478A7E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756A0, &qword_264787DA0);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26466F9D4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765F8, &qword_26478A7E8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel__cacheReleaseDate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756A0, &qword_264787DA0);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

void sub_26466FB44(void *a1)
{
  v2 = v1;
  v4 = sub_264785594();
  v5 = *(v4 - 8);
  v68 = v4;
  v69 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_2647855C4();
  v8 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2647855A4();
  v64 = *(v11 - 8);
  v65 = v11;
  MEMORY[0x28223BE20](v11);
  v63 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_264783E24();
  v66 = *(v13 - 8);
  v67 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v60 - v17;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&aBlock);

  v19 = aBlock;
  if (aBlock)
  {
    if (a1)
    {
      sub_264659B70(0, &qword_27FF76678, 0x277D4AB58);
      v20 = v2;
      v21 = v10;
      v22 = v8;
      v23 = v7;
      v24 = a1;
      v25 = sub_264785AE4();

      v7 = v23;
      v8 = v22;
      v10 = v21;
      v2 = v20;

      if (v25)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  v26 = "SMDirectionsTransportType";
  if (sub_264675E44())
  {
    if (v2[OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_userType])
    {
      sub_264783DE4();
    }

    else
    {
      sub_264783DF4();
    }

    v60 = v2;
    v27 = v2;
    v28 = sub_264783E14();
    v29 = sub_2647859D4();
    v30 = v27;

    if (os_log_type_enabled(v28, v29))
    {
      v31 = swift_slowAlloc();
      v62 = v7;
      v32 = v31;
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      swift_getKeyPath();
      v61 = v10;
      swift_getKeyPath();
      sub_264783ED4(&aBlock);
      v10 = v61;

      v34 = aBlock;
      *(v32 + 4) = aBlock;
      *v33 = v34;
      _os_log_impl(&dword_264605000, v28, v29, "#SafetyCacheViewModel, updating safety cache because session state is updated to %@", v32, 0xCu);
      sub_26460CD50(v33, &qword_27FF779D0, &qword_26478A9A0);
      v35 = v33;
      v26 = "SMDirectionsTransportType";
      MEMORY[0x266740650](v35, -1, -1);
      v36 = v32;
      v7 = v62;
      MEMORY[0x266740650](v36, -1, -1);
    }

    (*(v66 + 8))(v18, v67);
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v38 = v63;
    v37 = v64;
    v39 = v65;
    (*(v64 + 104))(v63, *MEMORY[0x277D851A8], v65);
    v40 = sub_264785A64();
    (*(v37 + 8))(v38, v39);
    v41 = swift_allocObject();
    *(v41 + 16) = v30;
    v76 = sub_26467A814;
    v77 = v41;
    aBlock = MEMORY[0x277D85DD0];
    v73 = *(v26 + 297);
    v74 = sub_264659F60;
    v75 = &block_descriptor_210_0;
    v42 = _Block_copy(&aBlock);
    v43 = v30;
    sub_2647855B4();
    v71 = MEMORY[0x277D84F90];
    sub_26467A240(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    sub_26466841C();
    v44 = v68;
    sub_264785BD4();
    MEMORY[0x26673F780](0, v10, v7, v42);
    _Block_release(v42);

    (*(v69 + 8))(v7, v44);
    (*(v8 + 8))(v10, v70);

    v2 = v60;
  }

  else
  {
    if (v2[OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_userType])
    {
      sub_264783DE4();
    }

    else
    {
      sub_264783DF4();
    }

    v45 = v2;
    v46 = sub_264783E14();
    v47 = sub_2647859D4();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v61 = v10;
      v49 = v48;
      v50 = swift_slowAlloc();
      v62 = v7;
      v51 = v50;
      *v49 = 138412290;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&aBlock);
      v26 = "SMDirectionsTransportType";

      v52 = aBlock;
      *(v49 + 4) = aBlock;
      *v51 = v52;
      _os_log_impl(&dword_264605000, v46, v47, "#SafetyCacheViewModel, not updating safety cache because session state is updated to %@", v49, 0xCu);
      sub_26460CD50(v51, &qword_27FF779D0, &qword_26478A9A0);
      v53 = v51;
      v7 = v62;
      MEMORY[0x266740650](v53, -1, -1);
      v54 = v49;
      v10 = v61;
      MEMORY[0x266740650](v54, -1, -1);
    }

    (*(v66 + 8))(v16, v67);
  }

  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v55 = sub_264785A44();
  v56 = swift_allocObject();
  *(v56 + 16) = v2;
  v76 = sub_26467A80C;
  v77 = v56;
  aBlock = MEMORY[0x277D85DD0];
  v73 = *(v26 + 297);
  v74 = sub_264659F60;
  v75 = &block_descriptor_204;
  v57 = _Block_copy(&aBlock);
  v58 = v2;

  sub_2647855B4();
  aBlock = MEMORY[0x277D84F90];
  sub_26467A240(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26466841C();
  v59 = v68;
  sub_264785BD4();
  MEMORY[0x26673F780](0, v10, v7, v57);
  _Block_release(v57);

  (*(v69 + 8))(v7, v59);
  (*(v8 + 8))(v10, v70);
}

void sub_26467049C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_manager);
  v2 = sub_264783B14();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = sub_26467A978;
  v5[5] = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_26467762C;
  v5[3] = &block_descriptor_215;
  v4 = _Block_copy(v5);

  [v1 fetchReceiverSafetyCacheForSessionID:v2 completion:v4];
  _Block_release(v4);

  sub_264674AA0();
}

uint64_t sub_2646705A8(uint64_t a1)
{
  type metadata accessor for SafetyCacheViewModel(0);
  sub_26467A240(&qword_27FF756E8, type metadata accessor for SafetyCacheViewModel, &protocol conformance descriptor for SafetyCacheViewModel);
  sub_264783E64();
  sub_264783E74();

  v3 = *(a1 + OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_containerVCHandler);
  if (v3)
  {
    return v3(result);
  }

  return result;
}

void sub_264670664(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v6);

  v3 = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1;
  v4 = a1;
  v5 = v1;
  sub_264783EE4();
  sub_26466FB44(v3);
}

void (*sub_26467073C(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(a1 + 1);

  *a1 = a1[1];
  return sub_2646707D0;
}

void sub_2646707D0(uint64_t a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = *(a1 + 16);
  if (a2)
  {
    v6 = v4;
    sub_264783ED4((a1 + 8));

    v7 = *(a1 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    *(a1 + 8) = v4;
    v8 = v5;
    v9 = v6;
    sub_264783EE4();
    sub_26466FB44(v7);

    v10 = *a1;
  }

  else
  {
    sub_264783ED4((a1 + 8));

    v13 = *(a1 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    *(a1 + 8) = v4;
    v11 = v4;
    v12 = v5;
    sub_264783EE4();
    sub_26466FB44(v13);

    v10 = v13;
  }
}

uint64_t sub_264670964(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76618, &unk_26478A888);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76610, &qword_26478A880);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_264670B04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76618, &unk_26478A888);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76610, &qword_26478A880);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_264670C3C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76618, &unk_26478A888);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel__receiverSessionStatus;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76610, &qword_26478A880);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

char *SafetyCacheViewModel.__allocating_init(sessionID:userType:containerVCHandler:)(char *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_2646789E0(a1, a2, a3, a4);
  sub_26460C9A0(a3, a4);
  return v10;
}

char *SafetyCacheViewModel.init(sessionID:userType:containerVCHandler:)(char *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2646789E0(a1, a2, a3, a4);
  sub_26460C9A0(a3, a4);
  return v6;
}

id SafetyCacheViewModel.__deallocating_deinit()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v28 - v2;
  v4 = sub_264783B64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_264783E24();
  v8 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_userType;
  if (v0[OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_userType])
  {
    sub_264783DE4();
  }

  else
  {
    sub_264783DF4();
  }

  v11 = v0;
  v32 = v0;
  v12 = v11;
  v13 = sub_264783E14();
  v14 = sub_2647859F4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35 = v29;
    *v15 = 136315394;
    (*(v5 + 16))(v7, v12 + OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_sessionID, v4);
    sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v30 = v12;
    v16 = sub_264785E44();
    v31 = v3;
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_2646DF234(v16, v18, &v35);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    if (v32[v33])
    {
      v20 = 0x7265766965636552;
    }

    else
    {
      v20 = 0x6F74616974696E49;
    }

    if (v32[v33])
    {
      v21 = 0xE800000000000000;
    }

    else
    {
      v21 = 0xE900000000000072;
    }

    v22 = sub_2646DF234(v20, v21, &v35);
    v12 = v30;

    *(v15 + 14) = v22;
    v3 = v31;
    _os_log_impl(&dword_264605000, v13, v14, "#SafetyCacheViewModel, sessionID: %s, deinitializing safetyCacheViewModel, userType: %s", v15, 0x16u);
    v23 = v29;
    swift_arrayDestroy();
    MEMORY[0x266740650](v23, -1, -1);
    MEMORY[0x266740650](v15, -1, -1);
  }

  (*(v8 + 8))(v10, v34);
  v24 = sub_2647858E4();
  (*(*(v24 - 8) + 56))(v3, 1, 1, v24);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  sub_264635430(0, 0, v3, &unk_26478A8A0, v25);

  v26 = type metadata accessor for SafetyCacheViewModel(0);
  v36.receiver = v12;
  v36.super_class = v26;
  return objc_msgSendSuper2(&v36, sel_dealloc);
}

void sub_2646714E4()
{
  if (qword_27FF74FC0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v9);

  v0 = v9;
  if (v9)
  {
    v1 = [v9 isActiveState];

    if (v1)
    {
      v2 = [objc_opt_self() defaultManager];
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = sub_26467A468;
      v14 = v3;
      v9 = MEMORY[0x277D85DD0];
      v10 = 1107296256;
      v11 = sub_26467A99C;
      v12 = &block_descriptor_122;
      v4 = _Block_copy(&v9);

      [v2 startMonitoringInitiatorSafetyCacheWithHandler_];
      _Block_release(v4);
    }
  }

  v5 = [objc_opt_self() defaultManager];
  v6 = sub_264783B14();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = sub_26467A420;
  v14 = v7;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_26467A99C;
  v12 = &block_descriptor_118;
  v8 = _Block_copy(&v9);

  [v5 fetchInitiatorSafetyCacheForSessionID:v6 completion:v8];
  _Block_release(v8);
}

uint64_t sub_26467177C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &aBlock - v14;
  v16 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
  if (a1)
  {
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v17 = sub_264785A44();
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a1;
    v34 = sub_26467AA2C;
    v35 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_26465A0B4;
    v33 = &block_descriptor_140;
    v19 = _Block_copy(&aBlock);
    v20 = a2;
    v21 = a1;
    v16 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;

    [v21 shiftLocationsOnQueue:v17 handler:v19];
    _Block_release(v19);
  }

  if (a3)
  {
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v22 = sub_264785A44();
    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    v34 = sub_26467AA28;
    v35 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_26465A0B4;
    v33 = &block_descriptor_134;
    v24 = _Block_copy(&aBlock);
    v25 = a2;
    v26 = a3;

    [v26 v16[239]];
    _Block_release(v24);
  }

  sub_26460CCE8(a4, v15, &qword_27FF756B8, &qword_26478AC90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26460CCE8(v15, v13, &qword_27FF756B8, &qword_26478AC90);
  v27 = a2;
  sub_264783EE4();
  sub_26460CD50(v15, &qword_27FF756B8, &qword_26478AC90);
  sub_26460CCE8(a5, v15, &qword_27FF756B8, &qword_26478AC90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26460CCE8(v15, v13, &qword_27FF756B8, &qword_26478AC90);
  v28 = v27;
  sub_264783EE4();
  return sub_26460CD50(v15, &qword_27FF756B8, &qword_26478AC90);
}

uint64_t sub_264671AF8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a3;
  v8 = a2;
  sub_264783EE4();
  return sub_26466E674();
}

void *sub_264671B70(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v116 = a8;
  v122 = a6;
  v115 = a5;
  v123 = a4;
  v124 = a2;
  v125 = a3;
  v111 = a1;
  v10 = sub_264785594();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v119 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2647855C4();
  v118 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v117 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v112 = *(v15 - 8);
  v16 = *(v112 + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v114 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v113 = &v98 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v109 = &v98 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v98 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v98 - v28;
  v30 = sub_264783E24();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v121 = &v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v34 = result;
    v120 = v23;
    v102 = v31;
    v103 = v30;
    v35 = *(result + OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_userType);
    v108 = v10;
    v107 = v11;
    v101 = v16;
    v36 = v121;
    if (v35)
    {
      sub_264783DE4();
    }

    else
    {
      sub_264783DF4();
    }

    v106 = v13;
    v105 = a10;
    v104 = a9;
    sub_26460CCE8(v111, v29, &qword_27FF75CE8, &unk_264788B70);
    v37 = v120;
    sub_26460CCE8(v123, v120, &qword_27FF756B8, &qword_26478AC90);
    v38 = v124;
    v39 = v125;
    v40 = v122;
    v41 = v122;
    v42 = sub_264783E14();
    v43 = sub_2647859F4();
    v110 = v39;

    v111 = v38;
    v100 = v43;
    if (os_log_type_enabled(v42, v43))
    {
      v98 = v42;
      v99 = v34;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      aBlock[0] = v46;
      *v44 = 136316163;
      sub_26460CCE8(v29, v27, &qword_27FF75CE8, &unk_264788B70);
      v47 = sub_264783B64();
      v48 = *(v47 - 8);
      v49 = (*(v48 + 48))(v27, 1, v47);
      v50 = v101;
      if (v49 == 1)
      {
        sub_26460CD50(v27, &qword_27FF75CE8, &unk_264788B70);
        v51 = 0xE300000000000000;
        v52 = 7104878;
      }

      else
      {
        v52 = sub_264783B04();
        v51 = v55;
        (*(v48 + 8))(v27, v47);
      }

      sub_26460CD50(v29, &qword_27FF75CE8, &unk_264788B70);
      v56 = sub_2646DF234(v52, v51, aBlock);

      *(v44 + 4) = v56;
      *(v44 + 12) = 2117;
      v57 = v111;
      *(v44 + 14) = v111;
      *(v44 + 22) = 2117;
      v58 = v110;
      *(v44 + 24) = v110;
      v59 = v125;
      *v45 = v124;
      v45[1] = v59;
      *(v44 + 32) = 2080;
      v60 = v109;
      sub_26460CCE8(v120, v109, &qword_27FF756B8, &qword_26478AC90);
      v61 = sub_264783AF4();
      v62 = *(v61 - 8);
      v63 = (*(v62 + 48))(v60, 1, v61);
      v64 = v57;
      v65 = v58;
      v66 = v122;
      if (v63 == 1)
      {
        sub_26460CD50(v60, &qword_27FF756B8, &qword_26478AC90);
        v67 = 0xE300000000000000;
        v68 = 7104878;
      }

      else
      {
        v69 = sub_264783A64();
        v70 = v50;
        v71 = v45;
        v72 = v46;
        v73 = v60;
        v74 = [v69 absoluteTimeString:0 preposition:0 capitalized:0];

        v68 = sub_264785724();
        v67 = v75;

        v76 = v73;
        v46 = v72;
        v45 = v71;
        v50 = v70;
        v66 = v122;
        (*(v62 + 8))(v76, v61);
      }

      v54 = v108;
      v53 = v107;
      sub_26460CD50(v120, &qword_27FF756B8, &qword_26478AC90);
      v77 = sub_2646DF234(v68, v67, aBlock);

      *(v44 + 34) = v77;
      *(v44 + 42) = 2080;
      if (v66)
      {
        swift_getErrorValue();
        v78 = sub_264785EF4();
        v80 = v79;
        v81 = v121;
      }

      else
      {
        v80 = 0xE300000000000000;
        v81 = v121;
        v78 = 7104878;
      }

      v82 = sub_2646DF234(v78, v80, aBlock);

      *(v44 + 44) = v82;
      v83 = v98;
      _os_log_impl(&dword_264605000, v98, v100, "#SafetyCacheViewModel,uuid %s,phoneCache %{sensitive}@,watchCache %{sensitive}@,cacheExpiryDate %s,error %s", v44, 0x34u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF779D0, &qword_26478A9A0);
      swift_arrayDestroy();
      MEMORY[0x266740650](v45, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266740650](v46, -1, -1);
      MEMORY[0x266740650](v44, -1, -1);

      (*(v102 + 8))(v81, v103);
      v34 = v99;
    }

    else
    {

      sub_26460CD50(v37, &qword_27FF756B8, &qword_26478AC90);
      sub_26460CD50(v29, &qword_27FF75CE8, &unk_264788B70);
      (*(v102 + 8))(v36, v103);
      v53 = v107;
      v54 = v108;
      v50 = v101;
    }

    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v84 = sub_264785A44();
    v85 = v113;
    sub_26460CCE8(v123, v113, &qword_27FF756B8, &qword_26478AC90);
    v86 = v114;
    sub_26460CCE8(v115, v114, &qword_27FF756B8, &qword_26478AC90);
    v87 = *(v112 + 80);
    v88 = (v87 + 40) & ~v87;
    v89 = (v50 + v87 + v88) & ~v87;
    v90 = swift_allocObject();
    v91 = v125;
    v90[2] = v124;
    v90[3] = v34;
    v90[4] = v91;
    sub_26460CF84(v85, v90 + v88);
    sub_26460CF84(v86, v90 + v89);
    aBlock[4] = v104;
    aBlock[5] = v90;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_264659F60;
    aBlock[3] = v105;
    v92 = _Block_copy(aBlock);
    v93 = v111;
    v94 = v110;
    v95 = v34;

    v96 = v117;
    sub_2647855B4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_26467A240(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    sub_26466841C();
    v97 = v119;
    sub_264785BD4();
    MEMORY[0x26673F780](0, v96, v97, v92);
    _Block_release(v92);

    (*(v53 + 8))(v97, v54);
    return (*(v118 + 8))(v96, v106);
  }

  return result;
}

uint64_t sub_2646726FC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &aBlock - v14;
  v16 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
  if (a1)
  {
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v17 = sub_264785A44();
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a1;
    v34 = sub_26467AA2C;
    v35 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_26465A0B4;
    v33 = &block_descriptor_158;
    v19 = _Block_copy(&aBlock);
    v20 = a2;
    v21 = a1;
    v16 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;

    [v21 shiftLocationsOnQueue:v17 handler:v19];
    _Block_release(v19);
  }

  if (a3)
  {
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v22 = sub_264785A44();
    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    v34 = sub_26467AA28;
    v35 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_26465A0B4;
    v33 = &block_descriptor_152;
    v24 = _Block_copy(&aBlock);
    v25 = a2;
    v26 = a3;

    [v26 v16[239]];
    _Block_release(v24);
  }

  sub_26460CCE8(a4, v15, &qword_27FF756B8, &qword_26478AC90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26460CCE8(v15, v13, &qword_27FF756B8, &qword_26478AC90);
  v27 = a2;
  sub_264783EE4();
  sub_26460CD50(v15, &qword_27FF756B8, &qword_26478AC90);
  sub_26460CCE8(a5, v15, &qword_27FF756B8, &qword_26478AC90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26460CCE8(v15, v13, &qword_27FF756B8, &qword_26478AC90);
  v28 = v27;
  sub_264783EE4();
  return sub_26460CD50(v15, &qword_27FF756B8, &qword_26478AC90);
}

uint64_t sub_264672A7C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v35 = a4;
  v36 = a7;
  v34 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v33 - v18;
  v33 = *(a1 + 32);
  if (a2)
  {
    sub_264783B44();
    v20 = sub_264783B64();
    (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  }

  else
  {
    v21 = sub_264783B64();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  }

  if (a5)
  {
    sub_264783AC4();
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = sub_264783AF4();
  v24 = *(*(v23 - 8) + 56);
  v25 = 1;
  v24(v16, v22, 1, v23);
  if (a6)
  {
    sub_264783AC4();
    v25 = 0;
  }

  v24(v14, v25, 1, v23);

  v26 = v34;
  v27 = v34;
  v28 = v35;
  v29 = v35;
  v30 = v36;
  v31 = v36;
  v33(v19, v26, v28, v16, v14, v30);

  sub_26460CD50(v14, &qword_27FF756B8, &qword_26478AC90);
  sub_26460CD50(v16, &qword_27FF756B8, &qword_26478AC90);
  return sub_26460CD50(v19, &qword_27FF75CE8, &unk_264788B70);
}

void sub_264672D64()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_manager];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = sub_26467A2E0;
  v14 = v3;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_264673EEC;
  v12 = &block_descriptor_95;
  v4 = _Block_copy(&v9);

  [v2 startMonitoringReceiverSessionStatusWithHandler_];
  _Block_release(v4);
  v5 = sub_264783B14();
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  v13 = sub_26467A998;
  v14 = v6;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_26464CCBC;
  v12 = &block_descriptor_102;
  v7 = _Block_copy(&v9);
  v8 = v1;

  [v2 fetchReceiverSessionStatusForSessionID:v5 completion:v7];
  _Block_release(v7);
}

char *sub_264672F10(char *a1, void *a2, void *a3, uint64_t a4)
{
  v98 = a2;
  v99 = a1;
  v5 = sub_264785594();
  v96 = *(v5 - 8);
  v97 = v5;
  MEMORY[0x28223BE20](v5);
  v94 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_2647855C4();
  v93 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v92 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264783E24();
  v9 = *(v8 - 8);
  v103 = v8;
  v104 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v91 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v91 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v91 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v91 - v22;
  v24 = sub_264783B64();
  v25 = *(v24 - 8);
  v101 = v24;
  v102 = v25;
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v28 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v91 - v30;
  MEMORY[0x28223BE20](v29);
  v100 = &v91 - v32;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v34 = result;
    if (a3)
    {
      v35 = a3;
      sub_264783DE4();
      v36 = a3;
      v37 = sub_264783E14();
      v38 = sub_2647859D4();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        aBlock[0] = v41;
        *v39 = 136315394;
        *(v39 + 4) = sub_2646DF234(0xD00000000000002FLL, 0x8000000264795330, aBlock);
        *(v39 + 12) = 2112;
        v42 = a3;
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 14) = v43;
        *v40 = v43;
        _os_log_impl(&dword_264605000, v37, v38, "%s: error happened in callback of startMonitoringReceiverSessionStatus: error:%@", v39, 0x16u);
        sub_26460CD50(v40, &qword_27FF779D0, &qword_26478A9A0);
        MEMORY[0x266740650](v40, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x266740650](v41, -1, -1);
        MEMORY[0x266740650](v39, -1, -1);
      }

      else
      {
      }

      v50 = *(v104 + 8);
      v51 = v20;
      return v50(v51, v103);
    }

    sub_26460CCE8(v99, v23, &qword_27FF75CE8, &unk_264788B70);
    v45 = v101;
    v44 = v102;
    if ((*(v102 + 48))(v23, 1, v101) == 1)
    {
      sub_26460CD50(v23, &qword_27FF75CE8, &unk_264788B70);
      sub_264783DE4();
      v46 = sub_264783E14();
      v47 = sub_2647859D4();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        aBlock[0] = v49;
        *v48 = 136315138;
        *(v48 + 4) = sub_2646DF234(0xD00000000000002FLL, 0x8000000264795330, aBlock);
        _os_log_impl(&dword_264605000, v46, v47, "%s: missing sessionID in callback of startMonitoringReceiverSessionStatus", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x266740650](v49, -1, -1);
        MEMORY[0x266740650](v48, -1, -1);
      }

      else
      {
      }

      v50 = *(v104 + 8);
      v51 = v12;
      return v50(v51, v103);
    }

    v52 = v100;
    v99 = *(v44 + 32);
    (v99)(v100, v23, v45);
    v53 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_sessionID;
    if (sub_264783B34())
    {
      v54 = v34;
      v55 = v98;
      if (v98)
      {
        sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
        v56 = v55;
        v104 = sub_264785A44();
        v58 = v101;
        v57 = v102;
        (*(v102 + 16))(v31, v100, v101);
        v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
        v60 = swift_allocObject();
        *(v60 + 16) = v54;
        *(v60 + 24) = v56;
        (v99)(v60 + v59, v31, v58);
        aBlock[4] = sub_26467A3B4;
        aBlock[5] = v60;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_264659F60;
        aBlock[3] = &block_descriptor_108;
        v61 = _Block_copy(aBlock);
        v62 = v56;
        v63 = v54;

        v64 = v92;
        sub_2647855B4();
        aBlock[0] = MEMORY[0x277D84F90];
        sub_26467A240(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
        sub_26466841C();
        v65 = v94;
        v66 = v97;
        sub_264785BD4();
        v67 = v104;
        MEMORY[0x26673F780](0, v64, v65, v61);
        _Block_release(v61);

        (*(v96 + 1))(v65, v66);
        (*(v93 + 8))(v64, v95);
        return (*(v57 + 8))(v100, v58);
      }

      else
      {
        sub_264783DE4();
        v87 = sub_264783E14();
        v88 = sub_2647859D4();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          aBlock[0] = v90;
          *v89 = 136315138;
          *(v89 + 4) = sub_2646DF234(0xD00000000000002FLL, 0x8000000264795330, aBlock);
          _os_log_impl(&dword_264605000, v87, v88, "%s: missing receiverSessionStatus in callback of startMonitoringReceiverSessionStatus", v89, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v90);
          MEMORY[0x266740650](v90, -1, -1);
          MEMORY[0x266740650](v89, -1, -1);
        }

        (*(v104 + 8))(v18, v103);
        return (*(v102 + 8))(v100, v101);
      }
    }

    else
    {
      sub_264783DE4();
      v97 = *(v102 + 16);
      v97(v28, v52, v45);
      v68 = v34;
      v69 = sub_264783E14();
      v70 = sub_2647859C4();
      v99 = v68;

      LODWORD(v98) = v70;
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v96 = v15;
        v72 = v71;
        v95 = swift_slowAlloc();
        aBlock[0] = v95;
        *v72 = 136315650;
        *(v72 + 4) = sub_2646DF234(0xD00000000000002FLL, 0x8000000264795330, aBlock);
        *(v72 + 12) = 2080;
        v73 = v101;
        v97(v31, &v34[v53], v101);
        sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v74 = v69;
        v75 = sub_264785E44();
        v77 = v76;
        v78 = *(v102 + 8);
        v78(v31, v73);
        v79 = sub_2646DF234(v75, v77, aBlock);

        *(v72 + 14) = v79;
        *(v72 + 22) = 2080;
        v80 = sub_264785E44();
        v82 = v81;
        v78(v28, v73);
        v83 = sub_2646DF234(v80, v82, aBlock);

        *(v72 + 24) = v83;
        _os_log_impl(&dword_264605000, v74, v98, "%s: #SafetyCacheViewModel,sessionID mismatch,safetyCacheViewModel.sessionID,%s,completion sessionID,%s", v72, 0x20u);
        v84 = v95;
        swift_arrayDestroy();
        MEMORY[0x266740650](v84, -1, -1);
        MEMORY[0x266740650](v72, -1, -1);

        (*(v104 + 8))(v96, v103);
        return (v78)(v100, v73);
      }

      else
      {

        v85 = v101;
        v86 = *(v102 + 8);
        v86(v28, v101);
        (*(v104 + 8))(v15, v103);
        return (v86)(v52, v85);
      }
    }
  }

  return result;
}

uint64_t sub_264673B50(void *a1, void *a2, uint64_t a3)
{
  v23 = a3;
  v5 = sub_264783B64();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264783E24();
  v24 = *(v9 - 8);
  v25 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v26);

  v12 = v26;
  swift_getKeyPath();
  swift_getKeyPath();
  v26 = a2;
  a1;
  v13 = a2;
  sub_264783EE4();
  sub_26466FB44(v12);

  sub_264783DE4();
  (*(v6 + 16))(v8, v23, v5);
  v14 = sub_264783E14();
  v15 = sub_2647859B4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 136315394;
    sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v18 = sub_264785E44();
    v20 = v19;
    (*(v6 + 8))(v8, v5);
    v21 = sub_2646DF234(v18, v20, &v26);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_2646DF234(0xD00000000000002FLL, 0x8000000264795330, &v26);
    _os_log_impl(&dword_264605000, v14, v15, "#SafetyCacheViewModel, sessionID: %s, function: %s, delivering receiver session status successfully", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v17, -1, -1);
    MEMORY[0x266740650](v16, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  return (*(v24 + 8))(v11, v25);
}

uint64_t sub_264673EEC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = *(a1 + 32);
  if (a2)
  {
    sub_264783B44();
    v12 = sub_264783B64();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = sub_264783B64();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  v14 = a3;
  v15 = a4;
  v11(v10, a3, a4);

  return sub_26460CD50(v10, &qword_27FF75CE8, &unk_264788B70);
}

uint64_t sub_264674060()
{
  v1 = sub_264783E24();
  v0[42] = v1;
  v0[43] = *(v1 - 8);
  v0[44] = swift_task_alloc();
  v0[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264674128, 0, 0);
}

uint64_t sub_264674128()
{
  v1 = objc_opt_self();
  v0[46] = v1;
  v2 = [v1 defaultManager];
  v0[47] = v2;
  v0[2] = v0;
  v0[3] = sub_264674268;
  v3 = swift_continuation_init();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D70, &qword_264789350);
  v0[48] = v4;
  v0[25] = v4;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_2646384B4;
  v0[21] = &block_descriptor_195;
  v0[22] = v3;
  [v2 stopMonitoringReceiverSessionStatusWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264674268()
{
  v1 = *(*v0 + 48);
  *(*v0 + 392) = v1;
  if (v1)
  {
    v2 = sub_26467461C;
  }

  else
  {
    v2 = sub_264674378;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264674378()
{
  v1 = *(v0 + 384);
  v2 = [*(v0 + 368) defaultManager];
  *(v0 + 400) = v2;
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_26467449C;
  v3 = swift_continuation_init();
  *(v0 + 264) = v1;
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_2646384B4;
  *(v0 + 232) = &block_descriptor_198;
  *(v0 + 240) = v3;
  [v2 stopMonitoringReceiverSafetyCacheWithCompletion_];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_26467449C()
{
  v1 = *(*v0 + 112);
  *(*v0 + 408) = v1;
  if (v1)
  {
    v2 = sub_2646748B4;
  }

  else
  {
    v2 = sub_2646745AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2646745AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26467461C(uint64_t a1)
{
  v24 = v1;
  v2 = *(v1 + 392);
  v3 = *(v1 + 376);
  swift_willThrow();

  sub_264783DE4();
  v4 = v2;
  v5 = sub_264783E14();
  v6 = sub_2647859D4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 392);
    v22 = *(v1 + 360);
    v9 = *(v1 + 336);
    v8 = *(v1 + 344);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = sub_264785EF4();
    v14 = sub_2646DF234(v12, v13, &v23);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_264605000, v5, v6, "#SafetyCacheViewModel, error while stop monitoring receiver session status, error: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);

    (*(v8 + 8))(v22, v9);
  }

  else
  {
    v15 = *(v1 + 360);
    v16 = *(v1 + 336);
    v17 = *(v1 + 344);

    (*(v17 + 8))(v15, v16);
  }

  v18 = *(v1 + 384);
  v19 = [*(v1 + 368) defaultManager];
  *(v1 + 400) = v19;
  *(v1 + 80) = v1;
  *(v1 + 88) = sub_26467449C;
  v20 = swift_continuation_init();
  *(v1 + 264) = v18;
  *(v1 + 208) = MEMORY[0x277D85DD0];
  *(v1 + 216) = 1107296256;
  *(v1 + 224) = sub_2646384B4;
  *(v1 + 232) = &block_descriptor_198;
  *(v1 + 240) = v20;
  [v19 stopMonitoringReceiverSafetyCacheWithCompletion_];

  return MEMORY[0x282200938](v1 + 80);
}

uint64_t sub_2646748B4(uint64_t a1)
{
  v22 = v1;
  v2 = *(v1 + 400);
  v3 = *(v1 + 408);
  swift_willThrow();

  sub_264783DE4();
  v4 = v3;
  v5 = sub_264783E14();
  v6 = sub_2647859D4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 408);
    v8 = *(v1 + 344);
    v20 = *(v1 + 352);
    v9 = *(v1 + 336);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = sub_264785EF4();
    v14 = sub_2646DF234(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_264605000, v5, v6, "#SafetyCacheViewModel, error while stop monitoring receiver safety cache, error: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);

    (*(v8 + 8))(v20, v9);
  }

  else
  {
    v16 = *(v1 + 344);
    v15 = *(v1 + 352);
    v17 = *(v1 + 336);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v1 + 8);

  return v18();
}

void sub_264674AA0()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_264675E44())
  {
    v5 = *&v0[OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_manager];
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = sub_26467A22C;
    v24 = v6;
    aBlock = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_264675CB4;
    v22 = &block_descriptor_68;
    v7 = _Block_copy(&aBlock);

    [v5 startMonitoringReceiverSafetyCacheWithHandler_];
    _Block_release(v7);
    v8 = sub_264783B14();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = sub_26467A978;
    v24 = v9;
    aBlock = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_26467762C;
    v22 = &block_descriptor_73;
    v10 = _Block_copy(&aBlock);

    [v5 fetchReceiverSafetyCacheForSessionID:v8 completion:v10];
    _Block_release(v10);
  }

  else
  {
    sub_264783DE4();
    v11 = v0;
    v12 = sub_264783E14();
    v13 = sub_2647859F4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock = v15;
      *v14 = 136315138;
      sub_264783B64();
      sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v16 = sub_264785E44();
      v18 = sub_2646DF234(v16, v17, &aBlock);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_264605000, v12, v13, "#SafetyCacheViewModel, sessionID: %s, Attempted to register for safety cache monitoring but current session doesn't require us to start safety cache monitoring", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x266740650](v15, -1, -1);
      MEMORY[0x266740650](v14, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }
}

void sub_264674E28(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v104 = a3;
  v105 = a2;
  v7 = sub_264785594();
  v110 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v108 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_2647855C4();
  isa = v109[-1].isa;
  MEMORY[0x28223BE20](v109);
  v106 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_264783E24();
  v114 = *(v10 - 8);
  v115 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v111 = &v102 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v102 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v102 - v19;
  v21 = sub_264783B64();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v112 = &v102 - v27;
  MEMORY[0x28223BE20](v26);
  v113 = &v102 - v28;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v30 = Strong;
  sub_26460CCE8(a1, v20, &qword_27FF75CE8, &unk_264788B70);
  v31 = v21;
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_26460CD50(v20, &qword_27FF75CE8, &unk_264788B70);
    v32 = v22;
    if (!a4)
    {

      return;
    }

    goto LABEL_7;
  }

  v103 = v7;
  v33 = v113;
  (*(v22 + 32))(v113, v20, v21);
  v32 = v22;
  if (a4)
  {
    (*(v22 + 8))(v33, v31);
LABEL_7:
    v34 = v31;
    v35 = a4;
    sub_264783DE4();
    v36 = v30;
    v37 = a4;
    v38 = sub_264783E14();
    v39 = sub_2647859D4();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      aBlock[0] = v113;
      *v40 = 136315394;
      v41 = v112;
      (*(v32 + 16))(v112, &v36[OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_sessionID], v31);
      sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v42 = sub_264785E44();
      v43 = v32;
      v45 = v44;
      (*(v43 + 8))(v41, v34);
      v46 = sub_2646DF234(v42, v45, aBlock);

      *(v40 + 4) = v46;
      *(v40 + 12) = 2080;
      swift_getErrorValue();
      v47 = sub_264785EF4();
      v49 = sub_2646DF234(v47, v48, aBlock);

      *(v40 + 14) = v49;
      _os_log_impl(&dword_264605000, v38, v39, "#SafetyCacheViewModel, sessionID: %s, error while monitoring receiver safety cache, error: %s", v40, 0x16u);
      v50 = v113;
      swift_arrayDestroy();
      MEMORY[0x266740650](v50, -1, -1);
      MEMORY[0x266740650](v40, -1, -1);
    }

    else
    {
    }

    (*(v114 + 8))(v13, v115);
    return;
  }

  v51 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_sessionID;
  if (sub_264783B34())
  {
    v52 = v31;
    sub_264783DE4();
    v53 = v30;
    v54 = sub_264783E14();
    v55 = sub_2647859F4();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v111 = v53;
      v57 = v56;
      v102 = swift_slowAlloc();
      aBlock[0] = v102;
      *v57 = 136315394;
      v58 = *(v22 + 16);
      v59 = &v30[v51];
      v60 = v112;
      v61 = v31;
      v58(v112, v59, v31);
      sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v62 = sub_264785E44();
      v64 = v63;
      (*(v32 + 8))(v60, v52);
      v65 = sub_2646DF234(v62, v64, aBlock);

      *(v57 + 4) = v65;
      *(v57 + 12) = 2080;
      *(v57 + 14) = sub_2646DF234(0xD00000000000002ALL, 0x80000002647952C0, aBlock);
      _os_log_impl(&dword_264605000, v54, v55, "#SafetyCacheViewModel, sessionID: %s, function: %s, delivering phone cache & watch cache content successfully", v57, 0x16u);
      v66 = v102;
      swift_arrayDestroy();
      MEMORY[0x266740650](v66, -1, -1);
      v67 = v57;
      v53 = v111;
      MEMORY[0x266740650](v67, -1, -1);

      (*(v114 + 8))(v17, v115);
    }

    else
    {

      (*(v114 + 8))(v17, v115);
      v61 = v31;
    }

    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v90 = sub_264785A44();
    v91 = swift_allocObject();
    v92 = v105;
    v91[2] = v105;
    v91[3] = v53;
    v93 = v104;
    v91[4] = v104;
    aBlock[4] = sub_26467A234;
    aBlock[5] = v91;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_264659F60;
    aBlock[3] = &block_descriptor_79;
    v94 = _Block_copy(aBlock);
    v95 = v93;
    v96 = v53;
    v97 = v92;

    v98 = v106;
    sub_2647855B4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_26467A240(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    sub_26466841C();
    v99 = v108;
    v100 = v103;
    sub_264785BD4();
    MEMORY[0x26673F780](0, v98, v99, v94);
    _Block_release(v94);

    (*(v110 + 1))(v99, v100);
    (*(isa + 1))(v98, v109);
    (*(v32 + 8))(v113, v61);
  }

  else
  {
    sub_264783DE4();
    v68 = v22;
    v69 = *(v22 + 16);
    v69(v25, v33, v31);
    v70 = v30;
    v71 = v31;
    v72 = sub_264783E14();
    v73 = sub_2647859F4();
    v110 = v70;

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v109 = v72;
      v75 = v74;
      v76 = swift_slowAlloc();
      aBlock[0] = v76;
      *v75 = 136315394;
      v77 = &v30[v51];
      v78 = v112;
      v69(v112, v77, v71);
      sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v79 = v73;
      v80 = sub_264785E44();
      v82 = v81;
      v83 = *(v68 + 8);
      v83(v78, v71);
      v84 = sub_2646DF234(v80, v82, aBlock);

      *(v75 + 4) = v84;
      *(v75 + 12) = 2080;
      v85 = sub_264783B04();
      v87 = v86;
      v83(v25, v71);
      v88 = sub_2646DF234(v85, v87, aBlock);

      *(v75 + 14) = v88;
      v89 = v109;
      _os_log_impl(&dword_264605000, v109, v79, "#SafetyCacheViewModel, sessionID: %s, found receiver safety cache for some other session: %s", v75, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v76, -1, -1);
      MEMORY[0x266740650](v75, -1, -1);

      (*(v114 + 8))(v111, v115);
      v83(v113, v71);
    }

    else
    {

      v101 = *(v68 + 8);
      v101(v25, v71);
      (*(v114 + 8))(v111, v115);
      v101(v113, v71);
    }
  }
}

void sub_264675AB4(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v6 = sub_264785A44();
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a1;
    v20 = sub_26467A2B4;
    v21 = v7;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_26465A0B4;
    v19 = &block_descriptor_91;
    v8 = _Block_copy(&v16);
    v9 = a2;
    v10 = a1;

    [v10 shiftLocationsOnQueue:v6 handler:v8];
    _Block_release(v8);
  }

  if (a3)
  {
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v11 = sub_264785A44();
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    v20 = sub_26467A288;
    v21 = v12;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_26465A0B4;
    v19 = &block_descriptor_85;
    v13 = _Block_copy(&v16);
    v14 = a2;
    v15 = a3;

    [v15 shiftLocationsOnQueue:v11 handler:v13];
    _Block_release(v13);
  }
}

uint64_t sub_264675CB4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = *(a1 + 32);
  if (a2)
  {
    sub_264783B44();
    v14 = sub_264783B64();
    (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  }

  else
  {
    v15 = sub_264783B64();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  }

  v16 = a3;
  v17 = a4;
  v18 = a5;
  v13(v12, a3, a4, a5);

  return sub_26460CD50(v12, &qword_27FF75CE8, &unk_264788B70);
}

uint64_t sub_264675E44()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v17);

  v5 = v17;
  if (v17)
  {
    v6 = [v17 sessionState];

    if (v6 <= 9 && ((1 << v6) & 0x230) != 0)
    {
      return 1;
    }
  }

  sub_264783DE4();
  v8 = v0;
  v9 = sub_264783E14();
  v10 = sub_2647859F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    sub_264783B64();
    sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v13 = sub_264785E44();
    v15 = sub_2646DF234(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_264605000, v9, v10, "#SafetyCacheViewModel, sessionID: %s, Attempted to register for safety cache monitoring but current session doesn't require us to start safety cache monitoring", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x266740650](v12, -1, -1);
    MEMORY[0x266740650](v11, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  return 0;
}

void sub_2646760D0(uint64_t a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_manager];
  v4 = sub_264783B14();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v8[4] = sub_2646794CC;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_26464CCBC;
  v8[3] = &block_descriptor_3;
  v6 = _Block_copy(v8);
  v7 = v2;

  [v3 fetchReceiverSessionStatusForSessionID:v4 completion:v6];
  _Block_release(v6);
}

uint64_t sub_2646761D8(void *a1, void *a2, void *a3)
{
  v47 = a1;
  v5 = sub_264785594();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2647855C4();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_264783E24();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v45 = v14;
    v46 = v6;
    v17 = a2;
    sub_264783DE4();
    v18 = a2;
    v19 = a3;
    v20 = sub_264783E14();
    v21 = sub_2647859D4();

    v44 = v21;
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v43 = a3;
      v23 = v22;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v23 = 136315650;
      *(v23 + 4) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264795400, aBlock);
      *(v23 + 12) = 2080;
      v40 = v20;
      sub_264783B64();
      sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v24 = sub_264785E44();
      v26 = sub_2646DF234(v24, v25, aBlock);

      *(v23 + 14) = v26;
      *(v23 + 22) = 2112;
      v27 = a2;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 24) = v28;
      v30 = v40;
      v29 = v41;
      *v41 = v28;
      _os_log_impl(&dword_264605000, v30, v44, "#SafetyCacheViewModel, %s: error happened when trying to fetch session info for %s, error:%@", v23, 0x20u);
      sub_26460CD50(v29, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v29, -1, -1);
      v31 = v42;
      swift_arrayDestroy();
      MEMORY[0x266740650](v31, -1, -1);
      v32 = v23;
      a3 = v43;
      MEMORY[0x266740650](v32, -1, -1);
    }

    else
    {
    }

    (*(v13 + 8))(v16, v45);
    v6 = v46;
  }

  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v33 = sub_264785A44();
  v34 = swift_allocObject();
  v35 = v47;
  *(v34 + 16) = a3;
  *(v34 + 24) = v35;
  aBlock[4] = sub_26467A804;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_192;
  v36 = _Block_copy(aBlock);
  v37 = v35;
  v38 = a3;

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26467A240(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26466841C();
  sub_264785BD4();
  MEMORY[0x26673F780](0, v11, v8, v36);
  _Block_release(v36);

  (*(v6 + 8))(v8, v5);
  return (*(v48 + 8))(v11, v49);
}

uint64_t sub_264676750(void *a1, void *a2)
{
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v28);

  v8 = v28;
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = a2;
  v9 = a2;
  v10 = a1;
  sub_264783EE4();
  sub_26466FB44(v8);

  sub_264783DE4();
  v11 = v10;
  v12 = v9;
  v13 = sub_264783E14();
  v14 = sub_2647859F4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v27 = v5;
    v28 = v18;
    v19 = v18;
    *v15 = 136315650;
    *(v15 + 4) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264795400, &v28);
    *(v15 + 12) = 2080;
    sub_264783B64();
    v26 = v4;
    sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v20 = sub_264785E44();
    v22 = sub_2646DF234(v20, v21, &v28);

    *(v15 + 14) = v22;
    *(v15 + 22) = 2112;
    *(v15 + 24) = v12;
    *v17 = v25;
    v23 = v12;
    _os_log_impl(&dword_264605000, v13, v14, "#SafetyCacheViewModel, %s: successfully fetch session info for %s, status:%@", v15, 0x20u);
    sub_26460CD50(v17, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v19, -1, -1);
    MEMORY[0x266740650](v15, -1, -1);

    return (*(v27 + 8))(v7, v26);
  }

  else
  {

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_264676AB8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_manager);
  v3 = sub_264783B14();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_264679524;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_26467762C;
  v6[3] = &block_descriptor_40;
  v5 = _Block_copy(v6);

  [v2 fetchReceiverSafetyCacheForSessionID:v3 completion:v5];
  _Block_release(v5);
}

void *sub_264676BBC(void *a1, void *a2, void *a3, uint64_t a4)
{
  v54 = a2;
  v55 = a1;
  v5 = sub_264785594();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v57 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = sub_2647855C4();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v9 = &v45[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_264783B64();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v45[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_264783E24();
  v52 = *(v14 - 8);
  v53 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v45[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    v50 = v6;
    v51 = v5;
    if (a3)
    {
      v19 = a3;
      sub_264783DE4();
      v20 = a3;
      v21 = v18;
      v22 = sub_264783E14();
      v23 = sub_2647859D4();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v48 = v22;
        v25 = v24;
        v47 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        aBlock[0] = v49;
        *v25 = 136315650;
        *(v25 + 4) = sub_2646DF234(0xD00000000000001ALL, 0x80000002647953E0, aBlock);
        *(v25 + 12) = 2080;
        (*(v11 + 16))(v13, v21 + OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_sessionID, v10);
        sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v46 = v23;
        v26 = sub_264785E44();
        v28 = v27;
        (*(v11 + 8))(v13, v10);
        v29 = sub_2646DF234(v26, v28, aBlock);

        *(v25 + 14) = v29;
        *(v25 + 22) = 2112;
        v30 = a3;
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 24) = v31;
        v33 = v47;
        v32 = v48;
        *v47 = v31;
        _os_log_impl(&dword_264605000, v32, v46, "#SafetyCacheViewModel, %s: error happened when trying to fetch safety cache for %s, error: %@", v25, 0x20u);
        sub_26460CD50(v33, &qword_27FF779D0, &qword_26478A9A0);
        MEMORY[0x266740650](v33, -1, -1);
        v34 = v49;
        swift_arrayDestroy();
        MEMORY[0x266740650](v34, -1, -1);
        MEMORY[0x266740650](v25, -1, -1);
      }

      else
      {
      }

      (*(v52 + 8))(v16, v53);
    }

    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v35 = sub_264785A44();
    v36 = swift_allocObject();
    v37 = v54;
    v38 = v55;
    v36[2] = v55;
    v36[3] = v18;
    v36[4] = v37;
    aBlock[4] = sub_26467A7F8;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_264659F60;
    aBlock[3] = &block_descriptor_174;
    v39 = _Block_copy(aBlock);
    v40 = v37;
    v41 = v18;
    v42 = v38;

    sub_2647855B4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_26467A240(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    sub_26466841C();
    v43 = v57;
    v44 = v51;
    sub_264785BD4();
    MEMORY[0x26673F780](0, v9, v43, v39);
    _Block_release(v39);

    (*(v50 + 8))(v43, v44);
    return (*(v56 + 8))(v9, v58);
  }

  return result;
}

uint64_t sub_264677228(void *a1, void *a2, void *a3)
{
  v6 = sub_264783E24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v10 = sub_264785A44();
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a1;
    v33 = sub_26467AA2C;
    v34 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v30 = 1107296256;
    v31 = sub_26465A0B4;
    v32 = &block_descriptor_186;
    v12 = _Block_copy(&aBlock);
    v13 = a2;
    v14 = a1;

    [v14 shiftLocationsOnQueue:v10 handler:v12];
    _Block_release(v12);
  }

  if (a3)
  {
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v15 = sub_264785A44();
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    v33 = sub_26467AA28;
    v34 = v16;
    aBlock = MEMORY[0x277D85DD0];
    v30 = 1107296256;
    v31 = sub_26465A0B4;
    v32 = &block_descriptor_180;
    v17 = _Block_copy(&aBlock);
    v18 = a2;
    v19 = a3;

    [v19 shiftLocationsOnQueue:v15 handler:v17];
    _Block_release(v17);
  }

  sub_264783DE4();
  v20 = a2;
  v21 = sub_264783E14();
  v22 = sub_2647859F4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock = v24;
    *v23 = 136315394;
    sub_264783B64();
    sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v25 = sub_264785E44();
    v27 = sub_2646DF234(v25, v26, &aBlock);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_2646DF234(0xD00000000000001ALL, 0x80000002647953E0, &aBlock);
    _os_log_impl(&dword_264605000, v21, v22, "#SafetyCacheViewModel, sessionID: %s, function: %s, delivering phone cache &  watch cache content successfully", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v24, -1, -1);
    MEMORY[0x266740650](v23, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_26467762C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_2646776D4(uint64_t a1)
{
  v3 = sub_264783B64();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_2647858E4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v4 + 16))(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v10 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v1;
  (*(v4 + 32))(&v11[v10], &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v12 = v1;
  sub_264635430(0, 0, v8, &unk_26478A8B0, v11);
}

uint64_t sub_2646778B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[28] = a4;
  v5[29] = a5;
  v6 = sub_264783B64();
  v5[30] = v6;
  v5[31] = *(v6 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v7 = sub_264783E24();
  v5[34] = v7;
  v5[35] = *(v7 - 8);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2646779E8, 0, 0);
}

uint64_t sub_2646779E8(uint64_t a1)
{
  v2 = *(v1[28] + OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_manager);
  v1[38] = v2;
  v3 = sub_264783B14();
  v1[39] = v3;
  v1[2] = v1;
  v1[3] = sub_264677B24;
  v4 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D70, &qword_264789350);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_2646384B4;
  v1[13] = &block_descriptor_161;
  v1[14] = v4;
  [v2 userRequestedCacheDownloadForSessionID:v3 completion:v1 + 10];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_264677B24()
{
  v1 = *(*v0 + 48);
  *(*v0 + 320) = v1;
  if (v1)
  {
    v2 = sub_264677F94;
  }

  else
  {
    v2 = sub_264677C34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264677C34()
{
  v31 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);

  sub_264783DE4();
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_264783E14();
  v6 = sub_2647859F4();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 296);
  v10 = *(v0 + 272);
  v9 = *(v0 + 280);
  v11 = *(v0 + 264);
  v13 = *(v0 + 240);
  v12 = *(v0 + 248);
  if (v7)
  {
    v29 = *(v0 + 272);
    v14 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v14 = 136315394;
    sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v15 = sub_264785E44();
    v27 = v8;
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_2646DF234(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_2646DF234(0xD000000000000029, 0x80000002647953B0, &v30);
    _os_log_impl(&dword_264605000, v5, v6, "#SafetyCacheViewModel, sessionID: %s, function: %s, user request for Satefy Cache Download is successful, please fetch safety cache now", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v28, -1, -1);
    MEMORY[0x266740650](v14, -1, -1);

    (*(v9 + 8))(v27, v29);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);
  }

  v19 = *(v0 + 304);
  v20 = *(v0 + 224);
  v21 = sub_264783B14();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v0 + 176) = sub_26467A998;
  *(v0 + 184) = v22;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_26464CCBC;
  *(v0 + 168) = &block_descriptor_168;
  v23 = _Block_copy((v0 + 144));
  v24 = v20;

  [v19 fetchReceiverSessionStatusForSessionID:v21 completion:v23];
  _Block_release(v23);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_264677F94(uint64_t a1)
{
  v37 = v1;
  v3 = v1[39];
  v2 = v1[40];
  v5 = v1[31];
  v4 = v1[32];
  v7 = v1[29];
  v6 = v1[30];
  swift_willThrow();

  sub_264783DE4();
  (*(v5 + 16))(v4, v7, v6);
  v8 = v2;
  v9 = sub_264783E14();
  v10 = sub_2647859D4();

  if (os_log_type_enabled(v9, v10))
  {
    v32 = v1[40];
    v33 = v1[35];
    v34 = v1[34];
    v35 = v1[36];
    v12 = v1[31];
    v11 = v1[32];
    v13 = v1[30];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v36[0] = v15;
    *v14 = 136315394;
    sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v16 = sub_264785E44();
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    v19 = sub_2646DF234(v16, v18, v36);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_264785EF4();
    v22 = sub_2646DF234(v20, v21, v36);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_264605000, v9, v10, "#SafetyCacheViewModel, sessionID: %s, error while user requested to download Satefy Cache, error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v15, -1, -1);
    MEMORY[0x266740650](v14, -1, -1);

    (*(v33 + 8))(v35, v34);
  }

  else
  {
    v23 = v1[40];
    v25 = v1[35];
    v24 = v1[36];
    v26 = v1[34];
    v28 = v1[31];
    v27 = v1[32];
    v29 = v1[30];

    (*(v28 + 8))(v27, v29);
    (*(v25 + 8))(v24, v26);
  }

  v30 = v1[1];

  return v30();
}

id SafetyCacheViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_264678318@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SafetyCacheViewModel(0);
  result = sub_264783E64();
  *a2 = result;
  return result;
}

Swift::Void __swiftcall SafetyCacheViewModel.callBuddy()()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v6 = sub_264785A44();

  v7 = objc_opt_self();
  v8 = [v7 sharedInstance];
  v9 = [v8 providerManager];

  v10 = [v9 defaultAppProvider];
  if (!v10)
  {
    v11 = [v7 sharedInstance];
    v12 = [v11 providerManager];

    v10 = [v12 telephonyProvider];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v38);

  v13 = v38;
  if (!v38)
  {
    goto LABEL_11;
  }

  v36 = v3;
  v37 = v2;
  v14 = [v38 initiatorHandle];

  v15 = [v14 primaryHandle];
  v16 = v15;
  v17 = v15;
  v18 = v15;
  if (!v15)
  {
    sub_264785724();
    v18 = sub_264785714();

    sub_264785724();
    v17 = sub_264785714();

    sub_264785724();
    v16 = sub_264785714();
  }

  v19 = objc_allocWithZone(MEMORY[0x277D6EED0]);
  v20 = v15;
  v21 = [v19 initWithProvider_];
  LODWORD(v19) = [v18 _appearsToBeEmail];

  if (v19)
  {

    v22 = [objc_allocWithZone(MEMORY[0x277D6EEE8]) initWithType:3 value:v17];
  }

  else
  {

    v22 = [objc_allocWithZone(MEMORY[0x277D6EEE8]) initWithType:2 value:v16];
    v17 = v16;
  }

  [v21 setHandle_];
  v23 = [v7 sharedInstance];
  v24 = [v23 canDialWithRequest_];

  if (v24)
  {
    v25 = [v7 sharedInstance];
    v26 = [v25 dialWithRequest_];

LABEL_11:
    return;
  }

  sub_264783DE4();
  v27 = v1;
  v28 = sub_264783E14();
  v29 = sub_2647859D4();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v38 = v31;
    *v30 = 136315394;
    v32 = sub_264783B04();
    v34 = sub_2646DF234(v32, v33, &v38);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_2646DF234(0x646475426C6C6163, 0xEB00000000292879, &v38);
    _os_log_impl(&dword_264605000, v28, v29, "#SafetyCacheViewModel, sessionID: %s, function: %s,  error while dialing a call using TelephonyUtilities ", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v31, -1, -1);
    MEMORY[0x266740650](v30, -1, -1);
  }

  else
  {
  }

  (*(v36 + 8))(v5, v37);
}

uint64_t SafetyCacheViewModel.shouldAllowCalling.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v5);

  v0 = v5;
  if (!v5)
  {
    return 0;
  }

  v1 = [v5 initiatorHandle];

  v2 = [v1 primaryHandle];
  if (!v2)
  {
    sub_264785724();
    v2 = sub_264785714();
  }

  v3 = [v2 _appearsToBeEmail];

  return v3 ^ 1;
}

char *sub_2646789E0(char *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v75 = a4;
  v74 = a3;
  v83 = a1;
  v73 = sub_264783B64();
  v82 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v76 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264783E24();
  v78 = *(v7 - 8);
  v79 = v7;
  MEMORY[0x28223BE20](v7);
  v77 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76610, &qword_26478A880);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v64 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756A0, &qword_264787DA0);
  v81 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v64 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v11 = MEMORY[0x28223BE20](v67);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765D8, &qword_26478A748);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v64 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B0, &unk_264787DB0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v64 - v22;
  v80 = *a2;
  v24 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_manager;
  *&v4[v24] = [objc_opt_self() defaultManager];
  v25 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel__safetyCache;
  memset(v85, 0, sizeof(v85));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756F8, &qword_264787DF0);
  sub_264783E94();
  (*(v21 + 32))(&v4[v25], v23, v20);
  v26 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel__phoneCache;
  *&v85[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76658, &qword_26478A990);
  sub_264783E94();
  v27 = *(v17 + 32);
  v27(&v4[v26], v19, v16);
  v28 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel__watchCache;
  *&v85[0] = 0;
  sub_264783E94();
  v27(&v4[v28], v19, v16);
  v66 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel__cacheExpiryDate;
  v29 = sub_264783AF4();
  v65 = *(*(v29 - 8) + 56);
  v65(v15, 1, 1, v29);
  v30 = v15;
  sub_26460CCE8(v15, v13, &qword_27FF756B8, &qword_26478AC90);
  v31 = v68;
  sub_264783E94();
  sub_26460CD50(v15, &qword_27FF756B8, &qword_26478AC90);
  v32 = *(v81 + 32);
  v81 += 32;
  v33 = v69;
  v32(&v4[v66], v31, v69);
  v34 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel__cacheReleaseDate;
  v65(v30, 1, 1, v29);
  sub_26460CCE8(v30, v13, &qword_27FF756B8, &qword_26478AC90);
  sub_264783E94();
  v35 = v73;
  sub_26460CD50(v30, &qword_27FF756B8, &qword_26478AC90);
  v32(&v4[v34], v31, v33);
  v36 = v80;
  v37 = OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel__receiverSessionStatus;
  *&v85[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76670, &qword_26478A998);
  v38 = v70;
  sub_264783E94();
  (*(v71 + 32))(&v4[v37], v38, v72);
  v39 = *(v82 + 16);
  v39(&v4[OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_sessionID], v83, v35);
  v4[OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_userType] = v36;
  v40 = &v4[OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_containerVCHandler];
  v41 = v74;
  v42 = v75;
  *v40 = v74;
  v40[1] = v42;
  sub_264611394(v41, v42);
  v43 = type metadata accessor for SafetyCacheViewModel(0);
  v84.receiver = v4;
  v84.super_class = v43;
  v44 = objc_msgSendSuper2(&v84, sel_init);
  v45 = v44[OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_userType];
  v46 = v44;
  v47 = v77;
  if (v45)
  {
    sub_264783DE4();
  }

  else
  {
    sub_264783DF4();
  }

  v48 = v76;
  v39(v76, v83, v35);
  v49 = sub_264783E14();
  v50 = sub_2647859F4();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *&v85[0] = v52;
    *v51 = 136315394;
    sub_26467A240(&qword_27FF75D80, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v53 = sub_264785E44();
    v54 = v48;
    v56 = v55;
    v57 = *(v82 + 8);
    v57(v54, v35);
    v58 = sub_2646DF234(v53, v56, v85);

    *(v51 + 4) = v58;
    *(v51 + 12) = 2080;
    if (v80)
    {
      v59 = 0x7265766965636552;
    }

    else
    {
      v59 = 0x6F74616974696E49;
    }

    if (v80)
    {
      v60 = 0xE800000000000000;
    }

    else
    {
      v60 = 0xE900000000000072;
    }

    v61 = sub_2646DF234(v59, v60, v85);

    *(v51 + 14) = v61;
    _os_log_impl(&dword_264605000, v49, v50, "#SafetyCacheViewModel, sessionID: %s, userType: %s", v51, 0x16u);
    swift_arrayDestroy();
    v62 = v52;
    v36 = v80;
    MEMORY[0x266740650](v62, -1, -1);
    MEMORY[0x266740650](v51, -1, -1);
  }

  else
  {

    v57 = *(v82 + 8);
    v57(v48, v35);
  }

  (*(v78 + 8))(v47, v79);
  if (v36)
  {
    sub_264672D64();
  }

  else
  {
    sub_2646714E4();
  }

  v57(v83, v35);
  return v46;
}

uint64_t sub_26467939C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2646793D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_264611390;

  return sub_264674060();
}

uint64_t type metadata accessor for SafetyCacheViewModel(uint64_t a1)
{
  result = qword_27FF76640;
  if (!qword_27FF76640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2646794EC()
{
  MEMORY[0x2667406F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26467952C()
{
  v1 = sub_264783B64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2646795F8(uint64_t a1)
{
  v4 = *(sub_264783B64() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26460F764;

  return sub_2646778B4(a1, v6, v7, v8, v1 + v5);
}

void sub_26467985C(uint64_t a1)
{
  sub_264783B64();
  if (v1 <= 0x3F)
  {
    sub_264656F0C(319, &unk_27FF779A0, &qword_27FF756F8, &qword_264787DF0);
    if (v2 <= 0x3F)
    {
      sub_264656F0C(319, &qword_27FF76650, &qword_27FF76658, &qword_26478A990);
      if (v3 <= 0x3F)
      {
        sub_264656F0C(319, &qword_27FF76660, &qword_27FF756B8, &qword_26478AC90);
        if (v4 <= 0x3F)
        {
          sub_264656F0C(319, &qword_27FF76668, &qword_27FF76670, &qword_26478A998);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_26467A240(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26467A2E8()
{
  v1 = sub_264783B64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26467A3B4()
{
  v1 = *(sub_264783B64() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_264673B50(v2, v3, v4);
}

uint64_t sub_26467A4CC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_124Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 40) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;

  v6 = sub_264783AF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v4, 1, v6))
  {
    (*(v7 + 8))(v0 + v4, v6);
  }

  if (!v8(v0 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v5, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v5 + v3, v2 | 7);
}

uint64_t sub_26467A6A8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, char *, char *))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = *(v1 + 4);
  v8 = &v1[(*(v2 + 64) + v3 + v4) & ~v3];

  return a1(v5, v6, v7, &v1[v4], v8);
}

uint64_t sub_26467A774()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_75Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_26467A890()
{
  result = qword_27FF76680;
  if (!qword_27FF76680)
  {
    sub_264659B70(255, &qword_27FF75E80, 0x277D4AB28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76680);
  }

  return result;
}

uint64_t sub_26467AA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for SafetyCacheMapView.Annotation(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_26467AB8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for SafetyCacheMapView.Annotation(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_26467ACE0(uint64_t a1)
{
  sub_26467ADF4(319, &qword_27FF766A0, &qword_27FF766A8, &unk_26478AA80);
  if (v1 <= 0x3F)
  {
    sub_26467ADF4(319, &qword_27FF766B0, &qword_27FF766B8, &qword_26478F190);
    if (v2 <= 0x3F)
    {
      sub_26467AE48(319);
      if (v3 <= 0x3F)
      {
        sub_26467AEDC(319);
        if (v4 <= 0x3F)
        {
          sub_26467AF70(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for SafetyCacheMapView.Annotation(319);
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

void sub_26467ADF4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_264785324();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26467AE48(uint64_t a1)
{
  if (!qword_27FF766C0)
  {
    type metadata accessor for SafetyCacheMapViewModel(255);
    sub_264681990(&qword_27FF75700, type metadata accessor for SafetyCacheMapViewModel, &unk_26478D5D0);
    v1 = sub_2647841A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF766C0);
    }
  }
}

void sub_26467AEDC(uint64_t a1)
{
  if (!qword_27FF766C8)
  {
    type metadata accessor for SafetyCacheViewModel(255);
    sub_264681990(&qword_27FF756E8, type metadata accessor for SafetyCacheViewModel, &protocol conformance descriptor for SafetyCacheViewModel);
    v1 = sub_2647841A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF766C8);
    }
  }
}

void sub_26467AF70(uint64_t a1)
{
  if (!qword_27FF766D0)
  {
    type metadata accessor for SafetyCacheDetailViewModel(255);
    v1 = sub_264785B44();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF766D0);
    }
  }
}

uint64_t sub_26467AFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26467B0BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_26467B1A4(uint64_t a1)
{
  sub_26467ADF4(319, &qword_27FF766A0, &qword_27FF766A8, &unk_26478AA80);
  if (v1 <= 0x3F)
  {
    sub_26467ADF4(319, &qword_27FF766B0, &qword_27FF766B8, &qword_26478F190);
    if (v2 <= 0x3F)
    {
      sub_26467AE48(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SafetyCacheDetailViewModel(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26467B2A4@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  v2 = type metadata accessor for PushingSafetyCacheMapContentView(0);
  v3 = v2 - 8;
  v100 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v108 = v4;
  v109 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v6 = MEMORY[0x28223BE20](v105);
  v106 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v88 = &v76 - v8;
  v91 = sub_264783E24();
  v90 = *(v91 - 1);
  MEMORY[0x28223BE20](v91);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766E8, &unk_26478F160);
  v11 = MEMORY[0x28223BE20](v81);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v76 - v14;
  v16 = type metadata accessor for SafetyCacheMapView(0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v92 = &v76 - v20;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766F0, &qword_26478AB60);
  MEMORY[0x28223BE20](v94);
  v89 = &v76 - v21;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766F8, &qword_26478AB68);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v76 - v22;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76700, &qword_26478AB70);
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v98 = &v76 - v23;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76708, &qword_26478AB78);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v76 - v24;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v111);

  v25 = v10;

  v26 = v111;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);
  sub_264785314();
  v27 = *(v3 + 28);
  v110 = v1;
  v28 = (v1 + v27);
  v29 = *(v28 + 32);
  v30 = *(v28 + 5);
  v31 = v28[1];
  v116 = *v28;
  v117 = v31;
  v118 = v29;
  v119 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76710, &qword_26478ABC8);
  sub_264785314();
  v32 = v111;
  v85 = v112;
  v86 = v114;
  v87 = v113;
  v84 = v115;
  *v19 = v26;
  sub_26460CCE8(v15, v19 + v16[5], &qword_27FF766E8, &unk_26478F160);
  sub_264783DE4();
  sub_26460CCE8(v15, v13, &qword_27FF766E8, &unk_26478F160);
  v33 = sub_264783E14();
  v34 = sub_2647859F4();
  if (os_log_type_enabled(v33, v34))
  {
    v78 = v32;
    v79 = v25;
    v35 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v111 = v77;
    *v35 = 136642819;
    v36 = v88;
    v37 = v81;
    v81 = v13;
    MEMORY[0x26673F100](v37);
    if ((*(v82 + 48))(v36, 1, v83))
    {
      sub_26460CD50(v88, &qword_27FF766A8, &unk_26478AA80);
      v38 = 0;
      v39 = 0xE000000000000000;
    }

    else
    {
      v40 = v88;
      v41 = v80;
      sub_26468121C(v88, v80, type metadata accessor for SafetyCacheMapView.Annotation);
      sub_26460CD50(v40, &qword_27FF766A8, &unk_26478AA80);
      v38 = sub_2646E9D5C();
      v39 = v42;
      sub_2646819D8(v41, type metadata accessor for SafetyCacheMapView.Annotation);
    }

    sub_26460CD50(v81, &qword_27FF766E8, &unk_26478F160);
    v43 = sub_2646DF234(v38, v39, &v111);

    *(v35 + 4) = v43;
    _os_log_impl(&dword_264605000, v33, v34, "selected annotation is %{sensitive}s", v35, 0xCu);
    v44 = v77;
    __swift_destroy_boxed_opaque_existential_0(v77);
    MEMORY[0x266740650](v44, -1, -1);
    MEMORY[0x266740650](v35, -1, -1);

    (*(v90 + 1))(v79, v91);
    sub_26460CD50(v15, &qword_27FF766E8, &unk_26478F160);
    v32 = v78;
  }

  else
  {

    sub_26460CD50(v13, &qword_27FF766E8, &unk_26478F160);
    (*(v90 + 1))(v25, v91);
    sub_26460CD50(v15, &qword_27FF766E8, &unk_26478F160);
  }

  v45 = v19 + v16[6];
  v46 = v85;
  *v45 = v32;
  *(v45 + 1) = v46;
  v47 = v86;
  *(v45 + 1) = v87;
  *(v45 + 2) = v47;
  v45[48] = v84;
  *(v19 + v16[7]) = 0;
  *(v19 + v16[8]) = 1;
  *(v19 + v16[9]) = 1;
  *(v19 + v16[10]) = 1;
  *(v19 + v16[11]) = 1;
  v48 = v92;
  sub_264680D14(v19, v92, type metadata accessor for SafetyCacheMapView);
  v91 = type metadata accessor for PushingSafetyCacheMapContentView;
  v49 = v109;
  sub_26468121C(v110, v109, type metadata accessor for PushingSafetyCacheMapContentView);
  v100 = *(v100 + 80);
  v50 = (v100 + 16) & ~v100;
  v88 = v50;
  v51 = swift_allocObject();
  v90 = type metadata accessor for PushingSafetyCacheMapContentView;
  sub_264680D14(v49, v51 + v50, type metadata accessor for PushingSafetyCacheMapContentView);
  v52 = v89;
  sub_264680D14(v48, v89, type metadata accessor for SafetyCacheMapView);
  v53 = v94;
  v54 = (v52 + *(v94 + 36));
  *v54 = sub_264680D7C;
  v54[1] = v51;
  v55 = sub_264680DA8();
  v54[2] = 0;
  v54[3] = 0;
  v56 = v95;
  sub_264785074();
  sub_26460CD50(v52, &qword_27FF766F0, &qword_26478AB60);
  sub_2647854D4();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76720, &qword_26478ABD0);
  v111 = v53;
  v112 = v55;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = sub_264680E64();
  v60 = v98;
  v61 = v97;
  sub_264785114();
  v62 = (*(v96 + 8))(v56, v61);
  MEMORY[0x28223BE20](v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76730, &unk_26478ABD8);
  v111 = v61;
  v112 = MEMORY[0x277CE1350];
  *&v113 = v57;
  *(&v113 + 1) = OpaqueTypeConformance2;
  *&v114 = MEMORY[0x277CE1340];
  *(&v114 + 1) = v59;
  v64 = swift_getOpaqueTypeConformance2();
  v65 = sub_26460CDF0(&qword_27FF76738, &qword_27FF76730, &unk_26478ABD8, MEMORY[0x277CDDF68]);
  v66 = v102;
  v67 = v101;
  sub_2647850E4();
  (*(v99 + 8))(v60, v67);
  v68 = v106;
  v69 = v110;
  sub_2647852F4();
  v70 = v69;
  v71 = v109;
  sub_26468121C(v70, v109, v91);
  v72 = v88;
  v73 = swift_allocObject();
  sub_264680D14(v71, v73 + v72, v90);
  v111 = v67;
  v112 = v63;
  *&v113 = v64;
  *(&v113 + 1) = v65;
  swift_getOpaqueTypeConformance2();
  sub_264681168();
  v74 = v104;
  sub_264785104();

  sub_26460CD50(v68, &qword_27FF766A8, &unk_26478AA80);
  return (*(v103 + 8))(v66, v74);
}

uint64_t sub_26467C04C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - v4;
  v6 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_26460CCE8(v5, v3, &qword_27FF766A8, &unk_26478AA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);
  sub_264785304();
  return sub_26460CD50(v5, &qword_27FF766A8, &unk_26478AA80);
}

uint64_t sub_26467C17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76750, &qword_26478AC30);
  MEMORY[0x28223BE20](v3);
  v5 = v18 - v4;
  v6 = type metadata accessor for PushingSafetyCacheMapContentView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_264784934();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76758, &qword_26478AC38);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v18 - v12;
  sub_264784924();
  sub_26468128C();
  sub_264783FE4();
  sub_26468121C(a1, v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PushingSafetyCacheMapContentView);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_264680D14(v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for PushingSafetyCacheMapContentView);
  v16 = &v5[*(v3 + 48)];
  (*(v11 + 16))(v5, v13, v10);
  *v16 = sub_2646812E0;
  v16[1] = v15;
  sub_264784754();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_26467C454@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_264783B94();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_264785704();
  MEMORY[0x28223BE20](v3 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  *a1 = result;
  a1[1] = v7;
  a1[2] = 0;
  a1[3] = 0;
  return result;
}

uint64_t sub_26467C5A8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76768, &qword_26478AC40);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6[-v2];
  type metadata accessor for PushingSafetyCacheMapContentView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = sub_264783EC4();
  sub_26467C6C8(v3);
  sub_26460CD50(v3, &qword_27FF76768, &qword_26478AC40);
  v4(v6, 0);
}

uint64_t sub_26467C6C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (!*(*v1 + 16))
  {
    v13 = type metadata accessor for SafetyMonitorUINavigationPathItem(0);
    v9 = *(*(v13 - 8) + 56);
    v12 = v13;
    v10 = a1;
    v11 = 1;
    goto LABEL_6;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2646813D4(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  v5 = v3[2];
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_4:
  v6 = v5 - 1;
  v7 = type metadata accessor for SafetyMonitorUINavigationPathItem(0);
  v14 = *(v7 - 8);
  v8 = v3 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v6;
  v3[2] = v6;
  *v1 = v3;
  sub_264680D14(v8, a1, type metadata accessor for SafetyMonitorUINavigationPathItem);
  v9 = *(v14 + 56);
  v10 = a1;
  v11 = 0;
  v12 = v7;
LABEL_6:

  return v9(v10, v11, 1, v12);
}

uint64_t sub_26467C830(uint64_t a1)
{
  v1 = type metadata accessor for SafetyMonitorUINavigationPathItem(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);
  sub_2647852F4();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_26460CD50(v10, &qword_27FF766A8, &unk_26478AA80);
  }

  sub_264680D14(v10, v14, type metadata accessor for SafetyCacheMapView.Annotation);
  type metadata accessor for PushingSafetyCacheMapContentView(0);
  sub_26468121C(v14, v8, type metadata accessor for SafetyCacheMapView.Annotation);
  (*(v12 + 56))(v8, 0, 1, v11);
  sub_26460CCE8(v8, v4, &qword_27FF766A8, &unk_26478AA80);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762F8, &qword_264789EC0);
  (*(*(v16 - 8) + 56))(v4, 0, 3, v16);
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = sub_264783EC4();
  v18 = v17;
  v19 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v18 = v19;
  v21 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_2647031A4(0, v19[2] + 1, 1, v19);
    *v18 = v19;
  }

  v23 = v19[2];
  v22 = v19[3];
  if (v23 >= v22 >> 1)
  {
    v19 = sub_2647031A4((v22 > 1), v23 + 1, 1, v19);
    *v18 = v19;
  }

  v19[2] = v23 + 1;
  sub_264680D14(v4, v19 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v23, type metadata accessor for SafetyMonitorUINavigationPathItem);
  v25(v26, 0);

  sub_26460CD50(v8, &qword_27FF766A8, &unk_26478AA80);
  return sub_2646819D8(v14, type metadata accessor for SafetyCacheMapView.Annotation);
}

uint64_t sub_26467CC50@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  v2 = type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0);
  v3 = v2 - 8;
  v100 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v108 = v4;
  v109 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v6 = MEMORY[0x28223BE20](v105);
  v106 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v88 = &v76 - v8;
  v91 = sub_264783E24();
  v90 = *(v91 - 1);
  MEMORY[0x28223BE20](v91);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766E8, &unk_26478F160);
  v11 = MEMORY[0x28223BE20](v81);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v76 - v14;
  v16 = type metadata accessor for SafetyCacheMapView(0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v92 = &v76 - v20;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766F0, &qword_26478AB60);
  MEMORY[0x28223BE20](v94);
  v89 = &v76 - v21;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766F8, &qword_26478AB68);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v76 - v22;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76700, &qword_26478AB70);
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v98 = &v76 - v23;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76770, &qword_26478AC48);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v76 - v24;
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v10;
  sub_264783ED4(&v111);

  v26 = v111;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);
  sub_264785314();
  v27 = *(v3 + 28);
  v110 = v1;
  v28 = (v1 + v27);
  v29 = *(v28 + 32);
  v30 = *(v28 + 5);
  v31 = v28[1];
  v116 = *v28;
  v117 = v31;
  v118 = v29;
  v119 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76710, &qword_26478ABC8);
  sub_264785314();
  v32 = v111;
  v85 = v112;
  v86 = v114;
  v87 = v113;
  v84 = v115;
  *v19 = v26;
  sub_26460CCE8(v15, v19 + v16[5], &qword_27FF766E8, &unk_26478F160);
  sub_264783DE4();
  sub_26460CCE8(v15, v13, &qword_27FF766E8, &unk_26478F160);
  v33 = sub_264783E14();
  v34 = sub_2647859F4();
  if (os_log_type_enabled(v33, v34))
  {
    v78 = v32;
    v79 = v25;
    v35 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v111 = v77;
    *v35 = 136642819;
    v36 = v88;
    v37 = v81;
    v81 = v13;
    MEMORY[0x26673F100](v37);
    if ((*(v82 + 48))(v36, 1, v83))
    {
      sub_26460CD50(v88, &qword_27FF766A8, &unk_26478AA80);
      v38 = 0;
      v39 = 0xE000000000000000;
    }

    else
    {
      v40 = v88;
      v41 = v80;
      sub_26468121C(v88, v80, type metadata accessor for SafetyCacheMapView.Annotation);
      sub_26460CD50(v40, &qword_27FF766A8, &unk_26478AA80);
      v38 = sub_2646E9D5C();
      v39 = v42;
      sub_2646819D8(v41, type metadata accessor for SafetyCacheMapView.Annotation);
    }

    sub_26460CD50(v81, &qword_27FF766E8, &unk_26478F160);
    v43 = sub_2646DF234(v38, v39, &v111);

    *(v35 + 4) = v43;
    _os_log_impl(&dword_264605000, v33, v34, "selected annotation is %{sensitive}s", v35, 0xCu);
    v44 = v77;
    __swift_destroy_boxed_opaque_existential_0(v77);
    MEMORY[0x266740650](v44, -1, -1);
    MEMORY[0x266740650](v35, -1, -1);

    (*(v90 + 1))(v79, v91);
    sub_26460CD50(v15, &qword_27FF766E8, &unk_26478F160);
    v32 = v78;
  }

  else
  {

    sub_26460CD50(v13, &qword_27FF766E8, &unk_26478F160);
    (*(v90 + 1))(v25, v91);
    sub_26460CD50(v15, &qword_27FF766E8, &unk_26478F160);
  }

  v45 = v19 + v16[6];
  v46 = v85;
  *v45 = v32;
  *(v45 + 1) = v46;
  v47 = v86;
  *(v45 + 1) = v87;
  *(v45 + 2) = v47;
  v45[48] = v84;
  *(v19 + v16[7]) = 1;
  *(v19 + v16[8]) = 1;
  *(v19 + v16[9]) = 1;
  *(v19 + v16[10]) = 1;
  *(v19 + v16[11]) = 1;
  v48 = v92;
  sub_264680D14(v19, v92, type metadata accessor for SafetyCacheMapView);
  v91 = type metadata accessor for SelectionPreservingSafetyCacheMapContentView;
  v49 = v109;
  sub_26468121C(v110, v109, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
  v100 = *(v100 + 80);
  v50 = (v100 + 16) & ~v100;
  v88 = v50;
  v51 = swift_allocObject();
  v90 = type metadata accessor for SelectionPreservingSafetyCacheMapContentView;
  sub_264680D14(v49, v51 + v50, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
  v52 = v89;
  sub_264680D14(v48, v89, type metadata accessor for SafetyCacheMapView);
  v53 = v94;
  v54 = (v52 + *(v94 + 36));
  *v54 = sub_2646813EC;
  v54[1] = v51;
  v55 = sub_264680DA8();
  v54[2] = 0;
  v54[3] = 0;
  v56 = v95;
  sub_264785074();
  sub_26460CD50(v52, &qword_27FF766F0, &qword_26478AB60);
  sub_2647854D4();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76720, &qword_26478ABD0);
  v111 = v53;
  v112 = v55;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = sub_264680E64();
  v60 = v98;
  v61 = v97;
  sub_264785114();
  v62 = (*(v96 + 8))(v56, v61);
  MEMORY[0x28223BE20](v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76778, &qword_26478AC50);
  v111 = v61;
  v112 = MEMORY[0x277CE1350];
  *&v113 = v57;
  *(&v113 + 1) = OpaqueTypeConformance2;
  *&v114 = MEMORY[0x277CE1340];
  *(&v114 + 1) = v59;
  v64 = swift_getOpaqueTypeConformance2();
  v65 = sub_26460CDF0(&qword_27FF76780, &qword_27FF76778, &qword_26478AC50, MEMORY[0x277CDDF68]);
  v66 = v102;
  v67 = v101;
  sub_2647850E4();
  (*(v99 + 8))(v60, v67);
  v68 = v106;
  v69 = v110;
  sub_2647852F4();
  v70 = v69;
  v71 = v109;
  sub_26468121C(v70, v109, v91);
  v72 = v88;
  v73 = swift_allocObject();
  sub_264680D14(v71, v73 + v72, v90);
  v111 = v67;
  v112 = v63;
  *&v113 = v64;
  *(&v113 + 1) = v65;
  swift_getOpaqueTypeConformance2();
  sub_264681168();
  v74 = v104;
  sub_264785104();

  sub_26460CD50(v68, &qword_27FF766A8, &unk_26478AA80);
  return (*(v103 + 8))(v66, v74);
}

uint64_t sub_26467D9F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0);
  sub_26468121C(a1 + *(v8 + 36), v7, type metadata accessor for SafetyCacheMapView.Annotation);
  v9 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  sub_26460CCE8(v7, v5, &qword_27FF766A8, &unk_26478AA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);
  sub_264785304();
  return sub_26460CD50(v7, &qword_27FF766A8, &unk_26478AA80);
}

uint64_t sub_26467DB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_264784294();
  v5 = sub_264784C34();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766F8, &qword_26478AB68);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76720, &qword_26478ABD0);
  v8 = a2 + *(result + 36);
  *v8 = v4;
  *(v8 + 8) = v5;
  return result;
}

uint64_t sub_26467DC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76788, &qword_26478AC58);
  MEMORY[0x28223BE20](v29);
  v4 = &v23 - v3;
  v5 = type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0);
  v27 = *(v5 - 8);
  v26 = *(v27 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v25 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76790, &qword_26478AC60);
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = &v23 - v8;
  v10 = sub_264784934();
  MEMORY[0x28223BE20](v10 - 8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76798, &qword_26478AC68);
  v11 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v13 = &v23 - v12;
  sub_264784914();
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767A0, &qword_26478AC70);
  sub_26460CDF0(&qword_27FF767A8, &qword_27FF767A0, &qword_26478AC70, MEMORY[0x277CE14C0]);
  sub_2647842D4();
  sub_264784924();
  v31 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767B0, &qword_26478AC78);
  sub_26468164C();
  sub_264783FE4();
  v14 = v25;
  sub_26468121C(a1, v25, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
  v15 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v16 = swift_allocObject();
  sub_264680D14(v14, v16 + v15, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
  v17 = *(v29 + 48);
  v18 = &v4[*(v29 + 64)];
  v19 = v24;
  (*(v11 + 16))(v4, v13, v24);
  v20 = &v4[v17];
  v21 = v28;
  (*(v7 + 16))(v20, v9, v28);
  *v18 = sub_2646816D0;
  v18[1] = v16;
  sub_264784754();
  (*(v7 + 8))(v9, v21);
  return (*(v11 + 8))(v13, v19);
}

uint64_t sub_26467E04C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767D8, &qword_26478ACE8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767E0, &qword_26478ACF0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  sub_26467E278(&v18 - v12);
  sub_26467E690(v7);
  sub_26460CCE8(v13, v11, &qword_27FF767E0, &qword_26478ACF0);
  sub_26460CCE8(v7, v5, &qword_27FF767D8, &qword_26478ACE8);
  sub_26460CCE8(v11, a1, &qword_27FF767E0, &qword_26478ACF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767E8, &unk_26478ACF8);
  v15 = a1 + v14[12];
  *v15 = 0;
  *(v15 + 8) = 1;
  sub_26460CCE8(v5, a1 + v14[16], &qword_27FF767D8, &qword_26478ACE8);
  v16 = a1 + v14[20];
  *v16 = 0;
  *(v16 + 8) = 1;
  sub_26460CD50(v7, &qword_27FF767D8, &qword_26478ACE8);
  sub_26460CD50(v13, &qword_27FF767E0, &qword_26478ACF0);
  sub_26460CD50(v5, &qword_27FF767D8, &qword_26478ACE8);
  return sub_26460CD50(v11, &qword_27FF767E0, &qword_26478ACF0);
}

uint64_t sub_26467E278@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0);
  v27 = *(v2 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767F8, &qword_26478AD18);
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);
  sub_2647852F4();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_26460CD50(v9, &qword_27FF766A8, &unk_26478AA80);
    v17 = 1;
    v19 = v29;
    v18 = v30;
  }

  else
  {
    sub_264680D14(v9, v16, type metadata accessor for SafetyCacheMapView.Annotation);
    sub_26468121C(v1, &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
    sub_26468121C(v16, v14, type metadata accessor for SafetyCacheMapView.Annotation);
    v20 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v21 = (v3 + *(v11 + 80) + v20) & ~*(v11 + 80);
    v22 = swift_allocObject();
    sub_264680D14(v4, v22 + v20, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
    sub_264680D14(v14, v22 + v21, type metadata accessor for SafetyCacheMapView.Annotation);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76800, &qword_26478AD20);
    sub_264681DE8();
    v23 = v28;
    sub_264785334();
    sub_2646819D8(v16, type metadata accessor for SafetyCacheMapView.Annotation);
    v25 = v29;
    v24 = v30;
    (*(v5 + 32))(v30, v23, v29);
    v17 = 0;
    v18 = v24;
    v19 = v25;
  }

  return (*(v5 + 56))(v18, v17, 1, v19);
}

uint64_t sub_26467E690@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0);
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76378, &unk_264789F90);
  v5 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);
  sub_2647852F4();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_26460CD50(v9, &qword_27FF766A8, &unk_26478AA80);
    v17 = 1;
    v19 = v30;
    v18 = v31;
  }

  else
  {
    sub_264680D14(v9, v16, type metadata accessor for SafetyCacheMapView.Annotation);
    sub_26468121C(v1, &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
    sub_26468121C(v16, v14, type metadata accessor for SafetyCacheMapView.Annotation);
    v20 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v21 = (v3 + *(v11 + 80) + v20) & ~*(v11 + 80);
    v22 = swift_allocObject();
    sub_264680D14(v4, v22 + v20, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
    sub_264680D14(v14, v22 + v21, type metadata accessor for SafetyCacheMapView.Annotation);
    v23 = v29;
    sub_264785334();
    sub_2646819D8(v16, type metadata accessor for SafetyCacheMapView.Annotation);
    v24 = v31;
    v25 = v23;
    v26 = v30;
    (*(v5 + 32))(v31, v25, v30);
    v17 = 0;
    v18 = v24;
    v19 = v26;
  }

  return (*(v5 + 56))(v18, v17, 1, v19);
}

uint64_t sub_26467EA98(uint64_t a1)
{
  v2 = type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_264784AE4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  sub_264784AD4();
  sub_26468121C(a1, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_264680D14(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
  (*(v6 + 16))(v9, v11, v5);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_2646816FC;
  *(v14 + 24) = v13;
  sub_264681990(&qword_27FF76598, MEMORY[0x277CE0818], MEMORY[0x277CE0810]);
  sub_26468128C();
  sub_264784024();
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_26467ED2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76768, &qword_26478AC40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8[-v3];
  if (*(a1 + *(type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0) + 32)))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = sub_264783EC4();
    sub_26467C6C8(v4);
    sub_26460CD50(v4, &qword_27FF76768, &qword_26478AC40);
    v5(v8, 0);
  }

  else
  {
    v7 = type metadata accessor for SafetyMonitorUINavigationPathItem(0);
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    return sub_26460CD50(v4, &qword_27FF76768, &qword_26478AC40);
  }
}

uint64_t sub_26467EEA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v16 - v3;
  v5 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);
  sub_2647852F4();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_26460CD50(v4, &qword_27FF766A8, &unk_26478AA80);
  }

  sub_264680D14(v4, v8, type metadata accessor for SafetyCacheMapView.Annotation);
  v10 = *(v8 + 1);
  v11 = *(v8 + 2);
  v12 = (a1 + *(type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0) + 20));
  v13 = *(v12 + 32);
  v14 = *(v12 + 5);
  v15 = v12[1];
  v19 = *v12;
  v20 = v15;
  v21 = v13;
  v22 = v14;
  v16[1] = v10;
  v16[2] = v11;
  v17 = vdupq_n_s64(0x3F9999999999999AuLL);
  v18 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76710, &qword_26478ABC8);
  sub_264785304();
  sub_2646819D8(v8, type metadata accessor for SafetyCacheMapView.Annotation);
}

void sub_26467F0B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  v44 = sub_264783E24();
  v13 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783E04();
  sub_26468121C(a1, v12, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
  sub_26468121C(a2, v6, type metadata accessor for SafetyCacheMapView.Annotation);
  v16 = sub_264783E14();
  v17 = sub_2647859F4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v46 = v43;
    *v18 = 136315651;
    sub_26468121C(v12, v10, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
    v19 = sub_264785764();
    v21 = v20;
    sub_2646819D8(v12, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
    v22 = sub_2646DF234(v19, v21, &v46);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_2646DF234(0x4270614D6E65706FLL, 0xED00006E6F747475, &v46);
    *(v18 + 22) = 2085;
    v45 = *(v6 + 8);
    type metadata accessor for CLLocationCoordinate2D(0);
    v23 = sub_264785764();
    v25 = v24;
    sub_2646819D8(v6, type metadata accessor for SafetyCacheMapView.Annotation);
    v26 = sub_2646DF234(v23, v25, &v46);

    *(v18 + 24) = v26;
    _os_log_impl(&dword_264605000, v16, v17, "#SelectionPreservingSafetyCacheMapContentView, %s, %s: Open location: %{sensitive}s in maps.", v18, 0x20u);
    v27 = v43;
    swift_arrayDestroy();
    MEMORY[0x266740650](v27, -1, -1);
    MEMORY[0x266740650](v18, -1, -1);
  }

  else
  {

    sub_2646819D8(v6, type metadata accessor for SafetyCacheMapView.Annotation);
    sub_2646819D8(v12, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
  }

  (*(v13 + 8))(v15, v44);
  v28 = *(a2 + 8);
  v29 = *(a2 + 16);
  v30 = [objc_allocWithZone(MEMORY[0x277CD4F00]) initWithCoordinate_];
  if (*a2)
  {
    v31 = [*a2 postalAddress];
    if (v31)
    {
      v32 = v31;
      v33 = [objc_allocWithZone(MEMORY[0x277CD4F00]) initWithCoordinate:v31 postalAddress:{v28, v29}];

      v30 = v33;
    }
  }

  v34 = [objc_allocWithZone(MEMORY[0x277CD4E80]) initWithPlacemark_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767F0, &unk_26478AD08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2647889C0;
  *(inited + 32) = sub_264785724();
  *(inited + 40) = v36;
  v37 = [objc_opt_self() valueWithMKCoordinate_];
  *(inited + 72) = sub_264659B70(0, &qword_27FF76820, 0x277CCAE60);
  *(inited + 48) = v37;
  v38 = sub_264785724();
  v39 = MEMORY[0x277D83E88];
  *(inited + 80) = v38;
  *(inited + 88) = v40;
  *(inited + 120) = v39;
  *(inited + 96) = 0;
  *(inited + 128) = sub_264785724();
  *(inited + 136) = v41;
  *(inited + 168) = MEMORY[0x277D839B0];
  *(inited + 144) = 1;
  sub_264655958(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75E70, &qword_264789800);
  swift_arrayDestroy();
  v42 = sub_264785604();

  [v34 openInMapsWithLaunchOptions_];
}

uint64_t sub_26467F6B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_264785274();
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76800, &qword_26478AD20) + 36);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76818, &qword_26478AD28) + 28);
  v5 = *MEMORY[0x277CE1048];
  v6 = sub_2647852B4();
  (*(*(v6 - 8) + 104))(&v3[v4], v5, v6);
  result = swift_getKeyPath();
  *v3 = result;
  *a1 = v2;
  return result;
}

void sub_26467F79C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  v41 = sub_264783E24();
  v13 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783E04();
  sub_26468121C(a1, v12, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
  sub_26468121C(a2, v6, type metadata accessor for SafetyCacheMapView.Annotation);
  v16 = sub_264783E14();
  v17 = sub_2647859F4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = v40;
    *v18 = 136315650;
    sub_26468121C(v12, v10, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
    v19 = sub_264785764();
    v21 = v20;
    sub_2646819D8(v12, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
    v22 = sub_2646DF234(v19, v21, &v43);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264795440, &v43);
    *(v18 + 22) = 2080;
    v42 = *(v6 + 8);
    type metadata accessor for CLLocationCoordinate2D(0);
    v23 = sub_264785764();
    v25 = v24;
    sub_2646819D8(v6, type metadata accessor for SafetyCacheMapView.Annotation);
    v26 = sub_2646DF234(v23, v25, &v43);

    *(v18 + 24) = v26;
    _os_log_impl(&dword_264605000, v16, v17, "#SelectionPreservingSafetyCacheMapContentView, %s, %s: Open navigation: %s in maps.", v18, 0x20u);
    v27 = v40;
    swift_arrayDestroy();
    MEMORY[0x266740650](v27, -1, -1);
    MEMORY[0x266740650](v18, -1, -1);
  }

  else
  {

    sub_2646819D8(v6, type metadata accessor for SafetyCacheMapView.Annotation);
    sub_2646819D8(v12, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
  }

  (*(v13 + 8))(v15, v41);
  v28 = *(a2 + 8);
  v29 = *(a2 + 16);
  v30 = [objc_allocWithZone(MEMORY[0x277CD4F00]) initWithCoordinate_];
  if (*a2)
  {
    v31 = [*a2 postalAddress];
    if (v31)
    {
      v32 = v31;
      v33 = [objc_allocWithZone(MEMORY[0x277CD4F00]) initWithCoordinate:v31 postalAddress:{v28, v29}];

      v30 = v33;
    }
  }

  v34 = [objc_allocWithZone(MEMORY[0x277CD4E80]) initWithPlacemark_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767F0, &unk_26478AD08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2647889E0;
  *(inited + 32) = sub_264785724();
  *(inited + 40) = v36;
  v37 = sub_264785724();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v37;
  *(inited + 56) = v38;
  sub_264655958(inited);
  swift_setDeallocating();
  sub_26460CD50(inited + 32, &qword_27FF75E70, &qword_264789800);
  v39 = sub_264785604();

  [v34 openInMapsWithLaunchOptions_];
}

uint64_t sub_26467FCF0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_264783B94();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_264785704();
  MEMORY[0x28223BE20](v3 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  sub_264785754();
  sub_264613FC4();
  result = sub_264784E44();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_26467FE68@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0);
  v4 = MEMORY[0x28223BE20](v3);
  v36[0] = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v39 = v36 - v6;
  v7 = sub_264783E24();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767D0, &qword_26478AC98);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v36 - v14;
  v16 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo(0);
  MEMORY[0x28223BE20](v16);
  v18 = (v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36[1] = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v18);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);
  sub_2647852F4();
  v19 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  if (!(*(*(v19 - 8) + 48))(v15, 1, v19))
  {
    v33 = v15[24];
    sub_26460CD50(v15, &qword_27FF766A8, &unk_26478AA80);
    if (v33 > 2)
    {
      v20 = v9;
      if ((v33 - 4) < 2)
      {
        goto LABEL_3;
      }

      v35 = v18 + v16[7];
    }

    else
    {
      v20 = v9;
      if (v33)
      {
        v22 = v39;
        if (v33 == 1)
        {
          v34 = v16[5];
        }

        else
        {
          v34 = v16[6];
        }

        sub_26460CCE8(v18 + v34, a1, &qword_27FF767D0, &qword_26478AC98);
        goto LABEL_5;
      }

      v35 = v18;
    }

    sub_26460CCE8(v35, a1, &qword_27FF767D0, &qword_26478AC98);
    goto LABEL_4;
  }

  sub_26460CD50(v15, &qword_27FF766A8, &unk_26478AA80);
  v20 = v9;
LABEL_3:
  v21 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
LABEL_4:
  v22 = v39;
LABEL_5:
  sub_26460CCE8(a1, v12, &qword_27FF767D0, &qword_26478AC98);
  v23 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  if ((*(*(v23 - 8) + 48))(v12, 1, v23) == 1)
  {
    sub_26460CD50(v12, &qword_27FF767D0, &qword_26478AC98);
    sub_264783E04();
    sub_26468121C(v1, v22, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
    v24 = sub_264783E14();
    v25 = sub_2647859F4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v40 = v27;
      *v26 = 136315394;
      sub_26468121C(v22, v36[0], type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
      v28 = sub_264785764();
      v30 = v29;
      sub_2646819D8(v22, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
      v31 = sub_2646DF234(v28, v30, &v40);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_2646DF234(0xD00000000000001DLL, 0x8000000264795420, &v40);
      _os_log_impl(&dword_264605000, v24, v25, "#SelectionPreservingSafetyCacheMapContentView, %s, %s: unexpectedly found a nil location info.", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v27, -1, -1);
      MEMORY[0x266740650](v26, -1, -1);
    }

    else
    {

      sub_2646819D8(v22, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
    }

    (*(v37 + 8))(v20, v38);
    return sub_2646819D8(v18, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo);
  }

  else
  {
    sub_2646819D8(v18, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo);
    return sub_26460CD50(v12, &qword_27FF767D0, &qword_26478AC98);
  }
}

uint64_t sub_2646804C4@<X0>(uint64_t *a1@<X8>)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  MEMORY[0x28223BE20](v1 - 8);
  v29 = &v29 - v2;
  v3 = sub_264783B94();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_264785704();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767D0, &qword_26478AC98);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v29 - v10);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  sub_26467FE68(&v29 - v12);
  sub_26460CCE8(v13, v11, &qword_27FF767D0, &qword_26478AC98);
  v14 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  v15 = *(*(v14 - 8) + 48);
  if (v15(v11, 1, v14) == 1)
  {
    sub_26460CD50(v11, &qword_27FF767D0, &qword_26478AC98);
    sub_264785694();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    v18 = sub_264785754();
    v20 = v19;
  }

  else
  {
    v18 = *v11;
    v20 = v11[1];

    sub_2646819D8(v11, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo);
  }

  sub_26460CCE8(v13, v8, &qword_27FF767D0, &qword_26478AC98);
  if (v15(v8, 1, v14) == 1)
  {
    sub_26460CD50(v13, &qword_27FF767D0, &qword_26478AC98);
    result = sub_26460CD50(v8, &qword_27FF767D0, &qword_26478AC98);
    countAndFlagsBits = 0;
    object = 0;
  }

  else
  {
    v24 = *(v8 + 2);
    v25 = &v8[*(v14 + 24)];
    v26 = v29;
    sub_26460CCE8(v25, v29, &qword_27FF756B8, &qword_26478AC90);
    sub_2646B8AC0(v24, v26, v35);
    if (v36)
    {
      v31 = v35[0];
      v32 = v35[1];
      *&v33[0] = v36;
      *(v33 + 8) = v37;
      *(&v33[1] + 8) = v38;
      *(&v33[2] + 1) = v39;
      v27 = SafetyCacheDetailedAddressFormatter.formattedString()();
      countAndFlagsBits = v27._countAndFlagsBits;
      object = v27._object;
      sub_26460CD50(v13, &qword_27FF767D0, &qword_26478AC98);
      v34[2] = v33[0];
      v34[3] = v33[1];
      v34[4] = v33[2];
      v34[0] = v31;
      v34[1] = v32;
      sub_264681A38(v34);
    }

    else
    {
      sub_26460CD50(v13, &qword_27FF767D0, &qword_26478AC98);
      countAndFlagsBits = 0;
      object = 0;
    }

    result = sub_2646819D8(v8, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo);
  }

  v28 = v30;
  *v30 = v18;
  v28[1] = v20;
  v28[2] = countAndFlagsBits;
  v28[3] = object;
  return result;
}

uint64_t sub_26468095C@<X0>(uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_264613FC4();

  v6 = sub_264784E44();
  v8 = v7;
  v10 = v9;
  sub_264784CC4();
  v11 = sub_264784E24();
  v13 = v12;
  v15 = v14;

  sub_26460ECC4(v6, v8, v10 & 1);

  sub_264785204();
  v16 = sub_264784DE4();
  v18 = v17;
  LOBYTE(v8) = v19;

  sub_26460ECC4(v11, v13, v15 & 1);

  v20 = sub_264784E14();
  v50 = v21;
  v51 = v20;
  v23 = v22;
  v25 = v24;
  sub_26460ECC4(v16, v18, v8 & 1);

  if (a4)
  {

    v26 = sub_264784E44();
    v28 = v27;
    v30 = v29;
    sub_264784D74();
    v31 = sub_264784E24();
    v47 = v23;
    v33 = v32;
    v49 = v25;
    v35 = v34;

    sub_26460ECC4(v26, v28, v30 & 1);

    sub_264785204();
    v36 = sub_264784DE4();
    v38 = v37;
    LOBYTE(v28) = v39;
    v41 = v40;

    v42 = v35 & 1;
    v25 = v49;
    v43 = v33;
    v23 = v47;
    sub_26460ECC4(v31, v43, v42);

    v44 = v28 & 1;
    sub_26460C474(v36, v38, v28 & 1);
  }

  else
  {
    v36 = 0;
    v38 = 0;
    v44 = 0;
    v41 = 0;
  }

  v45 = v23 & 1;
  sub_26460C474(v51, v50, v45);

  sub_26466D538(v36, v38, v44, v41);
  sub_26466D57C(v36, v38, v44, v41);
  *a5 = v51;
  *(a5 + 8) = v50;
  *(a5 + 16) = v45;
  *(a5 + 24) = v25;
  *(a5 + 32) = v36;
  *(a5 + 40) = v38;
  *(a5 + 48) = v44;
  *(a5 + 56) = v41;
  sub_26466D57C(v36, v38, v44, v41);
  sub_26460ECC4(v51, v50, v45);
}

__n128 sub_264680C5C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = sub_264784714();
  sub_26468095C(v3, v7);
  *&v6[55] = v7[3];
  *&v6[39] = v7[2];
  *&v6[23] = v7[1];
  *&v6[7] = v7[0];
  *(a1 + 33) = *&v6[16];
  result = *&v6[32];
  *(a1 + 49) = *&v6[32];
  *(a1 + 65) = *&v6[48];
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v6[63];
  *(a1 + 17) = *v6;
  return result;
}

uint64_t sub_264680D14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}