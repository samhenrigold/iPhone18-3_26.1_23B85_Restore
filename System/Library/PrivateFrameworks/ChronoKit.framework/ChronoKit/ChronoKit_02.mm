uint64_t sub_1BF3BE938()
{
  sub_1BF39C9A4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1BF3BE970(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v36 = a3;
  v37 = *a1;
  v38 = a2;
  v4 = *(v37 + 10);
  v5 = *(v4 - 8);
  v33 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v32 - v6;
  type metadata accessor for EnvironmentModifiersAssertion(0);
  v8 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v9 = swift_allocObject();
  v10 = swift_slowAlloc();
  *v10 = 0;
  *(v9 + 16) = v10;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 16) = v9;
  *(v8 + 40) = 0;
  v11 = v8 + OBJC_IVAR____TtC9ChronoKit29EnvironmentModifiersAssertion__lock_environmentModifiers;
  *v11 = 0;
  v12 = MEMORY[0x1E69E7CD0];
  *(v11 + 8) = 0;
  *(v11 + 16) = v12;
  *(v11 + 24) = 0;
  v13 = type metadata accessor for EnvironmentModifiers(0);
  v14 = v13[8];
  v15 = sub_1BF4E6F14();
  (*(*(v15 - 8) + 56))(v11 + v14, 1, 1, v15);
  *(v11 + v13[9]) = 0;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BF4E9204())
  {
    sub_1BF44AD60(MEMORY[0x1E69E7CC0]);
    v12 = v31;
  }

  *(v11 + v13[10]) = v12;
  *(v11 + v13[11]) = 0;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  swift_weakInit();
  v34 = *(v5 + 16);
  v35 = v5 + 16;
  v34(v7, v38, v4);
  v18 = *(v5 + 80);
  v39 = a1;
  v19 = v7;
  v20 = (v18 + 48) & ~v18;
  v21 = swift_allocObject();
  *(v21 + 2) = v4;
  v22 = v4;
  v23 = *(v37 + 11);
  *(v21 + 3) = v23;
  *(v21 + 4) = v16;
  *(v21 + 5) = v17;
  v24 = *(v5 + 32);
  v37 = v19;
  v24(&v21[v20], v19, v22);
  v25 = *(v8 + 16);
  v26 = *(v25 + 16);

  os_unfair_lock_lock(v26);
  v27 = *(v8 + 24);
  v28 = *(v8 + 32);
  *(v8 + 24) = sub_1BF4724FC;
  *(v8 + 32) = v21;

  sub_1BF3B0E64(v27, v28);
  os_unfair_lock_unlock(*(v25 + 16));

  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9860, &qword_1BF4F31A0);
  v29 = v38;
  v33 = v23;
  sub_1BF4E8854();

  if (!v41)
  {
    v41 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _WeakEnvironmentModifiersAssertion();
  swift_allocObject();
  swift_weakInit();
  swift_weakAssign();

  MEMORY[0x1BFB58DD0](v30);
  if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BF4E8BE4();
  }

  sub_1BF4E8C24();
  v34(v37, v29, v22);
  v40 = v41;
  swift_beginAccess();
  sub_1BF4E8834();

  sub_1BF4E8864();
  swift_endAccess();

  *v36 = v8;
}

uint64_t sub_1BF3BEE5C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3BEE94()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t type metadata accessor for EnvironmentModifiersAssertion(uint64_t a1)
{
  result = qword_1EDC97668;
  if (!qword_1EDC97668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1BF3BF0A8(unint64_t *a1, uint64_t a2)
{
  *&v43 = *a1;
  v40 = type metadata accessor for ReloadConfiguration(0);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v43 + 80);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - v12;
  v14 = *(v6 + 16);
  v41 = a2;
  v14(&v38 - v12, a2, v5, v11);
  v42 = a1;
  v15 = sub_1BF4E7B34();
  v16 = sub_1BF4E8E84();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v44 = v38;
    *v17 = 136446210;
    (v14)(v9, v13, v5);
    v18 = *(v6 + 8);
    v18(v13, v5);
    v19 = v16;
    v20 = sub_1BF4E96A4();
    v22 = v21;
    v18(v9, v5);
    v23 = sub_1BF38D65C(v20, v22, &v44);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_1BF389000, v15, v19, "%{public}s Clearing environment mismatch loop/history.", v17, 0xCu);
    v24 = v38;
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x1BFB5A5D0](v24, -1, -1);
    MEMORY[0x1BFB5A5D0](v17, -1, -1);
  }

  else
  {
    (*(v6 + 8))(v13, v5);
  }

  v25 = v43;
  v26 = v41;
  sub_1BF3BFE9C(v41);
  swift_beginAccess();
  v27 = *(v25 + 104);

  v44 = v5;
  v45 = *(v25 + 88);
  v46 = v27;
  v28 = *(v25 + 128);
  v43 = *(v25 + 112);
  v47 = v43;
  v48 = v28;
  type metadata accessor for ReloadTaskPair(0, &v44);
  sub_1BF4E8854();

  if (v49)
  {
    v30 = sub_1BF39B43C();

    if (v30)
    {
      v31 = v40;
      v44 = *(v30 + *(*v30 + 168) + *(v40 + 24));
      v32 = v44;
      v33 = swift_allocObject();
      *(v33 + 16) = 0xA000000000000000;
      v49 = v33 | 0x6000000000000000;
      sub_1BF39C510(v32);
      LOBYTE(v32) = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v44, &v49);
      sub_1BF39C9A4(v49);
      sub_1BF39C9A4(v44);
      if (v32)
      {
        sub_1BF3B7C08();
        v34 = sub_1BF4E7334();
        v35 = v39;
        (*(*(v34 - 8) + 56))(v39, 1, 1, v34);
        v36 = swift_allocObject();
        *(v36 + 16) = 0xD00000000000001CLL;
        *(v36 + 24) = 0x80000001BF4FBDE0;
        v37 = v31[9];
        *(v35 + v31[5]) = 1;
        *(v35 + v31[7]) = 1;
        *(v35 + v31[6]) = v36 | 0x2000000000000000;
        *(v35 + v31[8]) = 1;
        *(v35 + v37) = 0;
        sub_1BF3BD60C(v35, v26);

        sub_1BF45EABC(v35, type metadata accessor for ReloadConfiguration);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1BF3BF5B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1BF3BF60C(uint64_t a1, unint64_t *a2)
{
  v79 = a1;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 96);
  v78 = *(*v2 + 88);
  v74 = v5;
  v6 = type metadata accessor for ReloadHistory.ReloadHistoryRecord(0, v4, v78, v5);
  v73 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v65[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v65[-v9];
  v10 = sub_1BF4E90F4();
  v76 = *(v10 - 8);
  v77 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v65[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v65[-v13];
  v14 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v80 = &v65[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v20 = &v65[-v18];
  v81 = *a2;
  if (v81 >> 61 == 3)
  {
    v81 = *((v81 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  v21 = *(v14 + 16);
  v22 = v79;
  v21(&v65[-v18], v79, v4, v19);
  v23 = v81;
  sub_1BF39C510(v81);
  sub_1BF39C510(v23);
  v24 = sub_1BF4E7B34();
  v25 = sub_1BF4E8E84();
  sub_1BF39C9A4(v23);
  v66 = v25;
  v72 = v24;
  v26 = os_log_type_enabled(v24, v25);
  v70 = v14 + 16;
  v69 = v21;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v85[0] = v28;
    *v27 = 136446466;
    v29 = v80;
    (v21)(v80, v20, v4);
    v30 = v6;
    v31 = *(v14 + 8);
    v31(v20, v4);
    v32 = sub_1BF4E96A4();
    v34 = v33;
    v31(v29, v4);
    v6 = v30;
    v35 = v32;
    v36 = v22;
    v37 = v81;
    v38 = sub_1BF38D65C(v35, v34, v85);

    *(v27 + 4) = v38;
    *(v27 + 12) = 2082;
    v83[0] = v37;
    sub_1BF39C510(v37);
    v39 = ReloadConfiguration.ReloadReason.description.getter();
    v41 = v40;
    sub_1BF39C9A4(v83[0]);
    v42 = sub_1BF38D65C(v39, v41, v85);

    *(v27 + 14) = v42;
    v43 = v72;
    _os_log_impl(&dword_1BF389000, v72, v66, "record reload: %{public}s = %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v28, -1, -1);
    MEMORY[0x1BFB5A5D0](v27, -1, -1);
  }

  else
  {
    (*(v14 + 8))(v20, v4);

    v36 = v22;
  }

  swift_beginAccess();
  sub_1BF4E8CA4();

  v44 = v74;
  sub_1BF4E8854();

  v46 = v6;
  if (v83[0])
  {
    v72 = v65;
    v84 = v83[0];
    MEMORY[0x1EEE9AC00](v45);
    v47 = v78;
    *&v65[-32] = v4;
    *&v65[-24] = v47;
    v48 = v81;
    *&v65[-16] = v44;
    *&v65[-8] = v48;

    swift_getWitnessTable();
    v49 = v75;
    sub_1BF4E8B04();

    v50 = v71;
    v83[0] = v48;
    (*(v76 + 16))(v71, v49, v77);
    sub_1BF39C510(v48);
    v51 = v68;
    v52 = v4;
    sub_1BF3C01E4(v83, v50, v4, v47, v44, v68);
    v53 = v73;
    v54 = v67;
    (*(v73 + 16))(v67, v51, v46);
    sub_1BF4E8C54();
    v55 = sub_1BF4E8C34();
    v56 = v69;
    if (v55 >= 3)
    {
      sub_1BF4E8C64();
      (*(v53 + 8))(v54, v46);
    }

    v56(v80, v79, v52);
    v82 = v84;
    swift_beginAccess();
    sub_1BF4E8834();
    sub_1BF4E8864();
    swift_endAccess();
    sub_1BF39C9A4(v81);
    (*(v53 + 8))(v51, v46);
    return (*(v76 + 8))(v75, v77);
  }

  else
  {
    v69(v80, v36, v4);
    sub_1BF4E96C4();
    v58 = v73;
    swift_allocObject();
    v59 = sub_1BF4E8BC4();
    v61 = v60;
    v62 = v44;
    v63 = v81;
    v83[0] = v81;
    v64 = v71;
    (*(v58 + 56))(v71, 1, 1, v46);
    sub_1BF39C510(v63);
    sub_1BF3C01E4(v83, v64, v4, v78, v62, v61);
    v84 = v59;
    swift_beginAccess();
    sub_1BF4E8834();
    sub_1BF4E8864();
    swift_endAccess();
    return sub_1BF39C9A4(v63);
  }
}

uint64_t sub_1BF3BFE9C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - v6;
  swift_beginAccess();
  v8 = *(v3 + 88);
  v9 = *(v3 + 96);
  type metadata accessor for ReloadHistory.ReloadHistoryRecord(255, v4, v8, v9);
  sub_1BF4E8CA4();

  sub_1BF4E8854();

  if (v12)
  {
    v11 = &v11;
    v14 = v12;
    MEMORY[0x1EEE9AC00](result);
    *(&v11 - 4) = v4;
    *(&v11 - 3) = v8;
    *(&v11 - 2) = v9;
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1BF4E8E04();
    (*(v5 + 16))(v7, a1, v4);
    v13 = v14;
    swift_beginAccess();
    sub_1BF4E8834();
    sub_1BF4E8864();
    return swift_endAccess();
  }

  return result;
}

unint64_t *sub_1BF3C0134(unint64_t *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 122)
  {
    v6 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
    *result = (v6 | (v6 << 57)) & 0xF000000000000007;
  }

  else
  {
    v8 = sub_1BF4E7334();
    v9 = *(*(v8 - 8) + 56);
    v10 = v5 + *(a4 + 44);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1BF3C01E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = *a1;
  v8 = type metadata accessor for ReloadHistory.ReloadHistoryRecord(0, a3, a4, a5);
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a2, 1, v8) == 1)
  {
    v10 = sub_1BF4E90F4();
    result = (*(*(v10 - 8) + 8))(a2, v10);
    v12 = 0;
  }

  else
  {
    v12 = *(a2 + *(v8 + 48));
    result = (*(v9 + 8))(a2, v8);
  }

  if (v12 == -1)
  {
    __break(1u);
  }

  else
  {
    *(a6 + *(v8 + 48)) = v12 + 1;
  }

  return result;
}

uint64_t sub_1BF3C0320(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 122)
  {
    v4 = ((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7));
    v5 = v4 ^ 0x7E;
    v6 = 128 - v4;
    if (v5 >= 0x7A)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v10 = sub_1BF4E7334();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 44);

    return v11(v12, a2, v10);
  }
}

double sub_1BF3C03E0(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_assert_owner(*(*(v2 + qword_1EDC9AF58) + 16));
  swift_beginAccess();

  sub_1BF4E8854();

  swift_beginAccess();
  sub_1BF4E8834();

  sub_1BF4E8854();

  if (v6)
  {

    if (((*(*v2 + 1544))(a1, a2) & 1) != 0 && (v7 == 3 || !v7))
    {
      return sub_1BF3B3A74(a1, a2);
    }
  }

  return result;
}

uint64_t sub_1BF3C05A8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_beginAccess();
  if (*(v2 + 176) == 1)
  {
    v5 = *(v2 + qword_1EDC99040);
    v8 = v4;
    v6 = (*(**(v5 + 16) + 152))(&v8, a2);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1BF3C0648(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 160);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v12 - v9;
  (*(v7 + 16))(&v12 - v9, v2 + *(v5 + 176), v6, v8);
  LOBYTE(a2) = (*(*(v5 + 168) + 72))(a1, a2, v6);
  (*(v7 + 8))(v10, v6);
  return a2 & 1;
}

uint64_t sub_1BF3C0794(unint64_t *a1)
{
  v1 = *a1;
  v4 = 0xA000000000000000;
  v5 = v1;
  sub_1BF39C510(v1);
  v2 = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v5, &v4);
  sub_1BF39C9A4(v5);
  return v2 & 1;
}

uint64_t WidgetEntryKey.init(widget:metrics:host:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = a4 + *(type metadata accessor for WidgetEntryKey(0) + 24);

  return sub_1BF3C0870(a3, v5);
}

uint64_t sub_1BF3C0870(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1BF3C08E0(uint64_t a1, uint64_t a2)
{
  v4[3] = a1;
  v4[4] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AC0, &qword_1BF4EC148);
  return sub_1BF3B1E44(sub_1BF3C0980, v4, v2);
}

uint64_t sub_1BF3C09B4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = a1[12];
  if (!*(v6 + 16))
  {
    goto LABEL_5;
  }

  v7 = sub_1BF3916CC(a2);
  if ((v8 & 1) == 0)
  {

LABEL_5:
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    goto LABEL_6;
  }

  sub_1BF38E49C(*(v6 + 56) + 40 * v7, &v20);

LABEL_6:
  sub_1BF3C0C68(&v20, v18);
  v9 = v19;
  sub_1BF38C9B4(v18, &qword_1EBDD9320, &qword_1BF4F09B0);
  if (!v9)
  {
    swift_beginAccess();
    sub_1BF38E49C((a1 + 15), v18);
    sub_1BF38E49C((a1 + 2), v17);
    v10 = type metadata accessor for BundleEnvironmentProvider(0);
    swift_allocObject();
    v11 = a2;
    v12 = sub_1BF47FF20(v11, v18, v17);

    sub_1BF38C9B4(&v20, &qword_1EBDD9320, &qword_1BF4F09B0);
    *&v20 = v12;
    *(&v21 + 1) = v10;
    v22 = &protocol witness table for EnvironmentProvider;
    v13 = a1[5];
    v14 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v13);
    ExtensionManaging.extension(for:)(v11, v13, v14);
    v15 = v19;
    sub_1BF38C9B4(v18, &unk_1EBDD91B0, &unk_1BF4F0720);
    if (v15)
    {
      sub_1BF3C0C68(&v20, v18);
      swift_beginAccess();
      sub_1BF43AB00(v18, v11);
      swift_endAccess();
    }
  }

  result = sub_1BF3C0C68(&v20, v18);
  if (v19)
  {
    sub_1BF38C9B4(&v20, &qword_1EBDD9320, &qword_1BF4F09B0);
    return sub_1BF38E60C(v18, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BF3C0BE4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v5[14];
  os_unfair_lock_lock(*(v6 + 16));
  sub_1BF3C09B4(v5, a1, a2);
  v7 = *(v6 + 16);

  os_unfair_lock_unlock(v7);
}

uint64_t sub_1BF3C0C68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9320, &qword_1BF4F09B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TimelineKey.init(widgetEntryKey:)@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = [*a1 extensionIdentity];
  v6 = [v4 kind];
  v7 = sub_1BF4E8914();
  v9 = v8;

  v10 = [v4 intentReference];
  result = sub_1BF393884(a1);
  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v10;
  return result;
}

void sub_1BF3C0DE8(char *a1, NSObject *a2, void (*a3)(char *, char *, char *))
{
  v4 = v3;
  v192 = a3;
  v7 = *v3;
  v197 = v7;
  v188 = sub_1BF4E7FF4();
  v187 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v185 = &v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_1BF4E8064();
  v184 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v183 = &v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = v7[11];
  v198 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v196 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v162 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v194 = &v162 - v16;
  v182 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v179 = &v162 - v19;
  v20 = v7[10];
  v21 = *(v20 - 1);
  MEMORY[0x1EEE9AC00](v22);
  v195 = &v162 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v177 = &v162 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v193 = &v162 - v27;
  v181 = v28;
  MEMORY[0x1EEE9AC00](v29);
  v178 = &v162 - v30;
  v176 = sub_1BF4E8424();
  v175 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v174 = &v162 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v173 = &v162 - v33;
  v34 = v7[12];
  v191 = sub_1BF4E90F4();
  isa = v191[-1].isa;
  MEMORY[0x1EEE9AC00](v191);
  v180 = &v162 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v162 - v38;
  os_unfair_lock_assert_owner(*(*(v4 + qword_1EDC9AF58) + 16));
  if (((*(*v4 + 1552))(a1, a2) & 1) == 0)
  {
    v192 = *(v21 + 16);
    v192(v195, a1, v20);
    v94 = v198;
    v95 = *(v198 + 16);
    (v95)(v196, a2, v199);
    v96 = sub_1BF4E7B34();
    v97 = sub_1BF4E8E64();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v190 = v96;
      v99 = v94;
      v100 = v98;
      v191 = swift_slowAlloc();
      aBlock[0] = v191;
      *v100 = 136446466;
      v187 = v95;
      v101 = v193;
      LODWORD(v188) = v97;
      v102 = v195;
      v192(v193, v195, v20);
      v103 = *(v21 + 8);
      v103(v102, v20);
      v104 = sub_1BF4E96A4();
      v106 = v105;
      v103(v101, v20);
      v107 = sub_1BF38D65C(v104, v106, aBlock);

      *(v100 + 4) = v107;
      *(v100 + 12) = 2082;
      v108 = v194;
      v109 = v196;
      v110 = v199;
      (v187)(v194, v196, v199);
      v111 = *(v99 + 8);
      v111(v109, v110);
      v112 = sub_1BF4E96A4();
      v114 = v113;
      v111(v108, v110);
      v115 = sub_1BF38D65C(v112, v114, aBlock);

      *(v100 + 14) = v115;
      v96 = v190;
      _os_log_impl(&dword_1BF389000, v190, v188, "%{public}s:%{public}s Entry cannot be added to the store", v100, 0x16u);
      v116 = v191;
      swift_arrayDestroy();
      MEMORY[0x1BFB5A5D0](v116, -1, -1);
      MEMORY[0x1BFB5A5D0](v100, -1, -1);
    }

    else
    {
      (*(v94 + 8))(v196, v199);
      (*(v21 + 8))(v195, v20);
    }

LABEL_25:

    return;
  }

  v171 = v14;
  v190 = a2;
  v189 = v21;
  swift_beginAccess();
  v170 = v4;
  v40 = v197;
  v41 = v197[16];
  v42 = sub_1BF4E8834();
  v43 = v40[14];

  v195 = a1;
  v196 = v20;
  v168 = v42;
  v172 = v43;
  sub_1BF4E8854();

  v44 = v202;
  v167 = v202;
  if (!v202)
  {
    v45 = v199;
    swift_getTupleTypeMetadata2();
    v46 = sub_1BF4E8BF4();
    v44 = sub_1BF3B0FE8(v46, v45, v34, v41, v47);

    v202 = v44;
  }

  v48 = v190;
  sub_1BF4E8854();
  v49 = *(v34 - 8);
  v50 = (*(v49 + 48))(v39, 1, v34);
  (*(isa + 1))(v39, v191);
  if (v50 != 1)
  {
    v117 = v48;
    v118 = v189;
    v119 = *(v189 + 16);
    v120 = v177;
    v121 = v196;
    v119(v177, v195, v196);
    v122 = v198;
    v195 = *(v198 + 16);
    (v195)(v171, v117, v199);
    v96 = sub_1BF4E7B34();
    v123 = sub_1BF4E8E84();
    if (os_log_type_enabled(v96, v123))
    {
      v124 = swift_slowAlloc();
      v191 = v96;
      v125 = v121;
      v126 = v124;
      v192 = swift_slowAlloc();
      aBlock[0] = v192;
      *v126 = 136446466;
      LODWORD(v190) = v123;
      v127 = v193;
      v119(v193, v120, v125);
      v128 = *(v118 + 8);
      v128(v120, v125);
      v129 = sub_1BF4E96A4();
      v189 = v44;
      v131 = v130;
      v128(v127, v125);
      v132 = sub_1BF38D65C(v129, v131, aBlock);

      *(v126 + 4) = v132;
      *(v126 + 12) = 2082;
      v133 = v194;
      v134 = v171;
      v135 = v199;
      (v195)(v194, v171, v199);
      v136 = *(v122 + 8);
      v136(v134, v135);
      v137 = sub_1BF4E96A4();
      v139 = v138;
      v136(v133, v135);
      v140 = sub_1BF38D65C(v137, v139, aBlock);

      *(v126 + 14) = v140;
      v96 = v191;
      _os_log_impl(&dword_1BF389000, v191, v190, "%{public}s:%{public}s Already exists in store.", v126, 0x16u);
      v141 = v192;
      swift_arrayDestroy();
      MEMORY[0x1BFB5A5D0](v141, -1, -1);
      MEMORY[0x1BFB5A5D0](v126, -1, -1);
    }

    else
    {
      (*(v122 + 8))(v171, v199);
      (*(v118 + 8))(v120, v121);
    }

    goto LABEL_25;
  }

  v165 = v49;
  v171 = v41;
  v51 = v40[17];
  v52 = *(v51 + 88);
  v53 = v173;
  v169 = v34;
  v166 = v51;
  v52(v34);
  v54 = v174;
  v55 = v170;
  sub_1BF395A3C(v174);
  sub_1BF3983D4(&qword_1EDC9D788, MEMORY[0x1E69859A8], MEMORY[0x1E69859B8]);
  v56 = v176;
  v57 = sub_1BF4E88A4();
  v58 = *(v175 + 1);
  v58(v54, v56);
  v58(v53, v56);
  LODWORD(v173) = v57;
  if (v57)
  {
    v59 = 3;
  }

  else
  {
    v59 = 0;
  }

  LODWORD(v174) = v59;
  v60 = v189;
  v61 = *(v189 + 16);
  v62 = v178;
  v64 = v195;
  v63 = v196;
  v176 = v189 + 16;
  v175 = v61;
  v61(v178, v195, v196);
  v65 = *(v198 + 16);
  v66 = v179;
  v191 = (v198 + 16);
  v177 = v65;
  (v65)(v179, v48, v199);
  v67 = sub_1BF4E7B34();
  v68 = sub_1BF4E8E84();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    aBlock[0] = v164;
    *v69 = 136446722;
    v70 = v193;
    v175(v193, v62, v196);
    v163 = v67;
    v71 = v62;
    v72 = *(v60 + 8);
    v72(v71, v196);
    LODWORD(v178) = v68;
    v73 = sub_1BF4E96A4();
    v75 = v74;
    v72(v70, v196);
    v76 = sub_1BF38D65C(v73, v75, aBlock);

    *(v69 + 4) = v76;
    *(v69 + 12) = 2082;
    v77 = v194;
    v78 = v199;
    (v177)(v194, v66, v199);
    v79 = *(v198 + 8);
    v79(v66, v78);
    v80 = sub_1BF4E96A4();
    v82 = v81;
    v83 = v78;
    v84 = v77;
    v79(v77, v83);
    v85 = v80;
    v86 = v70;
    v64 = v195;
    v87 = sub_1BF38D65C(v85, v82, aBlock);
    v48 = v190;

    *(v69 + 14) = v87;
    *(v69 + 22) = 2082;
    if (v173)
    {
      v88 = 0x64656B636F6C62;
    }

    else
    {
      v88 = 0x64616F6C6572;
    }

    if (v173)
    {
      v89 = 0xE700000000000000;
    }

    else
    {
      v89 = 0xE600000000000000;
    }

    v90 = sub_1BF38D65C(v88, v89, aBlock);

    *(v69 + 24) = v90;
    v91 = v163;
    _os_log_impl(&dword_1BF389000, v163, v178, "%{public}s:%{public}s Add to store.  Marked as state: %{public}s", v69, 0x20u);
    v92 = v164;
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v92, -1, -1);
    v93 = v69;
    v63 = v196;
    MEMORY[0x1BFB5A5D0](v93, -1, -1);
  }

  else
  {
    (*(v198 + 8))(v66, v199);
    (*(v60 + 8))(v62, v63);

    v86 = v193;
    v84 = v194;
  }

  LODWORD(v194) = v167 == 0;
  LOBYTE(aBlock[0]) = v174;
  sub_1BF399684(aBlock, v64);
  (v177)(v84, v48, v199);
  v142 = v165;
  v143 = v180;
  v144 = v169;
  (*(v165 + 16))(v180, v192, v169);
  (*(v142 + 56))(v143, 0, 1, v144);
  sub_1BF4E8864();
  v145 = v175;
  v175(v86, v64, v63);
  v201 = v202;
  v196 = v202;
  swift_beginAccess();
  sub_1BF4E8834();
  v146 = v64;
  v147 = v86;
  v148 = v63;

  sub_1BF4E8864();
  swift_endAccess();
  v195 = *(v55 + qword_1EDC9AFD0);
  v145(v147, v146, v63);
  v149 = v199;
  (v177)(v84, v190, v199);
  v150 = v189;
  v151 = (*(v189 + 80) + 96) & ~*(v189 + 80);
  v152 = v198;
  v153 = (v181 + *(v198 + 80) + v151) & ~*(v198 + 80);
  v154 = swift_allocObject();
  *(v154 + 16) = v148;
  *(v154 + 24) = v149;
  *(v154 + 32) = v169;
  v155 = v197;
  v156 = v172;
  *(v154 + 40) = v197[13];
  *(v154 + 48) = v156;
  v157 = v171;
  *(v154 + 56) = v155[15];
  *(v154 + 64) = v157;
  *(v154 + 72) = v166;
  *(v154 + 80) = v194;
  *(v154 + 88) = v55;
  (*(v150 + 32))(v154 + v151, v147, v148);
  (*(v152 + 32))(v154 + v153, v84, v149);
  aBlock[4] = sub_1BF3BB220;
  aBlock[5] = v154;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF38E868;
  aBlock[3] = &block_descriptor_100;
  v158 = _Block_copy(aBlock);

  v159 = v183;
  sub_1BF4E8014();
  v201 = MEMORY[0x1E69E7CC0];
  sub_1BF3983D4(&qword_1EDC9F980, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
  sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890, MEMORY[0x1E69E6328]);
  v160 = v185;
  v161 = v188;
  sub_1BF4E91A4();
  MEMORY[0x1BFB591B0](0, v159, v160, v158);
  _Block_release(v158);
  v187[1](v160, v161);
  (*(v184 + 8))(v159, v186);
}

uint64_t sub_1BF3C225C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 96) & ~v4;
  v6 = *(v2 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;

  (*(v3 + 8))(v0 + v5, v1);
  (*(v6 + 8))(v0 + v8, v2);

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v10 | 7);
}

uint64_t sub_1BF3C23CC@<X0>(unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = sub_1BF4E7334();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v6[10];
  v10 = v6[11];
  v11 = v6[12];
  v12 = type metadata accessor for ReloadHistory.ReloadHistoryRecord(255, v9, v10, v11);
  v13 = sub_1BF4E90F4();
  v38 = *(v13 - 8);
  v39 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34[-v14];
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v40 = &v34[-v17];
  v18 = *a2;
  if (v18 >> 61 == 3)
  {
    v18 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  swift_beginAccess();

  sub_1BF39C510(v18);
  sub_1BF4E8CA4();
  sub_1BF4E8854();

  v20 = v45;
  if (!v45)
  {
    goto LABEL_11;
  }

  if (qword_1EDC97AD8 != -1)
  {
    swift_once();
  }

  v21 = off_1EDC97AE0;
  if (!*(off_1EDC97AE0 + 2) || (v22 = sub_1BF3C42F4(v18, v19), (v23 & 1) == 0))
  {

LABEL_11:
    sub_1BF39C9A4(v18);
    v27 = 1;
    goto LABEL_12;
  }

  v36 = v34;
  v37 = a3;
  v24 = v21[7] + 24 * v22;
  v25 = *v24;
  v35 = *(v24 + 16);
  v45 = v20;
  MEMORY[0x1EEE9AC00](v22);
  *&v34[-32] = v9;
  *&v34[-24] = v10;
  *&v34[-16] = v11;
  *&v34[-8] = v18;
  swift_getWitnessTable();
  sub_1BF4E8B04();

  v26 = v42;
  if ((*(v42 + 48))(v15, 1, v12) == 1)
  {
    sub_1BF39C9A4(v18);
    (*(v38 + 8))(v15, v39);
    v27 = 1;
    a3 = v37;
LABEL_12:
    v29 = v43;
    v28 = v44;
    return (*(v29 + 56))(a3, v27, 1, v28);
  }

  v31 = v40;
  (*(v26 + 32))(v40, v15, v12);
  a3 = v37;
  v32 = v44;
  if (v35 > 1)
  {
    pow(v25, *&v31[*(v12 + 48)]);
  }

  v33 = v41;
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  sub_1BF4E7244();
  sub_1BF39C9A4(v18);
  v29 = v43;
  (*(v43 + 8))(v33, v32);
  (*(v26 + 8))(v31, v12);
  v28 = v32;
  v27 = 0;
  return (*(v29 + 56))(a3, v27, 1, v28);
}

uint64_t sub_1BF3C2920()
{
  sub_1BF4E72C4();
  if (v0 <= 9.22337204e18)
  {
    if (v0 >= 9.22337204e18)
    {
      v1 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v2 = floor(v0);
      if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (v2 <= -9.22337204e18)
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (v2 >= 9.22337204e18)
      {
LABEL_20:
        __break(1u);
        return MEMORY[0x1EEE6C8D8]();
      }

      v1 = v2;
    }
  }

  else
  {
    v1 = 0x7FFFFFFFFFFFFFFFLL;
    v0 = 9.22337204e18;
  }

  v3 = (v0 - v1) * 1000000000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  return MEMORY[0x1EEE6C8D8]();
}

uint64_t sub_1BF3C2A38()
{
  v1 = v0;
  v37 = *v0;
  v2 = sub_1BF4E7FE4();
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v41 = (&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = sub_1BF4E80D4();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1BF4E7FF4();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1BF4E8064();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BF4E8F84();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BF4E80E4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v1[4];
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12, v14);
  v18 = v17;
  LOBYTE(v17) = sub_1BF4E80F4();
  result = (*(v13 + 8))(v16, v12);
  if (v17)
  {
    if (*(v1 + OBJC_IVAR____TtC9ChronoKit17WidgetUpdateTimer__timer))
    {
      v20 = *(v1 + OBJC_IVAR____TtC9ChronoKit17WidgetUpdateTimer__timer);
    }

    else
    {
      v31 = v1[2];
      v32 = OBJC_IVAR____TtC9ChronoKit17WidgetUpdateTimer__timer;
      v30 = sub_1BF3901C0(0, &qword_1EDC9D6E8, 0x1E69E9630);
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BF3A1144(&unk_1EDC9D6F0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9BC8, &qword_1BF4F6098);
      sub_1BF38C8B4(&unk_1EDC9D740, &qword_1EBDD9BC8, &qword_1BF4F6098, MEMORY[0x1E69E6328]);
      sub_1BF4E91A4();
      v20 = sub_1BF4E8F94();
      (*(v9 + 8))(v11, v8);
      ObjectType = swift_getObjectType();
      v22 = swift_allocObject();
      v23 = v37;
      *(v22 + 16) = v31;
      *(v22 + 24) = v23;
      aBlock[4] = sub_1BF4B33E0;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BF38E868;
      aBlock[3] = &block_descriptor_8;
      v24 = _Block_copy(aBlock);

      sub_1BF4E8014();
      v25 = v34;
      sub_1BF3C30F8();
      sub_1BF4E8FA4();
      _Block_release(v24);
      (*(v36 + 8))(v25, v38);
      (*(v33 + 8))(v7, v35);

      v26 = v39;
      sub_1BF4E80B4();
      v27 = v41;
      *v41 = 0;
      v29 = v43;
      v28 = v44;
      (*(v43 + 104))(v27, *MEMORY[0x1E69E7F28], v44);
      MEMORY[0x1BFB592C0](v26, v27, ObjectType, INFINITY);
      (*(v29 + 8))(v27, v28);
      (*(v40 + 8))(v26, v42);
      sub_1BF4E8FC4();
      *(v1 + v32) = v20;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRetain();
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF3C30BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF3C30F8()
{
  sub_1BF4E7FF4();
  sub_1BF3A1144(&qword_1EDC9F980, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
  sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890, MEMORY[0x1E69E6328]);
  return sub_1BF4E91A4();
}

uint64_t sub_1BF3C31E4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_1BF3C32CC(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BF4E7334();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  v14 = a1[4];
  BSDispatchQueueAssertMain();
  (*(v7 + 16))(v9, a2, v6);
  type metadata accessor for DuetWidgetViewEntry(0);
  v15 = swift_allocObject();
  (*(v7 + 56))(v15 + OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_endViewDate, 1, 1, v6);
  v15[2] = v11;
  v15[3] = v10;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;

  v16 = v12;

  sub_1BF4E7324();
  (*(v7 + 32))(v15 + OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_staleContentDate, v9, v6);
  type metadata accessor for DuetWidgetViewRecorder.Record();
  swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  swift_beginAccess();

  MEMORY[0x1BFB58DD0](v17);
  if (*((*(v3 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BF4E8BE4();
  }

  sub_1BF4E8C24();
  swift_endAccess();
  if (!*(v3 + 88))
  {
    sub_1BF3C36CC(v18);
  }

  return v15;
}

uint64_t type metadata accessor for DuetWidgetViewEntry(uint64_t a1)
{
  result = qword_1EDC9A368;
  if (!qword_1EDC9A368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BF3C3564(uint64_t a1)
{
  sub_1BF4E7334();
  if (v1 <= 0x3F)
  {
    sub_1BF3C363C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BF3C363C(uint64_t a1)
{
  if (!qword_1EDC9FFA8)
  {
    sub_1BF4E7334();
    v1 = sub_1BF4E90F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC9FFA8);
    }
  }
}

void sub_1BF3C36CC(double a1)
{
  BSDispatchQueueAssertMain();
  [*(v1 + 88) invalidate];
  v2 = objc_allocWithZone(MEMORY[0x1E698E660]);
  v3 = sub_1BF4E88E4();
  v4 = [v2 initWithIdentifier_];

  v5 = *(v1 + 88);
  *(v1 + 88) = v4;
  v6 = v4;

  if (v6)
  {
    v7 = *(v1 + 16);
    sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
    v8 = sub_1BF4E8F34();
    v9 = swift_allocObject();
    swift_weakInit();
    v11[4] = sub_1BF4C6B40;
    v11[5] = v9;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1BF3CAF50;
    v11[3] = &block_descriptor_57;
    v10 = _Block_copy(v11);

    [v6 scheduleWithFireInterval:v8 leewayInterval:v10 queue:v7 handler:0.0];
    _Block_release(v10);
  }
}

uint64_t sub_1BF3C3864()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1BF3C38C4()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(*(v1 + 16));
  if ((*(v0 + 32) & 1) == 0)
  {
    *(v0 + 32) = 1;
    [*(v0 + 16) invalidate];
  }

  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v2);
}

uint64_t CHDMonotonicTimer.init(time:repeat:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  *(v2 + 16) = 0;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *v6 = 0;
  *(v5 + 16) = v6;
  *(v2 + 24) = v5;
  *(v2 + 32) = 0;
  *(v2 + 40) = v4;
  *(v2 + 48) = a2 & ~(a2 >> 63);
  return v2;
}

uint64_t CHDMonotonicTimer.__allocating_init(time:repeat:)(uint64_t *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CHDMonotonicTimer.init(time:repeat:)(a1, a2);
  return v4;
}

void sub_1BF3C3A04(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  os_unfair_lock_lock(*(v5 + 16));
  sub_1BF3B9C50(v2, a1, a2);
  v6 = *(v5 + 16);

  os_unfair_lock_unlock(v6);
}

void sub_1BF3C3A84(uint64_t a1)
{
  v39 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F40, &qword_1BF4EF090);
  v42 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v33 - v4;
  v5 = *(v39 + 80);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v33 - v13;
  v15 = sub_1BF4E7194();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 160) == 1)
  {
    v38 = v3;
    sub_1BF3985D8(a1, v14);
    v37 = 0;
    (*(v16 + 56))(v14, 0, 1, v15);
    (*(v16 + 32))(v18, v14, v15);
    if (qword_1EDC9EFD8 != -1)
    {
      swift_once();
    }

    v19 = sub_1BF4E7B54();
    __swift_project_value_buffer(v19, qword_1EDCA6A48);
    v20 = v40;
    isa = v40[2].isa;
    (isa)(v11, a1, v5);
    v21 = sub_1BF4E7B34();
    v22 = sub_1BF4E8E84();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v35 = v22;
      v24 = v23;
      v34 = swift_slowAlloc();
      v43 = v34;
      *v24 = 136446210;
      (isa)(v8, v11, v5);
      v25 = v20[1].isa;
      v25(v11, v5);
      v40 = v21;
      v26 = sub_1BF4E96A4();
      v28 = v27;
      v25(v8, v5);
      v29 = sub_1BF38D65C(v26, v28, &v43);

      *(v24 + 4) = v29;
      v21 = v40;
      _os_log_impl(&dword_1BF389000, v40, v35, "%{public}s marked as requiring reload", v24, 0xCu);
      v30 = v34;
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1BFB5A5D0](v30, -1, -1);
      MEMORY[0x1BFB5A5D0](v24, -1, -1);
    }

    else
    {
      (v20[1].isa)(v11, v5);
    }

    v31 = v41;
    LOBYTE(v43) = 1;
    sub_1BF4E7604();
    sub_1BF38C8B4(&qword_1EDC9D5B8, &qword_1EBDD8F40, &qword_1BF4EF090, MEMORY[0x1E6993F80]);
    v32 = v37;
    sub_1BF4E7044();
    if (v32)
    {
    }

    (*(v42 + 8))(v31, v38);
    (*(v16 + 8))(v18, v15);
  }
}

double sub_1BF3C403C(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;
  return sub_1BF3B1E44(sub_1BF3C40E0, v3, MEMORY[0x1E69E7CA8] + 8);
}

unint64_t sub_1BF3C4114(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD8770, &unk_1BF4EB290);
    v3 = sub_1BF4E94C4();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      sub_1BF39C510(v5);
      result = sub_1BF3C42F4(v5, v9);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v12 = v3[7] + 24 * result;
      *v12 = v6;
      *(v12 + 8) = v7;
      *(v12 + 16) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1BF3C4220()
{
  v0 = sub_1BF3C4114(&unk_1F3DECC10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C30, &qword_1BF4F6F48);
  result = swift_arrayDestroy();
  off_1EDC97AE0 = v0;
  return result;
}

unint64_t sub_1BF3C42A0()
{
  result = qword_1EDC9A068[0];
  if (!qword_1EDC9A068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC9A068);
  }

  return result;
}

unint64_t sub_1BF3C42F4(unint64_t a1, double a2)
{
  v5[9] = a1;
  sub_1BF4E9804();
  ReloadConfiguration.ReloadReason.hash(into:)(v5);
  v3 = sub_1BF4E9844();

  return sub_1BF3C45D0(a1, v3);
}

uint64_t ReloadConfiguration.ReloadReason.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 >> 61;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v6 = 14;
      goto LABEL_14;
    }

    if (v4 == 4)
    {
      v6 = 15;
      goto LABEL_14;
    }

    switch(__ROR8__(v3 + 0x6000000000000000, 3))
    {
      case 1:
        v9 = 1;
        break;
      case 2:
        v9 = 2;
        break;
      case 3:
        v9 = 3;
        break;
      case 4:
        v9 = 4;
        break;
      case 5:
        v9 = 7;
        break;
      case 6:
        v9 = 8;
        break;
      case 7:
        v9 = 9;
        break;
      case 8:
        v9 = 10;
        break;
      case 9:
        v9 = 11;
        break;
      case 0xALL:
        v9 = 12;
        break;
      case 0xBLL:
        v9 = 16;
        break;
      case 0xCLL:
        v9 = 17;
        break;
      case 0xDLL:
        v9 = 18;
        break;
      case 0xELL:
        v9 = 19;
        break;
      case 0xFLL:
        v9 = 20;
        break;
      default:
        v9 = 0;
        break;
    }

    return MEMORY[0x1BFB59A70](v9);
  }

  else
  {
    if (v4)
    {
      if (v4 == 1)
      {
        MEMORY[0x1BFB59A70](6);

        sub_1BF4E89F4();
      }

      v6 = 13;
LABEL_14:
      MEMORY[0x1BFB59A70](v6);
      return ReloadConfiguration.ReloadReason.hash(into:)(a1);
    }

    v7 = *(v3 + 16);
    MEMORY[0x1BFB59A70](5);
    sub_1BF4E9824();
    if (v7)
    {
      v8 = v7;
      sub_1BF4E90B4();
    }

    return sub_1BF4E89F4();
  }
}

unint64_t sub_1BF3C45D0(unint64_t a1, uint64_t a2)
{
  v9 = a1;
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      v8 = *(*(v2 + 48) + 8 * v4);
      sub_1BF39C510(v8);
      v6 = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v8, &v9);
      sub_1BF39C9A4(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1BF3C468C(unint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v5 = a2;
  v6 = v2;
  sub_1BF39C510(v2);
  v3 = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v6, &v5);
  sub_1BF39C9A4(v6);
  return v3 & 1;
}

uint64_t sub_1BF3C4704(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BF4E7334();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v74 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v83 = &v74 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v74 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v81 = &v74 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v82 = &v74 - v19;
  v20 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B40, &unk_1BF4EC900);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v74 - v24;
  if (_s9ChronoKit19ReloadConfigurationV2eeoiySbAC_ACtFZ_0(v2, a1))
  {
    goto LABEL_2;
  }

  v77 = v10;
  v78 = v22;
  v75 = v15;
  v76 = v7;
  v79 = v4;
  v80 = v5;
  v27 = type metadata accessor for ReloadConfiguration(0);
  v28 = *(v27 + 24);
  v29 = *(v2 + v28);
  v84 = 0xA000000000000060;
  v85 = v29;
  sub_1BF39C510(v29);
  v30 = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v85, &v84);
  sub_1BF39C9A4(v29);
  if (v30)
  {
    v31 = *(a1 + *(v27 + 24));
    v84 = 0xA000000000000060;
    v85 = v31;
    sub_1BF39C510(v31);
    v32 = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v85, &v84);
    sub_1BF39C9A4(v31);
    if ((v32 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v33 = *(v2 + v28);
  v84 = 0xA000000000000030;
  v85 = v33;
  sub_1BF39C510(v33);
  v34 = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v85, &v84);
  sub_1BF39C9A4(v33);
  if (v34)
  {
    v35 = *(a1 + *(v27 + 24));
    v84 = 0xA000000000000030;
    v85 = v35;
    sub_1BF39C510(v35);
    v36 = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v85, &v84);
    sub_1BF39C9A4(v35);
    if ((v36 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v37 = *(v2 + v28);
  if ((v37 & 0xE000000000000000) == 0x6000000000000000)
  {
    if (*(a1 + *(v27 + 24)) >> 61 == 3)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if ((v37 & 0xE000000000000000) != 0xA000000000000000 || (v38 = __ROR8__(v37 + 0x6000000000000000, 3), v38 > 0xB) || ((1 << v38) & 0x84F) == 0)
  {
LABEL_16:
    v74 = v27;
    v41 = *(v27 + 20);
    v42 = *(v2 + v41);
    v43 = *(a1 + v41);
    v44 = v23[12];
    v45 = v23[16];
    v46 = v23[20];
    sub_1BF39B31C(v2, v25, type metadata accessor for ReloadConfiguration.ReloadType);
    sub_1BF39B31C(a1, &v25[v44], type metadata accessor for ReloadConfiguration.ReloadType);
    v25[v45] = v42;
    v25[v46] = v43;
    v47 = v25[v45];
    v48 = v79;
    v49 = *(v80 + 48);
    if (v49(v25, 1, v79) == 1)
    {
      if (v49(&v25[v44], 1, v48) == 1)
      {
        if (v47)
        {
          sub_1BF3B8DEC(v25);
          v26 = v43 ^ 1;
          return v26 & 1;
        }

        if (v43)
        {
          sub_1BF3B8DEC(v25);
          goto LABEL_2;
        }

        goto LABEL_37;
      }

      sub_1BF3B8DEC(&v25[v44]);
LABEL_25:
      sub_1BF3B8DEC(v25);
      v26 = 1;
      return v26 & 1;
    }

    v51 = v78;
    sub_1BF39B31C(v25, v78, type metadata accessor for ReloadConfiguration.ReloadType);
    if (v49(&v25[v44], 1, v48) == 1)
    {
      (*(v80 + 8))(v51, v48);
      sub_1BF38C9B4(v25, &qword_1EBDD8B40, &unk_1BF4EC900);
LABEL_2:
      v26 = 0;
      return v26 & 1;
    }

    if (v47)
    {
      v52 = v77;
      if ((v43 & 1) == 0)
      {
        v53 = v80;
        v54 = *(v80 + 32);
        v55 = v82;
        v54(v82, v78, v48);
        v56 = &v25[v44];
        v57 = v81;
        v54(v81, v56, v48);
        if (sub_1BF4E72D4())
        {
          v58 = *(v53 + 8);
          v58(v57, v48);
          v58(v55, v48);
          goto LABEL_25;
        }

        v26 = sub_1BF4E7274();
        v63 = *(v53 + 8);
        v63(v57, v48);
        v64 = v55;
        goto LABEL_34;
      }
    }

    else
    {
      v52 = v77;
      if ((v43 & 1) == 0)
      {
        v65 = v80;
        v66 = v48;
        v67 = *(v80 + 32);
        v68 = v75;
        v67(v75, v78, v66);
        v69 = &v25[v44];
        v70 = v83;
        v67(v83, v69, v66);
        if (sub_1BF4E72D4())
        {
          v71 = *(v65 + 8);
          v71(v70, v66);
          v71(v68, v66);
LABEL_37:
          v72 = *(v74 + 32);
          if (*(v2 + v72) == 1)
          {
            v26 = *(a1 + v72) ^ 1;
          }

          else
          {
            v26 = 0;
          }

          goto LABEL_42;
        }

        v26 = sub_1BF4E7274();
        v73 = *(v65 + 8);
        v73(v70, v66);
        v73(v68, v66);
LABEL_42:
        sub_1BF3B8DEC(v25);
        return v26 & 1;
      }
    }

    v59 = v80;
    v60 = *(v80 + 32);
    v60(v52, v78, v48);
    v61 = &v25[v44];
    v62 = v76;
    v60(v76, v61, v48);
    v26 = sub_1BF4E7274();
    v63 = *(v59 + 8);
    v63(v62, v48);
    v64 = v52;
LABEL_34:
    v63(v64, v48);
    goto LABEL_42;
  }

  v39 = *(a1 + *(v27 + 24));
  if (v39 >> 61 != 5)
  {
LABEL_20:
    v26 = 1;
    return v26 & 1;
  }

  v40 = __ROR8__(v39 + 0x6000000000000000, 3);
  v26 = 1;
  if (v40 <= 0xB && ((1 << v40) & 0x84F) != 0)
  {
    goto LABEL_16;
  }

  return v26 & 1;
}

uint64_t ReloadTaskCancellable.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

dispatch_time_t static CHDMonotonicTime.advancedFromNow(by:)@<X0>(int64_t a1@<X0>, dispatch_time_t *a2@<X8>)
{
  if (a1 < 0)
  {
    if (qword_1EDC9AA48 != -1)
    {
      swift_once();
    }

    result = qword_1EDC9AA50;
  }

  else
  {
    result = CHDMonotonicTimeFromNow(a1);
  }

  *a2 = result;
  return result;
}

{
  result = CHDMonotonicTimeFromNow(a1);
  *a2 = result;
  return result;
}

uint64_t Optional<A>.earlier(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *result;
  v5 = *v2;
  if (*(v2 + 8))
  {
    v6 = *result;
  }

  else
  {
    v6 = *v2;
  }

  v7 = *(v2 + 8) & *(result + 8);
  if ((*(v2 + 8) & 1) == 0 && (*(result + 8) & 1) == 0)
  {
    result = CHDMonotonicTimeLessThan(*result, *v2);
    v7 = 0;
    if (result)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  return result;
}

void static KeepAliveTransaction.with<A>(reason:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for KeepAliveTransaction();
  swift_initStackObject();

  v10 = sub_1BF390264(a1, a2);

  v15 = v10;
  v13[2] = a5;
  v13[3] = a3;
  v13[4] = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C28, &unk_1BF4F6C90);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
  sub_1BF3C50E4(&v15, sub_1BF3C51BC, v13, v11, v12, a5, MEMORY[0x1E69E7288], &v14);
}

uint64_t sub_1BF3C50E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v14, v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_1BF3C51BC(void *a1)
{
  result = (*(v1 + 24))();
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

double sub_1BF3C51F4(uint64_t a1, uint64_t a2)
{
  v6[7] = *(v2 + qword_1EDC9AF58);
  v6[3] = a1;
  v6[4] = a2;
  v3 = type metadata accessor for UnfairLock();
  v4 = sub_1BF4E90F4();

  sub_1BF38D774(sub_1BF3C52E8, v6, v3, v4, &off_1F3DEE010);

  return result;
}

uint64_t sub_1BF3C5308@<X0>(uint64_t *a1@<X0>, void *a4@<X8>)
{
  v5 = *a1;
  swift_beginAccess();
  v6 = *(v5 + 96);
  sub_1BF4E8834();

  sub_1BF4E8854();

  if (!v8)
  {
    return (*(*(v6 - 8) + 56))(a4, 1, 1, v6);
  }

  sub_1BF4E8854();
}

double sub_1BF3C54B8@<D0>(uint64_t x8_0@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5);
  sub_1BF3C5554(x8_0);
  os_unfair_lock_unlock(*(v4 + 16));

  return result;
}

uint64_t sub_1BF3C5554@<X0>(uint64_t a3@<X8>)
{
  v37 = a3;
  v3 = type metadata accessor for EnvironmentModifiers(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9578, &qword_1BF4F1920);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v36 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9860, &qword_1BF4F31A0);
  sub_1BF4E8854();

  v13 = v42;

  sub_1BF4E8854();

  if (v13)
  {
    v34 = v12;
    v35 = v3;
    v14 = v13 & 0xFFFFFFFFFFFFFF8;
    if (v13 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BF4E9204())
    {
      v16 = 0;
      v41 = v13 & 0xC000000000000001;
      v17 = MEMORY[0x1E69E7CC0];
      v38 = i;
      v39 = v13;
      while (v41)
      {
        MEMORY[0x1BFB59570](v16, v13);
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_22;
        }

LABEL_10:
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v20 = Strong;
          v21 = v14;
          v22 = v4;
          v23 = *(Strong + 16);
          v24 = *(v23 + 16);

          os_unfair_lock_lock(v24);
          v25 = OBJC_IVAR____TtC9ChronoKit29EnvironmentModifiersAssertion__lock_environmentModifiers;
          swift_beginAccess();
          v26 = v20 + v25;
          v27 = v40;
          sub_1BF44B0AC(v26, v40);
          os_unfair_lock_unlock(*(v23 + 16));

          sub_1BF44B9BC(v27, v43);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_1BF3C5AC4(0, v17[2] + 1, 1, v17);
          }

          v29 = v17[2];
          v28 = v17[3];
          v4 = v22;
          if (v29 >= v28 >> 1)
          {
            v17 = sub_1BF3C5AC4((v28 > 1), v29 + 1, 1, v17);
          }

          v14 = v21;
          v17[2] = v29 + 1;
          sub_1BF44B9BC(v43, v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v29);
          i = v38;
          v13 = v39;
        }

        else
        {
        }

        ++v16;
        if (v18 == i)
        {
          goto LABEL_26;
        }
      }

      if (v16 >= *(v14 + 16))
      {
        goto LABEL_23;
      }

      v18 = v16 + 1;
      if (!__OFADD__(v16, 1))
      {
        goto LABEL_10;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

    v17 = MEMORY[0x1E69E7CC0];
LABEL_26:

    v12 = v34;
    v3 = v35;
    goto LABEL_27;
  }

  if ((*(v4 + 48))(v12, 1, v3) != 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_27:
    v30 = v36;
    sub_1BF472A64(v12, v36);
    v31 = v37;
    sub_1BF3C5AEC(v30, v17, v37);
    (*(v4 + 56))(v31, 0, 1, v3);
    return sub_1BF4729FC(v12);
  }

  (*(v4 + 56))(v37, 1, 1, v3);
  return sub_1BF4729FC(v12);
}

uint64_t sub_1BF3C5A14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9518, &qword_1BF4F1660);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BF3C5AEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v147 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9518, &qword_1BF4F1660);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v155 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v144 = &v130 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v146 = &v130 - v10;
  v11 = type metadata accessor for EnvironmentModifiers(0);
  v163 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v136 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v130 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v154 = &v130 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v153 = &v130 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v156 = &v130 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v151 = &v130 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v130 = &v130 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v157 = &v130 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v150 = &v130 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v130 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = (&v130 - v34);
  MEMORY[0x1EEE9AC00](v36);
  v158 = (&v130 - v37);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v130 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9578, &qword_1BF4F1920);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v134 = &v130 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v133 = &v130 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v138 = &v130 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v130 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v140 = &v130 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v139 = &v130 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v130 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v130 - v58;
  v161 = v11;
  v60 = *(v11 + 32);
  v61 = sub_1BF4E6F14();
  v145 = *(v61 - 8);
  v62 = *(v145 + 56);
  v137 = v60;
  v160 = v61;
  v142 = v145 + 56;
  v141 = v62;
  (v62)(a3 + v60, 1, 1);
  v131 = MEMORY[0x1E69E7CC0] >> 62;
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_113;
  }

LABEL_2:
  for (i = MEMORY[0x1E69E7CD0]; ; i = v129)
  {
    sub_1BF38C94C(v147, v59, &qword_1EBDD9578, &qword_1BF4F1920);
    v148 = *(v163 + 48);
    v149 = v163 + 48;
    v63 = v148(v59, 1, v161);
    v162 = a2;
    v159 = a3;
    v143 = v49;
    v135 = v15;
    if (v63 == 1)
    {
      sub_1BF38C9B4(v59, &qword_1EBDD9578, &qword_1BF4F1920);
    }

    else
    {
      v64 = *v59;
      sub_1BF44B050(v59);
      if (v64)
      {
        v65 = 1;
        v66 = v161;
        goto LABEL_20;
      }
    }

    v152 = v56;
    a3 = *(a2 + 16);
    if (a3)
    {
      v56 = 0;
      v59 = MEMORY[0x1E69E7CC0];
      while (v56 < *(a2 + 16))
      {
        v15 = (*(v163 + 80) + 32) & ~*(v163 + 80);
        v49 = *(v163 + 72);
        sub_1BF44B0AC(a2 + v15 + v49 * v56, v40);
        if (*v40 == 1)
        {
          sub_1BF44B9BC(v40, v158);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v164 = v59;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1BF3E157C(0, *(v59 + 2) + 1, 1);
            v59 = v164;
          }

          v69 = *(v59 + 2);
          v68 = *(v59 + 3);
          if (v69 >= v68 >> 1)
          {
            sub_1BF3E157C((v68 > 1), v69 + 1, 1);
            v59 = v164;
          }

          *(v59 + 2) = v69 + 1;
          sub_1BF44B9BC(v158, &v59[v15 + v69 * v49]);
          a2 = v162;
        }

        else
        {
          sub_1BF44B050(v40);
        }

        if (a3 == ++v56)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_110;
    }

    v59 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v70 = *(v59 + 2);

    v65 = v70 != 0;
    a3 = v159;
    v66 = v161;
    v56 = v152;
LABEL_20:
    *a3 = v65;
    sub_1BF38C94C(v147, v56, &qword_1EBDD9578, &qword_1BF4F1920);
    if (v148(v56, 1, v66) == 1)
    {
      sub_1BF38C9B4(v56, &qword_1EBDD9578, &qword_1BF4F1920);
      v71 = 0;
    }

    else
    {
      v71 = *(v56 + 8);
      sub_1BF44B050(v56);
    }

    *(a3 + 8) = v71;
    v40 = *(a2 + 16);
    if (v40)
    {
      v72 = a2 + ((*(v163 + 80) + 32) & ~*(v163 + 80));
      v73 = *(v163 + 72);
      v49 = *(a2 + 16);
      do
      {
        sub_1BF44B0AC(v72, v35);
        v74 = v35[1];
        sub_1BF44B050(v35);
        if ((v74 & ~v71) != 0)
        {
          v71 |= v74;
          *(a3 + 8) = v71;
        }

        v72 += v73;
        --v49;
      }

      while (v49);
    }

    v35 = v147;
    v75 = v139;
    sub_1BF38C94C(v147, v139, &qword_1EBDD9578, &qword_1BF4F1920);
    if (v148(v75, 1, v161) == 1)
    {
      sub_1BF38C9B4(v75, &qword_1EBDD9578, &qword_1BF4F1920);
      v76 = MEMORY[0x1E69E7CD0];
    }

    else
    {
      v76 = *(v75 + 16);

      sub_1BF44B050(v75);
    }

    *(a3 + 16) = v76;
    if (v40)
    {
      v77 = a2 + ((*(v163 + 80) + 32) & ~*(v163 + 80));
      v78 = *(v163 + 72);
      v49 = v40;
      do
      {
        sub_1BF44B0AC(v77, v32);
        v79 = *(v32 + 16);

        sub_1BF44B050(v32);
        sub_1BF3C6CF0(v79);
        v77 += v78;
        --v49;
      }

      while (v49);
    }

    v15 = v140;
    sub_1BF38C94C(v35, v140, &qword_1EBDD9578, &qword_1BF4F1920);
    v59 = v161;
    if (v148(v15, 1, v161) == 1)
    {
      sub_1BF38C9B4(v15, &qword_1EBDD9578, &qword_1BF4F1920);
      v32 = v144;
    }

    else
    {
      v80 = *(v15 + 24);
      sub_1BF44B050(v15);
      v32 = v144;
      v15 = v143;
      if (v80)
      {
        v81 = 1;
        goto LABEL_51;
      }
    }

    if (!v40)
    {
      break;
    }

    v56 = 0;
    v59 = MEMORY[0x1E69E7CC0];
    v82 = v150;
    while (v56 < *(a2 + 16))
    {
      v15 = (*(v163 + 80) + 32) & ~*(v163 + 80);
      v49 = *(v163 + 72);
      sub_1BF44B0AC(a2 + v15 + v49 * v56, v82);
      if (*(v82 + 24) == 1)
      {
        sub_1BF44B9BC(v82, v157);
        v83 = swift_isUniquelyReferenced_nonNull_native();
        v164 = v59;
        if ((v83 & 1) == 0)
        {
          sub_1BF3E157C(0, *(v59 + 2) + 1, 1);
          v59 = v164;
        }

        v85 = *(v59 + 2);
        v84 = *(v59 + 3);
        if (v85 >= v84 >> 1)
        {
          sub_1BF3E157C((v84 > 1), v85 + 1, 1);
          v59 = v164;
        }

        *(v59 + 2) = v85 + 1;
        sub_1BF44B9BC(v157, &v59[v15 + v85 * v49]);
        a2 = v162;
        v82 = v150;
      }

      else
      {
        sub_1BF44B050(v82);
      }

      if (v40 == ++v56)
      {
        goto LABEL_50;
      }
    }

LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    if (!sub_1BF4E9204())
    {
      goto LABEL_2;
    }

    sub_1BF44AD60(MEMORY[0x1E69E7CC0]);
  }

  v59 = MEMORY[0x1E69E7CC0];
LABEL_50:
  v86 = *(v59 + 2);

  v81 = v86 != 0;
  v59 = v161;
  v15 = v143;
LABEL_51:
  *(a3 + 24) = v81;
  sub_1BF38C94C(v35, v15, &qword_1EBDD9578, &qword_1BF4F1920);
  v87 = v148(v15, 1, v59);
  v56 = v151;
  if (v87 == 1)
  {
    sub_1BF38C9B4(v15, &qword_1EBDD9578, &qword_1BF4F1920);
    v141(v32, 1, 1, v160);
  }

  else
  {
    sub_1BF38C94C(v15 + *(v59 + 8), v32, &qword_1EBDD9518, &qword_1BF4F1660);
    sub_1BF44B050(v15);
    if ((*(v145 + 48))(v32, 1, v160) != 1)
    {
      v96 = v146;
      v97 = v160;
      (*(v145 + 32))(v146, v32, v160);
      v141(v96, 0, 1, v97);
      v15 = v138;
      v49 = v137;
      goto LABEL_72;
    }
  }

  if (v40)
  {
    v32 = 0;
    v158 = (v145 + 48);
    v59 = MEMORY[0x1E69E7CC0];
    v152 = v40;
    v35 = &qword_1BF4F1660;
    while (v32 < *(a2 + 16))
    {
      v88 = (*(v163 + 80) + 32) & ~*(v163 + 80);
      v15 = *(v163 + 72);
      sub_1BF44B0AC(a2 + v88 + v15 * v32, v56);
      v49 = v155;
      sub_1BF38C94C(v56 + *(v161 + 8), v155, &qword_1EBDD9518, &qword_1BF4F1660);
      v89 = (*v158)(v49, 1, v160);
      sub_1BF38C9B4(v49, &qword_1EBDD9518, &qword_1BF4F1660);
      if (v89 == 1)
      {
        sub_1BF44B050(v56);
        v40 = v152;
      }

      else
      {
        sub_1BF44B9BC(v56, v156);
        v90 = swift_isUniquelyReferenced_nonNull_native();
        v164 = v59;
        if ((v90 & 1) == 0)
        {
          sub_1BF3E157C(0, *(v59 + 2) + 1, 1);
          v59 = v164;
        }

        v40 = v152;
        v92 = *(v59 + 2);
        v91 = *(v59 + 3);
        if (v92 >= v91 >> 1)
        {
          sub_1BF3E157C((v91 > 1), v92 + 1, 1);
          v59 = v164;
        }

        *(v59 + 2) = v92 + 1;
        sub_1BF44B9BC(v156, &v59[v88 + v92 * v15]);
        a2 = v162;
        v56 = v151;
      }

      ++v32;
      a3 = v159;
      if (v40 == v32)
      {
        goto LABEL_66;
      }
    }

    goto LABEL_111;
  }

  v59 = MEMORY[0x1E69E7CC0];
LABEL_66:
  v35 = v147;
  v93 = v144;
  if (*(v59 + 2))
  {
    v94 = v130;
    sub_1BF44B0AC(&v59[(*(v163 + 80) + 32) & ~*(v163 + 80)], v130);

    v59 = v161;
    sub_1BF38C94C(v94 + *(v161 + 8), v146, &qword_1EBDD9518, &qword_1BF4F1660);
    sub_1BF44B050(v94);
    v15 = v138;
    v49 = v137;
    v95 = v160;
  }

  else
  {

    v95 = v160;
    v141(v146, 1, 1, v160);
    v59 = v161;
    v15 = v138;
    v49 = v137;
  }

  if ((*(v145 + 48))(v93, 1, v95) != 1)
  {
    sub_1BF38C9B4(v93, &qword_1EBDD9518, &qword_1BF4F1660);
  }

LABEL_72:
  sub_1BF44982C(v146, a3 + v49);
  sub_1BF38C94C(v35, v15, &qword_1EBDD9578, &qword_1BF4F1920);
  if (v148(v15, 1, v59) == 1)
  {
    sub_1BF38C9B4(v15, &qword_1EBDD9578, &qword_1BF4F1920);
  }

  else
  {
    v98 = *(v15 + *(v59 + 9));
    sub_1BF44B050(v15);
    if (v98)
    {
      v99 = 1;
      goto LABEL_91;
    }
  }

  if (v40)
  {
    v56 = 0;
    v100 = MEMORY[0x1E69E7CC0];
    while (v56 < *(a2 + 16))
    {
      v15 = (*(v163 + 80) + 32) & ~*(v163 + 80);
      v32 = *(v163 + 72);
      v49 = v153;
      sub_1BF44B0AC(a2 + v15 + v32 * v56, v153);
      if (*(v49 + *(v59 + 9)) == 1)
      {
        sub_1BF44B9BC(v49, v154);
        v101 = swift_isUniquelyReferenced_nonNull_native();
        v164 = v100;
        if ((v101 & 1) == 0)
        {
          sub_1BF3E157C(0, *(v100 + 2) + 1, 1);
          v59 = v161;
          v100 = v164;
        }

        v103 = *(v100 + 2);
        v102 = *(v100 + 3);
        v49 = v103 + 1;
        if (v103 >= v102 >> 1)
        {
          sub_1BF3E157C((v102 > 1), v103 + 1, 1);
          v59 = v161;
          v100 = v164;
        }

        *(v100 + 2) = v49;
        sub_1BF44B9BC(v154, &v100[v15 + v103 * v32]);
        a2 = v162;
      }

      else
      {
        sub_1BF44B050(v49);
      }

      if (v40 == ++v56)
      {
        goto LABEL_88;
      }
    }

    goto LABEL_112;
  }

  v100 = MEMORY[0x1E69E7CC0];
LABEL_88:
  v104 = *(v100 + 2);

  v105 = v104 == 0;
  v59 = v161;
  v99 = !v105;
LABEL_91:
  *(a3 + *(v59 + 9)) = v99;
  v106 = v133;
  sub_1BF38C94C(v35, v133, &qword_1EBDD9578, &qword_1BF4F1920);
  if (v148(v106, 1, v59) == 1)
  {
    sub_1BF38C9B4(v106, &qword_1EBDD9578, &qword_1BF4F1920);
    if (v131 && sub_1BF4E9204())
    {
      v107 = a2;
      sub_1BF44AD60(MEMORY[0x1E69E7CC0]);
      v109 = v108;
    }

    else
    {
      v107 = a2;
      v109 = MEMORY[0x1E69E7CD0];
    }
  }

  else
  {
    v107 = a2;
    v109 = *(v106 + *(v59 + 10));

    sub_1BF44B050(v106);
  }

  *(a3 + *(v59 + 10)) = v109;
  v110 = a3;
  v111 = v135;
  if (v40)
  {
    v112 = *(v161 + 10);
    v113 = v107 + ((*(v163 + 80) + 32) & ~*(v163 + 80));
    v114 = *(v163 + 72);
    v115 = v40;
    do
    {
      sub_1BF44B0AC(v113, v111);
      v116 = *(v111 + v112);

      sub_1BF44B050(v111);
      sub_1BF3C71E0(v116);
      v113 += v114;
      --v115;
    }

    while (v115);
  }

  v117 = v147;
  v118 = v134;
  sub_1BF38C94C(v147, v134, &qword_1EBDD9578, &qword_1BF4F1920);
  v119 = v161;
  if (v148(v118, 1, v161) == 1)
  {
    sub_1BF38C9B4(v118, &qword_1EBDD9578, &qword_1BF4F1920);
    v120 = 0;
  }

  else
  {
    v120 = *(v118 + *(v119 + 11));
    sub_1BF44B050(v118);
  }

  v121 = v136;
  v122 = v110;
  v123 = *(v119 + 11);
  *(v110 + v123) = v120;
  if (v40)
  {
    v124 = *(v119 + 11);
    v125 = v162 + ((*(v163 + 80) + 32) & ~*(v163 + 80));
    v126 = *(v163 + 72);
    do
    {
      sub_1BF44B0AC(v125, v121);
      v127 = *(v121 + v124);
      sub_1BF44B050(v121);
      if ((v127 & ~v120) != 0)
      {
        v120 |= v127;
        *(v122 + v123) = v120;
      }

      v125 += v126;
      --v40;
    }

    while (v40);
  }

  return sub_1BF38C9B4(v117, &qword_1EBDD9578, &qword_1BF4F1920);
}

void sub_1BF3C6CF0(uint64_t a1)
{
  v2 = sub_1BF4E8174();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - v7;
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2, v10);
      (*(v3 + 32))(v5, v12, v2);
      sub_1BF3C6F00(v8, v5);
      (*(v3 + 8))(v8, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1BF3C6F00(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1BF4E8174();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1BF391F90(qword_1EDC9FA00, MEMORY[0x1E6985750], MEMORY[0x1E6985760]);
  v33 = a2;
  v11 = sub_1BF4E8874();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1BF391F90(&qword_1EDC96498, MEMORY[0x1E6985750], MEMORY[0x1E6985768]);
      v21 = sub_1BF4E88C4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1BF4AEE6C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

void sub_1BF3C71E0(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1BF4E91F4();
    sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
    sub_1BF3A443C();
    sub_1BF4E8D64();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_1BF39A9CC(v1);
      return;
    }

    while (1)
    {
      sub_1BF3BD184(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1BF4E9234())
      {
        sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1BF3C73D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9518, &qword_1BF4F1660);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *EnvironmentModifiers.swiftUIColorSchemes.getter()
{
  v1 = sub_1BF4E7D24();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v6;
  v9 = *(v0 + 8);
  if ((v9 & 1) == 0)
  {
    v10 = MEMORY[0x1E69E7CC0];
    if ((v9 & 2) == 0)
    {
      return v10;
    }

    goto LABEL_7;
  }

  (*(v2 + 104))(&v16 - v6, *MEMORY[0x1E697DBB8], v1, v7.n128_f64[0]);
  v10 = sub_1BF3C78C0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1BF3C78C0((v11 > 1), v12 + 1, 1, v10);
  }

  v10[2] = v12 + 1;
  (*(v2 + 32))(v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v12, v8, v1);
  if ((v9 & 2) != 0)
  {
LABEL_7:
    (*(v2 + 104))(v4, *MEMORY[0x1E697DBA8], v1, v7);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1BF3C78C0(0, v10[2] + 1, 1, v10);
    }

    v14 = v10[2];
    v13 = v10[3];
    if (v14 >= v13 >> 1)
    {
      v10 = sub_1BF3C78C0((v13 > 1), v14 + 1, 1, v10);
    }

    v10[2] = v14 + 1;
    (*(v2 + 32))(v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v14, v4, v1);
  }

  return v10;
}

void *sub_1BF3C76E4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

uint64_t sub_1BF3C78E8(id *a1)
{
  v3 = v1;
  v56 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v46 - v6;
  v8 = sub_1BF4E8424();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BF4E7194();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v46 - v18;
  if (*(v3 + 160) != 1)
  {
    v23 = type metadata accessor for WidgetCacheManager.CacheManagementError(0);
    sub_1BF3A5AA4(&qword_1EBDD8BC8, type metadata accessor for WidgetCacheManager.CacheManagementError, &unk_1BF4ED4C0);
    swift_allocError();
LABEL_7:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v23;
  }

  v49 = v9;
  v50 = v8;
  v51 = v17;
  v52 = v16;
  v48 = v7;
  sub_1BF38E49C(v3 + 40, &v53);
  v20 = v54;
  v21 = v55;
  __swift_project_boxed_opaque_existential_1(&v53, v54);
  v22 = (v21[5])(a1, v20, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(&v53);
  if ((v22 & 1) == 0)
  {
    v23 = type metadata accessor for WidgetCacheManager.CacheManagementError(0);
    sub_1BF3A5AA4(&qword_1EBDD8BC8, type metadata accessor for WidgetCacheManager.CacheManagementError, &unk_1BF4ED4C0);
    swift_allocError();
    sub_1BF3A5A3C(a1, v27, type metadata accessor for WidgetEntryKey);
    goto LABEL_7;
  }

  v23 = v3;
  sub_1BF3F4FF4(a1, v19);
  if (!v2)
  {
    swift_beginAccess();
    sub_1BF38E49C(v3 + 120, &v53);
    v24 = v55;
    __swift_project_boxed_opaque_existential_1(&v53, v54);
    v25 = [*a1 extensionIdentity];
    v26 = v24[2];
    v47 = v25;
    v26();

    __swift_destroy_boxed_opaque_existential_1Tm(&v53);
    v29 = *(v3 + 16);
    sub_1BF4E7134();
    v30 = sub_1BF4E7094();
    v31 = *(v51 + 8);
    v46 = v51 + 8;
    v47 = v31;
    (v31)(v14, v52);
    *&v53 = 0;
    v32 = [v29 createDirectoryAtURL:v30 withIntermediateDirectories:1 attributes:0 error:&v53];

    v23 = v53;
    if (v32)
    {
      v33 = v53;
      *&v53 = WidgetEntryKey.description.getter();
      *(&v53 + 1) = v34;
      MEMORY[0x1BFB58C90](45, 0xE100000000000000);
      sub_1BF3A5AA4(&qword_1EDC9F100, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v35 = v52;
      v36 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v36);

      v46 = *(&v53 + 1);
      v47 = v53;
      v51 = *(v51 + 32);
      (v51)(v14, v19, v35);
      v38 = v48;
      v37 = v49;
      v39 = v50;
      (*(v49 + 32))(v48, v11, v50);
      (*(v37 + 56))(v38, 0, 1, v39);
      v40 = *(v3 + 16);
      v54 = sub_1BF3C82A8();
      v55 = &off_1F3DF3DC0;
      *&v53 = v40;
      type metadata accessor for WidgetArchiveFilePromise(0);
      v23 = swift_allocObject();
      v41 = OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_intermediates;
      v42 = type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0);
      (*(*(v42 - 8) + 56))(v23 + v41, 1, 1, v42);
      *(v23 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise__needsCleanup) = 0;
      v43 = v46;
      *(v23 + 16) = v47;
      *(v23 + 24) = v43;
      (v51)(v23 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_destination, v14, v35);
      sub_1BF38E610(&v53, v23 + 32);
      sub_1BF3C846C(v38, v23 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_protectionLevel);
      v44 = v40;
    }

    else
    {
      v45 = v53;
      sub_1BF4E6FF4();

      swift_willThrow();
      (*(v49 + 8))(v11, v50);
      (v47)(v19, v52);
    }
  }

  return v23;
}

id sub_1BF3C8004()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17[-1] - v3;
  v5 = sub_1BF4E7194();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF38E49C((v0 + 4), v17);
  v9 = v18;
  v10 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v11 = (*(*(v1 + 96) + 16))(*(v1 + 80));
  (*(v10 + 8))(v11, v9, v10);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1BF38C9B4(v4, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    v13 = v0[9];
    sub_1BF4E7174();
    v14 = sub_1BF4E88E4();

    v15 = [v13 fileExistsAtPath_];

    (*(v6 + 8))(v8, v5);
    return v15;
  }
}

unint64_t sub_1BF3C82A8()
{
  result = qword_1EDC96398;
  if (!qword_1EDC96398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC96398);
  }

  return result;
}

uint64_t sub_1BF3C8348(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5)
{
  result = sub_1BF4E7194();
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v12 = sub_1BF4E7B24();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 32);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_1BF3C846C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1BF3C851C()
{
  v2 = sub_1BF4E7B24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B00, &qword_1BF4EC378);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v20 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - v13;
  result = sub_1BF3C88B0(v20 - v13);
  if (!v1)
  {
    v20[1] = 0;
    v16 = type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0);
    v23 = *(v16 - 8);
    (*(v23 + 56))(v14, 0, 1, v16);
    v17 = OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_intermediates;
    swift_beginAccess();
    sub_1BF3CA110(v14, v0 + v17);
    swift_endAccess();
    v22 = sub_1BF4E8FE4();
    if (qword_1EDC9D678 != -1)
    {
      swift_once();
    }

    v21 = qword_1EDCA69E8;
    sub_1BF38C94C(v0 + v17, v11, &qword_1EBDD8B00, &qword_1BF4EC378);
    v18 = *(v23 + 48);
    v23 += 48;
    result = v18(v11, 1, v16);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v3 + 16))(v5, &v11[*(v16 + 32)], v2);
      sub_1BF3CA2B8(v11);
      sub_1BF4E7AE4(v22, &dword_1BF389000, v21, "ArchiveFilePromise Opened", 25, 2, v5, "ArchiveFilePromise Opened", 25, 2, MEMORY[0x1E69E7CC0]);
      (*(v3 + 8))(v5, v2);
      *(v0 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise__needsCleanup) = 1;
      sub_1BF38C94C(v0 + v17, v8, &qword_1EBDD8B00, &qword_1BF4EC378);
      result = v18(v8, 1, v16);
      if (result != 1)
      {
        v19 = *&v8[*(v16 + 24)];
        sub_1BF3CA2B8(v8);
        return v19;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BF3C88B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v86 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v92 = &v78[-v4];
  v91 = sub_1BF4E8424();
  v90 = *(v91 - 1);
  MEMORY[0x1EEE9AC00](v91);
  v88 = &v78[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v89 = &v78[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v78[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v78[-v11];
  v13 = sub_1BF4E7194();
  v95 = *(v13 - 8);
  v96 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v78[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v78[-v16];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v78[-v19];
  v22 = v1[7];
  v21 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v22);
  sub_1BF4E7134();
  v23 = v94;
  (*(v21 + 8))(v17, v22, v21);
  if (v23)
  {
    return (*(v95 + 8))(v17, v96);
  }

  v82 = v12;
  v25 = *(v95 + 8);
  v84 = v95 + 8;
  v83 = v25;
  v25(v17, v96);
  sub_1BF4E7084();
  v26 = v93;
  v94 = v20;
  sub_1BF4E70F4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B20, &unk_1BF4EC4F0);
  inited = swift_initStackObject();
  v28 = *MEMORY[0x1E696A370];
  *(inited + 32) = *MEMORY[0x1E696A370];
  *(inited + 16) = xmmword_1BF4EBEF0;
  *(inited + 64) = MEMORY[0x1E69E6530];
  *(inited + 40) = 438;
  v29 = v28;
  v85 = sub_1BF3C9454(inited);
  swift_setDeallocating();
  sub_1BF38C9B4(inited + 32, &qword_1EBDD8738, &qword_1BF4F6D40);
  v30 = v92;
  sub_1BF38C94C(v2 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_protectionLevel, v92, &qword_1EBDD8AF8, &qword_1BF4EC370);
  v31 = v90;
  v32 = v91;
  v33 = v2;
  if ((*(v90 + 48))(v30, 1, v91) == 1)
  {
    sub_1BF38C9B4(v30, &qword_1EBDD8AF8, &qword_1BF4EC370);
    v34 = v85;
  }

  else
  {
    v35 = v82;
    (*(v31 + 32))(v82, v30, v32);
    if (qword_1EDC9EFD8 != -1)
    {
      swift_once();
    }

    v36 = sub_1BF4E7B54();
    __swift_project_value_buffer(v36, qword_1EDCA6A48);
    v37 = v87;
    v92 = *(v31 + 16);
    (v92)(v87, v35, v32);
    v38 = v31;
    v39 = sub_1BF4E7B34();
    v40 = sub_1BF4E8E54();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v80 = v41;
      v81 = swift_slowAlloc();
      *&v98 = v81;
      *v41 = 136446210;
      sub_1BF3EE29C(&qword_1EDC9D780, MEMORY[0x1E69859A8], MEMORY[0x1E69859D8]);
      v79 = v40;
      v42 = v32;
      v43 = sub_1BF4E96A4();
      v45 = v44;
      v87 = *(v38 + 8);
      (v87)(v37, v42);
      v46 = sub_1BF38D65C(v43, v45, &v98);

      v47 = v80;
      *(v80 + 1) = v46;
      v32 = v42;
      v35 = v82;
      _os_log_impl(&dword_1BF389000, v39, v79, "Specific FileDataProtectionLevel requested: %{public}s", v47, 0xCu);
      v48 = v81;
      __swift_destroy_boxed_opaque_existential_1Tm(v81);
      MEMORY[0x1BFB5A5D0](v48, -1, -1);
      MEMORY[0x1BFB5A5D0](v47, -1, -1);
    }

    else
    {

      v87 = *(v38 + 8);
      (v87)(v37, v32);
    }

    v49 = v38;
    v91 = *MEMORY[0x1E696A3A0];
    v50 = v88;
    v51 = v92;
    (v92)(v88, v35, v32);
    v52 = (*(v49 + 88))(v50, v32);
    v53 = v89;
    if (v52 == *MEMORY[0x1E6985988])
    {
      (*(v49 + 104))(v89, *MEMORY[0x1E6985990], v32);
      v54 = v53;
      v55 = v35;
      v56 = v32;
      v57 = v87;
    }

    else
    {
      (v51)(v89, v35, v32);
      v58 = v50;
      v57 = v87;
      (v87)(v58, v32);
      v54 = v53;
      v55 = v35;
      v56 = v32;
    }

    v59 = sub_1BF4E8404();
    v57(v54, v56);
    type metadata accessor for FileProtectionType(0);
    v99 = v60;
    *&v98 = v59;
    sub_1BF38EB2C(&v98, v97);
    v61 = v85;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v100 = v61;
    sub_1BF3C9714(v97, v91, isUniquelyReferenced_nonNull_native);
    v57(v55, v56);
    v34 = v100;
    v26 = v93;
  }

  v63 = v33[7];
  v64 = v33[8];
  __swift_project_boxed_opaque_existential_1(v33 + 4, v63);
  (*(v64 + 80))(v26, v34, v63, v64);

  v65 = v33[7];
  v66 = v33[8];
  __swift_project_boxed_opaque_existential_1(v33 + 4, v65);
  v67 = (*(v66 + 24))(v26, v65, v66);
  v68 = v33[7];
  v69 = v33[8];
  __swift_project_boxed_opaque_existential_1(v33 + 4, v68);
  v70 = (*(v69 + 16))(v26, v68, v69);
  if (qword_1EDC9D678 != -1)
  {
    swift_once();
  }

  v71 = qword_1EDCA69E8;
  v72 = v94;
  sub_1BF4E7094();
  v73 = type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0);
  v74 = v86;
  sub_1BF4E7B04();
  v75 = *(v95 + 32);
  v76 = v72;
  v77 = v96;
  v75(v74, v76, v96);
  result = (v75)(v74 + v73[5], v26, v77);
  *(v74 + v73[6]) = v67;
  *(v74 + v73[7]) = v70;
  return result;
}

void sub_1BF3C9360(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1BF4E7094();
  v7[0] = 0;
  v3 = [v1 URLForDirectory:99 inDomain:1 appropriateForURL:v2 create:0 error:v7];

  v4 = v7[0];
  if (v3)
  {
    sub_1BF4E7154();
    v5 = v4;
  }

  else
  {
    v6 = v7[0];
    sub_1BF4E6FF4();

    swift_willThrow();
  }
}

unint64_t sub_1BF3C9454(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8730, &unk_1BF4EB250);
    v3 = sub_1BF4E94C4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BF38C94C(v4, &v11, &qword_1EBDD8738, &qword_1BF4F6D40);
      v5 = v11;
      result = sub_1BF3C957C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1BF38EB2C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BF3C957C(uint64_t a1)
{
  sub_1BF4E8914();
  sub_1BF4E9804();
  sub_1BF4E89F4();
  v2 = sub_1BF4E9844();

  return sub_1BF3C9610(a1, v2);
}

unint64_t sub_1BF3C9610(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1BF4E8914();
      v8 = v7;
      if (v6 == sub_1BF4E8914() && v8 == v9)
      {
        break;
      }

      v11 = sub_1BF4E9734();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

_OWORD *sub_1BF3C9714(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1BF3C957C(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1BF4A27C8();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1BF3C9868(v13, a3 & 1);
    v8 = sub_1BF3C957C(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for FileAttributeKey(0);
      result = sub_1BF4E9794();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);

    return sub_1BF38EB2C(a1, v19);
  }

  else
  {
    sub_1BF3C9B38(v8, a2, a1, v18);

    return a2;
  }
}

void sub_1BF3C9868(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8730, &unk_1BF4EB250);
  v35 = v4;
  v6 = sub_1BF4E94A4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_1BF38EB2C(v22, v36);
      }

      else
      {
        sub_1BF38D324(v22, v36);
        v23 = v21;
      }

      sub_1BF4E8914();
      sub_1BF4E9804();
      sub_1BF4E89F4();
      v24 = sub_1BF4E9844();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      sub_1BF38EB2C(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

_OWORD *sub_1BF3C9B38(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1BF38EB2C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void sub_1BF3C9BC4(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_1BF4E6D84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF4E7174();
  v9 = sub_1BF4E88E4();

  if (a2)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_1BF3C9DEC(&qword_1EDC9D710, type metadata accessor for FileAttributeKey, &unk_1BF4EB51C);
    a2 = sub_1BF4E8744();
  }

  v10 = [v3 createFileAtPath:v9 contents:0 attributes:a2];

  if ((v10 & 1) == 0)
  {
    MEMORY[0x1BFB57DE0]();
    v11 = sub_1BF4E7B74();
    if ((v11 & 0x100000000) != 0)
    {
      v12 = 45;
    }

    else
    {
      v12 = v11;
    }

    v13[3] = v12;
    sub_1BF3EDBBC(MEMORY[0x1E69E7CC0]);
    sub_1BF3C9DEC(&qword_1EDC9D630, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1BF4E6FD4();
    sub_1BF4E6D74();
    (*(v6 + 8))(v8, v5);
    swift_willThrow();
  }
}

uint64_t sub_1BF3C9DEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1BF3C9E54(uint64_t a1, double a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = sub_1BF4E7194();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF3C9F4C();
  (*(v8 + 16))(v10, a1, v7);
  return sub_1BF3C9F98(v10, a5);
}

unint64_t sub_1BF3C9F4C()
{
  result = qword_1EDC963A8;
  if (!qword_1EDC963A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC963A8);
  }

  return result;
}

id sub_1BF3C9F98(uint64_t a1, SEL *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1BF4E7094();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() *a2];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_1BF4E7194();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_1BF4E6FF4();

    swift_willThrow();
    v11 = sub_1BF4E7194();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_1BF3CA110(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B00, &qword_1BF4EC378);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF3CA194(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = sub_1BF4E7194();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + *(a3 + 24));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_1BF4E7B24();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1BF3CA2B8(uint64_t a1)
{
  v2 = type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF3CA314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a4;
  v27 = a2;
  v28 = a3;
  v29 = a1;
  v24[1] = a6;
  v24[2] = a7;
  v8 = sub_1BF4E7624();
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - v9;
  v11 = sub_1BF4E90F4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v24 - v13;
  v15 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v24 - v21;
  (*(v12 + 16))(v14, v26, v11, v20);
  if ((*(v15 + 48))(v14, 1, a5) == 1)
  {
    (*(v12 + 8))(v14, v11);
    return sub_1BF4E7054();
  }

  else
  {
    (*(v15 + 32))(v22, v14, a5);
    (*(v15 + 16))(v18, v22, a5);
    sub_1BF4E7604();
    swift_getWitnessTable();
    sub_1BF4E7044();
    (*(v25 + 8))(v10, v8);
    return (*(v15 + 8))(v22, a5);
  }
}

void sub_1BF3CA630(void (*a1)(void), void (*a2)(char *, uint64_t, __n128))
{
  v68 = a2;
  v69 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v67 = &v58 - v5;
  v76 = sub_1BF4E7194();
  v6 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v65 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58 - v9;
  v70 = sub_1BF4E7334();
  v75 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v81 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B00, &qword_1BF4EC378);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v66 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  v20 = OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_intermediates;
  swift_beginAccess();
  v73 = v20;
  v74 = v2;
  sub_1BF38C94C(v2 + v20, v19, &qword_1EBDD8B00, &qword_1BF4EC378);
  v21 = type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v71 = v22 + 48;
  v72 = v23;
  if (v23(v19, 1, v21) == 1)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1BF4E82C4();
  v24 = *&v19[*(v21 + 28)];
  sub_1BF3CA2B8(v19);
  v25 = sub_1BF4E82B4();

  if (v3)
  {
    return;
  }

  v63 = 0;
  v69();
  v79 = sub_1BF4E8714();
  v80 = MEMORY[0x1E6985B20];
  v78[0] = v25;
  v62 = v25;

  v26 = v81;
  sub_1BF3EC058(v78, v81);
  __swift_destroy_boxed_opaque_existential_1Tm(v78);
  v27 = v74;
  sub_1BF38E49C(v74 + 32, v78);
  v28 = v80;
  v69 = v79;
  v68 = __swift_project_boxed_opaque_existential_1(v78, v79);
  sub_1BF38C94C(v27 + v73, v16, &qword_1EBDD8B00, &qword_1BF4EC378);
  if (v72(v16, 1, v21) == 1)
  {
    goto LABEL_13;
  }

  v29 = *(v21 + 20);
  v64 = v6;
  v31 = *(v6 + 16);
  v30 = (v6 + 16);
  v59 = v21;
  v32 = v10;
  v58 = v31;
  v31(v10, &v16[v29], v76);
  sub_1BF3CA2B8(v16);
  v61 = "WidgetArchiveFilePromise";
  v33 = v75;
  v34 = v67;
  v35 = v26;
  v36 = v70;
  (*(v75 + 16))(v67, v35, v70);
  (*(v33 + 56))(v34, 0, 1, v36);
  v60 = *(v28 + 48);
  v37 = MEMORY[0x1E6969530];
  v38 = sub_1BF3EE29C(&qword_1EDC9D5F0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v39 = sub_1BF3EE29C(&qword_1EDC9D5F8, v37, MEMORY[0x1E6969538]);
  v40 = v32;
  v41 = v63;
  v60(v32, 0xD00000000000001DLL, v61 | 0x8000000000000000, v34, v36, v38, v39, v69, v28);
  if (!v41)
  {
    v42 = v59;
    v69 = v30;
    sub_1BF38C9B4(v34, &qword_1EBDD9B00, &qword_1BF4F1E50);
    v43 = *(v64 + 8);
    v44 = v76;
    v64 += 8;
    (v43)(v40, v76);
    __swift_destroy_boxed_opaque_existential_1Tm(v78);
    v45 = [objc_allocWithZone(MEMORY[0x1E698E638]) init];
    if (!v45)
    {
      (*(v75 + 8))(v81, v36);

      return;
    }

    v68 = v43;
    v63 = 0;
    v46 = v45;
    v47 = [v45 stringRepresentation];

    v48 = sub_1BF4E8914();
    v50 = v49;

    v51 = v74;
    sub_1BF38E49C(v74 + 32, v78);
    v53 = v79;
    v52 = v80;
    __swift_project_boxed_opaque_existential_1(v78, v79);
    v54 = v51 + v73;
    v55 = v66;
    sub_1BF38C94C(v54, v66, &qword_1EBDD8B00, &qword_1BF4EC378);
    if (v72(v55, 1, v42) != 1)
    {
      v56 = v65;
      v58(v65, v55 + *(v42 + 20), v44);
      sub_1BF3CA2B8(v55);
      v77[0] = v48;
      v77[1] = v50;
      (*(v52 + 48))(v56, 0xD00000000000001FLL, 0x80000001BF4F9610, v77, MEMORY[0x1E69E6158], MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], v53, v52);
      v57 = v75;

      (v68)(v56, v44);
      (*(v57 + 8))(v81, v70);
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return;
  }

  sub_1BF38C9B4(v34, &qword_1EBDD9B00, &qword_1BF4F1E50);
  (*(v64 + 8))(v32, v76);
  (*(v33 + 8))(v81, v36);
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1Tm(v78);
}

dispatch_time_t static CHDMonotonicTime.now()@<X0>(dispatch_time_t *a1@<X8>)
{
  result = CHDMonotonicTimeFromNow(0);
  *a1 = result;
  return result;
}

double sub_1BF3CAEA4(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (!*(Strong + 48))
    {
      v6 = *(Strong + 24);
      os_unfair_lock_lock(*(v6 + 16));
      if ((*(v5 + 32) & 1) == 0)
      {
        *(v5 + 32) = 1;
        [*(v5 + 16) invalidate];
      }

      os_unfair_lock_unlock(*(v6 + 16));
    }

    a2(v5);
  }

  return result;
}

void sub_1BF3CAF50(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void *sub_1BF3CAFFC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(__n128))
{
  v7 = sub_1BF4E80E4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDC9EFF0 != -1)
  {
    swift_once();
  }

  v11 = sub_1BF4E7B54();
  __swift_project_value_buffer(v11, qword_1EDCA6A90);
  v12 = sub_1BF4E7B34();
  v13 = sub_1BF4E8E84();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1BF389000, v12, v13, "Performing scheduled flush of powerlog view entries", v14, 2u);
    MEMORY[0x1BFB5A5D0](v14, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = result[9];
    *v10 = v17;
    (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
    v18 = v17;
    LOBYTE(v17) = sub_1BF4E80F4();
    result = (*(v8 + 8))(v10, v7);
    if (v17)
    {
      v19 = swift_beginAccess();
      MEMORY[0x1EEE9AC00](v19);
      *&v24[-16] = v16;
      v24[-8] = 1;

      v21 = (a5)(v20, a4, &v24[-32]);

      v22 = v16[5];
      v23 = v16[6];
      __swift_project_boxed_opaque_existential_1(v16 + 2, v22);
      (*(v23 + 48))(v21, v22, v23);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BF3CB2B4(uint64_t a1, uint64_t (*a2)(void *, uint64_t, __n128))
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1BF4E93A4();
    v5 = v2 + 64;
    result = sub_1BF4E91B4();
    v6 = result;
    v7 = 0;
    v28 = *(v2 + 36);
    v26 = v2 + 72;
    v27 = v3;
    v29 = v2 + 64;
    v30 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_19;
      }

      v32 = v7;
      v11 = *(v2 + 48) + 40 * v6;
      v13 = *v11;
      v12 = *(v11 + 8);
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      v16 = *(v11 + 32);
      v33 = *(v11 + 33);
      v17 = *(*(v2 + 56) + 8 * v6);
      swift_retain_n();
      v18 = v13;

      v34[0] = v18;
      v34[1] = v12;
      v34[2] = v15;
      v34[3] = v14;
      v35 = v16;
      v36 = v33;
      v37 = v17;
      (a2)(v34, v17);

      sub_1BF4E9374();
      sub_1BF4E93B4();
      v2 = v30;
      sub_1BF4E93C4();
      result = sub_1BF4E9384();
      v8 = 1 << *(v30 + 32);
      if (v6 >= v8)
      {
        goto LABEL_20;
      }

      v5 = v29;
      v19 = *(v29 + 8 * v10);
      if ((v19 & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v28 != *(v30 + 36))
      {
        goto LABEL_22;
      }

      v20 = v19 & (-2 << (v6 & 0x3F));
      if (v20)
      {
        v8 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v9 = v27;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v9 = v27;
        v23 = (v26 + 8 * v10);
        while (v22 < (v8 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            v8 = __clz(__rbit64(v24)) + v21;
            break;
          }
        }
      }

      v7 = v32 + 1;
      v6 = v8;
      if (v32 + 1 == v9)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

double sub_1BF3CB51C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EDC9D480 != -1)
    {
      swift_once();
    }

    v6 = sub_1BF4E7B54();
    __swift_project_value_buffer(v6, qword_1EDCA68C8);

    v7 = sub_1BF4E7B34();
    v8 = sub_1BF4E8E84();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543362;
      v11 = *(v5 + 112);
      *(v9 + 4) = v11;
      *v10 = v11;
      v12 = v11;
      _os_log_impl(&dword_1BF389000, v7, v8, "Flush timer for target=%{public}@ expired.", v9, 0xCu);
      sub_1BF38C9B4(v10, &unk_1EBDD9260, &qword_1BF4EC380);
      MEMORY[0x1BFB5A5D0](v10, -1, -1);
      MEMORY[0x1BFB5A5D0](v9, -1, -1);
    }

    [a1 invalidate];
    v13 = *(v5 + 96);
    if (v13 && (sub_1BF3901C0(0, &qword_1EDC96338, 0x1E698E660), v14 = a1, v15 = v13, v16 = sub_1BF4E90A4(), v15, v14, (v16 & 1) != 0))
    {
      [*(v5 + 104) invalidate];
      v17 = *(v5 + 104);
      *(v5 + 104) = 0;

      v18 = *(v5 + 96);
      *(v5 + 96) = 0;
    }

    else
    {
    }
  }

  return result;
}

dispatch_time_t CHDMonotonicTime.advanced(by:)@<X0>(int64_t a1@<X0>, dispatch_time_t *a2@<X8>)
{
  if (a1 < 0)
  {
    if (qword_1EDC9AA48 != -1)
    {
      swift_once();
    }

    result = qword_1EDC9AA50;
  }

  else
  {
    result = CHDMonotonicTimePlusInterval(*v2, a1);
  }

  *a2 = result;
  return result;
}

{
  result = CHDMonotonicTimePlusInterval(*v2, a1);
  *a2 = result;
  return result;
}

void sub_1BF3CB7BC(unint64_t a1)
{
  v3 = sub_1BF4E7FF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BF4E8064();
  isa = v7[-1].isa;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BF3CBB4C(a1);
  if (v11)
  {
    v12 = v11;
    v22[0] = v7;
    v13 = *(v1 + 24);
    v14 = swift_allocObject();
    v14[2] = v12;
    v14[3] = v1;
    v14[4] = a1;
    aBlock[4] = sub_1BF43E420;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BF38E868;
    aBlock[3] = &block_descriptor_5;
    v15 = _Block_copy(aBlock);
    v16 = v13;
    v17 = v12;

    sub_1BF4E8014();
    v22[1] = MEMORY[0x1E69E7CC0];
    sub_1BF43E42C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
    sub_1BF43E484();
    sub_1BF4E91A4();
    MEMORY[0x1BFB591B0](0, v10, v6, v15);
    _Block_release(v15);

    (*(v4 + 8))(v6, v3);
    (*(isa + 1))(v10, v22[0]);
  }

  else
  {
    if (qword_1EDC9D4A8 != -1)
    {
      swift_once();
    }

    v18 = sub_1BF4E7B54();
    __swift_project_value_buffer(v18, qword_1EDCA6910);
    v22[0] = sub_1BF4E7B34();
    v19 = sub_1BF4E8E84();
    if (os_log_type_enabled(v22[0], v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1BF389000, v22[0], v19, "No powerlog view entries to flush.", v20, 2u);
      MEMORY[0x1BFB5A5D0](v20, -1, -1);
    }

    v21 = v22[0];
  }
}

id sub_1BF3CBB4C(unint64_t a1)
{
  result = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  v3 = result;
  if (a1 >> 62)
  {
    result = sub_1BF4E9204();
    v4 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_20:
    if ([v3 count])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9348, &qword_1BF4F0B98);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1BF4ECFE0;
      v38 = v3;
      v39 = MEMORY[0x1E69E6158];
      *(v37 + 56) = MEMORY[0x1E69E6158];
      *(v37 + 32) = 0x7374617473;
      *(v37 + 40) = 0xE500000000000000;
      [v38 copy];
      sub_1BF4E9164();
      swift_unknownObjectRelease();
      *(v37 + 120) = v39;
      *(v37 + 96) = 0x6D617473656D6974;
      *(v37 + 104) = 0xE900000000000070;
      v40 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
      [v40 timeIntervalSince1970];
      v42 = v41;

      *(v37 + 152) = MEMORY[0x1E69E63B0];
      *(v37 + 128) = v42;
      sub_1BF43E550();
      v43 = sub_1BF4E8E14();
    }

    else
    {

      return 0;
    }

    return v43;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = a1 & 0xC000000000000001;
    v44 = ", framesSubmitted=";
    v46 = a1 & 0xC000000000000001;
    v47 = v4;
    while (1)
    {
      if (v6)
      {
        v8 = MEMORY[0x1BFB59570](v5, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v5 + 32);
      }

      if (*(v8 + 88) <= 0.0)
      {
        if (qword_1EDC9D4A8 != -1)
        {
          swift_once();
        }

        v22 = sub_1BF4E7B54();
        __swift_project_value_buffer(v22, qword_1EDCA6910);

        v11 = sub_1BF4E7B34();
        v23 = sub_1BF4E8E54();

        if (!os_log_type_enabled(v11, v23))
        {
          goto LABEL_6;
        }

        v13 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *&v48 = v45;
        *v13 = 136446210;
        v24 = *(v8 + 24);
        v26 = *(v8 + 32);
        v25 = *(v8 + 40);
        v27 = *(v8 + 48);
        v28 = *(v8 + 49);
        *&v50 = *(v8 + 16);
        *(&v50 + 1) = v24;
        v51 = v26;
        v52 = v25;
        v53 = v27;
        v54 = v28;
        v29 = v50;

        v30 = PowerlogControlViewIdentity.description.getter();
        v32 = v31;
        v33 = a1;
        v34 = v3;
        v35 = v50;

        v3 = v34;
        a1 = v33;
        v36 = sub_1BF38D65C(v30, v32, &v48);

        *(v13 + 4) = v36;
        v4 = v47;
        _os_log_impl(&dword_1BF389000, v11, v23, "Dropped view entry for identity: [%{public}s] because it was incomplete.", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
      }

      else
      {
        v9 = sub_1BF43E0B0(v8);
        [v3 addObject_];

        if (qword_1EDC9D4A8 != -1)
        {
          swift_once();
        }

        v10 = sub_1BF4E7B54();
        __swift_project_value_buffer(v10, qword_1EDCA6910);

        v11 = sub_1BF4E7B34();
        v12 = sub_1BF4E8E54();

        if (!os_log_type_enabled(v11, v12))
        {
          goto LABEL_6;
        }

        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v49 = v14;
        *&v50 = 0;
        *v13 = 136446210;
        *(&v50 + 1) = 0xE000000000000000;
        sub_1BF4E92E4();
        v48 = v50;
        MEMORY[0x1BFB58C90](0xD00000000000001CLL, 0x80000001BF4F9FB0);
        v15 = *(v8 + 32);
        v16 = *(v8 + 40);
        v17 = *(v8 + 48);
        v18 = *(v8 + 49);
        v50 = *(v8 + 16);
        v51 = v15;
        v52 = v16;
        v53 = v17;
        v54 = v18;
        sub_1BF4E9404();
        MEMORY[0x1BFB58C90](0x7363697274656D20, 0xE90000000000003DLL);
        v19 = *(v8 + 72);
        v55 = *(v8 + 56);
        v56 = v19;
        v57 = *(v8 + 88);
        v20 = sub_1BF408590();
        MEMORY[0x1BFB58C90](v20);

        MEMORY[0x1BFB58C90](62, 0xE100000000000000);
        v21 = sub_1BF38D65C(v48, *(&v48 + 1), &v49);
        v4 = v47;

        *(v13 + 4) = v21;
        _os_log_impl(&dword_1BF389000, v11, v12, "Flushing powerlog view entry: %{public}s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v14);
      }

      MEMORY[0x1BFB5A5D0]();
      v7 = v13;
      v6 = v46;
      MEMORY[0x1BFB5A5D0](v7, -1, -1);
LABEL_6:

      if (v4 == ++v5)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
  return result;
}

double sub_1BF3CC124(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_lock);
    v7 = *(v6 + 16);

    os_unfair_lock_lock(v7);
    sub_1BF3CC1DC(v2, v5);
    os_unfair_lock_unlock(*(v6 + 16));
  }

  return result;
}

void sub_1BF3CC1DC(uint64_t a1, uint64_t a2)
{
  v228 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EC0, &qword_1BF4EEA50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v183 = &v181 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v206 = &v181 - v6;
  v7 = sub_1BF4E7404();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v190 = &v181 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v217 = &v181 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v204 = &v181 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v203 = &v181 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v195 = &v181 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v202 = &v181 - v19;
  v20 = sub_1BF4E74A4();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v194 = &v181 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v214 = &v181 - v24;
  v25 = sub_1BF4E7484();
  MEMORY[0x1EEE9AC00](*(v25 - 8));
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v181 - v28;
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  v37 = &v181 - v36;
  v38 = *(a1 + 16);
  if (!v38)
  {
    return;
  }

  v201 = v35;
  v189 = v34;
  v185 = v33;
  v226 = v21;
  v39 = v32;
  v40 = OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber__locked_subscriptions;
  v41 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v208 = v29;
  v42 = a1 + v41;
  v227 = OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber__locked_descriptors;
  swift_beginAccess();
  v193 = v40;
  swift_beginAccess();
  v224 = *(v39 + 16);
  v212 = (v226 + 88);
  v220 = (v39 + 8);
  v222 = (v8 + 8);
  v184 = (v226 + 8);
  v186 = v8 + 16;
  v200 = (v8 + 56);
  v207 = (v8 + 32);
  v211 = *MEMORY[0x1E6959C40];
  v205 = v8;
  v191 = v8 + 40;
  v210 = *MEMORY[0x1E6959C30];
  v196 = *MEMORY[0x1E6959C48];
  v188 = *MEMORY[0x1E6959C38];
  v209 = *(v39 + 72);
  *&v43 = 136446722;
  v192 = v43;
  *&v43 = 136446210;
  v181 = v43;
  *&v43 = 136446466;
  v182 = v43;
  v225 = v7;
  v213 = v20;
  v219 = v25;
  v221 = v39 + 16;
  v223 = v37;
  v224(v37, v42, v25);
  while (1)
  {
    v46 = v214;
    sub_1BF4E7474();
    v47 = (*v212)(v46, v20);
    v48 = v47 == v211 || v47 == v210;
    v226 = v38;
    if (v48)
    {
      break;
    }

    if (v47 == v196)
    {
      v63 = v190;
      sub_1BF4E7464();
      v64 = sub_1BF4E73F4();
      v66 = v65;
      v67 = *v222;
      (*v222)(v63, v7);
      v68 = *(v228 + v193);
      if (!*(v68 + 16) || (, v70 = sub_1BF3CD5D0(v64, v66, v69), v72 = v71, , (v72 & 1) == 0))
      {

        v25 = v219;
        (*v220)(v37, v219);
        goto LABEL_5;
      }

      v73 = *(*(v68 + 56) + 8 * v70);

      if (qword_1EDC9D470 != -1)
      {
        swift_once();
      }

      v74 = sub_1BF4E7B54();
      __swift_project_value_buffer(v74, qword_1EDCA68B0);

      v75 = sub_1BF4E7B34();
      v76 = sub_1BF4E8E84();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v229 = v78;
        *v77 = v181;
        v218 = v42;
        v79 = *(v73 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier);
        v80 = *(v73 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier + 8);

        v81 = sub_1BF38D65C(v79, v80, &v229);
        v42 = v218;

        *(v77 + 4) = v81;
        _os_log_impl(&dword_1BF389000, v75, v76, "Dropping subscription for dismissed activity: %{public}s", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v78);
        v82 = v78;
        v7 = v225;
        MEMORY[0x1BFB5A5D0](v82, -1, -1);
        MEMORY[0x1BFB5A5D0](v77, -1, -1);
      }

      if (*(v73 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_payloadSubscription))
      {

        sub_1BF4E7BD4();
      }

      if (*(v73 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_descriptorSubscription))
      {

        sub_1BF4E7BD4();
      }

      v45 = *(v73 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_lock);
      os_unfair_lock_lock(*(v45 + 16));
      v83 = v187;
      sub_1BF40DB04(v73);
      v84 = &v218;
      v187 = v83;
      if (v83)
      {
        goto LABEL_61;
      }

      os_unfair_lock_unlock(*(v45 + 16));
      v85 = v195;
      sub_1BF4E7464();
      v86 = sub_1BF4E73F4();
      v88 = v87;
      v67(v85, v7);
      swift_beginAccess();
      v89 = v183;
      sub_1BF47AFD4(v86, v88, v183, v90);

      sub_1BF38C9B4(v89, &qword_1EBDD8EC0, &qword_1BF4EEA50);
      swift_endAccess();
      v91 = *(v73 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier);
      v92 = *(v73 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier + 8);
      swift_beginAccess();

      v94 = sub_1BF3CD5D0(v91, v92, v93);
      v96 = v95;

      v20 = v213;
      v25 = v219;
      v38 = v226;
      if (v96)
      {
        v97 = v42;
        v98 = v193;
        v99 = v228;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v101 = *(v99 + v98);
        v230 = v101;
        *(v99 + v98) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1BF4A3058();
          v101 = v230;
        }

        sub_1BF47C170(v94, v101);
        *(v228 + v98) = v101;
        v42 = v97;
      }

      swift_endAccess();

      v37 = v223;
      (*v220)(v223, v25);
      v7 = v225;
    }

    else
    {
      if (v47 == v188)
      {
        break;
      }

      if (qword_1EDC9D470 != -1)
      {
        swift_once();
      }

      v102 = sub_1BF4E7B54();
      __swift_project_value_buffer(v102, qword_1EDCA68B0);
      v104 = v223;
      v103 = v224;
      v224(v189, v223, v25);
      v105 = v185;
      v103(v185, v104, v25);
      v106 = sub_1BF4E7B34();
      v107 = sub_1BF4E8E74();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v216 = swift_slowAlloc();
        v229 = v216;
        *v108 = v182;
        v109 = v195;
        v110 = v189;
        LODWORD(v215) = v107;
        sub_1BF4E7464();
        v111 = sub_1BF4E73F4();
        v218 = v42;
        v113 = v112;
        (*v222)(v109, v225);
        v114 = *v220;
        (*v220)(v110, v25);
        v115 = sub_1BF38D65C(v111, v113, &v229);

        *(v108 + 4) = v115;
        *(v108 + 12) = 2082;
        sub_1BF4E7474();
        v116 = sub_1BF4E8994();
        v118 = v117;
        v114(v105, v25);
        v119 = v114;
        v120 = sub_1BF38D65C(v116, v118, &v229);
        v42 = v218;

        *(v108 + 14) = v120;
        _os_log_impl(&dword_1BF389000, v106, v215, "Ignoring activity descriptor change: %{public}s; unknown state: %{public}s", v108, 0x16u);
        v121 = v216;
        swift_arrayDestroy();
        v7 = v225;
        MEMORY[0x1BFB5A5D0](v121, -1, -1);
        v122 = v108;
        v20 = v213;
        MEMORY[0x1BFB5A5D0](v122, -1, -1);

        v37 = v223;
        v119(v223, v25);
        v38 = v226;
      }

      else
      {

        v179 = *v220;
        (*v220)(v105, v25);
        v179(v189, v25);
        v37 = v223;
        v179(v223, v25);
      }

      (*v184)(v214, v20);
    }

LABEL_6:
    v42 += v209;
    if (!--v38)
    {
      return;
    }

    v224(v37, v42, v25);
  }

  v49 = v202;
  sub_1BF4E7464();
  v50 = sub_1BF4E73F4();
  v52 = v51;
  v53 = *v222;
  (*v222)(v49, v7);
  v54 = *(v228 + v227);
  v55 = *(v54 + 16);
  v216 = v53;
  if (v55 && (, v57 = sub_1BF3CD5D0(v50, v52, v56), v59 = v58, , (v59 & 1) != 0))
  {
    (*(v205 + 16))(v206, *(v54 + 56) + *(v205 + 72) * v57, v7);

    v60 = 0;
    v61 = 0xE800000000000000;
    v62 = 0x676E697461647055;
  }

  else
  {

    v61 = 0xE600000000000000;
    v60 = 1;
    v62 = 0x676E69646441;
  }

  v215 = v62;
  v123 = v206;
  (*v200)(v206, v60, 1, v7);
  sub_1BF38C9B4(v123, &qword_1EBDD8EC0, &qword_1BF4EEA50);
  v124 = v219;
  if (qword_1EDC9D470 != -1)
  {
    swift_once();
  }

  v125 = sub_1BF4E7B54();
  __swift_project_value_buffer(v125, qword_1EDCA68B0);
  v126 = v201;
  v127 = v223;
  v128 = v224;
  v224(v201, v223, v124);
  v129 = v208;
  v128(v208, v127, v124);

  v130 = sub_1BF4E7B34();
  v131 = sub_1BF4E8E84();

  v132 = os_log_type_enabled(v130, v131);
  v218 = v42;
  if (v132)
  {
    v133 = swift_slowAlloc();
    v199 = swift_slowAlloc();
    v229 = v199;
    *v133 = v192;
    v134 = sub_1BF38D65C(v215, v61, &v229);
    v198 = v131;
    v135 = v134;

    *(v133 + 4) = v135;
    *(v133 + 12) = 2082;
    v136 = v195;
    sub_1BF4E7464();
    v137 = sub_1BF4E73F4();
    v139 = v138;
    v197 = v130;
    v140 = v126;
    v141 = v216;
    (v216)(v136, v225);
    v142 = *v220;
    v143 = v140;
    v144 = v124;
    (*v220)(v143, v124);
    v145 = sub_1BF38D65C(v137, v139, &v229);

    *(v133 + 14) = v145;
    *(v133 + 22) = 2082;
    v146 = v208;
    sub_1BF4E7474();
    v147 = sub_1BF4E8994();
    v149 = v148;
    v215 = v142;
    v142(v146, v144);
    v150 = v147;
    v151 = v225;
    v152 = sub_1BF38D65C(v150, v149, &v229);

    *(v133 + 24) = v152;
    v153 = v197;
    _os_log_impl(&dword_1BF389000, v197, v198, "%{public}s descriptor for changed activity: %{public}s; state: %{public}s", v133, 0x20u);
    v154 = v199;
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v154, -1, -1);
    MEMORY[0x1BFB5A5D0](v133, -1, -1);
  }

  else
  {

    v155 = *v220;
    (*v220)(v129, v124);
    v215 = v155;
    v155(v126, v124);
    v151 = v225;
    v141 = v216;
  }

  v156 = v203;
  v37 = v223;
  sub_1BF4E7464();
  v157 = sub_1BF4E73F4();
  v159 = v158;
  v141(v156, v151);
  v160 = v204;
  sub_1BF4E7464();
  v162 = v227;
  v161 = v228;
  swift_beginAccess();
  v163 = *v207;
  (*v207)(v217, v160, v151);
  v164 = swift_isUniquelyReferenced_nonNull_native();
  v230 = *(v161 + v162);
  v45 = v230;
  *(v161 + v162) = 0x8000000000000000;
  v166 = sub_1BF3CD5D0(v157, v159, v165);
  v168 = *(v45 + 16);
  v169 = (v167 & 1) == 0;
  v170 = __OFADD__(v168, v169);
  v171 = v168 + v169;
  if (!v170)
  {
    v172 = v167;
    if (*(v45 + 24) >= v171)
    {
      v175 = v205;
      v42 = v218;
      if ((v164 & 1) == 0)
      {
        v180 = v166;
        sub_1BF4A31C8();
        v166 = v180;
        v25 = v219;
        if ((v172 & 1) == 0)
        {
          goto LABEL_50;
        }

        goto LABEL_3;
      }
    }

    else
    {
      sub_1BF3CD724(v171, v164);
      v45 = v230;
      v166 = sub_1BF3CD5D0(v157, v159, v173);
      v175 = v205;
      v42 = v218;
      if ((v172 & 1) != (v174 & 1))
      {
        goto LABEL_60;
      }
    }

    v25 = v219;
    if ((v172 & 1) == 0)
    {
LABEL_50:
      v45 = v230;
      *(v230 + 8 * (v166 >> 6) + 64) |= 1 << v166;
      v176 = (*(v45 + 48) + 16 * v166);
      *v176 = v157;
      v176[1] = v159;
      v7 = v225;
      v163((*(v45 + 56) + *(v175 + 72) * v166), v217, v225);
      v177 = *(v45 + 16);
      v170 = __OFADD__(v177, 1);
      v178 = v177 + 1;
      if (v170)
      {
        goto LABEL_59;
      }

      *(v45 + 16) = v178;
      goto LABEL_4;
    }

LABEL_3:
    v44 = v166;

    v45 = v230;
    v7 = v225;
    (*(v175 + 40))(*(v230 + 56) + *(v175 + 72) * v44, v217, v225);
LABEL_4:
    *(v228 + v227) = v45;

    swift_endAccess();
    v215(v37, v25);
    v20 = v213;
LABEL_5:
    v38 = v226;
    goto LABEL_6;
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  sub_1BF4E9794();
  __break(1u);
LABEL_61:

  os_unfair_lock_unlock(*(v45 + 16));
  __break(1u);
}

uint64_t sub_1BF3CD5E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), double a4)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();
  v6 = sub_1BF4E9844();

  return a3(a1, a2, v6);
}

unint64_t sub_1BF3CD66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1BF4E9734())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_1BF3CD74C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v51 = a3(0);
  v10 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v43 - v11;
  v12 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v48 = v9;
  v13 = sub_1BF4E94A4();
  v14 = v13;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v44 = v5;
    v45 = (v10 + 16);
    v46 = v12;
    v47 = v10;
    v49 = (v10 + 32);
    v21 = v13 + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v12 + 56);
      v29 = (*(v12 + 48) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(v47 + 72);
      v33 = v28 + v32 * v27;
      if (v48)
      {
        (*v49)(v50, v33, v51);
      }

      else
      {
        (*v45)(v50, v33, v51);
      }

      sub_1BF4E9804();
      sub_1BF4E89F4();
      v34 = sub_1BF4E9844();
      v35 = -1 << *(v14 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v21 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v21 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v21 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v31;
      v23[1] = v30;
      (*v49)((*(v14 + 56) + v32 * v22), v50, v51);
      ++*(v14 + 16);
      v12 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v8 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v12 + 32);
    v8 = v44;
    if (v42 >= 64)
    {
      bzero(v16, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v8 = v14;
}

void *sub_1BF3CDAE8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1BF3CDB54(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1BF3CDB84@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1BF3CDBB0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1BF3CDCAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1BF3DA450(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1BF3CDCF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF4E8914();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BF3CDD4C()
{
  if (*v0)
  {
    return 0x6C616D726F6ELL;
  }

  else
  {
    return 0x676E697472656C61;
  }
}

uint64_t sub_1BF3CDD84@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1BF3CDDC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF4E7394();
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
    v11 = sub_1BF4E7334();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1BF3CDEEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BF4E7394();
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
    v11 = sub_1BF4E7334();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

__n128 sub_1BF3CE0BC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1BF3CE12C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AC8, &qword_1BF4EC230);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF3CE1A4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AC8, &qword_1BF4EC230);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BF3CE234()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF3CE26C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3CE2EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7334();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF3CE358(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1BF4E7334();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BF3CE3E0(uint64_t a1)
{
  MEMORY[0x1BFB59A70](0);

  return sub_1BF4E89F4();
}

uint64_t sub_1BF3CE440(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Budget(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BF3CE4EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Budget(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BF3CE5A4()
{
  v1 = (type metadata accessor for ActivityKey(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_1BF4E7454();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BF3CE6A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF3CE6DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BF3CE770()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF3CE7B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

__n128 sub_1BF3CE844(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1BF3CE8F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1BF3CE964()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3CE9F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF4E7EA4();
  *a1 = result;
  return result;
}

uint64_t sub_1BF3CEA78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF410180();
  *a1 = result;
  return result;
}

double sub_1BF3CEAA4(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 24) = *a1;

  return result;
}

uint64_t sub_1BF3CEC04()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3CEC3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

__n128 sub_1BF3CECE0(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1BF3CED54(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1BF4E7394();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(&a1[v11], a2, v9);
  }

  v12 = sub_1BF4E7334();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = sub_1BF4E7194();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[13]];

  return v16(v17, a2, v15);
}

char *sub_1BF3CEF14(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1BF4E7394();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = sub_1BF4E7334();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = sub_1BF4E7194();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[13]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1BF3CF0D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Budget(0);
  *a2 = *(a1 + *(result + 24));
  return result;
}

uint64_t sub_1BF3CF110(char *a1, uint64_t a2)
{
  v2 = *a1;
  *(a2 + *(type metadata accessor for Budget(0) + 24)) = v2;
  return sub_1BF42EB2C();
}

uint64_t sub_1BF3CF148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF4E7334();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1BF3CF210(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BF4E7334();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

uint64_t sub_1BF3CF2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF4E8674();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1BF4E8364();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1BF3CF414(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1BF4E8674();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1BF4E8364();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1BF3CF56C()
{
  MEMORY[0x1BFB5A690](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1BF3CF5A4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_requireValidExtensions;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_1BF3CF5FC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_requireValidExtensions;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1BF3CF650()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BF3CF690()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3CF6D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF3CF730()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF3CF778()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF3CF7B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 8))(*(a1 + a2 - 16));
  *a3 = result;
  a3[1] = v5;
  return result;
}

__n128 sub_1BF3CF808(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1BF3CF818@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;

  return result;
}

uint64_t sub_1BF3CF824(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  return result;
}

double sub_1BF3CF898@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 136);
  v3 = *(a1 + 144);
  *a2 = v2;
  a2[1] = v3;

  return result;
}

uint64_t sub_1BF3CF8A4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 136) = v4;
  *(a2 + 144) = v3;
  return result;
}

double sub_1BF3CF8E8@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 168);
  v3 = *(a1 + 176);
  *a2 = v2;
  a2[1] = v3;

  return result;
}

uint64_t sub_1BF3CF8F4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 168) = v4;
  *(a2 + 176) = v3;
  return result;
}

double sub_1BF3CF938@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + 200);

  return result;
}

uint64_t sub_1BF3CF944(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 200) = v3;
  return result;
}

double sub_1BF3CF990@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for TapToRadarDraft(0) + 48) + 16);

  return result;
}

double sub_1BF3CF9E0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for TapToRadarDraft(0) + 52) + 16);

  return result;
}

double sub_1BF3CFA30@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for TapToRadarDraft(0) + 56) + 16);

  return result;
}

uint64_t sub_1BF3CFA80@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for TapToRadarDraft(0);
  *a2 = *(a1 + *(result + 60) + 16);
  return result;
}

uint64_t sub_1BF3CFABC(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for TapToRadarDraft(0);
  *(a2 + *(result + 60) + 16) = v3;
  return result;
}

double sub_1BF3CFAF4@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for TapToRadarDraft(0) + 64) + 16);

  return result;
}

double sub_1BF3CFB44@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for TapToRadarDraft(0) + 68) + 16);

  return result;
}

double sub_1BF3CFB94@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for TapToRadarDraft(0) + 72) + 16);

  return result;
}

uint64_t sub_1BF3CFBE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for TapToRadarDraft(0);
  *a2 = *(a1 + *(result + 76) + 16);
  return result;
}

uint64_t sub_1BF3CFC20(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for TapToRadarDraft(0);
  *(a2 + *(result + 76) + 16) = v3;
  return result;
}

uint64_t sub_1BF3CFC58@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for TapToRadarDraft(0);
  *a2 = *(a1 + *(result + 80) + 16);
  return result;
}

uint64_t sub_1BF3CFC94(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for TapToRadarDraft(0);
  *(a2 + *(result + 80) + 16) = v3;
  return result;
}

uint64_t sub_1BF3CFCCC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for TapToRadarDraft(0);
  *a2 = *(a1 + *(result + 84) + 16);
  return result;
}

uint64_t sub_1BF3CFD08(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for TapToRadarDraft(0);
  *(a2 + *(result + 84) + 16) = v3;
  return result;
}

double sub_1BF3CFD40@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for TapToRadarDraft(0) + 88) + 16);

  return result;
}

double sub_1BF3CFD90@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for TapToRadarDraft(0) + 92);
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;

  return result;
}

uint64_t sub_1BF3CFDE0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9350, &qword_1BF4F0C80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BF3CFE9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9350, &qword_1BF4F0C80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

double sub_1BF3CFFCC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;

  return result;
}

double sub_1BF3D001C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;

  return result;
}

uint64_t sub_1BF3D006C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BF38E49C(v3 + 120, a2);
}

uint64_t sub_1BF3D00BC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3D00F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF44E0C4();
  *a1 = result;
  return result;
}

__n128 sub_1BF3D0144(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1BF3D0158@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF44E124();
  *a1 = result;
  return result;
}

uint64_t sub_1BF3D01A8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, double a6@<D0>)
{
  result = sub_1BF44E220(a6, a2, a3, a4, a5);
  *a1 = result;
  return result;
}

uint64_t sub_1BF3D01F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF44E318();
  *a1 = result;
  return result;
}

uint64_t sub_1BF3D0248@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF44E400();
  *a1 = result;
  return result;
}

uint64_t sub_1BF3D0298@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF44E4E8();
  *a1 = result;
  return result;
}

uint64_t sub_1BF3D02E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF44E5D0();
  *a1 = result;
  return result;
}

uint64_t sub_1BF3D0338@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF44E6DC();
  *a1 = result;
  return result;
}

uint64_t sub_1BF3D03DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF3C2398();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BF3D04EC()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + *(v2 + 64) + v6) & ~v6;
  v8 = v3 | v6;
  v9 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  (*(v5 + 8))(v0 + v7, v1);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 8, v8 | 7);
}

uint64_t sub_1BF3D05F8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1BF3D06C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF3D0710()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1BF3D0780(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1BF4E7394();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_16:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_15:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_16;
  }

  v16 = type metadata accessor for RemoteActivitySubscription.ActivityOwnership(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[7];
    goto LABEL_15;
  }

  v17 = sub_1BF4E8674();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[8];
    goto LABEL_15;
  }

  v18 = sub_1BF4E8364();
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v14 = *(v18 - 8);
    v15 = a3[9];
    goto LABEL_15;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[11];

  return v20(v21, a2, v19);
}

uint64_t sub_1BF3D09E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1BF4E7394();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  v16 = type metadata accessor for RemoteActivitySubscription.ActivityOwnership(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_13;
  }

  v17 = sub_1BF4E8674();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_13;
  }

  v18 = sub_1BF4E8364();
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[9];
    goto LABEL_13;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[11];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_1BF3D0C50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7394();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF3D0CBC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1BF4E7394();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BF3D0D44()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF3D0D84()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF3D0DBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF4E7F14();
  *a1 = result;
  return result;
}

uint64_t sub_1BF3D0E14()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3D0E4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF3D0E84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF4E7E24();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BF3D0EDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF4E7DC4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BF3D0F34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF4E7DE4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BF3D0F8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF4E7E04();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BF3D10D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF4E7E64();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BF3D112C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF4E7F34();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BF3D1184@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF4E7EF4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BF3D12C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF46DEEC();
  *a1 = result;
  return result;
}

double sub_1BF3D12EC(uint64_t *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC9ChronoKit12ControlEntry____lazy_storage___contentDidChangePublisher) = *a1;

  return result;
}

double sub_1BF3D133C(void *a1)
{

  sub_1BF46FFF4(v1);

  return result;
}

uint64_t sub_1BF3D13CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF46EA10();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BF3D1404@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BF38E49C(v3 + 16, a2);
}

void sub_1BF3D1454(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

void sub_1BF3D149C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 56) = v2;
}

double sub_1BF3D14E0@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);

  return result;
}

uint64_t sub_1BF3D1540@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock__environmentDidChangePublisher;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1BF3D15BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock_environmentDidChange;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1BF3D1638@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BF38E49C(v3 + 16, a2);
}

uint64_t sub_1BF3D168C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3D16C8()
{
  swift_unknownObjectRelease();

  if (*(v0 + 96))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1BF3D1730()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF3D1768()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1BF3D17AC@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  *a2 = result;
  a2[1] = v3;
  a2[2] = v4;
  return result;
}

uint64_t sub_1BF3D17F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF3D1830()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

double sub_1BF3D1884@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;

  return result;
}

double sub_1BF3D18D4@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;

  return result;
}

double sub_1BF3D192C@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EBDD9970;

  return result;
}

uint64_t sub_1BF3D199C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BF3D1A68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BF3D1BF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF3A331C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BF3D1C74@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  result = sub_1BF4E76B4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BF3D1CB8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for WidgetExtensionInfo(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BF3D1D64(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WidgetExtensionInfo(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BF3D1E10()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double sub_1BF3D1E50@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;

  return result;
}

double sub_1BF3D1EA0@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;

  return result;
}

uint64_t sub_1BF3D1EF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF3D1F4C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3D1F84()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3D1FBC()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  if (v0[9] >= 6uLL)
  {
  }

  if (v0[10])
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

double sub_1BF3D201C@<D0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1BF4DE31C();
  a1[1] = v2;

  return result;
}

uint64_t sub_1BF3D205C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1BF44BEB0(v1, v2);
}

__n128 sub_1BF3D20A8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1BF3D2134@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BF38E49C(v3 + 16, a2);
}

uint64_t sub_1BF3D21C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested;
  swift_beginAccess();
  return sub_1BF3ABF74(v3 + v4, a2);
}

uint64_t sub_1BF3D2224(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BF3D22E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *CodableHostConfiguration<>.toData()()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v5];
  v2 = v5[0];
  if (v1)
  {
    v3 = sub_1BF4E71C4();
  }

  else
  {
    v3 = v2;
    sub_1BF4E6FF4();

    swift_willThrow();
  }

  return v3;
}

void CodableHostConfiguration<>.init(data:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1BF4E8324();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF3901C0(0, &qword_1EDC96370, 0x1E696ACD0);
  v10 = sub_1BF4E8EB4();
  if (!v3 && !v10)
  {
    sub_1BF3901C0(0, &qword_1EDC962E8, 0x1E696ABC0);
    (*(v7 + 104))(v9, *MEMORY[0x1E6985878], v6);
    sub_1BF4E9074();
    swift_willThrow();
  }

  sub_1BF3B03C0(a1, a2);
}

void CodableHostConfiguration<>.succinctDescription()()
{
  v1 = [v0 succinctDescriptionBuilder];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 build];

    if (v3)
    {
      sub_1BF4E8914();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t HostRecord.identity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HostRecord.identity.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t HostRecord.type.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1BF4E7854();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t HostRecord.type.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_1BF4E7854();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t HostRecord.activationState.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_1BF4E7804();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t HostRecord.activationState.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = sub_1BF4E7804();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t HostRecord.init(identity:type:configuration:activationState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v16 = type metadata accessor for HostRecord(0, a5, a6, v15);
  v17 = v16[9];
  v18 = sub_1BF4E7854();
  (*(*(v18 - 8) + 32))(a7 + v17, a2, v18);
  (*(*(a5 - 8) + 32))(a7 + v16[10], a3, a5);
  v19 = v16[11];
  v20 = sub_1BF4E7804();
  v21 = *(*(v20 - 8) + 32);

  return v21(a7 + v19, a4, v20);
}

void sub_1BF3D2EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v5 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = v53 - v6;
  v66 = a2;
  v67 = a3;
  v8 = type metadata accessor for HostRecord(255, a2, a3, v7);
  v63 = sub_1BF4E90F4();
  v9 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v53 - v12;
  v68 = v8;
  v14 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v61 = v53 - v16;
  v71 = 0;
  v72 = 0xE000000000000000;
  v17 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](45);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v18 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v18);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v19 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v19);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v20 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v20);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v21 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v21);

  MEMORY[0x1BFB58C90](0x204D4F52460ALL, 0xE600000000000000);
  v22 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v22);

  MEMORY[0x1BFB58C90](0x2045524548570ALL, 0xE700000000000000);
  v23 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v23);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  v24 = sub_1BF4E7844();
  if (v24 < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v54 = v9;
  v55 = v14;
  v57 = v5;
  v25 = v58;
  v26 = sub_1BF3D7F44(v24);
  v28 = v27;
  v30 = v29;
  v69 = 0x676E69646E696240;
  v70 = 0xE800000000000000;
  v31 = v17;
  v73 = *(v17 + 16) + 1;
  v32 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v32);

  v33 = v69;
  v34 = v70;
  MEMORY[0x1BFB58C90](v69, v70);
  sub_1BF3D8840(v26, v28, v30);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = v31;
  sub_1BF3D6680(v26, v28, v30, v33, v34, isUniquelyReferenced_nonNull_native, v36);

  sub_1BF3D88B8(v26, v28, v30);
  v37 = v69;
  v38 = v71;
  v39 = v72;
  if (!swift_weakLoadStrong())
  {
LABEL_15:
    sub_1BF4E9464();
    __break(1u);
    return;
  }

  v40 = sub_1BF3E4F48(v37, v38, v39);
  if (v25)
  {
  }

  else
  {
    v41 = v40;

    v42 = sub_1BF38C8B4(&unk_1EDC9F018, &unk_1EBDD85B0, &unk_1BF4EA9E0, MEMORY[0x1E6994140]);
    v43 = v68;
    v60 = v42;
    v71 = sub_1BF4E8724();
    v44 = v41[2];
    if (v44)
    {
      v45 = (v55 + 6);
      v58 = v57 + 2;
      v59 = (v55 + 4);
      v56 = (v55 + 7);
      v57 = (v55 + 2);
      ++v55;
      v53[1] = 0;
      ++v54;
      v46 = 32;
      do
      {

        sub_1BF3D3600(v66, v67, v13, v52);

        if ((*v45)(v13, 1, v43) == 1)
        {
          (*v54)(v13, v63);
        }

        else
        {
          v47 = v41;
          v48 = v61;
          (*v59)(v61, v13, v43);
          (*v58)(v64, v48, v65);
          v49 = v13;
          v50 = v62;
          (*v57)(v62, v48, v68);
          (*v56)(v50, 0, 1, v68);
          sub_1BF4E8834();
          v13 = v49;
          v43 = v68;
          sub_1BF4E8864();
          v51 = v48;
          v41 = v47;
          (*v55)(v51, v43);
        }

        v46 += 8;
        --v44;
      }

      while (v44);
    }

    else
    {
    }
  }
}

uint64_t sub_1BF3D3600@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X0>)
{
  v160 = a2;
  v158 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v150 = &v141 - v7;
  v159 = a1;
  v148 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v149 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v151 = &v141 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87D8, &qword_1BF4EB2F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v141 - v13;
  v15 = sub_1BF4E7804();
  v153 = *(v15 - 8);
  v154 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v147 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v152 = &v141 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87E0, &qword_1BF4EB2F8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v141 - v20;
  v22 = sub_1BF4E7854();
  v155 = *(v22 - 8);
  v156 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v141 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v141 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v157 = &v141 - v29;
  v30 = sub_1BF4E92F4();
  v32 = sub_1BF48063C(v30, v31, a4);
  v34 = v33;
  v36 = v35;
  v37 = ~v35;

  if (!v37)
  {
    goto LABEL_13;
  }

  v38 = sub_1BF4244EC(v32, v34, v36);
  v40 = v39;
  sub_1BF3DB1FC(v32, v34, v36);
  if (!v40)
  {
    goto LABEL_13;
  }

  v145 = v38;
  v146 = v40;
  v41 = sub_1BF4E92F4();
  v43 = sub_1BF48063C(v41, v42, a4);
  v45 = v44;
  v47 = v46;
  v48 = ~v46;

  if (v48)
  {
    v49 = sub_1BF4244E0(v43, v45, v47);
    v51 = v50;
    sub_1BF3DB1FC(v43, v45, v47);
    if ((v51 & 1) == 0)
    {
      v144 = v49;
      v52 = sub_1BF4E92F4();
      v54 = sub_1BF48063C(v52, v53, a4);
      v56 = v55;
      v58 = v57;
      v59 = ~v57;

      if (v59)
      {
        sub_1BF424370(v54, v56, v58, &v163);
        sub_1BF3DB1FC(v54, v56, v58);
        if (*(&v163 + 1) >> 60 != 15)
        {
          v143 = *(&v163 + 1);
          v60 = v163;
          v61 = sub_1BF4E92F4();
          v63 = sub_1BF48063C(v61, v62, a4);
          v65 = v64;
          v67 = v66;
          v68 = ~v66;

          if (!v68)
          {
            v72 = v60;
            goto LABEL_11;
          }

          v142 = v60;
          v69 = sub_1BF4244E0(v63, v65, v67);
          v71 = v70;
          sub_1BF3DB1FC(v63, v65, v67);
          if (v71)
          {
            v72 = v142;
LABEL_11:
            sub_1BF3DB210(v72, v143);
            goto LABEL_12;
          }

          if (v144 < 0)
          {
            __break(1u);
          }

          else
          {
            sub_1BF4E7834();
            v86 = v155;
            v85 = v156;
            v87 = (*(v155 + 48))(v21, 1, v156);
            v88 = v157;
            v60 = v145;
            if (v87 == 1)
            {
              v89 = &qword_1EBDD87E0;
              v90 = &qword_1BF4EB2F8;
              v91 = v21;
            }

            else
            {
              v144 = *(v86 + 32);
              (v144)(v157, v21, v85);
              if (v69 < 0)
              {
                __break(1u);
                swift_once();
                v111 = sub_1BF4E7B54();
                __swift_project_value_buffer(v111, qword_1EDCA6898);
                v112 = v155;
                v113 = v156;
                v114 = v157;
                (*(v155 + 16))(v24, v157, v156);
                v115 = v146;

                v116 = v69;
                v117 = sub_1BF4E7B34();
                v118 = sub_1BF4E8E64();

                v119 = os_log_type_enabled(v117, v118);
                v120 = v152;
                if (v119)
                {
                  v121 = swift_slowAlloc();
                  v122 = swift_slowAlloc();
                  *&v163 = v122;
                  *v121 = 136446722;
                  v123 = sub_1BF38D65C(v145, v115, &v163);

                  *(v121 + 4) = v123;
                  *(v121 + 12) = 2050;
                  v124 = sub_1BF4E7844();
                  v125 = *(v112 + 8);
                  v125(v24, v113);
                  *(v121 + 14) = v124;
                  *(v121 + 22) = 2082;
                  swift_getErrorValue();
                  v126 = sub_1BF4A836C(v161, v162);
                  v128 = sub_1BF38D65C(v126, v127, &v163);

                  *(v121 + 24) = v128;
                  _os_log_impl(&dword_1BF389000, v117, v118, "Encountered malformed result for host: %{public}s-%{public}lu: %{public}s", v121, 0x20u);
                  swift_arrayDestroy();
                  MEMORY[0x1BFB5A5D0](v122, -1, -1);
                  MEMORY[0x1BFB5A5D0](v121, -1, -1);

                  v129 = sub_1BF3DB210(v142, v143);
                  (*(v153 + 8))(v152, v154, v129);
                  v125(v157, v113);
                }

                else
                {
                  v140 = *(v112 + 8);
                  v140(v24, v113);

                  sub_1BF3DB210(v142, v143);

                  (*(v153 + 8))(v120, v154);
                  v140(v114, v113);
                }

                v102 = type metadata accessor for HostRecord(0, v159, v160, v130);
                v103 = *(*(v102 - 8) + 56);
                v104 = v158;
                return v103(v104, 1, 1, v102);
              }

              sub_1BF4E77E4();
              v93 = v153;
              v92 = v154;
              if ((*(v153 + 48))(v14, 1, v154) != 1)
              {
                v141 = *(v93 + 32);
                v141(v152, v14, v92);
                v105 = v160;
                v106 = v143;
                v107 = *(v160 + 16);
                v108 = v142;
                sub_1BF3D8864(v142, v143);
                v109 = v108;
                v110 = v159;
                v107(v109, v106, v159, v105);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85C8, &unk_1BF4F20E0);
                v155 = sub_1BF38C8B4(&qword_1EDC9F080, &unk_1EBDD85C8, &unk_1BF4F20E0, MEMORY[0x1E69940B0]);
                sub_1BF38C8B4(&unk_1EDC9F058, &unk_1EBDD85C8, &unk_1BF4F20E0, MEMORY[0x1E69940D8]);
                sub_1BF38C8B4(&unk_1EDC9F070, &unk_1EBDD85C8, &unk_1BF4F20E0, MEMORY[0x1E69940B8]);
                sub_1BF38C8B4(&qword_1EDC9F068, &unk_1EBDD85C8, &unk_1BF4F20E0, MEMORY[0x1E69940C0]);
                v131 = v150;
                sub_1BF4E7784();
                v132 = sub_1BF3DB210(v142, v106);
                (v144)(v27, v157, v156, v132);
                v133 = v149;
                (*(v148 + 32))(v149, v151, v110);
                v134 = v147;
                v141(v147, v152, v154);
                v135 = v158;
                v136 = v133;
                v137 = v160;
                HostRecord.init(identity:type:configuration:activationState:)(v131, v27, v136, v134, v110, v160, v158);
                v139 = type metadata accessor for HostRecord(0, v110, v137, v138);
                return (*(*(v139 - 8) + 56))(v135, 0, 1, v139);
              }

              (*(v86 + 8))(v88, v85);
              v89 = &qword_1EBDD87D8;
              v90 = &qword_1BF4EB2F0;
              v91 = v14;
            }

            sub_1BF38C9B4(v91, v89, v90);
            v24 = v142;
            v71 = v146;
            if (qword_1EDC9D460 == -1)
            {
LABEL_27:
              v94 = sub_1BF4E7B54();
              __swift_project_value_buffer(v94, qword_1EDCA6898);

              v95 = sub_1BF4E7B34();
              v96 = sub_1BF4E8E64();

              if (os_log_type_enabled(v95, v96))
              {
                v97 = swift_slowAlloc();
                v98 = swift_slowAlloc();
                *&v163 = v98;
                *v97 = 136446210;
                v99 = sub_1BF38D65C(v60, v71, &v163);

                *(v97 + 4) = v99;
                _os_log_impl(&dword_1BF389000, v95, v96, "Encountered malformed result for host data: %{public}s", v97, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v98);
                MEMORY[0x1BFB5A5D0](v98, -1, -1);
                MEMORY[0x1BFB5A5D0](v97, -1, -1);
                sub_1BF3DB210(v24, v143);
              }

              else
              {
                sub_1BF3DB210(v24, v143);
              }

              v100 = v158;
              v102 = type metadata accessor for HostRecord(0, v159, v160, v101);
              v103 = *(*(v102 - 8) + 56);
              v104 = v100;
              return v103(v104, 1, 1, v102);
            }
          }

          swift_once();
          goto LABEL_27;
        }
      }
    }
  }

LABEL_12:

LABEL_13:
  if (qword_1EDC9D460 != -1)
  {
    swift_once();
  }

  v73 = sub_1BF4E7B54();
  __swift_project_value_buffer(v73, qword_1EDCA6898);
  v74 = sub_1BF4E7B34();
  v75 = sub_1BF4E8E64();
  v76 = os_log_type_enabled(v74, v75);
  v77 = v160;
  if (v76)
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&dword_1BF389000, v74, v75, "Encountered malformed result for host configuration data.", v78, 2u);
    MEMORY[0x1BFB5A5D0](v78, -1, -1);
  }

  v80 = type metadata accessor for HostRecord(0, v159, v77, v79);
  v81 = *(*(v80 - 8) + 56);
  v82 = v80;
  v83 = v158;

  return v81(v83, 1, 1, v82);
}

uint64_t ChronoMetadataStore.HostConfigurationStore.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void sub_1BF3D4468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_16;
  }

  v7 = *(Strong + 24);
  v8 = Strong;
  os_unfair_lock_lock(*(v7 + 16));
  v9 = *(v8 + 64);
  os_unfair_lock_unlock(*(v7 + 16));

  if (!v9)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  type metadata accessor for HostRecord(0, a2, a3, v10);
  v11 = (*(a3 + 24))(a2, a3);
  if (v3)
  {
    return;
  }

  v81 = v11;
  v82 = v12;
  if (!swift_weakLoadStrong())
  {
LABEL_16:
    sub_1BF4E9464();
    __break(1u);
    return;
  }

  v13 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](181);
  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8850);
  v14 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v14);

  MEMORY[0x1BFB58C90](0x20202020200A2820, 0xEB00000000202020);
  v15 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v15);

  MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
  v16 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v16);

  MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
  v17 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v17);

  MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
  v18 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v18);

  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4F8870);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v19 = sub_1BF4E7794();
  v21 = v20;

  v22 = sub_1BF3D815C(v19, v21, MEMORY[0x1E69E6158], &off_1F3DF00A0);
  v24 = v23;
  v26 = v25;
  v27 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v27);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v22, v24, v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v22, v24, v26, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v29);

  sub_1BF3D88B8(v22, v24, v26);

  MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
  v30 = sub_1BF4E7844();
  if (v30 < 0)
  {
    goto LABEL_13;
  }

  v31 = sub_1BF3D7F44(v30);
  v33 = v32;
  v35 = v34;
  v36 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v36);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v31, v33, v35);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v31, v33, v35, 0x676E69646E696240, 0xE800000000000000, v37, v38);

  v39 = sub_1BF3D88B8(v31, v33, v35);
  MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020, v39);
  sub_1BF3D8864(v81, v82);
  sub_1BF3D8864(v81, v82);
  v40 = sub_1BF3D815C(v81, v82, MEMORY[0x1E6969080], &off_1F3DF00A8);
  v42 = v41;
  v44 = v43;
  v45 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v45);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v40, v42, v44);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v40, v42, v44, 0x676E69646E696240, 0xE800000000000000, v46, v47);

  sub_1BF3D88B8(v40, v42, v44);
  v48 = sub_1BF3B03C0(v81, v82);
  MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020, v48);
  v49 = sub_1BF4E77F4();
  if (v49 < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v50 = sub_1BF3D7F44(v49);
  v52 = v51;
  v54 = v53;
  v55 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v55);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v50, v52, v54);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v50, v52, v54, 0x676E69646E696240, 0xE800000000000000, v56, v57);

  v58 = sub_1BF3D88B8(v50, v52, v54);
  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4F8890, v58);
  v59 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v59);

  MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
  v60 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v60);

  MEMORY[0x1BFB58C90](0xD00000000000001CLL, 0x80000001BF4F88B0);
  v61 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v61);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  sub_1BF3D8864(v81, v82);
  sub_1BF3D8864(v81, v82);
  v62 = sub_1BF3D815C(v81, v82, MEMORY[0x1E6969080], &off_1F3DF00A8);
  v64 = v63;
  v66 = v65;
  v67 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v67);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v62, v64, v66);
  v68 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v62, v64, v66, 0x676E69646E696240, 0xE800000000000000, v68, v69);

  sub_1BF3D88B8(v62, v64, v66);
  v70 = sub_1BF3B03C0(v81, v82);
  MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020, v70);
  v71 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v71);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  v72 = sub_1BF4E77F4();
  if (v72 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v73 = sub_1BF3D7F44(v72);
  v75 = v74;
  v77 = v76;
  v78 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v78);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v73, v75, v77);
  v79 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v73, v75, v77, 0x676E69646E696240, 0xE800000000000000, v79, v80);

  sub_1BF3D88B8(v73, v75, v77);
  sub_1BF3E4F48(v13, 0, 0xE000000000000000);

  sub_1BF3B03C0(v81, v82);
}

void sub_1BF3D4F00()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v2 = *(Strong + 24);
  v3 = Strong;
  os_unfair_lock_lock(*(v2 + 16));
  v4 = *(v3 + 64);
  os_unfair_lock_unlock(*(v2 + 16));

  if (!v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!swift_weakLoadStrong())
  {
LABEL_12:
    sub_1BF4E9464();
    __break(1u);
    return;
  }

  v5 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](58);
  MEMORY[0x1BFB58C90](0x4144505520202020, 0xEB00000000204554);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x544553202020200ALL, 0xE900000000000020);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  v8 = sub_1BF4E77F4();
  if (v8 < 0)
  {
    goto LABEL_10;
  }

  v41 = v0;
  v9 = sub_1BF3D7F44(v8);
  v11 = v10;
  v13 = v12;
  v14 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v14);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v9, v11, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v9, v11, v13, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v16);

  v17 = sub_1BF3D88B8(v9, v11, v13);
  MEMORY[0x1BFB58C90](0xD000000000000013, 0x80000001BF4F88D0, v17);
  v18 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v18);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v19 = sub_1BF4E7794();
  v21 = v20;

  v22 = sub_1BF3D815C(v19, v21, MEMORY[0x1E69E6158], &off_1F3DF00A0);
  v24 = v23;
  v26 = v25;
  v27 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v27);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v22, v24, v26);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v22, v24, v26, 0x676E69646E696240, 0xE800000000000000, v28, v29);

  sub_1BF3D88B8(v22, v24, v26);

  v30 = v5;
  MEMORY[0x1BFB58C90](0x444E41202020200ALL, 0xE900000000000020);
  v31 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v31);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  v32 = sub_1BF4E7844();
  if (v32 < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v33 = sub_1BF3D7F44(v32);
  v35 = v34;
  v37 = v36;
  v38 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v38);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v33, v35, v37);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v33, v35, v37, 0x676E69646E696240, 0xE800000000000000, v39, v40);

  sub_1BF3D88B8(v33, v35, v37);
  sub_1BF3E4F48(v30, 0, 0xE000000000000000);

  if (!v41)
  {
  }
}

void sub_1BF3D54A4()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v2 = *(Strong + 24);
  v3 = Strong;
  os_unfair_lock_lock(*(v2 + 16));
  v4 = *(v3 + 64);
  os_unfair_lock_unlock(*(v2 + 16));

  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v29 = v0;
  if (!swift_weakLoadStrong())
  {
LABEL_10:
    sub_1BF4E9464();
    __break(1u);
    return;
  }

  v5 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](48);
  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F88F0);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x200A455245485720, 0xEF20202020202020);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v8 = sub_1BF4E7794();
  v10 = v9;

  v11 = sub_1BF3D815C(v8, v10, MEMORY[0x1E69E6158], &off_1F3DF00A0);
  v13 = v12;
  v15 = v14;
  v16 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v16);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v11, v13, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v11, v13, v15, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v18);

  sub_1BF3D88B8(v11, v13, v15);

  MEMORY[0x1BFB58C90](0x444E41202020200ALL, 0xE900000000000020);
  v19 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v19);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);
  v20 = sub_1BF4E7844();
  if (v20 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v21 = sub_1BF3D7F44(v20);
  v23 = v22;
  v25 = v24;
  v26 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v26);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v21, v23, v25);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v21, v23, v25, 0x676E69646E696240, 0xE800000000000000, v27, v28);

  sub_1BF3D88B8(v21, v23, v25);
  sub_1BF3E4F48(v5, 0, 0xE000000000000000);

  if (!v29)
  {
  }
}

uint64_t sub_1BF3D5900@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

id default argument 4 of BaseCacheManager.init(identifier:cacheKeyProvider:cacheURLProvider:protectionLevelProvider:fileManager:forReading:)()
{
  v0 = [objc_opt_self() defaultManager];

  return v0;
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

uint64_t default argument 7 of PlaceholderStatefulStore.init<A, B>(reloadStrategy:reloadConfigurationPolicy:reloadTriggers:logger:dataMigrator:allowDebounce:enabled:reloadQueue:calloutQueue:)()
{
  v7 = sub_1BF4E8F24();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BF4E8ED4();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1BF4E8064();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
  sub_1BF4E8044();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1BF3A1024(&qword_1EDC9F148, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
  sub_1BF38C8B4(&qword_1EDC9F178, &qword_1EBDD85C0, &qword_1BF4EC090, MEMORY[0x1E69E6328]);
  sub_1BF4E91A4();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  return sub_1BF4E8F64();
}

uint64_t default argument 8 of PlaceholderStatefulStore.init<A, B>(reloadStrategy:reloadConfigurationPolicy:reloadTriggers:logger:dataMigrator:allowDebounce:enabled:reloadQueue:calloutQueue:)()
{
  v7 = sub_1BF4E8F24();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BF4E8ED4();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1BF4E8064();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
  sub_1BF4E8044();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1BF3A1024(&qword_1EDC9F148, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
  sub_1BF38C8B4(&qword_1EDC9F178, &qword_1EBDD85C0, &qword_1BF4EC090, MEMORY[0x1E69E6328]);
  sub_1BF4E91A4();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  return sub_1BF4E8F64();
}

uint64_t sub_1BF3D5FB8(uint64_t a1, id *a2)
{
  result = sub_1BF4E88F4();
  *a2 = 0;
  return result;
}

uint64_t sub_1BF3D6030@<X0>(uint64_t *a2@<X8>)
{
  sub_1BF4E8914();
  v3 = sub_1BF4E88E4();

  *a2 = v3;
  return result;
}

uint64_t sub_1BF3D6118(uint64_t a1, uint64_t a2, double a3)
{
  sub_1BF4E9804();
  swift_getWitnessTable();
  sub_1BF4E7874();
  return sub_1BF4E9844();
}

uint64_t sub_1BF3D6180(uint64_t a1, id *a2)
{
  v3 = sub_1BF4E8904();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1BF3D620C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1BF4E7864();
}

uint64_t sub_1BF3D6278(uint64_t a1)
{
  v2 = sub_1BF3A1024(&qword_1EBDD8710, type metadata accessor for FileProtectionType, &unk_1BF4EB17C);
  v3 = sub_1BF3A1024(&unk_1EBDD8718, type metadata accessor for FileProtectionType, &unk_1BF4EB11C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BF3D6334(uint64_t a1)
{
  v2 = sub_1BF3A1024(&qword_1EDC9D710, type metadata accessor for FileAttributeKey, &unk_1BF4EB51C);
  v3 = sub_1BF3A1024(&qword_1EBDD8808, type metadata accessor for FileAttributeKey, &unk_1BF4EB3C4);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BF3D63F0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1BF4E88E4();

  *a2 = v3;
  return result;
}

uint64_t sub_1BF3D6438(uint64_t a1)
{
  v2 = sub_1BF3A1024(&qword_1EDC9FDD0, type metadata accessor for URLResourceKey, &unk_1BF4EB20C);
  v3 = sub_1BF3A1024(&qword_1EBDD8728, type metadata accessor for URLResourceKey, &unk_1BF4EACB0);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BF3D64F4()
{
  v0 = sub_1BF4E8914();
  v1 = MEMORY[0x1BFB58CE0](v0);

  return v1;
}

uint64_t sub_1BF3D6530(uint64_t a1)
{
  sub_1BF4E8914();
  sub_1BF4E89F4();
}

uint64_t sub_1BF3D6584(uint64_t a1)
{
  sub_1BF4E8914();
  sub_1BF4E9804();
  sub_1BF4E89F4();
  v1 = sub_1BF4E9844();

  return v1;
}

uint64_t sub_1BF3D65F8(void *a1, uint64_t *a2)
{
  v2 = sub_1BF4E8914();
  v4 = v3;
  if (v2 == sub_1BF4E8914() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1BF4E9734();
  }

  return v7 & 1;
}

void sub_1BF3D6680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7)
{
  v8 = v7;
  v12 = a3;
  v15 = *v7;
  v16 = sub_1BF3CD5D0(a4, a5, a7);
  v18 = v15[2];
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = v17;
  v23 = v15[3];
  if (v23 < v21 || (a6 & 1) == 0)
  {
    if (v23 >= v21 && (a6 & 1) == 0)
    {
      v24 = v16;
      sub_1BF4A248C();
      v16 = v24;
      goto LABEL_8;
    }

    sub_1BF49DE28(v21, a6 & 1);
    v16 = sub_1BF3CD5D0(a4, a5, v25);
    if ((v22 & 1) != (v26 & 1))
    {
LABEL_16:
      sub_1BF4E9794();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v27 = *v8;
  if (v22)
  {
    v28 = v27[7] + 24 * v16;
    v29 = *v28;
    v30 = *(v28 + 8);
    *v28 = a1;
    *(v28 + 8) = a2;
    v31 = *(v28 + 16);
    *(v28 + 16) = v12;

    sub_1BF3D88B8(v29, v30, v31);
  }

  else
  {
    sub_1BF4A1CB4(v16, a4, a5, a1, a2, v12, v27);
  }
}

void sub_1BF3D67F0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_1BF3CD5D0(a2, a3, a5);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_16;
  }

  v18 = v13;
  v19 = v11[3];
  if (v19 < v17 || (a4 & 1) == 0)
  {
    if (v19 >= v17 && (a4 & 1) == 0)
    {
      v20 = v12;
      sub_1BF4A2624();
      v12 = v20;
      goto LABEL_8;
    }

    sub_1BF49E108(v17, a4 & 1);
    v12 = sub_1BF3CD5D0(a2, a3, v21);
    if ((v18 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_1BF4E9794();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v18)
  {
    v24 = (v23[7] + 32 * v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);

    sub_1BF38EB2C(a1, v24);
  }

  else
  {
    sub_1BF4A1D08(v12, a2, a3, a1, v23);
  }
}

void sub_1BF3D6940(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_1BF3CD5D0(a2, a3, a5);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_16;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a4 & 1) == 0)
  {
    if (v19 >= v17 && (a4 & 1) == 0)
    {
      v20 = v12;
      sub_1BF4A2948();
      v12 = v20;
      goto LABEL_8;
    }

    sub_1BF49E3C0(v17, a4 & 1);
    v12 = sub_1BF3CD5D0(a2, a3, v21);
    if ((v18 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_1BF4E9794();
      __break(1u);
_objc_release_x1:
      MEMORY[0x1EEE66BB8]();
      return;
    }
  }

LABEL_8:
  if (v18)
  {
    *(*(*v6 + 56) + 8 * v12) = a1;

    goto _objc_release_x1;
  }

  sub_1BF4A6724();
}

void sub_1BF3D6A84(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v6 = v5;
  v11 = *v5;
  v13 = sub_1BF3CD5D0(a2, a3, a5);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      sub_1BF4A2AB4();
      goto LABEL_7;
    }

    sub_1BF49E664(v16, a4 & 1);
    v27 = sub_1BF3CD5D0(a2, a3, v26);
    if ((v17 & 1) == (v28 & 1))
    {
      v13 = v27;
      v19 = *v6;
      if (v17)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1BF4E9794();
    __break(1u);
    return;
  }

LABEL_7:
  v19 = *v6;
  if (v17)
  {
LABEL_8:
    v20 = v19[7];
    v21 = sub_1BF4E7334();
    v22 = *(v21 - 8);
    v23 = *(v22 + 40);
    v24 = v21;
    v25 = v20 + *(v22 + 72) * v13;

    v23(v25, a1, v24);
    return;
  }

LABEL_13:
  sub_1BF4A1D74(v13, a2, a3, a1, v19);
}

uint64_t sub_1BF3D6C04(__int128 *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = *v3;
  v14 = sub_1BF3EC540(a2, v9);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1BF4A2E1C();
      goto LABEL_7;
    }

    sub_1BF49E68C(v17, a3 & 1);
    v24 = sub_1BF3EC540(a2, v23);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1BF38C94C(a2, v11, &qword_1EBDD87A8, &unk_1BF4EB2C0);
      return sub_1BF4A1E24(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1BF4E9794();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 40 * v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);

  return sub_1BF38E610(a1, v21);
}

void sub_1BF3D6DBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_1BF3CD5D0(a2, a3, a5);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_16;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a4 & 1) == 0)
  {
    if (v19 >= v17 && (a4 & 1) == 0)
    {
      v20 = v12;
      sub_1BF4A3058();
      v12 = v20;
      goto LABEL_8;
    }

    sub_1BF49EBB8(v17, a4 & 1);
    v12 = sub_1BF3CD5D0(a2, a3, v21);
    if ((v18 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_1BF4E9794();
      __break(1u);
      return;
    }
  }

LABEL_8:
  if (v18)
  {
    *(*(*v6 + 56) + 8 * v12) = a1;
  }

  else
  {
    sub_1BF4A6724();
  }
}

uint64_t sub_1BF3D6F04(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = *v3;
  v14 = sub_1BF3EC768(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1BF4A3478();
      goto LABEL_7;
    }

    sub_1BF49EE60(v17, a3 & 1);
    v28 = sub_1BF3EC768(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1BF4A1F24(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1BF4E9794();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_1BF4E7334();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_1BF3D7110(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *v3;
  v14 = sub_1BF38C890(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1BF4A3A84();
      goto LABEL_7;
    }

    sub_1BF49F724(v17, a3 & 1);
    v23 = sub_1BF38C890(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1BF4A2024(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1BF4E9794();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 40 * v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);

  return sub_1BF38E610(a1, v21);
}

void sub_1BF3D72F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v6 = v5;
  v11 = *v5;
  v13 = sub_1BF3CD5D0(a2, a3, a5);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *v6;
    if (v17)
    {
LABEL_8:
      v20 = v19[7];
      v21 = type metadata accessor for RemoteActivityArchiveBudget(0);
      sub_1BF3DB194(a1, v20 + *(*(v21 - 8) + 72) * v13, type metadata accessor for RemoteActivityArchiveBudget);
      return;
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_1BF4A3D14();
    goto LABEL_7;
  }

  sub_1BF49FB0C(v16, a4 & 1);
  v23 = sub_1BF3CD5D0(a2, a3, v22);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_15:
    sub_1BF4E9794();
    __break(1u);
    return;
  }

  v13 = v23;
  v19 = *v6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1BF4A20F4(v13, a2, a3, a1, v19);
}

id sub_1BF3D7460(__int128 *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1BF3916CC(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1BF4A3F6C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1BF49FE84(v13, a3 & 1);
    v8 = sub_1BF3916CC(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_1BF4E9034();
      result = sub_1BF4E9794();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 40 * v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);

    return sub_1BF38E610(a1, v19);
  }

  else
  {
    sub_1BF4A21A0(v8, a2, a1, v18);

    return a2;
  }
}

void sub_1BF3D75A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = sub_1BF3CD5D0(a3, a4, a6);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = v13[3];
  if (v21 < v19 || (a5 & 1) == 0)
  {
    if (v21 >= v19 && (a5 & 1) == 0)
    {
      v22 = v14;
      sub_1BF4A40F0();
      v14 = v22;
      goto LABEL_8;
    }

    sub_1BF4A0104(v19, a5 & 1);
    v14 = sub_1BF3CD5D0(a3, a4, v23);
    if ((v20 & 1) != (v24 & 1))
    {
LABEL_16:
      sub_1BF4E9794();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v20)
  {
    v26 = (v25[7] + 16 * v14);
    *v26 = a1;
    v26[1] = a2;
  }

  else
  {
    sub_1BF4A220C(v14, a3, a4, a1, a2, v25);
  }
}

void sub_1BF3D76F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = sub_1BF3CD5D0(a3, a4, a6);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = v13[3];
  if (v21 < v19 || (a5 & 1) == 0)
  {
    if (v21 >= v19 && (a5 & 1) == 0)
    {
      v22 = v14;
      sub_1BF4A4270();
      v14 = v22;
      goto LABEL_8;
    }

    sub_1BF4A03BC(v19, a5 & 1);
    v14 = sub_1BF3CD5D0(a3, a4, v23);
    if ((v20 & 1) != (v24 & 1))
    {
LABEL_16:
      sub_1BF4E9794();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v20)
  {
    v26 = (v25[7] + 16 * v14);
    *v26 = a1;
    v26[1] = a2;
  }

  else
  {
    sub_1BF4A220C(v14, a3, a4, a1, a2, v25);
  }
}

uint64_t sub_1BF3D7844(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1BF4E7394();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1BF3EC94C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for RemoteActivitySubscription(0);
      return sub_1BF3DB194(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for RemoteActivitySubscription);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1BF4A4558();
    goto LABEL_7;
  }

  sub_1BF4A0B94(v17, a3 & 1);
  v24 = sub_1BF3EC94C(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1BF4E9794();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1BF4A225C(v14, v11, a1, v20);
}

void sub_1BF3D7A18(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1BF3EC9E4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1BF4A4884();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1BF4A1034(v14, a3 & 1);
    v9 = sub_1BF3EC9E4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_1BF4E79A4();
      sub_1BF4E9794();
      __break(1u);
      return;
    }
  }

LABEL_8:
  if (v15)
  {
    *(*(*v4 + 56) + 8 * v9) = a1;
  }

  else
  {
    sub_1BF4A6720();
  }
}

void sub_1BF3D7B44(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1BF3ECA90(a2, a4);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a3 & 1) == 0)
  {
    if (v17 >= v15 && (a3 & 1) == 0)
    {
      v18 = v10;
      sub_1BF4A4898();
      v10 = v18;
      goto LABEL_8;
    }

    sub_1BF4A1318(v15, a3 & 1);
    v10 = sub_1BF3ECA90(a2, v19);
    if ((v16 & 1) != (v20 & 1))
    {
LABEL_16:
      type metadata accessor for _ReloadStateKey(0);
      sub_1BF4E9794();
      __break(1u);
      return;
    }
  }

LABEL_8:
  if (v16)
  {
    *(*(*v5 + 56) + 8 * v10) = a1;
  }

  else
  {
    sub_1BF4A6720();
  }
}

id sub_1BF3D7C70(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_1BF3916CC(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 >= v12 && (a3 & 1) != 0)
  {
LABEL_7:
    v15 = *v4;
    if (v13)
    {
LABEL_8:
      v16 = v15[7];
      v17 = type metadata accessor for ExtensionMetadata(0);
      return sub_1BF3DB194(a1, v16 + *(*(v17 - 8) + 72) * v9, type metadata accessor for ExtensionMetadata);
    }

    goto LABEL_11;
  }

  if (v14 >= v12 && (a3 & 1) == 0)
  {
    sub_1BF4A4A00();
    goto LABEL_7;
  }

  sub_1BF4A1688(v12, a3 & 1);
  v19 = sub_1BF3916CC(a2);
  if ((v13 & 1) != (v20 & 1))
  {
LABEL_15:
    sub_1BF4E9034();
    result = sub_1BF4E9794();
    __break(1u);
    return result;
  }

  v9 = v19;
  v15 = *v4;
  if (v13)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1BF4A2390(v9, a2, a1, v15);

  return a2;
}