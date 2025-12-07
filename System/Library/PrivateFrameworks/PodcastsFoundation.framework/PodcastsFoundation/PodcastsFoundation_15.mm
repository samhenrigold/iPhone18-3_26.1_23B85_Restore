uint64_t ICContentFairPlayKeySession.description.getter()
{
  v1 = v0;
  sub_1D917946C();
  MEMORY[0x1DA7298F0](0xD00000000000001FLL, 0x80000001D91CC2D0);
  MEMORY[0x1DA7298F0](*(v1 + 16), *(v1 + 24));
  MEMORY[0x1DA7298F0](0x3D74657373610ALL, 0xE700000000000000);
  v2 = [*(v0 + 32) description];
  v3 = sub_1D917820C();
  v5 = v4;

  MEMORY[0x1DA7298F0](v3, v5);

  MEMORY[0x1DA7298F0](0xD000000000000011, 0x80000001D91CC2F0);
  swift_beginAccess();
  v6 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5738, &qword_1D9190850);
  v7 = sub_1D917826C();
  MEMORY[0x1DA7298F0](v7);

  return 0;
}

void sub_1D8EB0130()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];
  if (v1 && (v2 = v1, v3 = [v1 ams_DSID], v2, v3))
  {

    v4 = [objc_opt_self() specificAccountWithDSID_];
    [objc_allocWithZone(MEMORY[0x1E69E4618]) initWithIdentity_];
  }

  else
  {
    sub_1D8E9440C();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();
  }
}

unint64_t sub_1D8EB024C()
{
  result = qword_1ECAB5700;
  if (!qword_1ECAB5700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5700);
  }

  return result;
}

uint64_t sub_1D8EB02A0(uint64_t a1)
{
  v2 = type metadata accessor for FairPlayServerURLConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ICContentFairPlayKeySession(uint64_t a1)
{
  result = qword_1ECAB5748;
  if (!qword_1ECAB5748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8EB0350(uint64_t a1)
{
  result = sub_1D9176C2C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FairPlayServerURLConfiguration(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_1D8EB04A8()
{
  result = qword_1ECAB57C8;
  if (!qword_1ECAB57C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB57C8);
  }

  return result;
}

id sub_1D8EB04FC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v8 = sub_1D9176E3C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  if (!a1)
  {
    (*(v9 + 56))(v7, 1, 1, v8, v13);
LABEL_8:
    sub_1D8D08A50(v7, &qword_1ECAB75C0, &unk_1D9188A50);
    return 0;
  }

  v16 = [a1 renewalDate];
  if (v16)
  {
    v17 = v16;
    sub_1D9176DFC();

    (*(v9 + 56))(v4, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v4, 1, 1, v8);
  }

  sub_1D8E964A4(v4, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    goto LABEL_8;
  }

  (*(v9 + 32))(v15, v7, v8);
  v19 = *(v9 + 16);
  v19(v11, v15, v8);
  v20 = type metadata accessor for FairPlayKeyResponseData(0);
  v21 = objc_allocWithZone(v20);
  v19(&v21[OBJC_IVAR___PFFairPlayKeyResponseData_renewalDate], v11, v8);
  v24.receiver = v21;
  v24.super_class = v20;
  v22 = objc_msgSendSuper2(&v24, sel_init);

  v23 = *(v9 + 8);
  v23(v11, v8);
  v23(v15, v8);
  return v22;
}

uint64_t sub_1D8EB081C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FairPlayServerURLConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t NSUserDefaults.isFairPlayV2Enabled.getter()
{
  v0 = sub_1D8D6D320();
  if (v0 != 2)
  {
    return v0 & 1;
  }

  v1 = qword_1ECAB5808;
  v2 = off_1ECAB5810;

  LOBYTE(v1) = sub_1D8D6D934(v1, v2, 1);

  return v1 & 1;
}

void NSUserDefaults.isFairPlayV2Enabled.setter(uint64_t a1, double a2)
{
  v3 = sub_1D917873C();

  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v2 setValue:v3 forKey:v4];
}

void NSUserDefaults.fairPlayVersion.setter(_BYTE *a1)
{
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v1 setValue:v2 forKey:v3];
}

void (*NSUserDefaults.fairPlayVersion.modify(uint64_t a1))(void **a1)
{
  *a1 = v1;
  NSUserDefaults.fairPlayVersion.getter((a1 + 8));
  return sub_1D8EB0A8C;
}

void sub_1D8EB0A8C(void **a1)
{
  v1 = *a1;
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v1 setValue:v3 forKey:v2];
}

uint64_t sub_1D8EB0B40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8D6D320();
  if (result == 2)
  {
    v3 = qword_1ECAB5808;
    v4 = off_1ECAB5810;

    v5 = sub_1D8D6D934(v3, v4, 1);

    result = v5;
  }

  *a1 = result & 1;
  return result;
}

void sub_1D8EB0BB8(unsigned __int8 *a1, void **a2, double a3)
{
  v3 = *a2;
  v4 = sub_1D917873C();

  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v3 setValue:v4 forKey:v5];
}

void (*NSUserDefaults.isFairPlayV2Enabled.modify(uint64_t a1))(void **a1, double a2)
{
  *a1 = v1;
  v3 = sub_1D8D6D320();
  if (v3 == 2)
  {
    v4 = qword_1ECAB5808;
    v5 = off_1ECAB5810;

    v6 = sub_1D8D6D934(v4, v5, 1);

    v3 = v6;
  }

  *(a1 + 8) = v3 & 1;
  return sub_1D8EB0CF0;
}

void sub_1D8EB0CF0(void **a1, double a2)
{
  v2 = *a1;
  v4 = sub_1D917873C();

  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v2 setValue:v4 forKey:v3];
}

id NSUserDefaults.fairPlayMigrationRetryCount.getter()
{

  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v2 = [v0 integerForKey_];

  return v2;
}

void sub_1D8EB0DF8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v3 = sub_1D9178B6C();

  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v5 setValue:v3 forKey:v4];
}

void NSUserDefaults.fairPlayMigrationRetryCount.setter(uint64_t a1)
{
  v2 = sub_1D9178B6C();

  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v1 setValue:v2 forKey:v3];
}

uint64_t sub_1D8EB0FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v116 = a6;
  v99 = a3;
  v101 = a2;
  v112 = a1;
  v8 = sub_1D9176C2C();
  v104 = *(v8 - 8);
  v105 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v102 = v9;
  v115 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v103 = *(AssociatedTypeWitness - 8);
  v97 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v113 = &v76 - v11;
  v100 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v94 = v13;
  v111 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = a5;
  v14 = a4;
  swift_getAssociatedConformanceWitness();
  v114 = AssociatedTypeWitness;
  swift_getAssociatedTypeWitness();
  v15 = sub_1D917781C();
  v16 = MEMORY[0x1E695BED8];
  WitnessTable = swift_getWitnessTable();
  v84 = v15;
  v83 = WitnessTable;
  v18 = sub_1D91775FC();
  v96 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v110 = &v76 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECAB5A20, &qword_1D9190B78);
  v21 = sub_1D8CF48EC(&qword_1ECAB0330, &unk_1ECAB5A20, &qword_1D9190B78, v16);
  v22 = swift_getWitnessTable();
  v89 = v20;
  v119 = v20;
  v120 = v18;
  v98 = v18;
  v87 = v21;
  v121 = v21;
  v122 = v22;
  v86 = v22;
  v23 = sub_1D917771C();
  v93 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v90 = &v76 - v24;
  v25 = swift_getWitnessTable();
  v95 = v23;
  v85 = v25;
  v92 = sub_1D91775FC();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v88 = &v76 - v26;
  v117 = sub_1D917734C();
  v27 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v118 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v76 - v30;
  if (qword_1ECAB0FE0 != -1)
  {
    swift_once();
  }

  v32 = sub_1D917739C();
  __swift_project_value_buffer(v32, qword_1ECAB0FE8);
  sub_1D917737C();
  sub_1D917731C();
  v33 = sub_1D917737C();
  v34 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v33, v34, v36, "backgroundStash", "Start background stash", v35, 2u);
    MEMORY[0x1DA72CB90](v35, -1, -1);
  }

  v107 = v27;
  v38 = *(v27 + 16);
  v37 = v27 + 16;
  v39 = v38;
  v38(v118, v31, v117);
  sub_1D91773FC();
  swift_allocObject();
  v82 = sub_1D91773EC();
  v40 = sub_1D917737C();
  v41 = sub_1D9178F6C();
  if (sub_1D917918C())
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v40, v41, v43, "Start loading from source", "", v42, 2u);
    MEMORY[0x1DA72CB90](v42, -1, -1);
  }

  v44 = *(v109 + 56);
  v106 = v31;
  v45 = v99;
  v46 = v109;
  v119 = v44(v112, v14);
  v47 = v118;
  v48 = v31;
  v49 = v117;
  v78 = v39;
  v39(v118, v48, v117);
  v79 = v37;
  v50 = v14;
  v51 = v107;
  v52 = *(v107 + 80);
  v53 = swift_allocObject();
  *(v53 + 2) = v50;
  *(v53 + 3) = v46;
  v77 = v50;
  *(v53 + 4) = v116;
  v54 = *(v51 + 32);
  v80 = v51 + 32;
  v81 = v54;
  v55 = v47;
  v54(&v53[(v52 + 40) & ~v52], v47, v49);
  sub_1D9177B3C();

  v56 = v49;
  v57 = v100;
  (*(v100 + 16))(v111, v45, v50);
  v58 = v103;
  (*(v103 + 16))(v113, v101, v114);
  v60 = v104;
  v59 = v105;
  (*(v104 + 16))(v115, v112, v105);
  v78(v55, v106, v56);
  v61 = (*(v57 + 80) + 40) & ~*(v57 + 80);
  v62 = (v94 + v61 + *(v58 + 80)) & ~*(v58 + 80);
  v63 = (v97 + *(v60 + 80) + v62) & ~*(v60 + 80);
  v64 = (v102 + v52 + v63) & ~v52;
  v65 = swift_allocObject();
  v66 = v109;
  *(v65 + 2) = v77;
  *(v65 + 3) = v66;
  *(v65 + 4) = v116;
  (*(v57 + 32))(&v65[v61], v111);
  (*(v58 + 32))(&v65[v62], v113, v114);
  (*(v60 + 32))(&v65[v63], v115, v59);
  v67 = v117;
  v81(&v65[v64], v118, v117);
  sub_1D91777FC();
  v68 = v90;
  v69 = v98;
  v70 = v110;
  sub_1D9177DDC();

  (*(v96 + 8))(v70, v69);

  v71 = v95;
  v72 = v88;
  sub_1D9177B3C();

  (*(v93 + 8))(v68, v71);
  v73 = v92;
  swift_getWitnessTable();
  v74 = sub_1D9177B1C();

  (*(v91 + 8))(v72, v73);
  (*(v107 + 8))(v106, v67);
  return v74;
}

uint64_t AssetBackgroundSession.start(task:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a1;
  v75 = sub_1D917653C();
  v73 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v70 = v6;
  v72 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a3;
  v7 = *(a3 - 8);
  a3 -= 8;
  v58 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v65 = v9;
  v78 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5840, &unk_1D9190AB8);
  v56 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v11 = &v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v52 - v13;
  v15 = *(a3 + 24);
  v60 = *(a3 + 32);
  v59 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v76 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v52 - v20;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5848, &qword_1D9190AC8);
  v64 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v23 = &v52 - v22;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5850, &unk_1D9190AD0);
  v63 = *(v66 - 8);
  v24 = MEMORY[0x1EEE9AC00](v66);
  v62 = &v52 - v25;
  v26 = *(a3 + 56);
  v68 = v3;
  v27 = *(v3 + v26);
  v61 = v17;
  v28 = *(v17 + 16);
  v71 = a2;
  v54 = v17 + 16;
  v53 = v28;
  (v28)(v21, a2, AssociatedTypeWitness, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B28, &unk_1D918BE10);
  v77 = AssociatedTypeWitness;
  if (swift_dynamicCast())
  {
    v29 = *(&v83 + 1);
    v30 = v84;
    __swift_project_boxed_opaque_existential_1(&v82, *(&v83 + 1));
    (*(v30 + 8))(v80, v29, v30);
    __swift_destroy_boxed_opaque_existential_1Tm(&v82);
  }

  else
  {
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    sub_1D8D08A50(&v82, &qword_1ECAB4B20, &unk_1D918BE00);
    memset(v80, 0, sizeof(v80));
    v81 = 0;
  }

  sub_1D8D728EC(v80, v79);
  *&v82 = v27;
  sub_1D8D728EC(v79, &v82 + 8);
  v85 = "AWAIT-SESSION";
  v86 = 13;
  v87 = 2;
  v90 = 0;

  sub_1D8D08A50(v79, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D08A50(v80, &qword_1ECAB4928, &qword_1D918B380);
  v88 = 0;
  v89 = 0xE000000000000000;
  v91 = 0;
  if (qword_1EDCD5B50 != -1)
  {
    swift_once();
  }

  v31 = qword_1EDCD5B58;
  v32 = sub_1D9178DBC();
  (*(*(v32 - 8) + 56))(v14, 1, 1, v32);
  *&v80[0] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5858, &qword_1D9190AE0);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECAB2780, &qword_1ECAB5858, &qword_1D9190AE0, &protocol conformance descriptor for EmitLifecycle<A>);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A90, &qword_1ECAB5840, &unk_1D9190AB8, MEMORY[0x1E695BCB8]);
  v52 = v23;
  v33 = v55;
  sub_1D9177CEC();
  (*(v56 + 8))(v11, v33);
  sub_1D8D08A50(v14, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8D08A50(&v82, &qword_1ECAB5858, &qword_1D9190AE0);
  v34 = v58;
  v35 = v74;
  (*(v58 + 16))(v78, v68, v74);
  v36 = v73;
  v37 = v72;
  v38 = v75;
  (*(v73 + 16))(v72, v69, v75);
  v53(v76, v71, v77);
  v39 = (*(v34 + 80) + 40) & ~*(v34 + 80);
  v40 = (v65 + *(v36 + 80) + v39) & ~*(v36 + 80);
  v41 = v61;
  v42 = (v70 + v40 + *(v61 + 80)) & ~*(v61 + 80);
  v43 = swift_allocObject();
  v44 = v60;
  *(v43 + 2) = v59;
  *(v43 + 3) = v44;
  *(v43 + 4) = *(v35 + 32);
  (*(v34 + 32))(&v43[v39], v78, v35);
  (*(v36 + 32))(&v43[v40], v37, v38);
  (*(v41 + 32))(&v43[v42], v76, v77);
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5860, &qword_1D9190AE8);
  sub_1D8CF48EC(&qword_1ECAB04B0, &qword_1ECAB5848, &qword_1D9190AC8, MEMORY[0x1E695BE98]);
  v45 = MEMORY[0x1E695BE40];
  sub_1D8CF48EC(&qword_1ECAB0600, &qword_1ECAB5860, &qword_1D9190AE8, MEMORY[0x1E695BE40]);
  v46 = v62;
  v47 = v67;
  v48 = v52;
  sub_1D9177DCC();

  (*(v64 + 8))(v48, v47);
  sub_1D8CF48EC(&qword_1ECAB0540, &qword_1ECAB5850, &unk_1D9190AD0, v45);
  v49 = v66;
  v50 = sub_1D9177B1C();
  (*(v63 + 8))(v46, v49);
  return v50;
}

uint64_t sub_1D8EB25B4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v41 = a7;
  v42 = a4;
  v44 = a3;
  v48 = a8;
  v50 = a5;
  v51 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v41 - v15;
  v17 = type metadata accessor for AssetBackgroundSession(0, a5, a6, a7);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v41 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5898, &qword_1D9190BC0);
  v23 = *(v22 - 8);
  v46 = v22;
  v47 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v43 = &v41 - v24;
  v25 = *a1;
  v45 = *(a2 + *(v17 + 44));
  v44 = AssetBackgroundDelegate.start(request:using:)(v44, v25);
  v52 = v44;
  (*(v18 + 16))(v21, a2, v17);
  (*(v13 + 16))(v16, v42, AssociatedTypeWitness);
  v26 = (*(v18 + 80) + 40) & ~*(v18 + 80);
  v27 = (v19 + v26 + *(v13 + 80)) & ~*(v13 + 80);
  v28 = (v14 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v30 = v51;
  *(v29 + 2) = v50;
  *(v29 + 3) = v30;
  *(v29 + 4) = v41;
  (*(v18 + 32))(&v29[v26], v21, v17);
  (*(v13 + 32))(&v29[v27], v16, AssociatedTypeWitness);
  *&v29[v28] = v25;
  v31 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58A0, &qword_1D9190BC8);
  v32 = MEMORY[0x1E695BED8];
  sub_1D8CF48EC(&qword_1EDCD0B70, &qword_1ECAB58A0, &qword_1D9190BC8, MEMORY[0x1E695BED8]);
  v33 = v43;
  sub_1D9177B3C();

  v34 = swift_allocObject();
  v35 = v51;
  v34[2] = v50;
  v34[3] = v35;
  v36 = v45;
  v34[4] = v45;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1D8EB467C;
  *(v37 + 24) = v34;
  v38 = v36;
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB58F0, &unk_1D9190BD0);
  sub_1D8CF48EC(&qword_1ECAB0958, &qword_1ECAB5898, &qword_1D9190BC0, MEMORY[0x1E695BCC0]);
  sub_1D8CF48EC(&qword_1ECAB03A0, &unk_1ECAB58F0, &unk_1D9190BD0, v32);
  v39 = v46;
  sub_1D9177DCC();

  return (*(v47 + 8))(v33, v39);
}

double sub_1D8EB2A7C(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *a1;
  type metadata accessor for AssetBackgroundSession(0, a5, a6, a7);
  v10 = [a4 configuration];
  v11 = [v10 identifier];

  if (v11)
  {
    v12 = sub_1D917820C();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedConformanceWitness();
  DownloadTaskIdentifier.init(session:identifier:)(v12, v14, v9, &v23);
  v20 = v23;
  v21 = v24;
  v22 = v25;
  type metadata accessor for DownloadTaskIdentifier(255, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
  WitnessTable = swift_getWitnessTable();
  DiskAssetCache<>.store(asset:at:)(a3, &v20, WitnessTable);

  return result;
}

void sub_1D8EB2C4C()
{
  if (qword_1ECAB0FE0 != -1)
  {
    swift_once();
  }

  v0 = sub_1D917739C();
  __swift_project_value_buffer(v0, qword_1ECAB0FE8);
  log = sub_1D917737C();
  v1 = sub_1D9178F6C();
  if (sub_1D917918C())
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    v3 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, log, v1, v3, "Loaded asset from URL", "", v2, 2u);
    MEMORY[0x1DA72CB90](v2, -1, -1);
  }
}

uint64_t sub_1D8EB2D50(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v55 = a5;
  v65 = a4;
  v56 = a3;
  v63 = sub_1D9176C2C();
  v11 = *(v63 - 8);
  v61 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v59 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1D917734C();
  v13 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v54 = v14;
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5868, &qword_1D9190B80);
  v64 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v57 = &v51 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5870, &qword_1D9190B88);
  v18 = *(v17 - 8);
  v68 = v17;
  v69 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v58 = &v51 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5878, &qword_1D9190B90);
  v21 = *(v20 - 8);
  v70 = v20;
  v71 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v60 = &v51 - v22;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5880, &qword_1D9190B98);
  v75 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v66 = &v51 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5888, &unk_1D9190BA0);
  v25 = *(v24 - 8);
  v73 = v24;
  v74 = v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v67 = &v51 - v27;
  v77 = (*(a7 + 64))(a1, v56, a6, a7, v26);
  v56 = *(v13 + 16);
  v52 = v15;
  v28 = v76;
  v56(v15, a5, v76);
  v29 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v30 = swift_allocObject();
  v53 = *(v13 + 32);
  v53(v30 + v29, v15, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5048, &unk_1D918E1E0);
  sub_1D8CF48EC(&qword_1EDCD0B60, &qword_1ECAB5048, &unk_1D918E1E0, MEMORY[0x1E695BED8]);
  v31 = v57;
  sub_1D9177B3C();

  v32 = v59;
  v33 = v63;
  (*(v11 + 16))(v59, v65, v63);
  v34 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v35 = swift_allocObject();
  (*(v11 + 32))(v35 + v34, v32, v33);
  v36 = MEMORY[0x1E695BCC0];
  sub_1D8CF48EC(&qword_1ECAB0948, &qword_1ECAB5868, &qword_1D9190B80, MEMORY[0x1E695BCC0]);
  v37 = v58;
  v38 = v62;
  sub_1D9177C6C();

  (*(v64 + 8))(v31, v38);
  v39 = v52;
  v40 = v76;
  v56(v52, v55, v76);
  v41 = swift_allocObject();
  v53(v41 + v29, v39, v40);
  sub_1D8CF48EC(&qword_1ECAB0670, &qword_1ECAB5870, &qword_1D9190B88, MEMORY[0x1E695BE28]);
  v42 = v68;
  v43 = v60;
  sub_1D9177B3C();

  (*(v69 + 8))(v37, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5890, &unk_1D9190BB0);
  sub_1D8CF48EC(&qword_1ECAB0930, &qword_1ECAB5878, &qword_1D9190B90, v36);
  sub_1D8CF48EC(&unk_1ECAB02A8, &qword_1ECAB5890, &unk_1D9190BB0, MEMORY[0x1E695C008]);
  v44 = v66;
  v45 = v70;
  sub_1D9177BDC();
  (*(v71 + 8))(v43, v45);
  sub_1D8CF48EC(&qword_1ECAB06F0, &qword_1ECAB5880, &qword_1D9190B98, MEMORY[0x1E695BDA0]);
  v46 = v67;
  v47 = v72;
  sub_1D9177D8C();
  (*(v75 + 8))(v44, v47);
  sub_1D8CF48EC(&qword_1ECAB0910, &qword_1ECAB5888, &unk_1D9190BA0, MEMORY[0x1E695BCF8]);
  v48 = v73;
  v49 = sub_1D9177B1C();
  (*(v74 + 8))(v46, v48);
  return v49;
}

uint64_t sub_1D8EB3660()
{
  v0 = sub_1D91773AC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D917734C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB0FE0 != -1)
  {
    swift_once();
  }

  v8 = sub_1D917739C();
  __swift_project_value_buffer(v8, qword_1ECAB0FE8);
  v9 = sub_1D917737C();
  sub_1D91773DC();
  v10 = sub_1D9178F4C();
  if (sub_1D917918C())
  {

    sub_1D917740C();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "COMPLETE";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v9, v10, v13, "backgroundStash", v11, v12, 2u);
    MEMORY[0x1DA72CB90](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

id sub_1D8EB38F8()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1D9176B1C();
  v5[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v5];

  if (v2)
  {
    return v5[0];
  }

  v4 = v5[0];
  sub_1D9176A6C();

  return swift_willThrow();
}

void sub_1D8EB39EC(uint64_t a1, uint64_t a2, const char *a3)
{
  if (qword_1ECAB0FE0 != -1)
  {
    swift_once();
  }

  v4 = sub_1D917739C();
  __swift_project_value_buffer(v4, qword_1ECAB0FE8);
  log = sub_1D917737C();
  v5 = sub_1D9178F6C();
  if (sub_1D917918C())
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, log, v5, v7, a3, "", v6, 2u);
    MEMORY[0x1DA72CB90](v6, -1, -1);
  }
}

uint64_t sub_1D8EB3AF8(void **a1)
{
  v1 = *a1;
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1EDCD0F20);
  v3 = v1;
  v4 = sub_1D917741C();
  v5 = sub_1D9178CFC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    v9 = sub_1D917826C();
    v11 = sub_1D8CFA924(v9, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1D8CEC000, v4, v5, "Encountered error while stashing background download: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1DA72CB90](v7, -1, -1);
    MEMORY[0x1DA72CB90](v6, -1, -1);
  }

  return sub_1D9177A0C();
}

uint64_t sub_1D8EB3C90@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(type metadata accessor for AssetBackgroundSession(0, v5, v6, v7) - 8);
  v9 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1D917653C() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(swift_getAssociatedTypeWitness() - 8);
  v15 = v2 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80));

  return sub_1D8EB25B4(a1, v2 + v9, v2 + v12, v15, v5, v6, v7, a2);
}

uint64_t sub_1D8EB3E18(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1D8EB3F64(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_1D8EB4134()
{
  sub_1D917734C();

  sub_1D8EB2C4C();
}

uint64_t sub_1D8EB41C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = (*(*(v5 - 8) + 80) + 40) & ~*(*(v5 - 8) + 80);
  v8 = v7 + *(*(v5 - 8) + 64);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = (v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_1D9176C2C() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v12 + 64);
  v15 = *(sub_1D917734C() - 8);
  result = sub_1D8EB2D50(a1, v2 + v7, (v2 + v10), v2 + v13, v2 + ((v13 + v14 + *(v15 + 80)) & ~*(v15 + 80)), v5, v6);
  *a2 = result;
  return result;
}

uint64_t objectdestroy_14Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

double sub_1D8EB452C(uint64_t *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(type metadata accessor for AssetBackgroundSession(0, v3, v4, v5) - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D8EB2A7C(a1, v1 + v7, v1 + v10, v11, v3, v4, v5);
}

uint64_t sub_1D8EB4784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D8EB47D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1D8D490F4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8F82724();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = sub_1D917653C();
    v18 = *(v11 - 8);
    (*(v18 + 32))(a2, v10 + *(v18 + 72) * v7, v11);
    sub_1D8F7F618(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = sub_1D917653C();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_1D8EB4944(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D8F069D8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D8F8298C();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_1D917653C();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_1D8F7F630(v5, v7);
  *v2 = v7;
  return v10;
}

id AssetBackgroundDelegate.__allocating_init(recordCache:resume:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D8D0406C(a1, a2, a3);

  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v5;
}

uint64_t AssetBackgroundDelegate.start(request:using:)(uint64_t a1, void *a2)
{
  v39 = a2;
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB58A8, &unk_1D9190D20);
  v37 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_1D917653C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58B8, &qword_1D9190D30);
  v32 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58C0, &qword_1D9190D38);
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v16 = &v31 - v15;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58C8, &qword_1D9190D40);
  v33 = *(v35 - 8);
  v17 = MEMORY[0x1EEE9AC00](v35);
  v19 = &v31 - v18;
  (*(v9 + 16))(v11, v31, v8, v17);
  sub_1D9177A0C();
  if (qword_1ECAB10C0 != -1)
  {
    swift_once();
  }

  v20 = qword_1ECAB10D0;
  v21 = sub_1D9178DBC();
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  v40 = v20;
  sub_1D8CFD888();
  sub_1D8CF48EC(&qword_1ECAB02D8, &qword_1ECAB58B8, &qword_1D9190D30, MEMORY[0x1E695C008]);
  sub_1D8D64524(&qword_1EDCD0980, sub_1D8CFD888, MEMORY[0x1E69E8028]);
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A58, &unk_1ECAB58A8, &unk_1D9190D20, MEMORY[0x1E695BCB8]);
  sub_1D9177CEC();
  (*(v37 + 8))(v4, v2);
  sub_1D8D08A50(v7, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v32 + 8))(v14, v12);
  v22 = swift_allocObject();
  v24 = v38;
  v23 = v39;
  *(v22 + 16) = v38;
  *(v22 + 24) = v23;
  sub_1D8CF48EC(&qword_1ECAB0480, &qword_1ECAB58C0, &qword_1D9190D38, MEMORY[0x1E695BE98]);
  v25 = v24;
  v26 = v23;
  v27 = v36;
  sub_1D9177B9C();

  (*(v34 + 8))(v16, v27);
  sub_1D8CF48EC(&qword_1ECAB0758, &qword_1ECAB58C8, &qword_1D9190D40, MEMORY[0x1E695BD60]);
  v28 = v35;
  v29 = sub_1D9177B1C();
  (*(v33 + 8))(v19, v28);
  return v29;
}

uint64_t AssetBackgroundDelegate.activeNotifier(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58D0, &qword_1D9190D48);
  v7 = *(v6 - 8);
  v75 = v6;
  v76 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v52 - v10;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58D8, &qword_1D9190D50);
  v67 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB58E0, &qword_1D9190D58);
  v73 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  v17 = *((v5 & v4) + 0x50);
  v18 = *((v5 & v4) + 0x60);
  v19 = *((v5 & v4) + 0x68);
  v20 = *((v5 & v4) + 0x70);
  v21 = *((v5 & v4) + 0x78);
  v71 = *((v5 & v4) + 0x58);
  v72 = v17;
  v77 = v17;
  v78 = v71;
  v69 = v19;
  v70 = v18;
  v79 = v18;
  v80 = v19;
  v68 = v20;
  v81 = v20;
  v82 = v21;
  v65 = v21;
  v22 = type metadata accessor for AssetBackgroundDelegate.DownloadNotificationRecord(255, &v77);
  v23 = sub_1D8CF48EC(&qword_1ECAB0468, &unk_1ECAB58E0, &qword_1D9190D58, MEMORY[0x1E695BE98]);
  v74 = v14;
  v59 = v22;
  v58 = v23;
  v24 = sub_1D91775AC();
  v63 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v61 = &v52 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECAB58F0, &unk_1D9190BD0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  WitnessTable = swift_getWitnessTable();
  v64 = v24;
  v77 = v24;
  v78 = v27;
  v57 = WitnessTable;
  v79 = WitnessTable;
  v80 = MEMORY[0x1E69E7288];
  v29 = sub_1D917761C();
  v30 = sub_1D8CF48EC(&qword_1ECAB03A0, &unk_1ECAB58F0, &unk_1D9190BD0, MEMORY[0x1E695BED8]);
  v31 = swift_getWitnessTable();
  v60 = v26;
  v77 = v26;
  v78 = v29;
  v32 = v13;
  v54 = v30;
  v79 = v30;
  v80 = v31;
  v56 = sub_1D917771C();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v52 - v33;
  v77 = a1;
  sub_1D9177A0C();
  if (qword_1ECAB10C0 != -1)
  {
    swift_once();
  }

  v34 = qword_1ECAB10D0;
  v35 = sub_1D9178DBC();
  (*(*(v35 - 8) + 56))(v11, 1, 1, v35);
  v77 = v34;
  sub_1D8CFD888();
  sub_1D8CF48EC(&qword_1ECAB02B8, &qword_1ECAB58D8, &qword_1D9190D50, MEMORY[0x1E695C008]);
  sub_1D8D64524(&qword_1EDCD0980, sub_1D8CFD888, MEMORY[0x1E69E8028]);
  v36 = v66;
  v37 = v62;
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A40, &qword_1ECAB58D0, &qword_1D9190D48, MEMORY[0x1E695BCB8]);
  v38 = v16;
  v39 = v75;
  sub_1D9177CEC();
  (*(v76 + 8))(v36, v39);
  sub_1D8D08A50(v11, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v67 + 8))(v32, v37);
  *(swift_allocObject() + 16) = v2;
  v40 = v2;
  v41 = v61;
  v42 = v74;
  sub_1D9177B2C();

  v43 = (*(v73 + 8))(v38, v42);
  MEMORY[0x1EEE9AC00](v43);
  v44 = v71;
  *(&v52 - 6) = v72;
  *(&v52 - 5) = v44;
  v45 = v69;
  *(&v52 - 4) = v70;
  *(&v52 - 3) = v45;
  v46 = v65;
  *(&v52 - 2) = v68;
  *(&v52 - 1) = v46;
  swift_getKeyPath();
  sub_1D91777FC();
  v47 = v53;
  v48 = v64;
  sub_1D9177DCC();

  (*(v63 + 8))(v41, v48);
  v49 = v56;
  swift_getWitnessTable();
  v50 = sub_1D9177B1C();
  (*(v55 + 8))(v47, v49);
  return v50;
}

id sub_1D8EB5944()
{
  if (qword_1EDCD5B50 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDCD5B58;
  qword_1ECAB10D0 = qword_1EDCD5B58;

  return v1;
}

uint64_t AssetBackgroundDelegate.resume.getter()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x80));

  return v1;
}

uint64_t sub_1D8EB5A00@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + *((*MEMORY[0x1E69E7D40] & **a1) + 0x88));
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D8D24508;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D8D1F93C(v4, v5);
}

uint64_t sub_1D8EB5ABC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D8EBC4A4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + *((*MEMORY[0x1E69E7D40] & **a2) + 0x88));
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1D8D1F93C(v3, v4);
  return sub_1D8D15664(v8, v9);
}

uint64_t AssetBackgroundDelegate.backgroundCompletion.getter()
{
  v1 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x88));
  swift_beginAccess();
  v2 = *v1;
  sub_1D8D1F93C(*v1, v1[1]);
  return v2;
}

id AssetBackgroundDelegate.init(recordCache:resume:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = sub_1D8D040B8(a1, a2, a3);

  (*(*(*((v6 & v5) + 0x50) - 8) + 8))(a1);
  return v7;
}

uint64_t sub_1D8EB5CB0(uint64_t *a1, void *a2)
{
  v2 = (*MEMORY[0x1E69E7D40] & *a2);
  v3 = *a1;
  swift_beginAccess();
  v7 = v3;
  v4 = v2[6];
  v6[0] = v2[5];
  v6[1] = v4;
  v6[2] = v2[7];
  type metadata accessor for AssetBackgroundDelegate.DownloadNotificationRecord(0, v6);
  sub_1D91780FC();
  return swift_endAccess();
}

uint64_t sub_1D8EB5DA0()
{

  swift_getAtKeyPath();
}

void sub_1D8EB5E0C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v53 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5908, &unk_1D9190D80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v50 = &v43[-v8];
  v9 = sub_1D917734C();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1D917653C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *((*MEMORY[0x1E69E7D40] & *a2) + 0xA0);
  swift_beginAccess();
  v17 = *(a2 + v16);
  if (*(v17 + 16) && (v18 = sub_1D8F069D8(a1), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);
    swift_endAccess();
  }

  else
  {
    v49 = a3;
    swift_endAccess();
    if (qword_1ECAB0FE0 != -1)
    {
      swift_once();
    }

    v21 = sub_1D917739C();
    __swift_project_value_buffer(v21, qword_1ECAB0FE8);
    v47 = *(v13 + 16);
    v48 = v13 + 16;
    v47(v15, a1, v12);
    sub_1D917733C();
    v22 = sub_1D917737C();
    v23 = sub_1D9178F6C();
    if (sub_1D917918C())
    {
      v24 = swift_slowAlloc();
      v44 = v23;
      v25 = v24;
      v45 = swift_slowAlloc();
      v55[0] = v45;
      *v25 = 136315138;
      v26 = sub_1D91764AC();
      v46 = a1;
      v28 = v27;
      v29 = v15;
      v30 = v12;
      (*(v13 + 8))(v29, v12);
      v31 = sub_1D8CFA924(v26, v28, v55);
      a1 = v46;

      *(v25 + 4) = v31;
      v32 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v22, v44, v32, "Start Asset Download", "%s", v25, 0xCu);
      v33 = v45;
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x1DA72CB90](v33, -1, -1);
      MEMORY[0x1DA72CB90](v25, -1, -1);

      v34 = v11;
      v35 = v13;
      (*(v51 + 8))(v34, v52);
    }

    else
    {

      (*(v51 + 8))(v11, v52);
      (*(v13 + 8))(v15, v12);
      v30 = v12;
      v35 = v13;
    }

    v36 = sub_1D91764BC();
    v37 = [v49 downloadTaskWithRequest_];

    v38 = v37;
    v39 = [v38 taskIdentifier];
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = *(a2 + v16);
    *(a2 + v16) = 0x8000000000000000;
    sub_1D8F4F79C(v39, a1, isUniquelyReferenced_nonNull_native);
    *(a2 + v16) = v54;
    swift_endAccess();
    v41 = [v38 taskIdentifier];
    v42 = v50;
    v47(v50, a1, v30);
    (*(v35 + 56))(v42, 0, 1, v30);
    swift_beginAccess();
    sub_1D8F7CC9C(v42, v41);
    swift_endAccess();
    [v38 resume];
    v20 = [v38 taskIdentifier];
  }

  *v53 = v20;
}

uint64_t AssetBackgroundDelegate.set(backgroundCompletion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D9177E0C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D9177E9C();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB10C0 != -1)
  {
    swift_once();
  }

  v16[1] = qword_1ECAB10D0;
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_1D8EBB658;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_26;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  sub_1D9177E4C();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1D8D64524(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_1D8EB6670(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x88));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a2;
  v5[1] = a3;
  sub_1D8D15664(v6, v7);
}

uint64_t sub_1D8EB66FC(uint64_t *a1, id a2)
{
  v2 = *a1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = [a2 taskIdentifier];
  swift_beginAccess();
  v24 = v4;
  v5 = *((v3 & v2) + 0x50);
  v6 = *((v3 & v2) + 0x58);
  v7 = *((v3 & v2) + 0x60);
  v8 = *((v3 & v2) + 0x68);
  v9 = *((v3 & v2) + 0x70);
  v10 = *((v3 & v2) + 0x78);
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  type metadata accessor for AssetBackgroundDelegate.DownloadNotificationRecord(0, &v18);
  sub_1D91780FC();
  v11 = v25;
  if (v25)
  {

    swift_endAccess();
    sub_1D8EBC53C(v11);
    v18 = v5;
    v19 = v6;
    v20 = v7;
    v21 = v8;
    v22 = v9;
    v23 = v10;
    type metadata accessor for AssetBackgroundDelegate.BackgroundDownloadError(0, &v18);
    swift_getWitnessTable();
    v12 = swift_allocError();
    v18 = v12;
    sub_1D91778AC();
  }

  else
  {
    swift_endAccess();
  }

  sub_1D8EB69AC([a2 taskIdentifier]);
  v13 = [a2 taskIdentifier];
  v14 = [a2 taskIdentifier];
  sub_1D8EB6C84(&v18);
  v26 = sub_1D8EB6E20(v14, &v18);
  v27 = v15;
  v25 = v13;
  swift_beginAccess();
  sub_1D91780DC();
  sub_1D917810C();
  return swift_endAccess();
}

uint64_t sub_1D8EB69AC(uint64_t a1)
{
  v3 = (*MEMORY[0x1E69E7D40] & *v1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5908, &unk_1D9190D80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1D917653C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  swift_beginAccess();
  v11 = v3[6];
  v13[0] = v3[5];
  v13[1] = v11;
  v13[2] = v3[7];
  type metadata accessor for AssetBackgroundDelegate.DownloadNotificationRecord(255, v13);
  sub_1D91780DC();
  sub_1D917807C();
  swift_endAccess();
  sub_1D8EBC53C(*&v13[0]);
  swift_beginAccess();
  sub_1D8EB47D8(a1, v6);
  swift_endAccess();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1D8D08A50(v6, &qword_1ECAB5908, &unk_1D9190D80);
  }

  (*(v8 + 32))(v10, v6, v7);
  swift_beginAccess();
  sub_1D8EB4944(v10);
  swift_endAccess();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D8EB6C84@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D9176EAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCD5E68 != -1)
  {
    swift_once();
  }

  v6 = sub_1D917744C();
  v7 = __swift_project_value_buffer(v6, qword_1EDCD5E70);
  v8 = type metadata accessor for LoggerTrace(0);
  a1[3] = v8;
  a1[4] = &protocol witness table for LoggerTrace;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0 + *(v8 + 20), v7, v6);
  LOBYTE(v6) = sub_1D9178CDC();
  sub_1D9176E9C();
  v10 = sub_1D9176E5C();
  v12 = v11;
  result = (*(v3 + 8))(v5, v2);
  *boxed_opaque_existential_0 = v10;
  boxed_opaque_existential_0[1] = v12;
  *(boxed_opaque_existential_0 + *(v8 + 24)) = v6;
  return result;
}

uint64_t sub_1D8EB6E20(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5A30, &unk_1D9190F50);
  swift_allocObject();
  v4 = sub_1D91778DC();
  sub_1D8CFD9D8(a2, v10);
  v11 = 0x203A4B534154;
  v12[0] = 0xE600000000000000;
  v9[0] = a1;
  v5 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v5);

  v6 = v11;
  v7 = v12[0];
  sub_1D8D728EC(v10, v9);
  v11 = v4;
  sub_1D8D728EC(v9, v12);
  v12[5] = "NETWORK: Download";
  v12[6] = 17;
  v13 = 2;
  v16 = 1;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  sub_1D8D08A50(v9, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D08A50(v10, &qword_1ECAB4928, &qword_1D918B380);
  v14 = v6;
  v15 = v7;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5A40, &unk_1D9190F60);
  sub_1D8CF48EC(&qword_1ECAB2788, &unk_1ECAB5A40, &unk_1D9190F60, &protocol conformance descriptor for EmitLifecycle<A>);
  sub_1D9177B1C();
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  sub_1D8D08A50(&v11, &unk_1ECAB5A40, &unk_1D9190F60);
  return v4;
}

void sub_1D8EB7008(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1D8EBB664(v7);
}

void sub_1D8EB7088(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1D8EBBA58(v7);
}

void sub_1D8EB7108(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  sub_1D8EBBB84(v11, a5, a6);
}

uint64_t sub_1D8EB71A8(void *a1, void *a2, double a3)
{
  v5 = (*MEMORY[0x1E69E7D40] & *a1);
  v6 = type metadata accessor for DownloadPhase(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = [a2 taskIdentifier];
  swift_beginAccess();
  v15 = v10;
  v11 = v5[6];
  v14[0] = v5[5];
  v14[1] = v11;
  v14[2] = v5[7];
  type metadata accessor for AssetBackgroundDelegate.DownloadNotificationRecord(0, v14);
  sub_1D91780FC();
  if (!v16)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  *v9 = a3;
  swift_storeEnumTagMultiPayload();
  sub_1D91778BC();

  return sub_1D8EBC4E0(v9, v12);
}

void sub_1D8EB7358(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_1D8EBBFB4(v12, a6, a7);
}

Swift::Void __swiftcall AssetBackgroundDelegate.urlSessionDidFinishEvents(forBackgroundURLSession:)(NSURLSession forBackgroundURLSession)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40] & *v2;
  v6 = sub_1D9177E0C();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1D9177E9C();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v10 = sub_1D917744C();
  __swift_project_value_buffer(v10, qword_1EDCD0F20);
  v11 = forBackgroundURLSession.super.isa;
  v12 = sub_1D917741C();
  v13 = sub_1D9178CDC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v36 = v15;
    *v14 = 136315138;
    v16 = [(objc_class *)v11 configuration];
    v17 = [v16 identifier];

    if (v17)
    {
      v18 = sub_1D917820C();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    aBlock = v18;
    v38 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
    v21 = sub_1D917826C();
    v23 = sub_1D8CFA924(v21, v22, &v36);

    *(v14 + 4) = v23;
    _os_log_impl(&dword_1D8CEC000, v12, v13, "Did finish events for background session: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1DA72CB90](v15, -1, -1);
    MEMORY[0x1DA72CB90](v14, -1, -1);

    v4 = MEMORY[0x1E69E7D40];
  }

  else
  {
  }

  v24 = qword_1ECAB10C0;
  v25 = *(v2 + *((*v4 & *v2) + 0xB8));
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = *(v5 + 80);
  *(v27 + 32) = *(v5 + 96);
  *(v27 + 40) = *(v5 + 104);
  *(v27 + 56) = *(v5 + 120);
  *(v27 + 64) = v26;
  v41 = sub_1D8EBC2EC;
  v42 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_1D8CF5F60;
  v40 = &block_descriptor_15_0;
  v28 = _Block_copy(&aBlock);

  sub_1D9177E4C();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1D8D64524(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  v29 = v32;
  v30 = v35;
  sub_1D91792CC();
  sub_1D9178D7C();
  _Block_release(v28);

  (*(v34 + 8))(v29, v30);
  (*(v31 + 8))(v9, v33);
}

void sub_1D8EB7950(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0x88);
    swift_beginAccess();
    v4 = *v3;
    if (*v3)
    {
      v5 = *(v3 + 1);
      sub_1D8D1F93C(v4, v5);

      v4();
      sub_1D8D15664(v4, v5);
    }

    else
    {
    }
  }
}

void sub_1D8EB7A18(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  AssetBackgroundDelegate.urlSessionDidFinishEvents(forBackgroundURLSession:)(v4);
}

void AssetBackgroundDelegate.urlSession(_:task:didCompleteWithError:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = *MEMORY[0x1E69E7D40] & *v4;
  v9 = sub_1D9177E0C();
  isa = v9[-1].isa;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v62 = v17;
    v63 = v15;
    v65 = v14;
    v67 = v9;
    v18 = a3;
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v19 = sub_1D917744C();
    __swift_project_value_buffer(v19, qword_1EDCD0F20);
    v20 = a3;
    v21 = a2;
    v22 = sub_1D917741C();
    v23 = sub_1D9178CDC();

    v24 = os_log_type_enabled(v22, v23);
    v25 = &off_1E856D000;
    v66 = isa;
    v64 = v12;
    if (v24)
    {
      v26 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      aBlock[0] = v61;
      *v26 = 134218242;
      *(v26 + 4) = [v21 taskIdentifier];

      *(v26 + 12) = 2080;
      *&v70[0] = a3;
      v27 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
      v28 = sub_1D917826C();
      v30 = a3;
      v31 = v8;
      v32 = v21;
      v33 = v4;
      v34 = a1;
      v35 = sub_1D8CFA924(v28, v29, aBlock);

      *(v26 + 14) = v35;
      a1 = v34;
      v4 = v33;
      v21 = v32;
      v8 = v31;
      a3 = v30;
      v25 = &off_1E856D000;
      _os_log_impl(&dword_1D8CEC000, v22, v23, "[%ld] Completed with error: %s", v26, 0x16u);
      v36 = v61;
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x1DA72CB90](v36, -1, -1);
      MEMORY[0x1DA72CB90](v26, -1, -1);
    }

    else
    {
    }

    v41 = [a1 configuration];
    v42 = [v41 identifier];

    if (v42)
    {
      v43 = sub_1D917820C();
      v45 = v44;
    }

    else
    {
      v43 = 0;
      v45 = 0;
    }

    v46 = [v21 v25[349]];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v49 = *(v8 + 112);
    v48 = *(v8 + 120);
    DownloadTaskIdentifier.init(session:identifier:)(v43, v45, v46, v70);
    if (qword_1ECAB10C0 != -1)
    {
      swift_once();
    }

    v61 = qword_1ECAB10D0;
    v50 = swift_allocObject();
    v51 = v70[1];
    *(v50 + 40) = v70[0];
    *(v50 + 16) = v4;
    *(v50 + 24) = v21;
    *(v50 + 32) = a3;
    *(v50 + 56) = v51;
    *(v50 + 72) = v71;
    aBlock[4] = sub_1D8EBC300;
    aBlock[5] = v50;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_21;
    v52 = _Block_copy(aBlock);
    v53 = a3;
    v54 = v21;
    v55 = v4;
    v56 = type metadata accessor for DownloadTaskIdentifier(0, AssociatedTypeWitness, v49, v48);
    v57 = *(v56 - 8);
    (*(v57 + 16))(v68, v70, v56);
    v58 = v62;
    sub_1D9177E4C();
    v68[0] = MEMORY[0x1E69E7CC0];
    sub_1D8D64524(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
    v59 = v64;
    v60 = v67;
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v58, v59, v52);
    _Block_release(v52);
    (*(v57 + 8))(v70, v56);

    (v66[1].isa)(v59, v60);
    (*(v63 + 8))(v58, v65);
  }

  else
  {
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v37 = sub_1D917744C();
    __swift_project_value_buffer(v37, qword_1EDCD0F20);
    v66 = a2;
    v67 = sub_1D917741C();
    v38 = sub_1D9178CDC();
    if (os_log_type_enabled(v67, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      *(v39 + 4) = [v66 taskIdentifier];

      _os_log_impl(&dword_1D8CEC000, v67, v38, "[%ld] Completed without error", v39, 0xCu);
      MEMORY[0x1DA72CB90](v39, -1, -1);
      v40 = v67;
    }

    else
    {

      v40 = v66;
    }
  }
}

uint64_t sub_1D8EB8230(uint64_t *a1, void *a2, void *a3, __int128 *a4)
{
  v71 = a3;
  v72 = a4;
  v5 = *a1;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40] & *a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5908, &unk_1D9190D80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v69 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v66 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v67);
  v13 = &v66 - v12;
  v14 = *((v6 & v5) + 0x58);
  v15 = *((v6 & v5) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_1D91791BC();
  v70 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v66 - v19;
  v74 = a2;
  v21 = [a2 taskIdentifier];
  swift_beginAccess();
  v78 = v21;
  *&v75 = v15;
  *(&v75 + 1) = v14;
  v22 = *(v7 + 112);
  v76 = *(v7 + 96);
  v77 = v22;
  type metadata accessor for AssetBackgroundDelegate.DownloadNotificationRecord(0, &v75);
  sub_1D91780FC();
  v73 = v15;
  if (v79)
  {
    v23 = v14;
    v24 = v72;
    swift_endAccess();
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v25 = sub_1D917744C();
    __swift_project_value_buffer(v25, qword_1EDCD0F20);
    v26 = v74;
    v27 = v74;
    v28 = sub_1D917741C();
    v29 = sub_1D9178CDC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = [v27 taskIdentifier];

      _os_log_impl(&dword_1D8CEC000, v28, v29, "[%ld] Download completed while still foregrounded, notifying subject", v30, 0xCu);
      v31 = v30;
      v26 = v74;
      MEMORY[0x1DA72CB90](v31, -1, -1);
    }

    else
    {

      v28 = v27;
    }

    v46 = v71;
    *&v75 = v71;
    v47 = v71;
    sub_1D91778AC();

    v32 = v24;
    v48 = v23;
  }

  else
  {
    v66 = v13;
    swift_endAccess();
    v32 = v72;
    v33 = v72[1];
    v75 = *v72;
    v76 = v33;
    *&v77 = *(v72 + 4);
    v34 = v14[3];
    v71 = v14;
    v34(&v75, v15, v14);
    v35 = (*(*(AssociatedTypeWitness - 8) + 48))(v20, 1, AssociatedTypeWitness);
    (v70[1])(v20, v17);
    if (v35 == 1)
    {
      v26 = v74;
      if (qword_1EDCD0F18 != -1)
      {
        swift_once();
      }

      v36 = sub_1D917744C();
      __swift_project_value_buffer(v36, qword_1EDCD0F20);
      v37 = v26;
      v38 = sub_1D917741C();
      v39 = sub_1D9178CFC();
      v40 = os_log_type_enabled(v38, v39);
      v41 = v69;
      if (v40)
      {
        v42 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *&v75 = v70;
        *v42 = 134218242;
        *(v42 + 4) = [v37 taskIdentifier];

        *(v42 + 12) = 2080;
        v43 = [v37 originalRequest];
        if (v43)
        {
          v44 = v43;
          sub_1D91764DC();

          v45 = 0;
        }

        else
        {
          v45 = 1;
        }

        v56 = sub_1D917653C();
        v57 = *(v56 - 8);
        (*(v57 + 56))(v41, v45, 1, v56);
        v58 = v68;
        sub_1D8EBC3A4(v41, v68);
        if ((*(v57 + 48))(v58, 1, v56) == 1)
        {
          sub_1D8D08A50(v58, &qword_1ECAB5908, &unk_1D9190D80);
          v59 = sub_1D9176C2C();
          (*(*(v59 - 8) + 56))(v66, 1, 1, v59);
        }

        else
        {
          v69 = v42;
          sub_1D91764FC();
          v42 = v69;
          (*(v57 + 8))(v58, v56);
        }

        v60 = sub_1D917826C();
        v62 = sub_1D8CFA924(v60, v61, &v75);

        *(v42 + 14) = v62;
        _os_log_impl(&dword_1D8CEC000, v38, v39, "[%ld] Failed download task with no notification endpoint: %s)", v42, 0x16u);
        v63 = v70;
        __swift_destroy_boxed_opaque_existential_1Tm(v70);
        MEMORY[0x1DA72CB90](v63, -1, -1);
        MEMORY[0x1DA72CB90](v42, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v26 = v74;
      if (qword_1EDCD0F18 != -1)
      {
        swift_once();
      }

      v49 = sub_1D917744C();
      __swift_project_value_buffer(v49, qword_1EDCD0F20);
      v50 = v26;
      v51 = sub_1D917741C();
      v52 = sub_1D9178CDC();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = v32;
        v54 = swift_slowAlloc();
        *v54 = 134217984;
        *(v54 + 4) = [v50 taskIdentifier];

        _os_log_impl(&dword_1D8CEC000, v51, v52, "[%ld] Download completed with a background record, skipping due to error", v54, 0xCu);
        v55 = v54;
        v32 = v53;
        MEMORY[0x1DA72CB90](v55, -1, -1);
      }

      else
      {
      }
    }

    v48 = v71;
  }

  v64 = v32[1];
  v75 = *v32;
  v76 = v64;
  *&v77 = *(v32 + 4);
  v48[6](&v75, v73);
  return sub_1D8EB69AC([v26 taskIdentifier]);
}

void sub_1D8EB8B38(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = a5;
  AssetBackgroundDelegate.urlSession(_:task:didCompleteWithError:)(v8, v9, a5);
}

uint64_t AssetBackgroundDelegate.urlSession(_:downloadTask:didFinishDownloadingTo:)(void *a1, void *a2, void *a3)
{
  v139 = a1;
  v166 = *MEMORY[0x1E69E9840];
  v153 = (*MEMORY[0x1E69E7D40] & *v3);
  v147 = sub_1D9177E0C();
  v146 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v144 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_1D9177E9C();
  v143 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v142 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_1D9176EAC();
  v133 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v132 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5908, &unk_1D9190D80);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v130 - v13;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v151);
  v16 = &v130 - v15;
  v17 = sub_1D9176C2C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v152 = &v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v156 = &v130 - v21;
  v140 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v130 - v24;
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v131 = sub_1D917744C();
  v26 = __swift_project_value_buffer(v131, qword_1EDCD0F20);
  v27 = *(v18 + 16);
  v150 = a3;
  v149 = v18 + 16;
  v148 = v27;
  v27(v25, a3, v17);
  v28 = a2;
  v130 = v26;
  v29 = sub_1D917741C();
  v30 = sub_1D9178CDC();
  v31 = os_log_type_enabled(v29, v30);
  v154 = v17;
  v155 = v28;
  if (v31)
  {
    LODWORD(v137) = v30;
    v138 = v18;
    v32 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    aBlock = v135;
    *v32 = 134218498;
    *(v32 + 4) = [v28 taskIdentifier];

    *(v32 + 12) = 2080;
    v33 = [v28 originalRequest];
    if (v33)
    {
      v34 = v33;
      sub_1D91764DC();

      v35 = 0;
    }

    else
    {
      v35 = 1;
    }

    v37 = sub_1D917653C();
    v38 = *(v37 - 8);
    (*(v38 + 56))(v11, v35, 1, v37);
    sub_1D8EBC3A4(v11, v14);
    if ((*(v38 + 48))(v14, 1, v37) == 1)
    {
      sub_1D8D08A50(v14, &qword_1ECAB5908, &unk_1D9190D80);
      v36 = v138;
      v17 = v154;
      (*(v138 + 56))(v16, 1, 1, v154);
    }

    else
    {
      sub_1D91764FC();
      (*(v38 + 8))(v14, v37);
      v17 = v154;
      v36 = v138;
    }

    v39 = sub_1D917826C();
    v41 = sub_1D8CFA924(v39, v40, &aBlock);

    *(v32 + 14) = v41;
    *(v32 + 22) = 2080;
    sub_1D8D64524(&qword_1ECAB2C88, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v42 = sub_1D9179A4C();
    v44 = v43;
    v151 = *(v36 + 8);
    v151(v25, v17);
    v45 = sub_1D8CFA924(v42, v44, &aBlock);

    *(v32 + 24) = v45;
    _os_log_impl(&dword_1D8CEC000, v29, v137, "[%ld] Finished downloading %s: %s", v32, 0x20u);
    v46 = v135;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v46, -1, -1);
    MEMORY[0x1DA72CB90](v32, -1, -1);

    v28 = v155;
  }

  else
  {

    v151 = *(v18 + 8);
    v151(v25, v17);
    v36 = v18;
  }

  v47 = [v139 configuration];
  v48 = [v47 identifier];

  v49 = v153;
  if (v48)
  {
    v50 = sub_1D917820C();
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0;
  }

  v53 = [v28 taskIdentifier];
  v54 = v49[10];
  v134 = v49[11];
  v135 = v54;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = v49[14];
  v57 = v49[15];
  v139 = AssociatedTypeWitness;
  v138 = v56;
  v137 = v57;
  DownloadTaskIdentifier.init(session:identifier:)(v50, v52, v53, v164);
  v58 = v132;
  sub_1D9176E9C();
  v59 = sub_1D9176E5C();
  v61 = v60;
  (*(v133 + 8))(v58, v136);
  aBlock = v59;
  v159 = v61;
  MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  v62 = sub_1D9176B0C();
  MEMORY[0x1DA7298F0](v62);

  v63 = objc_opt_self();
  v64 = [v63 defaultManager];
  v65 = [v64 temporaryDirectory];

  v66 = v152;
  sub_1D9176B9C();

  v67 = v156;
  sub_1D9176B3C();

  v136 = v36 + 8;
  v151(v66, v17);
  sub_1D8D64524(&qword_1ECAB2CA0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  if ((sub_1D91781BC() & 1) == 0)
  {
    v68 = [v63 defaultManager];
    v69 = sub_1D9176B1C();
    v70 = sub_1D9176B1C();
    aBlock = 0;
    v71 = [v68 copyItemAtURL:v69 toURL:v70 error:&aBlock];

    if (!v71)
    {
      v83 = aBlock;
      v76 = sub_1D9176A6C();

      v77 = v155;
      goto LABEL_25;
    }

    v72 = aBlock;
  }

  v73 = [v63 defaultManager];
  sub_1D9176BCC();
  v74 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v75 = [v73 fileExistsAtPath_];

  if (v75)
  {
    v76 = 0;
    goto LABEL_33;
  }

  v77 = v155;
  v78 = v155;
  v79 = sub_1D917741C();
  v80 = sub_1D9178D0C();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 134217984;
    *(v81 + 4) = [v78 taskIdentifier];

    _os_log_impl(&dword_1D8CEC000, v79, v80, "[%ld] SOMETHING IS CRITICALLY WRONG, Moved file is missing", v81, 0xCu);
    v82 = v81;
    v77 = v155;
    MEMORY[0x1DA72CB90](v82, -1, -1);
  }

  else
  {

    v79 = v78;
  }

  type metadata accessor for FileError(0);
  sub_1D8D64524(&qword_1ECAB5920, type metadata accessor for FileError, &protocol conformance descriptor for FileError);
  v76 = swift_allocError();
  v85 = v84;
  v148(v84, v67, v17);
  (*(v36 + 56))(v85, 0, 2, v17);
LABEL_25:
  swift_willThrow();
  if (qword_1EDCD5E68 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v131, qword_1EDCD5E70);
  v86 = v77;
  v87 = v76;
  v88 = sub_1D917741C();
  v89 = sub_1D9178CFC();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    aBlock = v91;
    *v90 = 134218242;
    *(v90 + 4) = [v86 taskIdentifier];

    *(v90 + 12) = 2080;
    v157 = v76;
    v92 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    v93 = sub_1D917826C();
    v95 = sub_1D8CFA924(v93, v94, &aBlock);

    *(v90 + 14) = v95;
    v67 = v156;
    _os_log_impl(&dword_1D8CEC000, v88, v89, "[%ld] Failed to copy asset from URLSession directory to tmp directory: %s", v90, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v91);
    MEMORY[0x1DA72CB90](v91, -1, -1);
    MEMORY[0x1DA72CB90](v90, -1, -1);
  }

  else
  {
  }

  v96 = v76;
  v97 = sub_1D917741C();
  v98 = sub_1D9178CFC();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    aBlock = v100;
    *v99 = 136315138;
    v157 = v76;
    v101 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    v102 = sub_1D917826C();
    v104 = sub_1D8CFA924(v102, v103, &aBlock);

    *(v99 + 4) = v104;
    _os_log_impl(&dword_1D8CEC000, v97, v98, "%s", v99, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v100);
    MEMORY[0x1DA72CB90](v100, -1, -1);
    MEMORY[0x1DA72CB90](v99, -1, -1);
  }

  v17 = v154;
LABEL_33:
  v150 = v76;
  if (qword_1ECAB10C0 != -1)
  {
    swift_once();
  }

  v133 = qword_1ECAB10D0;
  v105 = v152;
  v148(v152, v67, v17);
  v106 = (*(v36 + 80) + 88) & ~*(v36 + 80);
  v107 = (v140 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
  v108 = swift_allocObject();
  v109 = v134;
  *(v108 + 2) = v135;
  *(v108 + 3) = v109;
  v110 = v153;
  *(v108 + 4) = v153[12];
  v111 = v138;
  *(v108 + 5) = v110[13];
  *(v108 + 6) = v111;
  v112 = v137;
  v113 = v141;
  *(v108 + 7) = v137;
  *(v108 + 8) = v113;
  v114 = v155;
  v115 = v150;
  *(v108 + 9) = v155;
  *(v108 + 10) = v115;
  (*(v36 + 32))(&v108[v106], v105, v17);
  v116 = &v108[v107];
  v117 = v164[1];
  *v116 = v164[0];
  *(v116 + 1) = v117;
  *(v116 + 4) = v165;
  v162 = sub_1D8EBC310;
  v163 = v108;
  aBlock = MEMORY[0x1E69E9820];
  v159 = 1107296256;
  v160 = sub_1D8CF5F60;
  v161 = &block_descriptor_27_0;
  v153 = _Block_copy(&aBlock);
  v118 = v114;
  v119 = v113;
  v120 = type metadata accessor for DownloadTaskIdentifier(0, v139, v111, v112);
  v121 = *(v120 - 8);
  (*(v121 + 16))(&v157, v164, v120);
  v122 = v150;
  v123 = v150;
  v124 = v142;
  sub_1D9177E4C();
  v157 = MEMORY[0x1E69E7CC0];
  sub_1D8D64524(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  v125 = v156;
  v126 = v144;
  v127 = v147;
  sub_1D91792CC();
  v128 = v153;
  MEMORY[0x1DA72A400](0, v124, v126, v153);
  _Block_release(v128);

  (*(v121 + 8))(v164, v120);
  (*(v146 + 8))(v126, v127);
  (*(v143 + 8))(v124, v145);
  v151(v125, v154);
}

void sub_1D8EB9E58(void *a1, void *a2, void *a3, uint64_t a4, __int128 *a5)
{
  v127 = a5;
  v123 = a4;
  v122 = a3;
  *&v124 = *a1;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = *MEMORY[0x1E69E7D40] & v124;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5908, &unk_1D9190D80);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v106 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v107 = &v104 - v12;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v104 - v13;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5A10, &qword_1D9190F38);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v104 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v119 = &v104 - v16;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5A18, &unk_1D9190F40);
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v104 - v17;
  v117 = type metadata accessor for DownloadPhase(0);
  MEMORY[0x1EEE9AC00](v117);
  v116 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = *(v8 + 80);
  v19 = *(&v126 + 1);
  v128 = v126;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = sub_1D91791BC();
  v118 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v104 - v22;
  v121 = *(AssociatedTypeWitness - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v104 - v26;
  v125 = a2;
  v28 = [a2 taskIdentifier];
  swift_beginAccess();
  v133 = v28;
  v29 = *(v8 + 96);
  v30 = *((v7 & v124) + 0x70);
  v31 = *((v7 & v124) + 0x78);
  v129 = v126;
  v130 = v29;
  v124 = v29;
  v131 = v30;
  v132 = v31;
  type metadata accessor for AssetBackgroundDelegate.DownloadNotificationRecord(0, &v129);
  sub_1D91780FC();
  v120 = v19;
  if (v134)
  {
    v33 = v127;
    v32 = v128;
    swift_endAccess();
    v34 = v122;
    if (v122)
    {
      *&v129 = v122;
      v35 = v122;
      v36 = v34;
      sub_1D91778AC();

      return;
    }

    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v54 = sub_1D917744C();
    __swift_project_value_buffer(v54, qword_1EDCD0F20);
    v55 = v125;
    v56 = sub_1D917741C();
    v57 = sub_1D9178CDC();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 134217984;
      *(v58 + 4) = [v55 taskIdentifier];

      _os_log_impl(&dword_1D8CEC000, v56, v57, "[%ld] Download completed while still foregrounded, notifying subject", v58, 0xCu);
      MEMORY[0x1DA72CB90](v58, -1, -1);
    }

    else
    {

      v56 = v55;
    }

    v67 = [objc_opt_self() defaultManager];
    sub_1D9176BCC();
    v68 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v69 = [v67 fileExistsAtPath_];

    if ((v69 & 1) == 0)
    {
      v70 = v55;
      v71 = sub_1D917741C();
      v72 = sub_1D9178D0C();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 134217984;
        *(v73 + 4) = [v70 taskIdentifier];

        _os_log_impl(&dword_1D8CEC000, v71, v72, "[%ld] SOMETHING IS CRITICALLY WRONG, Moved file is missing in worker block", v73, 0xCu);
        MEMORY[0x1DA72CB90](v73, -1, -1);
      }

      else
      {

        v71 = v70;
      }
    }

    v93 = sub_1D9176C2C();
    v94 = v116;
    (*(*(v93 - 8) + 16))(v116, v123, v93);
    swift_storeEnumTagMultiPayload();
    sub_1D91778BC();
    sub_1D8EBC4E0(v94, v95);
    *&v129 = 0;
    sub_1D91778AC();

    v39 = v33;
    goto LABEL_30;
  }

  v37 = v118;
  v122 = v31;
  v38 = v119;
  v105 = v27;
  swift_endAccess();
  v39 = v127;
  v40 = v127[1];
  v129 = *v127;
  v130 = v40;
  v131 = *(v127 + 4);
  (*(v19 + 24))(&v129, v128, v19);
  v41 = v121;
  if ((*(v121 + 48))(v23, 1, AssociatedTypeWitness) != 1)
  {
    v117 = v30;
    v59 = *(v41 + 32);
    v118 = AssociatedTypeWitness;
    v59(v105, v23, AssociatedTypeWitness);
    v60 = v125;
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v61 = sub_1D917744C();
    __swift_project_value_buffer(v61, qword_1EDCD0F20);
    v62 = v60;
    v63 = sub_1D917741C();
    v64 = sub_1D9178CDC();
    v65 = v38;
    if (os_log_type_enabled(v63, v64))
    {
      v66 = swift_slowAlloc();
      *v66 = 134217984;
      *(v66 + 4) = [v62 taskIdentifier];

      _os_log_impl(&dword_1D8CEC000, v63, v64, "[%ld] Download completed with a background record", v66, 0xCu);
      MEMORY[0x1DA72CB90](v66, -1, -1);
    }

    else
    {

      v63 = v62;
    }

    v74 = v105;
    v75 = v62;
    v76 = MEMORY[0x1E69E7D40];
    v109 = v75;

    dispatch_group_enter(*(a1 + *((*v76 & *a1) + 0xB8)));
    v116 = [v75 taskIdentifier];
    v77 = (*(a1 + *((*v76 & *a1) + 0x80)))(v74, v123);
    if (qword_1ECAB10C0 != -1)
    {
      swift_once();
    }

    v78 = qword_1ECAB10D0;
    v79 = sub_1D9178DBC();
    (*(*(v79 - 8) + 56))(v38, 1, 1, v79);
    *&v129 = v78;
    v135 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5A20, &qword_1D9190B78);
    sub_1D8CFD888();
    sub_1D8CF48EC(&qword_1ECAB0330, &unk_1ECAB5A20, &qword_1D9190B78, MEMORY[0x1E695BED8]);
    sub_1D8D64524(&qword_1EDCD0980, sub_1D8CFD888, MEMORY[0x1E69E8028]);
    v80 = v110;
    sub_1D9177D3C();
    sub_1D8CF48EC(&qword_1ECAB0A60, &qword_1ECAB5A10, &qword_1D9190F38, MEMORY[0x1E695BCB8]);
    v81 = v113;
    v82 = v112;
    sub_1D9177CEC();

    (*(v111 + 8))(v80, v82);
    sub_1D8D08A50(v65, &qword_1ECAB4D70, &unk_1D918BCE0);
    v83 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v84 = swift_allocObject();
    v85 = v124;
    *(v84 + 16) = v126;
    *(v84 + 32) = v85;
    v86 = v122;
    *(v84 + 48) = v117;
    *(v84 + 56) = v86;
    v87 = v109;
    *(v84 + 64) = v83;
    *(v84 + 72) = v87;
    sub_1D8CF48EC(&qword_1ECAB0488, &qword_1ECAB5A18, &unk_1D9190F40, MEMORY[0x1E695BE98]);
    v88 = v87;
    v89 = v115;
    v90 = sub_1D9177BCC();

    (*(v114 + 8))(v81, v89);
    v91 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xB0);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v135 = *(a1 + v91);
    *(a1 + v91) = 0x8000000000000000;
    sub_1D8F4F938(v90, v116, isUniquelyReferenced_nonNull_native);
    *(a1 + v91) = v135;
    swift_endAccess();
    (*(v121 + 8))(v105, v118);
    v39 = v127;
    v32 = v128;
LABEL_30:
    v19 = v120;
LABEL_31:
    v42 = v125;
    goto LABEL_32;
  }

  (*(v37 + 8))(v23, v21);
  v42 = v125;
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v43 = sub_1D917744C();
  __swift_project_value_buffer(v43, qword_1EDCD0F20);
  v44 = v42;
  v45 = sub_1D917741C();
  v46 = sub_1D9178CFC();
  v47 = os_log_type_enabled(v45, v46);
  v32 = v128;
  if (v47)
  {
    LODWORD(v124) = v46;
    *&v126 = a1;
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v129 = v49;
    *v48 = 134218242;
    *(v48 + 4) = [v44 taskIdentifier];

    *(v48 + 12) = 2080;
    v50 = [v44 originalRequest];
    if (v50)
    {
      v51 = v106;
      v52 = v50;
      sub_1D91764DC();

      v53 = 0;
    }

    else
    {
      v53 = 1;
      v51 = v106;
    }

    v97 = sub_1D917653C();
    v98 = *(v97 - 8);
    (*(v98 + 56))(v51, v53, 1, v97);
    v99 = v107;
    sub_1D8EBC3A4(v51, v107);
    if ((*(v98 + 48))(v99, 1, v97) == 1)
    {
      sub_1D8D08A50(v99, &qword_1ECAB5908, &unk_1D9190D80);
      v100 = sub_1D9176C2C();
      (*(*(v100 - 8) + 56))(v108, 1, 1, v100);
    }

    else
    {
      sub_1D91764FC();
      (*(v98 + 8))(v99, v97);
    }

    v101 = sub_1D917826C();
    v103 = sub_1D8CFA924(v101, v102, &v129);

    *(v48 + 14) = v103;
    _os_log_impl(&dword_1D8CEC000, v45, v124, "[%ld] Completed download task with no notification endpoint: %s", v48, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x1DA72CB90](v49, -1, -1);
    MEMORY[0x1DA72CB90](v48, -1, -1);

    v39 = v127;
    v32 = v128;
    v19 = v120;
    goto LABEL_31;
  }

LABEL_32:
  v96 = v39[1];
  v129 = *v39;
  v130 = v96;
  v131 = *(v39 + 4);
  (*(v19 + 48))(&v129, v32, v19);
  sub_1D8EB69AC([v42 taskIdentifier]);
}

void *sub_1D8EBB034(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0xB8));

    dispatch_group_leave(v6);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = [a3 taskIdentifier];
    swift_beginAccess();
    sub_1D8F7EC14(v9);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1D8EBB160(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = sub_1D9176C2C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176B9C();
  v12 = a3;
  v13 = a4;
  v14 = a1;
  AssetBackgroundDelegate.urlSession(_:downloadTask:didFinishDownloadingTo:)(v12, v13, v11);

  return (*(v9 + 8))(v11, v8);
}

uint64_t AssetBackgroundDelegate.BackgroundDownloadError.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

id AssetBackgroundDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AssetBackgroundDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D8EBB474(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];

  v5 = &a1[*((*v2 & *a1) + 0x88)];
  sub_1D8D15664(*v5, v5[1]);
  (*(*(*((v4 & v3) + 0x50) - 8) + 8))(&a1[*((*v2 & *a1) + 0x90)]);

  v6 = *&a1[*((*v2 & *a1) + 0xB8)];
}

uint64_t sub_1D8EBB610@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1D8EBB664(void *a1)
{
  v2 = v1;
  v4 = sub_1D9177E0C();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D9177E9C();
  v7 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v10 = sub_1D917744C();
  __swift_project_value_buffer(v10, qword_1EDCD0F20);
  v11 = a1;
  v12 = sub_1D917741C();
  v13 = sub_1D9178CDC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = [v11 taskIdentifier];

    _os_log_impl(&dword_1D8CEC000, v12, v13, "Download task created with identifier: %ld", v14, 0xCu);
    MEMORY[0x1DA72CB90](v14, -1, -1);
  }

  else
  {

    v12 = v11;
  }

  if (qword_1ECAB10C0 != -1)
  {
    swift_once();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = v11;
  aBlock[4] = sub_1D8EBC59C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_60_0;
  v16 = _Block_copy(aBlock);
  v17 = v11;
  v18 = v2;
  sub_1D9177E4C();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D8D64524(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v9, v6, v16);
  _Block_release(v16);
  (*(v22 + 8))(v6, v4);
  (*(v7 + 8))(v9, v21);
}

void sub_1D8EBBA58(void *a1)
{
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1EDCD0F20);
  v3 = a1;
  oslog = sub_1D917741C();
  v4 = sub_1D9178CDC();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = [v3 taskIdentifier];

    _os_log_impl(&dword_1D8CEC000, oslog, v4, "[%ld] Task is waiting for connectivity", v5, 0xCu);
    MEMORY[0x1DA72CB90](v5, -1, -1);
    v6 = oslog;
  }

  else
  {

    v6 = v3;
  }
}

uint64_t sub_1D8EBBB84(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D9177E0C();
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9177E9C();
  v25 = *(v11 - 8);
  v26 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v14 = a2 / a3;
  v15 = sub_1D917744C();
  __swift_project_value_buffer(v15, qword_1EDCD0F20);
  v16 = a1;
  v17 = sub_1D917741C();
  v18 = sub_1D9178CDC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134218752;
    *(v19 + 4) = [v16 taskIdentifier];

    *(v19 + 12) = 2050;
    *(v19 + 14) = a2;
    *(v19 + 22) = 2050;
    *(v19 + 24) = a3;
    *(v19 + 32) = 2048;
    *(v19 + 34) = v14;
    _os_log_impl(&dword_1D8CEC000, v17, v18, "[%ld] Did resume downloading at offset %{public}lld, expected total bytes: %{public}lld: %f%%", v19, 0x2Au);
    MEMORY[0x1DA72CB90](v19, -1, -1);
  }

  else
  {

    v17 = v16;
  }

  if (qword_1ECAB10C0 != -1)
  {
    swift_once();
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v20 + 24) = v16;
  *(v20 + 32) = v14;
  aBlock[4] = sub_1D8EBC5BC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_54_0;
  v21 = _Block_copy(aBlock);
  v22 = v16;
  v23 = v4;
  sub_1D9177E4C();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1D8D64524(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v10, v21);
  _Block_release(v21);
  (*(v27 + 8))(v10, v8);
  (*(v25 + 8))(v13, v26);
}

void sub_1D8EBBFB4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D9177E0C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9177E9C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >= 1)
  {
    v21 = v13;
    v22 = v8;
    if (qword_1ECAB10C0 != -1)
    {
      swift_once();
    }

    v16 = swift_allocObject();
    *(v16 + 16) = v3;
    *(v16 + 24) = a1;
    *(v16 + 32) = a2 / a3 * 100.0;
    aBlock[4] = sub_1D8EBC57C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_48_0;
    v17 = _Block_copy(aBlock);
    v18 = v3;
    v19 = a1;
    sub_1D9177E4C();
    v23 = MEMORY[0x1E69E7CC0];
    sub_1D8D64524(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v15, v10, v17);
    _Block_release(v17);
    (*(v22 + 8))(v10, v7);
    (*(v12 + 8))(v15, v21);
  }
}

void sub_1D8EBC310()
{
  v1 = *(sub_1D9176C2C() - 8);
  v2 = (*(v1 + 80) + 88) & ~*(v1 + 80);
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[10];
  v6 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1D8EB9E58(v3, v4, v5, v0 + v2, v6);
}

uint64_t sub_1D8EBC3A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5908, &unk_1D9190D80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8EBC4E0(uint64_t a1, double a2)
{
  v3 = type metadata accessor for DownloadPhase(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8EBC53C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t DownloadPhase.hash(into:)(uint64_t a1)
{
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DownloadPhase(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D8E6C974(v1, v9, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v3 + 32))(v5, v9, v2);
      MEMORY[0x1DA72B390](2);
      sub_1D8D68B80(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1D917814C();
      return (*(v3 + 8))(v5, v2);
    }

    else
    {
      return MEMORY[0x1DA72B390](0);
    }
  }

  else
  {
    v12 = *v9;
    MEMORY[0x1DA72B390](1);
    v13 = 0.0;
    if (v12 != 0.0)
    {
      v13 = v12;
    }

    return MEMORY[0x1DA72B3C0](*&v13);
  }
}

uint64_t DownloadPhase.hashValue.getter()
{
  sub_1D9179DBC();
  DownloadPhase.hash(into:)(v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8EBC7EC()
{
  sub_1D9179DBC();
  DownloadPhase.hash(into:)(v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8EBC830(uint64_t a1)
{
  sub_1D9179DBC();
  DownloadPhase.hash(into:)(v2);
  return sub_1D9179E1C();
}

uint64_t _s18PodcastsFoundation13DownloadPhaseO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DownloadPhase(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v28 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B18, &qword_1D9191008);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v28 - v16;
  v19 = *(v18 + 56);
  sub_1D8E6C974(a1, &v28 - v16, v15);
  sub_1D8E6C974(a2, &v17[v19], v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D8E6C974(v17, v13, v22);
    if (!swift_getEnumCaseMultiPayload())
    {
      v25 = *v13;
      v23 = *v13 == *&v17[v19];
      goto LABEL_7;
    }

LABEL_11:
    sub_1D8EBCC20(v17);
    v23 = 0;
    return v23 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1D8EBC4E0(v17, v26);
      v23 = 1;
      return v23 & 1;
    }

    goto LABEL_11;
  }

  sub_1D8E6C974(v17, v10, v22);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_11;
  }

  (*(v5 + 32))(v7, &v17[v19], v4);
  v23 = sub_1D9176B8C();
  v24 = *(v5 + 8);
  v24(v7, v4);
  v24(v10, v4);
LABEL_7:
  sub_1D8EBC4E0(v17, v25);
  return v23 & 1;
}

uint64_t type metadata accessor for DownloadPhase(uint64_t a1)
{
  result = qword_1ECAB2898;
  if (!qword_1ECAB2898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8EBCBB4(uint64_t a1)
{
  result = sub_1D9176C2C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8EBCC20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B18, &qword_1D9191008);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DownloadTaskIdentifier.init(session:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1D91769EC();
  swift_allocObject();
  a4[3] = sub_1D91769DC();
  sub_1D91769AC();
  swift_allocObject();

  a4[4] = sub_1D917699C();
  *a4 = a3;
  a4[1] = a1;
  a4[2] = a2;
  sub_1D91769BC();
}

uint64_t DownloadTaskIdentifier.session.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

unint64_t DownloadTaskIdentifier.key.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  sub_1D917946C();

  if (v2)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xD000000000000014;
  }

  if (!v2)
  {
    v2 = 0x80000001D91CA220;
  }

  MEMORY[0x1DA7298F0](v3, v2);

  MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  v4 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v4);

  return 0xD000000000000014;
}

unint64_t sub_1D8EBCE58@<X0>(unint64_t *a1@<X8>)
{
  result = DownloadTaskIdentifier.key.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static DownloadTaskIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (a1[1] == a2[1] && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_1D9179ACC();
    }
  }

  return result;
}

uint64_t DownloadTaskIdentifier.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  MEMORY[0x1DA72B390](*v1);
  if (!v2)
  {
    return sub_1D9179DDC();
  }

  sub_1D9179DDC();

  return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t DownloadTaskIdentifier.hashValue.getter()
{
  v1 = *(v0 + 2);
  v4 = *v0;
  v5 = v1;
  v6 = *(v0 + 24);
  sub_1D9179DBC();
  DownloadTaskIdentifier.hash(into:)(v3);
  return sub_1D9179E1C();
}

uint64_t sub_1D8EBD0C4(uint64_t a1)
{
  sub_1D9179DBC();
  DownloadTaskIdentifier.hash(into:)(v2);
  return sub_1D9179E1C();
}

uint64_t sub_1D8EBD120(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8EBD168(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ForegroundSessionSource.init(sourceType:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49B8, &unk_1D9191140);
  swift_allocObject();
  result = sub_1D9177A5C();
  *a4 = result;
  return result;
}

void sub_1D8EBD29C(uint64_t a1, SEL *a2, void *a3)
{
  v4 = [objc_opt_self() *a2];
  v5 = [objc_opt_self() sessionWithConfiguration_];

  *a3 = v5;
}

id sub_1D8EBD33C()
{
  result = sub_1D8EBD35C();
  qword_1ECAB1380 = result;
  return result;
}

id sub_1D8EBD35C()
{
  v0 = [objc_opt_self() defaultSessionConfiguration];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB5C00, &qword_1D91913F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  v2 = MEMORY[0x1E69E6158];
  sub_1D91793EC();
  v3 = objc_opt_self();
  v4 = [objc_opt_self() currentProcess];
  v5 = [v3 userAgentForProcessInfo_];

  v6 = sub_1D917820C();
  v8 = v7;

  *(inited + 96) = v2;
  *(inited + 72) = v6;
  *(inited + 80) = v8;
  sub_1D8D653BC(inited);
  swift_setDeallocating();
  sub_1D8D08A50(inited + 32, &unk_1ECAB6C80, &unk_1D91949C0);
  v9 = sub_1D917802C();

  [v0 setHTTPAdditionalHeaders_];

  [v0 setHTTPMaximumConnectionsPerHost_];
  v10 = [objc_opt_self() sessionWithConfiguration_];

  return v10;
}

uint64_t ForegroundSessionSource.ForegroundSessionSourceType.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t ForegroundSessionSource.init(session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49B8, &unk_1D9191140);
  swift_allocObject();
  result = sub_1D9177A5C();
  *a3 = result;
  return result;
}

uint64_t sub_1D8EBD6B8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1D9177E0C();
  v23 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D9177E9C();
  v13 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = qword_1EDCD5B38;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  *(v18 + 32) = a3;
  *(v18 + 40) = sub_1D8EC1784;
  *(v18 + 48) = v16;
  aBlock[4] = sub_1D8EC169C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_78;
  v19 = _Block_copy(aBlock);
  sub_1D9177E4C();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v15, v12, v19);
  _Block_release(v19);
  (*(v23 + 8))(v12, v10);
  (*(v13 + 8))(v15, v22);
}

void sub_1D8EBD9DC(void (*a1)(id *))
{
  v3 = (*(v1 + 16))();
  v4 = v3;
  v5 = 0;
  a1(&v4);
}

void sub_1D8EBDA48(char a1, void (*a2)(void *, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  v6 = sub_1D8EC16AC(&v8);
  v7 = v6;
  a2(v6, 0);
}

uint64_t ForegroundSessionSource.fetch(asset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v105 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v104 = &v81 - v7;
  v8 = *(a2 + 16);
  v87 = sub_1D91779FC();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v81 - v9;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B28, &qword_1D9191150);
  v90 = *(v92 - 1);
  MEMORY[0x1EEE9AC00](v92);
  v88 = &v81 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B30, &qword_1D9191158);
  v91 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v89 = &v81 - v12;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B38, &qword_1D9191160);
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v109 = &v81 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B40, &unk_1D9191168);
  v99 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v98 = &v81 - v15;
  v112 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_1D8CF48EC(&qword_1ECAB0628, &qword_1ECAB5B40, &unk_1D9191168, MEMORY[0x1E695BE40]);
  v100 = v14;
  v95 = AssociatedTypeWitness;
  v94 = v17;
  v103 = sub_1D917770C();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v81 - v18;
  v19 = sub_1D9176EAC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v110 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v24;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v84 = *v3;
  v93 = v27;
  v28 = *(v27 + 16);
  v111 = a1;
  v106 = v28;
  v107 = v27 + 16;
  (v28)(&v81 - v29, a1, v8, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B28, &unk_1D918BE10);
  v30 = v8;
  v31 = swift_dynamicCast();
  v82 = v11;
  if (v31)
  {
    v32 = *(&v117 + 1);
    v33 = v118;
    __swift_project_boxed_opaque_existential_1(&v116, *(&v117 + 1));
    (v33[1])(&v113, v32, v33);
    __swift_destroy_boxed_opaque_existential_1Tm(&v116);
    if (*(&v114 + 1))
    {
      sub_1D8D6BCE0(&v113, &v116);
      goto LABEL_9;
    }
  }

  else
  {
    v118 = 0;
    v116 = 0u;
    v117 = 0u;
    sub_1D8D08A50(&v116, &qword_1ECAB4B20, &unk_1D918BE00);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  if (qword_1EDCD5E68 != -1)
  {
    swift_once();
  }

  v34 = sub_1D917744C();
  v35 = __swift_project_value_buffer(v34, qword_1EDCD5E70);
  v36 = type metadata accessor for LoggerTrace(0);
  *(&v117 + 1) = v36;
  v118 = &protocol witness table for LoggerTrace;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v116);
  (*(*(v34 - 8) + 16))(boxed_opaque_existential_0 + *(v36 + 20), v35, v34);
  LOBYTE(v35) = sub_1D9178CDC();
  sub_1D9176E9C();
  v38 = sub_1D9176E5C();
  v40 = v39;
  (*(v20 + 8))(v22, v19);
  *boxed_opaque_existential_0 = v38;
  boxed_opaque_existential_0[1] = v40;
  *(boxed_opaque_existential_0 + *(v36 + 24)) = v35;
  if (*(&v114 + 1))
  {
    sub_1D8D08A50(&v113, &qword_1ECAB4928, &qword_1D918B380);
  }

LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B48, &qword_1D9191178);
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 16) = 0;
  *(v41 + 40) = 0;
  v42 = v106;
  v106(v110, v111, v30);
  v43 = v42;
  v44 = v85;
  v45 = sub_1D9177A0C();
  MEMORY[0x1EEE9AC00](v45);
  v83 = sub_1D9176C2C();
  v46 = v88;
  v47 = v87;
  sub_1D91779EC();
  (*(v86 + 8))(v44, v47);
  *&v113 = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49B8, &unk_1D9191140);
  sub_1D8CF48EC(&qword_1EDCD0688, &qword_1ECAB5B28, &qword_1D9191150, MEMORY[0x1E695C0C8]);
  sub_1D8CF48EC(&unk_1EDCD0AA0, &qword_1ECAB49B8, &unk_1D9191140, MEMORY[0x1E695C038]);
  v48 = v89;
  v49 = v92;
  sub_1D9177B5C();
  (*(v90 + 8))(v46, v49);
  sub_1D8CF48EC(&unk_1EDCD0EC8, &qword_1ECAB5B30, &qword_1D9191158, MEMORY[0x1E695BC68]);
  v50 = v82;
  sub_1D9177C5C();
  (*(v91 + 8))(v48, v50);
  v51 = v110;
  v43(v110, v111, v30);
  sub_1D8CFD9D8(&v116, &v113);
  v52 = v93;
  v53 = *(v93 + 80);
  v54 = (v53 + 32) & ~v53;
  v55 = (v108 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  v57 = v112;
  *(v56 + 16) = v30;
  *(v56 + 24) = v57;
  v92 = *(v52 + 32);
  (v92)(v56 + v54, v51, v30);
  *(v56 + v55) = v41;
  v58 = v56 + ((v55 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v58 = "ForegroundNetworkFetch";
  *(v58 + 8) = 22;
  *(v58 + 16) = 2;
  sub_1D8D6BCE0(&v113, v56 + ((v55 + 39) & 0xFFFFFFFFFFFFFFF8));
  v59 = swift_allocObject();
  *(v59 + 16) = sub_1D8EC10D4;
  *(v59 + 24) = v56;
  v93 = v41;

  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB5B50, &qword_1D9191180);
  sub_1D8CF48EC(&qword_1EDCD0C50, &qword_1ECAB5B38, &qword_1D9191160, MEMORY[0x1E695BE10]);
  sub_1D8CF48EC(&qword_1ECAB27F8, qword_1ECAB5B50, &qword_1D9191180, &protocol conformance descriptor for EmitLifecycle<A>);
  v60 = v98;
  v61 = v97;
  v62 = v109;
  sub_1D9177CBC();

  v63 = v83;
  (*(v96 + 8))(v62, v61);
  sub_1D8CFD9D8(&v116, &v113);
  v64 = v110;
  v106(v110, v111, v30);
  v65 = (v53 + 72) & ~v53;
  v66 = swift_allocObject();
  v67 = v112;
  *(v66 + 16) = v30;
  *(v66 + 24) = v67;
  sub_1D8D6BCE0(&v113, v66 + 32);
  (v92)(v66 + v65, v64, v30);
  v68 = v101;
  v69 = v100;
  sub_1D9177C6C();

  (*(v99 + 8))(v60, v69);
  sub_1D8CFD9D8(&v116, &v113);
  v70 = v67;
  v71 = *(v67 + 16);
  v72 = v104;
  v71(v30, v70);
  v73 = *(v63 - 8);
  if ((*(v73 + 48))(v72, 1, v63) == 1)
  {
    sub_1D8D08A50(v72, &unk_1ECAB5910, &qword_1D9188C90);
    v74 = 0;
    v75 = 0;
  }

  else
  {
    v74 = sub_1D9176BCC();
    v75 = v76;
    (*(v73 + 8))(v72, v63);
  }

  v77 = v103;
  WitnessTable = swift_getWitnessTable();
  v79 = j___s18PodcastsFoundation13EmitLifecycleV16defaultVerbositySbvgZ(v77, WitnessTable);
  Publisher.emitLifecycle(for:name:definesInterval:context:verbose:)(&v113, "ForegroundDownload", 18, 2, 1, v74, v75, v79 & 1, v105, v77, WitnessTable);

  sub_1D8D08A50(&v113, &qword_1ECAB4928, &qword_1D918B380);
  (*(v102 + 8))(v68, v77);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v116);
}

uint64_t sub_1D8EBE908@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  (*(a2 + 16))(a1, a2, v7);
  v10 = sub_1D9176C2C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    return (*(v11 + 32))(a3, v9, v10);
  }

  sub_1D8D08A50(v9, &unk_1ECAB5910, &qword_1D9188C90);
  type metadata accessor for ForegroundSessionSource.SourceError(0, a1, a2, v12);
  swift_getWitnessTable();
  swift_allocError();
  *v13 = 0;
  return swift_willThrow();
}

uint64_t sub_1D8EBEAAC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v70 = a8;
  v74 = a7;
  v73 = a6;
  v72 = a5;
  v71 = a4;
  v76 = a3;
  v68 = a2;
  v82 = a9;
  v13 = *(a10 - 8);
  v14 = *(v13 + 64);
  v84 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9176C2C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BE0, &qword_1D91913C8);
  v77 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v67 = &v66 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BE8, &qword_1D91913D0);
  v80 = *(v21 - 8);
  v81 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v79 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v83 = &v66 - v25;
  v26 = *(v17 + 16);
  v78 = a1;
  v26(v19, a1, v16, v24);
  (*(v13 + 16))(v15, a3, a10);
  v27 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v28 = (v18 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (*(v13 + 80) + v28 + 8) & ~*(v13 + 80);
  v30 = swift_allocObject();
  v69 = a10;
  v31 = v84;
  *(v30 + 16) = a10;
  *(v30 + 24) = v31;
  (*(v17 + 32))(v30 + v27, v19, v16);
  v32 = v68;
  *(v30 + v28) = v68;
  (*(v13 + 32))(v30 + v29, v15, a10);
  v33 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BF0, &qword_1D91913D8);
  sub_1D8CF48EC(&qword_1ECAB0940, &qword_1ECAB5BF0, &qword_1D91913D8, MEMORY[0x1E695BCC0]);
  v34 = v67;
  sub_1D9177A7C();
  v35 = v70;
  sub_1D8CFD9D8(v70, v89);
  v36 = swift_allocObject();
  v37 = v71;
  v38 = v72;
  *(v36 + 16) = v71;
  *(v36 + 24) = v38;
  v39 = v73;
  *(v36 + 32) = v73;
  LOBYTE(v15) = v74;
  *(v36 + 40) = v74;
  sub_1D8D6BCE0(v89, v36 + 48);
  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  *(v40 + 24) = v38;
  *(v40 + 32) = v39;
  *(v40 + 40) = v15;
  v41 = swift_allocObject();
  *(v41 + 16) = v37;
  *(v41 + 24) = v38;
  *(v41 + 32) = v39;
  *(v41 + 40) = v15;
  v42 = swift_allocObject();
  *(v42 + 16) = v37;
  *(v42 + 24) = v38;
  *(v42 + 32) = v39;
  *(v42 + 40) = v15;
  sub_1D8CF48EC(&qword_1ECAB0208, &qword_1ECAB5BE0, &qword_1D91913C8, MEMORY[0x1E695C058]);
  swift_retain_n();
  v43 = v75;
  v44 = v83;
  sub_1D9177B3C();

  (*(v77 + 8))(v34, v43);
  sub_1D8CFD9D8(v35, v89);
  v87 = 0;
  v88 = 0xE000000000000000;
  sub_1D917946C();

  v87 = 60;
  v88 = 0xE100000000000000;
  (*(v84 + 24))(&v85, v69);
  v45 = 0xEA0000000000646ELL;
  v46 = 0x756F72676B636142;
  v47 = 0xED00006465746169;
  v48 = 0x74696E4972657355;
  if (v85 != 2)
  {
    v48 = 0x65746E4972657355;
    v47 = 0xEF65766974636172;
  }

  if (v85)
  {
    v46 = 0x7974696C697455;
    v45 = 0xE700000000000000;
  }

  if (v85 <= 1u)
  {
    v49 = v46;
  }

  else
  {
    v49 = v48;
  }

  if (v85 <= 1u)
  {
    v50 = v45;
  }

  else
  {
    v50 = v47;
  }

  MEMORY[0x1DA7298F0](v49, v50);

  MEMORY[0x1DA7298F0](0x616F6C6E776F4420, 0xEB00000000203E64);
  v51 = sub_1D9176AFC();
  MEMORY[0x1DA7298F0](v51);

  v52 = v87;
  v53 = v88;
  v55 = v79;
  v54 = v80;
  v56 = *(v80 + 16);
  v57 = v81;
  v56(v79, v44, v81);
  sub_1D8D728EC(v89, &v87);
  v58 = v82;
  v56(v82, v55, v57);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB5B50, &qword_1D9191180);
  sub_1D8D728EC(&v87, v58 + v59[9]);
  v60 = v58 + v59[10];
  *v60 = "DOWNLOAD";
  *(v60 + 8) = 8;
  *(v60 + 16) = 2;
  *(v58 + v59[12]) = 0;
  v85 = v52;
  v86 = v53;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  v61 = v85;
  v62 = v86;
  sub_1D8D08A50(&v87, &qword_1ECAB4928, &qword_1D918B380);
  v63 = *(v54 + 8);
  v63(v55, v57);
  sub_1D8D08A50(v89, &qword_1ECAB4928, &qword_1D918B380);
  result = (v63)(v83, v57);
  v65 = (v58 + v59[11]);
  *v65 = v61;
  v65[1] = v62;
  *(v58 + v59[13]) = 0;
  return result;
}

uint64_t sub_1D8EBF30C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a3;
  v27 = a5;
  v28 = a2;
  v29 = a6;
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v25 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9176C2C();
  v24 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  (*(v11 + 16))(v13, a1, v10);
  (*(v8 + 16))(&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v26, a4);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (*(v8 + 80) + v16 + 8) & ~*(v8 + 80);
  v18 = swift_allocObject();
  v19 = v27;
  *(v18 + 16) = a4;
  *(v18 + 24) = v19;
  (*(v11 + 32))(v18 + v15, v13, v24);
  v20 = v28;
  *(v18 + v16) = v28;
  (*(v8 + 32))(v18 + v17, v25, a4);
  *(v18 + ((v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BF8, &unk_1D91913E0);
  swift_allocObject();
  v21 = v20;

  v30 = sub_1D9177A5C();
  sub_1D8CF48EC(&qword_1EDCD0AE8, &qword_1ECAB5BF8, &unk_1D91913E0, MEMORY[0x1E695C038]);

  sub_1D9177B3C();
}

void sub_1D8EBF638(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a7;
  v32 = a4;
  v34 = a5;
  v35 = a6;
  v12 = sub_1D9176C2C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1D917653C();
  v16 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  (*(v13 + 16))(v15, a3, v12);

  sub_1D91764EC();
  v20 = sub_1D91764BC();
  v21 = swift_allocObject();
  v22 = v31;
  v21[2] = v31;
  v21[3] = a8;
  v21[4] = sub_1D8EC1684;
  v21[5] = v19;
  aBlock[4] = sub_1D8EC1690;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8EEC758;
  aBlock[3] = &block_descriptor_27;
  v23 = _Block_copy(aBlock);

  v24 = [v32 dataTaskWithRequest:v20 completionHandler:v23];
  _Block_release(v23);

  v25 = *(a8 + 24);
  v26 = v24;
  v25(aBlock, v22, a8);
  *&v27 = flt_1D918CD50[SLOBYTE(aBlock[0])];
  [v26 setPriority_];

  [v26 resume];
  (*(v16 + 8))(v18, v33);
  v28 = v35;
  swift_beginAccess();
  v29 = *(v28 + 16);
  *(v28 + 16) = v26;
}

void sub_1D8EBF950(void *a1, unint64_t a2, int a3, id a4, void (*a5)(id, unint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 >> 60 == 15)
  {
    if (a4)
    {
      v9 = a4;
    }

    else
    {
      type metadata accessor for ForegroundSessionSource.SourceError(0, a7, a8, 0);
      swift_getWitnessTable();
      v12 = swift_allocError();
      a4 = 0;
      v9 = v12;
      *v13 = 1;
    }

    v14 = a4;
    a5(v9, 0, 1);
  }

  else
  {
    sub_1D8D752C4(a1, a2);
    a5(a1, a2, 0);

    sub_1D8D75668(a1, a2);
  }
}

id sub_1D8EBFA64(uint64_t a1)
{
  swift_beginAccess();
  result = *(a1 + 16);
  if (result)
  {
    return [result cancel];
  }

  return result;
}

void sub_1D8EBFAB4(uint64_t a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 10);
  sub_1D8EC13B4(&a2[4]);
  os_unfair_lock_unlock(a2 + 10);
}

void sub_1D8EBFB10(uint64_t *a1, const char *a2, uint64_t a3, char a4, void *a5)
{
  v10 = sub_1D917734C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - v16;
  if (!*a1)
  {
    v40 = v15;
    if (qword_1EDCD1168 != -1)
    {
      swift_once();
    }

    v18 = sub_1D917739C();
    __swift_project_value_buffer(v18, qword_1EDCD1170);
    sub_1D917737C();
    sub_1D917731C();
    sub_1D8CFD9D8(a5, v42);
    v19 = sub_1D917737C();
    v39 = sub_1D9178F5C();
    if ((sub_1D917918C() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v42);
LABEL_14:
      v29 = v40;
      (*(v11 + 16))(v13, v17, v40);
      sub_1D91773FC();
      swift_allocObject();
      v30 = sub_1D91773EC();
      (*(v11 + 8))(v17, v29);
      v31 = a5[3];
      v32 = a5[4];
      __swift_project_boxed_opaque_existential_1(a5, v31);
      v33 = (*(v32 + 8))(v31, v32);
      *a1 = v30;
      a1[1] = v33;
      a1[2] = v34;
      return;
    }

    v36 = v19;
    v37 = a5;
    v38 = v5;
    if (a4)
    {
      if (!(a2 >> 32))
      {
        if ((a2 & 0xFFFFF800) == 0xD800)
        {
LABEL_19:
          __break(1u);
          return;
        }

        if (a2 >> 16 <= 0x10)
        {
          v35 = &v45;
          goto LABEL_13;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      if (a2)
      {
        v35 = a2;
LABEL_13:
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v41 = v21;
        *v20 = 136315138;
        v22 = v43;
        v23 = v44;
        __swift_project_boxed_opaque_existential_1(v42, v43);
        v24 = (*(v23 + 8))(v22, v23);
        v26 = sub_1D8CFA924(v24, v25, &v41);

        *(v20 + 4) = v26;
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        v27 = sub_1D917732C();
        v28 = v36;
        _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v36, v39, v27, v35, "[identifier=%{name=identifier}s] ForegroundNetworkFetch", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        MEMORY[0x1DA72CB90](v21, -1, -1);
        MEMORY[0x1DA72CB90](v20, -1, -1);

        a5 = v37;
        goto LABEL_14;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_1D8EBFE70(uint64_t a1, os_unfair_lock_s *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  os_unfair_lock_lock(a2 + 10);
  sub_1D8EBFEE0(&a2[4], a3, a4, v5);

  os_unfair_lock_unlock(a2 + 10);
}

void sub_1D8EBFEE0(uint64_t *a1, const char *a2, uint64_t a3, char a4)
{
  v32 = a2;
  v7 = sub_1D91773AC();
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1D917734C();
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1)
  {
    v28 = v12;
    v29 = v11;
    v30 = v4;
    v15 = a1[2];
    v27 = a1[1];
    if (qword_1EDCD1168 != -1)
    {
      swift_once();
    }

    v16 = sub_1D917739C();
    __swift_project_value_buffer(v16, qword_1EDCD1170);

    v17 = sub_1D917737C();
    sub_1D91773DC();
    v26 = sub_1D9178F4C();
    if ((sub_1D917918C() & 1) == 0)
    {

      swift_bridgeObjectRelease_n();

LABEL_17:
      (*(v28 + 8))(v14, v29);
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return;
    }

    if (a4)
    {
      if (!(v32 >> 32))
      {
        v18 = v31;
        if ((v32 & 0xFFFFF800) == 0xD800)
        {
LABEL_22:
          __break(1u);
          return;
        }

        if (v32 >> 16 <= 0x10)
        {

          v32 = &v33;
          goto LABEL_13;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {

      if (v32)
      {
        v18 = v31;
LABEL_13:

        sub_1D917740C();

        if ((*(v18 + 11))(v9, v7) == *MEMORY[0x1E69E93E8])
        {
          v19 = 0;
          v20 = 0;
          v31 = "[Error] Interval already ended";
        }

        else
        {
          (*(v18 + 1))(v9, v7);
          v31 = "[identifier=%{name=identifier}s] SUCCESS";
          v20 = 2;
          v19 = 1;
        }

        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v33 = v22;
        *v21 = v20;
        *(v21 + 1) = v19;
        *(v21 + 2) = 2080;

        v23 = sub_1D8CFA924(v27, v15, &v33);

        *(v21 + 4) = v23;
        v24 = sub_1D917732C();
        _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v17, v26, v24, v32, v31, v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        MEMORY[0x1DA72CB90](v22, -1, -1);
        MEMORY[0x1DA72CB90](v21, -1, -1);

        goto LABEL_17;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }
}

void sub_1D8EC02CC(uint64_t a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 10);
  sub_1D8EC1390(&a2[4]);
  os_unfair_lock_unlock(a2 + 10);
}

void sub_1D8EC032C(uint64_t *a1, uint64_t a2, const char *a3, uint64_t a4, unsigned __int8 a5)
{
  v52 = a3;
  v8 = sub_1D91773AC();
  v51 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45[-v12];
  v14 = sub_1D917734C();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v45[-v20];
  if (*a1)
  {
    v49 = v19;
    v50 = v18;
    v48 = a5;
    v22 = a1[2];
    v47 = a1[1];
    v23 = qword_1EDCD1168 == -1;
    if (!a2)
    {
      goto LABEL_9;
    }

    if (qword_1EDCD1168 != -1)
    {
      swift_once();
    }

    v24 = sub_1D917739C();
    __swift_project_value_buffer(v24, qword_1EDCD1170);

    v21 = sub_1D917737C();
    sub_1D91773DC();
    v13 = sub_1D9178F4C();
    if ((sub_1D917918C() & 1) == 0)
    {
      goto LABEL_15;
    }

    if ((v48 & 1) == 0)
    {

      v25 = v51;
      if (!v52)
      {
        __break(1u);
LABEL_9:
        if (!v23)
        {
          swift_once();
        }

        v26 = sub_1D917739C();
        __swift_project_value_buffer(v26, qword_1EDCD1170);

        v16 = sub_1D917737C();
        sub_1D91773DC();
        v27 = sub_1D9178F4C();
        if ((sub_1D917918C() & 1) == 0)
        {

          swift_bridgeObjectRelease_n();

LABEL_34:
          (*(v49 + 8))(v21, v50);
          goto LABEL_35;
        }

        if ((v48 & 1) == 0)
        {

          v28 = v51;
          if (!v52)
          {
            __break(1u);
LABEL_15:

            swift_bridgeObjectRelease_n();

LABEL_25:
            (*(v49 + 8))(v16, v50);
LABEL_35:
            *a1 = 0;
            a1[1] = 0;
            a1[2] = 0;
            return;
          }

          goto LABEL_30;
        }

        v28 = v51;
        if (!(v52 >> 32))
        {
          if ((v52 & 0xFFFFF800) == 0xD800)
          {
LABEL_42:
            __break(1u);
            return;
          }

          if (v52 >> 16 <= 0x10)
          {

            v52 = &v53;
LABEL_30:

            sub_1D917740C();

            v37 = (*(v28 + 11))(v13, v8);
            v38 = *MEMORY[0x1E69E93E8];
            v46 = v27;
            if (v37 == v38)
            {
              v39 = 0;
              v40 = 0;
              v51 = "[Error] Interval already ended";
            }

            else
            {
              (*(v28 + 1))(v13, v8);
              v51 = "[identifier=%{name=identifier}s] EMPTY";
              v40 = 2;
              v39 = 1;
            }

            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v53 = v42;
            *v41 = v40;
            *(v41 + 1) = v39;
            *(v41 + 2) = 2080;

            v43 = sub_1D8CFA924(v47, v22, &v53);

            *(v41 + 4) = v43;
            v44 = sub_1D917732C();
            _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v16, v46, v44, v52, v51, v41, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v42);
            MEMORY[0x1DA72CB90](v42, -1, -1);
            MEMORY[0x1DA72CB90](v41, -1, -1);

            goto LABEL_34;
          }

          goto LABEL_40;
        }

LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

LABEL_21:

      sub_1D917740C();

      v29 = (*(v25 + 11))(v10, v8);
      v30 = *MEMORY[0x1E69E93E8];
      v46 = v13;
      if (v29 == v30)
      {
        v31 = 0;
        v32 = 0;
        v51 = "[Error] Interval already ended";
      }

      else
      {
        (*(v25 + 1))(v10, v8);
        v51 = "[identifier=%{name=identifier}s] FAILURE";
        v32 = 2;
        v31 = 1;
      }

      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v53 = v34;
      *v33 = v32;
      *(v33 + 1) = v31;
      *(v33 + 2) = 2080;

      v35 = sub_1D8CFA924(v47, v22, &v53);

      *(v33 + 4) = v35;
      v36 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v21, v46, v36, v52, v51, v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1DA72CB90](v34, -1, -1);
      MEMORY[0x1DA72CB90](v33, -1, -1);

      goto LABEL_25;
    }

    v25 = v51;
    if (v52 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v52 & 0xFFFFF800) == 0xD800)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (v52 >> 16 <= 0x10)
      {

        v52 = &v53;
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_39;
  }
}

void sub_1D8EC09C8(os_unfair_lock_s *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  os_unfair_lock_lock(a1 + 10);
  sub_1D8EC0A38(&a1[4], a2, a3, v4);

  os_unfair_lock_unlock(a1 + 10);
}

void sub_1D8EC0A38(uint64_t *a1, const char *a2, uint64_t a3, char a4)
{
  v32 = a2;
  v7 = sub_1D91773AC();
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1D917734C();
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1)
  {
    v28 = v12;
    v29 = v11;
    v30 = v4;
    v15 = a1[2];
    v27 = a1[1];
    if (qword_1EDCD1168 != -1)
    {
      swift_once();
    }

    v16 = sub_1D917739C();
    __swift_project_value_buffer(v16, qword_1EDCD1170);

    v17 = sub_1D917737C();
    sub_1D91773DC();
    v26 = sub_1D9178F4C();
    if ((sub_1D917918C() & 1) == 0)
    {

      swift_bridgeObjectRelease_n();

LABEL_17:
      (*(v28 + 8))(v14, v29);
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return;
    }

    if (a4)
    {
      if (!(v32 >> 32))
      {
        v18 = v31;
        if ((v32 & 0xFFFFF800) == 0xD800)
        {
LABEL_22:
          __break(1u);
          return;
        }

        if (v32 >> 16 <= 0x10)
        {

          v32 = &v33;
          goto LABEL_13;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {

      if (v32)
      {
        v18 = v31;
LABEL_13:

        sub_1D917740C();

        if ((*(v18 + 11))(v9, v7) == *MEMORY[0x1E69E93E8])
        {
          v19 = 0;
          v20 = 0;
          v31 = "[Error] Interval already ended";
        }

        else
        {
          (*(v18 + 1))(v9, v7);
          v31 = "[identifier=%{name=identifier}s] CANCEL";
          v20 = 2;
          v19 = 1;
        }

        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v33 = v22;
        *v21 = v20;
        *(v21 + 1) = v19;
        *(v21 + 2) = 2080;

        v23 = sub_1D8CFA924(v27, v15, &v33);

        *(v21 + 4) = v23;
        v24 = sub_1D917732C();
        _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v17, v26, v24, v32, v31, v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        MEMORY[0x1DA72CB90](v22, -1, -1);
        MEMORY[0x1DA72CB90](v21, -1, -1);

        goto LABEL_17;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }
}

uint64_t sub_1D8EC0E84(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  Trace.emit(event:)("DECODE", 6, 2, v10, v11);
  (*(*(a5 + 8) + 40))(v8, v9, a4);
  v12 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v12);
  if (!v15)
  {
    return Trace.emit(event:)("DECODED", 7, 2, v12, v13);
  }

  Trace.emit(event:)("DECODE-FAILED", 13, 2, v12, v13);
  return swift_willThrow();
}

uint64_t ForegroundSessionSource.SourceError.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8EC1070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1D9179DBC();
  a4(v6);
  return sub_1D9179E1C();
}

uint64_t sub_1D8EC10D4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (*(*(*(v3 + 16) - 8) + 80) + 32) & ~*(*(*(v3 + 16) - 8) + 80);
  v5 = (*(*(*(v3 + 16) - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D8EBEAAC(a1, a2, v3 + v4, *(v3 + v5), *(v3 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), v3 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8), a3, *(v3 + 16), *(v3 + 24));
}

uint64_t sub_1D8EC117C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BD8, &qword_1D91913C0);
  return v3(a1, *(a1 + *(v4 + 48)));
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1D8EC13D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_1D9176C2C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v7);
  v9 = v1 + ((v7 + *(*(v3 - 8) + 80) + 8) & ~*(*(v3 - 8) + 80));

  return sub_1D8EBF30C(v1 + v6, v8, v9, v3, v4, a1);
}

void sub_1D8EC14C0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 40));
  sub_1D8EC13B4((v1 + 16));
  os_unfair_lock_unlock((v1 + 40));
}

void sub_1D8EC1558(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(sub_1D9176C2C() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + *(*(v5 - 8) + 80) + 8) & ~*(*(v5 - 8) + 80);
  v11 = *(v2 + v9);
  v12 = *(v2 + ((*(*(v5 - 8) + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1D8EBF638(a1, a2, v2 + v8, v11, v2 + v10, v12, v5, v6);
}

uint64_t sub_1D8EC16AC(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      if (qword_1ECAB1378 != -1)
      {
        swift_once();
      }

      v1 = &qword_1ECAB1380;
    }

    else
    {
      if (qword_1ECAB34B0 != -1)
      {
        swift_once();
      }

      v1 = &qword_1ECAB5B20;
    }
  }

  else
  {
    if (qword_1EDCD6008 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDCD6010;
  }

  return *v1;
}

uint64_t NeverSessionSource.fetch(asset:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  type metadata accessor for NeverSessionSource.NeverFetchError(0, v3, v2, v4);
  swift_getWitnessTable();
  swift_allocError();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  return sub_1D917799C();
}

uint64_t NeverSessionSource.NeverFetchError.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

Swift::Void __swiftcall EpisodeDownloadsRemover.removeDownloadedEpisode(uuid:)(Swift::String uuid)
{
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v1 removeDownloadedEpisodeWithUuid:v2 completion:0];
}

uint64_t sub_1D8EC19E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8EC1A5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id ShazamSignatureBackgroundSessionDescriptor.create(session:delegate:)(void *a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_1D8EC2984(a1, a2);
}

uint64_t ShazamSignatureBackgroundSessionDescriptor.load(data:)(uint64_t a1)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5270, &unk_1D918EA40);
  v39 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v29 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5278, &unk_1D918EA50);
  v31 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5280, &qword_1D9191540);
  v33 = *(v14 - 8);
  v34 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D10, &qword_1D9191548);
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v32 = &v29 - v17;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D18, &qword_1D9191550);
  v35 = *(v37 - 8);
  v18 = MEMORY[0x1EEE9AC00](v37);
  v20 = &v29 - v19;
  (*(v8 + 16))(v10, v30, v7, v18);
  sub_1D9177A0C();
  if (qword_1ECAAFD88 != -1)
  {
    swift_once();
  }

  v21 = qword_1ECAAFD90;
  v22 = sub_1D9178DBC();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  v40 = v21;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1EDCD0B10, &qword_1ECAB5278, &unk_1D918EA50, MEMORY[0x1E695C008]);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&unk_1ECAB0A48, &qword_1ECAB5270, &unk_1D918EA40, MEMORY[0x1E695BCB8]);
  sub_1D9177CEC();
  (*(v39 + 8))(v3, v1);
  sub_1D8D2210C(v6);
  (*(v31 + 8))(v13, v11);
  sub_1D8CF2154(0, &qword_1ECAAFE30, 0x1E697B7D0);
  sub_1D8CF48EC(&unk_1ECAB0470, &qword_1ECAB5280, &qword_1D9191540, MEMORY[0x1E695BE98]);
  v23 = v32;
  v24 = v34;
  sub_1D9177C6C();
  (*(v33 + 8))(v16, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D20, &unk_1D9191558);
  sub_1D8CF48EC(&qword_1ECAB0658, &qword_1ECAB5D10, &qword_1D9191548, MEMORY[0x1E695BE28]);
  sub_1D8CF48EC(&unk_1ECAB0288, &qword_1ECAB5D20, &unk_1D9191558, MEMORY[0x1E695C018]);
  v25 = v38;
  sub_1D9177BDC();
  (*(v36 + 8))(v23, v25);
  sub_1D8CF48EC(&qword_1ECAB06D8, &qword_1ECAB5D18, &qword_1D9191550, MEMORY[0x1E695BDA0]);
  v26 = v37;
  v27 = sub_1D9177B1C();
  (*(v35 + 8))(v20, v26);
  return v27;
}

uint64_t sub_1D8EC2240@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1D9176C3C();
  if (!v2)
  {
    v6 = result;
    v7 = v5;
    v8 = objc_allocWithZone(MEMORY[0x1E697B7D0]);
    v9 = sub_1D8ECEE54(v6, v7);
    result = sub_1D8D7567C(v6, v7);
    *a2 = v9;
  }

  return result;
}

uint64_t sub_1D8EC22CC(void **a1)
{
  v1 = *a1;
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1EDCD0F20);
  v3 = v1;
  v4 = sub_1D917741C();
  v5 = sub_1D9178CFC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    v9 = sub_1D917826C();
    v11 = sub_1D8CFA924(v9, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1D8CEC000, v4, v5, "Received background wakeup for non-signature (or malformed) content from shazamsignature session; error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1DA72CB90](v7, -1, -1);
    MEMORY[0x1DA72CB90](v6, -1, -1);
  }

  sub_1D8CF2154(0, &qword_1ECAAFE30, 0x1E697B7D0);
  return sub_1D9177A1C();
}

uint64_t ShazamSignatureBackgroundSessionDescriptor.stash(asset:for:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5890, &unk_1D9190BB0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D28, &qword_1D9191568);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D30, &unk_1D9191570);
  sub_1D8E48268(a1, a2);
  sub_1D9177A0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D91779DC();
  (*(v5 + 8))(v7, v4);
  sub_1D8CF48EC(&qword_1ECAAFBA0, &qword_1ECAB5D28, &qword_1D9191568, MEMORY[0x1E695C0C8]);
  v12 = sub_1D9177B1C();
  (*(v9 + 8))(v11, v8);
  return v12;
}

id sub_1D8EC26CC(void *a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_1D8EC2984(a1, a2);
}

uint64_t sub_1D8EC2738(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5890, &unk_1D9190BB0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D28, &qword_1D9191568);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D30, &unk_1D9191570);
  sub_1D8E48268(v12, a2);
  sub_1D9177A0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D91779DC();
  (*(v5 + 8))(v7, v4);
  sub_1D8CF48EC(&qword_1ECAAFBA0, &qword_1ECAB5D28, &qword_1D9191568, MEMORY[0x1E695C0C8]);
  v13 = sub_1D9177B1C();
  (*(v9 + 8))(v11, v8);
  return v13;
}

id sub_1D8EC2984(void *a1, uint64_t a2)
{
  [a1 setSessionSendsLaunchEvents_];
  [a1 setDiscretionary_];
  [a1 setSharedContainerIdentifier_];
  v4 = [objc_opt_self() sessionWithConfiguration:a1 delegate:a2 delegateQueue:0];

  return v4;
}

uint64_t sub_1D8EC2A54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8EC2ACC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id TranscriptsBackgroundSessionDescriptor.create(session:delegate:)(void *a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_1D8EC2984(a1, a2);
}

uint64_t TranscriptsBackgroundSessionDescriptor.load(data:)(uint64_t a1)
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5270, &unk_1D918EA40);
  v38 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v28 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5278, &unk_1D918EA50);
  v30 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5280, &qword_1D9191540);
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v15 = &v28 - v14;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D40, &qword_1D9191608);
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v32 = &v28 - v16;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D48, &qword_1D9191610);
  v34 = *(v36 - 8);
  v17 = MEMORY[0x1EEE9AC00](v36);
  v19 = &v28 - v18;
  (*(v8 + 16))(v10, v29, v7, v17);
  sub_1D9177A0C();
  if (qword_1ECAAFD88 != -1)
  {
    swift_once();
  }

  v20 = qword_1ECAAFD90;
  v21 = sub_1D9178DBC();
  (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  v39 = v20;
  sub_1D8CFD888();
  sub_1D8CF48EC(&qword_1EDCD0B10, &qword_1ECAB5278, &unk_1D918EA50, MEMORY[0x1E695C008]);
  sub_1D8D6456C(&qword_1EDCD0980, sub_1D8CFD888, MEMORY[0x1E69E8028]);
  sub_1D9177D3C();
  sub_1D8CF48EC(&unk_1ECAB0A48, &qword_1ECAB5270, &unk_1D918EA40, MEMORY[0x1E695BCB8]);
  sub_1D9177CEC();
  (*(v38 + 8))(v3, v1);
  sub_1D8D2210C(v6);
  (*(v30 + 8))(v13, v11);
  sub_1D8CF48EC(&unk_1ECAB0470, &qword_1ECAB5280, &qword_1D9191540, MEMORY[0x1E695BE98]);
  v23 = v32;
  v22 = v33;
  sub_1D9177C6C();
  (*(v31 + 8))(v15, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D50, &qword_1D9191618);
  sub_1D8CF48EC(&qword_1ECAB0668, &qword_1ECAB5D40, &qword_1D9191608, MEMORY[0x1E695BE28]);
  sub_1D8CF48EC(&qword_1ECAB02A0, &qword_1ECAB5D50, &qword_1D9191618, MEMORY[0x1E695C018]);
  v24 = v37;
  sub_1D9177BDC();
  (*(v35 + 8))(v23, v24);
  sub_1D8CF48EC(&qword_1ECAB06E0, &qword_1ECAB5D48, &qword_1D9191610, MEMORY[0x1E695BDA0]);
  v25 = v36;
  v26 = sub_1D9177B1C();
  (*(v34 + 8))(v19, v25);
  return v26;
}

uint64_t sub_1D8EC32B8@<X0>(uint64_t x8_0@<X8>)
{
  result = sub_1D9176C3C();
  if (!v2)
  {
    v6 = x8_0;
    v7 = result;
    v8 = v5;
    TranscriptParser.parse(ttmlData:)(result, v5, v6);
    return sub_1D8D7567C(v7, v8);
  }

  return result;
}

uint64_t sub_1D8EC3310(void **a1)
{
  v1 = *a1;
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1EDCD0F20);
  v3 = v1;
  v4 = sub_1D917741C();
  v5 = sub_1D9178CFC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    v9 = sub_1D917826C();
    v11 = sub_1D8CFA924(v9, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1D8CEC000, v4, v5, "Received background wakeup for non-transcript (or malformed) content from transcript session; error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1DA72CB90](v7, -1, -1);
    MEMORY[0x1DA72CB90](v6, -1, -1);
  }

  return sub_1D9177A1C();
}

uint64_t TranscriptsBackgroundSessionDescriptor.stash(asset:for:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5890, &unk_1D9190BB0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D28, &qword_1D9191568);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - v10;
  v12 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v12;
  v15[2] = *(a1 + 32);
  v16 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D58, &unk_1D9191620);
  sub_1D8E47CB8(v15, a2);
  sub_1D9177A0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D91779DC();
  (*(v5 + 8))(v7, v4);
  sub_1D8CF48EC(&qword_1ECAAFBA0, &qword_1ECAB5D28, &qword_1D9191568, MEMORY[0x1E695C0C8]);
  v13 = sub_1D9177B1C();
  (*(v9 + 8))(v11, v8);
  return v13;
}

uint64_t sub_1D8EC3730(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5890, &unk_1D9190BB0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D28, &qword_1D9191568);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - v10;
  v12 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v12;
  v15[2] = *(a1 + 32);
  v16 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D58, &unk_1D9191620);
  sub_1D8E47CB8(v15, a2);
  sub_1D9177A0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D91779DC();
  (*(v5 + 8))(v7, v4);
  sub_1D8CF48EC(&qword_1ECAAFBA0, &qword_1ECAB5D28, &qword_1D9191568, MEMORY[0x1E695C0C8]);
  v13 = sub_1D9177B1C();
  (*(v9 + 8))(v11, v8);
  return v13;
}

uint64_t BundleAssetTranscriptProvider.ttmlFileName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BundleAssetTranscriptProvider.signatureFileName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void __swiftcall BundleAssetTranscriptProvider.init(ttmlFileName:signatureFileName:bundle:)(PodcastsFoundation::BundleAssetTranscriptProvider *__return_ptr retstr, Swift::String ttmlFileName, Swift::String signatureFileName, NSBundle bundle)
{
  retstr->ttmlFileName = ttmlFileName;
  retstr->signatureFileName = signatureFileName;
  retstr->bundle = bundle;
}

uint64_t BundleAssetTranscriptProvider.transcript(for:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D60, &qword_1D91916B0);
  v2 = *(v1 - 8);
  v73 = v1;
  v74 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v72 = &v51 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D68, &qword_1D91916B8);
  v5 = *(v4 - 8);
  v68 = v4;
  v69 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v63 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D70, &qword_1D91916C0);
  v8 = *(v7 - 8);
  v70 = v7;
  v71 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v51 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D78, &qword_1D91916C8);
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D80, &qword_1D91916D0);
  v14 = *(v13 - 8);
  v66 = v13;
  v67 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v51 - v15;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D88, &qword_1D91916D8);
  v55 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v51 - v16;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D90, &qword_1D91916E0);
  v64 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v77 = &v51 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D98, &qword_1D91916E8);
  v78 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v51 - v19;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5DA0, &qword_1D91916F0);
  v62 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v51 - v21;
  v22 = v0[1];
  v25 = v0[2];
  v24 = v0[3];
  v26 = v0[4];
  v79 = *v0;
  v23 = v79;
  v80 = v22;
  v81 = v25;
  v82 = v24;
  v83 = v26;
  sub_1D8EC44FC(v79, v22, 1819112564, 0xE400000000000000, v20);
  v52 = MEMORY[0x1E695BE28];
  sub_1D8CF48EC(&qword_1ECAB5DA8, &qword_1ECAB5D98, &qword_1D91916E8, MEMORY[0x1E695BE28]);
  sub_1D9177C6C();
  v27 = *(v78 + 8);
  v78 += 8;
  v27(v20, v18);
  v79 = v23;
  v80 = v22;
  v81 = v25;
  v82 = v24;
  v83 = v26;
  sub_1D8EC44FC(v25, v24, 0x727574616E676973, 0xE900000000000065, v20);
  sub_1D8CF2154(0, &qword_1ECAAFE30, 0x1E697B7D0);
  v28 = v53;
  sub_1D9177C6C();
  v27(v20, v18);
  sub_1D8CF2154(0, &qword_1ECAB5DB0, 0x1E697B788);
  v29 = v54;
  sub_1D91776EC();
  (*(v55 + 8))(v28, v29);
  v30 = v57;
  sub_1D91776FC();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1D8EC4B20;
  *(v31 + 24) = 0;
  v32 = v59;
  v33 = v56;
  sub_1D91776FC();

  v34 = v52;
  sub_1D8CF48EC(&qword_1ECAB5DB8, &qword_1ECAB5D78, &qword_1D91916C8, v52);
  v35 = v58;
  v36 = v32;
  v37 = v60;
  sub_1D9177BFC();
  v38 = *(v61 + 8);
  v38(v36, v37);
  v38(v30, v37);
  sub_1D8CF48EC(&qword_1ECAB5DC0, &qword_1ECAB5D90, &qword_1D91916E0, v34);
  sub_1D8CF48EC(&qword_1ECAB5DC8, &qword_1ECAB5DA0, &qword_1D91916F0, v34);
  v39 = v63;
  v40 = v77;
  sub_1D9177B5C();
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1D8EC4BE0;
  *(v41 + 24) = 0;
  sub_1D8CF48EC(&qword_1ECAB5DD0, &qword_1ECAB5D68, &qword_1D91916B8, MEMORY[0x1E695BC68]);
  v42 = v65;
  v43 = v68;
  sub_1D9177B9C();

  (*(v69 + 8))(v39, v43);
  sub_1D8CF48EC(&qword_1ECAB5DD8, &qword_1ECAB5D80, &qword_1D91916D0, MEMORY[0x1E695BE80]);
  sub_1D8CF48EC(&qword_1ECAB5DE0, &qword_1ECAB5D70, &qword_1D91916C0, MEMORY[0x1E695BD60]);
  v44 = v72;
  v45 = v42;
  v46 = v66;
  v47 = v70;
  sub_1D9177BEC();
  sub_1D8CF48EC(&qword_1ECAB5DE8, &qword_1ECAB5D60, &qword_1D91916B0, MEMORY[0x1E695BDC0]);
  v48 = v73;
  v49 = sub_1D9177B1C();
  (*(v74 + 8))(v44, v48);
  (*(v71 + 8))(v45, v47);
  (*(v67 + 8))(v35, v46);
  (*(v64 + 8))(v40, v33);
  (*(v62 + 8))(v75, v76);
  return v49;
}

uint64_t sub_1D8EC44FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E00, &unk_1D9191810);
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28 - v14;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E08, &qword_1D9191820);
  v16 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v18 = &v28 - v17;
  v19 = *(v5 + 16);
  v34[0] = *v5;
  v34[1] = v19;
  v35 = *(v5 + 32);
  v20 = swift_allocObject();
  v21 = *(v5 + 16);
  *(v20 + 16) = *v5;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(v5 + 32);
  *(v20 + 56) = a1;
  *(v20 + 64) = a2;
  *(v20 + 72) = a3;
  *(v20 + 80) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E10, &qword_1D9191828);
  swift_allocObject();
  sub_1D8EC51A8(v34, v33);

  v22 = sub_1D9177A5C();
  if (qword_1ECAAFD88 != -1)
  {
    swift_once();
  }

  v23 = qword_1ECAAFD90;
  v24 = sub_1D9178DBC();
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  v32 = v22;
  v33[0] = v23;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECAB5E18, &qword_1ECAB5E10, &qword_1D9191828, MEMORY[0x1E695C038]);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB5E20, &qword_1ECAB5E00, &unk_1D9191810, MEMORY[0x1E695BCB8]);
  v25 = v30;
  sub_1D9177CEC();

  (*(v29 + 8))(v12, v25);
  sub_1D8D08A50(v15, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8CF48EC(&qword_1ECAB5E28, &qword_1ECAB5E08, &qword_1D9191820, MEMORY[0x1E695BE98]);
  v26 = v28;
  sub_1D9177C6C();
  return (*(v16 + 8))(v18, v26);
}

uint64_t sub_1D8EC496C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = objc_allocWithZone(MEMORY[0x1E697B7D0]);
  sub_1D8D752C4(v4, v5);
  v7 = sub_1D8ECEE54(v4, v5);
  result = sub_1D8D7567C(v4, v5);
  if (!v2)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1D8EC49F0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189070;
  *(inited + 32) = v4;
  v6 = v4;
  v7 = sub_1D8ECF6A0(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  if (!v2)
  {
    *a2 = v7;
  }

  return result;
}

double sub_1D8EC4AA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 24) = v4;
  *(a2 + 32) = v3;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 64) = 1;
  sub_1D8D752C4(v4, v3);

  return result;
}

id sub_1D8EC4B20@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 64) = 0;
  return a1;
}

double sub_1D8EC4B58@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v3 = *(a2 + 16);
  *a3 = a1;
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  *(a3 + 32) = v4;
  *(a3 + 40) = v5;
  *(a3 + 48) = v6;
  *(a3 + 56) = v7;
  *(a3 + 64) = 2;
  v8 = a1;
  sub_1D8D752C4(v4, v5);

  return result;
}

uint64_t BundleAssetTranscriptProvider.prefetch(request:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5DF0, &qword_1D91916F8);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  sub_1D9177A1C();
  sub_1D8CF48EC(&qword_1ECAB5DF8, &qword_1ECAB5DF0, &qword_1D91916F8, MEMORY[0x1E695C018]);
  v4 = sub_1D9177D9C();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1D8EC4D68(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v29 = a2;
  v30 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E30, &unk_1D9191830);
  MEMORY[0x1EEE9AC00](v28);
  v11 = (&v25 - v10);
  v12 = sub_1D9176C2C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - v17;
  v19 = *(a3 + 32);
  v26 = a4;
  v20 = a5;
  v21 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v22 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v23 = [v19 URLForResource:v21 withExtension:v22];

  if (v23)
  {
    sub_1D9176B9C();

    (*(v13 + 32))(v18, v15, v12);
    (*(v13 + 16))(v11, v18, v12);
    swift_storeEnumTagMultiPayload();
    v30(v11);
    sub_1D8D08A50(v11, &qword_1ECAB5E30, &unk_1D9191830);
    return (*(v13 + 8))(v18, v12);
  }

  else
  {
    *v11 = v26;
    v11[1] = v20;
    swift_storeEnumTagMultiPayload();

    v30(v11);
    return sub_1D8D08A50(v11, &qword_1ECAB5E30, &unk_1D9191830);
  }
}

uint64_t sub_1D8EC4FF8@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1D9176C3C();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1D8EC5028()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5DF0, &qword_1D91916F8);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  sub_1D9177A1C();
  sub_1D8CF48EC(&qword_1ECAB5DF8, &qword_1ECAB5DF0, &qword_1D91916F8, MEMORY[0x1E695C018]);
  v4 = sub_1D9177D9C();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t KCUTranscriptProvider.bearerToken.getter()
{
  v1 = *v0;

  return v1;
}

void KCUTranscriptProvider.init(bearerToken:basePath:kcuTranscriptPath:kcuSignaturePath:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  v14 = type metadata accessor for KCUTranscriptProvider(0);
  v15 = v14[7];
  v16 = sub_1D9176C2C();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&a8[v15], a3, v16);
  v18 = &a8[v14[8]];
  *v18 = a4;
  *(v18 + 1) = a5;
  v19 = &a8[v14[9]];
  *v19 = a6;
  *(v19 + 1) = a7;
  *(a8 + 2) = [objc_opt_self() sharedSession];
  v20 = sub_1D8D68E84(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E38, &qword_1D9191840);
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  v22 = *(v17 + 8);

  v22(a3, v16);
  *(v21 + 16) = v20;

  *(a8 + 3) = v21;
}

uint64_t type metadata accessor for KCUTranscriptProvider(uint64_t a1)
{
  result = qword_1ECAB5ED8;
  if (!qword_1ECAB5ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t KCUTranscriptProvider.prefetch(request:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_1D8EC8484((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t sub_1D8EC5420@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v54 = a4;
  v53 = a1;
  v6 = type metadata accessor for KCUTranscriptProvider(0);
  v46 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v47 = v7;
  v52 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F08, &unk_1D9191980);
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F10, &qword_1D9192640);
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v38 - v14;
  v51 = sub_1D9176EAC();
  v15 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v39 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v38 - v18;
  sub_1D9176E9C();
  v45 = a3;
  v48 = a2;
  v19 = KCUTranscriptProvider.transcript(for:)(a3);
  if (qword_1EDCD0990 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDCD0998;
  v21 = sub_1D9178DBC();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  *&v55[0] = v20;
  v57 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F18, &unk_1D9191990);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECAB0380, &qword_1ECAB5F18, &unk_1D9191990, MEMORY[0x1E695BED8]);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A80, &qword_1ECAB5F08, &unk_1D9191980, MEMORY[0x1E695BCB8]);
  v22 = v44;
  v23 = v42;
  sub_1D9177CEC();

  (*(v41 + 8))(v9, v23);
  sub_1D8D08A50(v12, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8EC8C5C(v45, v55);
  v24 = v52;
  sub_1D8EC84A0(v48, v52);
  v25 = v39;
  v26 = v43;
  v27 = v51;
  (*(v15 + 16))(v39, v43, v51);
  v28 = (*(v46 + 80) + 88) & ~*(v46 + 80);
  v29 = (v47 + *(v15 + 80) + v28) & ~*(v15 + 80);
  v30 = swift_allocObject();
  v31 = v55[3];
  *(v30 + 48) = v55[2];
  *(v30 + 64) = v31;
  *(v30 + 80) = v56;
  v32 = v55[1];
  *(v30 + 16) = v55[0];
  *(v30 + 32) = v32;
  sub_1D8EC8504(v24, v30 + v28);
  (*(v15 + 32))(v30 + v29, v25, v27);
  sub_1D8CF48EC(&qword_1ECAB04A8, &qword_1ECAB5F10, &qword_1D9192640, MEMORY[0x1E695BE98]);
  v33 = v50;
  v34 = sub_1D9177BCC();

  (*(v49 + 8))(v22, v33);

  v35 = v53;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v55[0] = *v35;
  sub_1D8F4FA5C(v34, v26, isUniquelyReferenced_nonNull_native);
  *v35 = *&v55[0];
  result = (*(v15 + 8))(v26, v27);
  *v54 = v34;
  return result;
}

uint64_t KCUTranscriptProvider.transcript(for:)(uint64_t *a1)
{
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E40, &qword_1D9191848);
  v128 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v127 = &v98 - v2;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E48, &qword_1D9191850);
  v135 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v131 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v129 = &v98 - v5;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E50, &qword_1D9191858);
  MEMORY[0x1EEE9AC00](v134);
  v133 = &v98 - v6;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E58, &qword_1D9191860);
  v136 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v132 = &v98 - v7;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E60, &qword_1D9191868);
  v123 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v122 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v121 = &v98 - v10;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E68, &qword_1D9191870);
  MEMORY[0x1EEE9AC00](v124);
  v126 = &v98 - v11;
  v12 = type metadata accessor for KCUTranscriptProvider(0);
  v115 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v146 = v13;
  v143 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E70, &unk_1D9191878);
  v153 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v120 = &v98 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v118 = &v98 - v16;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E78, &qword_1D9191888);
  MEMORY[0x1EEE9AC00](v140);
  v139 = &v98 - v17;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E80, &qword_1D9191890);
  v154 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v141 = &v98 - v18;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E88, &qword_1D9191898);
  v113 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v114 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v112 = &v98 - v21;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E90, &unk_1D91918A0);
  MEMORY[0x1EEE9AC00](v145);
  v155 = &v98 - v22;
  v23 = sub_1D9176C2C();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v98 - v28;
  v156 = *a1;
  sub_1D8E40D20();
  sub_1D917927C();
  v30 = v139;
  sub_1D9176B3C();

  v119 = v12;
  v148 = v29;
  sub_1D9176B3C();
  v151 = a1;
  sub_1D8EC70DC(v26, a1, v30);
  v31 = *(v24 + 8);
  v111 = v26;
  v149 = v24 + 8;
  v150 = v23;
  v147 = v31;
  v31(v26, v23);
  if (qword_1EDCD5B20 != -1)
  {
    swift_once();
  }

  v32 = qword_1EDCD5B28;
  v109 = qword_1EDCD5B28;
  v108 = sub_1D9178DBC();
  v33 = *(v108 - 8);
  v107 = *(v33 + 56);
  v110 = v33 + 56;
  v34 = v118;
  v107(v118, 1, 1, v108);
  v156 = v32;
  v35 = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v117 = &protocol conformance descriptor for EmitLifecycle<A>;
  v106 = sub_1D8CF48EC(&qword_1ECAB5E98, &qword_1ECAB5E78, &qword_1D9191888, &protocol conformance descriptor for EmitLifecycle<A>);
  v36 = sub_1D8D02DF0();
  v37 = v120;
  v103 = v35;
  v102 = v36;
  sub_1D9177D3C();
  v105 = sub_1D8CF48EC(&qword_1ECAB5EA0, &qword_1ECAB5E70, &unk_1D9191878, MEMORY[0x1E695BCB8]);
  v38 = v30;
  v39 = v142;
  v40 = v141;
  sub_1D9177CEC();
  v41 = *(v153 + 8);
  v153 += 8;
  v104 = v41;
  v41(v37, v39);
  sub_1D8D08A50(v34, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8D08A50(v38, &qword_1ECAB5E78, &qword_1D9191888);
  v42 = v143;
  sub_1D8EC84A0(v152, v143);
  v115 = *(v115 + 80);
  v43 = (v115 + 16) & ~v115;
  v101 = v43;
  v44 = swift_allocObject();
  sub_1D8EC8504(v42, v44 + v43);
  v45 = swift_allocObject();
  *(v45 + 16) = sub_1D8EC8568;
  *(v45 + 24) = v44;
  v100 = sub_1D8CF48EC(&qword_1ECAB5EA8, &qword_1ECAB5E80, &qword_1D9191890, MEMORY[0x1E695BE98]);
  v46 = v112;
  v47 = v144;
  sub_1D9177C6C();

  v48 = *(v154 + 8);
  v154 += 8;
  v99 = v48;
  v48(v40, v47);
  v49 = v113;
  v50 = *(v113 + 16);
  v51 = v114;
  v52 = v116;
  v50(v114, v46, v116);
  sub_1D8D728EC((v151 + 4), &v156);
  v53 = v155;
  v50(v155, v51, v52);
  v54 = v145;
  sub_1D8D728EC(&v156, v53 + *(v145 + 36));
  v55 = v53 + v54[10];
  *v55 = "KCUTTMLFile";
  *(v55 + 8) = 11;
  *(v55 + 16) = 2;
  *(v53 + v54[12]) = 1;
  sub_1D8D08A50(&v156, &qword_1ECAB4928, &qword_1D918B380);
  v56 = *(v49 + 8);
  v56(v51, v52);
  v56(v46, v52);
  v57 = (v53 + v54[11]);
  *v57 = 0;
  v57[1] = 0xE000000000000000;
  *(v53 + v54[13]) = 0;
  v58 = v152;
  v59 = v111;
  sub_1D9176B3C();
  v60 = v139;
  v61 = v151;
  sub_1D8EC70DC(v59, v151, v139);
  v147(v59, v150);
  v107(v34, 1, 1, v108);
  v156 = v109;
  sub_1D9177D3C();
  v63 = v141;
  v62 = v142;
  sub_1D9177CEC();
  v104(v37, v62);
  sub_1D8D08A50(v34, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8D08A50(v60, &qword_1ECAB5E78, &qword_1D9191888);
  v64 = v143;
  sub_1D8EC84A0(v58, v143);
  v65 = v101;
  v66 = swift_allocObject();
  sub_1D8EC8504(v64, v66 + v65);
  v67 = swift_allocObject();
  *(v67 + 16) = sub_1D8EC8624;
  *(v67 + 24) = v66;
  sub_1D8CF2154(0, &unk_1ECAAFBD0, 0x1E697B780);
  v68 = v121;
  v69 = v144;
  sub_1D9177C6C();

  v99(v63, v69);
  v70 = v123;
  v71 = *(v123 + 16);
  v72 = v122;
  v73 = v125;
  v71(v122, v68, v125);
  v74 = v61;
  sub_1D8D728EC((v61 + 4), &v156);
  v75 = v126;
  v71(v126, v72, v73);
  v76 = v124;
  sub_1D8D728EC(&v156, v75 + *(v124 + 36));
  v77 = v75 + v76[10];
  *v77 = "KCUShazamSignatureFile";
  *(v77 + 8) = 22;
  *(v77 + 16) = 2;
  *(v75 + v76[12]) = 1;
  sub_1D8D08A50(&v156, &qword_1ECAB4928, &qword_1D918B380);
  v78 = *(v70 + 8);
  v78(v72, v73);
  v78(v68, v73);
  v79 = (v75 + v76[11]);
  *v79 = 0;
  v79[1] = 0xE000000000000000;
  *(v75 + v76[13]) = 0;
  v80 = v117;
  sub_1D8CF48EC(&qword_1ECAB5EB0, &qword_1ECAB5E68, &qword_1D9191870, v117);
  sub_1D8CF48EC(&qword_1ECAB5EB8, &qword_1ECAB5E90, &unk_1D91918A0, v80);
  v81 = v127;
  sub_1D9177B5C();
  v82 = swift_allocObject();
  *(v82 + 16) = sub_1D8EC4BE0;
  *(v82 + 24) = 0;
  sub_1D8CF48EC(&qword_1ECAB5EC0, &qword_1ECAB5E40, &qword_1D9191848, MEMORY[0x1E695BC68]);
  v83 = v129;
  v84 = v130;
  sub_1D9177B9C();

  (*(v128 + 8))(v81, v84);
  v85 = v135;
  v86 = *(v135 + 16);
  v87 = v131;
  v88 = v137;
  v86(v131, v83, v137);
  sub_1D8D728EC((v74 + 4), &v156);
  v89 = v133;
  v86(v133, v87, v88);
  v90 = v134;
  sub_1D8D728EC(&v156, v89 + *(v134 + 36));
  v91 = v89 + v90[10];
  *v91 = "KCUTranscriptData";
  *(v91 + 8) = 17;
  *(v91 + 16) = 2;
  *(v89 + v90[12]) = 1;
  sub_1D8D08A50(&v156, &qword_1ECAB4928, &qword_1D918B380);
  v92 = *(v85 + 8);
  v92(v87, v88);
  v92(v83, v88);
  v93 = (v89 + v90[11]);
  *v93 = 0;
  v93[1] = 0xE000000000000000;
  *(v89 + v90[13]) = 0;
  sub_1D8CF48EC(&qword_1ECAB5EC8, &qword_1ECAB5E50, &qword_1D9191858, v80);
  v94 = v132;
  sub_1D9177B9C();
  sub_1D8D08A50(v89, &qword_1ECAB5E50, &qword_1D9191858);
  sub_1D8CF48EC(&qword_1ECAB5ED0, &qword_1ECAB5E58, &qword_1D9191860, MEMORY[0x1E695BD60]);
  v95 = v138;
  v96 = sub_1D9177B1C();
  (*(v136 + 8))(v94, v95);
  sub_1D8D08A50(v75, &qword_1ECAB5E68, &qword_1D9191870);
  sub_1D8D08A50(v155, &qword_1ECAB5E90, &unk_1D91918A0);
  v147(v148, v150);
  return v96;
}

void sub_1D8EC6DB4(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (qword_1ECAB0E50 != -1)
  {
    swift_once();
  }

  v6 = sub_1D917744C();
  __swift_project_value_buffer(v6, qword_1ECAB0E58);
  sub_1D8EC8C5C(a2, v23);
  v7 = v5;
  v8 = sub_1D917741C();
  v9 = sub_1D9178CDC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136315394;
    v22[0] = v11;
    sub_1D8E40A10();
    v12 = sub_1D9179A4C();
    v14 = v13;
    sub_1D8EC8D90(v23);
    v15 = sub_1D8CFA924(v12, v14, v22);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v16 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5070, &qword_1D918F5B0);
    v17 = sub_1D917826C();
    v19 = sub_1D8CFA924(v17, v18, v22);

    *(v10 + 14) = v19;
    _os_log_impl(&dword_1D8CEC000, v8, v9, "Finished prefetching for %s: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v11, -1, -1);
    MEMORY[0x1DA72CB90](v10, -1, -1);
  }

  else
  {

    v20 = sub_1D8EC8D90(v23);
  }

  v21 = *(a3 + 24);
  MEMORY[0x1EEE9AC00](v20);
  os_unfair_lock_lock((v21 + 24));
  sub_1D8EC8DE4((v21 + 16));
  os_unfair_lock_unlock((v21 + 24));
}

void sub_1D8EC7010(uint64_t *a1, uint64_t a2)
{
  v3 = sub_1D8D93AB0(a2);
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *a1;
    v10 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8F82C10();
      v7 = v10;
    }

    v8 = *(v7 + 48);
    v9 = sub_1D9176EAC();
    (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);

    sub_1D8F7F950(v5, v7);
    *a1 = v7;
  }
}

uint64_t sub_1D8EC70DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v29 = a1;
  v35 = a2;
  v4 = sub_1D9178CAC();
  v5 = *(v4 - 8);
  v32 = v4;
  v33 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5EF8, &qword_1D9191978);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v15 = sub_1D9176C2C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1D917653C();
  v31 = *(v34 - 8);
  v19 = MEMORY[0x1EEE9AC00](v34);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, v29, v15, v19);
  sub_1D91764EC();
  v36[0] = 0x20726572616542;
  v36[1] = 0xE700000000000000;
  MEMORY[0x1DA7298F0](*v30, v30[1]);
  sub_1D917650C();

  sub_1D9178CBC();
  sub_1D8EC8928();
  v22 = v32;
  sub_1D9177C6C();
  (*(v33 + 8))(v7, v22);
  v23 = *(v9 + 16);
  v23(v11, v14, v8);
  sub_1D8D728EC(v35 + 32, v36);
  v23(a3, v11, v8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E78, &qword_1D9191888);
  sub_1D8D728EC(v36, &a3[v24[9]]);
  v25 = &a3[v24[10]];
  *v25 = "KCUFileDownload";
  *(v25 + 1) = 15;
  v25[16] = 2;
  a3[v24[12]] = 1;
  sub_1D8D08A50(v36, &qword_1ECAB4928, &qword_1D918B380);
  v26 = *(v9 + 8);
  v26(v11, v8);
  v26(v14, v8);
  result = (*(v31 + 8))(v21, v34);
  v28 = &a3[v24[11]];
  *v28 = 0;
  *(v28 + 1) = 0xE000000000000000;
  a3[v24[13]] = 0;
  return result;
}

double sub_1D8EC7548@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v64 = a1;
  v71 = a2;
  v60 = a3;
  v61 = sub_1D91773AC();
  v3 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v55 - v6;
  v7 = sub_1D917734C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  if (qword_1ECAB1050 != -1)
  {
    swift_once();
  }

  v19 = sub_1D917739C();
  v20 = __swift_project_value_buffer(v19, qword_1ECAB1058);
  sub_1D917733C();
  v63 = v20;
  v21 = sub_1D917737C();
  v22 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v23 = swift_slowAlloc();
    v56 = v12;
    v24 = v8;
    v25 = v3;
    v26 = v7;
    v27 = v23;
    *v23 = 0;
    v28 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v21, v22, v28, "ParseKCUTTML", "", v27, 2u);
    v29 = v27;
    v7 = v26;
    v3 = v25;
    v8 = v24;
    v12 = v56;
    MEMORY[0x1DA72CB90](v29, -1, -1);
  }

  (*(v8 + 16))(v15, v18, v7);
  sub_1D91773FC();
  swift_allocObject();
  sub_1D91773EC();
  v30 = *(v8 + 8);
  v30(v18, v7);
  v31 = v65;
  TranscriptParser.parse(ttmlData:)(v64, v71, v66);
  if (v31)
  {
    v32 = sub_1D917737C();
    v33 = v62;
    sub_1D91773DC();
    LODWORD(v65) = sub_1D9178F4C();
    if (sub_1D917918C())
    {

      v34 = v59;
      sub_1D917740C();

      v35 = v61;
      v36 = (*(v3 + 88))(v34, v61);
      v37 = *MEMORY[0x1E69E93E8];
      v57 = v7;
      if (v36 == v37)
      {
        v38 = "[Error] Interval already ended";
      }

      else
      {
        (*(v3 + 8))(v34, v35);
        v38 = "FAILURE";
      }

      v45 = swift_slowAlloc();
      *v45 = 0;
      v46 = v62;
      v47 = sub_1D917732C();
      v48 = v38;
      v33 = v46;
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v32, v65, v47, "ParseKCUTTML", v48, v45, 2u);
      MEMORY[0x1DA72CB90](v45, -1, -1);
      v7 = v57;
    }

    v30(v33, v7);
    swift_willThrow();
  }

  else
  {
    v39 = v3;
    v71 = v66[0];
    v64 = v66[1];
    LODWORD(v62) = v67;
    v59 = v68;
    v56 = v69;
    v65 = v70;
    v40 = v12;
    v41 = sub_1D917737C();
    sub_1D91773DC();
    LODWORD(v63) = sub_1D9178F4C();
    if (sub_1D917918C())
    {
      v57 = v7;

      v42 = v58;
      sub_1D917740C();

      v43 = v61;
      if ((*(v39 + 88))(v42, v61) == *MEMORY[0x1E69E93E8])
      {
        v44 = "[Error] Interval already ended";
      }

      else
      {
        (*(v39 + 8))(v42, v43);
        v44 = "SUCCESS";
      }

      v50 = swift_slowAlloc();
      *v50 = 0;
      v51 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v41, v63, v51, "ParseKCUTTML", v44, v50, 2u);
      MEMORY[0x1DA72CB90](v50, -1, -1);
      v7 = v57;
    }

    v30(v40, v7);
    v52 = v60;
    v53 = v64;
    *v60 = v71;
    v52[1] = v53;
    *(v52 + 16) = v62;
    v54 = v56;
    v52[3] = v59;
    v52[4] = v54;
    result = *&v65;
    *(v52 + 5) = v65;
  }

  return result;
}

NSObject *sub_1D8EC7B4C(uint64_t a1, uint64_t a2)
{
  v76 = a1;
  v3 = sub_1D91773AC();
  v71 = *(v3 - 8);
  v72 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v70 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v67 - v6;
  v8 = sub_1D917734C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v77 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v69 = v67 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v67 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v67 - v17;
  if (qword_1ECAB1050 != -1)
  {
    swift_once();
  }

  v19 = sub_1D917739C();
  v20 = __swift_project_value_buffer(v19, qword_1ECAB1058);
  sub_1D917733C();
  v73 = v20;
  v21 = sub_1D917737C();
  v22 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v23 = swift_slowAlloc();
    v75 = a2;
    v24 = v7;
    v25 = v9;
    v26 = v8;
    v27 = v23;
    *v23 = 0;
    v28 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v21, v22, v28, "ParseKCUSignature", "", v27, 2u);
    v29 = v27;
    v8 = v26;
    v9 = v25;
    v7 = v24;
    a2 = v75;
    MEMORY[0x1DA72CB90](v29, -1, -1);
  }

  (*(v9 + 16))(v15, v18, v8);
  sub_1D91773FC();
  swift_allocObject();
  v75 = sub_1D91773EC();
  v32 = *(v9 + 8);
  v31 = v9 + 8;
  v30 = v32;
  v32(v18, v8);
  v33 = objc_allocWithZone(MEMORY[0x1E697B7D0]);
  v34 = v76;
  sub_1D8D752C4(v76, a2);
  v35 = v74;
  v36 = sub_1D8ECEE54(v34, a2);
  if (v35)
  {
    sub_1D8D7567C(v34, a2);
    v40 = sub_1D917737C();
    v41 = v77;
    sub_1D91773DC();
    v42 = sub_1D9178F4C();
    if (sub_1D917918C())
    {
      v74 = v30;

      v43 = v70;
      sub_1D917740C();

      v45 = v71;
      v44 = v72;
      if ((*(v71 + 88))(v43, v72) == *MEMORY[0x1E69E93E8])
      {
        v46 = v8;
        v47 = "[Error] Interval already ended";
      }

      else
      {
        v48 = v43;
        v46 = v8;
        (*(v45 + 8))(v48, v44);
        v47 = "FAILURE";
      }

      v49 = swift_slowAlloc();
      *v49 = 0;
      v50 = v77;
      v51 = sub_1D917732C();
      v52 = v47;
      v41 = v50;
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v40, v42, v51, "ParseKCUSignature", v52, v49, 2u);
      MEMORY[0x1DA72CB90](v49, -1, -1);
      v8 = v46;
      v30 = v74;
    }

    v30(v41, v8);
    swift_willThrow();
  }

  else
  {
    v37 = v36;
    v68 = v7;
    v74 = v30;
    sub_1D8D7567C(v34, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D9189070;
    *(inited + 32) = v37;
    v39 = v37;
    v40 = sub_1D8ECF6A0(inited);
    v77 = v8;
    swift_setDeallocating();
    swift_arrayDestroy();
    v54 = sub_1D917737C();
    v55 = v69;
    sub_1D91773DC();
    v56 = sub_1D9178F4C();
    if (sub_1D917918C())
    {
      LODWORD(v76) = v56;

      v57 = v68;
      sub_1D917740C();

      v59 = v71;
      v58 = v72;
      v60 = (*(v71 + 88))(v57, v72);
      v61 = *MEMORY[0x1E69E93E8];
      v67[1] = v31;
      if (v60 == v61)
      {
        v62 = "[Error] Interval already ended";
      }

      else
      {
        (*(v59 + 8))(v57, v58);
        v62 = "SUCCESS";
      }

      v63 = swift_slowAlloc();
      *v63 = 0;
      v64 = v69;
      v65 = sub_1D917732C();
      v66 = v62;
      v55 = v64;
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v54, v76, v65, "ParseKCUSignature", v66, v63, 2u);
      MEMORY[0x1DA72CB90](v63, -1, -1);
    }

    else
    {
    }

    v74(v55, v77);
  }

  return v40;
}

uint64_t sub_1D8EC8210@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v22 = a1[2];
  v23 = v3;
  v24 = *(a1 + 64);
  v4 = a1[1];
  v20 = *a1;
  v21 = v4;
  if (qword_1ECAB0E50 != -1)
  {
    swift_once();
  }

  v5 = sub_1D917744C();
  __swift_project_value_buffer(v5, qword_1ECAB0E58);
  sub_1D8EC8878(&v20, v18);
  v6 = sub_1D917741C();
  v7 = sub_1D9178CDC();
  sub_1D8EC88D4(&v20);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v18[2] = v22;
    v18[3] = v23;
    v19 = v24;
    v18[0] = v20;
    v18[1] = v21;
    sub_1D8EC8878(&v20, &v16);
    v10 = sub_1D917826C();
    v12 = sub_1D8CFA924(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1D8CEC000, v6, v7, "KCU Result: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1DA72CB90](v9, -1, -1);
    MEMORY[0x1DA72CB90](v8, -1, -1);
  }

  v13 = v23;
  *(a2 + 32) = v22;
  *(a2 + 48) = v13;
  *(a2 + 64) = v24;
  v14 = v21;
  *a2 = v20;
  *(a2 + 16) = v14;
  return sub_1D8EC8878(&v20, v18);
}

id sub_1D8EC83E0@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D8EC8980(*a1, a1[1], a1[2]);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    return sub_1D8D752C4(result, v5);
  }

  return result;
}

uint64_t sub_1D8EC8424()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_1D8EC8E00((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t sub_1D8EC84A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KCUTranscriptProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8EC8504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KCUTranscriptProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8EC86A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

void sub_1D8EC8704(uint64_t a1)
{
  sub_1D8CF2154(319, &qword_1ECAAFE18, 0x1E696AF78);
  if (v1 <= 0x3F)
  {
    sub_1D8EC87C8(319);
    if (v2 <= 0x3F)
    {
      sub_1D9176C2C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D8EC87C8(uint64_t a1)
{
  if (!qword_1ECAB5EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB5EF0, &qword_1D9191948);
    v1 = sub_1D91773BC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECAB5EE8);
    }
  }
}

uint64_t sub_1D8EC882C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8EC8848(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_1D8EC8928()
{
  result = qword_1ECAAFE20;
  if (!qword_1ECAAFE20)
  {
    sub_1D9178CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFE20);
  }

  return result;
}

id sub_1D8EC8980(id a1, uint64_t a2, void *a3)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = a3;
    if ([v6 statusCode] == 200)
    {
      if (qword_1ECAB0E50 != -1)
      {
        swift_once();
      }

      v8 = sub_1D917744C();
      __swift_project_value_buffer(v8, qword_1ECAB0E58);
      v9 = v7;
      v10 = sub_1D917741C();
      v11 = sub_1D9178D1C();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v24 = v23;
        *v12 = 136315138;
        v22 = v11;
        v13 = v9;
        v14 = [v13 description];
        v15 = sub_1D917820C();
        v17 = v16;

        v18 = sub_1D8CFA924(v15, v17, &v24);

        *(v12 + 4) = v18;
        _os_log_impl(&dword_1D8CEC000, v10, v22, "Received reply from KCU %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x1DA72CB90](v23, -1, -1);
        MEMORY[0x1DA72CB90](v12, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      a1 = [v6 statusCode];
      sub_1D8EC8C08();
      swift_allocError();
      *v20 = a1;
      *(v20 + 8) = 0;
      swift_willThrow();
    }
  }

  else
  {
    sub_1D8EC8C08();
    swift_allocError();
    *v19 = 0;
    *(v19 + 8) = 1;
    swift_willThrow();
  }

  return a1;
}

unint64_t sub_1D8EC8C08()
{
  result = qword_1ECAB5F00;
  if (!qword_1ECAB5F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5F00);
  }

  return result;
}

void sub_1D8EC8CB8(void **a1)
{
  v3 = *(type metadata accessor for KCUTranscriptProvider(0) - 8);
  v4 = (*(v3 + 80) + 88) & ~*(v3 + 80);
  sub_1D9176EAC();

  sub_1D8EC6DB4(a1, v1 + 16, v1 + v4);
}

uint64_t MAPITranscriptTimeBombedURLProvider.init(workQueue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1D8D6866C(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F20, &qword_1D91919A0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v4;
  *a2 = a1;
  a2[1] = result;
  return result;
}

uint64_t MAPITranscriptTimeBombedURLProvider.timeBombedURLs(for:)()
{
  v2 = *(v0 + 8);
  os_unfair_lock_lock((v2 + 24));
  sub_1D8ECA280((v2 + 16), &v3);
  os_unfair_lock_unlock((v2 + 24));
  return v3;
}

unint64_t sub_1D8EC8EE8@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  if (*(*a1 + 16) && (v7 = sub_1D8F06AAC(a2), (v8 & 1) != 0))
  {
    *a3 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v10 = sub_1D8EC8FB4(a2);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a1;
    result = sub_1D8F4FC28(v10, a2, isUniquelyReferenced_nonNull_native);
    *a1 = v12;
    *a3 = v10;
  }

  return result;
}

uint64_t sub_1D8EC8FB4(uint64_t a1)
{
  v52 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F30, &unk_1D9191B40);
  v4 = *(v3 - 8);
  v62 = v3;
  v63 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v51 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v51 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F38, &qword_1D9191B50);
  v58 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F40, &qword_1D9191B58);
  v13 = *(v12 - 8);
  v60 = v12;
  v61 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v51 - v14;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F48, &qword_1D9191B60);
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v51 - v15;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F50, &qword_1D9191B68);
  v68 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v54 = &v51 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F58, &qword_1D9191B70);
  v18 = *(v17 - 8);
  v66 = v17;
  v67 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v64 = &v51 - v19;
  v20 = *v1;
  v21 = *(v1 + 8);
  sub_1D8EC8C5C(a1, &v69);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v21;
  v23 = v72;
  *(v22 + 64) = v71;
  *(v22 + 80) = v23;
  *(v22 + 96) = v73;
  v24 = v70;
  *(v22 + 32) = v69;
  *(v22 + 48) = v24;
  v25 = v20;
  v51 = v25;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F60, &qword_1D9191B78);
  sub_1D8CF48EC(&qword_1ECAB0278, &qword_1ECAB5F60, &qword_1D9191B78, MEMORY[0x1E695C038]);
  v26 = v11;
  sub_1D9177A7C();
  v27 = sub_1D9178DBC();
  (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
  *&v69 = v25;
  sub_1D8CFD888();
  sub_1D8CF48EC(&qword_1ECAB0200, &qword_1ECAB5F38, &qword_1D9191B50, MEMORY[0x1E695C058]);
  sub_1D8D02DF0();
  v28 = v6;
  v29 = v55;
  v30 = v26;
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB09E0, &qword_1ECAB5F30, &unk_1D9191B40, MEMORY[0x1E695BCB8]);
  v31 = v53;
  v32 = v62;
  sub_1D9177CEC();
  (*(v63 + 8))(v28, v32);
  sub_1D8D08A50(v9, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v58 + 8))(v30, v29);
  type metadata accessor for TranscriptData.TimeBombedURLs(0);
  sub_1D8CF48EC(&qword_1ECAB0408, &qword_1ECAB5F40, &qword_1D9191B58, MEMORY[0x1E695BE98]);
  v33 = v56;
  v34 = v60;
  sub_1D9177B9C();
  (*(v61 + 8))(v31, v34);
  v35 = v54;
  sub_1D8ED6300(v54);
  (*(v57 + 8))(v33, v59);
  v36 = v52;
  sub_1D8EC8C5C(v52, &v69);
  v37 = swift_allocObject();
  v38 = v51;
  *(v37 + 16) = v51;
  *(v37 + 24) = v21;
  v39 = v72;
  *(v37 + 64) = v71;
  *(v37 + 80) = v39;
  *(v37 + 96) = v73;
  v40 = v70;
  *(v37 + 32) = v69;
  *(v37 + 48) = v40;
  sub_1D8EC8C5C(v36, &v69);
  v41 = swift_allocObject();
  *(v41 + 16) = v38;
  *(v41 + 24) = v21;
  v42 = v72;
  *(v41 + 64) = v71;
  *(v41 + 80) = v42;
  *(v41 + 96) = v73;
  v43 = v70;
  *(v41 + 32) = v69;
  *(v41 + 48) = v43;
  sub_1D8CF48EC(&qword_1ECAB0B28, &qword_1ECAB5F50, &qword_1D9191B68, MEMORY[0x1E695BC80]);
  v44 = v38;
  swift_retain_n();
  v45 = v44;
  v46 = v65;
  v47 = v64;
  sub_1D9177B3C();

  (*(v68 + 8))(v35, v46);
  sub_1D8CF48EC(&qword_1ECAB0938, &qword_1ECAB5F58, &qword_1D9191B70, MEMORY[0x1E695BCC0]);
  v48 = v66;
  v49 = sub_1D9177B1C();
  (*(v67 + 8))(v47, v48);
  return v49;
}

uint64_t sub_1D8EC9844@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for MediaRequest.Params(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  sub_1D8EC9BE0(a1, &v18 - v9);
  sub_1D8D85B08(v10, v7);
  sub_1D8EC8C5C(a1, v19);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_1D8D85D0C(v7, v12 + v11);
  v13 = v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = v19[3];
  *(v13 + 32) = v19[2];
  *(v13 + 48) = v14;
  *(v13 + 64) = v20;
  v15 = v19[1];
  *v13 = v19[0];
  *(v13 + 16) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F60, &qword_1D9191B78);
  swift_allocObject();
  v16 = sub_1D9177A5C();
  result = sub_1D8D90BEC(v10);
  *a2 = v16;
  return result;
}

uint64_t sub_1D8EC99E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_attributes;
  v5 = v3 + *(type metadata accessor for ServerTranscript.Attributes(0) + 20) + v4;
  v6 = type metadata accessor for ServerTranscript.Attributes.AssetUrls(0);
  sub_1D8ECA48C(v5 + *(v6 + 20), a2);
  v7 = a2 + *(type metadata accessor for TranscriptData.TimeBombedURLs(0) + 20);

  return sub_1D8ECA48C(v5, v7);
}

uint64_t sub_1D8EC9A70(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  os_unfair_lock_lock(a3 + 6);
  sub_1D8ECA7A8(&a3[4], &v5);
  os_unfair_lock_unlock(a3 + 6);
}

uint64_t sub_1D8EC9AD0(uint64_t a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 6);
  sub_1D8ECA470(&a2[4], &v4);
  os_unfair_lock_unlock(a2 + 6);
}

char *sub_1D8EC9B30@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = sub_1D8F06AAC(a2);
  if (v6)
  {
    v7 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *a1;
    v11 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8F82E90();
      v9 = v11;
    }

    sub_1D8EC8D90(*(v9 + 48) + 72 * v7);
    v10 = *(*(v9 + 56) + 8 * v7);
    result = sub_1D8F7FC70(v7, v9);
    *a1 = v9;
  }

  else
  {
    v10 = 0;
  }

  *a3 = v10;
  return result;
}

uint64_t sub_1D8EC9BE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - v5;
  v37 = &v27 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D9189080;
  v38 = *a1;
  sub_1D8E40D20();
  *(v7 + 32) = sub_1D917927C();
  *(v7 + 40) = v8;
  v9 = sub_1D9176C2C();
  v10 = *(*(v9 - 8) + 56);
  v10(v6, 1, 1, v9);
  v11 = MEMORY[0x1E69E7CC0];
  v36 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v35 = sub_1D8D94DF8(v11);
  v34 = sub_1D8D951E0(v11);
  v33 = sub_1D8D9503C(v11);
  v32 = sub_1D8D9536C(v11);
  v31 = sub_1D8D9536C(v11);
  v30 = sub_1D8D953C4(v11);
  v28 = sub_1D8D952D8(v11);
  v29 = sub_1D8D95394(v11);
  v27 = sub_1D8D957C4(v11);
  *(a2 + 41) = 263;
  *(a2 + 43) = 5;
  *(a2 + 152) = 1;
  *(a2 + 201) = 1;
  v12 = type metadata accessor for MediaRequest.Params(0);
  v13 = v12[28];
  v10((a2 + v13), 1, 1, v9);
  v14 = (a2 + v12[29]);
  v15 = (a2 + v12[31]);
  v16 = v12[34];
  v17 = (a2 + v12[33]);
  v18 = (a2 + v12[35]);
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 40) = 50397188;
  v19 = v35;
  *(a2 + 48) = v36;
  *(a2 + 56) = v19;
  v20 = v33;
  *(a2 + 64) = v34;
  *(a2 + 72) = v11;
  v22 = v31;
  v21 = v32;
  *(a2 + 80) = v20;
  *(a2 + 88) = v21;
  v23 = v30;
  *(a2 + 96) = v22;
  *(a2 + 104) = v23;
  v24 = v28;
  *(a2 + 112) = &unk_1F545D928;
  *(a2 + 120) = v24;
  *(a2 + 128) = v11;
  *(a2 + 136) = v11;
  *(a2 + 144) = v7;
  *(a2 + 152) = 1;
  *(a2 + 160) = 0;
  *(a2 + 168) = 1;
  v25 = v27;
  *(a2 + 176) = v29;
  *(a2 + 184) = v25;
  *(a2 + 192) = 0;
  *(a2 + 200) = 257;
  *(a2 + 202) = 0;
  result = sub_1D8E26828(v37, a2 + v13);
  *v14 = 0;
  v14[1] = 0;
  *(a2 + v12[30]) = 0;
  *v15 = 0;
  v15[1] = 0;
  *(a2 + v12[32]) = v11;
  *v17 = 0;
  v17[1] = 0;
  *(a2 + v16) = 2;
  *v18 = 0;
  v18[1] = 0;
  return result;
}

void sub_1D8EC9EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = objc_allocWithZone(type metadata accessor for MediaRequestController());

  v10 = [v9 init];
  sub_1D8EC8C5C(a4, v14);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1D8D419F0;
  *(v11 + 24) = v8;
  v12 = v14[3];
  *(v11 + 64) = v14[2];
  *(v11 + 80) = v12;
  *(v11 + 96) = v15;
  v13 = v14[1];
  *(v11 + 32) = v14[0];
  *(v11 + 48) = v13;
  sub_1D904AD58(a3, 0, sub_1D8ECA5A8, v11);
}

void sub_1D8EC9FC4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void *, void), uint64_t a7, uint64_t a8)
{
  v9 = sub_1D8ECA5B4(a8, a1, a5);
  a6(v9, 0);

  sub_1D8E8A1A8(v9);
}

uint64_t sub_1D8ECA040(void *a1, uint64_t a2)
{
  v2 = (*a1 + OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_attributes);
  if (*v2 == *(a2 + 8) && v2[1] == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_1D9179ACC() & 1;
  }
}

uint64_t sub_1D8ECA0AC()
{
  v2 = *(v0 + 8);
  os_unfair_lock_lock((v2 + 24));
  sub_1D8ECA7C0((v2 + 16), &v3);
  os_unfair_lock_unlock((v2 + 24));
  return v3;
}

uint64_t _s18PodcastsFoundation35MAPITranscriptTimeBombedURLProviderV0C5ErrorO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D8ECA3E4(a1, v12);
  sub_1D8ECA3E4(a2, &v14);
  if (v13 == 2)
  {
    if (v15 != 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (v13 != 1)
    {
      if (v13)
      {
        sub_1D8ECA3E4(v12, v10);
        v4 = v11;
        if (v15 >= 3)
        {
          v6 = v19;
          v8[2] = v16;
          v8[3] = v17;
          v9 = v18;
          v8[0] = v14;
          v8[1] = v15;
          v7 = _s18PodcastsFoundation17TranscriptRequestV2eeoiySbAC_ACtFZ_0(v10, v8);
          sub_1D8EC8D90(v10);
          if (v7)
          {
            v3 = sub_1D8E8362C(v4, v6);

            sub_1D8EC8D90(v8);
            sub_1D8ECA41C(v12);
            return v3 & 1;
          }

          sub_1D8EC8D90(v8);

          sub_1D8ECA41C(v12);
          goto LABEL_13;
        }

        sub_1D8EC8D90(v10);
      }

      else if (!v15)
      {
        goto LABEL_9;
      }

LABEL_12:
      sub_1D8D08A50(v12, &qword_1ECAB5F28, &qword_1D9191B38);
LABEL_13:
      v3 = 0;
      return v3 & 1;
    }

    if (v15 != 1)
    {
      goto LABEL_12;
    }
  }

LABEL_9:
  sub_1D8ECA41C(v12);
  v3 = 1;
  return v3 & 1;
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation35MAPITranscriptTimeBombedURLProviderV0C5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_1D8ECA2E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 80))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8ECA340(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

double sub_1D8ECA39C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8ECA48C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D8ECA4FC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for MediaRequest.Params(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  sub_1D8EC9EAC(a1, a2, v2 + v6, v7);
}

void *sub_1D8ECA5B4(uint64_t a1, unint64_t a2, void *a3)
{
  if (!a3)
  {
    if (a2)
    {
      v8 = sub_1D8FBEEC0(a2);
      if (v8)
      {
        v9 = v8;
        MEMORY[0x1EEE9AC00](v8);
        v14[2] = a1;
        v10 = sub_1D8F4E034(sub_1D8ECA788, v14, v9);
        if (v10)
        {
          v3 = v10;

          return v3;
        }

        sub_1D8ECA734();
        swift_allocError();
        v3 = v13;
        sub_1D8EC8C5C(a1, v13);
        v3[9] = v9;
      }

      else
      {
        sub_1D8ECA734();
        swift_allocError();
        *v12 = 0;
        *(v12 + 8) = 0;
        *(v12 + 16) = 1;
        *(v12 + 24) = 0u;
        *(v12 + 40) = 0u;
        *(v12 + 56) = 0u;
        *(v12 + 72) = 0;
      }
    }

    else
    {
      sub_1D8ECA734();
      swift_allocError();
      *v11 = 0u;
      v11[1] = 0u;
      v11[2] = 0u;
      v11[3] = 0u;
      v11[4] = 0u;
    }
  }

  swift_willThrow();
  v5 = a3;
  return v3;
}

unint64_t sub_1D8ECA734()
{
  result = qword_1ECAB5F68;
  if (!qword_1ECAB5F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5F68);
  }

  return result;
}

double MTEpisode.transcriptRequest(priority:lifetime:)@<D0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *a1;
  v7 = *a2;
  v8 = [v3 storeTrackId];
  v9 = [v4 priceType];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1D917820C();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = [v4 transcriptIdentifier];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1D917820C();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v22 = v8 & ~(v8 >> 63);
  v23 = v11;
  v24 = v13;
  v25 = v16;
  v26 = v18;
  v21 = v6;
  v20 = v7;
  TranscriptEpisodeContext.transcriptRequest(priority:lifetime:)(&v21, &v20, a3);

  return result;
}

double sub_1D8ECA904(uint64_t a1, unsigned __int8 a2)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

double sub_1D8ECAA24(uint64_t a1, unsigned __int8 a2)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

double sub_1D8ECABA0(uint64_t a1, unsigned __int8 a2)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

double sub_1D8ECAD60(uint64_t a1, unsigned __int8 a2)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

double sub_1D8ECAE7C(uint64_t a1, unsigned __int8 a2)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t ShazamSignatureRequest.priority.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ShazamSignatureRequest(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t ShazamSignatureRequest.fileFormat.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ShazamSignatureRequest(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ShazamSignatureRequest.lifetime.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ShazamSignatureRequest(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ShazamSignatureRequest.trace.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ShazamSignatureRequest(0) + 36);

  return sub_1D8D412B0(a1, v3);
}

uint64_t sub_1D8ECB198()
{
  v1 = *(v0 + *(type metadata accessor for ShazamSignatureRequest(0) + 24));

  return v1;
}

uint64_t ShazamSignatureRequest.init(remoteUrl:priority:fileName:lifetime:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a2;
  v11 = *a5;
  v12 = type metadata accessor for ShazamSignatureRequest(0);
  v13 = a6 + v12[9];
  *(v13 + 32) = 0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  result = sub_1D8D5DE80(a1, a6);
  *(a6 + v12[5]) = v10;
  v15 = (a6 + v12[6]);
  *v15 = a3;
  v15[1] = a4;
  *(a6 + v12[8]) = v11;
  *(a6 + v12[7]) = 6;
  return result;
}

double ShazamSignatureRequest.init(generatedFrom:adamID:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = 0x80000001D91CCA60;
  v4 = 0;
  v23 = URL.md5()();
  v5 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v6 = &v22 + 2 * v4;
  while (++v4 != 3)
  {
    v7 = v6 + 2;
    v8 = *v6;
    v6 += 2;
    if (v8)
    {
      v9 = *(v7 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1D8D4241C(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_1D8D4241C((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v12 = &v5[16 * v11];
      *(v12 + 4) = v9;
      *(v12 + 5) = v8;
      goto LABEL_2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  sub_1D8D72B0C();
  v13 = sub_1D917817C();
  v15 = v14;
  v16 = sub_1D9176C2C();
  v17 = *(v16 - 8);
  (*(v17 + 8))(a1, v16);

  (*(v17 + 56))(a2, 1, 1, v16);
  v18 = type metadata accessor for ShazamSignatureRequest(0);
  v19 = a2 + v18[9];
  *(v19 + 32) = 0;
  result = 0.0;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(a2 + v18[5]) = 2;
  v21 = (a2 + v18[6]);
  *v21 = v13;
  v21[1] = v15;
  *(a2 + v18[8]) = 1;
  *(a2 + v18[7]) = 6;
  return result;
}

uint64_t sub_1D8ECB4C0()
{
  v1 = *v0;
  v2 = 0x725565746F6D6572;
  v3 = 0x656D614E656C6966;
  v4 = 0x6D726F46656C6966;
  if (v1 != 3)
  {
    v4 = 0x656D69746566696CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x797469726F697270;
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

uint64_t sub_1D8ECB564@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8ECF3C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8ECB58C(uint64_t a1)
{
  v2 = sub_1D8ECEF14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8ECB5C8(uint64_t a1)
{
  v2 = sub_1D8ECEF14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double ShazamSignatureRequest.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  sub_1D8D088B4(v2, &v13 - v9, &unk_1ECAB5910, &qword_1D9188C90);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1D9179DDC();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1D9179DDC();
    sub_1D8D68BC8(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1D917814C();
    (*(v5 + 8))(v7, v4);
  }

  v11 = type metadata accessor for ShazamSignatureRequest(0);
  sub_1D9179DEC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D8ECAD60(a1, *(v2 + *(v11 + 28)));
}

void *ShazamSignatureRequest.encode(_:)(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v5];
  v2 = v5[0];
  if (v1)
  {
    v3 = sub_1D9176C8C();
  }

  else
  {
    v3 = v2;
    sub_1D9176A6C();

    swift_willThrow();
  }

  return v3;
}

uint64_t ShazamSignatureRequest.decode(_:)(uint64_t a1, unint64_t a2)
{
  if (qword_1ECAB0CA0 != -1)
  {
    swift_once();
  }

  v5 = sub_1D917744C();
  __swift_project_value_buffer(v5, qword_1ECAB0CA8);
  v6 = sub_1D917741C();
  v7 = sub_1D9178CDC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D8CEC000, v6, v7, "Attempting signature unarchiving", v8, 2u);
    MEMORY[0x1DA72CB90](v8, -1, -1);
  }

  sub_1D8CF2154(0, &qword_1ECAAFDD0, 0x1E696ACD0);
  sub_1D8CF2154(0, &qword_1ECAAFE30, 0x1E697B7D0);
  v9 = sub_1D9178D5C();
  if (v2)
  {

LABEL_7:
    v10 = sub_1D917741C();
    v11 = sub_1D9178CDC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D8CEC000, v10, v11, "failed secure unarchiving, attempting dataRepresentation decoder...", v12, 2u);
      MEMORY[0x1DA72CB90](v12, -1, -1);
    }

    v13 = objc_allocWithZone(MEMORY[0x1E697B7D0]);
    sub_1D8D752C4(a1, a2);
    v14 = sub_1D8ECEE54(a1, a2);
    sub_1D8D7567C(a1, a2);
    return v14;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

  v14 = v9;
  v15 = sub_1D917741C();
  v16 = sub_1D9178CDC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1D8CEC000, v15, v16, "Preferring keyed archiver object.", v17, 2u);
    MEMORY[0x1DA72CB90](v17, -1, -1);
  }

  return v14;
}

uint64_t ShazamSignatureRequest.SignatureError.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

uint64_t ShazamSignatureRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F70, &qword_1D9191B90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8ECEF14();
  sub_1D9179F1C();
  v11[15] = 0;
  sub_1D9176C2C();
  sub_1D8D68BC8(&qword_1ECAB2CB0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1D917999C();
  if (!v2)
  {
    v9 = type metadata accessor for ShazamSignatureRequest(0);
    v11[14] = *(v3 + v9[5]);
    v11[13] = 1;
    sub_1D8ECEF68();
    sub_1D91799FC();
    v11[12] = 2;
    sub_1D91799BC();
    v11[11] = *(v3 + v9[7]);
    v11[10] = 3;
    sub_1D8ECEFBC();
    sub_1D91799FC();
    v11[9] = *(v3 + v9[8]);
    v11[8] = 4;
    sub_1D8ECF010();
    sub_1D91799FC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ShazamSignatureRequest.hashValue.getter()
{
  sub_1D9179DBC();
  ShazamSignatureRequest.hash(into:)(v1);
  return sub_1D9179E1C();
}

uint64_t ShazamSignatureRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F78, &qword_1D9191B98);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for ShazamSignatureRequest(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v12[*(v13 + 36)];
  *(v14 + 32) = 0;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  v26 = v14;
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8ECEF14();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    return sub_1D8D08A50(v26, &qword_1ECAB4928, &qword_1D918B380);
  }

  else
  {
    v15 = v24;
    v16 = v12;
    sub_1D9176C2C();
    v35 = 0;
    sub_1D8D68BC8(&qword_1ECAB2C98, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    v17 = v25;
    sub_1D917989C();
    sub_1D8D5DE80(v6, v16);
    v33 = 1;
    sub_1D8ECF064();
    sub_1D91798FC();
    *(v16 + v10[5]) = v34;
    v32 = 2;
    v18 = sub_1D91798BC();
    v19 = (v16 + v10[6]);
    *v19 = v18;
    v19[1] = v20;
    v30 = 3;
    sub_1D8ECF0B8();
    sub_1D91798FC();
    *(v16 + v10[7]) = v31;
    v28 = 4;
    sub_1D8ECF10C();
    sub_1D91798FC();
    (*(v15 + 8))(v9, v17);
    *(v16 + v10[8]) = v29;
    sub_1D8ECF160(v16, v23);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    return sub_1D8ECF1C4(v16);
  }
}

uint64_t sub_1D8ECC338()
{
  sub_1D9179DBC();
  ShazamSignatureRequest.hash(into:)(v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8ECC37C(uint64_t a1)
{
  sub_1D9179DBC();
  ShazamSignatureRequest.hash(into:)(v2);
  return sub_1D9179E1C();
}

double sub_1D8ECC3F8@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 24));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

uint64_t sub_1D8ECC4A0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = ShazamSignatureRequest.decode(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

char *sub_1D8ECC4D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4578, &qword_1D9189FF8);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1D8ECC5F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4788, &qword_1D918A158);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 240);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[240 * v8])
    {
      memmove(v12, v13, 240 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8ECC734(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5FF8, &qword_1D9191F80);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D8ECC838(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6188, &qword_1D91921C8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D8ECCA34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6158, &qword_1D9192198);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D8ECCBB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6010, &unk_1D9191FA0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D8ECCCE0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1D8ECCEDC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_1D8ECD024(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6110, &qword_1D9192118);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D8ECD130(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB60E0, &unk_1D91920E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45D0, &qword_1D918A040);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8ECD264(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB60D8, &qword_1D91920D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1D8ECD398(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1D8ECD4B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB60B8, &qword_1D91920B8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D8ECD5DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB60A0, &qword_1D91920A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 56 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1D8ECD708(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_1D8ECD874(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_1D8ECD988(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6068, &qword_1D9192050);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6070, &qword_1D9192058);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8ECDAEC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}