unint64_t sub_1A4578FE4()
{
  result = qword_1EB121AA8;
  if (!qword_1EB121AA8)
  {
    sub_1A41C3F80(255);
    sub_1A3D6E520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB121AA8);
  }

  return result;
}

void sub_1A457905C(uint64_t a1)
{
  if (!qword_1EB13DAD8)
  {
    sub_1A4578DAC(255, &qword_1EB13DAE0, sub_1A45790E4, sub_1A41EF370);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13DAD8);
    }
  }
}

void sub_1A45790E4(uint64_t a1)
{
  if (!qword_1EB13DAE8)
  {
    type metadata accessor for LemonadeShelvesStack(255);
    sub_1A45795CC(255, &qword_1EB1278A0, MEMORY[0x1E697DA60], MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13DAE8);
    }
  }
}

void sub_1A4579170(uint64_t a1)
{
  if (!qword_1EB13DAF0)
  {
    sub_1A4579424(255, &qword_1EB13DAF8, sub_1A4579200, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13DAF0);
    }
  }
}

void sub_1A4579270(uint64_t a1, double a2)
{
  if (!qword_1EB13DB10)
  {
    sub_1A4579374(255);
    sub_1A43C3634(255);
    sub_1A457A2D4(&qword_1EB13DB20, sub_1A4579374, MEMORY[0x1E6981810]);
    sub_1A457A2D4(&qword_1EB124578, sub_1A43C3634, MEMORY[0x1E697E238]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13DB10);
    }
  }
}

void sub_1A4579374(uint64_t a1)
{
  if (!qword_1EB13DB18)
  {
    type metadata accessor for LemonadeSharedLibraryFilterView(255);
    sub_1A457A2D4(&qword_1EB136DB8, type metadata accessor for LemonadeSharedLibraryFilterView, &unk_1A532AC30);
    v1 = sub_1A524B794();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13DB18);
    }
  }
}

void sub_1A4579424(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A4579490()
{
  result = qword_1EB13DB38;
  if (!qword_1EB13DB38)
  {
    sub_1A4579424(255, &qword_1EB13DA88, sub_1A4578A7C, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
    sub_1A457A2D4(&qword_1EB13DB40, sub_1A4578A7C, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DB38);
  }

  return result;
}

void sub_1A4579578(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A45795CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A457961C(double a1)
{
  result = qword_1EB13DB50;
  if (!qword_1EB13DB50)
  {
    sub_1A4578898(255, a1);
    sub_1A45789E0(255);
    sub_1A457A2D4(&qword_1EB13DB48, sub_1A45789E0, MEMORY[0x1E69C1CB8]);
    swift_getOpaqueTypeConformance2();
    sub_1A3D6D4B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DB50);
  }

  return result;
}

unint64_t sub_1A45796FC()
{
  result = qword_1EB129770;
  if (!qword_1EB129770)
  {
    sub_1A45795CC(255, &qword_1EB129778, &type metadata for LemonadeScrollTargetIdentifier, MEMORY[0x1E69E6720]);
    sub_1A4579798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129770);
  }

  return result;
}

unint64_t sub_1A4579798()
{
  result = qword_1EB129780;
  if (!qword_1EB129780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129780);
  }

  return result;
}

uint64_t sub_1A45797EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LemonadeAccountView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A457578C(a1, v6, a2);
}

void sub_1A457986C(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LemonadeAccountView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1A52488B4() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1A4579B88(0);
  sub_1A4575D64((v1 + v4), v1 + v7, a1 + *(v8 + 44));
  sub_1A4579424(0, &qword_1EB13DA88, sub_1A4578A7C, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
  v10 = (a1 + *(v9 + 36));
  *v10 = sub_1A45781C0;
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0;
}

uint64_t sub_1A45799AC(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for LemonadeAccountView(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  sub_1A52488B4();

  return sub_1A45781F8(a2, (v2 + v5));
}

uint64_t sub_1A4579A80(uint64_t a1)
{
  sub_1A45795CC(0, &qword_1EB129778, &type metadata for LemonadeScrollTargetIdentifier, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4579B00(uint64_t a1, uint64_t a2)
{
  sub_1A45795CC(0, &qword_1EB129778, &type metadata for LemonadeScrollTargetIdentifier, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A4579B88(uint64_t a1)
{
  if (!qword_1EB13DB58)
  {
    sub_1A4578B10(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13DB58);
    }
  }
}

uint64_t sub_1A4579BF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4579C58(uint64_t a1, uint64_t a2)
{
  sub_1A4579424(0, &qword_1EB13DAF8, sub_1A4579200, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4579CF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1A4579D5C(id a1, char a2)
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

uint64_t objectdestroy_16Tm()
{
  v1 = type metadata accessor for LemonadeAccountView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_1A52488B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v0 + v3;

  v9 = *(v1 + 24);
  sub_1A3E71AC8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1A5242D14();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  v11 = v8 + *(v1 + 28);
  sub_1A4575CFC(0, &qword_1EB1272C0, type metadata accessor for LemonadeUserInfoViewModel, MEMORY[0x1E6981E90]);
  (*(*(v12 - 8) + 8))(v11, v12);
  sub_1A4575CFC(0, &qword_1EB127248, type metadata accessor for LemonadeUserInfoViewModel, MEMORY[0x1E6981E98]);

  (*(v6 + 8))(v0 + ((v3 + v4 + v7) & ~v7), v5);

  return swift_deallocObject();
}

double sub_1A457A098()
{
  v1 = *(type metadata accessor for LemonadeAccountView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_1A52488B4();
  v3 = (*(**(v0 + v2) + 400))();
  MEMORY[0x1A5907080](v3, 1.0, 0.0);
  sub_1A52483D4();

  return result;
}

uint64_t sub_1A457A1E0(uint64_t a1, uint64_t a2)
{
  sub_1A4578DAC(0, &qword_1EB13DAE0, sub_1A45790E4, sub_1A41EF370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A457A274(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A457A2D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A457A31C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A457A37C()
{
  v1 = type metadata accessor for LemonadeAccountView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  v3 = *v2;
  v4 = [*(*v2 + 32) actionConfirmationAlertTitle];
  if (v4 && (v4, (v5 = [*(v3 + 32) actionConfirmationAlertButtonTitle]) != 0))
  {

    sub_1A45795CC(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6B4();
  }

  else
  {
    v6 = [*(v3 + 32) action];
    if (v6)
    {
      v7 = v6;
      (*(v6 + 2))();

      _Block_release(v7);
    }
  }
}

id sub_1A457A4E8@<X0>(void *a1@<X8>)
{
  result = [*(**(v1 + 16) + 32) actionConfirmationAlertTitle];
  if (result)
  {
    v4 = result;
    sub_1A524C674();

    sub_1A3D5F9DC();
    result = sub_1A524A464();
    v8 = v7 & 1;
  }

  else
  {
    v5 = 0;
    v8 = 0;
    v6 = 0;
  }

  *a1 = result;
  a1[1] = v5;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

void sub_1A457A588()
{
  v1 = *(type metadata accessor for LemonadeAccountView(0) - 8);
  v2 = [*(*(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80))) + 32) action];
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))();

    _Block_release(v3);
  }
}

uint64_t sub_1A457A6B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1A457A75C@<D0>(void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = a5 + *(type metadata accessor for LemonadeNavigationStack(0, a3, a4, a3) + 40);
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  sub_1A3C29B34(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);

  v7 = sub_1A524BAC4();
  a2(v7);

  return result;
}

uint64_t sub_1A457A884@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v112 = a2;
  sub_1A457EF6C(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  v113 = v3;
  v122 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v120 = *(a1 + 16);
  v4 = v120;
  v121 = &v86 - v5;
  v6 = type metadata accessor for LemonadeNavigationDestination(255);
  sub_1A457F5CC(255, &qword_1EB1241B0, type metadata accessor for LemonadeNavigationDestinationView, type metadata accessor for NavigationVisibilityModifier, MEMORY[0x1E697E830]);
  v8 = v7;
  v9 = *(a1 + 24);
  v10 = sub_1A3C29B34(&qword_1EB1298A0, type metadata accessor for LemonadeNavigationDestination, &unk_1A53211C0);
  v11 = sub_1A457B6BC();
  v130 = v4;
  v131 = v6;
  v132 = v8;
  v133 = v9;
  v119 = v9;
  v134 = v10;
  v135 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v130 = v4;
  v131 = v6;
  v132 = v8;
  v133 = v9;
  v134 = v10;
  v135 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = type metadata accessor for NavigationStackOrVStack(0, OpaqueTypeMetadata2, OpaqueTypeConformance2, v14);
  v100 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v94 = &v86 - v16;
  sub_1A3D639BC(255);
  v88 = v15;
  v17 = sub_1A5248804();
  v109 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v116 = &v86 - v18;
  v19 = type metadata accessor for LemonadeNavigationContext(255);
  v20 = MEMORY[0x1E697E048];
  sub_1A457ECB4(255, &qword_1EB128468, sub_1A457B820, MEMORY[0x1E697E048]);
  v22 = v21;
  WitnessTable = swift_getWitnessTable();
  v89 = WitnessTable;
  v24 = sub_1A3C29B34(&qword_1EB127950, sub_1A3D639BC, MEMORY[0x1E6980A18]);
  v137 = WitnessTable;
  v138 = v24;
  v25 = swift_getWitnessTable();
  v87 = type metadata accessor for LemonadeNavigationContext;
  v26 = sub_1A3C29B34(&qword_1EB129D48, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  v27 = sub_1A457B848();
  v130 = v17;
  v131 = v19;
  v28 = v17;
  v93 = v17;
  v132 = v22;
  v133 = v25;
  v29 = v22;
  v90 = v22;
  v92 = v25;
  v134 = v26;
  v135 = v27;
  v30 = v26;
  v31 = v27;
  v91 = v27;
  v32 = swift_getOpaqueTypeMetadata2();
  v110 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v117 = &v86 - v33;
  sub_1A457ECB4(255, &qword_1EB1288B0, sub_1A457B99C, v20);
  v35 = v34;
  v130 = v28;
  v131 = v19;
  v86 = v19;
  v132 = v29;
  v133 = v25;
  v134 = v26;
  v135 = v31;
  v115 = v26;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = sub_1A457B9F4();
  v38 = sub_1A457BA48();
  v130 = v32;
  v131 = &type metadata for LemonadeNavigationContext.SheetContent;
  v39 = v32;
  v99 = v32;
  v132 = v35;
  v133 = v36;
  v40 = v35;
  v95 = v35;
  v98 = v36;
  v134 = v37;
  v135 = v38;
  v97 = v37;
  v96 = v38;
  v41 = swift_getOpaqueTypeMetadata2();
  v106 = v41;
  v111 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v118 = &v86 - v42;
  sub_1A457B820(255);
  v44 = v43;
  v102 = v43;
  v130 = v39;
  v131 = &type metadata for LemonadeNavigationContext.SheetContent;
  v132 = v40;
  v133 = v36;
  v134 = v37;
  v135 = v38;
  v45 = swift_getOpaqueTypeConformance2();
  v104 = v45;
  v103 = sub_1A457B8EC();
  v130 = v41;
  v131 = v19;
  v132 = v44;
  v133 = v45;
  v134 = v30;
  v135 = v103;
  v108 = swift_getOpaqueTypeMetadata2();
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v101 = &v86 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v105 = &v86 - v48;
  v49 = v113;
  v50 = v114;
  sub_1A524BAA4();
  sub_1A3C29B34(&qword_1EB129D50, v87, &protocol conformance descriptor for LemonadeNavigationContext);

  v51 = v94;
  sub_1A524BAC4();
  v52 = v88;
  v54 = v119;
  v53 = v120;
  sub_1A457BB1C(v50, v120, v119, v55, &v51[*(v88 + 36)]);

  swift_getKeyPath();
  sub_1A524BAA4();
  sub_1A524A964();

  (*(v100 + 8))(v51, v52);
  v56 = v121;
  sub_1A524BAB4();
  swift_getKeyPath();
  sub_1A524BAD4();

  v57 = *(v122 + 8);
  v122 += 8;
  v57(v56, v49);
  v94 = v57;
  v123 = v130;
  v124 = v131;
  v125 = v132;
  v58 = sub_1A457C87C(v50, v53, v54, &unk_1F1716958);
  v59 = swift_allocObject();
  *(v59 + 16) = sub_1A457F340;
  *(v59 + 24) = v58;
  v100 = swift_checkMetadataState();
  swift_checkMetadataState();
  v60 = v93;
  v61 = v116;
  sub_1A524B004();

  (*(v109 + 8))(v61, v60);
  v62 = v121;
  sub_1A524BAB4();
  swift_getKeyPath();
  sub_1A524BAD4();

  v57(v62, v49);
  v63 = v132;
  v64 = v133;
  v65 = v134;
  v66 = v135;
  v123 = v130;
  v124 = v131;
  v125 = v132;
  v126 = v133;
  v127 = v134;
  v128 = v135;
  v129 = v136;
  v67 = sub_1A457C87C(v50, v120, v119, &unk_1F1716930);
  v68 = swift_allocObject();
  *(v68 + 16) = sub_1A457F234;
  *(v68 + 24) = v67;
  swift_checkMetadataState();
  v69 = v99;
  v70 = v117;
  sub_1A524B004();

  v71 = sub_1A3DD2224(v63, v64, v65, v66);
  (*(v110 + 8))(v70, v69, v71);
  v72 = v121;
  v73 = v113;
  v74 = v114;
  sub_1A524BAB4();
  swift_getKeyPath();
  sub_1A524BAD4();

  (v94)(v72, v73);
  v123 = v130;
  v124 = v131;
  v125 = v132;
  v75 = sub_1A457C87C(v74, v120, v119, &unk_1F1716908);
  v76 = swift_allocObject();
  *(v76 + 16) = sub_1A457EFF0;
  *(v76 + 24) = v75;
  swift_checkMetadataState();
  v77 = v101;
  v78 = v106;
  v79 = v118;
  sub_1A524AB94();

  (*(v111 + 8))(v79, v78);
  v80 = v107;
  v81 = *(v107 + 16);
  v82 = v105;
  v83 = v108;
  v81(v105, v77, v108);
  v84 = *(v80 + 8);
  v84(v77, v83);
  v81(v112, v82, v83);
  return (v84)(v82, v83);
}

uint64_t type metadata accessor for NavigationVisibilityModifier(uint64_t a1)
{
  result = qword_1EB165530;
  if (!qword_1EB165530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A457B6BC()
{
  result = qword_1EB1241B8;
  if (!qword_1EB1241B8)
  {
    sub_1A457F5CC(255, &qword_1EB1241B0, type metadata accessor for LemonadeNavigationDestinationView, type metadata accessor for NavigationVisibilityModifier, MEMORY[0x1E697E830]);
    sub_1A3C29B34(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView, &unk_1A536BD00);
    sub_1A457B7B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1241B8);
  }

  return result;
}

unint64_t sub_1A457B7B0()
{
  result = qword_1EB165548[0];
  if (!qword_1EB165548[0])
  {
    type metadata accessor for NavigationVisibilityModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB165548);
  }

  return result;
}

unint64_t sub_1A457B848()
{
  result = qword_1EB128470;
  if (!qword_1EB128470)
  {
    sub_1A457ECB4(255, &qword_1EB128468, sub_1A457B820, MEMORY[0x1E697E048]);
    sub_1A457B8EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128470);
  }

  return result;
}

unint64_t sub_1A457B8EC()
{
  result = qword_1EB128830;
  if (!qword_1EB128830)
  {
    sub_1A457B820(255);
    sub_1A3C29B34(&qword_1EB129B28, sub_1A4138EC8, &protocol conformance descriptor for LemonadeNavigationContainer<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128830);
  }

  return result;
}

void sub_1A457B99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EB12A308)
  {
    v4 = type metadata accessor for LemonadeSheetContent(0, MEMORY[0x1E6981910], MEMORY[0x1E6981900], a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB12A308);
    }
  }
}

unint64_t sub_1A457B9F4()
{
  result = qword_1EB129D60;
  if (!qword_1EB129D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129D60);
  }

  return result;
}

unint64_t sub_1A457BA48()
{
  result = qword_1EB1288B8;
  if (!qword_1EB1288B8)
  {
    sub_1A457ECB4(255, &qword_1EB1288B0, sub_1A457B99C, MEMORY[0x1E697E048]);
    sub_1A3C29B34(&unk_1EB12A310, sub_1A457B99C, &unk_1A5346BBC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1288B8);
  }

  return result;
}

uint64_t sub_1A457BB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a1;
  v35 = a5;
  v28 = a2;
  v7 = type metadata accessor for LemonadeNavigationStack(0, a2, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v27 - v9;
  v11 = type metadata accessor for LemonadeNavigationDestination(255);
  sub_1A457F5CC(255, &qword_1EB1241B0, type metadata accessor for LemonadeNavigationDestinationView, type metadata accessor for NavigationVisibilityModifier, MEMORY[0x1E697E830]);
  v13 = v12;
  v30 = v12;
  v14 = sub_1A3C29B34(&qword_1EB1298A0, type metadata accessor for LemonadeNavigationDestination, &unk_1A53211C0);
  v33 = v14;
  v31 = sub_1A457B6BC();
  v36 = a2;
  v37 = v11;
  v38 = v13;
  v39 = a3;
  v40 = v14;
  v41 = v31;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v29 = v27 - v19;
  v27[1] = *(v7 + 36);
  v27[0] = swift_checkMetadataState();
  (*(v8 + 16))(v10, v34, v7);
  v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v28;
  *(v21 + 24) = a3;
  (*(v8 + 32))(v21 + v20, v10, v7);
  swift_checkMetadataState();
  sub_1A524AE04();

  v22 = *(v15 + 16);
  v23 = v29;
  v24 = OpaqueTypeMetadata2;
  v22(v29, v17, OpaqueTypeMetadata2);
  v25 = *(v15 + 8);
  v25(v17, v24);
  v22(v35, v23, v24);
  return (v25)(v23, v24);
}

uint64_t sub_1A457BEA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A418E1E0(a1, v6);
  sub_1A457EF6C(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  sub_1A524BAA4();
  sub_1A487864C(v6, v12, 0, a2);
  sub_1A524BAA4();
  v7 = v12;
  sub_1A457F5CC(0, &qword_1EB1241B0, type metadata accessor for LemonadeNavigationDestinationView, type metadata accessor for NavigationVisibilityModifier, MEMORY[0x1E697E830]);
  v9 = a2 + *(v8 + 36);
  sub_1A418E1E0(a1, v9);
  result = type metadata accessor for NavigationVisibilityModifier(0);
  *(v9 + *(result + 20)) = v7;
  return result;
}

double sub_1A457C064@<D0>(void (*a1)()@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A457B820(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for LemonadeNavigationDestinationView(0);
  v15 = sub_1A3C29B34(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView, &unk_1A536BD00);

  LemonadeNavigationContainer.init(navigationContext:content:)(v16, sub_1A457F3BC, v14, v15, v13);
  v17 = (v13 + *(v11 + 44));
  *v17 = sub_1A457F3D8;
  v17[1] = a1;
  v17[2] = 0;
  v17[3] = 0;
  v18 = v3 + *(a2 + 40);
  v20 = *v18;
  v19 = *(v18 + 8);
  v21 = *(v18 + 16);
  v22 = *(v18 + 17);

  if (v22 != 1)
  {
    sub_1A457F3E0(v20, v19, v21, 0);
    v23 = sub_1A524D254();
    v24 = sub_1A524A014();
    sub_1A5246DF4(v23, &dword_1A3C1C000, v24, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    v25 = sub_1A3EF9960(v20, v19, v21, 0);
    v35 = *(v7 + 8);
    v35(v9, v6, v25);
    v36 = v38;

    v26 = sub_1A524D254();
    v27 = sub_1A524A014();
    sub_1A5246DF4(v26, &dword_1A3C1C000, v27, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    v28 = sub_1A3EF9960(v20, v19, v21, 0);
    v35(v9, v6, v28);
  }

  sub_1A524BC74();
  sub_1A52481F4();
  v29 = v37;
  sub_1A457F3EC(v13, v37, sub_1A457B820);
  sub_1A457ECB4(0, &qword_1EB128468, sub_1A457B820, MEMORY[0x1E697E048]);
  v31 = (v29 + *(v30 + 36));
  v32 = v39;
  *v31 = v38;
  v31[1] = v32;
  result = *&v40;
  v31[2] = v40;
  return result;
}

double sub_1A457C410@<D0>(uint64_t a1@<X8>)
{
  sub_1A4655F04(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

double sub_1A457C458(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = *(a1 + 32);
  sub_1A457F2B8(v4, v3);
  return sub_1A4655FFC(v4);
}

double sub_1A457C4A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1A5249234();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A457B99C(0, v11, v12, v13);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(a1 + 32);
  v38 = a1;
  sub_1A4546738(0, 0, v17, sub_1A457F2B0, MEMORY[0x1E6981910], MEMORY[0x1E6981900], v16);
  v18 = v3 + *(a2 + 40);
  v20 = *v18;
  v19 = *(v18 + 8);
  v21 = *(v18 + 16);
  if (*(v18 + 17) != 1)
  {

    v22 = sub_1A524D254();
    v23 = sub_1A524A014();
    v37 = a3;
    v24 = v23;
    sub_1A5246DF4(v22, &dword_1A3C1C000, v23, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    v25 = sub_1A3EF9960(v20, v19, v21, 0);
    v26 = *(v8 + 8);
    v26(v10, v7, v25);
    v35 = v7;
    v36 = v39;

    v27 = sub_1A524D254();
    v28 = sub_1A524A014();
    sub_1A5246DF4(v27, &dword_1A3C1C000, v28, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    a3 = v37;
    sub_1A5249224();
    swift_getAtKeyPath();
    v29 = sub_1A3EF9960(v20, v19, v21, 0);
    v26(v10, v35, v29);
  }

  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A457F3EC(v16, a3, sub_1A457B99C);
  sub_1A457ECB4(0, &qword_1EB1288B0, sub_1A457B99C, MEMORY[0x1E697E048]);
  v31 = (a3 + *(v30 + 36));
  v32 = v40;
  *v31 = v39;
  v31[1] = v32;
  result = *&v41;
  v31[2] = v41;
  return result;
}

uint64_t sub_1A457C7E0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = *(a1 + 32);
  return v2(v5);
}

uint64_t sub_1A457C87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for LemonadeNavigationStack(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return v13;
}

uint64_t sub_1A457C9A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(a1 + 16))(v10);
  v3 = __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v7 = sub_1A524B8E4();
  result = __swift_destroy_boxed_opaque_existential_0(v10);
  *a2 = v7;
  return result;
}

uint64_t sub_1A457CA98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A418E1E0(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootDestination, v6);

  return sub_1A487864C(v6, a1, 0, a2);
}

uint64_t sub_1A457CB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = sub_1A524B894();
  v52 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v51 = (&v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v50 - v8;
  sub_1A457EF6C(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v50 - v12;
  sub_1A44F54B0(255);
  v53 = v14;
  v55 = v4;
  v56 = v3;
  v15 = sub_1A5248834();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v54 = &v50 - v20;
  v21 = sub_1A5249754();
  v58 = *(v21 - 8);
  v59 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v57 = &v50 - v22;
  sub_1A524BAA4();
  v23 = sub_1A4655004();

  if (v23)
  {
    goto LABEL_5;
  }

  if (qword_1EB181430 != -1)
  {
    v24 = swift_once();
  }

  if (byte_1EB181438 == 1)
  {
LABEL_5:
    sub_1A524BAB4();
    swift_getKeyPath();
    sub_1A524BAD4();

    v25 = (*(v11 + 8))(v13, v10);
    v51 = &v50;
    v61 = v63;
    v62 = v64;
    MEMORY[0x1EEE9AC00](v25);
    v52 = v5;
    v26 = v55;
    *(&v50 - 4) = v56;
    *(&v50 - 3) = v26;
    sub_1A3C29B34(&qword_1EB126F10, sub_1A44F54B0, MEMORY[0x1E69E6318]);
    sub_1A3C29B34(&qword_1EB126F08, sub_1A44F54B0, MEMORY[0x1E69E6338]);
    sub_1A3C29B34(&qword_1EB126F00, sub_1A44F54B0, MEMORY[0x1E69E6348]);
    v27 = sub_1A3C29B34(&qword_1EB1298A0, type metadata accessor for LemonadeNavigationDestination, &unk_1A53211C0);
    v48 = v26;
    v49 = v27;
    v28 = v52;
    sub_1A5248814();
    WitnessTable = swift_getWitnessTable();
    v30 = *(v16 + 16);
    v31 = v54;
    v30(v54, v18, v15);
    v32 = *(v16 + 8);
    v32(v18, v15);
    v30(v18, v31, v15);
    v33 = swift_getWitnessTable();
    v34 = v57;
    sub_1A3DF4798(v18, v15, v28, WitnessTable, v33);
    v32(v18, v15);
    v32(v31, v15);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v24);
    v35 = v55;
    *(&v50 - 4) = v56;
    *(&v50 - 3) = v35;
    v48 = v2;
    sub_1A5249574();
    v36 = v51;
    sub_1A524B884();
    v37 = swift_getWitnessTable();
    v38 = v52;
    v39 = *(v52 + 16);
    v40 = v50;
    v39(v50, v36, v5);
    v41 = *(v38 + 8);
    v41(v36, v5);
    v39(v36, v40, v5);
    v42 = swift_getWitnessTable();
    v34 = v57;
    sub_1A3DF4890(v36, v15, v5, v42, v37);
    v41(v36, v5);
    v41(v40, v5);
  }

  v43 = swift_getWitnessTable();
  v44 = swift_getWitnessTable();
  v65 = v43;
  v66 = v44;
  v45 = v59;
  swift_getWitnessTable();
  v46 = v58;
  (*(v58 + 16))(v60, v34, v45);
  return (*(v46 + 8))(v34, v45);
}

uint64_t sub_1A457D2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NavigationStackOrVStack(0, v9, v10, v11);
  v13 = *(v6 + 16);
  v13(v8, a1 + *(v12 + 36), a2);
  v13(a3, v8, a2);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_1A457D3F0()
{
  result = sub_1A457D414();
  byte_1EB181438 = result & 1;
  return result;
}

id sub_1A457D414()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_1A524C634();
  v6 = [v4 BOOLForKey_];

  if (v6)
  {
    v7 = sub_1A3C38A40();
    (*(v1 + 16))(v3, v7, v0);
    v8 = sub_1A5246F04();
    v9 = sub_1A524D264();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1A3C1C000, v8, v9, "LemonadeUseNavigationStack is enabled", v10, 2u);
      MEMORY[0x1A590EEC0](v10, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }

  return v6;
}

uint64_t sub_1A457D5D8(uint64_t a1)
{
  sub_1A457F5CC(0, &qword_1EB13DB70, sub_1A457EC8C, sub_1A457EDCC, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - v4;
  sub_1A457EC8C(0);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A418E1E0(v1, v12);
  if (swift_getEnumCaseMultiPayload() - 12 > 8)
  {
    sub_1A457EDCC(0);
    (*(*(v17 - 8) + 16))(v5, a1, v17);
    swift_storeEnumTagMultiPayload();
    sub_1A457EE30();
    sub_1A3C29B34(&qword_1EB13DB90, sub_1A457EDCC, MEMORY[0x1E697FDF8]);
    sub_1A5249744();
    return sub_1A457EF10(v12);
  }

  else
  {
    sub_1A457EF10(v12);
    type metadata accessor for NavigationVisibilityModifier(0);
    sub_1A4654080();
    sub_1A457EDCC(0);
    sub_1A3C29B34(&qword_1EB13DB90, sub_1A457EDCC, MEMORY[0x1E697FDF8]);
    sub_1A524AD74();
    v13 = sub_1A5248874();
    v14 = sub_1A524A064();
    v15 = &v9[*(v7 + 36)];
    *v15 = v13;
    v15[8] = v14;
    sub_1A3D09C54(v9, v5);
    swift_storeEnumTagMultiPayload();
    sub_1A457EE30();
    sub_1A5249744();
    return sub_1A3D09CB8(v9);
  }
}

uint64_t (*EnvironmentValues.customAssetSelectionHandler.getter())(uint64_t, uint64_t)
{
  sub_1A457D984();
  sub_1A5249244();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_1A423CCD0;
}

unint64_t sub_1A457D984()
{
  result = qword_1EB15DBD0[0];
  if (!qword_1EB15DBD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15DBD0);
  }

  return result;
}

uint64_t EnvironmentValues.customAssetSelectionHandler.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_1A457D984();
  return sub_1A5249254();
}

void (*EnvironmentValues.customAssetSelectionHandler.modify(uint64_t (***a1)(uint64_t, uint64_t)))(uint64_t **a1, char a2, __n128 a3)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_1A457D984();
  sub_1A5249244();
  v5 = v4[2];
  if (v5)
  {
    v6 = v4[3];
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_1A457F664;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *v4 = v8;
  v4[1] = v7;
  return sub_1A457DB38;
}

void sub_1A457DB38(uint64_t **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];
  if (a2)
  {
    if (v4)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v4;
      *(v6 + 24) = v5;
      v7 = sub_1A457F650;
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    v3[2] = v7;
    v3[3] = v6;
    sub_1A3C66EE8(v4, v5);
    sub_1A5249254();
    sub_1A3C33378(*v3, v3[1]);
  }

  else
  {
    if (v4)
    {
      v8 = swift_allocObject();
      *(v8 + 16) = v4;
      *(v8 + 24) = v5;
      v9 = sub_1A457F650;
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    v3[2] = v9;
    v3[3] = v8;
    sub_1A5249254();
  }

  free(v3);
}

void static SegmentedControlOpacityPreferenceKey.defaultValue.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  qword_1EB13DB60 = a1;
  byte_1EB13DB68 = a2 & 1;
}

void sub_1A457DD44(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_1EB13DB68;
  *a1 = qword_1EB13DB60;
  *(a1 + 8) = v2;
}

void sub_1A457DD98(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  qword_1EB13DB60 = v1;
  byte_1EB13DB68 = v2;
}

uint64_t static SegmentedControlOpacityPreferenceKey.reduce(value:nextValue:)(uint64_t a1, uint64_t (*a2)(void))
{
  if (*(a1 + 8) == 1)
  {
    result = a2();
  }

  else
  {
    v4 = 0;
    result = *a1;
  }

  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

void *sub_1A457DE84(void *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*(result + 8) == 1)
  {
    result = a2(&v5);
    v3 = v5;
    v4 = v6;
  }

  else
  {
    v4 = 0;
    v3 = *result;
  }

  *v2 = v3;
  *(v2 + 8) = v4;
  return result;
}

void sub_1A457DEEC(uint64_t a1)
{
  sub_1A457EF6C(319, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1A457EF6C(319, &unk_1EB124680, sub_1A3E316EC, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A457DFEC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  sub_1A457EF6C(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0xFE)
  {
    v12 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  v14 = *(v9 + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v15 <= 3)
  {
    v16 = ((a2 - v12 + 0xFFFF) >> 16) + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = *(a1 + v15);
      if (!v19)
      {
        goto LABEL_30;
      }
    }

LABEL_26:
    v21 = (v19 - 1) << (8 * v15);
    if (v15 <= 3)
    {
      v22 = *a1;
    }

    else
    {
      v21 = 0;
      v22 = *a1;
    }

    return v12 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v15);
    if (*(a1 + v15))
    {
      goto LABEL_26;
    }
  }

LABEL_30:
  if (v8 == v12)
  {
    v23 = *(v7 + 48);

    return v23(a1);
  }

  else
  {
    v24 = (a1 + v13) & ~v11;
    if (v10 == v12)
    {
      v25 = *(v9 + 48);

      return v25(v24, v10);
    }

    else
    {
      v26 = *(((v14 + v24) & 0xFFFFFFFFFFFFFFF8) + 17);
      if (v26 > 1)
      {
        return (v26 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_1A457E260(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  sub_1A457EF6C(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v9 + 64);
  v14 = *(v11 + 80);
  v15 = *(v11 + 64);
  if (v12 <= v10)
  {
    v16 = *(v9 + 84);
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (v16 <= 0xFE)
  {
    v16 = 254;
  }

  v17 = v13 + v14;
  v18 = (v13 + v14) & ~v14;
  v19 = v15 + 7;
  v20 = ((v15 + 7 + v18) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v16 >= a3)
  {
    v23 = 0;
    if (v16 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v20 <= 3)
    {
      v21 = ((a3 - v16 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v16 >= a2)
    {
LABEL_19:
      if (v23 > 1)
      {
        if (v23 != 2)
        {
          *(a1 + v20) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *(a1 + v20) = 0;
      }

      else if (v23)
      {
        *(a1 + v20) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v10 == v16)
      {
        v26 = *(v9 + 56);

        v26(a1, a2);
      }

      else
      {
        v27 = (a1 + v17) & ~v14;
        if (v12 == v16)
        {
          v28 = *(v11 + 56);

          v28(v27, a2, v12);
        }

        else
        {
          v29 = (v19 + v27) & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFE)
          {
            *(v29 + 16) = 0;
            *v29 = (a2 - 255);
            *(v29 + 8) = 0;
          }

          else
          {
            *(v29 + 17) = -a2;
          }
        }
      }

      return;
    }
  }

  v24 = ~v16 + a2;
  bzero(a1, v20);
  if (v20 <= 3)
  {
    v25 = HIWORD(v24) + 1;
  }

  else
  {
    v25 = 1;
  }

  if (v20 <= 3)
  {
    *a1 = v24;
    if (v23 > 1)
    {
LABEL_29:
      if (v23 == 2)
      {
        *(a1 + v20) = v25;
      }

      else
      {
        *(a1 + v20) = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v23 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v23)
  {
    *(a1 + v20) = v25;
  }
}

void sub_1A457E55C(uint64_t a1)
{
  sub_1A457EF6C(319, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A457E614(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  sub_1A457EF6C(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1A457E884(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  sub_1A457EF6C(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v9 + 64);
  v14 = *(v11 + 80);
  if (v12 <= v10)
  {
    v15 = *(v9 + 84);
  }

  else
  {
    v15 = *(v11 + 84);
  }

  v16 = v13 + v14;
  v17 = ((v13 + v14) & ~v14) + *(v11 + 64);
  if (a3 <= v15)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v15 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v15 < a2)
  {
    v19 = ~v15 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_46:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v17] = 0;
  }

  else if (v18)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v10 >= v12)
  {
    v25 = *(v9 + 56);

    v25(a1, a2);
  }

  else
  {
    v24 = *(v11 + 56);

    v24(&a1[v16] & ~v14, a2, v12);
  }
}

uint64_t sub_1A457EBA8(uint64_t a1)
{
  result = type metadata accessor for LemonadeNavigationDestination(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LemonadeNavigationContext(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1A457ECB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A457ED18(uint64_t a1)
{
  if (!qword_1EB13DB80)
  {
    sub_1A457EDCC(255);
    sub_1A3C29B34(&qword_1EB13DB90, sub_1A457EDCC, MEMORY[0x1E697FDF8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13DB80);
    }
  }
}

void sub_1A457EDCC(uint64_t a1)
{
  if (!qword_1EB13DB88)
  {
    type metadata accessor for NavigationVisibilityModifier(255);
    sub_1A457B7B0();
    v1 = sub_1A52499C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13DB88);
    }
  }
}

unint64_t sub_1A457EE30()
{
  result = qword_1EB13DB98;
  if (!qword_1EB13DB98)
  {
    sub_1A457EC8C(255);
    sub_1A457EDCC(255);
    sub_1A3C29B34(&qword_1EB13DB90, sub_1A457EDCC, MEMORY[0x1E697FDF8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DB98);
  }

  return result;
}

uint64_t sub_1A457EF10(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeNavigationDestination(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A457EF6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_1A457EFF0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeNavigationDestinationView(0);
  v5 = sub_1A3C29B34(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView, &unk_1A536BD00);

  LemonadeNavigationContainer.init(navigationContext:content:)(v6, sub_1A457F660, v4, v5, a2);
  sub_1A457B820(0);
  v8 = (a2 + *(v7 + 36));
  *v8 = sub_1A457F654;
  v8[1] = a1;
  v8[2] = 0;
  v8[3] = 0;

  return result;
}

uint64_t objectdestroy_71Tm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for LemonadeNavigationStack(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));
  sub_1A457EF6C(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  (*(*(v8 - 8) + 8))(v7, v8);
  (*(*(v5 - 8) + 8))(v7 + v6[11], v5);
  sub_1A3EF9960(*(v7 + v6[12]), *(v7 + v6[12] + 8), *(v7 + v6[12] + 16), *(v7 + v6[12] + 17));

  return swift_deallocObject();
}

uint64_t sub_1A457F2B8(uint64_t a1, uint64_t a2)
{
  sub_1A3C4881C(0, &qword_1EB129D58, &type metadata for LemonadeNavigationContext.SheetContent, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1A457F3E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1A457F3EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A457F454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  type metadata accessor for LemonadeNavigationStack(0, *(v3 + 16), *(v3 + 24), a2);

  return sub_1A457BEA4(a1, a3);
}

unint64_t sub_1A457F4D8()
{
  result = qword_1EB13DBA0;
  if (!qword_1EB13DBA0)
  {
    sub_1A457F5CC(255, &qword_1EB13DBA8, sub_1A457EC8C, sub_1A457EDCC, MEMORY[0x1E697F960]);
    sub_1A457EE30();
    sub_1A3C29B34(&qword_1EB13DB90, sub_1A457EDCC, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DBA0);
  }

  return result;
}

void sub_1A457F5CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1A457F66C(uint64_t a1, uint64_t a2, char a3)
{
  sub_1A524EC94();
  v5 = 0;
  if (a2 != 1)
  {
    MEMORY[0x1A590A010](1);
    sub_1A524ECB4();
    if (a2)
    {
      sub_1A524C794();
    }

    v5 = a3 & 1;
  }

  MEMORY[0x1A590A010](v5);
  return sub_1A524ECE4();
}

uint64_t sub_1A457F714(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 == 1)
  {
    v3 = 0;
  }

  else
  {
    v4 = *(v1 + 16);
    MEMORY[0x1A590A010](1);
    sub_1A524ECB4();
    if (v2)
    {
      sub_1A524C794();
    }

    v3 = v4 & 1;
  }

  return MEMORY[0x1A590A010](v3);
}

uint64_t sub_1A457F794(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_1A524EC94();
  if (v2 == 1)
  {
    v4 = 0;
  }

  else
  {
    MEMORY[0x1A590A010](1);
    sub_1A524ECB4();
    if (v2)
    {
      sub_1A524C794();
    }

    v4 = v3 & 1;
  }

  MEMORY[0x1A590A010](v4);
  return sub_1A524ECE4();
}

BOOL sub_1A457F860(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2 == 1)
  {
    return a5 == 1;
  }

  if (a5 == 1)
  {
    return 0;
  }

  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    if (a1 != a4 || a2 != a5)
    {
      v7 = a3;
      v8 = a6;
      v9 = sub_1A524EAB4();
      a3 = v7;
      a6 = v8;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a5)
  {
    return 0;
  }

  return ((a6 ^ a3) & 1) == 0;
}

unint64_t sub_1A457F8FC()
{
  result = qword_1EB13DBB0;
  if (!qword_1EB13DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DBB0);
  }

  return result;
}

unint64_t sub_1A457F954()
{
  result = qword_1EB13DBB8;
  if (!qword_1EB13DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DBB8);
  }

  return result;
}

uint64_t sub_1A457F9A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 17))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A457FA04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1A457FA64(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

char *sub_1A457FAB4()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_1A524E2B4();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  v3 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_13;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v4 = *(v1 + 8 * v3 + 32);

  return v4;
}

uint64_t sub_1A457FB98(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1A4581248(a1, a2, a3);
  sub_1A3C33378(a2, a3);
  return v6;
}

void sub_1A457FC00(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (a1[1])
  {
    swift_beginAccess();
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A457FDFC(a2);
}

void sub_1A457FDFC(void *a1@<X8>)
{
  swift_beginAccess();
  v9 = v1[4];
  v10 = *(v9 + 16);
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v9 + 56 * v10;
  v12 = *(v11 - 24);
  v13 = *(v11 - 16);
  swift_beginAccess();
  v14 = v1[11];
  v17 = *(v14 + 16);
  v15 = v14 + 16;
  v16 = v17;
  if (!v17)
  {
    __break(1u);
    goto LABEL_29;
  }

  v18 = (v15 + 16 * v16);
  v19 = *v18 == v12 && v18[1] == v13;
  if (v19 || (sub_1A524EAB4() & 1) != 0)
  {
LABEL_8:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_16:
      a1[6] = 0;
      *(a1 + 1) = 0u;
      *(a1 + 2) = 0u;
      *a1 = 0u;
      return;
    }

    v12 = Strong;
    v13 = v1[8];
    swift_beginAccess();
    v2 = v1[12];
    if (!(v2 >> 62))
    {
      v21 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        goto LABEL_11;
      }

      goto LABEL_30;
    }

LABEL_29:
    v21 = sub_1A524E2B4();
    if (v21)
    {
LABEL_11:
      v3 = v21 - 1;
      if (!__OFSUB__(v21, 1))
      {
        if ((v2 & 0xC000000000000001) == 0)
        {
          if ((v3 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v3 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v22 = *(v2 + 8 * v3 + 32);
            ObjectType = swift_getObjectType();
            swift_beginAccess();
            v24 = v1[5];
            v25 = v1[6];
            v26 = *(v13 + 8);
            v27 = sub_1A3C66EE8(v24, v25);
            v26(v22, v24, v25, ObjectType, v13, v27);
            swift_unknownObjectRelease();
            sub_1A3C33378(v24, v25);

            goto LABEL_16;
          }

          __break(1u);
LABEL_35:
          v28 = sub_1A524E2B4();
          if (!v28)
          {
            goto LABEL_36;
          }

          goto LABEL_19;
        }

LABEL_32:
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  swift_beginAccess();
  v12 = v1[12];
  if (v12 >> 62)
  {
    goto LABEL_35;
  }

  v28 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_19:
  v29 = v28 - 1;
  if (__OFSUB__(v28, 1))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    goto LABEL_38;
  }

  if ((v29 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_40:
    sub_1A524CA74();
LABEL_24:
    sub_1A524CAE4();
    swift_endAccess();
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (v29 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(v12 + 8 * v29 + 32);
    [v30 copy];

    sub_1A524E0B4();
    swift_unknownObjectRelease();
    type metadata accessor for TTRRadarObject(0);
    swift_dynamicCast();
    swift_beginAccess();
    v31 = v40;
    MEMORY[0x1A5907D70]();
    if (*((v1[12] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v1[12] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_24;
    }

    goto LABEL_40;
  }

  __break(1u);
  __break(1u);
  v37 = sub_1A3D3D914(0, *(v4 + 16) + 1, 1, v4);
  *(v5 + 88) = v37;
  v33 = *(v37 + 2);
  v32 = *(v37 + 3);
  v34 = v33 + 1;
  if (v33 >= v32 >> 1)
  {
    v36 = sub_1A3D3D914((v32 > 1), v33 + 1, 1, v37);
    v34 = v33 + 1;
    v37 = v36;
  }

  *(v37 + 2) = v34;
  v35 = &v37[16 * v33];
  *(v35 + 4) = v6;
  *(v35 + 5) = v1;
  *(v5 + 88) = v37;
  swift_endAccess();

  *a1 = v6;
  a1[1] = v1;
  a1[2] = v38;
  a1[3] = v29;
  a1[4] = v7;
  a1[5] = v2;
  a1[6] = v3;
}

void sub_1A4580344()
{
  v1 = v0;
  swift_beginAccess();
  sub_1A45806F8();
  v3 = v2;
  swift_endAccess();
  swift_beginAccess();
  v4 = v0[12];
  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!sub_1A524E2B4())
  {
    goto LABEL_15;
  }

LABEL_3:
  v5 = sub_1A45810B8();
  if (!v5)
  {
    v6 = v0[12];
    if (!(v6 >> 62))
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = __OFSUB__(v7, 1);
      v9 = v7 - 1;
      if (!v8)
      {
LABEL_6:
        v5 = sub_1A3EC9710(v9);
        goto LABEL_7;
      }

LABEL_18:
      __break(1u);
      swift_once();
      v10 = qword_1EB1C7658;
      sub_1A5246DF4(v1, &dword_1A3C1C000, v10, "evaluateWorkflowCache: unable to find last workflow when navigating back", 72, 2, MEMORY[0x1E69E7CC0]);

      return;
    }

LABEL_16:
    v11 = sub_1A524E2B4();
    v8 = __OFSUB__(v11, 1);
    v9 = v11 - 1;
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_7:

  swift_endAccess();
  swift_beginAccess();
  if (*(v0[4] + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (v3)
  {
  }

  else
  {
    swift_beginAccess();
    if (*(v0[10] + 16))
    {
      swift_beginAccess();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }
}

uint64_t sub_1A45806F8()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    return 0;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
LABEL_4:
      v4 = v3 - 1;
      result = *(v1 + 16 * v4 + 32);
      *(v1 + 16) = v4;
      *v0 = v1;
      return result;
    }
  }

  else
  {
    result = sub_1A458111C(v1);
    v1 = result;
    v3 = *(result + 16);
    if (v3)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A458076C()
{

  sub_1A3C33378(*(v0 + 40), *(v0 + 48));
  sub_1A3D35A10(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1A45807E4(uint64_t a1, uint64_t a2)
{
  sub_1A3EBD0AC(0, a2);
  result = sub_1A524DEE4();
  qword_1EB1C7658 = result;
  return result;
}

void sub_1A4580848(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1A3C5DCA4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v13 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A4580F2C();
      v10 = v13;
    }

    v11 = *(v10 + 56) + 24 * v8;
    *a3 = *v11;
    v12 = *(v11 + 8);
    *(a3 + 8) = v12;
    sub_1A4580BC4(v8, v10, v12);
    *v4 = v10;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

void sub_1A45808F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A45813E0();
  v38 = v4;
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 24 * v21);
      v25 = v24[1];
      v39 = *v24;
      v40 = *v22;
      v26 = v24[2];
      if ((v38 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      v27 = sub_1A524ECE4();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v39;
      v17[1] = v25;
      v17[2] = v26;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1A4580BC4(unint64_t a1, uint64_t a2, __n128 a3)
{
  if ((*(a2 + 64 + ((((a1 + 1) & ~(-1 << *(a2 + 32))) >> 3) & 0xFFFFFFFFFFFFFF8)) >> ((a1 + 1) & ~(-1 << *(a2 + 32)))))
  {
    sub_1A524E244();
    sub_1A524EC94();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  *(a2 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v3 = *(a2 + 16);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v5;
    ++*(a2 + 36);
  }
}

void sub_1A4580D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1A3C5DCA4(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1A45808F8(v20, a6 & 1);
      v15 = sub_1A3C5DCA4(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_1A524EB84();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_1A4580F2C();
      v15 = v23;
    }
  }

  v25 = *v7;
  if ((v21 & 1) == 0)
  {
    v25[(v15 >> 6) + 8] |= 1 << v15;
    v27 = (v25[6] + 16 * v15);
    *v27 = a4;
    v27[1] = a5;
    v28 = (v25[7] + 24 * v15);
    *v28 = a1;
    v28[1] = a2;
    v28[2] = a3;
    v29 = v25[2];
    v19 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (!v19)
    {
      v25[2] = v30;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_17;
  }

  v26 = (v25[7] + 24 * v15);
  *v26 = a1;
  v26[1] = a2;
  v26[2] = a3;
}

void sub_1A4580F2C()
{
  v1 = v0;
  sub_1A45813E0();
  v2 = *v0;
  v3 = sub_1A524E764();
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

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = 16 * v16;
        v18 = (*(v2 + 48) + 16 * v16);
        v20 = *v18;
        v19 = v18[1];
        v16 *= 24;
        v21 = (*(v2 + 56) + v16);
        v22 = *v21;
        v23 = v21[1];
        v24 = v21[2];
        v25 = (*(v4 + 48) + v17);
        *v25 = v20;
        v25[1] = v19;
        v26 = (*(v4 + 56) + v16);
        *v26 = v22;
        v26[1] = v23;
        v26[2] = v24;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }
}

unint64_t sub_1A45810B8()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_1A3E2AE98(v1, v3);
    v1 = result;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    v5 = v4 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A4581130(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A45813E0();
    sub_1A524E794();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_1A4581248(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v3[5] = 0;
  v10 = v3 + 5;
  v3[8] = 0;
  v3[6] = 0;
  swift_unknownObjectWeakInit();
  v11 = MEMORY[0x1E69E7CC0];
  v10[4] = sub_1A4581130(MEMORY[0x1E69E7CC0]);
  v10[5] = v11;
  sub_1A3C4D548(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A52F9790;
  type metadata accessor for TTRRadarObject(0);
  result = TTRRadarObject.__allocating_init()();
  *(v12 + 32) = result;
  v10[7] = v12;
  if (v9[2])
  {
    v4[2] = v7;
    v4[3] = v8;
    v4[4] = v9;
    sub_1A3C4D548(0, &qword_1EB12B260, MEMORY[0x1E69E6158]);
    result = swift_allocObject();
    *(result + 16) = xmmword_1A52F8E10;
    if (v9[2])
    {
      v14 = v9[5];
      *(result + 32) = v9[4];
      *(result + 40) = v14;
      v4[11] = result;
      swift_beginAccess();
      v4[5] = a2;
      v4[6] = a3;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1A45813E0()
{
  if (!qword_1EB13DBC0)
  {
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13DBC0);
    }
  }
}

uint64_t sub_1A4581480@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27[2] = a1;
  sub_1A458A420(0, &qword_1EB13DBD0, sub_1A45818FC, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  v27[1] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v27 - v4;
  sub_1A45819B0(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45818FC(0, v9);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (v1 + *(type metadata accessor for LemonadeInAppNotificationsSettingsView(0) + 24));
  v19 = *v17;
  v18 = v17[1];
  v28 = v19;
  v29 = v18;
  sub_1A458AFF8(0, &qword_1EB13DBC8, type metadata accessor for LemonadeSettingsViewModel, MEMORY[0x1E6981790]);
  v20 = sub_1A524B6A4();
  v21 = (*(*v27[3] + 176))(v20);

  v22 = *(v21 + 16);

  if (v22)
  {
    MEMORY[0x1EEE9AC00](v23);
    v27[-2] = v2;
    sub_1A458A704(0, &qword_1EB13DBE8, sub_1A4581A4C, sub_1A4581D24, MEMORY[0x1E6981148]);
    sub_1A4581D58();
    sub_1A524A294();
    v24 = sub_1A458A9DC(&qword_1EB13DC78, sub_1A45819B0, MEMORY[0x1E697CCF0]);
    sub_1A524ADD4();
    (*(v8 + 8))(v11, v7);
    (*(v14 + 16))(v5, v16, v13);
    swift_storeEnumTagMultiPayload();
    v28 = v7;
    v29 = v24;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    return (*(v14 + 8))(v16, v13);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v26 = sub_1A458A9DC(&qword_1EB13DC78, sub_1A45819B0, MEMORY[0x1E697CCF0]);
    v28 = v7;
    v29 = v26;
    swift_getOpaqueTypeConformance2();
    return sub_1A5249744();
  }
}

void sub_1A45818FC(uint64_t a1, double a2)
{
  if (!qword_1EB13DBD8)
  {
    sub_1A45819B0(255);
    sub_1A458A9DC(&qword_1EB13DC78, sub_1A45819B0, MEMORY[0x1E697CCF0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13DBD8);
    }
  }
}

void sub_1A45819B0(uint64_t a1)
{
  if (!qword_1EB13DBE0)
  {
    sub_1A458A704(255, &qword_1EB13DBE8, sub_1A4581A4C, sub_1A4581D24, MEMORY[0x1E6981148]);
    sub_1A4581D58();
    v1 = sub_1A524A2A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13DBE0);
    }
  }
}

void sub_1A4581A6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A458B6DC(255, &qword_1EB13DC00, &type metadata for LemonadePhotosSetting, MEMORY[0x1E69E62F8]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1A4581B94()
{
  result = qword_1EB13DC20;
  if (!qword_1EB13DC20)
  {
    sub_1A4581A6C(255, &qword_1EB13DBF8, MEMORY[0x1E6981948]);
    sub_1A4581C68(&qword_1EB13DC28, MEMORY[0x1E69E6318]);
    sub_1A4581C68(&qword_1EB13DC30, MEMORY[0x1E69E6338]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DC20);
  }

  return result;
}

uint64_t sub_1A4581C68(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A458B6DC(255, &qword_1EB13DC00, &type metadata for LemonadePhotosSetting, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4581CD0()
{
  result = qword_1EB13DC38;
  if (!qword_1EB13DC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DC38);
  }

  return result;
}

unint64_t sub_1A4581D58()
{
  result = qword_1EB13DC48;
  if (!qword_1EB13DC48)
  {
    sub_1A458A704(255, &qword_1EB13DBE8, sub_1A4581A4C, sub_1A4581D24, MEMORY[0x1E6981148]);
    sub_1A45843A8(&qword_1EB13DC50, sub_1A4581A4C, sub_1A4581EA4, MEMORY[0x1E69819D0]);
    sub_1A45843A8(&qword_1EB13DC70, sub_1A4581D24, sub_1A426CA60, MEMORY[0x1E6982090]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DC48);
  }

  return result;
}

unint64_t sub_1A4581F34()
{
  result = qword_1EB13DC68;
  if (!qword_1EB13DC68)
  {
    sub_1A4581B58(255);
    v1 = MEMORY[0x1E697D6A0];
    sub_1A458AAF8(255, &qword_1EB130100, MEMORY[0x1E6981138], MEMORY[0x1E697D6A0]);
    sub_1A458A984(&qword_1EB130108, &qword_1EB130100, v1, MEMORY[0x1E697D6A8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DC68);
  }

  return result;
}

uint64_t sub_1A4582084(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4582110()
{
  sub_1A3C38BD4(0xD00000000000002DLL);
  sub_1A3D5F9DC();
  sub_1A524A464();
  type metadata accessor for LemonadeInAppNotificationsSettingsView(0);
  sub_1A458AFF8(0, &qword_1EB13DBC8, type metadata accessor for LemonadeSettingsViewModel, MEMORY[0x1E6981790]);
  v0 = sub_1A524B6A4();
  v1 = (*(*v3 + 176))(v0);

  if (*(v1 + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A4581A4C(0);
  sub_1A4581D24(0);
  sub_1A45843A8(&qword_1EB13DC50, sub_1A4581A4C, sub_1A4581EA4, MEMORY[0x1E69819D0]);
  sub_1A45843A8(&qword_1EB13DC70, sub_1A4581D24, sub_1A426CA60, MEMORY[0x1E6982090]);
  return sub_1A524BA44();
}

double sub_1A4582484@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v3 = type metadata accessor for LemonadeInAppNotificationsSettingsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = (a1 + *(v6 + 32));
  v9 = *v7;
  v8 = v7[1];
  v17 = v9;
  *&v18 = v8;
  sub_1A458AFF8(0, &qword_1EB13DBC8, type metadata accessor for LemonadeSettingsViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  swift_getKeyPath();
  sub_1A458AFF8(0, &qword_1EB13DDD0, type metadata accessor for LemonadeSettingsViewModel, MEMORY[0x1E6981948]);
  sub_1A524B914();

  v13 = v18;

  v15 = v17;
  v16 = v18;
  sub_1A458ADCC(a1, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeInAppNotificationsSettingsView);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_1A458BB78(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for LemonadeInAppNotificationsSettingsView);
  sub_1A4581A6C(0, &qword_1EB13DBF8, MEMORY[0x1E6981948]);
  sub_1A4581AF0(0);
  sub_1A4581B94();
  sub_1A4581EA4();
  sub_1A458B640();
  sub_1A524B9C4();
  return result;
}

uint64_t sub_1A458271C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_1A45827BC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v41 = a3;
  v4 = type metadata accessor for LemonadeInAppNotificationsSettingsView(0);
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v37 = MEMORY[0x1E697D6A0];
  sub_1A458AAF8(0, &qword_1EB130100, MEMORY[0x1E6981138], MEMORY[0x1E697D6A0]);
  v38 = v6;
  v39 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  sub_1A4581B24(0);
  v40 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  v50 = *a1;
  v51 = v12;
  v13 = a1[3];
  v52 = a1[2];
  v53 = v13;
  v14 = MEMORY[0x1E6981948];
  sub_1A458B6DC(0, &qword_1EB13DDF0, &type metadata for LemonadePhotosSetting, MEMORY[0x1E6981948]);
  v16 = v15;
  MEMORY[0x1A5906C60](&v44);
  v17 = *(&v44 + 1);
  v18 = v45;

  v48 = v17;
  v49 = v18;
  v19 = a1[1];
  v44 = *a1;
  v45 = v19;
  v20 = a1[3];
  v46 = a1[2];
  v47 = v20;
  sub_1A524B924();
  swift_getKeyPath();
  v44 = v50;
  v45 = v51;
  v46 = v52;
  v47 = v53;
  sub_1A524B914();

  sub_1A458AF48(&v50, &qword_1EB13DDF0, &type metadata for LemonadePhotosSetting, v14);
  sub_1A3D5F9DC();
  sub_1A524B864();
  v21 = a1[1];
  v44 = *a1;
  v45 = v21;
  v22 = a1[3];
  v46 = a1[2];
  v47 = v22;
  MEMORY[0x1A5906C60](v42, v16);

  LOBYTE(v17) = v43;

  LOBYTE(v42[0]) = v17;
  sub_1A458ADCC(v36, &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeInAppNotificationsSettingsView);
  v23 = (*(v35 + 80) + 80) & ~*(v35 + 80);
  v24 = swift_allocObject();
  v25 = a1[1];
  v24[1] = *a1;
  v24[2] = v25;
  v26 = a1[3];
  v24[3] = a1[2];
  v24[4] = v26;
  sub_1A458BB78(&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for LemonadeInAppNotificationsSettingsView);
  sub_1A458AC48(a1, &v44, &qword_1EB13DDF0, &type metadata for LemonadePhotosSetting, v14);
  sub_1A458A984(&qword_1EB130108, &qword_1EB130100, v37, MEMORY[0x1E697D6A8]);
  v27 = v38;
  sub_1A524B144();

  (*(v39 + 8))(v8, v27);
  LOBYTE(v27) = sub_1A524A054();
  sub_1A4581B58(0);
  v29 = &v11[*(v28 + 36)];
  *v29 = v27;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  v29[40] = 1;
  v30 = &v11[*(v40 + 36)];
  *v30 = xmmword_1A534B4D0;
  *(v30 + 1) = xmmword_1A534B4D0;
  v30[32] = 0;
  v31 = a1[1];
  v44 = *a1;
  v45 = v31;
  v32 = a1[3];
  v46 = a1[2];
  v47 = v32;
  MEMORY[0x1A5906C60](v42, v16);
  LOBYTE(v27) = v42[0];

  sub_1A48E5148(v27);
  sub_1A4581EEC();
  sub_1A524AA94();

  return sub_1A3D09FF8(v11);
}

void *sub_1A4582D04()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    v6 = v5;
  }

  else
  {

    v7 = sub_1A524D254();
    v8 = sub_1A524A014();
    sub_1A5246DF4(v7, &dword_1A3C1C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v5;
}

uint64_t sub_1A4582E74(uint64_t a1)
{
  sub_1A3C38BD4(0xD000000000000026);
  sub_1A3D5F9DC();
  sub_1A524A464();
  type metadata accessor for LemonadeGeneralSettingsView(0);
  sub_1A458AFF8(0, &qword_1EB13DBC8, type metadata accessor for LemonadeSettingsViewModel, MEMORY[0x1E6981790]);
  v1 = sub_1A524B6A4();
  v2 = (*(*v4 + 224))(v1);

  if (*(v2 + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A4581A4C(0);
  sub_1A4581D24(0);
  sub_1A45843A8(&qword_1EB13DC50, sub_1A4581A4C, sub_1A4581EA4, MEMORY[0x1E69819D0]);
  sub_1A45843A8(&qword_1EB13DC70, sub_1A4581D24, sub_1A426CA60, MEMORY[0x1E6982090]);
  return sub_1A524BA44();
}

double sub_1A45831F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v3 = type metadata accessor for LemonadeGeneralSettingsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = (a1 + *(v6 + 32));
  v9 = *v7;
  v8 = v7[1];
  v17 = v9;
  *&v18 = v8;
  sub_1A458AFF8(0, &qword_1EB13DBC8, type metadata accessor for LemonadeSettingsViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  swift_getKeyPath();
  sub_1A458AFF8(0, &qword_1EB13DDD0, type metadata accessor for LemonadeSettingsViewModel, MEMORY[0x1E6981948]);
  sub_1A524B914();

  v13 = v18;

  v15 = v17;
  v16 = v18;
  sub_1A458ADCC(a1, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeGeneralSettingsView);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_1A458BB78(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for LemonadeGeneralSettingsView);
  sub_1A4581A6C(0, &qword_1EB13DBF8, MEMORY[0x1E6981948]);
  sub_1A4581AF0(0);
  sub_1A4581B94();
  sub_1A4581EA4();
  sub_1A458B640();
  sub_1A524B9C4();
  return result;
}

uint64_t sub_1A4583488@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4583528@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v41 = a3;
  v4 = type metadata accessor for LemonadeGeneralSettingsView(0);
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v37 = MEMORY[0x1E697D6A0];
  sub_1A458AAF8(0, &qword_1EB130100, MEMORY[0x1E6981138], MEMORY[0x1E697D6A0]);
  v38 = v6;
  v39 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  sub_1A4581B24(0);
  v40 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  v50 = *a1;
  v51 = v12;
  v13 = a1[3];
  v52 = a1[2];
  v53 = v13;
  v14 = MEMORY[0x1E6981948];
  sub_1A458B6DC(0, &qword_1EB13DDF0, &type metadata for LemonadePhotosSetting, MEMORY[0x1E6981948]);
  v16 = v15;
  MEMORY[0x1A5906C60](&v44);
  v17 = *(&v44 + 1);
  v18 = v45;

  v48 = v17;
  v49 = v18;
  v19 = a1[1];
  v44 = *a1;
  v45 = v19;
  v20 = a1[3];
  v46 = a1[2];
  v47 = v20;
  sub_1A524B924();
  swift_getKeyPath();
  v44 = v50;
  v45 = v51;
  v46 = v52;
  v47 = v53;
  sub_1A524B914();

  sub_1A458AF48(&v50, &qword_1EB13DDF0, &type metadata for LemonadePhotosSetting, v14);
  sub_1A3D5F9DC();
  sub_1A524B864();
  v21 = a1[1];
  v44 = *a1;
  v45 = v21;
  v22 = a1[3];
  v46 = a1[2];
  v47 = v22;
  MEMORY[0x1A5906C60](v42, v16);

  LOBYTE(v17) = v43;

  LOBYTE(v42[0]) = v17;
  sub_1A458ADCC(v36, &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeGeneralSettingsView);
  v23 = (*(v35 + 80) + 80) & ~*(v35 + 80);
  v24 = swift_allocObject();
  v25 = a1[1];
  v24[1] = *a1;
  v24[2] = v25;
  v26 = a1[3];
  v24[3] = a1[2];
  v24[4] = v26;
  sub_1A458BB78(&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for LemonadeGeneralSettingsView);
  sub_1A458AC48(a1, &v44, &qword_1EB13DDF0, &type metadata for LemonadePhotosSetting, v14);
  sub_1A458A984(&qword_1EB130108, &qword_1EB130100, v37, MEMORY[0x1E697D6A8]);
  v27 = v38;
  sub_1A524B144();

  (*(v39 + 8))(v8, v27);
  LOBYTE(v27) = sub_1A524A054();
  sub_1A4581B58(0);
  v29 = &v11[*(v28 + 36)];
  *v29 = v27;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  v29[40] = 1;
  v30 = &v11[*(v40 + 36)];
  *v30 = xmmword_1A534B4D0;
  *(v30 + 1) = xmmword_1A534B4D0;
  v30[32] = 0;
  v31 = a1[1];
  v44 = *a1;
  v45 = v31;
  v32 = a1[3];
  v46 = a1[2];
  v47 = v32;
  MEMORY[0x1A5906C60](v42, v16);
  LOBYTE(v27) = v42[0];

  sub_1A48E5148(v27);
  sub_1A4581EEC();
  sub_1A524AA94();

  return sub_1A3D09FF8(v11);
}

void *sub_1A4583A6C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2 & 1;
  v6 = a4(0);
  v7 = *(v6 + 20);
  *(a5 + v7) = swift_getKeyPath();
  sub_1A458AFF8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v8 = (a5 + *(v6 + 24));
  type metadata accessor for LemonadeSettingsViewModel(0);
  result = sub_1A524B694();
  *v8 = v10;
  v8[1] = v11;
  return result;
}

uint64_t sub_1A4583B44()
{
  sub_1A45819B0(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0;
  sub_1A458A704(0, &qword_1EB13DBE8, sub_1A4581A4C, sub_1A4581D24, MEMORY[0x1E6981148]);
  sub_1A4581D58();
  sub_1A524A294();
  sub_1A458A9DC(&qword_1EB13DC78, sub_1A45819B0, MEMORY[0x1E697CCF0]);
  sub_1A524ADD4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A4583CC8@<X0>(uint64_t a2@<X8>)
{
  sub_1A4583F48(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45844C4(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  DataSectionItemListManager.itemList.getter(&v18);
  v13 = v18;
  v14 = [v18 count];

  if (v14 < 1)
  {
    v15 = 1;
  }

  else
  {
    sub_1A458A704(0, &qword_1EB13DC88, sub_1A4584000, sub_1A45841FC, MEMORY[0x1E6981148]);
    sub_1A4584258();
    sub_1A524A2C4();
    sub_1A458A9DC(&qword_1EB13DCF0, sub_1A4583F48, MEMORY[0x1E697CD20]);
    sub_1A524ADD4();
    (*(v5 + 8))(v7, v4);
    (*(v10 + 32))(a2, v12, v9);
    v15 = 0;
  }

  return (*(v10 + 56))(a2, v15, 1, v9);
}

void sub_1A4583F48(uint64_t a1)
{
  if (!qword_1EB13DC80)
  {
    sub_1A458A704(255, &qword_1EB13DC88, sub_1A4584000, sub_1A45841FC, MEMORY[0x1E6981148]);
    sub_1A4584258();
    v1 = sub_1A524A2D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13DC80);
    }
  }
}

void sub_1A4584000(uint64_t a1)
{
  if (!qword_1EB13DC90)
  {
    sub_1A3C52C70(255, &qword_1EB1374F0, off_1E771FAD8);
    sub_1A45840DC(255);
    sub_1A3C3A220(&qword_1EB13DCB0, &qword_1EB1374F0, off_1E771FAD8, &protocol conformance descriptor for PXStorageTipCollectionViewDataSection);
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13DC90);
    }
  }
}

void sub_1A4584110(uint64_t a1)
{
  if (!qword_1EB13DCA0)
  {
    type metadata accessor for StorageManagementListItem(255);
    type metadata accessor for StorageManagementView(255);
    sub_1A458A9DC(&qword_1EB13DCA8, type metadata accessor for StorageManagementListItem, &unk_1A53163D0);
    sub_1A458A9DC(&qword_1EB131108, type metadata accessor for StorageManagementView, &unk_1A5316380);
    v1 = sub_1A5248454();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13DCA0);
    }
  }
}

void sub_1A45841FC(uint64_t a1)
{
  if (!qword_1EB13DCB8)
  {
    sub_1A3DF14C0(255);
    v1 = sub_1A5249754();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13DCB8);
    }
  }
}

unint64_t sub_1A4584258()
{
  result = qword_1EB13DCC0;
  if (!qword_1EB13DCC0)
  {
    sub_1A458A704(255, &qword_1EB13DC88, sub_1A4584000, sub_1A45841FC, MEMORY[0x1E6981148]);
    sub_1A45843A8(&qword_1EB13DCC8, sub_1A4584000, sub_1A4584360, MEMORY[0x1E69819D0]);
    sub_1A458444C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DCC0);
  }

  return result;
}

uint64_t sub_1A45843A8(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
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

unint64_t sub_1A458444C()
{
  result = qword_1EB13DCE0;
  if (!qword_1EB13DCE0)
  {
    sub_1A45841FC(255);
    sub_1A405D614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DCE0);
  }

  return result;
}

void sub_1A45844C4(uint64_t a1)
{
  if (!qword_1EB13DCE8)
  {
    sub_1A4583F48(255);
    sub_1A458A9DC(&qword_1EB13DCF0, sub_1A4583F48, MEMORY[0x1E697CD20]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13DCE8);
    }
  }
}

uint64_t sub_1A4584578()
{
  v15[0] = sub_1A3C38BD4(0xD000000000000025);
  v15[1] = v0;
  sub_1A3D5F9DC();
  sub_1A524A464();
  DataSectionItemListManager.itemList.getter(v15);
  v1 = v15[0];
  v2 = [v15[0] objectAtIndex_];

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3 && [v3 count] >= 1)
  {
    v15[0] = sub_1A3C38BD4(0xD000000000000026);
    v15[1] = v4;
    v5 = sub_1A524A464();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    KeyPath = swift_getKeyPath();
    v15[0] = v5;
    v15[1] = v7;
    v16 = v9 & 1;
    v17 = v11;
    v18 = KeyPath;
    v19 = 1;
    sub_1A3E75E68(v5, v7, v9 & 1);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_unknownObjectRelease();
  v15[0] = sub_1A3C38BD4(0xD000000000000033);
  v15[1] = v13;
  sub_1A524A464();
  swift_getKeyPath();
  sub_1A3DF14C0(0);
  sub_1A405D614();
  sub_1A5249744();
  sub_1A4584000(0);
  sub_1A45841FC(0);
  sub_1A45843A8(&qword_1EB13DCC8, sub_1A4584000, sub_1A4584360, MEMORY[0x1E69819D0]);
  sub_1A458444C();
  return sub_1A524BA44();
}

uint64_t sub_1A4584930@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StorageManagementView(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v9 = [v8 count];
  if (v9 < 1)
  {
    sub_1A4584110(0);
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }

  else
  {
    v10 = MEMORY[0x1EEE9AC00](v9);
    *(&v15 - 2) = v8;
    sub_1A4073328([v8 storageTipType], v7);
    type metadata accessor for StorageManagementListItem(0);
    sub_1A458A9DC(&qword_1EB13DCA8, type metadata accessor for StorageManagementListItem, &unk_1A53163D0);
    sub_1A458A9DC(&qword_1EB131108, type metadata accessor for StorageManagementView, &unk_1A5316380);
    sub_1A5248444();
    sub_1A4584110(0);
    return (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
  }
}

uint64_t sub_1A4584B78@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v36 = a2;
  v40 = a5;
  sub_1A4589924(0, &qword_1EB13DD10, sub_1A45899E0);
  v39 = v8;
  v35 = *(v8 - 8);
  v9 = v35;
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v34 - v12;
  v43 = a3;
  *&v44 = a4;
  sub_1A458AFF8(0, &qword_1EB13DBC8, type metadata accessor for LemonadeSettingsViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v13 = v45;
  v14 = v46;
  v15 = v47;
  swift_getKeyPath();
  v45 = v13;
  v46 = v14;
  v47 = v15;
  sub_1A458AFF8(0, &qword_1EB13DDD0, type metadata accessor for LemonadeSettingsViewModel, MEMORY[0x1E6981948]);
  sub_1A524B914();

  v16 = v43;
  v34 = v44;

  v41 = v16;
  v42 = v34;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  v18 = v36 & 1;
  *(v17 + 24) = v36 & 1;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  sub_1A4579D5C(a1, v18);
  sub_1A4581A6C(0, &qword_1EB13DBF8, MEMORY[0x1E6981948]);
  sub_1A45899E0(0);
  sub_1A4581B94();
  sub_1A458B41C();
  sub_1A458B640();

  v19 = v37;
  sub_1A524B9C4();
  KeyPath = swift_getKeyPath();
  LOBYTE(v43) = 0;
  sub_1A524B694();
  LOBYTE(v15) = v45;
  v21 = v46;
  LOBYTE(v43) = 0;
  sub_1A524B694();
  LOBYTE(v13) = v45;
  v22 = v46;
  v23 = *(v9 + 16);
  v25 = v38;
  v24 = v39;
  v23(v38, v19, v39);
  LOBYTE(v45) = 0;
  LOBYTE(v43) = v15;
  LOBYTE(v41) = v13;
  v26 = v40;
  v23(v40, v25, v24);
  sub_1A45898A0(0);
  v28 = &v26[*(v27 + 48)];
  v29 = v45;
  v30 = v43;
  v31 = v41;
  *v28 = KeyPath;
  v28[8] = v29;
  v28[16] = v30;
  *(v28 + 3) = v21;
  v28[32] = v31;
  *(v28 + 5) = v22;
  sub_1A4579D5C(KeyPath, v29);
  v32 = *(v35 + 8);

  v32(v19, v24);
  sub_1A3D35BAC(KeyPath, v45);

  return (v32)(v25, v24);
}

uint64_t sub_1A4584F7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result;
  return result;
}

uint64_t sub_1A458502C@<X0>(__int128 *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a5;
  v38 = a4;
  v39 = a3;
  v46 = a6;
  v41 = MEMORY[0x1E697D6A0];
  sub_1A458AAF8(0, &qword_1EB130100, MEMORY[0x1E6981138], MEMORY[0x1E697D6A0]);
  v42 = v8;
  v43 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  sub_1A3FF705C(0);
  v44 = v11;
  v45 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  v55 = *a1;
  v56 = v14;
  v15 = a1[3];
  v57 = a1[2];
  v58 = v15;
  v16 = MEMORY[0x1E6981948];
  sub_1A458B6DC(0, &qword_1EB13DDF0, &type metadata for LemonadePhotosSetting, MEMORY[0x1E6981948]);
  v18 = v17;
  MEMORY[0x1A5906C60](&v49);
  v19 = *(&v49 + 1);
  v20 = v50;

  v53 = v19;
  v54 = v20;
  v21 = a1[1];
  v49 = *a1;
  v50 = v21;
  v22 = a1[3];
  v51 = a1[2];
  v52 = v22;
  sub_1A524B924();
  swift_getKeyPath();
  v49 = v55;
  v50 = v56;
  v51 = v57;
  v52 = v58;
  sub_1A524B914();

  sub_1A458AF48(&v55, &qword_1EB13DDF0, &type metadata for LemonadePhotosSetting, v16);
  sub_1A3D5F9DC();
  sub_1A524B864();
  v23 = a1[1];
  v49 = *a1;
  v50 = v23;
  v24 = a1[3];
  v51 = a1[2];
  v52 = v24;
  MEMORY[0x1A5906C60](v47, v18);

  LOBYTE(v19) = v48;

  LOBYTE(v47[0]) = v19;
  v25 = swift_allocObject();
  v26 = a1[1];
  *(v25 + 16) = *a1;
  *(v25 + 32) = v26;
  v27 = a1[3];
  *(v25 + 48) = a1[2];
  *(v25 + 64) = v27;
  *(v25 + 80) = a2;
  LOBYTE(v19) = v39 & 1;
  *(v25 + 88) = v39 & 1;
  v28 = v40;
  *(v25 + 96) = v38;
  *(v25 + 104) = v28;
  sub_1A458AC48(a1, &v49, &qword_1EB13DDF0, &type metadata for LemonadePhotosSetting, v16);
  sub_1A4579D5C(a2, v19);
  v29 = sub_1A458A984(&qword_1EB130108, &qword_1EB130100, v41, MEMORY[0x1E697D6A8]);

  v30 = MEMORY[0x1E69E6370];
  v31 = MEMORY[0x1E69E6388];
  v32 = v42;
  sub_1A524B144();

  (*(v43 + 8))(v10, v32);
  v33 = a1[1];
  v49 = *a1;
  v50 = v33;
  v34 = a1[3];
  v51 = a1[2];
  v52 = v34;
  MEMORY[0x1A5906C60](v47, v18);
  LOBYTE(v19) = v47[0];

  sub_1A48E5148(v19);
  *&v49 = v32;
  *(&v49 + 1) = v30;
  *&v50 = v29;
  *(&v50 + 1) = v31;
  swift_getOpaqueTypeConformance2();
  v35 = v44;
  sub_1A524AA94();

  return (*(v45 + 8))(v13, v35);
}

void sub_1A4585514(unsigned __int8 *a1, __int128 *a2, void *a3, char a4)
{
  v8 = sub_1A5249234();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a2[1];
  v20 = *a2;
  v21 = v13;
  v14 = a2[3];
  v22 = a2[2];
  v23 = v14;
  sub_1A458B6DC(0, &qword_1EB13DDF0, &type metadata for LemonadePhotosSetting, MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](v19);
  v15 = LOBYTE(v19[0]);

  if (a4)
  {
    v16 = a3;
  }

  else
  {

    v17 = sub_1A524D254();
    v18 = sub_1A524A014();
    sub_1A5246DF4(v17, &dword_1A3C1C000, v18, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(a3, 0);
    (*(v9 + 8))(v11, v8);
    v16 = v20;
    a3 = v20;
  }

  sub_1A48E4BCC(v12, a3, v15);
}

uint64_t sub_1A458570C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for LemonadeSettingsViewModel(0);
  sub_1A524B694();
  return a1;
}

uint64_t sub_1A4585760(double a1)
{
  sub_1A45897D8(0, a1);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 8);
  v8 = v1[2];
  v9 = v1[3];
  v12 = *v1;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  sub_1A458986C(0);
  sub_1A458A9DC(&qword_1EB13DD28, sub_1A458986C, MEMORY[0x1E6981F48]);
  sub_1A524A294();
  sub_1A458A9DC(&qword_1EB13DD30, sub_1A45897D8, MEMORY[0x1E697CCF0]);
  sub_1A524ADD4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A45858F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  sub_1A458A704(0, &qword_1EB13DD60, sub_1A458A788, sub_1A426C988, MEMORY[0x1E6981E70]);
  v31 = v3;
  v33 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v34 = v29 - v4;
  v37 = v1;
  v39 = sub_1A3C38BD4(0xD00000000000001FLL);
  v40 = v5;
  sub_1A3D5F9DC();
  v6 = sub_1A524A464();
  v8 = v7;
  v10 = v9;
  sub_1A524A254();
  v11 = sub_1A524A3C4();
  v13 = v12;
  v15 = v14;

  sub_1A3E04DF4(v6, v8, v10 & 1);

  sub_1A524B3D4();
  v16 = sub_1A524A364();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_1A3E04DF4(v11, v13, v15 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v38) = 1;
  v39 = v16;
  v40 = v18;
  v41 = v20 & 1;
  v42 = v22;
  v43 = 256;
  v44 = KeyPath;
  v45 = 0;
  v46 = 1;
  sub_1A458A788(0);
  sub_1A426C988(0);
  sub_1A458A9DC(&qword_1EB13DD98, sub_1A458A788, MEMORY[0x1E6981F48]);
  sub_1A426CA60();
  sub_1A524BA64();
  v30 = sub_1A5249434();
  v29[1] = v24;
  v38 = *(v2 + 16);
  sub_1A458B6DC(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v36 = v2;
  v35 = v2;
  v25 = MEMORY[0x1E697D670];
  sub_1A458AAF8(0, &qword_1EB127480, MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  sub_1A458AB4C();
  sub_1A458A984(&qword_1EB127490, &qword_1EB127480, v25, MEMORY[0x1E697D680]);
  v26 = v31;
  v27 = v34;
  sub_1A524ACA4();

  return (*(v33 + 8))(v27, v26);
}

uint64_t sub_1A4585D60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  sub_1A458A8C8(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A458A820(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v38 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v37 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v34 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v34 = &v34 - v15;
  v43 = *a1;
  v44 = *(a1 + 8);
  v16 = *(a1 + 1);
  v41 = *(a1 + 2);
  v42 = v16;
  v17 = swift_allocObject();
  v18 = *(a1 + 1);
  v17[1] = *a1;
  v17[2] = v18;
  v17[3] = *(a1 + 2);
  v35 = sub_1A3FF2CA0;
  sub_1A458ADCC(&v43, v40, sub_1A3FF2CA0);
  v19 = MEMORY[0x1E6981790];
  sub_1A458AC48(&v42, v40, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A458AC48(&v41, v40, &qword_1EB13DDA8, &type metadata for LemonadeSettingsCurationResetButtonsView.SettingActiveAlert, v19);
  v20 = MEMORY[0x1E69817F0];
  sub_1A458AAF8(0, &qword_1EB13DD88, MEMORY[0x1E6981138], MEMORY[0x1E69817F0]);
  sub_1A458A984(&qword_1EB13DD90, &qword_1EB13DD88, v20, MEMORY[0x1E69817F8]);
  sub_1A524B704();
  sub_1A458A9DC(&qword_1EB13DDB0, sub_1A458A8C8, MEMORY[0x1E697D680]);
  sub_1A524AA94();
  v21 = *(v5 + 8);
  v21(v7, v4);
  v22 = swift_allocObject();
  v23 = *(a1 + 1);
  v22[1] = *a1;
  v22[2] = v23;
  v22[3] = *(a1 + 2);
  sub_1A458ADCC(&v43, v40, v35);
  sub_1A458AC48(&v42, v40, &qword_1EB1274B0, MEMORY[0x1E69E6370], v19);
  sub_1A458AC48(&v41, v40, &qword_1EB13DDA8, &type metadata for LemonadeSettingsCurationResetButtonsView.SettingActiveAlert, v19);
  sub_1A524B704();
  v24 = v36;
  sub_1A524AA94();
  v21(v7, v4);
  v25 = v34;
  v26 = v37;
  sub_1A458ADCC(v34, v37, sub_1A458A820);
  v27 = v24;
  v28 = v24;
  v29 = v38;
  sub_1A458ADCC(v27, v38, sub_1A458A820);
  v30 = v39;
  sub_1A458ADCC(v26, v39, sub_1A458A820);
  sub_1A458A7BC(0, v31);
  sub_1A458ADCC(v29, v30 + *(v32 + 48), sub_1A458A820);
  sub_1A458AEE8(v28, sub_1A458A820);
  sub_1A458AEE8(v25, sub_1A458A820);
  sub_1A458AEE8(v29, sub_1A458A820);
  return sub_1A458AEE8(v26, sub_1A458A820);
}

uint64_t sub_1A4586260@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1A5249314();
  sub_1A3C38BD4(0xD000000000000030);
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6 & 1;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_1A45862E4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1A5249314();
  sub_1A3C38BD4(0xD000000000000030);
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6 & 1;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_1A4586368(uint64_t *a1)
{
  sub_1A458AFF8(0, &qword_1EB1249B0, MEMORY[0x1E697BDB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12[-v3];
  v18 = *(a1 + 2);
  v15 = *(a1 + 2);
  v5 = MEMORY[0x1E6981790];
  sub_1A458B6DC(0, &qword_1EB13DDA8, &type metadata for LemonadeSettingsCurationResetButtonsView.SettingActiveAlert, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v13)
  {
    v6 = 0xD00000000000003BLL;
  }

  else
  {
    v6 = 0xD000000000000035;
  }

  v13 = sub_1A3C38BD4(v6);
  v14 = v7;
  sub_1A5247B14();
  v8 = sub_1A5247B54();
  (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
  v16 = *a1;
  v17 = *(a1 + 8);
  v15 = *(a1 + 1);
  v9 = swift_allocObject();
  v10 = *(a1 + 1);
  v9[1] = *a1;
  v9[2] = v10;
  v9[3] = *(a1 + 2);
  sub_1A458ADCC(&v16, v12, sub_1A3FF2CA0);
  sub_1A458AC48(&v15, v12, &qword_1EB1274B0, MEMORY[0x1E69E6370], v5);
  sub_1A458AC48(&v18, v12, &qword_1EB13DDA8, &type metadata for LemonadeSettingsCurationResetButtonsView.SettingActiveAlert, v5);
  sub_1A3D5F9DC();
  return sub_1A524B734();
}

void sub_1A45865C8(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(a1 + 8);
  v6 = *a1;
  v12 = *a1;
  if (v13 == 1)
  {
    v7 = v6;
    if (!v6)
    {
      return;
    }
  }

  else
  {

    v8 = sub_1A524D254();
    v9 = sub_1A524A014();
    sub_1A5246DF4(v8, &dword_1A3C1C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A458AEE8(&v12, sub_1A3FF2CA0);
    (*(v3 + 8))(v5, v2);
    v6 = v11;
    if (!v11)
    {
      return;
    }
  }

  v11 = *(a1 + 32);
  sub_1A458B6DC(0, &qword_1EB13DDA8, &type metadata for LemonadeSettingsCurationResetButtonsView.SettingActiveAlert, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v10[15])
  {
    PXResetPeopleFeedback(v6);
  }

  else
  {
    PXResetSuggestedMemories(v6);
  }
}

void sub_1A45867E0()
{
  swift_getKeyPath();
  (*(*v0 + 544))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t (*sub_1A458698C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 544))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore25LemonadeSettingsViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A458A9DC(&qword_1EB13DD38, type metadata accessor for LemonadeSettingsViewModel, &protocol conformance descriptor for LemonadeSettingsViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3E0A030(v4);
  return sub_1A4586ADC;
}

void sub_1A4586AE8()
{
  swift_getKeyPath();
  (*(*v0 + 544))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t (*sub_1A4586C94(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 544))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore25LemonadeSettingsViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A458A9DC(&qword_1EB13DD38, type metadata accessor for LemonadeSettingsViewModel, &protocol conformance descriptor for LemonadeSettingsViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3F2894C(v4);
  return sub_1A4586DE4;
}

void sub_1A4586DF0()
{
  swift_getKeyPath();
  (*(*v0 + 544))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t (*sub_1A4586F9C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 544))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore25LemonadeSettingsViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A458A9DC(&qword_1EB13DD38, type metadata accessor for LemonadeSettingsViewModel, &protocol conformance descriptor for LemonadeSettingsViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4504FF8(v4);
  return sub_1A45870EC;
}

double sub_1A45870F8()
{
  swift_getKeyPath();
  (*(*v0 + 544))();

  swift_unknownObjectRetain();
  return result;
}

double sub_1A4587164@<D0>(_OWORD **a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 544))();

  *a2 = v3[3];

  swift_unknownObjectRetain();
  return result;
}

double sub_1A45871F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  KeyPath = swift_getKeyPath();
  v7[2] = v4;
  v7[3] = v2;
  v7[4] = v3;
  (*(*v4 + 552))(KeyPath, sub_1A42CA8C8, v7, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

void *sub_1A45872F4()
{
  swift_getKeyPath();
  (*(*v0 + 544))();

  swift_beginAccess();
  v1 = v0[8];
  v2 = v1;
  return v1;
}

uint64_t sub_1A458737C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 368))();
  *a2 = result;
  return result;
}

uint64_t sub_1A45873D0(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 376);
  v4 = *a1;
  return v3(v2);
}

void sub_1A4587430(void *a1)
{
  swift_beginAccess();
  v3 = v1[8];
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 552))(v9);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A5240AD4();
  v4 = v3;
  v5 = a1;
  v6 = sub_1A524DBF4();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v1[8];
LABEL_8:
  v1[8] = a1;
}

uint64_t (*sub_1A458758C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 544))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore25LemonadeSettingsViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A458A9DC(&qword_1EB13DD38, type metadata accessor for LemonadeSettingsViewModel, &protocol conformance descriptor for LemonadeSettingsViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A45872A4(v4);
  return sub_1A45876DC;
}

double sub_1A45876E8()
{
  swift_getKeyPath();
  (*(*v0 + 544))();

  return result;
}

double sub_1A458775C@<D0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 544))();

  *a2 = v3[9];

  return result;
}

double sub_1A4587810(uint64_t a1)
{
  if (v1[9] == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 552))(v3);
  }

  return result;
}

id sub_1A4587974()
{
  swift_getKeyPath();
  (*(*v0 + 544))();

  swift_beginAccess();
  v1 = v0[10];

  return v1;
}

uint64_t sub_1A4587A04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 464))();
  *a2 = result;
  return result;
}

void sub_1A4587AB4(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[10];
  sub_1A3C52C70(0, &qword_1EB126BF0, 0x1E69789A8);
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = v2[10];
    v2[10] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 552))(v9);
  }
}

uint64_t (*sub_1A4587BF8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 544))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore25LemonadeSettingsViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A458A9DC(&qword_1EB13DD38, type metadata accessor for LemonadeSettingsViewModel, &protocol conformance descriptor for LemonadeSettingsViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4587924(v4);
  return sub_1A4587D48;
}

void sub_1A4587DA4(void *a1, void *a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 24) = v6;
  *(v3 + 32) = v6;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 48) = 0;
  sub_1A5241604();
  *(v3 + 40) = a1;
  *(v3 + 80) = a2;
  type metadata accessor for SharedAlbumsAvailabilityObserver(0);

  *(v3 + 72) = static SharedAlbumsAvailabilityObserver.observer(for:)(a2);
  v8 = [objc_opt_self() standardUserDefaults];
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();

  v7 = sub_1A5240C84();

  sub_1A4587430(v7);
  sub_1A4588288(v3);
}

id sub_1A4588114@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 showHolidayCalendarEvents];
  *a2 = result;
  return result;
}

id *LemonadeSettingsViewModel.deinit()
{
  v1 = v0;
  PXUnregisterPreferencesObserver(v0);
  v2 = (*(*v0 + 46))();
  if (v2)
  {
    v3 = v2;
    sub_1A5240AC4();
  }

  swift_unknownObjectRelease();

  v4 = OBJC_IVAR____TtC12PhotosUICore25LemonadeSettingsViewModel___observationRegistrar;
  v5 = sub_1A5241614();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  return v1;
}

uint64_t LemonadeSettingsViewModel.__deallocating_deinit()
{
  LemonadeSettingsViewModel.deinit();

  return swift_deallocClassInstance();
}

void sub_1A4588288(void **a1)
{
  if (PXPreferencesIsSharedLibrarySuggestionsEnabled())
  {
    if ((*(*a1[5] + 200))())
    {
      v2 = sub_1A3C38BD4(0xD000000000000038);
      sub_1A48E49C4(6, v2, v3, 0, 0, v5, v4);
      v10 = *&v5[8];
      v11 = v6;
      v7 = *v5;
      v8 = *&v5[16];
      v9 = v6;
      sub_1A5246624();
    }
  }

  sub_1A5246614();
}

void sub_1A4588638()
{
  v0 = sub_1A3C38BD4(0xD00000000000001CLL);
  sub_1A48E49C4(0, v0, v1, 0, 0, v3, v2);
  v8 = *&v3[8];
  v9 = v4;
  v5 = *v3;
  v6 = *&v3[16];
  v7 = v4;
  sub_1A5246624();
}

void sub_1A45888AC()
{
  v0 = sub_1A3C38BD4(0xD000000000000027);
  v2 = v1;
  v3 = sub_1A3C38BD4(0xD00000000000002DLL);
  sub_1A48E49C4(2, v0, v2, v3, v4, v6, v5);
  v11 = *&v6[8];
  v12 = v7;
  v8 = *v6;
  v9 = *&v6[16];
  v10 = v7;
  sub_1A5246624();
}

void sub_1A4588AB8()
{
  v46 = *(*v0 + 176);
  v1 = *(v46() + 16);

  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(*v0 + 192);
    while (1)
    {
      v6 = (v46)(v2);
      if (v4 >= *(v6 + 16))
      {
        break;
      }

      v7 = *(v6 + v3 + 32);

      sub_1A48E4A20(v7, v8);
      v10 = v9;
      v11 = v5(v49);
      v13 = v12;
      v14 = *v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v13 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_1A4589590(v14);
        *v13 = v14;
      }

      if (v4 >= *(v14 + 2))
      {
        goto LABEL_24;
      }

      ++v4;
      v14[v3 + 56] = v10 & 1;
      v2 = v11(v49, 0);
      v3 += 48;
      if (v1 == v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_8:
  v47 = *(*v0 + 272);
  v16 = *(v47(v2) + 16);

  if (v16)
  {
    v18 = 0;
    v19 = 0;
    v20 = *(*v0 + 288);
    while (1)
    {
      v21 = v47(v17);
      if (v19 >= *(v21 + 16))
      {
        break;
      }

      v22 = *(v21 + v18 + 32);

      sub_1A48E4A20(v22, v23);
      v25 = v24;
      v26 = v20(v49);
      v28 = v27;
      v29 = *v27;
      v30 = swift_isUniquelyReferenced_nonNull_native();
      *v28 = v29;
      if ((v30 & 1) == 0)
      {
        v29 = sub_1A4589590(v29);
        *v28 = v29;
      }

      if (v19 >= *(v29 + 2))
      {
        goto LABEL_26;
      }

      ++v19;
      v29[v18 + 56] = v25 & 1;
      v17 = v26(v49, 0);
      v18 += 48;
      if (v16 == v19)
      {
        goto LABEL_15;
      }
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_15:
  v48 = *(*v0 + 224);
  v31 = *(v48(v17) + 16);

  if (!v31)
  {
    return;
  }

  v33 = 0;
  v34 = 0;
  v35 = *(*v0 + 240);
  while (1)
  {
    v36 = v48(v32);
    if (v34 >= *(v36 + 16))
    {
      break;
    }

    v37 = *(v36 + v33 + 32);

    sub_1A48E4A20(v37, v38);
    v40 = v39;
    v41 = v35(v49);
    v43 = v42;
    v44 = *v42;
    v45 = swift_isUniquelyReferenced_nonNull_native();
    *v43 = v44;
    if ((v45 & 1) == 0)
    {
      v44 = sub_1A4589590(v44);
      *v43 = v44;
    }

    if (v34 >= *(v44 + 2))
    {
      goto LABEL_28;
    }

    ++v34;
    v44[v33 + 56] = v40 & 1;
    v32 = v41(v49, 0);
    v33 += 48;
    if (v31 == v34)
    {
      return;
    }
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

double sub_1A4588E48(void **a1)
{
  swift_getKeyPath();
  ((*a1)[68])();

  v2 = *(*a1[9] + 136);

  v2(v3);

  return result;
}

double sub_1A4588EF8(uint64_t a1)
{
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524CCB4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A524CC54();

  v6 = sub_1A524CC44();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;

  sub_1A3D4D930(0, 0, v3, &unk_1A534C430, v7);

  return result;
}

uint64_t sub_1A4589070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1A524CC54();
  *(v4 + 48) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4589108, v6, v5);
}

uint64_t sub_1A4589108()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1A4588288(Strong);
  }

  v2 = *(v0 + 8);

  return v2();
}

id sub_1A4589520(void *a1)
{
  v1 = a1;
  v2 = sub_1A524C634();
  v3 = [v1 integerForKey_];

  return v3;
}

char *sub_1A45895A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A458B6DC(0, &qword_1EB13DDB8, &type metadata for LemonadePhotosSetting, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A45896DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v4 = 1;
    }

    else
    {
      sub_1A458AFA4();
      v3 = 0;
      do
      {
        v4 = sub_1A524C594();
        if ((v4 & 1) == 0)
        {
          break;
        }

        v3 += 48;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_1A45897D8(uint64_t a1, double a2)
{
  if (!qword_1EB13DCF8)
  {
    sub_1A458986C(255);
    sub_1A458A9DC(&qword_1EB13DD28, sub_1A458986C, MEMORY[0x1E6981F48]);
    v2 = sub_1A524A2A4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB13DCF8);
    }
  }
}

void sub_1A45898A0(uint64_t a1)
{
  if (!qword_1EB13DD08)
  {
    sub_1A4589924(255, &qword_1EB13DD10, sub_1A45899E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13DD08);
    }
  }
}

void sub_1A4589924(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1A4581A6C(255, &qword_1EB13DBF8, MEMORY[0x1E6981948]);
    a3(255);
    sub_1A4581B94();
    sub_1A4581CD0();
    v5 = sub_1A524B9D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A45899E0(uint64_t a1)
{
  if (!qword_1EB13DD18)
  {
    sub_1A458B6DC(255, &qword_1EB127690, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    sub_1A458A854(255, &qword_1EB13DD20, sub_1A3FF705C, MEMORY[0x1E697CBE8]);
    sub_1A4581D24(255);
    v1 = sub_1A524BA74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13DD18);
    }
  }
}

void sub_1A4589AB8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 24) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4589B1C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 32) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4589B80()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 80);
  *(v2 + 80) = v1;
  v4 = v1;
}

double sub_1A4589BE8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 536))(Strong);
  }

  return result;
}

double (*sub_1A4589C6C())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A458AE4C;
}

double sub_1A4589CC4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1A4588288(Strong);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A458AFF8(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void __swift_store_extra_inhabitant_indexTm_5(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A458AFF8(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

void sub_1A458A044(uint64_t a1)
{
  sub_1A3FF2CA0(319);
  if (v1 <= 0x3F)
  {
    sub_1A458AFF8(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A458AFF8(319, &qword_1EB13DBC8, type metadata accessor for LemonadeSettingsViewModel, MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A458A150(uint64_t a1, int a2)
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

uint64_t sub_1A458A198(uint64_t result, int a2, int a3)
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

uint64_t sub_1A458A1F0(uint64_t a1)
{
  result = sub_1A5241614();
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

unint64_t sub_1A458A308()
{
  result = qword_1EB13DD40;
  if (!qword_1EB13DD40)
  {
    sub_1A458A420(255, &qword_1EB13DD48, sub_1A45818FC, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A45819B0(255);
    sub_1A458A9DC(&qword_1EB13DC78, sub_1A45819B0, MEMORY[0x1E697CCF0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DD40);
  }

  return result;
}

void sub_1A458A420(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A458A48C()
{
  result = qword_1EB13DD50;
  if (!qword_1EB13DD50)
  {
    sub_1A458AFF8(255, &qword_1EB13DD58, sub_1A45844C4, MEMORY[0x1E69E6720]);
    sub_1A4583F48(255);
    sub_1A458A9DC(&qword_1EB13DCF0, sub_1A4583F48, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DD50);
  }

  return result;
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBPAAE20listHasStackBehaviorQryFQOyAA4FormVyAA7SectionVyAA4TextVAA7ForEachVyAA7BindingVySay12PhotosUICore08LemonadeN7SettingVGGAQ4KindOAA15ModifiedContentVyAWyAWyAcAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAJG_SbQo_AA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGGAA31AccessibilityAttachmentModifierVGGAWyAWyAjA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVySiSgGGSgGG_Qo_HOTm(uint64_t a1, uint64_t (*a2)(uint64_t), unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  a2(255);
  sub_1A458A9DC(a3, a4, MEMORY[0x1E697CCF0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A458A61C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A458A678(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void sub_1A458A704(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v7 = sub_1A524BA74();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A458A7BC(uint64_t a1, double a2)
{
  if (!qword_1EB13DD70)
  {
    sub_1A458A820(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13DD70);
    }
  }
}

void sub_1A458A854(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A458A8C8(uint64_t a1)
{
  if (!qword_1EB13DD80)
  {
    v1 = MEMORY[0x1E69817F0];
    sub_1A458AAF8(255, &qword_1EB13DD88, MEMORY[0x1E6981138], MEMORY[0x1E69817F0]);
    sub_1A458A984(&qword_1EB13DD90, &qword_1EB13DD88, v1, MEMORY[0x1E69817F8]);
    v2 = sub_1A524B764();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB13DD80);
    }
  }
}

uint64_t sub_1A458A984(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A458AAF8(255, a2, MEMORY[0x1E6981138], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A458A9DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A458AA2C@<X0>(uint64_t a1@<X8>)
{
  sub_1A458B6DC(0, &qword_1EB13DDA8, &type metadata for LemonadeSettingsCurationResetButtonsView.SettingActiveAlert, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  sub_1A3C38BD4(0xD000000000000036);
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

void sub_1A458AAF8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = (a4)(0, MEMORY[0x1E6981148], a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A458AB4C()
{
  result = qword_1EB13DDA0;
  if (!qword_1EB13DDA0)
  {
    sub_1A458A704(255, &qword_1EB13DD60, sub_1A458A788, sub_1A426C988, MEMORY[0x1E6981E70]);
    sub_1A458A9DC(&qword_1EB13DD98, sub_1A458A788, MEMORY[0x1E6981F48]);
    sub_1A426CA60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DDA0);
  }

  return result;
}

uint64_t sub_1A458AC48(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1A458B6DC(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t objectdestroy_77Tm()
{
  sub_1A3D35BAC(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1A458AD14(char a1)
{
  v1 = MEMORY[0x1E6981790];
  sub_1A458B6DC(0, &qword_1EB13DDA8, &type metadata for LemonadeSettingsCurationResetButtonsView.SettingActiveAlert, MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  sub_1A458B6DC(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], v1);
  return sub_1A524B6B4();
}

uint64_t sub_1A458ADCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A458AE54()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A4589070(v3, v4, v5, v2);
}

uint64_t sub_1A458AEE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A458AF48(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1A458B6DC(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_1A458AFA4()
{
  result = qword_1EB13DDC8;
  if (!qword_1EB13DDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DDC8);
  }

  return result;
}

void sub_1A458AFF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A458B05C(__int128 *a1)
{
  v29 = *a1;
  v30 = a1[1];
  v31 = a1[2];
  v32 = a1[3];
  v35 = *a1;
  v36 = v30;
  v1 = a1[3];
  v37 = a1[2];
  v38 = v1;
  sub_1A458B6DC(0, &qword_1EB13DDF0, &type metadata for LemonadePhotosSetting, MEMORY[0x1E6981948]);
  v3 = v2;
  MEMORY[0x1A5906C60](v33);
  v4 = v33[0];

  if (sub_1A40B1BE4(v4, 2))
  {
    *&v35 = sub_1A3C38BD4(0xD000000000000023);
    *(&v35 + 1) = v5;
    sub_1A3D5F9DC();
    sub_1A524A464();
  }

  v35 = v29;
  v36 = v30;
  v37 = v31;
  v38 = v32;
  MEMORY[0x1A5906C60](v33, v3);

  KeyPath = *(&v34 + 1);
  if (!*(&v34 + 1))
  {
    v18 = 0;
    v20 = 0;
    v24 = 0;
LABEL_10:
    v25 = 0;
    v27 = 0;
    v26 = 0;
    goto LABEL_11;
  }

  v7 = HIBYTE(*(&v34 + 1)) & 0xFLL;
  if ((*(&v34 + 1) & 0x2000000000000000) == 0)
  {
    v7 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    v18 = 0;
    v20 = 0;
    v24 = 0;
    KeyPath = 0;
    goto LABEL_10;
  }

  v35 = v34;
  sub_1A3D5F9DC();
  v8 = sub_1A524A464();
  v10 = v9;
  v12 = v11;
  sub_1A524A254();
  v13 = sub_1A524A3C4();
  v15 = v14;
  v17 = v16;

  sub_1A3E04DF4(v8, v10, v12 & 1);

  sub_1A524B3D4();
  v18 = sub_1A524A364();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_1A3E04DF4(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v35) = v22 & 1;
  v25 = 1;
  LOBYTE(v33[0]) = 1;
  v26 = v22 & 1;
  v27 = 256;
LABEL_11:
  *&v35 = v18;
  *(&v35 + 1) = v20;
  *&v36 = v26;
  *(&v36 + 1) = v24;
  *&v37 = v27;
  *(&v37 + 1) = KeyPath;
  *&v38 = 0;
  BYTE8(v38) = v25;
  sub_1A458B6DC(0, &qword_1EB127690, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
  sub_1A458A854(0, &qword_1EB13DD20, sub_1A3FF705C, MEMORY[0x1E697CBE8]);
  sub_1A4581D24(0);
  sub_1A4283548();
  sub_1A458B4F4();
  sub_1A45843A8(&qword_1EB13DC70, sub_1A4581D24, sub_1A426CA60, MEMORY[0x1E6982090]);
  return sub_1A524BA44();
}

unint64_t sub_1A458B41C()
{
  result = qword_1EB13DDD8;
  if (!qword_1EB13DDD8)
  {
    sub_1A45899E0(255);
    sub_1A4283548();
    sub_1A458B4F4();
    sub_1A45843A8(&qword_1EB13DC70, sub_1A4581D24, sub_1A426CA60, MEMORY[0x1E6982090]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DDD8);
  }

  return result;
}

unint64_t sub_1A458B4F4()
{
  result = qword_1EB13DDE0;
  if (!qword_1EB13DDE0)
  {
    sub_1A458A854(255, &qword_1EB13DD20, sub_1A3FF705C, MEMORY[0x1E697CBE8]);
    v1 = MEMORY[0x1E697D6A0];
    sub_1A458AAF8(255, &qword_1EB130100, MEMORY[0x1E6981138], MEMORY[0x1E697D6A0]);
    sub_1A458A984(&qword_1EB130108, &qword_1EB130100, v1, MEMORY[0x1E697D6A8]);
    swift_getOpaqueTypeConformance2();
    sub_1A3D72360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DDE0);
  }

  return result;
}

unint64_t sub_1A458B640()
{
  result = qword_1EB13DDE8;
  if (!qword_1EB13DDE8)
  {
    sub_1A458B6DC(255, &qword_1EB13DDF0, &type metadata for LemonadePhotosSetting, MEMORY[0x1E6981948]);
    sub_1A458B72C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DDE8);
  }

  return result;
}

void sub_1A458B6DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A458B72C()
{
  result = qword_1EB13DDF8;
  if (!qword_1EB13DDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DDF8);
  }

  return result;
}

double sub_1A458B7B4()
{
  DataSectionItemListManager.itemList.getter(&v1);
  sub_1A3C52C70(0, &qword_1EB1374F0, off_1E771FAD8);
  sub_1A45840DC(0);
  sub_1A3C3A220(&qword_1EB13DCB0, &qword_1EB1374F0, off_1E771FAD8, &protocol conformance descriptor for PXStorageTipCollectionViewDataSection);
  sub_1A4584360();
  sub_1A3C3A220(&qword_1EB13DE00, &qword_1EB13DE08, off_1E771FAE8, &protocol conformance descriptor for PXStorageTipListItem);
  sub_1A524B9C4();
  return result;
}

uint64_t sub_1A458B8D0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = [v3 title];
  v5 = sub_1A524C674();
  v7 = v6;

  v8 = [v3 systemImageName];
  v9 = sub_1A524C674();
  v11 = v10;

  v12 = [v3 totalSizeInBytes];
  v13 = [v3 count];

  return sub_1A4073FF8(v5, v7, v9, v11, v12, v13, a1);
}

uint64_t objectdestroy_124Tm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));
  sub_1A3D35BAC(*v3, *(v3 + 8));
  v4 = *(v2 + 20);
  sub_1A458AFF8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A5242D14();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A458BB78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A458BC0C(_OWORD *a1, uint64_t (*a2)(void), uint64_t (*a3)(_OWORD *, uint64_t))
{
  v6 = *(*(a2(0) - 8) + 80);
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  return a3(v10, v3 + ((v6 + 16) & ~v6));
}

uint64_t objectdestroy_127Tm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = (*(*(v2 - 8) + 80) + 80) & ~*(*(v2 - 8) + 80);

  sub_1A3D35BAC(*(v1 + v3), *(v1 + v3 + 8));
  v4 = *(v2 + 20);
  sub_1A458AFF8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A5242D14();
    (*(*(v5 - 8) + 8))(v1 + v3 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1A458BE4C(uint64_t a1, unsigned __int8 *a2, uint64_t (*a3)(void))
{
  v4 = v3;
  a3(0);
  v6 = *a2;
  v7 = v4[2];
  v12 = v4[1];
  v13 = v7;
  v8 = v4[4];
  v14 = v4[3];
  v15 = v8;
  sub_1A458B6DC(0, &qword_1EB13DDF0, &type metadata for LemonadePhotosSetting, MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](&v11);
  v9 = v11;

  v10 = sub_1A4582D04();
  sub_1A48E4BCC(v6, v10, v9);
}

unint64_t sub_1A458BF58()
{
  result = qword_1EB1C79F8[0];
  if (!qword_1EB1C79F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C79F8);
  }

  return result;
}

uint64_t Color.init(hex:)(uint64_t a1, uint64_t a2, double a3)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v5 = sub_1A524B394();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A52404F4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22[-1] - v14;
  v22[0] = a1;
  v22[1] = a2;
  sub_1A5240494();
  sub_1A52404D4();
  v16 = *(v10 + 8);
  v16(v15, v9);
  sub_1A3D5F9DC();
  sub_1A524DFB4();
  v16(v12, v9);

  v22[0] = 0;
  v17 = objc_allocWithZone(MEMORY[0x1E696AE88]);
  v18 = sub_1A524C634();
  v19 = [v17 initWithString_];

  [v19 scanHexLongLong_];
  sub_1A524C7A4();

  (*(v6 + 104))(v8, *MEMORY[0x1E69814D8], v5);
  return sub_1A524B4B4();
}

uint64_t sub_1A458C30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for LemonadeScrollActionHandler(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A52488B4();
  (*(*(v11 - 8) + 16))(v10, a1, v11);
  sub_1A3C341C8(a2, &v10[*(v8 + 20)]);
  MEMORY[0x1A5906490](v10, a3, v8, a4);
  return sub_1A458CC04(v10, type metadata accessor for LemonadeScrollActionHandler);
}

uint64_t type metadata accessor for LemonadeScrollActionHandler(uint64_t a1)
{
  result = qword_1EB166378;
  if (!qword_1EB166378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A458C470()
{
  result = qword_1EB166390[0];
  if (!qword_1EB166390[0])
  {
    type metadata accessor for LemonadeScrollActionHandler(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB166390);
  }

  return result;
}

uint64_t sub_1A458C4F0(uint64_t a1)
{
  result = sub_1A52488B4();
  if (v2 <= 0x3F)
  {
    result = sub_1A458C574();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A458C574()
{
  result = qword_1EB125698;
  if (!qword_1EB125698)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB125698);
  }

  return result;
}

double sub_1A458C5F4(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for LemonadeScrollActionHandler(0) + 20));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 24))(v2, v3);
  v5 = 0;
  if (v4 > 0.0)
  {
    v5 = MEMORY[0x1A5907080](0);
  }

  MEMORY[0x1EEE9AC00](v5);
  sub_1A52483D4();

  return result;
}

uint64_t sub_1A458C6D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a2 - 8;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  sub_1A458C924(0, v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A458C9DC(0);
  (*(*(v12 - 8) + 16))(v11, a1, v12);
  v13 = (v3 + *(v5 + 28));
  v14 = v13[3];
  v15 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v19[1] = (*(v15 + 16))(v14, v15);
  sub_1A458CA94(v3, v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_1A458CAF8(v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_1A458CBBC(&qword_1EB121848, sub_1A458C924, MEMORY[0x1E6981810]);
  sub_1A524B154();

  return sub_1A458CC04(v11, sub_1A458C924);
}

void sub_1A458C924(uint64_t a1, double a2)
{
  if (!qword_1EB121840)
  {
    sub_1A458C9DC(255);
    sub_1A458CBBC(&qword_1EB122268, sub_1A458C9DC, MEMORY[0x1E697FDF8]);
    sub_1A458CA40();
    v2 = sub_1A524B794();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB121840);
    }
  }
}

void sub_1A458C9DC(uint64_t a1)
{
  if (!qword_1EB122260)
  {
    type metadata accessor for LemonadeScrollActionHandler(255);
    sub_1A458C470();
    v1 = sub_1A52499C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122260);
    }
  }
}

unint64_t sub_1A458CA40()
{
  result = qword_1EB166530[0];
  if (!qword_1EB166530[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB166530);
  }

  return result;
}

uint64_t sub_1A458CA94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeScrollActionHandler(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A458CAF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeScrollActionHandler(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1A458CB5C()
{
  v1 = *(type metadata accessor for LemonadeScrollActionHandler(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A458C5F4(v2);
}

uint64_t sub_1A458CBBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A458CC04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A458CC64(double a1)
{
  sub_1A524BE74();
  sub_1A458CA40();
  return sub_1A52488A4();
}

unint64_t sub_1A458CCD4()
{
  result = qword_1EB166520;
  if (!qword_1EB166520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB166520);
  }

  return result;
}

void sub_1A458CD28(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v39 = a4;
  v37 = a2;
  v38 = a3;
  sub_1A458D1B4(0);
  v36[1] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v36 - v11;
  v13 = type metadata accessor for LemonadeTwoColumnsReorderView(0);
  v14 = v13[6];
  *(a5 + v14) = swift_getKeyPath();
  v15 = MEMORY[0x1E697DCB8];
  sub_1A459C4E8(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v16 = a5 + v13[7];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = v13[8];
  *(a5 + v17) = swift_getKeyPath();
  sub_1A459C4E8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], v15);
  swift_storeEnumTagMultiPayload();
  v18 = v13[9];
  *(a5 + v18) = swift_getKeyPath();
  sub_1A459C4E8(0, &qword_1EB128A50, MEMORY[0x1E697E730], v15);
  swift_storeEnumTagMultiPayload();
  v19 = (a5 + v13[10]);
  *v19 = sub_1A3C38BD4(0xD00000000000001BLL);
  v19[1] = v20;
  *(a5 + v13[11]) = 0x4028000000000000;
  v21 = type metadata accessor for LemonadeShelfItem(0);
  v22 = *(*(v21 - 8) + 56);
  v22(v12, 1, 1, v21);
  sub_1A459C5E0(v12, v9, sub_1A458D1B4);
  sub_1A524B694();
  sub_1A459C71C(v12, sub_1A458D1B4);
  v23 = a5 + v13[15];
  v40 = 0;
  v41 = 0;
  v42 = 1;
  sub_1A3E316EC(0);
  sub_1A524B694();
  v24 = v44;
  v25 = v45;
  *v23 = v43;
  *(v23 + 16) = v24;
  *(v23 + 24) = v25;
  v26 = (a5 + v13[16]);
  v40 = 0x3F50624DD2F1A9FCLL;
  sub_1A524B694();
  *v26 = v43;
  v28 = v37;
  v27 = v38;
  *a5 = a1;
  *(a5 + 8) = v28;
  *(a5 + 16) = v27;
  *(a5 + 24) = v39 & 1;
  v29 = *(*a1 + 560);

  v31 = v29(v30);
  v32 = sub_1A4919EE8(v31, a1);

  v22(v12, 1, 1, v21);

  v33 = sub_1A3C30368();
  sub_1A491BAF8(v32, 1, a1, v12, 0, 1, v33 & 1);
  v35 = v34;

  sub_1A459C71C(v12, sub_1A458D1B4);
  v40 = v35;
  sub_1A458D208(0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A458D270()
{
  v18 = sub_1A5249234();
  v1 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E697E730];
  sub_1A459C4E8(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = sub_1A52486A4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LemonadeTwoColumnsReorderView(0);
  sub_1A459BB8C(v0 + *(v12 + 36), v7, &qword_1EB128A50, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v18);
  }

  v15 = sub_1A5248684();
  (*(v9 + 8))(v11, v8);
  return v15 & 1;
}

uint64_t sub_1A458D520@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LemonadeTwoColumnsReorderView(0);
  v42 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v43 = v8;
  v44 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5249944();
  MEMORY[0x1EEE9AC00](v9);
  sub_1A45980BC(0);
  v45 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = sub_1A5249574();
  *(v12 + 1) = 0x4030000000000000;
  v12[16] = 0;
  sub_1A4599DA0(0);
  v14 = &v12[*(v13 + 44)];
  sub_1A458DAC8(1);
  sub_1A5249584();
  v46 = v1;
  LODWORD(v48) = 0;
  sub_1A459C77C(&qword_1EB122340, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  sub_1A524EE64();
  sub_1A459820C(0);
  sub_1A4599B30();
  sub_1A524BD94();
  v15 = sub_1A524A084();
  sub_1A5247BC4();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_1A4598F0C(0, &qword_1EB13DE20, sub_1A4598144, MEMORY[0x1E697E5E0]);
  v25 = &v14[*(v24 + 36)];
  *v25 = v15;
  *(v25 + 1) = v17;
  *(v25 + 2) = v19;
  *(v25 + 3) = v21;
  *(v25 + 4) = v23;
  v25[40] = 0;
  v26 = (*(**v1 + 560))();
  v27 = *(v26 + 16);
  if (v27)
  {
    v38 = v1;
    v39 = v12;
    v40 = a1;
    v48 = MEMORY[0x1E69E7CC0];
    sub_1A3C4ED58(0, v27, 0);
    v28 = v48;
    v29 = v26 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v30 = *(v41 + 72);
    do
    {
      sub_1A459C5E0(v29, v6, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      sub_1A3C5322C();
      v31 = v47;
      sub_1A459C71C(v6, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      v48 = v28;
      v33 = *(v28 + 16);
      v32 = *(v28 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1A3C4ED58((v32 > 1), v33 + 1, 1);
        v28 = v48;
      }

      *(v28 + 16) = v33 + 1;
      *(v28 + v33 + 32) = v31;
      v29 += v30;
      --v27;
    }

    while (v27);

    v12 = v39;
    v2 = v38;
  }

  else
  {

    v28 = MEMORY[0x1E69E7CC0];
  }

  v48 = v28;
  v34 = v44;
  sub_1A459C5E0(v2, v44, type metadata accessor for LemonadeTwoColumnsReorderView);
  v35 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v36 = swift_allocObject();
  sub_1A459B3CC(v34, v36 + v35, type metadata accessor for LemonadeTwoColumnsReorderView);
  sub_1A3C48B3C(0, &qword_1EB120CE8, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E62F8]);
  sub_1A459C77C(&qword_1EB13DFF8, sub_1A45980BC, MEMORY[0x1E6981870]);
  sub_1A4599E4C();
  sub_1A524B154();

  return sub_1A459BA98(v12, sub_1A45980BC);
}

uint64_t sub_1A458DAC8(char a1)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v44 = *(v4 - 8);
  *&v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5242D14();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  v14 = sub_1A524BB64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v42 = v15;
    v43 = v14;
    v18 = type metadata accessor for LemonadeTwoColumnsReorderView(0);
    sub_1A3D61808(v13);
    (*(v8 + 104))(v10, *MEMORY[0x1E69C2210], v7);
    v19 = sub_1A5242D04();
    v20 = *(v8 + 8);
    v20(v10, v7);
    v20(v13, v7);
    if (v19)
    {
      v21 = 12.0;
    }

    else
    {
      v21 = 24.0;
    }

    if (*(v2 + 24))
    {
      sub_1A459C4E8(0, &qword_1EB131870, MEMORY[0x1E697D750], MEMORY[0x1E69E6F90]);
      sub_1A524BB74();
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1A52FC9F0;
      v45 = xmmword_1A5317B80;
      *v17 = xmmword_1A5317B80;
      v23 = *MEMORY[0x1E697D748];
      v24 = v43;
      v25 = *(v42 + 104);
      v25(v17, v23, v43);
      sub_1A524BC04();
      sub_1A524BB84();
      *v17 = v45;
      v25(v17, v23, v24);
    }

    else
    {
      v27 = *(v2 + 8);
      v28 = sub_1A458D270();
      v29 = 0.4;
      if (v28)
      {
        v29 = 0.45;
      }

      v30 = (v27 - v21) * v29;
      v31 = v2 + *(v18 + 28);
      v32 = *v31;
      if (*(v31 + 8) == 1)
      {
        v46 = *v31;
      }

      else
      {

        v33 = sub_1A524D254();
        v34 = sub_1A524A014();
        sub_1A5246DF4(v33, &dword_1A3C1C000, v34, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v32, 0);
        (*(v44 + 8))(v6, v45);
        LOBYTE(v32) = v46;
      }

      v35 = round(v30);
      v37 = v42;
      v36 = v43;
      if (v32 - 5 >= 2)
      {
        if (v32 == 4)
        {
          sub_1A43A223C();
        }

        sub_1A459C4E8(0, &qword_1EB131870, MEMORY[0x1E697D750], MEMORY[0x1E69E6F90]);
        sub_1A524BB74();
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1A52FC9F0;
        v45 = xmmword_1A5317B80;
        *v17 = xmmword_1A5317B80;
        v39 = *MEMORY[0x1E697D748];
        v40 = *(v37 + 104);
        v40(v17, v39, v36);
        sub_1A524BC04();
        sub_1A524BB84();
        *v17 = v45;
        v40(v17, v39, v36);
      }

      else
      {
        sub_1A459C4E8(0, &qword_1EB131870, MEMORY[0x1E697D750], MEMORY[0x1E69E6F90]);
        sub_1A524BB74();
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1A52FC9F0;
        *v17 = xmmword_1A5317B80;
        v38 = *(v37 + 104);
        v38(v17, *MEMORY[0x1E697D748], v36);
        sub_1A524BC04();
        sub_1A524BB84();
        *v17 = v35;
        v38(v17, *MEMORY[0x1E697D728], v36);
        sub_1A524BC04();
      }
    }
  }

  else
  {
    sub_1A459C4E8(0, &qword_1EB131870, MEMORY[0x1E697D750], MEMORY[0x1E69E6F90]);
    sub_1A524BB74();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1A52F8E10;
    *v17 = xmmword_1A5317B80;
    (*(v15 + 104))(v17, *MEMORY[0x1E697D748], v14);
  }

  sub_1A524BB84();
  return v22;
}

uint64_t sub_1A458E484(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeTwoColumnsReorderView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = (a1 + *(v5 + 64));
  v8 = *v6;
  v7 = v6[1];
  v12[2] = v8;
  v12[3] = v7;
  sub_1A459C4E8(0, &qword_1EB13E010, sub_1A458D23C, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  swift_getKeyPath();
  sub_1A459C5E0(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeTwoColumnsReorderView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1A459B3CC(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for LemonadeTwoColumnsReorderView);
  sub_1A458D23C(0);
  sub_1A459B878(0, &qword_1EB13DE38, sub_1A4598318, sub_1A459984C, MEMORY[0x1E697F960]);
  sub_1A459C77C(&qword_1EB13DFB0, sub_1A458D23C, MEMORY[0x1E69E6338]);
  sub_1A4599ADC();
  sub_1A4599BA8();
  return sub_1A524B9B4();
}

uint64_t sub_1A458E6E0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t a1)@<X1>, uint64_t a3@<X8>)
{
  v169 = a2;
  v167 = a3;
  sub_1A459984C(0);
  v168 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v160 = v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for LemonadeTwoColumnsReorderView(0);
  v147 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  *&v149 = v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v162 = v137 - v8;
  v9 = type metadata accessor for LemonadeShelfItem(0);
  v143 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v146 = v10;
  v161 = v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459B3AC(0);
  v142 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A458D1B4(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v139 = v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v137 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v137 - v21;
  sub_1A4598388(0, v20);
  v24 = v23;
  v145 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v137 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4599A50(0, &qword_1EB13DFA8, sub_1A4598360, sub_1A459974C, MEMORY[0x1E697D548]);
  v155 = v27;
  v154 = *(v27 - 8);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v150 = v137 - v29;
  sub_1A459995C(0, v28);
  v157 = v30;
  v156 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v153 = v137 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4599914(0);
  v152 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v158 = v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v151 = v137 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v159 = v137 - v37;
  sub_1A459B878(0, &qword_1EB13E020, sub_1A4598318, sub_1A459984C, MEMORY[0x1E697F948]);
  v163 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v166 = v137 - v39;
  sub_1A4598360(0);
  v41 = v40;
  MEMORY[0x1EEE9AC00](v40);
  v144 = v137 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v43);
  v46 = v137 - v45;
  sub_1A4598318(0, v44);
  v164 = v47;
  v141 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v140 = v137 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1A3D65C4C();
  v171 = v41;
  if (v49)
  {
    v50 = v169;
    sub_1A458FC5C(a1, v46);
    *&v46[*(v41 + 36)] = 0x3F50624DD2F1A9FCLL;
    sub_1A459C4E8(0, &qword_1EB1202D0, MEMORY[0x1E69E8450], MEMORY[0x1E69E6F90]);
    sub_1A5246D14();
    v162 = swift_allocObject();
    *(v162 + 16) = xmmword_1A52F8E10;
    sub_1A5246CB4();
    v51 = *v50;
    v52 = type metadata accessor for DropViewDelegate(0);
    v178 = v52;
    v179 = sub_1A459B520();
    v53 = __swift_allocate_boxed_opaque_existential_1(&v176);
    sub_1A459C5E0(a1, v53 + v52[5], type metadata accessor for LemonadeShelfItem);
    v54 = v170;
    v55 = MEMORY[0x1E6981790];
    sub_1A459C4E8(0, &qword_1EB13DFF0, sub_1A458D1B4, MEMORY[0x1E6981790]);

    sub_1A524B6C4();
    v56 = (v50 + *(v54 + 52));
    v58 = *v56;
    v57 = v56[1];
    v174 = v58;
    v175 = v57;
    sub_1A459C4E8(0, &qword_1EB13E008, sub_1A458D208, v55);
    sub_1A524B6C4();
    v59 = v172;
    sub_1A459C4E8(0, &qword_1EB13E010, sub_1A458D23C, v55);
    v165 = v173;
    v60 = (v50 + *(v54 + 56));
    v62 = *v60;
    v61 = v60[1];
    v174 = v62;
    v175 = v61;
    sub_1A524B6C4();
    v63 = v172;
    v64 = v173;
    *v53 = v51;
    v65 = v53 + v52[7];
    *v65 = v59;
    *(v65 + 8) = v165;
    v66 = v53 + v52[8];
    *v66 = v63;
    *(v66 + 8) = v64;
    v67 = sub_1A459974C();
    v68 = v140;
    v69 = v171;
    sub_1A524B044();

    sub_1A459BA98(v46, sub_1A4598360);
    __swift_destroy_boxed_opaque_existential_0(&v176);
    v70 = v141;
    v71 = v164;
    (*(v141 + 16))(v166, v68, v164);
    swift_storeEnumTagMultiPayload();
    v176 = v69;
    v177 = v67;
    swift_getOpaqueTypeConformance2();
    sub_1A459C77C(&qword_1EB13DFD0, sub_1A459984C, MEMORY[0x1E6981F48]);
    sub_1A5249744();
    return (*(v70 + 8))(v68, v71);
  }

  v141 = v24;
  v140 = v26;
  v73 = v169;
  sub_1A458FC5C(a1, v26);
  *&v165 = a1;
  sub_1A459C5E0(a1, v22, type metadata accessor for LemonadeShelfItem);
  v74 = v143;
  (*(v143 + 7))(v22, 0, 1, v9);
  v75 = v73 + *(v170 + 48);
  sub_1A459C4E8(0, &qword_1EB13DFF0, sub_1A458D1B4, MEMORY[0x1E6981790]);
  v137[1] = v76;
  v137[2] = v75;
  sub_1A524B6A4();
  v77 = *(v142 + 48);
  sub_1A459C5E0(v22, v13, sub_1A458D1B4);
  sub_1A459C5E0(v18, &v13[v77], sub_1A458D1B4);
  v78 = v74;
  v79 = *(v74 + 6);
  v80 = v79(v13, 1, v9);
  v138 = v9;
  if (v80 == 1)
  {
    sub_1A459C71C(v18, sub_1A458D1B4);
    sub_1A459C71C(v22, sub_1A458D1B4);
    v81 = v79(&v13[v77], 1, v9);
    v82 = v141;
    v83 = v145;
    v84 = v140;
    if (v81 == 1)
    {
      sub_1A459C71C(v13, sub_1A458D1B4);
      v85 = v169;
      v86 = v165;
LABEL_10:
      v91 = (v85 + *(v170 + 64));
      v92 = *v91;
      v93 = v91[1];
      v176 = v92;
      v177 = v93;
      sub_1A3C48B3C(0, &qword_1EB121BF0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
      sub_1A524B6A4();
      v88 = v172;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v87 = v139;
  sub_1A459C5E0(v13, v139, sub_1A458D1B4);
  if (v79(&v13[v77], 1, v9) == 1)
  {
    sub_1A459C71C(v18, sub_1A458D1B4);
    sub_1A459C71C(v22, sub_1A458D1B4);
    sub_1A459C71C(v87, type metadata accessor for LemonadeShelfItem);
    v82 = v141;
    v83 = v145;
    v84 = v140;
LABEL_8:
    sub_1A459C71C(v13, sub_1A459B3AC);
    v88 = 1.0;
    v85 = v169;
    v86 = v165;
    goto LABEL_11;
  }

  v89 = v161;
  sub_1A459B3CC(&v13[v77], v161, type metadata accessor for LemonadeShelfItem);
  sub_1A459C77C(&qword_1EB13E028, type metadata accessor for LemonadeShelfItem, &unk_1A5373FC8);
  v90 = sub_1A524C594();
  sub_1A459C71C(v89, type metadata accessor for LemonadeShelfItem);
  sub_1A459C71C(v18, sub_1A458D1B4);
  sub_1A459C71C(v22, sub_1A458D1B4);
  sub_1A459C71C(v87, type metadata accessor for LemonadeShelfItem);
  sub_1A459C71C(v13, sub_1A458D1B4);
  v88 = 1.0;
  v85 = v169;
  v86 = v165;
  v82 = v141;
  v83 = v145;
  v84 = v140;
  if (v90)
  {
    goto LABEL_10;
  }

LABEL_11:
  v94 = v144;
  (*(v83 + 32))(v144, v84, v82);
  *(v94 + *(v171 + 36)) = v88;
  v95 = v162;
  v169 = type metadata accessor for LemonadeTwoColumnsReorderView;
  sub_1A459C5E0(v85, v162, type metadata accessor for LemonadeTwoColumnsReorderView);
  v143 = type metadata accessor for LemonadeShelfItem;
  v96 = v161;
  sub_1A459C5E0(v86, v161, type metadata accessor for LemonadeShelfItem);
  v97 = *(v147 + 80);
  v98 = (v97 + 16) & ~v97;
  v99 = v97 | 7;
  v100 = *(v78 + 80);
  v148 += v98;
  v101 = (v148 + v100) & ~v100;
  v147 = v99;
  v102 = swift_allocObject();
  v145 = v98;
  v146 = type metadata accessor for LemonadeTwoColumnsReorderView;
  sub_1A459B3CC(v95, v102 + v98, type metadata accessor for LemonadeTwoColumnsReorderView);
  sub_1A459B3CC(v96, v102 + v101, type metadata accessor for LemonadeShelfItem);
  v103 = v149;
  sub_1A459C5E0(v85, v149, type metadata accessor for LemonadeTwoColumnsReorderView);
  v104 = swift_allocObject();
  v105 = v85;
  sub_1A459B3CC(v103, v104 + v98, type metadata accessor for LemonadeTwoColumnsReorderView);
  v161 = sub_1A459974C();
  v106 = v150;
  sub_1A524B034();

  sub_1A459BA98(v94, sub_1A4598360);
  sub_1A459C4E8(0, &qword_1EB1202D0, MEMORY[0x1E69E8450], MEMORY[0x1E69E6F90]);
  sub_1A5246D14();
  *(swift_allocObject() + 16) = xmmword_1A52F8E10;
  sub_1A5246CB4();
  v107 = v170;
  v108 = *v105;
  v109 = type metadata accessor for DropViewDelegate(0);
  v178 = v109;
  v179 = sub_1A459B520();
  v110 = __swift_allocate_boxed_opaque_existential_1(&v176);
  sub_1A459C5E0(v165, v110 + v109[5], v143);

  sub_1A524B6C4();
  v111 = (v105 + *(v107 + 52));
  v113 = *v111;
  v112 = v111[1];
  v174 = v113;
  v175 = v112;
  v114 = MEMORY[0x1E6981790];
  sub_1A459C4E8(0, &qword_1EB13E008, sub_1A458D208, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v115 = v172;
  sub_1A459C4E8(0, &qword_1EB13E010, sub_1A458D23C, v114);
  v149 = v173;
  v116 = (v105 + *(v107 + 56));
  v118 = *v116;
  v117 = v116[1];
  v174 = v118;
  v175 = v117;
  sub_1A524B6C4();
  v120 = v171;
  v119 = v172;
  v121 = v173;
  *v110 = v108;
  v122 = v161;
  v123 = v110 + v109[7];
  *v123 = v115;
  *(v123 + 8) = v149;
  v124 = v110 + v109[8];
  *v124 = v119;
  *(v124 + 8) = v121;
  v172 = *&v120;
  *&v173 = v122;
  swift_getOpaqueTypeConformance2();
  v125 = v153;
  v126 = v155;
  sub_1A524B044();

  (*(v154 + 8))(v106, v126);
  __swift_destroy_boxed_opaque_existential_0(&v176);
  v127 = v162;
  sub_1A459C5E0(v105, v162, v169);
  v128 = swift_allocObject();
  sub_1A459B3CC(v127, v128 + v145, v146);
  v129 = v151;
  (*(v156 + 32))(v151, v125, v157);
  v130 = (v129 + *(v152 + 36));
  *v130 = sub_1A410AEF4;
  v130[1] = 0;
  v130[2] = sub_1A459B578;
  v130[3] = v128;
  v131 = v159;
  sub_1A459B810(v129, v159, sub_1A4599914);
  v132 = 0;
  if (sub_1A40B1BE4(*(v165 + *(v138 + 28)), 0))
  {
    v132 = sub_1A524B414();
  }

  v133 = v158;
  sub_1A459B650(v131, v158, sub_1A4599914);
  v134 = v160;
  sub_1A459B650(v133, v160, sub_1A4599914);
  sub_1A4599880(0, v135);
  *(v134 + *(v136 + 48)) = v132;
  sub_1A459BA98(v133, sub_1A4599914);
  sub_1A459B650(v134, v166, sub_1A459984C);
  swift_storeEnumTagMultiPayload();
  v176 = v120;
  v177 = v122;
  swift_getOpaqueTypeConformance2();
  sub_1A459C77C(&qword_1EB13DFD0, sub_1A459984C, MEMORY[0x1E6981F48]);
  sub_1A5249744();

  sub_1A459BA98(v134, sub_1A459984C);
  return sub_1A459BA98(v131, sub_1A4599914);
}

uint64_t sub_1A458FC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v63 = a2;
  v62 = sub_1A5248A14();
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v51[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1A5242D14();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v51[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51[-v11];
  sub_1A459855C(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v51[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4598534(0);
  v55 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A45984EC(0);
  v56 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v57 = &v51[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A45984A4(0);
  v54 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v58 = &v51[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A459845C(0);
  v59 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v60 = &v51[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v15 = sub_1A524BC74();
  v15[1] = v25;
  sub_1A459B764(0);
  sub_1A4590ED8(a1, v3, v15 + *(v26 + 44));
  v27 = type metadata accessor for LemonadeShelfItem(0);
  if (sub_1A40B1BE4(*(a1 + *(v27 + 28)), 0) && (*(v3 + 24) & 1) == 0)
  {
    v52 = 0;
    v53 = *(v3 + 8);
  }

  else
  {
    v53 = 0;
    v52 = 1;
  }

  v28 = type metadata accessor for LemonadeTwoColumnsReorderView(0);
  sub_1A3D61808(v12);
  (*(v7 + 104))(v9, *MEMORY[0x1E69C2210], v6);
  v29 = sub_1A5242D04();
  v30 = *(v7 + 8);
  v30(v9, v6);
  v30(v12, v6);
  if (v29)
  {
    sub_1A458D270();
  }

  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A459B810(v15, v18, sub_1A459855C);
  v31 = &v18[*(v55 + 36)];
  v32 = v65;
  *v31 = v64;
  v31[1] = v32;
  v31[2] = v66;
  v33 = sub_1A524A064();
  v34 = v57;
  sub_1A459B810(v18, v57, sub_1A4598534);
  v35 = &v34[*(v56 + 36)];
  *v35 = 2;
  v35[8] = v33;
  v36 = *(v3 + *(v28 + 44));
  v37 = v58;
  v38 = &v58[*(v54 + 36)];
  v39 = v62;
  v40 = *(v62 + 20);
  v41 = *MEMORY[0x1E697F468];
  v42 = sub_1A52494A4();
  v43 = *(*(v42 - 8) + 104);
  v43(&v38[v40], v41, v42);
  *v38 = v36;
  *(v38 + 1) = v36;
  sub_1A3E42C88(0);
  *&v38[*(v44 + 36)] = 256;
  sub_1A459B810(v34, v37, sub_1A45984EC);
  v45 = v60;
  v46 = &v60[*(v59 + 36)];
  sub_1A45993F8(0);
  v48 = v47;
  sub_1A5248B34();
  v43(&v46[*(v39 + 20)], v41, v42);
  *v46 = v36;
  *(v46 + 1) = v36;
  v46[*(v48 + 36)] = 0;
  sub_1A459B810(v37, v45, sub_1A45984A4);
  v49 = v61;
  v43(&v61[*(v39 + 20)], v41, v42);
  *v49 = v36;
  v49[1] = v36;
  sub_1A459948C();
  sub_1A459C77C(&qword_1EB128080, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  sub_1A524A5B4();
  sub_1A459C71C(v49, MEMORY[0x1E697EAF0]);
  return sub_1A459BA98(v45, sub_1A459845C);
}

id sub_1A4590298()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696ACA0]);

  return [v0 init];
}

uint64_t sub_1A45902D0(uint64_t a1, uint64_t a2)
{
  sub_1A458D1B4(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v16 - v8;
  sub_1A459C5E0(a2, v16 - v8, type metadata accessor for LemonadeShelfItem);
  v10 = type metadata accessor for LemonadeShelfItem(0);
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v11 = type metadata accessor for LemonadeTwoColumnsReorderView(0);
  sub_1A459C5E0(v9, v6, sub_1A458D1B4);
  sub_1A459C4E8(0, &qword_1EB13DFF0, sub_1A458D1B4, MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  sub_1A459C71C(v9, sub_1A458D1B4);
  v12 = (a1 + *(v11 + 64));
  v13 = *v12;
  v14 = v12[1];
  v16[2] = v13;
  v16[3] = v14;
  v16[1] = 0x3F50624DD2F1A9FCLL;
  sub_1A3C48B3C(0, &qword_1EB121BF0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A45904CC(uint64_t a1)
{
  v2 = sub_1A5249DE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for LemonadeTwoColumnsReorderView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1A458D1B4(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A459C4E8(0, &qword_1EB13DFF0, sub_1A458D1B4, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v12 = type metadata accessor for LemonadeShelfItem(0);
  v13 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  result = sub_1A459C71C(v11, sub_1A458D1B4);
  if (v13 != 1)
  {
    sub_1A524BCE4();
    sub_1A524BCD4();

    MEMORY[0x1EEE9AC00](v15);
    *&v18[-16] = a1;
    sub_1A459C5E0(a1, &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for LemonadeTwoColumnsReorderView);
    v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v17 = swift_allocObject();
    sub_1A459B3CC(&v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v17 + v16, type metadata accessor for LemonadeTwoColumnsReorderView);
    sub_1A5249DD4();
    sub_1A52483C4();

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_1A4590820()
{
  sub_1A458D1B4(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  v6 = type metadata accessor for LemonadeShelfItem(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for LemonadeTwoColumnsReorderView(0);
  sub_1A459C5E0(v5, v2, sub_1A458D1B4);
  sub_1A459C4E8(0, &qword_1EB13DFF0, sub_1A458D1B4, MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  return sub_1A459C71C(v5, sub_1A458D1B4);
}

uint64_t sub_1A4590980(unint64_t *a1)
{
  sub_1A458D1B4(0);
  v3.n128_f64[0] = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = (*(**a1 + 560))(v3);
  v8 = sub_1A4919EE8(v7, v6);

  v9 = type metadata accessor for LemonadeShelfItem(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = sub_1A3C30368();
  sub_1A491BAF8(v8, 1, v6, v5, 0, 1, v10 & 1);
  v12 = v11;

  sub_1A459C71C(v5, sub_1A458D1B4);
  v13 = (a1 + *(type metadata accessor for LemonadeTwoColumnsReorderView(0) + 52));
  v15 = *v13;
  v14 = v13[1];
  v17[2] = v15;
  v17[3] = v14;
  v17[1] = v12;
  sub_1A459C4E8(0, &qword_1EB13E008, sub_1A458D208, MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  return sub_1A4590B48();
}

uint64_t sub_1A4590B48()
{
  v1 = sub_1A524BEE4();
  v17 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A524BF64();
  v4 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LemonadeTwoColumnsReorderView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1A3C29A58(0, v10);
  v11 = sub_1A524D474();
  sub_1A459C5E0(v0, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeTwoColumnsReorderView);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  sub_1A459B3CC(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for LemonadeTwoColumnsReorderView);
  aBlock[4] = sub_1A459B1F4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_214;
  v14 = _Block_copy(aBlock);

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A459C77C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C38394(0);
  sub_1A459C77C(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v6, v3, v14);
  _Block_release(v14);

  (*(v17 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v16);
}

uint64_t sub_1A4590ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v124 = a3;
  v125 = a2;
  v117 = type metadata accessor for LemonadeTwoColumnsReorderView(0);
  v106 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v107 = v4;
  v108 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LemonadeShelfItem(0);
  v102 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v103 = v6;
  v104 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459876C(0);
  v121 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v105 = (&v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4598724(0, v8);
  v122 = v10;
  v110 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v109 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459862C(0, v11);
  v123 = v13;
  v112 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v111 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A4670(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v18 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v115 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459B878(0, &qword_1EB13E038, sub_1A4598604, sub_1A459862C, MEMORY[0x1E697F948]);
  v118 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v120 = &v100 - v21;
  v22 = sub_1A5242D14();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v100 - v27;
  sub_1A3F1D27C(0);
  v30 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4598604(0);
  v119 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v100 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v114 = &v100 - v37;
  v116 = a1;
  if (sub_1A3D65C4C())
  {
    v38 = *(sub_1A5248A14() + 20);
    v39 = *MEMORY[0x1E697F468];
    v40 = sub_1A52494A4();
    (*(*(v40 - 8) + 104))(&v32[v38], v39, v40);
    __asm { FMOV            V0.2D, #20.0 }

    *v32 = _Q0;
    *&v32[*(v30 + 52)] = sub_1A524B3E4();
    *&v32[*(v30 + 56)] = 256;
    sub_1A3D61808(v28);
    (*(v23 + 104))(v25, *MEMORY[0x1E69C2210], v22);
    LOBYTE(v39) = sub_1A5242D04();
    v46 = *(v23 + 8);
    v46(v25, v22);
    v46(v28, v22);
    if (v39)
    {
      sub_1A458D270();
    }

    sub_1A524BC74();
    sub_1A52481F4();
    sub_1A459B3CC(v32, v35, sub_1A3F1D27C);
    v92 = &v35[*(v119 + 36)];
    v93 = v132;
    *v92 = v131;
    *(v92 + 1) = v93;
    *(v92 + 2) = v133;
    v94 = v114;
    sub_1A459B3CC(v35, v114, sub_1A4598604);
    sub_1A459C5E0(v94, v120, sub_1A4598604);
    swift_storeEnumTagMultiPayload();
    sub_1A45991B4();
    sub_1A4598F0C(255, &qword_1EB13DF28, sub_1A4598724, MEMORY[0x1E697E5E0]);
    v96 = v95;
    v97 = sub_1A4598DB8();
    v126 = v121;
    v127 = v97;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v99 = sub_1A4598F70();
    v126 = v122;
    v127 = v96;
    v128 = OpaqueTypeConformance2;
    v129 = v99;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    return sub_1A459C71C(v94, sub_1A4598604);
  }

  else
  {
    v100 = v25;
    v101 = v23;
    v114 = v22;
    v47 = v125;
    sub_1A4919C18(v17);
    result = (*(v18 + 48))(v17, 1, v113);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1A459B3CC(v17, v115, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      sub_1A3C53294(&v126);
      v49 = v129;
      v50 = v130;
      __swift_project_boxed_opaque_existential_1(&v126, v129);
      v51 = *(v50 + 32);
      *(&v132 + 1) = swift_getAssociatedTypeWitness();
      *&v133 = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(&v131);
      v51(v49, v50);
      __swift_destroy_boxed_opaque_existential_0(&v126);
      v52 = sub_1A5249314();
      v53 = v105;
      *v105 = v52;
      *(v53 + 8) = 0;
      *(v53 + 16) = 1;
      sub_1A459B8FC(0, &qword_1EB13E040, sub_1A45988C4, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
      v55 = v116;
      v56 = v47;
      sub_1A4591C8C(v47, &v131, v53 + *(v54 + 44), v57);
      v58 = sub_1A524A054();
      sub_1A5247BC4();
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v66 = v65;
      v67 = MEMORY[0x1E697E5E0];
      sub_1A4598F0C(0, &qword_1EB13DEA8, sub_1A4598830, MEMORY[0x1E697E5E0]);
      v69 = v53 + *(v68 + 36);
      *v69 = v58;
      *(v69 + 8) = v60;
      *(v69 + 16) = v62;
      *(v69 + 24) = v64;
      *(v69 + 32) = v66;
      *(v69 + 40) = 0;
      v70 = v121;
      *(v53 + *(v121 + 36)) = 0;
      v71 = v55;
      v72 = v104;
      sub_1A459C5E0(v71, v104, type metadata accessor for LemonadeShelfItem);
      v73 = v108;
      sub_1A459C5E0(v56, v108, type metadata accessor for LemonadeTwoColumnsReorderView);
      v74 = (*(v102 + 80) + 16) & ~*(v102 + 80);
      v75 = (v103 + *(v106 + 80) + v74) & ~*(v106 + 80);
      v76 = swift_allocObject();
      sub_1A459B3CC(v72, v76 + v74, type metadata accessor for LemonadeShelfItem);
      sub_1A459B3CC(v73, v76 + v75, type metadata accessor for LemonadeTwoColumnsReorderView);
      v77 = sub_1A4598DB8();
      v78 = v109;
      sub_1A524AA84();

      sub_1A459BA98(v53, sub_1A459876C);
      v79 = v28;
      sub_1A3D61808(v28);
      v80 = v101;
      v81 = v100;
      v82 = v114;
      (*(v101 + 104))(v100, *MEMORY[0x1E69C2210], v114);
      sub_1A5242D04();
      v83 = *(v80 + 8);
      v83(v81, v82);
      v83(v79, v82);
      sub_1A4598F0C(0, &qword_1EB13DF28, sub_1A4598724, v67);
      v85 = v84;
      v126 = v70;
      v127 = v77;
      v86 = swift_getOpaqueTypeConformance2();
      v87 = sub_1A4598F70();
      v88 = v111;
      v89 = v122;
      sub_1A524A584();
      (*(v110 + 8))(v78, v89);
      v90 = v112;
      v91 = v123;
      (*(v112 + 16))(v120, v88, v123);
      swift_storeEnumTagMultiPayload();
      sub_1A45991B4();
      v126 = v89;
      v127 = v85;
      v128 = v86;
      v129 = v87;
      swift_getOpaqueTypeConformance2();
      sub_1A5249744();
      (*(v90 + 8))(v88, v91);
      sub_1A459C71C(v115, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      return __swift_destroy_boxed_opaque_existential_0(&v131);
    }
  }

  return result;
}

uint64_t sub_1A4591C8C@<X0>(uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, double d0_0@<D0>)
{
  v49 = a4;
  sub_1A45989CC(0, d0_0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v50 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  *v11 = sub_1A5249574();
  *(v11 + 1) = 0;
  v11[16] = 1;
  sub_1A459B8FC(0, &qword_1EB13E048, sub_1A4598AAC, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  sub_1A45920D4(a2, &v11[*(v12 + 44)]);
  v13 = a3[3];
  v14 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v13);
  v60 = (*(v14 + 24))(v13, v14);
  v61 = v15;
  sub_1A3D5F9DC();
  v16 = sub_1A524A464();
  v18 = v17;
  v20 = v19;
  sub_1A524A0F4();
  sub_1A524A164();
  sub_1A524A1F4();

  v21 = sub_1A524A3C4();
  v45 = v22;
  v24 = v23;
  v47 = v25;

  sub_1A3E04DF4(v16, v18, v20 & 1);

  KeyPath = swift_getKeyPath();
  v48 = KeyPath;
  LOBYTE(v14) = v24 & 1;
  LOBYTE(v60) = v24 & 1;
  LOBYTE(v56) = 0;
  LODWORD(v18) = sub_1A52499F4();
  v46 = sub_1A5249574();
  v27 = sub_1A524B544();
  v28 = sub_1A524B3D4();
  v29 = swift_getKeyPath();
  v30 = v50;
  sub_1A459B650(v11, v50, sub_1A45989CC);
  v31 = v30;
  v32 = v49;
  sub_1A459B650(v31, v49, sub_1A45989CC);
  sub_1A45988F8(0, v33);
  v35 = (v32 + v34[12]);
  v36 = v32;
  v37 = v45;
  *&v56 = v21;
  *(&v56 + 1) = v45;
  LOBYTE(v57) = v14;
  *(&v57 + 1) = *v53;
  DWORD1(v57) = *&v53[3];
  v38 = v47;
  *(&v57 + 1) = v47;
  LOWORD(v58) = 256;
  *(&v58 + 2) = v51;
  WORD3(v58) = v52;
  *(&v58 + 1) = KeyPath;
  *&v59 = 2;
  BYTE8(v59) = 0;
  BYTE11(v59) = v55;
  *(&v59 + 9) = v54;
  HIDWORD(v59) = v18;
  v39 = v56;
  v40 = v57;
  v41 = v59;
  v35[2] = v58;
  v35[3] = v41;
  *v35 = v39;
  v35[1] = v40;
  v42 = v36 + v34[16];
  *v42 = 0;
  *(v42 + 8) = 1;
  v43 = v36 + v34[20];
  *v43 = v46;
  *(v43 + 8) = 0;
  *(v43 + 16) = 1;
  *(v43 + 24) = v27;
  *(v43 + 32) = v29;
  *(v43 + 40) = v28;
  sub_1A459C5E0(&v56, &v60, sub_1A4598D98);

  sub_1A459BA98(v11, sub_1A45989CC);

  v60 = v21;
  v61 = v37;
  v62 = v14;
  *v63 = *v53;
  *&v63[3] = *&v53[3];
  v64 = v38;
  v65 = 256;
  v66 = v51;
  v67 = v52;
  v68 = v48;
  v69 = 2;
  v70 = 0;
  v72 = v55;
  v71 = v54;
  v73 = v18;
  sub_1A459C71C(&v60, sub_1A4598D98);
  return sub_1A459BA98(v50, sub_1A45989CC);
}

uint64_t sub_1A45920D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v47 = a2;
  v46 = sub_1A524B5B4();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v43 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5242D14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v39 - v9;
  sub_1A4598B6C(0);
  v52 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v45 = (v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A40A4670(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4919C18(v15);
  v53 = a1;
  sub_1A4592628(sub_1A459BAF8);
  sub_1A459C71C(v15, sub_1A40A4670);
  v42 = sub_1A524B544();
  v16 = *(type metadata accessor for LemonadeTwoColumnsReorderView(0) + 32);
  v51 = a1;
  sub_1A3D61808(v10);
  v17 = *(v5 + 104);
  v48 = *MEMORY[0x1E69C2210];
  v49 = v17;
  v50 = v5 + 104;
  v17(v7);
  v18 = sub_1A5242D04();
  v21 = *(v5 + 8);
  v20 = v5 + 8;
  v19 = v21;
  v22 = v7;
  v21(v7, v4);
  v23 = v10;
  v24 = v4;
  v21(v10, v4);
  if (v18)
  {
    v25 = sub_1A524B434();
  }

  else
  {
    v25 = sub_1A524B3C4();
  }

  v41 = v25;
  KeyPath = swift_getKeyPath();
  sub_1A3D61808(v10);
  v49(v22, v48, v4);
  v26 = sub_1A5242D04();
  v39[2] = v20;
  v27 = v19;
  v19(v22, v4);
  v19(v10, v4);
  v39[1] = v16;
  v29 = v43;
  v28 = v44;
  v30 = MEMORY[0x1E69816E0];
  if ((v26 & 1) == 0)
  {
    v30 = MEMORY[0x1E69816C8];
  }

  v31 = v46;
  (*(v44 + 104))(v43, *v30, v46);
  v32 = swift_getKeyPath();
  v33 = v45;
  v34 = (v45 + *(v52 + 36));
  sub_1A3F32A14(0);
  (*(v28 + 32))(v34 + *(v35 + 28), v29, v31);
  *v34 = v32;
  v37 = KeyPath;
  v36 = v41;
  *v33 = v42;
  v33[1] = v37;
  v33[2] = v36;
  sub_1A3D61808(v23);
  v49(v22, v48, v24);
  sub_1A5242D04();
  v27(v22, v24);
  v27(v23, v24);
  sub_1A4598BB4(0, &qword_1EB13DEE0, sub_1A4598B6C);
  sub_1A4598C4C();
  sub_1A4598CFC();
  sub_1A524A584();
  return sub_1A459C71C(v33, sub_1A4598B6C);
}

uint64_t sub_1A4592628(void (*a1)(uint64_t *__return_ptr, _BYTE *))
{
  v4 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A40A4670(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A459C5E0(v1, v10, sub_1A40A4670);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return 2;
  }

  sub_1A459B3CC(v10, v7, type metadata accessor for LemonadeFeatureLibrary.Shelf);
  a1(&v13, v7);
  if (v2)
  {
    result = sub_1A459C71C(v7, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    __break(1u);
  }

  else
  {
    sub_1A459C71C(v7, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    return v13;
  }

  return result;
}

void sub_1A45927FC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A5249A14();
  sub_1A459C5E0(a1, a2, sub_1A4598B6C);
  sub_1A4598BB4(0, &qword_1EB13DEE0, sub_1A4598B6C);
  *(a2 + *(v6 + 36)) = v5;
}

uint64_t sub_1A459287C(uint64_t a1, uint64_t a2)
{
  sub_1A40A4670(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4919C18(v6);
  v7 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    return sub_1A459C71C(v6, sub_1A40A4670);
  }

  sub_1A3C5322C();
  sub_1A459C71C(v6, type metadata accessor for LemonadeFeatureLibrary.Shelf);
  (*(**a2 + 520))(&v10);
  return sub_1A45929D8(a1);
}

uint64_t sub_1A45929D8(uint64_t a1)
{
  v2 = v1;
  sub_1A458D1B4(0);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = (*(**v1 + 560))(v5);
  v10 = sub_1A4919EE8(v9, v8);

  sub_1A459C5E0(a1, v7, type metadata accessor for LemonadeShelfItem);
  v11 = type metadata accessor for LemonadeShelfItem(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = sub_1A3C30368();
  sub_1A491BAF8(v10, 1, v8, v7, 0, 1, v12 & 1);
  v14 = v13;

  sub_1A459C71C(v7, sub_1A458D1B4);
  v15 = (v2 + *(type metadata accessor for LemonadeTwoColumnsReorderView(0) + 52));
  v17 = v15[1];
  v21 = *v15;
  v16 = v21;
  v22 = v17;
  v20 = v14;
  sub_1A459C4E8(0, &qword_1EB13E008, sub_1A458D208, MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  v21 = v16;
  v22 = v17;
  sub_1A524B6A4();
  sub_1A491AB70(v20, v8);

  return sub_1A4590B48();
}

void sub_1A4592BF4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A524A064();
  sub_1A5247BC4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1A4598724(0, v6);
  (*(*(v14 - 8) + 16))(a2, a1, v14);
  sub_1A4598F0C(0, &qword_1EB13DF28, sub_1A4598724, MEMORY[0x1E697E5E0]);
  v16 = a2 + *(v15 + 36);
  *v16 = v5;
  *(v16 + 8) = v7;
  *(v16 + 16) = v9;
  *(v16 + 24) = v11;
  *(v16 + 32) = v13;
  *(v16 + 40) = 0;
}

uint64_t sub_1A4592CD4()
{
  v1 = v0;
  v2 = type metadata accessor for LemonadeShelfItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v97 = v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v98 = v85 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v93 = v85 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v90 = v85 - v10;
  sub_1A459B3AC(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A458D1B4(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v85[1] = v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v87 = v85 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v85[0] = v85 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v86 = v85 - v22;
  MEMORY[0x1EEE9AC00](v23);
  *&v96 = v85 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v85 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v85 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v85 - v32;
  v34 = type metadata accessor for DropViewDelegate(0);
  v35 = *(v34 + 24);
  sub_1A459C4E8(0, &qword_1EB13E050, sub_1A458D1B4, MEMORY[0x1E6981948]);
  v94 = v36;
  v95 = v35;
  MEMORY[0x1A5906C60]();
  v37 = *(v34 + 20);
  v99 = v1;
  v91 = v37;
  v92 = v34;
  sub_1A459C5E0(v1 + v37, v30, type metadata accessor for LemonadeShelfItem);
  v88 = *(v3 + 56);
  v89 = v3 + 56;
  v88(v30, 0, 1, v2);
  v38 = *(v12 + 56);
  sub_1A459C5E0(v33, v14, sub_1A458D1B4);
  sub_1A459C5E0(v30, &v14[v38], sub_1A458D1B4);
  v39 = *(v3 + 48);
  if (v39(v14, 1, v2) != 1)
  {
    sub_1A459C5E0(v14, v27, sub_1A458D1B4);
    if (v39(&v14[v38], 1, v2) != 1)
    {
      v66 = v90;
      sub_1A459B3CC(&v14[v38], v90, type metadata accessor for LemonadeShelfItem);
      sub_1A459C77C(&qword_1EB13E028, type metadata accessor for LemonadeShelfItem, &unk_1A5373FC8);
      v67 = sub_1A524C594();
      sub_1A459C71C(v66, type metadata accessor for LemonadeShelfItem);
      sub_1A459C71C(v30, sub_1A458D1B4);
      sub_1A459C71C(v33, sub_1A458D1B4);
      sub_1A459C71C(v27, type metadata accessor for LemonadeShelfItem);
      result = sub_1A459C71C(v14, sub_1A458D1B4);
      if (v67)
      {
        return result;
      }

LABEL_7:
      v41 = v99;
      v42 = v96;
      MEMORY[0x1A5906C60](v94);
      if (v39(v42, 1, v2) == 1)
      {
        v40 = v42;
        return sub_1A459C71C(v40, sub_1A458D1B4);
      }

      v95 = v2;
      v43 = v93;
      sub_1A459B3CC(v42, v93, type metadata accessor for LemonadeShelfItem);
      sub_1A459C5E0(v43, v98, type metadata accessor for LemonadeShelfItem);
      v44 = v91;
      sub_1A459C5E0(v41 + v91, v97, type metadata accessor for LemonadeShelfItem);
      v45 = sub_1A4593DC0(v43);
      v47 = v46;
      v48 = sub_1A4593DC0(v41 + v44);
      v50 = v49;
      sub_1A3C48B3C(0, &unk_1EB126170, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
      v51 = swift_allocObject();
      v96 = xmmword_1A52F8E10;
      *(v51 + 16) = xmmword_1A52F8E10;
      v101 = 0;
      v102 = 0xE000000000000000;
      sub_1A524E404();

      v101 = 0xD000000000000013;
      v102 = 0x80000001A53DDC70;
      v52 = v45;
      v100 = v45;
      v53 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v53);

      MEMORY[0x1A5907B60](0x203A6F74203E3D20, 0xE800000000000000);
      v100 = v48;
      v54 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v54);

      v55 = v101;
      v56 = v102;
      v57 = MEMORY[0x1E69E6158];
      *(v51 + 56) = MEMORY[0x1E69E6158];
      *(v51 + 32) = v55;
      *(v51 + 40) = v56;
      sub_1A524E334();

      if (v47)
      {
        v58 = swift_allocObject();
        *(v58 + 16) = v96;
        v101 = 0;
        v102 = 0xE000000000000000;
        sub_1A524E404();

        v101 = 0xD000000000000010;
        v102 = 0x80000001A53DDC90;
        v100 = v52;
        v59 = sub_1A524EA44();
        MEMORY[0x1A5907B60](v59);

        MEMORY[0x1A5907B60](0x203A6F74203E3D20, 0xE800000000000000);
        v100 = v48;
        v60 = sub_1A524EA44();
        MEMORY[0x1A5907B60](v60);

        v61 = v101;
        v62 = v102;
        *(v58 + 56) = v57;
        *(v58 + 32) = v61;
        *(v58 + 40) = v62;
        sub_1A524E334();

        v63 = (v99 + *(v92 + 28));
        v64 = v63[1];
        v65 = v63[2];
        v101 = *v63;
        v102 = v64;
        v103 = v65;
        sub_1A459C4E8(0, &qword_1EB13E058, sub_1A458D208, MEMORY[0x1E6981948]);

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      if ((v47 & 0x100) != 0)
      {
        v69 = v99;
        v70 = v97;
        if ((v50 & 1) == 0)
        {
          if ((sub_1A3D65C4C() & 1) == 0)
          {
            if ((v50 & 0x100) != 0)
            {
              v77 = v86;
              sub_1A459C5E0(v70, v86, type metadata accessor for LemonadeShelfItem);
              v88(v77, 0, 1, v95);
              v78 = (v69 + *(v92 + 28));
              v79 = v78[1];
              v80 = v78[2];
              v101 = *v78;
              v102 = v79;
              v103 = v80;
              sub_1A459C4E8(0, &qword_1EB13E058, sub_1A458D208, MEMORY[0x1E6981948]);

              _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
            }

            v71 = v98;
            v72 = v70;
            v73 = 0;
LABEL_22:
            sub_1A45950C0(v71, v72, v73);
          }

LABEL_21:
          v73 = (v50 >> 8) & 1;
          v71 = v98;
          v72 = v70;
          goto LABEL_22;
        }
      }

      else
      {
        v69 = v99;
        v70 = v97;
        if ((v50 & 1) == 0)
        {
          if ((sub_1A3D65C4C() & 1) == 0)
          {
            if ((v50 & 0x100) == 0)
            {
              v81 = v87;
              sub_1A459C5E0(v70, v87, type metadata accessor for LemonadeShelfItem);
              v88(v81, 0, 1, v95);
              v82 = (v69 + *(v92 + 28));
              v83 = v82[1];
              v84 = v82[2];
              v101 = *v82;
              v102 = v83;
              v103 = v84;
              sub_1A459C4E8(0, &qword_1EB13E058, sub_1A458D208, MEMORY[0x1E6981948]);

              _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
            }

            v71 = v98;
            v72 = v70;
            v73 = 1;
            goto LABEL_22;
          }

          goto LABEL_21;
        }
      }

      v74 = (v69 + *(v92 + 28));
      v75 = v74[1];
      v76 = v74[2];
      v101 = *v74;
      v102 = v75;
      v103 = v76;
      sub_1A459C4E8(0, &qword_1EB13E058, sub_1A458D208, MEMORY[0x1E6981948]);

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A459C71C(v30, sub_1A458D1B4);
    sub_1A459C71C(v33, sub_1A458D1B4);
    sub_1A459C71C(v27, type metadata accessor for LemonadeShelfItem);
LABEL_6:
    sub_1A459C71C(v14, sub_1A459B3AC);
    goto LABEL_7;
  }

  sub_1A459C71C(v30, sub_1A458D1B4);
  sub_1A459C71C(v33, sub_1A458D1B4);
  if (v39(&v14[v38], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  v40 = v14;
  return sub_1A459C71C(v40, sub_1A458D1B4);
}

uint64_t sub_1A4593DC0(uint64_t a1)
{
  v131 = a1;
  sub_1A459C448(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v99 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v107 = &v99 - v5;
  v6 = type metadata accessor for LemonadeShelfItem(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v111 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459B3AC(0);
  v130 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v132 = &v99 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v99 - v14;
  sub_1A458D1B4(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v101 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v100 = &v99 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v109 = &v99 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v128 = &v99 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v110 = &v99 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v99 - v27;
  v29 = type metadata accessor for LemonadeTwoShelfItemsRow(0);
  v113 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v133 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459C47C(0);
  v32 = v31;
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v112 = (&v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A459C4E8(0, &qword_1EB13E078, sub_1A459C47C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = &v99 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v123 = (&v99 - v39);
  v40 = (v1 + *(type metadata accessor for DropViewDelegate(0) + 28));
  v41 = *v40;
  v42 = v40[1];
  v43 = v40[2];
  v106 = v41;
  v135 = v41;
  v136 = v42;
  v105 = v42;
  v104 = v43;
  v137 = v43;
  sub_1A459C4E8(0, &qword_1EB13E058, sub_1A458D208, MEMORY[0x1E6981948]);
  v103 = v44;
  result = MEMORY[0x1A5906C60](&v134);
  v46 = 0;
  v114 = v134;
  v47 = *(v134 + 16);
  v121 = (v33 + 48);
  v122 = (v33 + 56);
  v129 = (v7 + 56);
  v48 = (v7 + 48);
  v124 = v6;
  v125 = v28;
  v120 = (v7 + 48);
  v126 = v37;
  v115 = v47;
  v108 = v15;
  v119 = v29;
  v116 = v32;
  while (1)
  {
    if (v46 == v47)
    {
      v49 = 1;
      v46 = v47;
    }

    else
    {
      if ((v46 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_46:
        __break(1u);
        return result;
      }

      if (v46 >= *(v114 + 16))
      {
        goto LABEL_46;
      }

      v50 = v114 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v46;
      v51 = *(v32 + 48);
      v52 = v112;
      *v112 = v46;
      sub_1A459C5E0(v50, v52 + v51, type metadata accessor for LemonadeTwoShelfItemsRow);
      v53 = v52;
      v37 = v126;
      sub_1A459B3CC(v53, v126, sub_1A459C47C);
      v49 = 0;
      ++v46;
    }

    v54 = v123;
    (*v122)(v37, v49, 1, v32);
    sub_1A459C54C(v37, v54);
    if ((*v121)(v54, 1, v32) == 1)
    {

      goto LABEL_35;
    }

    v55 = *v54;
    v56 = v54 + *(v32 + 48);
    v57 = v133;
    sub_1A459B3CC(v56, v133, type metadata accessor for LemonadeTwoShelfItemsRow);
    v58 = v6;
    v59 = *(v29 + 20);
    sub_1A459C5E0(v131, v28, type metadata accessor for LemonadeShelfItem);
    v127 = *v129;
    v127(v28, 0, 1, v58);
    v60 = *(v130 + 48);
    v117 = v59;
    v61 = &v57[v59];
    v6 = v58;
    sub_1A459C5E0(v61, v15, sub_1A458D1B4);
    sub_1A459C5E0(v28, &v15[v60], sub_1A458D1B4);
    v62 = *v48;
    v63 = (*v48)(v15, 1, v58);
    v118 = v55;
    if (v63 == 1)
    {
      sub_1A459C71C(v28, sub_1A458D1B4);
      if (v62(&v15[v60], 1, v58) == 1)
      {

        sub_1A459C71C(v15, sub_1A458D1B4);
        v29 = v119;
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    v64 = v110;
    sub_1A459C5E0(v15, v110, sub_1A458D1B4);
    if (v62(&v15[v60], 1, v58) == 1)
    {
      sub_1A459C71C(v125, sub_1A458D1B4);
      sub_1A459C71C(v64, type metadata accessor for LemonadeShelfItem);
LABEL_16:
      sub_1A459C71C(v15, sub_1A459B3AC);
      v29 = v119;
      goto LABEL_18;
    }

    v65 = v111;
    sub_1A459B3CC(&v15[v60], v111, type metadata accessor for LemonadeShelfItem);
    sub_1A459C77C(&qword_1EB13E028, type metadata accessor for LemonadeShelfItem, &unk_1A5373FC8);
    v66 = v64;
    v67 = sub_1A524C594();
    sub_1A459C71C(v65, type metadata accessor for LemonadeShelfItem);
    sub_1A459C71C(v125, sub_1A458D1B4);
    sub_1A459C71C(v66, type metadata accessor for LemonadeShelfItem);
    sub_1A459C71C(v15, sub_1A458D1B4);
    v29 = v119;
    if (v67)
    {
      break;
    }

LABEL_18:
    v68 = v29;
    v69 = *(v29 + 24);
    v70 = v128;
    sub_1A459C5E0(v131, v128, type metadata accessor for LemonadeShelfItem);
    v6 = v124;
    v127(v70, 0, 1, v124);
    v71 = *(v130 + 48);
    v72 = v132;
    sub_1A459C5E0(&v133[v69], v132, sub_1A458D1B4);
    sub_1A459C5E0(v70, v72 + v71, sub_1A458D1B4);
    v48 = v120;
    if (v62(v72, 1, v6) == 1)
    {
      sub_1A459C71C(v128, sub_1A458D1B4);
      v29 = v68;
      if (v62((v132 + v71), 1, v6) == 1)
      {

        sub_1A459C71C(v132, sub_1A458D1B4);
        goto LABEL_26;
      }

      goto LABEL_3;
    }

    v73 = v132;
    v74 = v109;
    sub_1A459C5E0(v132, v109, sub_1A458D1B4);
    if (v62((v73 + v71), 1, v6) == 1)
    {
      sub_1A459C71C(v128, sub_1A458D1B4);
      sub_1A459C71C(v74, type metadata accessor for LemonadeShelfItem);
      v29 = v68;
LABEL_3:
      sub_1A459C71C(v132, sub_1A459B3AC);
      goto LABEL_4;
    }

    v75 = v132;
    v76 = v111;
    sub_1A459B3CC(v132 + v71, v111, type metadata accessor for LemonadeShelfItem);
    sub_1A459C77C(&qword_1EB13E028, type metadata accessor for LemonadeShelfItem, &unk_1A5373FC8);
    v77 = v75;
    v78 = v74;
    v79 = sub_1A524C594();
    sub_1A459C71C(v76, type metadata accessor for LemonadeShelfItem);
    sub_1A459C71C(v128, sub_1A458D1B4);
    v80 = v78;
    v81 = v77;
    v15 = v108;
    sub_1A459C71C(v80, type metadata accessor for LemonadeShelfItem);
    v6 = v124;
    sub_1A459C71C(v81, sub_1A458D1B4);
    v29 = v68;
    if (v79)
    {

      goto LABEL_26;
    }

LABEL_4:
    result = sub_1A459C71C(v133, type metadata accessor for LemonadeTwoShelfItemsRow);
    v28 = v125;
    v37 = v126;
    v32 = v116;
    v47 = v115;
  }

  v6 = v124;
LABEL_26:
  v82 = v100;
  sub_1A459C5E0(v131, v100, type metadata accessor for LemonadeShelfItem);
  v127(v82, 0, 1, v6);
  v83 = *(v130 + 48);
  v84 = v102;
  sub_1A459C5E0(&v133[v117], v102, sub_1A458D1B4);
  sub_1A459C5E0(v82, v84 + v83, sub_1A458D1B4);
  v85 = v62(v84, 1, v6);
  v86 = v101;
  if (v85 == 1)
  {
    sub_1A459C71C(v82, sub_1A458D1B4);
    if (v62((v84 + v83), 1, v6) == 1)
    {
      v87 = sub_1A458D1B4;
    }

    else
    {
      v87 = sub_1A459B3AC;
    }
  }

  else
  {
    sub_1A459C5E0(v84, v101, sub_1A458D1B4);
    if (v62((v84 + v83), 1, v6) == 1)
    {
      v87 = sub_1A459B3AC;
    }

    else
    {
      v88 = v84 + v83;
      v89 = v111;
      sub_1A459B3CC(v88, v111, type metadata accessor for LemonadeShelfItem);
      sub_1A459C77C(&qword_1EB13E028, type metadata accessor for LemonadeShelfItem, &unk_1A5373FC8);
      sub_1A524C594();
      sub_1A459C71C(v89, type metadata accessor for LemonadeShelfItem);
      v87 = sub_1A458D1B4;
    }

    sub_1A459C71C(v82, sub_1A458D1B4);
    sub_1A459C71C(v86, type metadata accessor for LemonadeShelfItem);
  }

  sub_1A459C71C(v84, v87);
  v90 = v133;
  sub_1A4920DC0(*v133, 0);
  sub_1A459C71C(v90, type metadata accessor for LemonadeTwoShelfItemsRow);
  result = v118;
  if (v118 == -1)
  {
LABEL_35:
    if (sub_1A3D65C4C())
    {
      v135 = v106;
      v136 = v105;
      v137 = v104;
      MEMORY[0x1A5906C60](&v134, v103);
      v91 = *(v134 + 16);
      if (v91)
      {
        v92 = v113;
        v93 = v107;
        sub_1A459C5E0(v134 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v113 + 72) * (v91 - 1), v107, type metadata accessor for LemonadeTwoShelfItemsRow);
        v94 = 0;
      }

      else
      {
        v94 = 1;
        v93 = v107;
        v92 = v113;
      }

      (*(v92 + 56))(v93, v94, 1, v29);
      v135 = v106;
      v136 = v105;
      v137 = v104;
      MEMORY[0x1A5906C60](&v134, v103);
      v95 = *(v134 + 16);

      v96 = v95 - 1;
      v97 = v99;
      sub_1A459C5E0(v93, v99, sub_1A459C448);
      if ((*(v92 + 48))(v97, 1, v29) == 1)
      {
        sub_1A459C71C(v97, sub_1A459C448);
      }

      else
      {
        v98 = *v97;
        sub_1A459C71C(v97, type metadata accessor for LemonadeTwoShelfItemsRow);
        LOBYTE(v135) = v98;
        LOBYTE(v134) = 0;
        sub_1A459C648();
        sub_1A524C594();
      }

      sub_1A40B1BE4(*(v131 + *(v6 + 28)), 1);
      sub_1A459C71C(v107, sub_1A459C448);
      return v96;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

void sub_1A4594EE8(unint64_t a1, unint64_t a2)
{
  v8 = type metadata accessor for LemonadeTwoShelfItemsRow(0) - 8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - v13;
  if (a1 != a2)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v2;
      v4 = *(*v2 + 16);
      if (v4 > a1)
      {
        v5 = (*(v12 + 80) + 32) & ~*(v12 + 80);
        v15 = *(v12 + 72);
        a1 *= v15;
        sub_1A459C5E0(v3 + v5 + a1, &v17 - v13, type metadata accessor for LemonadeTwoShelfItemsRow);
        if (v4 > a2)
        {
          v4 = v15 * a2;
          sub_1A459C5E0(v3 + v5 + v15 * a2, v10, type metadata accessor for LemonadeTwoShelfItemsRow);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }

LABEL_11:
        __break(1u);
LABEL_12:
        v3 = sub_1A459BDE8(v3);
LABEL_6:
        v16 = v3 + v5;
        sub_1A459BE40(v10, &v16[a1], type metadata accessor for LemonadeTwoShelfItemsRow);
        if (v3[2] <= a2)
        {
          __break(1u);
        }

        else
        {
          sub_1A459BE40(v14, &v16[v4], type metadata accessor for LemonadeTwoShelfItemsRow);
          *v2 = v3;
        }

        return;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1A45950C0(uint64_t a1, uint64_t a2, int a3)
{
  v15 = a3;
  v16 = a2;
  sub_1A458D1B4(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1A459BEA8(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v14[2] = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LemonadeShelfItem(0);
  MEMORY[0x1EEE9AC00](v7);
  v14[3] = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v11 = v3 + *(type metadata accessor for DropViewDelegate(0) + 28);
  v18 = *v11;
  v19 = *(v11 + 8);
  sub_1A459C4E8(0, &qword_1EB13E058, sub_1A458D208, MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](&v17);
  v13 = sub_1A491BAF4(v17, 1, v12);

  v18 = v13;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A459562C()
{
  v1 = sub_1A524BEE4();
  v17 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A524BF64();
  v4 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DropViewDelegate(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1A3C29A58(0, v10);
  v11 = sub_1A524D474();
  sub_1A459C5E0(v0, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DropViewDelegate);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  sub_1A459B3CC(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for DropViewDelegate);
  aBlock[4] = sub_1A459C260;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_63_1;
  v14 = _Block_copy(aBlock);

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A459C77C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C38394(0);
  sub_1A459C77C(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v6, v3, v14);
  _Block_release(v14);

  (*(v17 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v16);
}

void sub_1A45959BC()
{
  sub_1A458D1B4(0);
  v2.n128_f64[0] = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = **v0;
  v7 = *(v6 + 1104);
  v28 = v6 + 1104;
  v29 = v7;
  v30 = v7(v2);
  sub_1A4595CD8(&v35);
  sub_1A4595FAC();
  v8 = (v0 + *(type metadata accessor for DropViewDelegate(0) + 28));
  v10 = *v8;
  v9 = v8[1];
  v27 = v8[2];
  v32 = v10;
  v33 = v9;
  v34 = v27;
  v11 = MEMORY[0x1E6981948];
  sub_1A459C4E8(0, &qword_1EB13E058, sub_1A458D208, MEMORY[0x1E6981948]);
  v13 = v12;
  MEMORY[0x1A5906C60](&v31);
  v15 = sub_1A491BAF4(v31, 0, v14);

  sub_1A459C4E8(0, &qword_1EB13E050, sub_1A458D1B4, v11);
  MEMORY[0x1A5906C60]();
  v16 = sub_1A3C30368();
  sub_1A491BAF8(v15, 1, v5, v4, 0, 1, v16 & 1);
  v18 = v17;

  sub_1A459C71C(v4, sub_1A458D1B4);
  v32 = v10;
  v33 = v9;
  v19 = v27;
  v34 = v27;
  v31 = v18;
  sub_1A524B904();
  v32 = v10;
  v33 = v9;
  v34 = v19;
  MEMORY[0x1A5906C60](&v31, v13);
  sub_1A491AB70(v31, v5);

  v20 = sub_1A459562C();
  v21 = (v29)(v20);
  type metadata accessor for LemonadeAnalyticsCustomization();
  v22 = sub_1A47E502C();
  LOBYTE(v32) = 0;
  LemonadeCustomizationAction.rawValue.getter();
  v23 = sub_1A524CFC4();
  LemonadeCustomizationAnalyticsName.rawValue.getter(v23);
  v24 = sub_1A524CFC4();
  LOBYTE(v31) = 0;
  LemonadeCustomizationContentType.rawValue.getter(v24);
  v25 = sub_1A524CFC4();
  (*(*v22 + 136))(v23, 0, v24, v25, v30, v21);
}

void sub_1A4595CD8(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for LemonadeShelfItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A458D1B4(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A40A4670(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for DropViewDelegate(0);
  sub_1A459C4E8(0, &qword_1EB13E050, sub_1A458D1B4, MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60]();
  if ((*(v3 + 48))(v8, 1, v2))
  {
    v12 = sub_1A458D1B4;
    v13 = v8;
  }

  else
  {
    sub_1A459C5E0(v8, v5, type metadata accessor for LemonadeShelfItem);
    sub_1A459C71C(v8, sub_1A458D1B4);
    sub_1A4919C18(v11);
    sub_1A459C71C(v5, type metadata accessor for LemonadeShelfItem);
    v14 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
    if ((*(*(v14 - 8) + 48))(v11, 1, v14) != 1)
    {
      sub_1A3C5322C();
      sub_1A459C71C(v11, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      sub_1A3DD1890(a1);
      return;
    }

    v12 = sub_1A40A4670;
    v13 = v11;
  }

  sub_1A459C71C(v13, v12);
  *a1 = 1;
}

void *sub_1A4595FAC()
{
  v1 = v0;
  sub_1A459C69C(0);
  v197 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v213 = &v165[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A459C448(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v196 = &v165[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v219 = &v165[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v208 = &v165[-v9];
  sub_1A459B3AC(0);
  v218 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v209 = &v165[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v207 = &v165[-v13];
  v221 = type metadata accessor for LemonadeTwoShelfItemsRow(0);
  v210 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  v185 = &v165[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v183 = &v165[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v220 = &v165[-v18];
  sub_1A459C47C(0);
  v200 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v189 = &v165[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A459C4E8(0, &qword_1EB13E078, sub_1A459C47C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v199 = &v165[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v198 = &v165[-v25];
  sub_1A40A4670(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v181 = &v165[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  v170 = &v165[-v29];
  MEMORY[0x1EEE9AC00](v30);
  v172 = &v165[-v31];
  MEMORY[0x1EEE9AC00](v32);
  v182 = &v165[-v33];
  MEMORY[0x1EEE9AC00](v34);
  v184 = &v165[-v35];
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v165[-v37];
  sub_1A458D1B4(0);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v175 = &v165[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v41);
  v171 = &v165[-v42];
  MEMORY[0x1EEE9AC00](v43);
  v174 = &v165[-v44];
  MEMORY[0x1EEE9AC00](v45);
  v180 = &v165[-v46];
  MEMORY[0x1EEE9AC00](v47);
  v179 = &v165[-v48];
  MEMORY[0x1EEE9AC00](v49);
  v188 = &v165[-v50];
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v165[-v52];
  MEMORY[0x1EEE9AC00](v54);
  v187 = &v165[-v55];
  MEMORY[0x1EEE9AC00](v56);
  v211 = &v165[-v57];
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v165[-v59];
  v61 = type metadata accessor for LemonadeShelfItem(0);
  v62 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v186 = &v165[-((v63 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v165[-v65];
  v67 = type metadata accessor for DropViewDelegate(0);
  sub_1A459C4E8(0, &qword_1EB13E050, sub_1A458D1B4, MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60]();
  v216 = v62;
  v69 = *(v62 + 48);
  v68 = v62 + 48;
  v201 = v69;
  if (v69(v60, 1, v61) != 1)
  {
    sub_1A459B3CC(v60, v66, type metadata accessor for LemonadeShelfItem);
    sub_1A4919C18(v38);
    v72 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
    v73 = *(v72 - 8);
    v74 = *(v73 + 48);
    v178 = v72;
    v177 = v74;
    v176 = v73 + 48;
    if ((v74)(v38, 1) == 1)
    {
      sub_1A459C71C(v66, type metadata accessor for LemonadeShelfItem);
      v70 = sub_1A40A4670;
      v71 = v38;
      return sub_1A459C71C(v71, v70);
    }

    v75 = v20;
    sub_1A3C5322C();
    v76 = v223;
    sub_1A459C71C(v38, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    v77 = *v0;
    LOBYTE(v223) = v76;
    v78 = *v77;
    v79 = *(*v77 + 432);
    v169 = v77;
    v168 = v78 + 432;
    v167 = v79;
    if (v79(&v223))
    {
      v70 = type metadata accessor for LemonadeShelfItem;
      v71 = v66;
      return sub_1A459C71C(v71, v70);
    }

    v166 = v76;
    v217 = v66;
    v80 = (v1 + *(v67 + 28));
    v81 = *v80;
    v82 = v80[1];
    v83 = v80[2];
    v205 = v82;
    v206 = v81;
    v223 = v81;
    v224 = v82;
    v204 = v83;
    v225 = v83;
    sub_1A459C4E8(0, &qword_1EB13E058, sub_1A458D208, MEMORY[0x1E6981948]);
    v203 = v84;
    result = MEMORY[0x1A5906C60](&v222);
    v173 = 0;
    v86 = 0;
    v87 = v222;
    v195 = (v75 + 56);
    v88 = *(v222 + 16);
    v194 = (v75 + 48);
    v216 += 7;
    v215 = (v210 + 56);
    v191 = (v210 + 48);
    v89 = v209;
    v90 = v201;
    v190 = v88;
    v193 = v53;
    v192 = v222;
    while (1)
    {
      v93 = v200;
      v94 = v199;
      if (v86 == v88)
      {
        v95 = 1;
        v214 = v88;
      }

      else
      {
        if ((v86 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
          return result;
        }

        if (v86 >= *(v87 + 16))
        {
          goto LABEL_90;
        }

        v96 = v86 + 1;
        v97 = v87 + ((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * v86;
        v98 = *(v200 + 48);
        v99 = v189;
        *v189 = v86;
        sub_1A459C5E0(v97, v99 + v98, type metadata accessor for LemonadeTwoShelfItemsRow);
        sub_1A459B3CC(v99, v94, sub_1A459C47C);
        v95 = 0;
        v214 = v96;
      }

      (*v195)(v94, v95, 1, v93);
      v100 = v198;
      sub_1A459C54C(v94, v198);
      if ((*v194)(v100, 1, v93) == 1)
      {

        if (v173)
        {
          LOBYTE(v223) = v166;
          (*(*v169 + 520))(&v223);
        }

        v70 = type metadata accessor for LemonadeShelfItem;
        v71 = v217;
        return sub_1A459C71C(v71, v70);
      }

      v202 = *v100;
      v101 = v68;
      v102 = v220;
      sub_1A459B3CC(v100 + *(v93 + 48), v220, type metadata accessor for LemonadeTwoShelfItemsRow);
      v103 = *(v221 + 20);
      v104 = v211;
      sub_1A459C5E0(v217, v211, type metadata accessor for LemonadeShelfItem);
      v105 = *v216;
      (*v216)(v104, 0, 1, v61);
      v106 = *(v218 + 48);
      v107 = &v102[v103];
      v108 = v207;
      sub_1A459C5E0(v107, v207, sub_1A458D1B4);
      sub_1A459C5E0(v104, &v108[v106], sub_1A458D1B4);
      if (v90(v108, 1, v61) == 1)
      {
        sub_1A459C71C(v104, sub_1A458D1B4);
        v109 = v90(&v108[v106], 1, v61);
        v110 = v109 == 1 ? sub_1A458D1B4 : sub_1A459B3AC;
        v111 = v109 == 1 ? -1 : 0;
        v212 = v111;
        v112 = v208;
        v113 = v193;
      }

      else
      {
        v114 = v187;
        sub_1A459C5E0(v108, v187, sub_1A458D1B4);
        v115 = v90(&v108[v106], 1, v61);
        v113 = v193;
        if (v115 == 1)
        {
          sub_1A459C71C(v211, sub_1A458D1B4);
          sub_1A459C71C(v114, type metadata accessor for LemonadeShelfItem);
          v212 = 0;
          v110 = sub_1A459B3AC;
        }

        else
        {
          v116 = &v108[v106];
          v117 = v186;
          sub_1A459B3CC(v116, v186, type metadata accessor for LemonadeShelfItem);
          sub_1A459C77C(&qword_1EB13E028, type metadata accessor for LemonadeShelfItem, &unk_1A5373FC8);
          v212 = sub_1A524C594();
          sub_1A459C71C(v117, type metadata accessor for LemonadeShelfItem);
          sub_1A459C71C(v211, sub_1A458D1B4);
          sub_1A459C71C(v114, type metadata accessor for LemonadeShelfItem);
          v110 = sub_1A458D1B4;
          v108 = v207;
        }

        v112 = v208;
      }

      sub_1A459C71C(v108, v110);
      v118 = *(v221 + 24);
      sub_1A459C5E0(v217, v113, type metadata accessor for LemonadeShelfItem);
      v105(v113, 0, 1, v61);
      v119 = *(v218 + 48);
      sub_1A459C5E0(&v220[v118], v89, sub_1A458D1B4);
      sub_1A459C5E0(v113, v89 + v119, sub_1A458D1B4);
      if (v90(v89, 1, v61) == 1)
      {
        sub_1A459C71C(v113, sub_1A458D1B4);
        v120 = v90((v89 + v119), 1, v61);
        v121 = v120 == 1 ? sub_1A458D1B4 : sub_1A459B3AC;
        v122 = v120 == 1 ? -1 : 0;
      }

      else
      {
        v123 = v188;
        sub_1A459C5E0(v89, v188, sub_1A458D1B4);
        if (v90((v89 + v119), 1, v61) == 1)
        {
          sub_1A459C71C(v113, sub_1A458D1B4);
          sub_1A459C71C(v123, type metadata accessor for LemonadeShelfItem);
          v122 = 0;
          v121 = sub_1A459B3AC;
        }

        else
        {
          v124 = v89 + v119;
          v125 = v186;
          sub_1A459B3CC(v124, v186, type metadata accessor for LemonadeShelfItem);
          sub_1A459C77C(&qword_1EB13E028, type metadata accessor for LemonadeShelfItem, &unk_1A5373FC8);
          v122 = sub_1A524C594();
          sub_1A459C71C(v125, type metadata accessor for LemonadeShelfItem);
          sub_1A459C71C(v113, sub_1A458D1B4);
          sub_1A459C71C(v123, type metadata accessor for LemonadeShelfItem);
          v121 = sub_1A458D1B4;
          v89 = v209;
        }
      }

      v126 = v221;
      sub_1A459C71C(v89, v121);
      sub_1A459C5E0(v220, v112, type metadata accessor for LemonadeTwoShelfItemsRow);
      v127 = *v215;
      v128 = 1;
      (*v215)(v112, 0, 1, v126);
      v223 = v206;
      v224 = v205;
      v225 = v204;
      MEMORY[0x1A5906C60](&v222, v203);
      v129 = *(v222 + 16);
      if (v129)
      {
        sub_1A459C5E0(v222 + ((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * (v129 - 1), v219, type metadata accessor for LemonadeTwoShelfItemsRow);
        v128 = 0;
      }

      v130 = v219;
      v131 = v221;
      v127(v219, v128, 1, v221);
      v132 = *(v197 + 48);
      v133 = v213;
      sub_1A459C5E0(v112, v213, sub_1A459C448);
      v134 = v133;
      sub_1A459C5E0(v130, &v133[v132], sub_1A459C448);
      v135 = *v191;
      if ((*v191)(v134, 1, v131) == 1)
      {
        break;
      }

      sub_1A459C5E0(v134, v196, sub_1A459C448);
      if (v135(v134 + v132, 1, v131) == 1)
      {
        sub_1A459C71C(v219, sub_1A459C448);
        v136 = v213;
        sub_1A459C71C(v112, sub_1A459C448);
        sub_1A459C71C(v196, type metadata accessor for LemonadeTwoShelfItemsRow);
        v89 = v209;
        v68 = v101;
        v90 = v201;
LABEL_47:
        result = sub_1A459C71C(v136, sub_1A459C69C);
        v87 = v192;
        goto LABEL_48;
      }

      v142 = v134 + v132;
      v143 = v183;
      sub_1A459B3CC(v142, v183, type metadata accessor for LemonadeTwoShelfItemsRow);
      sub_1A459C77C(&qword_1EB125828, type metadata accessor for LemonadeTwoShelfItemsRow, &unk_1A5374128);
      v144 = v196;
      v145 = v134;
      v146 = sub_1A524C594();
      sub_1A459C71C(v143, type metadata accessor for LemonadeTwoShelfItemsRow);
      sub_1A459C71C(v219, sub_1A459C448);
      sub_1A459C71C(v208, sub_1A459C448);
      sub_1A459C71C(v144, type metadata accessor for LemonadeTwoShelfItemsRow);
      result = sub_1A459C71C(v145, sub_1A459C448);
      v89 = v209;
      v68 = v101;
      v90 = v201;
      v87 = v192;
      if (v146)
      {
        goto LABEL_9;
      }

LABEL_48:
      if (((v212 | v122) & 1) == 0)
      {
        goto LABEL_9;
      }

      v138 = v202 + 1;
      v139 = v185;
      if (__OFADD__(v202, 1))
      {
        goto LABEL_91;
      }

      v223 = v206;
      v224 = v205;
      v225 = v204;
      result = MEMORY[0x1A5906C60](&v222, v203);
      if ((v138 & 0x8000000000000000) != 0)
      {
        goto LABEL_92;
      }

      if (v138 >= *(v222 + 16))
      {
        goto LABEL_93;
      }

      sub_1A459C5E0(v222 + ((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * v138, v139, type metadata accessor for LemonadeTwoShelfItemsRow);

      if (sub_1A4920DC0(*v220, 0))
      {
        v140 = v179;
        sub_1A459C5E0(&v139[*(v221 + 20)], v179, sub_1A458D1B4);
        if (v90(v140, 1, v61) == 1)
        {
          v141 = sub_1A458D1B4;
          goto LABEL_62;
        }

        v150 = v140;
        sub_1A4919C18(v184);
        v140 = v184;
        sub_1A459C71C(v150, type metadata accessor for LemonadeShelfItem);
        if (v177(v140, 1, v178) == 1)
        {
          v141 = sub_1A40A4670;
LABEL_62:
          sub_1A459C71C(v140, v141);
          v151 = v182;
          v152 = v180;
LABEL_63:
          sub_1A459C5E0(&v139[*(v221 + 24)], v152, sub_1A458D1B4);
          if (v90(v152, 1, v61) == 1)
          {
            sub_1A459C71C(v139, type metadata accessor for LemonadeTwoShelfItemsRow);
            sub_1A459C71C(v220, type metadata accessor for LemonadeTwoShelfItemsRow);
            v153 = sub_1A458D1B4;
LABEL_72:
            v91 = v153;
            v92 = v152;
            goto LABEL_10;
          }

          v156 = v151;
          v157 = v152;
          sub_1A4919C18(v156);
          v152 = v182;
          sub_1A459C71C(v157, type metadata accessor for LemonadeShelfItem);
          if (v177(v152, 1, v178) == 1)
          {
            sub_1A459C71C(v139, type metadata accessor for LemonadeTwoShelfItemsRow);
            sub_1A459C71C(v220, type metadata accessor for LemonadeTwoShelfItemsRow);
            v153 = sub_1A40A4670;
            goto LABEL_72;
          }

          sub_1A3C5322C();
          sub_1A459C71C(v152, type metadata accessor for LemonadeFeatureLibrary.Shelf);
          v161 = (*(*v169 + 432))(&v223);
          sub_1A459C71C(v139, type metadata accessor for LemonadeTwoShelfItemsRow);
          result = sub_1A459C71C(v220, type metadata accessor for LemonadeTwoShelfItemsRow);
          v159 = v161 | v173;
        }

        else
        {
          sub_1A3C5322C();
          sub_1A459C71C(v184, type metadata accessor for LemonadeFeatureLibrary.Shelf);
          v158 = v167(&v223);
          v151 = v182;
          v152 = v180;
          if ((v158 & 1) == 0)
          {
            goto LABEL_63;
          }

          sub_1A459C71C(v139, type metadata accessor for LemonadeTwoShelfItemsRow);
          result = sub_1A459C71C(v220, type metadata accessor for LemonadeTwoShelfItemsRow);
          v159 = 1;
        }

        v173 = v159;
        goto LABEL_11;
      }

      v147 = v181;
      if (v212)
      {
        v148 = v174;
        sub_1A459C5E0(&v139[*(v221 + 20)], v174, sub_1A458D1B4);
        if (v90(v148, 1, v61) != 1)
        {
          v149 = &v204;
LABEL_68:
          v155 = *(v149 - 32);
          sub_1A4919C18(v155);
          sub_1A459C71C(v148, type metadata accessor for LemonadeShelfItem);
          if (v177(v155, 1, v178) != 1)
          {
            sub_1A3C5322C();
            v162 = v155;
            goto LABEL_84;
          }

          v148 = v155;
LABEL_81:
          sub_1A459C71C(v139, type metadata accessor for LemonadeTwoShelfItemsRow);
          sub_1A459C71C(v220, type metadata accessor for LemonadeTwoShelfItemsRow);
          v160 = sub_1A40A4670;
          goto LABEL_82;
        }
      }

      else
      {
        v154 = sub_1A4920DC0(*v139, 0);
        v148 = v175;
        if (v154)
        {
          v148 = v171;
          sub_1A459C5E0(&v139[*(v221 + 20)], v171, sub_1A458D1B4);
          if (v90(v148, 1, v61) != 1)
          {
            v149 = &v202;
            goto LABEL_68;
          }
        }

        else
        {
          sub_1A459C5E0(&v139[*(v221 + 24)], v175, sub_1A458D1B4);
          if (v90(v148, 1, v61) != 1)
          {
            v163 = v147;
            v164 = v148;
            sub_1A4919C18(v163);
            v148 = v181;
            sub_1A459C71C(v164, type metadata accessor for LemonadeShelfItem);
            if (v177(v148, 1, v178) != 1)
            {
              sub_1A3C5322C();
              v162 = v148;
LABEL_84:
              sub_1A459C71C(v162, type metadata accessor for LemonadeFeatureLibrary.Shelf);
              v173 = (*(*v169 + 432))(&v223);
              sub_1A459C71C(v139, type metadata accessor for LemonadeTwoShelfItemsRow);
              v92 = v220;
              v91 = type metadata accessor for LemonadeTwoShelfItemsRow;
LABEL_10:
              result = sub_1A459C71C(v92, v91);
              goto LABEL_11;
            }

            goto LABEL_81;
          }
        }
      }

      sub_1A459C71C(v139, type metadata accessor for LemonadeTwoShelfItemsRow);
      sub_1A459C71C(v220, type metadata accessor for LemonadeTwoShelfItemsRow);
      v160 = sub_1A458D1B4;
LABEL_82:
      result = sub_1A459C71C(v148, v160);
      v173 = 0;
LABEL_11:
      v88 = v190;
      v86 = v214;
    }

    sub_1A459C71C(v219, sub_1A459C448);
    v136 = v213;
    sub_1A459C71C(v112, sub_1A459C448);
    v137 = v135(&v136[v132], 1, v131);
    v89 = v209;
    v68 = v101;
    v90 = v201;
    if (v137 == 1)
    {
      sub_1A459C71C(v136, sub_1A459C448);
      v87 = v192;
LABEL_9:
      v91 = type metadata accessor for LemonadeTwoShelfItemsRow;
      v92 = v220;
      goto LABEL_10;
    }

    goto LABEL_47;
  }

  v70 = sub_1A458D1B4;
  v71 = v60;
  return sub_1A459C71C(v71, v70);
}

uint64_t sub_1A4597BC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(type metadata accessor for LemonadeShelfItem(0) - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_1A459C77C(&qword_1EB13E028, type metadata accessor for LemonadeShelfItem, &unk_1A5373FC8);
  v7 = 0;
  while ((sub_1A524C594() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1A4597CE8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A459BD90(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for LemonadeShelfItem(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1A459B3CC(v11, a2, type metadata accessor for LemonadeShelfItem);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1A4597E40@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5248294();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E697BF98], v3);
  sub_1A5248044();
  v6 = sub_1A5248054();
  return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
}

void sub_1A4597F4C()
{
  v1 = type metadata accessor for LemonadeMockShelvesDataSource();
  v2 = sub_1A42F8364();
  type metadata accessor for LemonadeShelvesViewModel(0);
  v4[3] = v1;
  v4[4] = sub_1A459C77C(&qword_1EB12EC48, type metadata accessor for LemonadeMockShelvesDataSource, &unk_1A532ED48);
  v4[0] = v2;

  v3 = sub_1A3C5A374();
  sub_1A3C5A7B8(v4, 0, v3);
}

uint64_t sub_1A4598024(uint64_t a1)
{
  v2 = sub_1A459A2BC();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A4598070(uint64_t a1)
{
  v2 = sub_1A459A2BC();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A45980BC(uint64_t a1)
{
  if (!qword_1EB13DE18)
  {
    sub_1A4598F0C(255, &qword_1EB13DE20, sub_1A4598144, MEMORY[0x1E697E5E0]);
    sub_1A4599CCC();
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13DE18);
    }
  }
}

void sub_1A459818C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A459820C(uint64_t a1)
{
  if (!qword_1EB13DE30)
  {
    sub_1A458D23C(255);
    sub_1A459B878(255, &qword_1EB13DE38, sub_1A4598318, sub_1A459984C, MEMORY[0x1E697F960]);
    sub_1A459C77C(&qword_1EB13DFB0, sub_1A458D23C, MEMORY[0x1E69E6338]);
    sub_1A4599ADC();
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13DE30);
    }
  }
}

void sub_1A4598388(uint64_t a1, double a2)
{
  if (!qword_1EB13DE50)
  {
    sub_1A459845C(255);
    sub_1A5248A14();
    sub_1A459948C();
    sub_1A459C77C(&qword_1EB128080, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13DE50);
    }
  }
}

void sub_1A459855C(uint64_t a1)
{
  if (!qword_1EB13DE78)
  {
    sub_1A459B878(255, &qword_1EB13DE80, sub_1A4598604, sub_1A459862C, MEMORY[0x1E697F960]);
    sub_1A4599044();
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13DE78);
    }
  }
}

void sub_1A459862C(uint64_t a1, double a2)
{
  if (!qword_1EB13DE90)
  {
    sub_1A4598724(255, a2);
    sub_1A4598F0C(255, &qword_1EB13DF28, sub_1A4598724, MEMORY[0x1E697E5E0]);
    sub_1A459876C(255);
    sub_1A4598DB8();
    swift_getOpaqueTypeConformance2();
    sub_1A4598F70();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13DE90);
    }
  }
}