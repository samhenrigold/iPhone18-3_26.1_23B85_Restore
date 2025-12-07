id TCPContactStore()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = TCPContactStore_contactStore;
  if (!TCPContactStore_contactStore)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v2 = objc_alloc_init(MEMORY[0x277CBDAC0]);
    [v2 setIncludeIncludeManagedAppleIDs:1];
    v3 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v2];
    v4 = TCPContactStore_contactStore;
    TCPContactStore_contactStore = v3;

    v5 = CFAbsoluteTimeGetCurrent();
    v6 = CSLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 134217984;
      v9 = (v5 - Current) * 1000.0;
      _os_log_impl(&dword_243B1E000, v6, OS_LOG_TYPE_INFO, "Time to create CNContactStore: %fms", &v8, 0xCu);
    }

    v0 = TCPContactStore_contactStore;
  }

  return v0;
}

id CSCNAutocompleteSearchControllerHeaderView(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 headerView];
  }

  else
  {
    v2 = objc_alloc_init(MEMORY[0x277D75D18]);
  }

  v3 = v2;

  return v3;
}

void CSSetCNAutocompleteSearchControllerHeaderView(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v4 setHeaderView:v3];
  }
}

void sub_243B20984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *CSCKSharingSummaryStringFromOptionsGroups()
{
  v0 = CKSharingSummaryStringFromOptionsGroups();
  if ([v0 length])
  {
    v1 = v0;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;

  return v1;
}

uint64_t sub_243B22144()
{
  v1 = *v0;
  sub_243B70CBC();
  MEMORY[0x245D49D10](v1);
  return sub_243B70CEC();
}

uint64_t sub_243B221B8(uint64_t a1)
{
  v2 = *v1;
  sub_243B70CBC();
  MEMORY[0x245D49D10](v2);
  return sub_243B70CEC();
}

uint64_t sub_243B22228@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_243B22234(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_243B29D54(v5, v7) & 1;
}

uint64_t sub_243B22290(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_243B2A354(v5, v7) & 1;
}

uint64_t static SharingOptionsObservableModel.UserAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_243B70C6C()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_243B70C6C()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243B2238C(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (sub_243B70C6C()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_243B70C6C()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243B2247C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_243B2253C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_243B2268C(v1, v2);
}

uint64_t sub_243B2257C()
{
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t type metadata accessor for SharingOptionsObservableModel(uint64_t a1)
{
  result = qword_27EDA1E60;
  if (!qword_27EDA1E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243B2268C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 16) == a1 && v5 == a2;
      if (v6 || (sub_243B70C6C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAEC();
}

uint64_t sub_243B227F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
}

uint64_t (*sub_243B2287C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  *v4 = v1;
  swift_getKeyPath();
  sub_243B6FB1C();

  v4[7] = sub_243B2242C(v4);
  return sub_243B229B4;
}

void sub_243B22A10(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  v7 = *(v3 + 56);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = *(v3 + 64);
  sub_243B22C04(v4, v5, v6, v7);
}

void sub_243B22AE0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *&v5 = *a1;
  *(&v5 + 1) = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  sub_243B22C04(v5, v1, v2, v3);
  sub_243B22C48(&v5);
}

void sub_243B22B34(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = *(v1 + 64);
  sub_243B22C04(v3, v4, v5, v6);
}

void sub_243B22C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_243B22C48(__int128 *a1)
{
  v2 = a1[1];
  v12 = *a1;
  v13 = v2;
  v14 = *(a1 + 32);
  swift_beginAccess();
  v3 = *(v1 + 48);
  v15[0] = *(v1 + 32);
  v15[1] = v3;
  v16 = *(v1 + 64);
  sub_243B2E06C(v15, v11, &qword_27EDA1DF0, &qword_243B71F40);
  v4 = sub_243B2ACE0(v15, &v12);
  sub_243B2E620(v15, &qword_27EDA1DF0, &qword_243B71F40);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[0] = v1;
    sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
    sub_243B6FAEC();
    sub_243B2E620(&v12, &qword_27EDA1DF0, &qword_243B71F40);
  }

  else
  {
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    v8 = *(v1 + 48);
    v9 = *(v1 + 56);
    v10 = v13;
    *(v1 + 32) = v12;
    *(v1 + 48) = v10;
    *(v1 + 64) = v14;
    sub_243B2B0B0(v6, v7, v8, v9);
  }
}

void sub_243B22DF8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a2 + 16);
  *(a1 + 32) = *a2;
  *(a1 + 48) = v8;
  *(a1 + 64) = *(a2 + 32);
  sub_243B2E06C(a2, &v9, &qword_27EDA1DF0, &qword_243B71F40);
  sub_243B2B0B0(v4, v5, v6, v7);
}

uint64_t (*sub_243B22EA8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  *v4 = v1;
  swift_getKeyPath();
  sub_243B6FB1C();

  v4[7] = sub_243B229C0(v4);
  return sub_243B22FE0;
}

__n128 sub_243B2303C@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  swift_beginAccess();
  result = *(v3 + 72);
  *a2 = result;
  return result;
}

double sub_243B23120()
{
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  swift_beginAccess();
  return *(v0 + 72);
}

uint64_t sub_243B231D4(double a1, double a2)
{
  result = swift_beginAccess();
  if (*(v2 + 72) == a1 && *(v2 + 80) == a2)
  {
    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
    sub_243B6FAEC();
  }

  return result;
}

uint64_t sub_243B23308(uint64_t a1, double a2, double a3)
{
  result = swift_beginAccess();
  *(a1 + 72) = a2;
  *(a1 + 80) = a3;
  return result;
}

uint64_t (*sub_243B23360(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  *v4 = v1;
  swift_getKeyPath();
  sub_243B6FB1C();

  v4[7] = sub_243B22FEC(v4);
  return sub_243B23498;
}

uint64_t sub_243B234F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_243B235E4()
{
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  swift_beginAccess();
}

uint64_t sub_243B2369C(unint64_t a1)
{
  swift_beginAccess();

  v4 = sub_243B283D0(v3, a1);

  if (v4)
  {
    *(v1 + 88) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
    sub_243B6FAEC();
  }
}

uint64_t sub_243B237E4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 88) = a2;
}

uint64_t (*sub_243B2384C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  *v4 = v1;
  swift_getKeyPath();
  sub_243B6FB1C();

  v4[7] = sub_243B234A4(v4);
  return sub_243B23984;
}

void sub_243B23990(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_243B6FB0C();

  free(v3);
}

uint64_t sub_243B23A24()
{
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAFC();
}

uint64_t sub_243B23AC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  *a2 = *(v3 + 152);
}

uint64_t sub_243B23BA0(uint64_t a1)
{
  if (sub_243B28620(*(v1 + 152), a1))
  {
    *(v1 + 152) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
    sub_243B6FAEC();
  }
}

uint64_t sub_243B23CE4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  v3 = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlert;
  swift_beginAccess();
  return sub_243B2E06C(v5 + v3, a1, &qword_27EDA1E00, &unk_243B73660);
}

uint64_t sub_243B23DBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_243B2E06C(a2, &v9 - v5, &qword_27EDA1E00, &unk_243B73660);
  v7 = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlert;
  swift_beginAccess();
  sub_243B2E0D4(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t sub_243B23ED4()
{
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAFC();
}

uint64_t sub_243B23F80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  *a2 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__allGroups);
}

uint64_t sub_243B24060(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__allGroups;
  if (sub_243B28620(*(v1 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__allGroups), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
    sub_243B6FAEC();
  }
}

uint64_t sub_243B241C0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  return *(v2 + *a2);
}

uint64_t sub_243B24260@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  *a2 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__shouldValidateWithAlert);
  return result;
}

uint64_t sub_243B24360(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
    sub_243B6FAEC();
  }

  return result;
}

id sub_243B24464()
{
  type metadata accessor for SharingOptionsViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27EDA1D68 = result;
  return result;
}

uint64_t *SharingOptionsObservableModel.__allocating_init(collaborationOptionsGroups:layoutMargins:userDidChangeOption:contentSizeDidChange:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, double a6, double a7, double a8, double a9)
{
  swift_allocObject();
  v18 = sub_243B2B740(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  sub_243B2BFCC(a4, a5);
  sub_243B2BFCC(a2, a3);
  return v18;
}

uint64_t *SharingOptionsObservableModel.init(collaborationOptionsGroups:layoutMargins:userDidChangeOption:contentSizeDidChange:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, double a6, double a7, double a8, double a9)
{
  v13 = sub_243B2B740(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  sub_243B2BFCC(a4, a5);
  sub_243B2BFCC(a2, a3);
  return v13;
}

unint64_t sub_243B245D8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x245D49BC0](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject options];
      sub_243B2E534(0, &qword_27EDA1F58, 0x277CDC6C8);
      v8 = sub_243B7089C();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_243B70C0C();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_243B70C0C();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_243B70C0C();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_243B70B8C();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_243B70C0C();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_243B2E680(&qword_27EDA1F98, &qword_27EDA1F90, &qword_243B724E0, MEMORY[0x277D83988]);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F90, &qword_243B724E0);
              v19 = sub_243B66E0C(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

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
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_243B70C0C();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_243B2496C(uint64_t *a1, id *a2)
{
  v3 = *a2;
  v4 = [*a2 requiredOptionsIdentifiers];
  v5 = sub_243B7089C();

  v6 = [v3 identifier];
  v7 = sub_243B7082C();
  v9 = v8;

  if (v7 == sub_243B7082C() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_243B70C6C();

    if ((v12 & 1) == 0)
    {

      goto LABEL_9;
    }
  }

  v13 = *(v5 + 16);

  if (!v13)
  {
    v24 = [v3 identifier];
    v25 = sub_243B7082C();
    v17 = v26;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1FA0, &qword_243B74F40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_243B71EC0;
    *(inited + 32) = sub_243B7082C();
    *(inited + 40) = v28;
    v29 = sub_243B2B180(inited);
    swift_setDeallocating();
    sub_243B2E8B0(inited + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *a1;
    v22 = v29;
    v23 = v25;
    goto LABEL_11;
  }

LABEL_9:
  v14 = [v3 identifier];
  v15 = sub_243B7082C();
  v17 = v16;

  v18 = [v3 requiredOptionsIdentifiers];
  v19 = sub_243B7089C();

  v20 = sub_243B2B180(v19);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *a1;
  v22 = v20;
  v23 = v15;
LABEL_11:
  sub_243B28F2C(v22, v23, v17, isUniquelyReferenced_nonNull_native);

  *a1 = v31;
  return result;
}

uint64_t sub_243B24C04()
{
  sub_243B6FADC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t *SharingOptionsObservableModel.__allocating_init(collaborationOptionsGroups:userDidChangeOption:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_243B2BFDC(a1, a2, a3);
  sub_243B2BFCC(a2, a3);
  return v6;
}

uint64_t *SharingOptionsObservableModel.init(collaborationOptionsGroups:userDidChangeOption:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_243B2BFDC(a1, a2, a3);
  sub_243B2BFCC(a2, a3);
  return v5;
}

uint64_t sub_243B24D68()
{
  sub_243B6FADC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t *SharingOptionsObservableModel.__allocating_init(collaborationShareOptions:layoutMargins:userDidChangeOption:contentSizeDidChange:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, double a6, double a7, double a8, double a9)
{
  v12 = sub_243B2C694(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  sub_243B2BFCC(a2, a3);

  return v12;
}

uint64_t sub_243B24E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, unint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  sub_243B2E534(0, &qword_27EDA2F30, 0x277CDC6D0);
  v15 = sub_243B7088C();
  v16 = CSCKSharingSummaryStringFromOptionsGroups();

  v17 = a6 >> 62;
  if (v16)
  {
    if (v17)
    {
      sub_243B2E534(0, &qword_27EDA1F20, 0x277CDC6A8);

      sub_243B70BFC();
    }

    else
    {

      sub_243B70C7C();
      sub_243B2E534(0, &qword_27EDA1F20, 0x277CDC6A8);
    }

    v18 = objc_allocWithZone(MEMORY[0x277CDC6E0]);
    sub_243B2E534(0, &qword_27EDA1F20, 0x277CDC6A8);
    v19 = sub_243B7088C();

    [v18 initWithOptionsGroups:v19 summary:v16];
  }

  else if (a8)
  {
    v24 = a4;
    if (v17)
    {
      sub_243B2E534(0, &qword_27EDA1F20, 0x277CDC6A8);

      sub_243B70BFC();
    }

    else
    {

      sub_243B70C7C();
      sub_243B2E534(0, &qword_27EDA1F20, 0x277CDC6A8);
    }

    v20 = objc_allocWithZone(MEMORY[0x277CDC6E0]);
    sub_243B2E534(0, &qword_27EDA1F20, 0x277CDC6A8);
    v21 = sub_243B7088C();

    v16 = sub_243B7080C();
    [v20 initWithOptionsGroups:v21 summary:v16];

    a4 = v24;
  }

  else
  {
    if (v17)
    {
      sub_243B2E534(0, &qword_27EDA1F20, 0x277CDC6A8);

      sub_243B70BFC();
    }

    else
    {

      sub_243B70C7C();
      sub_243B2E534(0, &qword_27EDA1F20, 0x277CDC6A8);
    }

    v22 = objc_allocWithZone(MEMORY[0x277CDC6E0]);
    sub_243B2E534(0, &qword_27EDA1F20, 0x277CDC6A8);
    v16 = sub_243B7088C();

    [v22 initWithOptionsGroups_];
  }

  if (a9)
  {
    a9(a1, a2, a3, a4, a5 & 1);
  }

  return MEMORY[0x2821F97D8]();
}

uint64_t *SharingOptionsObservableModel.__allocating_init(collaborationShareOptions:userDidChangeOption:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243B2C694(a1, a2, a3, 0, 0, 0.0, 0.0, 0.0, 0.0);
  sub_243B2BFCC(a2, a3);

  return v6;
}

uint64_t sub_243B25260(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (v5 && (*(v2 + 16) == a1 ? (v6 = v5 == a2) : (v6 = 0), v6 || (sub_243B70C6C() & 1) != 0))
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
    sub_243B6FAEC();
  }
}

id sub_243B253BC()
{
  v1 = sub_243B6FB9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v18 = v0;
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  swift_beginAccess();
  v5 = *(v0 + 24);
  if (v5)
  {
    v6 = *(v0 + 16);
    v7 = objc_opt_self();

    v8 = sub_243B7080C();
    v9 = [v7 _applicationIconImageForBundleIdentifier_format_];

    if (v9)
    {

      return v9;
    }

    sub_243B6FB7C();

    v11 = sub_243B6FB8C();
    v12 = sub_243B709CC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315138;
      v15 = sub_243B40EA8(v6, v5, &v17);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_243B1E000, v11, v12, "Failed to get appIcon for %s", v13, 0xCu);
      v16 = __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x245D4A570](v14, -1, -1, v16);
      MEMORY[0x245D4A570](v13, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);
  }

  return [objc_allocWithZone(MEMORY[0x277D755B8]) init];
}

void sub_243B25684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, __int128 *a8)
{
  v9 = v8;
  v98 = a4;
  v96 = a3;
  v97 = a2;
  v95 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  MEMORY[0x28223BE20](v14 - 8);
  v93 = &v81[-v15];
  v16 = type metadata accessor for AlertViewModelButton(0);
  v90 = *(v16 - 1);
  MEMORY[0x28223BE20](v16);
  v94 = &v81[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v81[-v19];
  v21 = a8[1];
  v112 = *a8;
  v113 = v21;
  v114 = a8[2];
  v115 = *(a8 + 48);
  swift_getKeyPath();
  v22 = v9 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel___observationRegistrar;
  *&v108 = v9;
  v91 = sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  v92 = v22;
  sub_243B6FAFC();

  if (*(v9 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__shouldValidateWithAlert) != 1)
  {
    goto LABEL_14;
  }

  if (sub_243B7082C() == a6 && v23 == a7)
  {
  }

  else
  {
    v24 = sub_243B70C6C();

    if ((v24 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  *&v108 = v95;
  *(&v108 + 1) = v97;
  *&v109 = v96;
  *(&v109 + 1) = v98;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA1F10, &qword_243B72438);
  MEMORY[0x245D496D0](&v99, v25);
  v26 = v99;
  v27 = v100;
  if (v26 != sub_243B7082C() || v27 != v28)
  {
    v29 = sub_243B70C6C();

    if (v29)
    {
      goto LABEL_10;
    }

LABEL_14:
    v108 = v112;
    v109 = v113;
    v110 = v114;
    v111 = v115;
    v104 = v95;
    v105 = v97;
    v106 = v96;
    v107 = v98;
    sub_243B2E06C(&v112, &v99, &qword_27EDA1F00, &qword_243B723D8);

    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA1F10, &qword_243B72438);
    MEMORY[0x245D496D0](&v99, v75);
    v76 = v99;
    v77 = v100;
    v99 = a6;
    v100 = a7;
    v101 = v76;
    v102 = v77;
    v103 = a5 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F00, &qword_243B723D8);
    sub_243B7069C();
    v78 = v109;
    v79 = v110;

    sub_243B2B0B0(v78, *(&v78 + 1), v79, *(&v79 + 1));
    return;
  }

LABEL_10:
  v89 = v20;
  sub_243B700CC();
  if (qword_27EDA1D60 != -1)
  {
    swift_once();
  }

  v30 = qword_27EDA1D68;
  v31 = qword_27EDA1D68;
  v87 = v30;
  v88 = v31;
  v84 = sub_243B703AC();
  v83 = v32;
  v82 = v33;
  v35 = v34;
  v36 = v16[6];
  v37 = v89;
  sub_243B6FC8C();
  v38 = sub_243B6FCBC();
  v39 = *(v38 - 8);
  v85 = *(v39 + 56);
  v86 = v39 + 56;
  v85(v37 + v36, 0, 1, v38);
  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  *(v41 + 16) = v40;
  v42 = v113;
  *(v41 + 24) = v112;
  *(v41 + 40) = v42;
  *(v41 + 56) = v114;
  *(v41 + 72) = v115;
  *(v41 + 80) = a6;
  *(v41 + 88) = a7;
  sub_243B2E06C(&v112, &v108, &qword_27EDA1F00, &qword_243B723D8);

  sub_243B6FABC();
  v43 = v37 + v16[5];
  v44 = v83;
  *v43 = v84;
  *(v43 + 8) = v44;
  *(v43 + 16) = v82 & 1;
  *(v43 + 24) = v35;
  v45 = (v37 + v16[7]);
  *v45 = sub_243B2EC1C;
  v45[1] = v41;
  sub_243B700CC();
  v46 = sub_243B703AC();
  v48 = v47;
  LOBYTE(v35) = v49;
  v87 = v50;
  v51 = v16[6];
  v52 = v94;
  sub_243B6FCAC();
  v85(&v52[v51], 0, 1, v38);
  v53 = swift_allocObject();
  swift_weakInit();
  v54 = swift_allocObject();
  *(v54 + 2) = v53;
  v55 = v97;
  *(v54 + 3) = v95;
  *(v54 + 4) = v55;
  v56 = v98;
  *(v54 + 5) = v96;
  *(v54 + 6) = v56;

  sub_243B6FABC();
  v57 = &v52[v16[5]];
  *v57 = v46;
  *(v57 + 1) = v48;
  v58 = v52;
  v57[16] = v35 & 1;
  *(v57 + 3) = v87;
  v59 = &v52[v16[7]];
  *v59 = sub_243B2E1F8;
  v59[1] = v54;
  v98 = sub_243B6F9FC();
  v61 = v60;
  v62 = sub_243B6F9FC();
  v64 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F08, &qword_243B723E0);
  v65 = *(v90 + 72);
  v66 = (*(v90 + 80) + 32) & ~*(v90 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_243B71ED0;
  v68 = v67 + v66;
  sub_243B2DF64(v37, v68, type metadata accessor for AlertViewModelButton);
  sub_243B2DF64(v58, v68 + v65, type metadata accessor for AlertViewModelButton);
  v69 = v93;
  sub_243B6FABC();
  v70 = type metadata accessor for AlertViewModel(0);
  v71 = (v69 + v70[5]);
  *v71 = v98;
  v71[1] = v61;
  v72 = (v69 + v70[6]);
  *v72 = v62;
  v72[1] = v64;
  *(v69 + v70[7]) = v67;
  (*(*(v70 - 1) + 56))(v69, 0, 1, v70);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *&v108 = v9;
  sub_243B6FAEC();

  sub_243B2E620(v69, &qword_27EDA1E00, &unk_243B73660);
  v74 = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlertBool;
  if (*(v9 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlertBool) == 1)
  {
    sub_243B2E010(v58);
    sub_243B2E010(v89);
    *(v9 + v74) = 1;
  }

  else
  {
    v80 = swift_getKeyPath();
    MEMORY[0x28223BE20](v80);
    *&v108 = v9;
    sub_243B6FAEC();

    sub_243B2E010(v58);
    sub_243B2E010(v89);
  }
}

uint64_t sub_243B2616C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_243B7082C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA1F10, &qword_243B72438);
    return sub_243B7069C();
  }

  return result;
}

void sub_243B26218(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v7 = v6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  MEMORY[0x28223BE20](v14 - 8);
  v83 = &v72[-v15];
  v16 = type metadata accessor for AlertViewModelButton(0);
  v80 = *(v16 - 1);
  MEMORY[0x28223BE20](v16);
  v79 = &v72[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v84 = &v72[-v19];
  v20 = a6[1];
  v95 = *a6;
  v96 = v20;
  v97 = a6[2];
  v98 = *(a6 + 48);
  swift_getKeyPath();
  v21 = v7 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel___observationRegistrar;
  *&v91 = v7;
  v81 = sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  v82 = v21;
  sub_243B6FAFC();

  if (*(v7 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__shouldValidateWithAlert) != 1)
  {
    goto LABEL_14;
  }

  if (sub_243B7082C() == a4 && v22 == a5)
  {
  }

  else
  {
    v23 = sub_243B70C6C();

    if ((v23 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if (sub_243B7082C() != a1 || v24 != a2)
  {
    v25 = sub_243B70C6C();

    if (v25)
    {
      goto LABEL_10;
    }

LABEL_14:
    v91 = v95;
    v92 = v96;
    v93 = v97;
    v94 = v98;
    v86 = a4;
    v87 = a5;
    v88 = a1;
    v89 = a2;
    v90 = a3 & 1;
    sub_243B2E06C(&v95, v85, &qword_27EDA1F00, &qword_243B723D8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F00, &qword_243B723D8);
    sub_243B7069C();
    v69 = v92;
    v70 = v93;

    sub_243B2B0B0(v69, *(&v69 + 1), v70, *(&v70 + 1));
    return;
  }

LABEL_10:
  sub_243B700CC();
  if (qword_27EDA1D60 != -1)
  {
    swift_once();
  }

  v78 = qword_27EDA1D68;
  v75 = sub_243B703AC();
  v74 = v26;
  v73 = v27;
  v29 = v28;
  v30 = v16[6];
  v31 = v84;
  sub_243B6FC8C();
  v32 = sub_243B6FCBC();
  v33 = *(v32 - 8);
  v76 = *(v33 + 56);
  v77 = v33 + 56;
  v76(&v31[v30], 0, 1, v32);
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  v36 = v96;
  *(v35 + 24) = v95;
  *(v35 + 40) = v36;
  *(v35 + 56) = v97;
  *(v35 + 72) = v98;
  *(v35 + 80) = a4;
  *(v35 + 88) = a5;
  sub_243B2E06C(&v95, &v91, &qword_27EDA1F00, &qword_243B723D8);

  sub_243B6FABC();
  v37 = &v31[v16[5]];
  v38 = v74;
  *v37 = v75;
  *(v37 + 1) = v38;
  v37[16] = v73 & 1;
  *(v37 + 3) = v29;
  v39 = &v31[v16[7]];
  *v39 = sub_243B2DF0C;
  v39[1] = v35;
  sub_243B700CC();
  v74 = sub_243B703AC();
  v41 = v40;
  LOBYTE(v34) = v42;
  v75 = v43;
  v44 = v16[6];
  v45 = v79;
  sub_243B6FCAC();
  v76((v45 + v44), 0, 1, v32);
  v46 = swift_allocObject();
  swift_weakInit();
  v47 = swift_allocObject();
  *(v47 + 16) = v46;
  v48 = v96;
  *(v47 + 24) = v95;
  *(v47 + 40) = v48;
  *(v47 + 56) = v97;
  *(v47 + 72) = v98;
  *(v47 + 80) = a4;
  *(v47 + 88) = a5;
  sub_243B2E06C(&v95, &v91, &qword_27EDA1F00, &qword_243B723D8);

  sub_243B6FABC();
  v49 = v45 + v16[5];
  *v49 = v74;
  *(v49 + 8) = v41;
  *(v49 + 16) = v34 & 1;
  *(v49 + 24) = v75;
  v50 = (v45 + v16[7]);
  *v50 = sub_243B2DF38;
  v50[1] = v47;
  v51 = sub_243B6F9FC();
  v77 = v52;
  v53 = sub_243B6F9FC();
  v55 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F08, &qword_243B723E0);
  v56 = *(v80 + 72);
  v57 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_243B71ED0;
  v59 = v58 + v57;
  sub_243B2DF64(v31, v59, type metadata accessor for AlertViewModelButton);
  v60 = v59 + v56;
  v61 = v45;
  sub_243B2DF64(v45, v60, type metadata accessor for AlertViewModelButton);
  v62 = v83;
  sub_243B6FABC();
  v63 = type metadata accessor for AlertViewModel(0);
  v64 = (v62 + v63[5]);
  v65 = v77;
  *v64 = v51;
  v64[1] = v65;
  v66 = (v62 + v63[6]);
  *v66 = v53;
  v66[1] = v55;
  *(v62 + v63[7]) = v58;
  (*(*(v63 - 1) + 56))(v62, 0, 1, v63);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *&v91 = v7;
  sub_243B6FAEC();

  sub_243B2E620(v62, &qword_27EDA1E00, &unk_243B73660);
  v68 = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlertBool;
  if (*(v7 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlertBool) == 1)
  {
    sub_243B2E010(v61);
    sub_243B2E010(v84);
    *(v7 + v68) = 1;
  }

  else
  {
    v71 = swift_getKeyPath();
    MEMORY[0x28223BE20](v71);
    *&v91 = v7;
    sub_243B6FAEC();

    sub_243B2E010(v61);
    sub_243B2E010(v84);
  }
}

void sub_243B26C14(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v8 = a2[1];
    v14 = *a2;
    v15 = v8;
    v16 = a2[2];
    v17 = *(a2 + 48);
    v12[7] = a3;
    v12[8] = a4;
    v12[9] = sub_243B7082C();
    v12[10] = v9;
    v13 = 1;
    sub_243B2E06C(a2, v12, &qword_27EDA1F00, &qword_243B723D8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F00, &qword_243B723D8);
    sub_243B7069C();
    v10 = v15;
    v11 = v16;

    sub_243B2B0B0(v10, *(&v10 + 1), v11, *(&v11 + 1));
  }
}

uint64_t sub_243B26D2C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v21 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v21 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v21);
          ++v11;
        }

        while (!v7);
        v11 = v21;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      sub_243B70CBC();

      sub_243B7084C();
      v15 = sub_243B70CEC();
      v16 = -1 << *(a1 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v18 = ~v16;
      while (1)
      {
        v19 = (*(a1 + 48) + 16 * v17);
        v20 = *v19 == v14 && v19[1] == v13;
        if (v20 || (sub_243B70C6C() & 1) != 0)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

id sub_243B26F08(void *a1, uint64_t a2)
{
  v4 = a1[6];
  v5 = *(v4 + 16);
  if (v5)
  {
    v17[7] = MEMORY[0x277D84F90];
    sub_243B70BCC();
    sub_243B2E534(0, &qword_27EDA1F58, 0x277CDC6C8);
    v6 = (v4 + 32);
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      v19 = *(v6 + 24);
      v18[1] = v8;
      v18[2] = v9;
      v18[0] = v7;
      sub_243B2E57C(v18, v17);

      sub_243B28090(v18, a2);
      sub_243B70BAC();
      sub_243B70BDC();
      sub_243B70BEC();
      sub_243B70BBC();
      v6 = (v6 + 56);
      --v5;
    }

    while (v5);

    if (a1[3])
    {
      goto LABEL_5;
    }
  }

  else
  {

    if (a1[3])
    {
LABEL_5:

      v10 = sub_243B7080C();

      goto LABEL_8;
    }
  }

  v10 = 0;
LABEL_8:
  v11 = sub_243B7080C();
  if (a1[5])
  {

    v12 = sub_243B7080C();
    sub_243B2E5B4(a1);
  }

  else
  {
    sub_243B2E5B4(a1);
    v12 = 0;
  }

  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_243B2E534(0, &qword_27EDA1F58, 0x277CDC6C8);
  v14 = sub_243B7088C();

  v15 = [v13 initWithTitle:v10 identifier:v11 footer:v12 options:v14];

  return v15;
}

id sub_243B2713C(void *a1, uint64_t a2)
{
  v4 = a1;
  v5 = a1[6];
  v28 = v5;
  v6 = *(v5 + 16);
  if (!v6)
  {

    v2 = 0;
    if (v4[3])
    {
LABEL_11:

      v14 = sub_243B7080C();

LABEL_14:
      v15 = sub_243B7080C();
      if (v4[5])
      {

        v16 = sub_243B7080C();
        sub_243B2E5B4(v4);
      }

      else
      {
        sub_243B2E5B4(v4);
        v16 = 0;
      }

      v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      sub_243B2E534(0, &qword_27EDA1F58, 0x277CDC6C8);
      v18 = sub_243B7088C();

      v19 = [v17 initWithTitle:v14 identifier:v15 footer:v16 options:v18 selectedOptionIdentifierIndex:v2];

      return v19;
    }

LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  v27 = MEMORY[0x277D84F90];

  sub_243B70BCC();
  v7 = *(v5 + 16);
  result = sub_243B2E534(0, &qword_27EDA1F58, 0x277CDC6C8);
  v21 = v7;
  if (!v7)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    sub_243B2E620(&v28, &qword_27EDA1F60, &unk_243B724B0);

    v4 = v20;
    if (v20[3])
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v2 = 0;
  v9 = 0;
  v10 = v5 + 32;
  while (v9 < *(v5 + 16))
  {
    v11 = *(v10 + 48);
    v13 = *(v10 + 16);
    v12 = *(v10 + 32);
    v23[0] = *v10;
    v23[1] = v13;
    v23[2] = v12;
    v24 = v11;
    v25[0] = v23[0];
    v25[1] = v13;
    v25[2] = v12;
    v26 = v11;
    v30 = v11;
    v29[1] = v13;
    v29[2] = v12;
    v29[0] = v23[0];
    sub_243B2E57C(v23, v22);
    sub_243B2E57C(v25, v22);

    if (!v30)
    {
      v2 = v9;
    }

    sub_243B28090(v29, a2);
    sub_243B70BAC();
    sub_243B70BDC();
    sub_243B70BEC();
    result = sub_243B70BBC();
    if (v6 - 1 == v9)
    {
      goto LABEL_10;
    }

    ++v9;
    v10 += 56;
    if (v21 == v9)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t *SharingOptionsObservableModel.deinit()
{

  sub_243B2B0B0(v0[4], v0[5], v0[6], v0[7]);

  sub_243B2B0B0(v0[12], v0[13], v0[14], v0[15]);

  sub_243B2E620(v0 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlert, &qword_27EDA1E00, &unk_243B73660);

  sub_243B2BFCC(*(v0 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_userDidChangeOption), *(v0 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_userDidChangeOption + 8));
  sub_243B2BFCC(*(v0 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_contentSizeDidChange), *(v0 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_contentSizeDidChange + 8));
  v1 = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel___observationRegistrar;
  v2 = sub_243B6FB3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SharingOptionsObservableModel.__deallocating_deinit()
{
  SharingOptionsObservableModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_243B2758C(uint64_t a1)
{
  swift_getKeyPath();
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  swift_getKeyPath();
  sub_243B6FAFC();
}

uint64_t sub_243B27664(uint64_t a1)
{
  v1 = sub_243B7078C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_243B707AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    swift_getKeyPath();
    v28 = v6;
    v26 = v1;
    aBlock[0] = v10;
    sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
    v27 = v5;
    sub_243B6FAFC();

    swift_beginAccess();
    v11 = *(v10 + 32);
    v12 = *(v10 + 40);
    v13 = *(v10 + 48);
    v14 = *(v10 + 56);
    v15 = *(v10 + 96);
    v16 = *(v10 + 104);
    v17 = *(v10 + 112);
    v18 = *(v10 + 120);
    *(v10 + 96) = v11;
    *(v10 + 104) = v12;
    *(v10 + 112) = v13;
    *(v10 + 120) = v14;
    v19 = *(v10 + 64);
    v25 = v2;
    *(v10 + 128) = v19;
    sub_243B22C04(v11, v12, v13, v14);
    sub_243B2B0B0(v15, v16, v17, v18);
    swift_getKeyPath();
    aBlock[0] = v10;
    sub_243B6FAFC();

    swift_beginAccess();
    *(v10 + 136) = *(v10 + 72);
    sub_243B2E534(0, &qword_27EDA1F30, 0x277D85C78);
    v20 = sub_243B70A0C();
    v21 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_243B2E494;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B2804C;
    aBlock[3] = &block_descriptor;
    v22 = _Block_copy(aBlock);

    sub_243B7079C();
    v29 = MEMORY[0x277D84F90];
    sub_243B2CC20(&qword_27EDA1F38, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F40, &qword_243B724A8);
    sub_243B2E680(&qword_27EDA1F48, &qword_27EDA1F40, &qword_243B724A8, MEMORY[0x277D83970]);
    v23 = v26;
    sub_243B70B2C();
    MEMORY[0x245D49A60](0, v8, v4, v22);
    _Block_release(v22);

    (*(v25 + 8))(v4, v23);
    (*(v28 + 8))(v8, v27);
  }

  return result;
}

double sub_243B27AC0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
    sub_243B6FAFC();

    swift_beginAccess();
    if (*(v3 + 72) != *(v3 + 136) || *(v3 + 80) != *(v3 + 144))
    {
      swift_getKeyPath();
      sub_243B6FAFC();

      if (*(v3 + 72) != 0.0 || *(v3 + 80) != 0.0)
      {
        v5 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_contentSizeDidChange);
        if (v5)
        {
          swift_getKeyPath();
          sub_243B6FAFC();

          v5(v6, *(v3 + 72), *(v3 + 80));
        }
      }
    }

    v7 = *(v3 + 104);
    if (v7)
    {
      v8 = *(v3 + 96);
      v9 = *(v3 + 112);
      v10 = *(v3 + 120);
      v16 = *(v3 + 128);
      swift_getKeyPath();

      sub_243B6FAFC();

      swift_beginAccess();
      v11 = *(v3 + 40);
      if (v11 && ((v12 = *(v3 + 48), v13 = *(v3 + 56), v14 = *(v3 + 64), *(v3 + 32) == v8) && v11 == v7 || (sub_243B70C6C() & 1) != 0))
      {
        if (v12 == v9 && v13 == v10)
        {
          sub_243B2B0B0(v8, v7, v9, v10);
          if (((v16 ^ v14) & 1) == 0)
          {
LABEL_21:

            swift_beginAccess();
            if (swift_weakLoadStrong())
            {
              sub_243B6FADC();
            }

            return result;
          }
        }

        else
        {
          v15 = sub_243B70C6C();
          sub_243B2B0B0(v8, v7, v9, v10);
          if ((v15 & 1) != 0 && ((v16 ^ v14) & 1) == 0)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        sub_243B2B0B0(v8, v7, v9, v10);
      }
    }

    sub_243B27E1C();
    goto LABEL_21;
  }

  return result;
}

void sub_243B27E1C()
{
  v1 = v0;
  swift_getKeyPath();
  v15 = v0;
  sub_243B2CC20(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  swift_beginAccess();
  v2 = *(v0 + 40);
  if (v2)
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 48);
    v5 = *(v0 + 56);
    v6 = *(v0 + 64);
    swift_getKeyPath();

    sub_243B6FAFC();

    v15 = v3;
    v16 = v2;
    v17 = v4;
    v18 = v5;
    v19 = v6;
    sub_243B22C04(v3, v2, v4, v5);

    v8 = sub_243B2CFCC(v7, &v15);

    sub_243B2B0B0(v15, v16, v17, v18);

    sub_243B24060(v9);
    v10 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_optionsDependency);
    v11 = sub_243B2B218(v8, *(v1 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_optionsDependency));
    v12 = sub_243B2D474(v8, v10);

    sub_243B23BA0(v11);

    sub_243B2369C(v13);
    v14 = *(v1 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_userDidChangeOption);
    if (v14)
    {
      v14(v3, v2, v4, v5, v6 & 1, v12);
    }

    sub_243B2B0B0(v3, v2, v4, v5);
  }
}

double sub_243B2804C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

id sub_243B28090(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  if (*(a2 + 16))
  {

    v6 = sub_243B66CDC(v4, v5);
    v8 = v7;

    if (v8)
    {
      v9 = *(*(a2 + 56) + 8 * v6);

      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = sub_243B32884(*(v9 + 16), 0);
        v12 = sub_243B29BFC(&v21, v11 + 4, v10, v9);
        sub_243B2E614(v21);
        if (v12 == v10)
        {
          goto LABEL_7;
        }

        __break(1u);
      }
    }
  }

LABEL_7:
  v13 = sub_243B7080C();
  v14 = sub_243B7080C();
  if (a1[5])
  {

    v15 = sub_243B7080C();
  }

  else
  {
    v15 = 0;
  }

  sub_243B2E5E4(a1);
  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v17 = *(a1 + 48) == 0;
  v18 = sub_243B7088C();

  v19 = [v16 initWithTitle:v13 identifier:v14 subtitle:v15 selected:v17 requiredOptionsIdentifiers:v18];

  return v19;
}

uint64_t sub_243B28254(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    for (i = 0; ; i += 56)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v7 = *(a1 + i + 72);
      v8 = *(a2 + i + 48);
      v9 = *(a2 + i + 56);
      v11 = *(a2 + i + 64);
      v10 = *(a2 + i + 72);
      v18 = *(a2 + i + 80);
      v19 = *(a1 + i + 80);
      v16 = *(a2 + i + 81);
      v17 = *(a1 + i + 81);
      if ((*(a1 + i + 32) != *(a2 + i + 32) || *(a1 + i + 40) != *(a2 + i + 40)) && (sub_243B70C6C() & 1) == 0)
      {
        break;
      }

      if ((v4 != v8 || v5 != v9) && (sub_243B70C6C() & 1) == 0)
      {
        break;
      }

      if (v7)
      {
        if (!v10)
        {
          return 0;
        }

        if (v6 == v11 && v7 == v10)
        {
          result = 0;
        }

        else
        {
          v13 = sub_243B70C6C();
          result = 0;
          if ((v13 & 1) == 0)
          {
            return result;
          }
        }
      }

      else
      {
        result = 0;
        if (v10)
        {
          return result;
        }
      }

      if (v19 != v18 || ((v17 ^ v16) & 1) != 0)
      {
        return result;
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_243B283D0(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_243B2E534(0, &qword_27EDA2F30, 0x277CDC6D0);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x245D49BC0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x245D49BC0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_243B70A2C();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_243B70A2C();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_243B70C0C();
  }

  result = sub_243B70C0C();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_243B28620(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v33 = *(result + 16);
  v34 = 0;
  v29 = a2 + 32;
  v30 = result + 32;
  while (v34 != v33)
  {
    v3 = v30 + (v34 << 6);
    result = *v3;
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);
    v7 = *(v3 + 40);
    v8 = *(v3 + 56);
    v9 = v29 + (v34 << 6);
    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    v13 = *(v9 + 32);
    v12 = *(v9 + 40);
    v35 = *(v9 + 48);
    v36 = *(v3 + 48);
    v14 = *(v9 + 56);
    if (*v3 != *v9 || *(v3 + 8) != *(v9 + 8))
    {
      result = sub_243B70C6C();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    if (v5)
    {
      if (!v10)
      {
        return 0;
      }

      if (v4 != v11 || v5 != v10)
      {
        result = sub_243B70C6C();
        if ((result & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v10)
    {
      return 0;
    }

    if (v7)
    {
      if (!v12)
      {
        return 0;
      }

      if (v6 != v13 || v7 != v12)
      {
        result = sub_243B70C6C();
        if ((result & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v12)
    {
      return 0;
    }

    v32 = v14;
    v16 = v35;
    v15 = v36;
    v17 = *(v36 + 16);
    if (v17 != *(v35 + 16))
    {
      return 0;
    }

    v31 = v8;
    if (v17)
    {
      v18 = v36 == v35;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v19 = 0;
      while (v17)
      {
        v20 = *(v15 + v19 + 48);
        v21 = *(v15 + v19 + 56);
        v22 = *(v15 + v19 + 64);
        v23 = *(v15 + v19 + 72);
        v38 = *(v15 + v19 + 81);
        v24 = *(v16 + v19 + 48);
        v25 = *(v16 + v19 + 56);
        v27 = *(v16 + v19 + 64);
        v26 = *(v16 + v19 + 72);
        v39 = *(v16 + v19 + 80);
        v40 = *(v15 + v19 + 80);
        v37 = *(v16 + v19 + 81);
        if ((*(v15 + v19 + 32) != *(v16 + v19 + 32) || *(v15 + v19 + 40) != *(v16 + v19 + 40)) && (sub_243B70C6C() & 1) == 0 || (v20 != v24 || v21 != v25) && (sub_243B70C6C() & 1) == 0)
        {
          return 0;
        }

        if (v23)
        {
          if (!v26)
          {
            return 0;
          }

          if (v22 == v27 && v23 == v26)
          {
            result = 0;
          }

          else
          {
            v28 = sub_243B70C6C();
            result = 0;
            if ((v28 & 1) == 0)
            {
              return result;
            }
          }
        }

        else
        {
          result = 0;
          if (v26)
          {
            return result;
          }
        }

        if (v40 != v39 || ((v38 ^ v37) & 1) != 0)
        {
          return result;
        }

        v19 += 56;
        --v17;
        v16 = v35;
        v15 = v36;
        if (!v17)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
      break;
    }

LABEL_29:
    if (v31 != v32)
    {
      return 0;
    }

    result = 1;
    if (++v34 == v33)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_243B288E4(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x245D49990](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_243B28938(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x245D499A0](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

void *sub_243B289B8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_243B289E8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_243B289F8@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_243B28A04(uint64_t a1)
{
  sub_243B2CC20(&qword_27EDA1FD0, type metadata accessor for UILayoutPriority, &unk_243B72678);
  sub_243B2CC20(&qword_27EDA1FD8, type metadata accessor for UILayoutPriority, &unk_243B72618);
  return sub_243B70C4C();
}

uint64_t sub_243B28B34(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_243B70CBC();
  sub_243B7084C();
  v8 = sub_243B70CEC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_243B70C6C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_243B29478(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void sub_243B28C84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F80, &qword_243B724D0);
  v35 = v4;
  v6 = sub_243B70C2C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_243B70CBC();
      sub_243B7084C();
      v25 = sub_243B70CEC();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

uint64_t sub_243B28F2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_243B66CDC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_243B28C84(v16, a4 & 1);
      v11 = sub_243B66CDC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_243B70C9C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_243B290A8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void sub_243B290A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F80, &qword_243B724D0);
  v2 = *v0;
  v3 = sub_243B70C1C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_243B29218(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F88, &qword_243B724D8);
  v4 = sub_243B70B4C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_243B70CBC();
      sub_243B7084C();
      v21 = sub_243B70CEC();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_243B29478(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_243B29218(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_243B295F8();
      goto LABEL_16;
    }

    sub_243B29754(v8 + 1);
  }

  v10 = *v4;
  sub_243B70CBC();
  sub_243B7084C();
  v11 = sub_243B70CEC();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_243B70C6C() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_243B70C8C();
  __break(1u);
}

void sub_243B295F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F88, &qword_243B724D8);
  v2 = *v0;
  v3 = sub_243B70B3C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_243B29754(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F88, &qword_243B724D8);
  v4 = sub_243B70B4C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_243B70CBC();

      sub_243B7084C();
      v20 = sub_243B70CEC();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

char *sub_243B2998C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_243B299CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_243B299AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_243B29AD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_243B299CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2240, &qword_243B724C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_243B29AD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F68, &qword_243B72B50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_243B29BFC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_243B29D54(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_243B70C6C() & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_243B70C6C() & 1) == 0)
  {
    goto LABEL_20;
  }

  v6 = a1[5];
  v7 = *(a2 + 40);
  if (v6)
  {
    if (!v7 || (a1[4] != *(a2 + 32) || v6 != v7) && (sub_243B70C6C() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v7)
  {
LABEL_20:
    v8 = 0;
    return v8 & 1;
  }

  if (*(a1 + 48) != *(a2 + 48))
  {
    goto LABEL_20;
  }

  v8 = *(a1 + 49) ^ *(a2 + 49) ^ 1;
  return v8 & 1;
}

uint64_t sub_243B29E24(void *a1)
{
  v2 = sub_243B6FB9C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v47 - v8;
  v10 = [a1 identifier];
  v11 = sub_243B7082C();
  v13 = v12;

  v15 = v11 == sub_243B7082C() && v13 == v14;
  v16 = &unk_278DE4000;
  if (v15)
  {
    goto LABEL_8;
  }

  v17 = sub_243B70C6C();

  if ((v17 & 1) == 0)
  {
    v18 = [a1 identifier];
    v19 = sub_243B7082C();
    v21 = v20;

    if (v19 == sub_243B7082C() && v21 == v22)
    {
LABEL_8:

      goto LABEL_9;
    }

    v38 = sub_243B70C6C();

    if ((v38 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

LABEL_9:
  v23 = [a1 selectedOptionIdentifier];
  v24 = sub_243B7082C();
  v26 = v25;

  if (sub_243B7082C() != v24 || v27 != v26)
  {
    v28 = sub_243B70C6C();

    if (v28)
    {
      goto LABEL_13;
    }

    if (sub_243B7082C() == v24 && v37 == v26)
    {

LABEL_24:
      sub_243B6FB7C();
      v40 = a1;
      v41 = sub_243B6FB8C();
      v42 = sub_243B709EC();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138412290;
        *(v43 + 4) = v40;
        *v44 = v40;
        v45 = v40;
        _os_log_impl(&dword_243B1E000, v41, v42, "SharingOptionsObservableModel converted mixed allow others to invite to on: %@", v43, 0xCu);
        sub_243B2E620(v44, &unk_27EDA1F70, &qword_243B724C0);
        MEMORY[0x245D4A570](v44, -1, -1);
        MEMORY[0x245D4A570](v43, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
      v35 = sub_243B7082C();
      goto LABEL_16;
    }

    v39 = sub_243B70C6C();

    v16 = &unk_278DE4000;
    if (v39)
    {
      goto LABEL_24;
    }

LABEL_27:
    v46 = [a1 v16[98]];
    v35 = sub_243B7082C();

    return v35;
  }

LABEL_13:

  sub_243B6FB7C();
  v29 = a1;
  v30 = sub_243B6FB8C();
  v31 = sub_243B709EC();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v29;
    *v33 = v29;
    v34 = v29;
    _os_log_impl(&dword_243B1E000, v30, v31, "SharingOptionsObservableModel converted mixed permission to read-only: %@", v32, 0xCu);
    sub_243B2E620(v33, &unk_27EDA1F70, &qword_243B724C0);
    MEMORY[0x245D4A570](v33, -1, -1);
    MEMORY[0x245D4A570](v32, -1, -1);
  }

  (*(v3 + 8))(v9, v2);
  v35 = sub_243B7082C();
LABEL_16:
  sub_243B7082C();
  return v35;
}

uint64_t sub_243B2A354(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_243B70C6C() & 1) == 0)
  {
    goto LABEL_24;
  }

  v5 = a1[3];
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_24;
    }

    v7 = a1[2] == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_243B70C6C() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v6)
  {
    goto LABEL_24;
  }

  v8 = a1[5];
  v9 = *(a2 + 40);
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_22;
    }

LABEL_24:
    v10 = 0;
    return v10 & 1;
  }

  if (!v9 || (a1[4] != *(a2 + 32) || v8 != v9) && (sub_243B70C6C() & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_22:
  if ((sub_243B28254(a1[6], *(a2 + 48)) & 1) == 0)
  {
    goto LABEL_24;
  }

  v10 = *(a1 + 56) ^ *(a2 + 56) ^ 1;
  return v10 & 1;
}

char *sub_243B2A43C(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a1;
  if (a1 >> 62)
  {
LABEL_49:
    v59 = v6 & 0xFFFFFFFFFFFFFF8;
    v49 = a5;
    v50 = sub_243B70C0C();
    a5 = v49;
    v7 = v50;
    if (v50)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v59 = a1 & 0xFFFFFFFFFFFFFF8;
  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v8 = 0;
  v55 = a5;
  v56 = v6 & 0xC000000000000001;
  v53 = MEMORY[0x277D84F90];
  v57 = a4;
  do
  {
    for (i = v8; ; ++i)
    {
      if (v56)
      {
        v10 = MEMORY[0x245D49BC0](i, v6);
      }

      else
      {
        if (i >= *(v59 + 16))
        {
          goto LABEL_48;
        }

        v10 = *(v6 + 8 * i + 32);
      }

      v11 = v10;
      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      if (*a2)
      {
        v60 = [v10 isSelected] ^ 1;
        goto LABEL_40;
      }

      v12 = v7;
      v13 = v6;
      v14 = [v10 identifier];
      v15 = sub_243B7082C();
      v17 = v16;

      if (a4)
      {
        if (v15 == a3 && v17 == a4)
        {

          v20 = 0;
        }

        else
        {
          v19 = sub_243B70C6C();

          v20 = (v19 & 1) == 0;
        }
      }

      else
      {

        v20 = 1;
      }

      LOBYTE(v60) = v20;
      v21 = v55[1];
      if (!v21)
      {
        v6 = v13;
        v7 = v12;
LABEL_39:
        v8 = i + 1;
        goto LABEL_40;
      }

      v22 = *v55;

      v23 = [v11 identifier];
      v24 = sub_243B7082C();
      v26 = v25;

      if (v22 == v24 && v21 == v26)
      {

LABEL_6:

        v6 = v13;
        a4 = v57;
        v7 = v12;
        v8 = i + 1;
        goto LABEL_7;
      }

      v27 = sub_243B70C6C();

      if (v27)
      {

        goto LABEL_6;
      }

      v6 = v13;
      if (v22 == sub_243B7082C() && v21 == v28)
      {

        v7 = v12;
      }

      else
      {
        v29 = sub_243B70C6C();

        v7 = v12;
        if ((v29 & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      v30 = [v11 identifier];
      v31 = sub_243B7082C();
      v33 = v32;

      a4 = v57;
      v8 = i + 1;
      if (!v57)
      {

        goto LABEL_7;
      }

      if (v31 == a3 && v33 == v57)
      {
        break;
      }

      v34 = sub_243B70C6C();

      if (v34)
      {
        goto LABEL_40;
      }

LABEL_7:
      if (v8 == v7)
      {
        return v53;
      }
    }

LABEL_40:
    v35 = v11;
    v36 = [v35 identifier];
    v37 = sub_243B7082C();
    v61 = v38;

    v39 = [v35 title];
    v40 = sub_243B7082C();
    v52 = v41;

    v42 = [v35 subtitle];
    v43 = sub_243B7082C();
    v45 = v44;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_243B32540(0, *(v53 + 2) + 1, 1, v53);
    }

    v47 = *(v53 + 2);
    v46 = *(v53 + 3);
    if (v47 >= v46 >> 1)
    {
      v53 = sub_243B32540((v46 > 1), v47 + 1, 1, v53);
    }

    *(v53 + 2) = v47 + 1;
    v48 = &v53[56 * v47];
    *(v48 + 4) = v37;
    *(v48 + 5) = v61;
    *(v48 + 6) = v40;
    *(v48 + 7) = v52;
    *(v48 + 8) = v43;
    *(v48 + 9) = v45;
    v48[80] = v60;
    v48[81] = 1;
    a4 = v57;
  }

  while (v8 != v7);
  return v53;
}

uint64_t sub_243B2A91C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_243B6FB9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6FB7C();
  v8 = a1;
  v9 = sub_243B6FB8C();
  v10 = sub_243B709EC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_243B1E000, v9, v10, "SharingOptionsObservableModel init options: %@", v11, 0xCu);
    sub_243B2E620(v12, &unk_27EDA1F70, &qword_243B724C0);
    MEMORY[0x245D4A570](v12, -1, -1);
    MEMORY[0x245D4A570](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v45 = 0;
  v46 = 0;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  v15 = v14 == 0;
  if (v14)
  {
    v16 = v8;
    v17 = sub_243B29E24(v14);
    v19 = v18;
    v21 = v20;
    v14 = v22;

    v23 = 0;
    v45 = v21;
    v46 = v14;
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v21 = 0;
    v23 = 1;
  }

  v47 = v23;
  v24 = [v8 options];
  sub_243B2E534(0, &qword_27EDA1F58, 0x277CDC6C8);
  v25 = sub_243B7089C();

  v44[0] = sub_243B2A43C(v25, &v47, v17, v19, &v45);

  swift_bridgeObjectRelease_n();
  v26 = sub_243B7082C();
  v44[1] = v14;
  if (v14)
  {
    if (v21 == v26 && v14 == v27)
    {

LABEL_12:
      v15 = 1;
      goto LABEL_13;
    }

    v28 = sub_243B70C6C();

    if (v28)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

LABEL_13:
  v29 = v8;
  v30 = [v29 identifier];
  v31 = sub_243B7082C();
  v33 = v32;

  v34 = [v29 title];
  v35 = sub_243B7082C();
  v36 = v15;
  v38 = v37;

  v39 = [v29 footer];
  v40 = sub_243B7082C();
  v42 = v41;

  *a2 = v31;
  *(a2 + 8) = v33;
  *(a2 + 16) = v35;
  *(a2 + 24) = v38;
  *(a2 + 32) = v40;
  *(a2 + 40) = v42;
  *(a2 + 48) = v44[0];
  *(a2 + 56) = v36;
  return result;
}

uint64_t sub_243B2ACE0(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v9 = *a2;
  v8 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  v19 = *(a2 + 32);
  v20 = *(a1 + 32);
  if (v5)
  {
    if (v8)
    {
      v12 = v4 == v9 && v5 == v8;
      if (v12 || (sub_243B70C6C() & 1) != 0)
      {
        if (v7 == v11 && v6 == v10)
        {
          sub_243B2E06C(a1, v21, &qword_27EDA1DF0, &qword_243B71F40);
          sub_243B2E06C(a2, v21, &qword_27EDA1DF0, &qword_243B71F40);
          v14 = v20;
          sub_243B22C04(v4, v5, v7, v6);
          v15 = v19;
          sub_243B2B0B0(v9, v8, v7, v6);
        }

        else
        {
          v18 = sub_243B70C6C();
          sub_243B2E06C(a1, v21, &qword_27EDA1DF0, &qword_243B71F40);
          sub_243B2E06C(a2, v21, &qword_27EDA1DF0, &qword_243B71F40);
          v14 = v20;
          sub_243B22C04(v4, v5, v7, v6);
          v15 = v19;
          sub_243B2B0B0(v9, v8, v11, v10);
          if ((v18 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v16 = v14 ^ v15;
LABEL_23:

        sub_243B2B0B0(v4, v5, v7, v6);
        return v16 & 1;
      }

      sub_243B2E06C(a1, v21, &qword_27EDA1DF0, &qword_243B71F40);
      sub_243B2E06C(a2, v21, &qword_27EDA1DF0, &qword_243B71F40);
      sub_243B22C04(v4, v5, v7, v6);
      sub_243B2B0B0(v9, v8, v11, v10);
LABEL_22:
      v16 = 1;
      goto LABEL_23;
    }

    sub_243B2E06C(a1, v21, &qword_27EDA1DF0, &qword_243B71F40);
    sub_243B2E06C(a2, v21, &qword_27EDA1DF0, &qword_243B71F40);
    sub_243B22C04(v4, v5, v7, v6);
  }

  else
  {
    if (!v8)
    {
      sub_243B2E06C(a1, v21, &qword_27EDA1DF0, &qword_243B71F40);
      sub_243B2E06C(a2, v21, &qword_27EDA1DF0, &qword_243B71F40);
      sub_243B2B0B0(v4, 0, v7, v6);
      v16 = 0;
      return v16 & 1;
    }

    sub_243B2E06C(a1, v21, &qword_27EDA1DF0, &qword_243B71F40);
    sub_243B2E06C(a2, v21, &qword_27EDA1DF0, &qword_243B71F40);
  }

  sub_243B2B0B0(v4, v5, v7, v6);
  sub_243B2B0B0(v9, v8, v11, v10);
  v16 = 1;
  return v16 & 1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_243B2B0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_243B2B110()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  result = swift_beginAccess();
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  return result;
}

uint64_t sub_243B2B180(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x245D499D0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_243B28B34(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_243B2B218(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  v61 = v3;
  v63 = result;
  if (v3)
  {
    v4 = (result + 80);
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      v6 = *v4;
      v7 = *(*v4 + 16);
      v8 = *(v5 + 16);
      v9 = v8 + v7;
      if (__OFADD__(v8, v7))
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        return result;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v9 <= *(v5 + 24) >> 1)
      {
        if (*(v6 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v8 <= v9)
        {
          v10 = v8 + v7;
        }

        else
        {
          v10 = v8;
        }

        result = sub_243B32540(result, v10, 1, v5);
        v5 = result;
        if (*(v6 + 16))
        {
LABEL_14:
          if ((*(v5 + 24) >> 1) - *(v5 + 16) < v7)
          {
            goto LABEL_70;
          }

          swift_arrayInitWithCopy();

          if (v7)
          {
            v11 = *(v5 + 16);
            v12 = __OFADD__(v11, v7);
            v13 = v11 + v7;
            if (v12)
            {
              goto LABEL_71;
            }

            *(v5 + 16) = v13;
          }

          goto LABEL_4;
        }
      }

      if (v7)
      {
        goto LABEL_67;
      }

LABEL_4:
      v4 += 8;
      if (!--v3)
      {
        goto LABEL_19;
      }
    }
  }

  v5 = MEMORY[0x277D84F90];
LABEL_19:
  v14 = 0;
  v15 = *(v5 + 16);
  v16 = MEMORY[0x277D84F90];
LABEL_20:
  v17 = 56 * v14;
  while (v15 != v14)
  {
    if (v14 >= *(v5 + 16))
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    ++v14;
    v18 = v17 + 56;
    v19 = *(v5 + v17 + 80);
    v17 += 56;
    if (!v19)
    {
      v21 = *(v5 + v18 - 24);
      v20 = *(v5 + v18 - 16);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_243B32770(0, *(v16 + 16) + 1, 1, v16);
        v16 = result;
      }

      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_243B32770((v22 > 1), v23 + 1, 1, v16);
        v16 = result;
      }

      *(v16 + 16) = v23 + 1;
      v24 = v16 + 16 * v23;
      *(v24 + 32) = v21;
      *(v24 + 40) = v20;
      goto LABEL_20;
    }
  }

  v25 = sub_243B2B180(v16);

  v26 = v61;
  if (v61)
  {
    v27 = 0;
    v60 = v63 + 32;
    v59 = MEMORY[0x277D84F90];
    while (v27 < v26)
    {
      v28 = (v60 + (v27 << 6));
      *&v72[9] = *(v28 + 41);
      v29 = v28[1];
      v70 = *v28;
      v30 = v28[2];
      v71 = v29;
      *v72 = v30;
      v12 = __OFADD__(v27++, 1);
      if (v12)
      {
        goto LABEL_69;
      }

      v31 = *&v72[16];
      v32 = *(*&v72[16] + 16);
      result = sub_243B2E4FC(&v70, &v66);
      if (v32)
      {
        v33 = 0;
        v34 = MEMORY[0x277D84F90];
        do
        {
          v35 = v31 + 32 + 56 * v33;
          v36 = v33;
          while (1)
          {
            if (v36 >= *(v31 + 16))
            {
              __break(1u);
              goto LABEL_65;
            }

            v37 = *v35;
            v38 = *(v35 + 16);
            v39 = *(v35 + 32);
            v69 = *(v35 + 48);
            v67 = v38;
            v68 = v39;
            v66 = v37;
            if (!*(a2 + 16))
            {
              break;
            }

            v40 = v66;
            sub_243B2E57C(&v66, v65);
            v41 = sub_243B66CDC(v40, *(&v40 + 1));
            if ((v42 & 1) == 0)
            {
              goto LABEL_44;
            }

            v43 = *(*(a2 + 56) + 8 * v41);
            if (!*(v43 + 16))
            {
              goto LABEL_44;
            }

            v44 = sub_243B26D2C(v25, v43);

            if (v44)
            {
              goto LABEL_44;
            }

            ++v36;
            result = sub_243B2E5E4(&v66);
            v35 += 56;
            if (v32 == v36)
            {
              goto LABEL_51;
            }
          }

          sub_243B2E57C(&v66, v65);
LABEL_44:
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_243B32540(0, *(v34 + 16) + 1, 1, v34);
            v34 = result;
          }

          v46 = *(v34 + 16);
          v45 = *(v34 + 24);
          if (v46 >= v45 >> 1)
          {
            result = sub_243B32540((v45 > 1), v46 + 1, 1, v34);
            v34 = result;
          }

          v33 = v36 + 1;
          *(v34 + 16) = v46 + 1;
          v47 = v34 + 56 * v46;
          v48 = v66;
          v49 = v67;
          v50 = v68;
          *(v47 + 80) = v69;
          *(v47 + 48) = v49;
          *(v47 + 64) = v50;
          *(v47 + 32) = v48;
        }

        while (v32 - 1 != v36);
      }

      else
      {
        v34 = MEMORY[0x277D84F90];
      }

LABEL_51:
      v51 = v72[24];
      v52 = 1;
      if (!v72[24])
      {
        v52 = 2;
      }

      if (*(v34 + 16) >= v52)
      {
        v62 = *&v72[8];
        v64 = *v72;
        v53 = *(&v71 + 1);
        v58 = v71;
        v54 = v70;

        sub_243B2E5B4(&v70);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_243B32664(0, *(v59 + 16) + 1, 1, v59);
          v59 = result;
        }

        v56 = *(v59 + 16);
        v55 = *(v59 + 24);
        if (v56 >= v55 >> 1)
        {
          result = sub_243B32664((v55 > 1), v56 + 1, 1, v59);
          v59 = result;
        }

        *(v59 + 16) = v56 + 1;
        v57 = v59 + (v56 << 6);
        *(v57 + 32) = v54;
        *(v57 + 48) = v58;
        *(v57 + 56) = v53;
        *(v57 + 64) = v64;
        *(v57 + 72) = v62;
        *(v57 + 80) = v34;
        *(v57 + 88) = v51;
      }

      else
      {

        result = sub_243B2E5B4(&v70);
      }

      v26 = v61;
      if (v27 == v61)
      {
        goto LABEL_63;
      }
    }

    goto LABEL_68;
  }

  v59 = MEMORY[0x277D84F90];
LABEL_63:

  return v59;
}

uint64_t *sub_243B2B740(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, double a6, double a7, double a8, double a9)
{
  v84 = a3;
  v85 = a4;
  v83 = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F28, &qword_243B72490);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v80 - v18;
  *(v9 + 64) = 0;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 72) = 0;
  *(v9 + 80) = 0;
  *(v9 + 96) = 0u;
  *(v9 + 112) = 0u;
  *(v9 + 128) = 0;
  *(v9 + 136) = 0;
  *(v9 + 144) = 0;
  v20 = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlert;
  v21 = type metadata accessor for AlertViewModel(0);
  v22 = *(*(v21 - 8) + 56);
  v90 = v20;
  v22(v9 + v20, 1, 1, v21);
  *(v9 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlertBool) = 0;
  v23 = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__shouldValidateWithAlert;
  *(v9 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__shouldValidateWithAlert) = 0;
  v24 = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel___observationRegistrar;
  sub_243B6FB2C();
  *(v9 + 88) = a1;
  v88 = v9;
  v25 = (v9 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_layoutMargins);
  *v25 = a6;
  v25[1] = a7;
  v25[2] = a8;
  v25[3] = a9;

  v27 = 0;
  v28 = sub_243B245D8(v26);
  v29 = v28;
  v81 = v23;
  *&v96[0] = MEMORY[0x277D84F98];
  if (v28 >> 62)
  {
    goto LABEL_13;
  }

  v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v86 = a5;
  for (i = v19; v30; i = v19)
  {
    v89 = v24;
    v24 = 0;
    v19 = (v29 & 0xC000000000000001);
    a5 = v29 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v19)
      {
        v31 = MEMORY[0x245D49BC0](v24, v29);
      }

      else
      {
        if (v24 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v31 = *(v29 + 8 * v24 + 32);
      }

      v10 = v31;
      v32 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      *&v94[0] = v31;
      sub_243B2496C(v96, v94);

      ++v24;
      if (v32 == v30)
      {
        v33 = *&v96[0];
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    v30 = sub_243B70C0C();
    v86 = a5;
  }

  v33 = MEMORY[0x277D84F98];
LABEL_15:

  *(v88 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_optionsDependency) = v33;
  v82 = v33;
  if (a1 >> 62)
  {
    v34 = sub_243B70C0C();
    if (v34)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
LABEL_17:
      *&v94[0] = MEMORY[0x277D84F90];
      v24 = v34 & ~(v34 >> 63);

      sub_243B2998C(0, v24, 0);
      if (v34 < 0)
      {
        goto LABEL_61;
      }

      v24 = 0;
      v35 = *&v94[0];
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x245D49BC0](v24, a1);
        }

        else
        {
          v36 = *(a1 + 8 * v24 + 32);
        }

        sub_243B2A91C(v36, v96);
        *&v94[0] = v35;
        v38 = *(v35 + 16);
        v37 = *(v35 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_243B2998C((v37 > 1), v38 + 1, 1);
          v35 = *&v94[0];
        }

        ++v24;
        *(v35 + 16) = v38 + 1;
        v39 = (v35 + (v38 << 6));
        v40 = v96[0];
        v41 = v96[1];
        v42 = v97[0];
        *(v39 + 73) = *(v97 + 9);
        v39[3] = v41;
        v39[4] = v42;
        v39[2] = v40;
      }

      while (v34 != v24);

      goto LABEL_28;
    }
  }

  v35 = MEMORY[0x277D84F90];
LABEL_28:
  *(v88 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__allGroups) = v35;
  v43 = *(v35 + 16);

  v89 = v43;
  if (!v43)
  {
    goto LABEL_57;
  }

  v10 = 0;
  v44 = (v35 + 32);
  while (1)
  {
    if (v10 >= *(v35 + 16))
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);

      v76 = v88;

      sub_243B2B0B0(v76[4], v76[5], v76[6], v76[7]);

      sub_243B2B0B0(v76[12], v76[13], v76[14], v76[15]);
      sub_243B2E620(v76 + v90, &qword_27EDA1E00, &unk_243B73660);
      v77 = sub_243B6FB3C();
      (*(*(v77 - 8) + 8))(&v89[v76], v77);
      while (1)
      {
        type metadata accessor for SharingOptionsObservableModel(0);
        swift_deallocPartialClassInstance();
        __break(1u);

        v78 = v88;

        sub_243B2B0B0(v78[4], v78[5], v78[6], v78[7]);

        sub_243B2B0B0(v78[12], v78[13], v78[14], v78[15]);
        sub_243B2E620(v78 + v90, &qword_27EDA1E00, &unk_243B73660);
        v79 = sub_243B6FB3C();
        (*(*(v79 - 8) + 8))(v78 + v24, v79);
      }
    }

    v46 = v44[1];
    v45 = v44[2];
    v47 = *v44;
    *(v95 + 9) = *(v44 + 41);
    v94[0] = v47;
    v94[1] = v46;
    v95[0] = v45;
    v90 = *&v95[1];
    v48 = *(&v47 + 1);
    v24 = v47;
    if (v47 == sub_243B7082C() && v48 == v49)
    {
      break;
    }

    v24 = sub_243B70C6C();
    sub_243B2E4FC(v94, v92);

    if (v24)
    {
      goto LABEL_37;
    }

    ++v10;
    sub_243B2E5B4(v94);
    v44 += 4;
    if (v89 == v10)
    {
      goto LABEL_57;
    }
  }

  sub_243B2E4FC(v94, v92);

LABEL_37:
  v50 = *(v90 + 16);
  v51 = v90 + 32;
  v89 = *MEMORY[0x277CBC0B0];
  v52 = (v90 + 40);
  v10 = -v50;
  v53 = -1;
  while (1)
  {
    if (v10 + v53 == -1)
    {
      goto LABEL_54;
    }

    if (++v53 >= *(v90 + 16))
    {
      goto LABEL_59;
    }

    v24 = *(v52 - 1);
    v54 = *v52;
    if (v24 == sub_243B7082C() && v54 == v55)
    {
      break;
    }

    v52 += 7;
    v24 = sub_243B70C6C();

    if (v24)
    {
      goto LABEL_47;
    }
  }

LABEL_47:
  v57 = *(v90 + 16);
  if (!v57)
  {
LABEL_54:
    sub_243B2E5B4(v94);
    goto LABEL_57;
  }

  v58 = 0;
  v27 = *MEMORY[0x277CBC0A8];
  while (1)
  {
    if (v58 >= *(v90 + 16))
    {
      goto LABEL_60;
    }

    v60 = *(v51 + 16);
    v59 = *(v51 + 32);
    v61 = *v51;
    v93 = *(v51 + 48);
    v92[1] = v60;
    v92[2] = v59;
    v92[0] = v61;
    v10 = v93;
    v24 = *(&v61 + 1);
    if (v61 == sub_243B7082C() && v24 == v62)
    {
      break;
    }

    v63 = sub_243B70C6C();
    sub_243B2E57C(v92, v91);

    if (v63)
    {
      goto LABEL_56;
    }

    ++v58;
    sub_243B2E5E4(v92);
    v51 += 56;
    if (v57 == v58)
    {
      goto LABEL_54;
    }
  }

  sub_243B2E57C(v92, v91);

LABEL_56:
  sub_243B2E5B4(v94);
  sub_243B2E5E4(v92);
  *(v88 + v81) = v10 == 0;
LABEL_57:
  v64 = v88;
  v65 = (v88 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_userDidChangeOption);
  v66 = v83;
  v67 = v84;
  *v65 = v83;
  v65[1] = v67;
  v68 = (v64 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_contentSizeDidChange);
  v70 = v85;
  v69 = v86;
  *v68 = v85;
  v68[1] = v69;
  sub_243B2E364(v66, v67);
  sub_243B2E364(v70, v69);
  v71 = sub_243B2B218(v35, v82);

  v64[19] = v71;
  v72 = sub_243B7092C();
  v73 = i;
  (*(*(v72 - 8) + 56))(i, 1, 1, v72);
  v74 = swift_allocObject();
  v74[2] = 0;
  v74[3] = 0;
  v74[4] = v64;

  sub_243B3EF48(0, 0, v73, &unk_243B724F0, v74);

  return v64;
}

double sub_243B2BFCC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t *sub_243B2BFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a2;
  v59 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F28, &qword_243B72490);
  MEMORY[0x28223BE20](v5 - 8);
  v60 = &v57 - v6;
  *(v3 + 64) = 0;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 1) = 0u;
  v3[9] = 0;
  v3[10] = 0;
  *(v3 + 6) = 0u;
  *(v3 + 7) = 0u;
  *(v3 + 128) = 0;
  v3[17] = 0;
  v3[18] = 0;
  v7 = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlert;
  v8 = type metadata accessor for AlertViewModel(0);
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  *(v3 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlertBool) = 0;
  *(v3 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__shouldValidateWithAlert) = 0;
  sub_243B6FB2C();
  v3[11] = a1;
  v9 = (v3 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_layoutMargins);
  *v9 = 0u;
  v9[1] = 0u;

  v11 = sub_243B245D8(v10);
  v12 = v11;
  if (v11 >> 62)
  {
    goto LABEL_26;
  }

  v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v61 = a1;
  for (i = v3; v13; i = v3)
  {
    v14 = 0;
    v66 = v12 & 0xC000000000000001;
    v15 = MEMORY[0x277D84F98];
    v64 = v12;
    v65 = v12 & 0xFFFFFFFFFFFFFF8;
    v63 = v13;
    while (1)
    {
      if (v66)
      {
        v16 = MEMORY[0x245D49BC0](v14, v12);
      }

      else
      {
        if (v14 >= *(v65 + 16))
        {
          goto LABEL_23;
        }

        v16 = *(v12 + 8 * v14 + 32);
      }

      v17 = v16;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v67 = v14 + 1;
      v18 = [v16 identifier];
      v19 = sub_243B7082C();
      v21 = v20;

      v22 = [v17 requiredOptionsIdentifiers];
      v23 = sub_243B7089C();

      a1 = sub_243B2B180(v23);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v69[0] = v15;
      v3 = v15;
      v12 = sub_243B66CDC(v19, v21);
      v26 = v15[2];
      v27 = (v25 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        goto LABEL_24;
      }

      v29 = v25;
      if (v15[3] >= v28)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v15 = *&v69[0];
          if (v25)
          {
            goto LABEL_4;
          }
        }

        else
        {
          v3 = v69;
          sub_243B290A8();
          v15 = *&v69[0];
          if (v29)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_243B28C84(v28, isUniquelyReferenced_nonNull_native);
        v3 = *&v69[0];
        v30 = sub_243B66CDC(v19, v21);
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_43;
        }

        v12 = v30;
        v15 = *&v69[0];
        if (v29)
        {
LABEL_4:
          *(v15[7] + 8 * v12) = a1;

          goto LABEL_5;
        }
      }

      v15[(v12 >> 6) + 8] |= 1 << v12;
      v32 = (v15[6] + 16 * v12);
      *v32 = v19;
      v32[1] = v21;
      *(v15[7] + 8 * v12) = a1;
      v33 = v15[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_25;
      }

      v15[2] = v35;

LABEL_5:
      ++v14;
      v12 = v64;
      if (v67 == v63)
      {
        goto LABEL_28;
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
    v13 = sub_243B70C0C();
    v61 = a1;
  }

  v15 = MEMORY[0x277D84F98];
LABEL_28:

  v37 = v61;
  v36 = i;
  *(i + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_optionsDependency) = v15;
  if (!(v37 >> 62))
  {
    v19 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_30;
    }

LABEL_40:

    v39 = MEMORY[0x277D84F90];
LABEL_41:
    *(v36 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__allGroups) = v39;
    v47 = (v36 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_userDidChangeOption);
    v49 = v58;
    v48 = v59;
    *v47 = v58;
    v47[1] = v48;
    v50 = (v36 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_contentSizeDidChange);
    *v50 = 0;
    v50[1] = 0;

    sub_243B2E364(v49, v48);
    v51 = sub_243B2B218(v39, v15);

    v36[19] = v51;
    v52 = sub_243B7092C();
    v53 = v60;
    (*(*(v52 - 8) + 56))(v60, 1, 1, v52);
    v54 = swift_allocObject();
    v54[2] = 0;
    v54[3] = 0;
    v54[4] = v36;

    sub_243B3EF48(0, 0, v53, &unk_243B724A0, v54);

    return v36;
  }

  v19 = sub_243B70C0C();
  if (!v19)
  {
    goto LABEL_40;
  }

LABEL_30:
  v68 = MEMORY[0x277D84F90];
  v21 = v19 & ~(v19 >> 63);

  v3 = &v68;
  sub_243B2998C(0, v21, 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v38 = 0;
    v39 = v68;
    do
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x245D49BC0](v38, v37);
      }

      else
      {
        v40 = *(v37 + 8 * v38 + 32);
      }

      sub_243B2A91C(v40, v69);
      v68 = v39;
      v42 = *(v39 + 16);
      v41 = *(v39 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_243B2998C((v41 > 1), v42 + 1, 1);
        v39 = v68;
      }

      ++v38;
      *(v39 + 16) = v42 + 1;
      v43 = (v39 + (v42 << 6));
      v44 = v69[0];
      v45 = v69[1];
      v46 = v70[0];
      *(v43 + 73) = *(v70 + 9);
      v43[3] = v45;
      v43[4] = v46;
      v43[2] = v44;
    }

    while (v19 != v38);

    goto LABEL_41;
  }

  __break(1u);
LABEL_43:
  sub_243B70C9C();
  __break(1u);

  sub_243B2B0B0(v3[4], v3[5], v3[6], v3[7]);

  sub_243B2B0B0(v3[12], v3[13], v3[14], v3[15]);
  sub_243B2E620(v3 + v19, &qword_27EDA1E00, &unk_243B73660);
  v56 = sub_243B6FB3C();
  (*(*(v56 - 8) + 8))(v3 + v21, v56);
  type metadata accessor for SharingOptionsObservableModel(0);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t *sub_243B2C694(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, double a6, double a7, double a8, double a9)
{
  v56 = a2;
  v17 = sub_243B6FB9C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6FB7C();
  v21 = a1;
  v22 = sub_243B6FB8C();
  v23 = sub_243B709EC();

  if (os_log_type_enabled(v22, v23))
  {
    v52 = v17;
    v54 = a3;
    v55 = a4;
    v24 = a1;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v57 = v26;
    *v25 = 136315138;
    v53 = v24;
    if (v24)
    {
      v27 = [v21 description];
      v51 = v21;
      v28 = a5;
      v29 = v27;
      v30 = sub_243B7082C();
      v32 = v31;

      a5 = v28;
      v21 = v51;
    }

    else
    {
      v32 = 0xE500000000000000;
      v30 = 0x296C696E28;
    }

    v45 = sub_243B40EA8(v30, v32, &v57);

    *(v25 + 4) = v45;
    _os_log_impl(&dword_243B1E000, v22, v23, "SharingOptionsViewModel init options: %s", v25, 0xCu);
    v46 = __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x245D4A570](v26, -1, -1, v46);
    MEMORY[0x245D4A570](v25, -1, -1);

    (*(v18 + 8))(v20, v52);
    a3 = v54;
    a4 = v55;
    if (!v53)
    {
      goto LABEL_9;
    }
  }

  else
  {

    (*(v18 + 8))(v20, v17);
    if (!a1)
    {
LABEL_9:
      v38 = swift_allocObject();
      v38[2] = 0;
      v38[3] = 0;
      v47 = v56;
      v38[4] = v56;
      v38[5] = a3;
      sub_243B2E364(v47, a3);
      v41 = sub_243B2E2F0;
      goto LABEL_10;
    }
  }

  v33 = [v21 summary];
  v34 = sub_243B7082C();
  v36 = v35;

  v37 = v21;
  v38 = swift_allocObject();
  v38[2] = v34;
  v38[3] = v36;
  v39 = v56;
  v38[4] = v56;
  v38[5] = a3;
  sub_243B2E364(v39, a3);
  v40 = [v37 optionsGroups];
  v41 = sub_243B2EC5C;
  if (!v40)
  {
LABEL_10:
    v44 = v41;
    v43 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  v42 = v40;
  sub_243B2E534(0, &qword_27EDA2F30, 0x277CDC6D0);
  v43 = sub_243B7089C();

  v44 = sub_243B2EC5C;
LABEL_11:
  type metadata accessor for SharingOptionsObservableModel(0);
  swift_allocObject();
  v48 = sub_243B2B740(v43, v44, v38, a4, a5, a6, a7, a8, a9);
  sub_243B2BFCC(a4, a5);

  return v48;
}

uint64_t sub_243B2CA78(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_243B6FE6C();
  }

  else
  {
    sub_243B6FE0C();
  }

  return sub_243B6FE8C();
}

uint64_t sub_243B2CAE0(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_243B6FE6C();
    sub_243B6FE8C();
    sub_243B2CBD4();
  }

  else
  {
    sub_243B6FE0C();
    sub_243B6FE8C();
    sub_243B2CC20(&qword_27EDA1E30, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  }

  return swift_getWitnessTable();
}

unint64_t sub_243B2CBD4()
{
  result = qword_27EDA1E28;
  if (!qword_27EDA1E28)
  {
    sub_243B6FE6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA1E28);
  }

  return result;
}

uint64_t sub_243B2CC20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243B2CC68(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_243B7020C();

    return sub_243B6FE8C();
  }

  else
  {
    sub_243B6FECC();
    swift_getWitnessTable();
    sub_243B701BC();
    sub_243B6FE8C();
    sub_243B70B0C();
    swift_getWitnessTable();
    sub_243B6FECC();
    swift_getWitnessTable();
    sub_243B701BC();
    return sub_243B6FE8C();
  }
}

uint64_t sub_243B2CDCC(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_243B7020C();
    sub_243B6FE8C();
  }

  else
  {
    sub_243B6FECC();
    swift_getWitnessTable();
    sub_243B701BC();
    sub_243B6FE8C();
    sub_243B70B0C();
    swift_getWitnessTable();
    sub_243B6FECC();
    swift_getWitnessTable();
    sub_243B701BC();
    sub_243B6FE8C();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_243B2CFCC(uint64_t a1, unint64_t *a2)
{
  v2 = a1;
  v3 = a2[1];
  if (v3)
  {
    v4 = *(a1 + 16);
    v5 = MEMORY[0x277D84F90];
    if (v4)
    {
      v6 = *a2;
      v7 = a2[2];
      v62 = a2[3];
      v70 = MEMORY[0x277D84F90];
      sub_243B2998C(0, v4, 0);
      v9 = v7;
      v10 = 0;
      v48 = a1 + 32;
      v2 = v70;
      v44 = v4;
      v45 = v3;
      v43 = v6;
      v63 = v7;
      while (1)
      {
        v11 = (v48 + (v10 << 6));
        *&v69[25] = *(v11 + 41);
        v12 = v11[2];
        *v69 = v11[1];
        *&v69[16] = v12;
        v68 = *v11;
        v13 = v69[40];
        v14 = *&v69[32];
        v54 = *(&v12 + 1);
        v53 = *&v69[8];
        v51 = v10;
        v52 = v68;
        v50 = v69[40];
        v49 = *v69;
        if (__PAIR128__(v3, v6) == v68)
        {
          break;
        }

        v15 = v9;
        v16 = sub_243B70C6C();
        v9 = v15;
        if (v16)
        {
          break;
        }

        sub_243B2E4FC(&v68, v66);
LABEL_32:
        v70 = v2;
        v40 = *(v2 + 16);
        v39 = *(v2 + 24);
        v9 = v15;
        if (v40 >= v39 >> 1)
        {
          sub_243B2998C((v39 > 1), v40 + 1, 1);
          v9 = v15;
          v2 = v70;
        }

        v10 = v51 + 1;
        *(v2 + 16) = v40 + 1;
        v41 = v2 + (v40 << 6);
        *(v41 + 32) = v52;
        *(v41 + 48) = v49;
        *(v41 + 56) = v53;
        *(v41 + 72) = v54;
        *(v41 + 80) = v14;
        *(v41 + 88) = v50;
        if (v51 + 1 == v4)
        {
          return v2;
        }
      }

      v17 = v14[2];
      v15 = v9;
      if (v13)
      {
        if (v17)
        {
          sub_243B2E4FC(&v68, v66);
          v65 = v5;

          v46 = v2;
          sub_243B299AC(0, v17, 0);
          v18 = v14 + 4;
          v14 = v65;
          v19 = v15;
          do
          {
            v20 = *v18;
            v21 = *(v18 + 1);
            v22 = *(v18 + 2);
            v67 = *(v18 + 24);
            v66[1] = v21;
            v66[2] = v22;
            v66[0] = v20;
            LOBYTE(v23) = v67;
            v58 = *(&v22 + 1);
            v60 = v22;
            v55 = *(&v21 + 1);
            v56 = v21;
            v24 = v20;
            if (__PAIR128__(v62, v19) == v20 || (sub_243B70C6C() & 1) != 0)
            {
              v25 = 1;
              v23 = 1u >> (8 * v23);
            }

            else
            {
              v25 = HIBYTE(v67);
              sub_243B2E57C(v66, v64);
            }

            v65 = v14;
            v27 = v14[2];
            v26 = v14[3];
            if (v27 >= v26 >> 1)
            {
              sub_243B299AC((v26 > 1), v27 + 1, 1);
              v2 = v46;
              v14 = v65;
            }

            v14[2] = v27 + 1;
            v28 = &v14[7 * v27];
            *(v28 + 2) = v24;
            v28[6] = v56;
            v28[7] = v55;
            v28[8] = v60;
            v28[9] = v58;
            *(v28 + 80) = v23;
            *(v28 + 81) = v25;
            v18 += 7;
            --v17;
            v19 = v63;
          }

          while (v17);
          v15 = v63;
          v4 = v44;
          v3 = v45;
          v5 = MEMORY[0x277D84F90];
          v6 = v43;
          goto LABEL_31;
        }
      }

      else if (v17)
      {
        v47 = v2;
        sub_243B2E4FC(&v68, v66);
        *&v66[0] = v5;

        sub_243B299AC(0, v17, 0);
        v29 = v14 + 9;
        v14 = *&v66[0];
        v30 = v15;
        do
        {
          v31 = *(v29 - 5);
          v32 = *(v29 - 4);
          v33 = *(v29 - 2);
          v34 = *v29;
          v59 = *(v29 - 1);
          v61 = *(v29 - 3);
          v57 = (v31 != v30 || v62 != v32) && (sub_243B70C6C() & 1) == 0;
          *&v66[0] = v14;
          v37 = v14[2];
          v36 = v14[3];

          if (v37 >= v36 >> 1)
          {
            sub_243B299AC((v36 > 1), v37 + 1, 1);
            v14 = *&v66[0];
          }

          v29 += 7;
          v14[2] = v37 + 1;
          v38 = &v14[7 * v37];
          v38[4] = v31;
          v38[5] = v32;
          v38[6] = v61;
          v38[7] = v33;
          v38[8] = v59;
          v38[9] = v34;
          *(v38 + 80) = v57;
          *(v38 + 81) = 1;
          --v17;
          v30 = v63;
        }

        while (v17);
        v15 = v63;
        v4 = v44;
        v3 = v45;
        v5 = MEMORY[0x277D84F90];
        v6 = v43;
        v2 = v47;
        goto LABEL_31;
      }

      sub_243B2E4FC(&v68, v66);

      v14 = v5;
LABEL_31:

      sub_243B2E5B4(&v68);
      goto LABEL_32;
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
  }

  return v2;
}

uint64_t sub_243B2D474(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v9 = MEMORY[0x277D84F90];
    sub_243B70BCC();
    v6 = (a1 + 32);
    do
    {
      *&v11[9] = *(v6 + 41);
      v7 = v6[1];
      v10[0] = *v6;
      v10[1] = v7;
      *v11 = v6[2];
      if (v11[24] == 1)
      {
        sub_243B2E534(0, &qword_27EDA2F30, 0x277CDC6D0);
        sub_243B2E4FC(v10, v8);

        sub_243B26F08(v10, a2);
      }

      else
      {
        sub_243B2E534(0, &qword_27EDA1F50, 0x277CDC6D8);
        sub_243B2E4FC(v10, v8);

        sub_243B2713C(v10, a2);
      }

      sub_243B70BAC();
      sub_243B70BDC();
      sub_243B70BEC();
      sub_243B70BBC();
      v6 += 4;
      --v3;
    }

    while (v3);
    return v9;
  }

  return result;
}

uint64_t sub_243B2D5E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_243B2D5F8(uint64_t a1)
{
  sub_243B2D97C(319);
  if (v1 <= 0x3F)
  {
    sub_243B6FB3C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_243B2D97C(uint64_t a1)
{
  if (!qword_27EDA1E70)
  {
    type metadata accessor for AlertViewModel(255);
    v1 = sub_243B70B0C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDA1E70);
    }
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_243B2D9E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_243B2DA30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_243B2DAA8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243B2DAC8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_243B2DB24(uint64_t a1, int a2)
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

uint64_t sub_243B2DB6C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SharingOptionsObservableModel.Group.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingOptionsObservableModel.Group.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_243B2DD5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_243B2DDA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_243B2DE10(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243B2DE30(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

unint64_t sub_243B2DE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EDA1EF8;
  if (!qword_27EDA1EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA1EF8);
  }

  return result;
}

uint64_t sub_243B2DED0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243B2DF64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_243B2E010(uint64_t a1)
{
  v2 = type metadata accessor for AlertViewModelButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243B2E06C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_243B2E0D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_81Tm()
{

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_243B2E1A8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_243B2E220()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__allGroups) = *(v0 + 24);
}

uint64_t sub_243B2E264()
{
  *(*(v0 + 16) + 152) = *(v0 + 24);
}

double __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

uint64_t objectdestroy_109Tm()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_243B2E364(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_243B2E378(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243B2EC14;

  return sub_243B24D48(a1, v4, v5, v6);
}

uint64_t (*sub_243B2E434())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_243B2E48C;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_243B2E534(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_243B2E620(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_243B2E680(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_116Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_243B2E708(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243B2E7BC;

  return sub_243B24BE4(a1, v4, v5, v6);
}

uint64_t sub_243B2E7BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t getEnumTagSinglePayload for SharingOptionsObservableModel.Group.Option.AccessoryState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SharingOptionsObservableModel.Group.Option.AccessoryState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_243B2EA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EDA1FA8;
  if (!qword_27EDA1FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA1FA8);
  }

  return result;
}

void sub_243B2EAC8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_243B2EC74(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2040, &unk_243B72710);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_243B2ED44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2040, &unk_243B72710);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CopyLinkButtonView(uint64_t a1)
{
  result = qword_27EDA2048;
  if (!qword_27EDA2048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243B2EE40(uint64_t a1)
{
  sub_243B2EEC4(319);
  if (v1 <= 0x3F)
  {
    sub_243B2EF58(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_243B2EEC4(uint64_t a1)
{
  if (!qword_27EDA2058)
  {
    type metadata accessor for CreateiCloudLinkViewModel(255);
    sub_243B3077C(&qword_27EDA2060, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
    v1 = sub_243B6FE4C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDA2058);
    }
  }
}

void sub_243B2EF58(uint64_t a1)
{
  if (!qword_27EDA2068)
  {
    sub_243B6FACC();
    v1 = sub_243B705EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDA2068);
    }
  }
}

uint64_t sub_243B2EFCC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v83 = a1;
  v72 = sub_243B7022C();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v69 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for CopyLinkButtonView(0);
  v4 = *(v77 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v77);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2070, &qword_243B72788);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v65 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2078, &qword_243B72790);
  MEMORY[0x28223BE20](v65);
  v11 = &v65 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2080, &qword_243B72798);
  MEMORY[0x28223BE20](v66);
  v13 = &v65 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2088, &qword_243B727A0);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v67 = &v65 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2090, &qword_243B727A8);
  MEMORY[0x28223BE20](v71);
  v73 = &v65 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2098, &qword_243B727B0);
  MEMORY[0x28223BE20](v85);
  v76 = &v65 - v16;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA20A0, &qword_243B727B8);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v65 - v17;
  sub_243B302C0(v2, &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v4 + 80);
  v19 = (v18 + 16) & ~v18;
  v86 = v5;
  v84 = v18;
  v20 = swift_allocObject();
  v78 = v19;
  v82 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B30328(v82, v20 + v19);
  v87 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA20A8, &qword_243B727C0);
  sub_243B2E680(&qword_27EDA20B0, &qword_27EDA20A8, &qword_243B727C0, MEMORY[0x277CE1138]);
  sub_243B7060C();
  v21 = sub_243B7035C();
  KeyPath = swift_getKeyPath();
  v23 = &v9[*(v7 + 44)];
  *v23 = KeyPath;
  v23[1] = v21;
  v68 = v2;
  v24 = *(v2 + 8);
  swift_getKeyPath();
  v88 = v24;
  v25 = sub_243B3077C(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v26 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  v27 = *(v88 + 16);

  if (v27 || (swift_getKeyPath(), v88 = v24, sub_243B6FAFC(), , v28 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic, swift_beginAccess(), (*(v24 + v28) & 1) != 0))
  {
    v29 = sub_243B704FC();
  }

  else
  {
    v64 = [objc_opt_self() tertiarySystemGroupedBackgroundColor];
    v29 = sub_243B7054C();
  }

  v30 = v29;
  v31 = swift_getKeyPath();
  v88 = v30;
  v32 = sub_243B6FDCC();
  sub_243B304EC(v9, v11, &qword_27EDA2070, &qword_243B72788);
  v33 = &v11[*(v65 + 36)];
  *v33 = v31;
  v33[1] = v32;
  LOBYTE(v31) = sub_243B702EC();
  sub_243B6FCCC();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_243B304EC(v11, v13, &qword_27EDA2078, &qword_243B72790);
  v42 = &v13[*(v66 + 36)];
  *v42 = v31;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  v43 = v69;
  sub_243B7021C();
  sub_243B30554();
  sub_243B3077C(&qword_27EDA2108, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v44 = v67;
  v45 = v72;
  sub_243B703FC();
  (*(v70 + 8))(v43, v45);
  sub_243B2E620(v13, &qword_27EDA2080, &qword_243B72798);
  swift_getKeyPath();
  v88 = v24;
  sub_243B6FAFC();

  v72 = v26;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  v46 = *(v88 + 16);

  v47 = 0;
  if (!v46)
  {
    swift_getKeyPath();
    v88 = v24;
    sub_243B6FAFC();

    v48 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
    swift_beginAccess();
    v47 = *(v24 + v48) ^ 1;
  }

  v49 = swift_getKeyPath();
  v50 = swift_allocObject();
  *(v50 + 16) = v47 & 1;
  v51 = v73;
  (*(v74 + 32))(v73, v44, v75);
  v52 = (v51 + *(v71 + 36));
  *v52 = v49;
  v52[1] = sub_243B307DC;
  v52[2] = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2040, &unk_243B72710);
  v53 = v76;
  v54 = v68;
  sub_243B705BC();
  sub_243B307E4(v51, v53);
  swift_getKeyPath();
  v88 = v24;
  sub_243B6FAFC();

  v55 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
  swift_beginAccess();
  LOBYTE(v88) = *(v24 + v55);
  v75 = v25;
  v56 = v82;
  sub_243B302C0(v54, v82);
  v57 = v78;
  v58 = swift_allocObject();
  sub_243B30328(v56, v58 + v57);
  v77 = sub_243B2E680(&qword_27EDA2110, &qword_27EDA2098, &qword_243B727B0, MEMORY[0x277CE1148]);
  v59 = v79;
  v60 = v85;
  sub_243B704DC();

  sub_243B308DC(v53);
  swift_getKeyPath();
  v88 = v24;
  sub_243B6FAFC();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  v92 = v88;
  sub_243B302C0(v54, v56);
  v61 = swift_allocObject();
  sub_243B30328(v56, v61 + v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2118, &qword_243B74B90);
  v88 = v60;
  v89 = MEMORY[0x277D839B0];
  v90 = v77;
  v91 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  sub_243B30A50();
  v62 = v81;
  sub_243B704DC();

  return (*(v80 + 8))(v59, v62);
}

uint64_t sub_243B2FCCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_243B7009C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2120, &qword_243B72910);
  return sub_243B2FD24(a1, a2 + *(v4 + 44));
}

uint64_t sub_243B2FD24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2128, &qword_243B72918);
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2130, &qword_243B72920);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = *(a1 + 8);
  swift_getKeyPath();
  v40 = v10;
  sub_243B3077C(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  if (*(v10 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isActionInProgress) == 1)
  {
    sub_243B6FD7C();
    v14 = sub_243B7051C();
    KeyPath = swift_getKeyPath();
    v16 = &v9[*(v7 + 36)];
    *v16 = KeyPath;
    v16[1] = v14;
    sub_243B30C98(v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_243B30B5C();
    sub_243B7014C();
    return sub_243B2E620(v9, &qword_27EDA2130, &qword_243B72920);
  }

  else
  {
    v39 = a2;
    if (qword_27EDA1DC8 != -1)
    {
      v11 = swift_once();
    }

    v36 = v7;
    v40 = qword_27EDA5040;
    v41 = *algn_27EDA5048;
    sub_243B30AF8(v11, v12, v13);

    v18 = sub_243B703BC();
    v37 = v19;
    v38 = v18;
    v35 = v20;
    swift_getKeyPath();
    v40 = v10;
    sub_243B6FAFC();

    swift_getKeyPath();
    swift_getKeyPath();

    sub_243B6FC3C();

    v21 = *(v40 + 16);

    v34 = v4;
    if (v21 || (swift_getKeyPath(), v40 = v10, sub_243B6FAFC(), , v22 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic, swift_beginAccess(), (*(v10 + v22) & 1) != 0))
    {
      sub_243B7051C();
    }

    else
    {
      v33 = [objc_opt_self() tertiaryLabelColor];
      sub_243B7054C();
    }

    v23 = v35;
    v24 = v37;
    v25 = v38;
    v26 = sub_243B7038C();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    sub_243B30B4C(v25, v24, v23 & 1);

    *v6 = v26;
    *(v6 + 1) = v28;
    v6[16] = v30 & 1;
    *(v6 + 3) = v32;
    swift_storeEnumTagMultiPayload();
    sub_243B30B5C();
    return sub_243B7014C();
  }
}

uint64_t sub_243B3015C()
{
  v0 = sub_243B6FACC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  sub_243B6FABC();
  type metadata accessor for CopyLinkButtonView(0);
  (*(v1 + 16))(v3, v6, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2040, &unk_243B72710);
  sub_243B705CC();
  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_243B302C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CopyLinkButtonView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B30328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CopyLinkButtonView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_243B303F4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B3077C(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  *a2 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isActionInProgress);
}

uint64_t sub_243B304EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_243B30554()
{
  result = qword_27EDA20C0;
  if (!qword_27EDA20C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2080, &qword_243B72798);
    sub_243B305E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA20C0);
  }

  return result;
}

unint64_t sub_243B305E0()
{
  result = qword_27EDA20C8;
  if (!qword_27EDA20C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2078, &qword_243B72790);
    sub_243B30698();
    sub_243B2E680(&qword_27EDA20F8, &qword_27EDA2100, &qword_243B728A8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA20C8);
  }

  return result;
}

unint64_t sub_243B30698()
{
  result = qword_27EDA20D0;
  if (!qword_27EDA20D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2070, &qword_243B72788);
    sub_243B2E680(&qword_27EDA20D8, &qword_27EDA20E0, &qword_243B72898, MEMORY[0x277CDF028]);
    sub_243B2E680(&qword_27EDA20E8, &qword_27EDA20F0, &qword_243B728A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA20D0);
  }

  return result;
}

uint64_t sub_243B3077C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243B307E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2090, &qword_243B727A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B3085C()
{
  type metadata accessor for CopyLinkButtonView(0);

  return sub_243B3015C();
}

uint64_t sub_243B308DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2098, &qword_243B727B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for CopyLinkButtonView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = sub_243B6FACC();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2040, &unk_243B72710);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_243B30A50()
{
  result = qword_27EDA2FC0;
  if (!qword_27EDA2FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2118, &qword_243B74B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2FC0);
  }

  return result;
}

unint64_t sub_243B30AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EDA2138;
  if (!qword_27EDA2138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2138);
  }

  return result;
}

void sub_243B30B4C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_243B30B5C()
{
  result = qword_27EDA2140;
  if (!qword_27EDA2140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2130, &qword_243B72920);
    sub_243B2E680(&qword_27EDA2148, &qword_27EDA2150, &qword_243B72950, MEMORY[0x277CDD7F8]);
    sub_243B2E680(&qword_27EDA2158, &qword_27EDA2160, &qword_243B72958, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2140);
  }

  return result;
}

uint64_t sub_243B30C40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243B7004C();
  *a1 = result;
  return result;
}

uint64_t sub_243B30C98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2130, &qword_243B72920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B30D08()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA20A0, &qword_243B727B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2118, &qword_243B74B90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2098, &qword_243B727B0);
  sub_243B2E680(&qword_27EDA2110, &qword_27EDA2098, &qword_243B727B0, MEMORY[0x277CE1148]);
  swift_getOpaqueTypeConformance2();
  sub_243B30A50();
  return swift_getOpaqueTypeConformance2();
}

id sub_243B3107C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for InsetLabel();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double sub_243B310FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  return v1;
}

void sub_243B31170()
{
  v0 = sub_243B6F9DC();
  if (v0)
  {
    v1 = sub_243B312C8(v0);

    if (v1)
    {
      v2 = sub_243B7082C();
      if (*(v1 + 16))
      {
        v4 = sub_243B66CDC(v2, v3);
        v6 = v5;

        if (v6)
        {
          sub_243B319B0(*(v1 + 56) + 32 * v4, v10);

          sub_243B31A0C();
          if (swift_dynamicCast())
          {
            [v9 CGRectValue];
            v8 = v7;
            swift_getKeyPath();
            swift_getKeyPath();
            v10[0] = v8;

            sub_243B6FC4C();
          }

          return;
        }
      }

      else
      {
      }
    }
  }
}

unint64_t sub_243B312C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2198, &qword_243B72A58);
    v2 = sub_243B70C3C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_243B31A60(*(a1 + 48) + 40 * v12, v27);
        sub_243B319B0(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_243B31A60(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_243B319B0(v25 + 8, v20);
        sub_243B31ABC(v24);
        v21 = v18;
        sub_243B31B24(v20, v22);
        v13 = v21;
        sub_243B31B24(v22, v23);
        sub_243B31B24(v23, &v21);
        result = sub_243B66CDC(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          result = sub_243B31B24(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_243B31B24(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_243B31ABC(v24);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_243B31788()
{
  v1 = OBJC_IVAR____TtC14CloudSharingUI16KeyboardObserver__height;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA21A8, &qword_243B72A68);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for KeyboardObserver(uint64_t a1)
{
  result = qword_27EDA2178;
  if (!qword_27EDA2178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243B31884(uint64_t a1)
{
  sub_243B31914();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_243B31914()
{
  if (!qword_27EDA2188)
  {
    v0 = sub_243B6FC5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDA2188);
    }
  }
}

uint64_t sub_243B31970@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for KeyboardObserver(0);
  result = sub_243B6FBEC();
  *a2 = result;
  return result;
}

uint64_t sub_243B319B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_243B31A0C()
{
  result = qword_27EDA2190;
  if (!qword_27EDA2190)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDA2190);
  }

  return result;
}

uint64_t sub_243B31ABC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA21A0, &qword_243B72A60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_243B31B24(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_243B31B8C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = a1;
  v5 = [v4 recipients];
  sub_243B2E534(0, &unk_27EDA2F70, 0x277CFBCA0);
  v6 = sub_243B7089C();

  sub_243B3228C(v6);
}

void sub_243B31CB0(void *a1, void *a2)
{
  v4 = sub_243B7078C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_243B707AC();
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_243B707CC();
  v30 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v26 - v16;
  v18 = [a2 contact];
  if (v18)
  {
    v33 = v18;
    v19 = [a1 navigationController];
    if (v19)
    {
      v20 = v19;
      swift_getKeyPath();
      swift_getKeyPath();
      v29 = v5;
      LOBYTE(aBlock[0]) = 0;

      sub_243B6FC4C();
      sub_243B2E534(0, &qword_27EDA1F30, 0x277D85C78);
      v28 = sub_243B70A0C();
      sub_243B707BC();
      sub_243B707DC();
      v30 = *(v30 + 8);
      (v30)(v13, v11);
      v21 = swift_allocObject();
      *(v21 + 16) = v33;
      *(v21 + 24) = v20;
      aBlock[4] = sub_243B32950;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_243B2804C;
      aBlock[3] = &block_descriptor_0;
      v22 = _Block_copy(aBlock);
      v27 = v20;
      v23 = v33;

      sub_243B7079C();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_243B32970();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F40, &qword_243B724A8);
      sub_243B329C8();
      sub_243B70B2C();
      v24 = v28;
      MEMORY[0x245D49A40](v17, v10, v7, v22);
      _Block_release(v22);

      (*(v29 + 8))(v7, v4);
      (*(v31 + 8))(v10, v32);
      (v30)(v17, v11);
    }

    else
    {
      v25 = v33;
    }
  }
}

void sub_243B32118(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() viewControllerForContact_];
  [a2 pushViewController:v3 animated:1];
}

uint64_t sub_243B3228C(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_21:
    v3 = sub_243B70C0C();
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x245D49BC0](v6, a1);
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 = [v7 normalizedAddress];
      if (v9)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_22;
      }
    }

    v10 = v9;
    v11 = sub_243B7082C();
    v17 = v12;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_243B32770(0, *(v5 + 2) + 1, 1, v5);
    }

    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v5 = sub_243B32770((v13 > 1), v14 + 1, 1, v5);
    }

    *(v5 + 2) = v14 + 1;
    v15 = &v5[16 * v14];
    *(v15 + 4) = v11;
    *(v15 + 5) = v17;
  }

  while (v4 != v3);
LABEL_22:
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

id sub_243B3249C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AutocompleteSearchCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_243B32540(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F68, &qword_243B72B50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_243B32664(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2240, &qword_243B724C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_243B32770(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1FA0, &qword_243B74F40);
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

void *sub_243B32884(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1FA0, &qword_243B74F40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_243B32910()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_243B32970()
{
  result = qword_27EDA1F38;
  if (!qword_27EDA1F38)
  {
    sub_243B7078C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA1F38);
  }

  return result;
}

unint64_t sub_243B329C8()
{
  result = qword_27EDA1F48;
  if (!qword_27EDA1F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA1F40, &qword_243B724A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA1F48);
  }

  return result;
}

void sub_243B32A2C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI29AutocompleteSearchCoordinator_viewModel) + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_showContactPickerDidClick;
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_243B6FC3C();

    v2();
    sub_243B2BFCC(v2, v3);
  }
}

void sub_243B32AFC(double a1, double a2)
{
  v3 = v2;
  v5 = sub_243B6FB9C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6FB6C();
  v9 = sub_243B6FB8C();
  v10 = sub_243B709BC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = a2;
    _os_log_impl(&dword_243B1E000, v9, v10, "textViewDidChange: %f", v11, 0xCu);
    MEMORY[0x245D4A570](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v12 = OBJC_IVAR____TtC14CloudSharingUI29AutocompleteSearchCoordinator_delegate;
  swift_beginAccess();
  sub_243B32CD8(v3 + v12, v16);
  if (v17)
  {
    sub_243B32DB0(v16, v15);
    sub_243B32D48(v16);
    v13 = *(__swift_project_boxed_opaque_existential_1(v15, v15[3])[2] + 16);
    if (v13)
    {
      [v13 setConstant_];
    }

    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    sub_243B32D48(v16);
  }
}

uint64_t sub_243B32CD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2230, &unk_243B72B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B32D48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2230, &unk_243B72B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243B32DB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_243B32E74(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2248, &unk_243B74050);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_243B32F44(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2248, &unk_243B74050);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PermissionsView(uint64_t a1)
{
  result = qword_27EDA2250;
  if (!qword_27EDA2250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243B33040(uint64_t a1)
{
  sub_243B33190(319, &qword_27EDA2260, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_243B3312C(319);
    if (v2 <= 0x3F)
    {
      sub_243B2EEC4(319);
      if (v3 <= 0x3F)
      {
        sub_243B33190(319, &qword_27EDA2278, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_243B3312C(uint64_t a1)
{
  if (!qword_27EDA2268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2270, "LT");
    v1 = sub_243B6FD2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDA2268);
    }
  }
}

void sub_243B33190(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_243B33200@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_243B7007C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2280, &qword_243B732D0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PermissionsView(0);
  sub_243B2E06C(v1 + *(v10 + 20), v9, &qword_27EDA2280, &qword_243B732D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_243B304EC(v9, a1, &qword_27EDA2270, "LT");
  }

  sub_243B709DC();
  v12 = sub_243B702CC();
  sub_243B6FB4C();

  sub_243B7006C();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

double sub_243B333E8@<D0>(double a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1FA0, &qword_243B74F40);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_243B71ED0;
  if (qword_27EDA1DA0 != -1)
  {
    swift_once();
  }

  v5 = *algn_27EDA4FF8;
  *(v4 + 32) = qword_27EDA4FF0;
  *(v4 + 40) = v5;
  v6 = qword_27EDA1DA8;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *algn_27EDA5008;
  *(v4 + 48) = qword_27EDA5000;
  *(v4 + 56) = v7;
  *a2 = v4;
  v8 = type metadata accessor for PermissionsView(0);
  v9 = v8[5];
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2280, &qword_243B732D0);
  swift_storeEnumTagMultiPayload();
  v10 = (a2 + v8[6]);
  type metadata accessor for CreateiCloudLinkViewModel(0);
  sub_243B35C14(&qword_27EDA2060, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);

  *v10 = sub_243B6FE1C();
  v10[1] = v11;
  swift_getKeyPath();
  *&v14 = a1;
  sub_243B35C14(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v12 = a2 + v8[7];
  sub_243B705AC();

  result = a1;
  *v12 = v14;
  *(v12 + 2) = v15;
  return result;
}

uint64_t sub_243B3365C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v49 = sub_243B701DC();
  v51 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2298, &qword_243B734D0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v50 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2270, "LT");
  MEMORY[0x28223BE20](v7 - 8);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = &v45 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v14 = sub_243B700BC();
  v56 = *(v14 - 8);
  v57 = v14;
  MEMORY[0x28223BE20](v14);
  v55 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA22A0, &qword_243B72C28);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v45 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA22A8, &qword_243B72C30);
  v53 = *(v20 - 8);
  v54 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v59 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA22B0, &qword_243B72C38);
  sub_243B2E680(&qword_27EDA22B8, &qword_27EDA22B0, &qword_243B72C38, MEMORY[0x277CE14C0]);
  sub_243B7036C();
  sub_243B2E680(&qword_27EDA22C0, &qword_27EDA22A0, &qword_243B72C28, MEMORY[0x277CDE5A0]);
  v52 = v22;
  v23 = v49;
  sub_243B7048C();
  (*(v17 + 8))(v19, v16);
  v24 = v51;
  v25 = v48;
  sub_243B33200(v13);
  (*(v24 + 104))(v25, *MEMORY[0x277CE0558], v23);
  (*(v24 + 56))(v25, 0, 1, v23);
  v26 = *(v5 + 56);
  v27 = v50;
  sub_243B2E06C(v13, v50, &qword_27EDA2270, "LT");
  sub_243B2E06C(v25, v27 + v26, &qword_27EDA2270, "LT");
  v28 = *(v24 + 48);
  if (v28(v27, 1, v23) != 1)
  {
    v45 = v13;
    v29 = v27;
    v30 = v27;
    v31 = v47;
    sub_243B2E06C(v29, v47, &qword_27EDA2270, "LT");
    if (v28(v30 + v26, 1, v23) != 1)
    {
      v42 = v30 + v26;
      v43 = v46;
      (*(v24 + 32))(v46, v42, v23);
      sub_243B35C14(&qword_27EDA22E0, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      sub_243B707FC();
      v44 = *(v24 + 8);
      v44(v43, v23);
      sub_243B2E620(v25, &qword_27EDA2270, "LT");
      sub_243B2E620(v45, &qword_27EDA2270, "LT");
      v44(v31, v23);
      sub_243B2E620(v30, &qword_27EDA2270, "LT");
      goto LABEL_7;
    }

    sub_243B2E620(v25, &qword_27EDA2270, "LT");
    sub_243B2E620(v45, &qword_27EDA2270, "LT");
    (*(v24 + 8))(v31, v23);
    v27 = v30;
    goto LABEL_6;
  }

  sub_243B2E620(v25, &qword_27EDA2270, "LT");
  sub_243B2E620(v13, &qword_27EDA2270, "LT");
  if (v28(v27 + v26, 1, v23) != 1)
  {
LABEL_6:
    sub_243B2E620(v27, &qword_27EDA2298, &qword_243B734D0);
    goto LABEL_7;
  }

  sub_243B2E620(v27, &qword_27EDA2270, "LT");
LABEL_7:
  v32 = v55;
  sub_243B700AC();
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA22C8, &qword_243B72C40) + 36);
  v35 = v56;
  v34 = v57;
  v36 = v58;
  (*(v56 + 16))(v58 + v33, v32, v57);
  v37 = *(v35 + 56);
  v37((v36 + v33), 0, 1, v34);
  (*(v53 + 32))(v36, v52, v54);
  KeyPath = swift_getKeyPath();
  v39 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA22D0, &qword_243B72C78) + 36));
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA22D8, &qword_243B72C80) + 28);
  (*(v35 + 32))(v39 + v40, v32, v34);
  result = v37(v39 + v40, 0, 1, v34);
  *v39 = KeyPath;
  return result;
}

uint64_t sub_243B33E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA22F0, &qword_243B72C90);
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v47 = v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA22F8, &qword_243B72C98);
  MEMORY[0x28223BE20](v4 - 8);
  v55 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = v45 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2300, &qword_243B72CA0);
  v8 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v10 = v45 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2308, &qword_243B72CA8);
  MEMORY[0x28223BE20](v48);
  v51 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v45 - v13;
  MEMORY[0x28223BE20](v15);
  v50 = v45 - v16;
  v57 = a1;
  v17 = *(a1 + *(type metadata accessor for PermissionsView(0) + 24) + 8);
  swift_getKeyPath();
  v58[0] = v17;
  sub_243B35C14(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v18 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
  swift_beginAccess();
  if (*(v17 + v18) == 1)
  {
    if (qword_27EDA1D90 != -1)
    {
      swift_once();
    }

    v19 = &qword_27EDA4FD0;
  }

  else
  {
    if (qword_27EDA1D98 != -1)
    {
      swift_once();
    }

    v19 = &qword_27EDA4FE0;
  }

  v20 = *v19;

  v58[0] = v20;
  v58[1] = v21;
  sub_243B30AF8(v21, v22, v23);
  v58[10] = sub_243B703BC();
  v58[11] = v24;
  v59 = v25 & 1;
  v60 = v26;
  v46 = a1;
  sub_243B3510C(a1, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2310, &qword_243B72CD8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2318, &qword_243B72CE0);
  sub_243B35C6C();
  v45[1] = sub_243B35E8C();
  v45[2] = v27;
  sub_243B7070C();
  v28 = objc_opt_self();
  v29 = [v28 tertiarySystemGroupedBackgroundColor];
  v58[0] = sub_243B7054C();
  v30 = sub_243B7067C();
  (*(v8 + 32))(v14, v10, v49);
  *&v14[*(v48 + 36)] = v30;
  v31 = v50;
  sub_243B304EC(v14, v50, &qword_27EDA2308, &qword_243B72CA8);
  swift_getKeyPath();
  v58[0] = v17;
  sub_243B6FAFC();

  if ((*(v17 + v18) & 1) != 0 || (swift_getKeyPath(), v58[0] = v17, sub_243B6FAFC(), v32 = , *(v17 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canEdit) != 1))
  {
    v39 = 1;
    v38 = v53;
    v37 = v54;
  }

  else
  {
    MEMORY[0x28223BE20](v32);
    sub_243B355EC(v46, v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2398, &qword_243B72D20);
    sub_243B35F44();
    v33 = v47;
    sub_243B7071C();
    v34 = [v28 tertiarySystemGroupedBackgroundColor];
    v58[0] = sub_243B7054C();
    v35 = sub_243B7067C();
    v36 = v53;
    v37 = v54;
    *(v33 + *(v53 + 36)) = v35;
    sub_243B304EC(v33, v37, &qword_27EDA22F0, &qword_243B72C90);
    v38 = v36;
    v39 = 0;
  }

  (*(v52 + 56))(v37, v39, 1, v38);
  v40 = v51;
  sub_243B2E06C(v31, v51, &qword_27EDA2308, &qword_243B72CA8);
  v41 = v55;
  sub_243B2E06C(v37, v55, &qword_27EDA22F8, &qword_243B72C98);
  v42 = v56;
  sub_243B2E06C(v40, v56, &qword_27EDA2308, &qword_243B72CA8);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2390, &qword_243B72D18);
  sub_243B2E06C(v41, v42 + *(v43 + 48), &qword_27EDA22F8, &qword_243B72C98);
  sub_243B2E620(v37, &qword_27EDA22F8, &qword_243B72C98);
  sub_243B2E620(v31, &qword_27EDA2308, &qword_243B72CA8);
  sub_243B2E620(v41, &qword_27EDA22F8, &qword_243B72C98);
  return sub_243B2E620(v40, &qword_27EDA2308, &qword_243B72CA8);
}

uint64_t sub_243B345B8(uint64_t *a1)
{
  v2 = type metadata accessor for PermissionsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = *a1;
  swift_getKeyPath();
  sub_243B36100(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_243B3630C(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2118, &qword_243B74B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2330, &qword_243B72CE8);
  sub_243B2E680(&qword_27EDA23B8, &qword_27EDA2118, &qword_243B74B90, MEMORY[0x277D83980]);
  sub_243B35CF0();
  return sub_243B706EC();
}

uint64_t sub_243B34774@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v5 = type metadata accessor for PermissionsView(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2340, &qword_243B72CF0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  v13 = *a1;
  v14 = a1[1];
  sub_243B36100(a2, &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_243B3630C(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = (v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = v13;
  v17[1] = v14;
  v26 = v13;
  v27 = v14;
  v28 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA23C0, &qword_243B72DF8);
  sub_243B2E680(&qword_27EDA23C8, &qword_27EDA23C0, &qword_243B72DF8, MEMORY[0x277CE1138]);
  sub_243B7060C();
  v12[*(v10 + 44)] = 0;
  v18 = *(a2 + *(v6 + 32) + 8);
  swift_getKeyPath();
  v29 = v18;
  sub_243B35C14(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  LOBYTE(v18) = *(v18 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__shareItemStatus) == 2;
  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  v21 = v25;
  sub_243B304EC(v12, v25, &qword_27EDA2340, &qword_243B72CF0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2330, &qword_243B72CE8);
  v23 = (v21 + *(result + 36));
  *v23 = KeyPath;
  v23[1] = sub_243B368BC;
  v23[2] = v20;
  return result;
}

void sub_243B34A88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for PermissionsView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA23D8, &qword_243B72E08);
  sub_243B705CC();
  sub_243B705BC();
  v7 = a1;
  if (qword_27EDA1DA8 != -1)
  {
    swift_once();
    v7 = a1;
  }

  if (v7 == qword_27EDA5000 && a2 == *algn_27EDA5008)
  {

    goto LABEL_7;
  }

  v8 = sub_243B70C6C();

  if (v8)
  {
LABEL_7:
    v9 = *(v3 + *(v6 + 24) + 8);
    if (*(v9 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canEdit) == 1)
    {
      *(v9 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canEdit) = 1;
      return;
    }

    goto LABEL_11;
  }

  v10 = *(v3 + *(v6 + 24) + 8);
  if (*(v10 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canEdit))
  {
LABEL_11:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_243B35C14(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
    sub_243B6FAEC();

    return;
  }

  *(v10 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canEdit) = 0;
}

double sub_243B34D70@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_243B7009C();
  v20 = 1;
  sub_243B34EA8(a1, a2, a3, &v14);
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v21 = v14;
  v26[1] = v15;
  v26[2] = v16;
  v26[3] = v17;
  v27 = v18;
  v26[0] = v14;
  sub_243B2E06C(&v21, v13, &qword_27EDA23D0, &qword_243B72E00);
  sub_243B2E620(v26, &qword_27EDA23D0, &qword_243B72E00);
  *&v19[7] = v21;
  *&v19[71] = v25;
  *&v19[55] = v24;
  *&v19[39] = v23;
  *&v19[23] = v22;
  v9 = *v19;
  *(a4 + 33) = *&v19[16];
  v10 = *&v19[48];
  *(a4 + 49) = *&v19[32];
  *(a4 + 65) = v10;
  result = *&v19[63];
  *(a4 + 80) = *&v19[63];
  v12 = v20;
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = v12;
  *(a4 + 17) = v9;
  return result;
}

uint64_t sub_243B34EA8@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_243B30AF8(a1, a2, a3);

  v7 = sub_243B703BC();
  v9 = v8;
  v11 = v10;
  sub_243B7052C();
  v23 = sub_243B7038C();
  v24 = v12;
  v14 = v13;
  v22 = v15;

  sub_243B30B4C(v7, v9, v11 & 1);

  type metadata accessor for PermissionsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA23D8, &qword_243B72E08);
  sub_243B705BC();
  if (v25 == __PAIR128__(a2, a1))
  {
  }

  else
  {
    v16 = sub_243B70C6C();

    if ((v16 & 1) == 0)
    {
      v20 = 0;
      v17 = 0;
      KeyPath = 0;
      v18 = 0;
      goto LABEL_6;
    }
  }

  v17 = sub_243B7056C();
  v18 = sub_243B704FC();
  KeyPath = swift_getKeyPath();

  v20 = 1;
LABEL_6:
  sub_243B2D5E0(v23, v14, v22 & 1);

  sub_243B36648(0, v20, v17, KeyPath, v18);
  sub_243B36698(0, v20, v17, KeyPath, v18);
  *a4 = v23;
  *(a4 + 8) = v14;
  *(a4 + 16) = v22 & 1;
  *(a4 + 24) = v24;
  *(a4 + 32) = 0;
  *(a4 + 40) = v20;
  *(a4 + 48) = v17;
  *(a4 + 56) = KeyPath;
  *(a4 + 64) = v18;
  sub_243B36698(0, v20, v17, KeyPath, v18);
  sub_243B30B4C(v23, v14, v22 & 1);
}

uint64_t sub_243B3510C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for PermissionsView(0) + 24) + 8);
  swift_getKeyPath();
  sub_243B35C14(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v4 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
  swift_beginAccess();
  if ((*(v3 + v4) & 1) != 0 || (swift_getKeyPath(), sub_243B6FAFC(), , (*(v3 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__canEdit) & 1) == 0))
  {
    v5 = sub_243B700FC();
    swift_getKeyPath();
    sub_243B6FAFC();

    sub_243B30AF8(v11, v12, v13);

    result = sub_243B703BC();
    v9 = v14 & 1;
    v6 = 0x4028000000000000;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    result = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  *a2 = v5;
  a2[1] = v6;
  a2[2] = 0;
  a2[3] = result;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  return result;
}

uint64_t sub_243B352DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA23B0, &qword_243B72D28);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - v6;
  if (qword_27EDA1DB0 != -1)
  {
    swift_once();
  }

  v17[4] = qword_27EDA5010;
  v17[5] = *algn_27EDA5018;
  v8 = *(a1 + *(type metadata accessor for PermissionsView(0) + 24) + 8);
  type metadata accessor for CreateiCloudLinkViewModel(0);
  sub_243B35C14(&qword_27EDA2060, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);

  sub_243B6FE2C();
  swift_getKeyPath();
  sub_243B6FE3C();

  sub_243B30AF8(v9, v10, v11);
  sub_243B7066C();
  swift_getKeyPath();
  v17[1] = v8;
  sub_243B35C14(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v12 = *(v8 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__shareItemStatus) == 2;
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  (*(v5 + 32))(a2, v7, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2398, &qword_243B72D20);
  v16 = (a2 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = sub_243B307DC;
  v16[2] = v14;
  return result;
}

uint64_t sub_243B355EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for PermissionsView(0) + 24) + 8);
  swift_getKeyPath();
  sub_243B35C14(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v4 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
  swift_beginAccess();
  v5 = 0;
  v6 = 0;
  result = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if ((*(v3 + v4) & 1) == 0)
  {
    v5 = sub_243B700FC();
    swift_getKeyPath();
    sub_243B6FAFC();

    sub_243B30AF8(v11, v12, v13);

    result = sub_243B703BC();
    v9 = v14 & 1;
    v6 = 0x4028000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
  a2[2] = 0;
  a2[3] = result;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  return result;
}

uint64_t sub_243B35778@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_243B700FC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2288, &qword_243B72C18);
  sub_243B3365C(v2, a2 + *(v4 + 44));
  v5 = [objc_opt_self() systemBackgroundColor];
  v6 = sub_243B7054C();
  v7 = sub_243B702FC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2290, &qword_243B72C20);
  v9 = a2 + *(result + 36);
  *v9 = v6;
  *(v9 + 8) = v7;
  return result;
}

void sub_243B35824(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B35C14(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  *a2 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__shareItemStatus);
}

void sub_243B35910(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_243B35C14(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  *a4 = *(v6 + *a3);
}

uint64_t sub_243B359EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B35C14(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v4 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__userInfoText + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__userInfoText);
  a2[1] = v4;
}

uint64_t sub_243B35AA4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_243B5CAA4(v1, v2);
}

uint64_t sub_243B35B68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA22E8, &qword_243B72C88);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_243B2E06C(a1, &v6 - v3, &qword_27EDA22E8, &qword_243B72C88);
  return MEMORY[0x245D48FC0](v4);
}

uint64_t sub_243B35C14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_243B35C6C()
{
  result = qword_27EDA2320;
  if (!qword_27EDA2320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2310, &qword_243B72CD8);
    sub_243B35CF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2320);
  }

  return result;
}

unint64_t sub_243B35CF0()
{
  result = qword_27EDA2328;
  if (!qword_27EDA2328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2330, &qword_243B72CE8);
    sub_243B35DA8();
    sub_243B2E680(&qword_27EDA2368, &qword_27EDA2370, &qword_243B72D08, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2328);
  }

  return result;
}

unint64_t sub_243B35DA8()
{
  result = qword_27EDA2338;
  if (!qword_27EDA2338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2340, &qword_243B72CF0);
    sub_243B2E680(&qword_27EDA2348, &qword_27EDA2350, &qword_243B72CF8, MEMORY[0x277CDF028]);
    sub_243B2E680(&qword_27EDA2358, &qword_27EDA2360, &qword_243B72D00, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2338);
  }

  return result;
}

unint64_t sub_243B35E8C()
{
  result = qword_27EDA2378;
  if (!qword_27EDA2378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2318, &qword_243B72CE0);
    sub_243B2E680(&qword_27EDA2380, &qword_27EDA2388, &qword_243B72D10, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2378);
  }

  return result;
}

unint64_t sub_243B35F44()
{
  result = qword_27EDA23A0;
  if (!qword_27EDA23A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2398, &qword_243B72D20);
    sub_243B2E680(&qword_27EDA23A8, &qword_27EDA23B0, &qword_243B72D28, MEMORY[0x277CDF068]);
    sub_243B2E680(&qword_27EDA2368, &qword_27EDA2370, &qword_243B72D08, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA23A0);
  }

  return result;
}

uint64_t sub_243B3602C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_243B5CAA4(v1, v2);
}

uint64_t sub_243B36100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PermissionsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B36164()
{
  v1 = type metadata accessor for PermissionsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2280, &qword_243B732D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_243B701DC();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243B3630C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PermissionsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B36370@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PermissionsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_243B34774(a1, v6, a2);
}

uint64_t sub_243B363F0()
{
  v1 = type metadata accessor for PermissionsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2280, &qword_243B732D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_243B701DC();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

void sub_243B365B0()
{
  v1 = *(type metadata accessor for PermissionsView(0) - 8);
  v2 = (v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_243B34A88(*v2, v2[1]);
}

void sub_243B36648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }
}

double sub_243B36698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_243B366E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243B6FF2C();
  *a1 = result;
  return result;
}

uint64_t sub_243B36714@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243B6FF2C();
  *a1 = result;
  return result;
}

unint64_t sub_243B367BC()
{
  result = qword_27EDA23E0;
  if (!qword_27EDA23E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2290, &qword_243B72C20);
    sub_243B2E680(&qword_27EDA23E8, &qword_27EDA23F0, &unk_243B72E40, MEMORY[0x277CE1198]);
    sub_243B2E680(&qword_27EDA23F8, &qword_27EDA2400, &qword_243B73430, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA23E0);
  }

  return result;
}

void sub_243B368C0(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = type metadata accessor for PermissionsView(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = [objc_allocWithZone(MEMORY[0x277CFBC88]) initWithSearchType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2410, &qword_243B72FF0);
  sub_243B702BC();
  v10 = v52;
  [v9 setDelegate_];

  v11 = v9;
  v12 = [v11 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = v12;
  [v12 setClipsToBounds_];

  sub_243B333E8(*&v14, v8);
  v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2418, &qword_243B72FF8));
  v16 = sub_243B7013C();
  v17 = [v16 view];
  if (!v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = v17;
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];

  v19 = v11;
  v20 = [v16 view];
  CSSetCNAutocompleteSearchControllerHeaderView(v19, v20);

  v21 = [v16 view];
  if (!v21)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = v21;
  v23 = [v21 topAnchor];

  v24 = [v19 view];
  if (!v24)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v25 = v24;
  v26 = [v24 safeAreaLayoutGuide];

  v27 = [v26 topAnchor];
  v28 = [v23 constraintEqualToAnchor_];

  v29 = *(a4 + 16);
  *(a4 + 16) = v28;

  v30 = *(a4 + 16);
  if (v30)
  {
    [v30 setConstant_];
    v30 = *(a4 + 16);
  }

  [v30 setActive_];
  v31 = [v16 view];
  if (!v31)
  {
    goto LABEL_18;
  }

  v32 = v31;
  v33 = [v31 leadingAnchor];

  v34 = [v19 view];
  if (!v34)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v35 = v34;
  v36 = [v34 leadingAnchor];

  v37 = [v33 constraintEqualToAnchor_];
  [v37 setActive_];

  v38 = [v16 view];
  if (!v38)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v39 = v38;
  v40 = [v38 trailingAnchor];

  v41 = [v19 view];
  if (!v41)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v42 = v41;
  v43 = [v41 trailingAnchor];

  v44 = [v40 constraintEqualToAnchor_];
  [v44 setActive_];

  v45 = [v16 view];
  if (!v45)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v46 = [v45 bottomAnchor];

  v47 = [v19 view];
  if (v47)
  {
    v48 = [v47 safeAreaLayoutGuide];

    v49 = [v48 bottomAnchor];
    v50 = [v46 constraintEqualToAnchor_];

    [v50 setActive_];
    swift_getKeyPath();
    v52 = a3;
    sub_243B37320();
    sub_243B6FAFC();

    swift_unknownObjectWeakAssign();
    return;
  }

LABEL_23:
  __break(1u);
}

char *sub_243B36E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  v13[0] = a2;
  sub_243B37320();
  sub_243B6FAFC();

  v6 = *(a2 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel);
  v7 = type metadata accessor for AutocompleteSearchCoordinator();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC14CloudSharingUI29AutocompleteSearchCoordinator_delegate];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v8[OBJC_IVAR____TtC14CloudSharingUI29AutocompleteSearchCoordinator_viewModel] = v6;
  v14.receiver = v8;
  v14.super_class = v7;

  v10 = objc_msgSendSuper2(&v14, sel_init);
  v13[3] = &type metadata for InvitedPeopleView;
  v13[4] = &off_2856C6FF0;
  v13[0] = a1;
  v13[1] = a2;
  v13[2] = a3;
  v11 = OBJC_IVAR____TtC14CloudSharingUI29AutocompleteSearchCoordinator_delegate;
  swift_beginAccess();

  sub_243B37378(v13, v10 + v11);
  swift_endAccess();
  return v10;
}

char *sub_243B36F78@<X0>(char **a1@<X8>)
{
  result = sub_243B36E20(*v1, v1[1], v1[2]);
  *a1 = result;
  return result;
}

uint64_t sub_243B36FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243B37580(a1, a2, a3);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_243B37048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243B37580(a1, a2, a3);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_243B370AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_243B37580(a1, a2, a3);
  sub_243B7029C();
  __break(1u);
}

uint64_t sub_243B370D4()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_243B37144(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_243B3718C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_243B371EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EDA2408;
  if (!qword_27EDA2408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2408);
  }

  return result;
}

uint64_t sub_243B37240@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B37320();
  sub_243B6FAFC();

  *a2 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__addressingViewModel);
}

unint64_t sub_243B37320()
{
  result = qword_27EDA20B8;
  if (!qword_27EDA20B8)
  {
    type metadata accessor for CreateiCloudLinkViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA20B8);
  }

  return result;
}